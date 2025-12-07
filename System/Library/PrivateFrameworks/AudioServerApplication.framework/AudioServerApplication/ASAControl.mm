@interface ASAControl
- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree;
- (unsigned)controlElement;
- (unsigned)controlScope;
@end

@implementation ASAControl

- (unsigned)controlElement
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainInputProperty:1667591277 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read control element property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)controlScope
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainOutputProperty:1668506480 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read control scope property\n", v3, 2u);
  }

  return v4;
}

- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree
{
  treeCopy = tree;
  v14.receiver = self;
  v14.super_class = ASAControl;
  indentCopy = indent;
  v7 = [(ASAObject *)&v14 diagnosticDescriptionWithIndent:indentCopy walkTree:treeCopy];
  controlScope = [(ASAControl *)self controlScope];
  LODWORD(v9) = controlScope >> 24;
  if (((controlScope >> 24) - 32) >= 0x5F)
  {
    v9 = 32;
  }

  else
  {
    v9 = v9;
  }

  LODWORD(v10) = controlScope << 8 >> 24;
  if ((v10 - 32) >= 0x5F)
  {
    v10 = 32;
  }

  else
  {
    v10 = v10;
  }

  LODWORD(v11) = controlScope >> 8;
  if ((v11 - 32) >= 0x5F)
  {
    v11 = 32;
  }

  else
  {
    v11 = v11;
  }

  if ((controlScope - 32) >= 0x5F)
  {
    v12 = 32;
  }

  else
  {
    v12 = controlScope;
  }

  [v7 appendFormat:@"%@|    Control Scope: %c%c%c%c\n", indentCopy, v9, v10, v11, v12];
  [v7 appendFormat:@"%@|    Control Element: %d\n", indentCopy, -[ASAControl controlElement](self, "controlElement")];

  return v7;
}

@end