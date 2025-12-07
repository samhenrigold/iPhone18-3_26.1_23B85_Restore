@interface TIKeyboardSecureTouchSlot
- (void)dealloc;
@end

@implementation TIKeyboardSecureTouchSlot

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    slotID = self->_slotID;
    *buf = 136315394;
    v7 = "[TIKeyboardSecureTouchSlot dealloc]";
    v8 = 1024;
    v9 = slotID;
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Invalidating slotID %X", buf, 0x12u);
  }

  [(BSInvalidatable *)self->_invalidatable invalidate];
  self->_slotID = 0;
  invalidatable = self->_invalidatable;
  self->_invalidatable = 0;

  v5.receiver = self;
  v5.super_class = TIKeyboardSecureTouchSlot;
  [(TIKeyboardSecureTouchSlot *)&v5 dealloc];
}

@end