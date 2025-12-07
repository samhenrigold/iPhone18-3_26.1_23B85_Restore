@interface NSSQLAliasGenerator
- (NSSQLAliasGenerator)initWithNestingLevel:(unsigned int)level;
- (_DWORD)generateTempTableName;
- (id)generateSubqueryVariableAlias;
- (id)generateTableAlias;
- (void)dealloc;
- (void)generateVariableAlias;
@end

@implementation NSSQLAliasGenerator

- (id)generateTableAlias
{
  v2 = MEMORY[0x1E696AEC0];
  tableBase = self->_tableBase;
  nextTableAlias = self->_nextTableAlias;
  self->_nextTableAlias = nextTableAlias + 1;
  return objc_msgSend_stringWithFormat_(v2, a2, tableBase, nextTableAlias);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSSQLAliasGenerator;
  [(NSSQLAliasGenerator *)&v3 dealloc];
}

- (_DWORD)generateTempTableName
{
  if (result)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = result[4];
    result[4] = v3 + 1;
    return objc_msgSend_stringWithFormat_(v2, a2, @"_Z_intarray%u", v3);
  }

  return result;
}

- (id)generateSubqueryVariableAlias
{
  if (self)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = *(self + 4);
    v4 = *(self + 3);
    *(self + 3) = v4 + 1;
    return objc_msgSend_stringWithFormat_(v2, a2, v3, v4);
  }

  return self;
}

- (NSSQLAliasGenerator)initWithNestingLevel:(unsigned int)level
{
  v3 = *&level;
  v7.receiver = self;
  v7.super_class = NSSQLAliasGenerator;
  v4 = [(NSSQLAliasGenerator *)&v7 init];
  if (v4)
  {
    if (v3)
    {
      v4->_tableBase = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"n%u_t%cu", v3, 37];
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"__n%u_var%cu", v3, 37];
    }

    else
    {
      v4->_tableBase = @"t%u";
      v5 = @"__var%u";
    }

    v4->_variableBase = v5;
    *&v4->_nextTableAlias = 0;
    v4->_nextTempTableAlias = 0;
  }

  return v4;
}

- (void)generateVariableAlias
{
  if (result)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = result[4];
    v4 = *(result + 3);
    *(result + 3) = v4 + 1;
    return objc_msgSend_stringWithFormat_(v2, a2, v3, v4);
  }

  return result;
}

@end