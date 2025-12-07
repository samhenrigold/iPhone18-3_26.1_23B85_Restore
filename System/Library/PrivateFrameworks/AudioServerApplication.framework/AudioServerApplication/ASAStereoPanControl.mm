@interface ASAStereoPanControl
- (float)value;
- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree;
- (unsigned)getPanChannel:(BOOL)channel;
- (void)setValue:(float)value;
@end

@implementation ASAStereoPanControl

- (void)setValue:(float)value
{
  valueCopy = value;
  if (![(ASAObject *)self setMainGlobalProperty:1936745334 withData:&valueCopy ofSize:4 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not set value property\n", v3, 2u);
  }
}

- (float)value
{
  v5 = 4;
  v4 = 0.0;
  if (![(ASAObject *)self getMainGlobalProperty:1936745334 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read value property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)getPanChannel:(BOOL)channel
{
  channelCopy = channel;
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v6 = 8;
  if (![(ASAObject *)self getMainGlobalProperty:1936745315 withData:v7 ofSize:&v6 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read panning channels property\n", v5, 2u);
  }

  return *(v7 | (4 * !channelCopy));
}

- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree
{
  treeCopy = tree;
  v10.receiver = self;
  v10.super_class = ASAStereoPanControl;
  indentCopy = indent;
  v7 = [(ASAControl *)&v10 diagnosticDescriptionWithIndent:indentCopy walkTree:treeCopy];
  [(ASAStereoPanControl *)self value];
  [v7 appendFormat:@"%@|    Value: %f\n", indentCopy, v8, v10.receiver, v10.super_class];
  [v7 appendFormat:@"%@|    Left Pan Channel: %d\n", indentCopy, -[ASAStereoPanControl leftPanChannel](self, "leftPanChannel")];
  [v7 appendFormat:@"%@|    Right Pan Channel: %d\n", indentCopy, -[ASAStereoPanControl rightPanChannel](self, "rightPanChannel")];

  return v7;
}

@end