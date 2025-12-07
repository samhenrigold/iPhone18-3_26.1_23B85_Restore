@interface TMLParser
+ (BOOL)isBuiltinObject:(id)object;
+ (id)previousNonSpaceToken:(id)token;
+ (id)transformAccessors:(id)accessors;
+ (id)transformBreakpoints:(id)breakpoints lineNo:(int)no filename:(id)filename;
+ (id)transformFunction:(id)function;
+ (id)transformObjectCreation:(id)creation;
+ (id)unescapeString:(id)string;
+ (id)varsInCurrentScope:(id)scope;
- (BOOL)consumeToken:(unint64_t)token text:(const char *)text;
- (BOOL)parseFile:(id)file;
- (BOOL)parseFunctionLookaheadWithFile:(id)file;
- (BOOL)parseFunctionLookaheadWithString:(id)string basePath:(id)path filename:(id)filename;
- (BOOL)parseString:(id)string basePath:(id)path filename:(id)filename;
- (BOOL)parseTokens:(id)tokens startingLine:(unint64_t)line;
- (TMLParser)initWithContext:(id)context;
- (id)compileExpression:(id)expression;
- (id)compileFunction:(id)function bodyOnly:(BOOL)only localVars:(id)vars;
- (unint64_t)blockValueDepth;
- (void)addPreprocessorMacro:(id)macro;
- (void)addToken:(unint64_t)token text:(const char *)text;
- (void)commitFunction;
- (void)commitImplements;
- (void)commitInitializer;
- (void)commitMacro;
- (void)commitMethod;
- (void)commitObject;
- (void)commitPragma;
- (void)commitProperty;
- (void)commitSignal;
- (void)setup;
- (void)teardown;
@end

@implementation TMLParser

- (TMLParser)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TMLParser;
  v6 = [(TMLParser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v7->_strict = 1;
  }

  return v7;
}

- (void)addPreprocessorMacro:(id)macro
{
  macroCopy = macro;
  preprocessorMacros = self->_preprocessorMacros;
  v8 = macroCopy;
  if (!preprocessorMacros)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
    v7 = self->_preprocessorMacros;
    self->_preprocessorMacros = v6;

    macroCopy = v8;
    preprocessorMacros = self->_preprocessorMacros;
  }

  [(NSMutableSet *)preprocessorMacros addObject:macroCopy];
}

- (BOOL)parseFile:(id)file
{
  fileCopy = file;
  v5 = objc_autoreleasePoolPush();
  basePath = self->_basePath;
  v7 = basePath;
  filename = self->_filename;
  v9 = filename;
  stringByDeletingLastPathComponent = [fileCopy stringByDeletingLastPathComponent];
  v11 = self->_basePath;
  self->_basePath = stringByDeletingLastPathComponent;

  lastPathComponent = [fileCopy lastPathComponent];
  v13 = self->_filename;
  self->_filename = lastPathComponent;

  if (!self->_lookaheadComplete)
  {
    v14 = [[TMLParser alloc] initWithContext:0];
    [(TMLParser *)v14 parseFunctionLookaheadWithFile:fileCopy];
    functionIdentifiers = v14->_functionIdentifiers;
    if (functionIdentifiers)
    {
      v16 = self->_functionIdentifiers;
      if (!v16)
      {
        v17 = [MEMORY[0x277CBEB58] set];
        v18 = self->_functionIdentifiers;
        self->_functionIdentifiers = v17;

        v16 = self->_functionIdentifiers;
        functionIdentifiers = v14->_functionIdentifiers;
      }

      [(NSMutableSet *)v16 unionSet:functionIdentifiers];
    }

    self->_lookaheadComplete = 1;
  }

  [(TMLParser *)self setup];
  uTF8String = [fileCopy UTF8String];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_26F1AD444;
  v25[3] = &unk_279DC6500;
  v25[4] = self;
  if (sub_26F200A48(uTF8String, v25))
  {
    fileCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot read file at path %@", fileCopy];
LABEL_9:
    error = self->_error;
    self->_error = fileCopy;

    goto LABEL_10;
  }

  state = self->_state;
  if (state && state != 18)
  {
    fileCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Premature end of file at line %d", self->_lineNo];
    goto LABEL_9;
  }

LABEL_10:
  [(TMLParser *)self teardown];
  objc_storeStrong(&self->_basePath, basePath);
  objc_storeStrong(&self->_filename, filename);

  objc_autoreleasePoolPop(v5);
  v22 = self->_error == 0;

  return v22;
}

- (BOOL)parseString:(id)string basePath:(id)path filename:(id)filename
{
  stringCopy = string;
  pathCopy = path;
  filenameCopy = filename;
  basePath = self->_basePath;
  v28 = basePath;
  filename = self->_filename;
  filenameCopy2 = filename;
  v13 = [pathCopy copy];
  v14 = self->_basePath;
  self->_basePath = v13;

  objc_storeStrong(&self->_filename, filename);
  v15 = objc_autoreleasePoolPush();
  if (!self->_lookaheadComplete)
  {
    v16 = [[TMLParser alloc] initWithContext:0];
    [(TMLParser *)v16 parseFunctionLookaheadWithString:stringCopy basePath:pathCopy filename:filenameCopy];
    functionIdentifiers = v16->_functionIdentifiers;
    if (functionIdentifiers)
    {
      v18 = self->_functionIdentifiers;
      if (!v18)
      {
        v19 = [MEMORY[0x277CBEB58] set];
        v20 = self->_functionIdentifiers;
        self->_functionIdentifiers = v19;

        v18 = self->_functionIdentifiers;
        functionIdentifiers = v16->_functionIdentifiers;
      }

      [(NSMutableSet *)v18 unionSet:functionIdentifiers];
    }

    self->_lookaheadComplete = 1;
  }

  [(TMLParser *)self setup];
  uTF8String = [stringCopy UTF8String];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_26F1AD770;
  v29[3] = &unk_279DC6500;
  v29[4] = self;
  sub_26F200ACC(uTF8String, v29);
  state = self->_state;
  if (state && state != 18)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Premature end of file at line %u", self->_lineNo];
    error = self->_error;
    self->_error = v23;
  }

  [(TMLParser *)self teardown];
  objc_storeStrong(&self->_basePath, basePath);
  objc_storeStrong(&self->_filename, filename);
  objc_autoreleasePoolPop(v15);
  v25 = self->_error == 0;

  return v25;
}

- (BOOL)parseFunctionLookaheadWithFile:(id)file
{
  fileCopy = file;
  basePath = self->_basePath;
  v6 = basePath;
  filename = self->_filename;
  v8 = filename;
  stringByDeletingLastPathComponent = [fileCopy stringByDeletingLastPathComponent];
  v10 = self->_basePath;
  self->_basePath = stringByDeletingLastPathComponent;

  lastPathComponent = [fileCopy lastPathComponent];
  v12 = self->_filename;
  self->_filename = lastPathComponent;

  v13 = objc_autoreleasePoolPush();
  [(TMLParser *)self setup];
  self->_lookaheadOnly = 1;
  context = self->_context;
  self->_context = 0;
  self->_state = 19;

  uTF8String = [fileCopy UTF8String];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_26F1ADA54;
  v21[3] = &unk_279DC6500;
  v21[4] = self;
  if (sub_26F200A48(uTF8String, v21))
  {
    fileCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot read file at path %@", fileCopy];
LABEL_3:
    error = self->_error;
    self->_error = fileCopy;

    goto LABEL_6;
  }

  state = self->_state;
  if (state > 0x13 || ((1 << state) & 0xC0001) == 0)
  {
    fileCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Premature end of file at line %d", self->_lineNo];
    goto LABEL_3;
  }

LABEL_6:
  [(TMLParser *)self teardown];
  objc_storeStrong(&self->_basePath, basePath);
  objc_storeStrong(&self->_filename, filename);
  objc_autoreleasePoolPop(v13);
  v19 = self->_error == 0;

  return v19;
}

- (BOOL)parseFunctionLookaheadWithString:(id)string basePath:(id)path filename:(id)filename
{
  stringCopy = string;
  pathCopy = path;
  filenameCopy = filename;
  basePath = self->_basePath;
  v24 = basePath;
  filename = self->_filename;
  filenameCopy2 = filename;
  v13 = [pathCopy copy];
  v14 = self->_basePath;
  self->_basePath = v13;

  objc_storeStrong(&self->_filename, filename);
  v15 = objc_autoreleasePoolPush();
  [(TMLParser *)self setup];
  self->_lookaheadOnly = 1;
  context = self->_context;
  self->_context = 0;
  self->_state = 19;

  uTF8String = [stringCopy UTF8String];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_26F1ADD24;
  v25[3] = &unk_279DC6500;
  v25[4] = self;
  sub_26F200ACC(uTF8String, v25);
  state = self->_state;
  if (state > 0x13 || ((1 << state) & 0xC0001) == 0)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Premature end of file at line %u", self->_lineNo];
    error = self->_error;
    self->_error = v19;
  }

  [(TMLParser *)self teardown];
  objc_storeStrong(&self->_basePath, basePath);
  objc_storeStrong(&self->_filename, filename);
  objc_autoreleasePoolPop(v15);
  v21 = self->_error == 0;

  return v21;
}

- (BOOL)parseTokens:(id)tokens startingLine:(unint64_t)line
{
  tokensCopy = tokens;
  v7 = objc_autoreleasePoolPush();
  [(TMLParser *)self setup];
  self->_state = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = line;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_26F1ADF74;
  v13[3] = &unk_279DC6528;
  v13[4] = self;
  v13[5] = v14;
  [tokensCopy enumerateObjectsUsingBlock:v13];
  state = self->_state;
  if (state && state != 18)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Premature end of file at line %u", self->_lineNo];
    error = self->_error;
    self->_error = v9;
  }

  _Block_object_dispose(v14, 8);
  [(TMLParser *)self teardown];
  objc_autoreleasePoolPop(v7);
  v11 = self->_error == 0;

  return v11;
}

- (void)setup
{
  [(TMLParser *)self teardown];
  self->_state = 0;
  error = self->_error;
  self->_error = 0;

  self->_lineNo = 0;
  if (!self->_activeTokens)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
    activeTokens = self->_activeTokens;
    self->_activeTokens = v4;
  }

  if (!self->_declarationAttributes)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
    declarationAttributes = self->_declarationAttributes;
    self->_declarationAttributes = v6;
  }

  if (!self->_objectStack)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    objectStack = self->_objectStack;
    self->_objectStack = v8;

    MEMORY[0x2821F96F8](v8, objectStack);
  }
}

- (void)teardown
{
  declarationType = self->_declarationType;
  self->_declarationType = 0;

  [(NSMutableSet *)self->_declarationAttributes removeAllObjects];
  methodSelector = self->_methodSelector;
  self->_methodSelector = 0;

  lastIdent = self->_lastIdent;
  self->_lastIdent = 0;

  activeObject = self->_activeObject;
  self->_activeObject = 0;

  [(NSMutableArray *)self->_activeTokens removeAllObjects];
  [(NSMutableArray *)self->_objectStack removeAllObjects];
  context = self->_context;

  [(TMLMetaContext *)context commit];
}

- (BOOL)consumeToken:(unint64_t)token text:(const char *)text
{
  if (self->_error)
  {
    LOBYTE(blockValueDepth) = 0;
    return blockValueDepth;
  }

  v65 = v9;
  v66 = v8;
  v67 = v7;
  v68 = v6;
  v69 = v5;
  v70 = v4;
  switch(self->_state)
  {
    case 0uLL:
      LOBYTE(blockValueDepth) = 0;
      if (token > 15)
      {
        if (token > 18)
        {
          if (token == 20)
          {
            if ([(NSString *)self->_lastIdent length])
            {
              goto LABEL_210;
            }

            self->_state = 14;
            [(NSMutableArray *)self->_activeTokens removeAllObjects];
            selfCopy8 = self;
            tokenCopy = 20;
            goto LABEL_180;
          }

          if (token == 19)
          {
            goto LABEL_170;
          }
        }

        else
        {
          if (token == 16)
          {
            goto LABEL_150;
          }

          if (token == 17)
          {
            goto LABEL_116;
          }
        }
      }

      else
      {
        if (token < 2)
        {
          goto LABEL_181;
        }

        if (token == 2)
        {
          blockValueDepth = [(NSString *)self->_lastIdent length];
          if (blockValueDepth)
          {
            v28 = [TMLMetaObject alloc];
            lastIdent = self->_lastIdent;
            declarationAttributes = self->_declarationAttributes;
            goto LABEL_213;
          }
        }

        else if (token == 6)
        {
          [(NSMutableSet *)self->_declarationAttributes removeAllObjects];
          v16 = 2;
          goto LABEL_101;
        }
      }

      return blockValueDepth;
    case 1uLL:
      LOBYTE(blockValueDepth) = 0;
      if (token > 2)
      {
        if (token <= 9)
        {
          if (token == 3)
          {
            self->_state = 0;
            [(TMLParser *)self commitObject];
            goto LABEL_181;
          }

          if (token == 8)
          {
            blockValueDepth = [(NSString *)self->_lastIdent length];
            if (blockValueDepth)
            {
              [(NSMutableArray *)self->_activeTokens removeAllObjects];
              v16 = 3;
              goto LABEL_101;
            }
          }

          return blockValueDepth;
        }

        if (token == 10)
        {
          blockValueDepth = [(NSString *)self->_lastIdent length];
          if (!blockValueDepth)
          {
            return blockValueDepth;
          }

          v47 = self->_lastIdent;
          v22 = [MEMORY[0x277CCACA8] stringWithCString:text encoding:4];
          v48 = [(NSString *)v47 stringByAppendingString:v22];
          v49 = self->_lastIdent;
          self->_lastIdent = v48;
        }

        else
        {
          if (token != 19)
          {
            return blockValueDepth;
          }

          v22 = [MEMORY[0x277CCACA8] stringWithCString:text encoding:4];
          p_lastIdent = &self->_lastIdent;
          if (!-[NSString length](self->_lastIdent, "length") && [v22 isEqualToString:@"property"])
          {
            v36 = self->_lastIdent;
            self->_state = 4;
            self->_lastIdent = 0;

            declarationType = self->_declarationType;
            self->_declarationType = 0;

            activeTokens = self->_declarationAttributes;
LABEL_240:
            [activeTokens removeAllObjects];
LABEL_63:

LABEL_181:
            LOBYTE(blockValueDepth) = self->_error == 0;
            return blockValueDepth;
          }

          if (!-[NSString length](*p_lastIdent, "length", v9, v8, v7, v68, v69, v70, v10, v11) && [v22 isEqualToString:@"initializer"])
          {
            v53 = 12;
LABEL_220:
            v54 = self->_lastIdent;
            self->_state = v53;
            self->_lastIdent = 0;

LABEL_239:
            activeTokens = self->_activeTokens;
            goto LABEL_240;
          }

          if (!-[NSString length](*p_lastIdent, "length") && [v22 isEqualToString:@"implements"])
          {
            v53 = 13;
            goto LABEL_220;
          }

          if (!-[NSString length](*p_lastIdent, "length") && [v22 isEqualToString:@"signal"])
          {
            v55 = self->_lastIdent;
            self->_state = 6;
            self->_lastIdent = 0;

            methodSelector = self->_methodSelector;
            self->_methodSelector = 0;

            goto LABEL_239;
          }

          if (!-[NSString length](*p_lastIdent, "length") && (([v22 isEqualToString:@"method"] & 1) != 0 || objc_msgSend(v22, "isEqualToString:", @"constructor")))
          {
            v61 = self->_lastIdent;
            self->_state = 9;
            self->_lastIdent = 0;

            v62 = self->_declarationType;
            self->_declarationType = 0;

            v63 = self->_methodSelector;
            self->_methodSelector = 0;

            self->_methodDeclaration = [v22 isEqualToString:@"method"];
            goto LABEL_239;
          }

          if (!*p_lastIdent)
          {
            objc_storeStrong(&self->_lastIdent, v22);
            goto LABEL_63;
          }

          v58 = [(NSString *)*p_lastIdent stringByAppendingString:v22];
          v49 = *p_lastIdent;
          *p_lastIdent = v58;
        }

        goto LABEL_63;
      }

      if (!token)
      {
        goto LABEL_181;
      }

      if (token == 1)
      {
        if ([(NSString *)self->_lastIdent length])
        {
          goto LABEL_210;
        }

        goto LABEL_181;
      }

      if (token != 2)
      {
        return blockValueDepth;
      }

      blockValueDepth = [(NSString *)self->_lastIdent length];
      if (!blockValueDepth)
      {
        return blockValueDepth;
      }

      if (self->_activeObject)
      {
        [(NSMutableArray *)self->_objectStack addObject:?];
      }

      v28 = [TMLMetaObject alloc];
      lastIdent = self->_lastIdent;
      declarationAttributes = 0;
LABEL_213:
      v50 = [(TMLMetaObject *)v28 initWithType:lastIdent attributes:declarationAttributes, v9, v8, v7, v68, v69, v70, v10, v11];
      activeObject = self->_activeObject;
      self->_activeObject = v50;

      v52 = self->_lastIdent;
      self->_lastIdent = 0;

      v16 = 1;
      goto LABEL_101;
    case 2uLL:
      LOBYTE(blockValueDepth) = 0;
      if (token > 18)
      {
        goto LABEL_60;
      }

      if (!token)
      {
        goto LABEL_181;
      }

      if (token != 7)
      {
        return blockValueDepth;
      }

      goto LABEL_68;
    case 3uLL:
      if (token > 2)
      {
        if (token != 3 && token != 9)
        {
          goto LABEL_120;
        }

        goto LABEL_119;
      }

      if (token)
      {
        if (token != 1)
        {
          goto LABEL_120;
        }

LABEL_119:
        if ([(TMLParser *)self blockValueDepth:v9])
        {
          goto LABEL_120;
        }

        [(TMLParser *)self commitProperty];
        goto LABEL_178;
      }

      if (![(NSMutableArray *)self->_activeTokens count])
      {
        goto LABEL_181;
      }

      selfCopy11 = self;
      tokenCopy2 = 0;
      goto LABEL_121;
    case 4uLL:
      LOBYTE(blockValueDepth) = 0;
      if (token <= 5)
      {
        if (!token)
        {
          goto LABEL_181;
        }

        if (token != 1 && token != 3)
        {
          return blockValueDepth;
        }
      }

      else
      {
        if (token <= 8)
        {
          if (token != 6)
          {
            if (token == 8)
            {
              blockValueDepth = [(NSString *)self->_declarationType length];
              if (blockValueDepth)
              {
                self->_state = 1;
                selfCopy8 = self;
                tokenCopy = 8;
                goto LABEL_180;
              }
            }

            return blockValueDepth;
          }

          if ([(NSString *)self->_declarationType length])
          {
            goto LABEL_210;
          }

          v16 = 5;
          goto LABEL_101;
        }

        if (token != 9)
        {
          if (token != 19)
          {
            return blockValueDepth;
          }

          v32 = [(NSString *)self->_declarationType length];
          v33 = [MEMORY[0x277CCACA8] stringWithCString:text encoding:4];
          if (v32)
          {
            lookaheadCurrentIdent = self->_lastIdent;
            self->_lastIdent = v33;
            goto LABEL_194;
          }

          v40 = self->_declarationType;
          self->_declarationType = v33;
          goto LABEL_171;
        }
      }

      blockValueDepth = [(NSString *)self->_declarationType length:v9];
      if (!blockValueDepth)
      {
        return blockValueDepth;
      }

      self->_state = 3;
      selfCopy8 = self;
      tokenCopy = token;
      goto LABEL_180;
    case 5uLL:
      LOBYTE(blockValueDepth) = 0;
      if (token > 18)
      {
        goto LABEL_60;
      }

      if (!token)
      {
        goto LABEL_181;
      }

      if (token != 7)
      {
        return blockValueDepth;
      }

      v16 = 4;
      goto LABEL_101;
    case 6uLL:
      LOBYTE(blockValueDepth) = 0;
      if (token <= 5)
      {
        if (!token)
        {
          goto LABEL_181;
        }

        if (token != 1 && token != 3)
        {
          return blockValueDepth;
        }
      }

      else
      {
        if (token > 17)
        {
          goto LABEL_104;
        }

        if (token == 6)
        {
          if (![(NSString *)self->_lastIdent length])
          {
            v59 = 7;
            goto LABEL_233;
          }

          if ([(NSMutableArray *)self->_activeTokens count])
          {
            goto LABEL_210;
          }

          v16 = 8;
          goto LABEL_101;
        }

        if (token != 9)
        {
          return blockValueDepth;
        }
      }

      blockValueDepth = [(NSString *)self->_lastIdent length:v9];
      if (!blockValueDepth)
      {
        return blockValueDepth;
      }

      [(TMLParser *)self commitSignal];
      goto LABEL_178;
    case 7uLL:
      LOBYTE(blockValueDepth) = 0;
      if (token > 18)
      {
        goto LABEL_60;
      }

      goto LABEL_84;
    case 8uLL:
      LOBYTE(blockValueDepth) = 0;
      if (token > 18)
      {
        goto LABEL_87;
      }

LABEL_84:
      if (!token)
      {
        goto LABEL_181;
      }

      if (token != 7)
      {
        return blockValueDepth;
      }

      v16 = 6;
      goto LABEL_101;
    case 9uLL:
      LOBYTE(blockValueDepth) = 0;
      if (token > 5)
      {
        if (token > 17)
        {
LABEL_104:
          if (token == 18)
          {
            blockValueDepth = [(NSString *)self->_lastIdent length];
            if (!blockValueDepth)
            {
              return blockValueDepth;
            }

            if (self->_methodSelector)
            {
              goto LABEL_210;
            }

            v41 = [MEMORY[0x277CCACA8] stringWithCString:text encoding:4];
            v40 = self->_methodSelector;
            self->_methodSelector = v41;
          }

          else
          {
            if (token != 19)
            {
              return blockValueDepth;
            }

            if ([(NSString *)self->_lastIdent length])
            {
              if ([(NSString *)self->_declarationType length])
              {
                goto LABEL_210;
              }

              objc_storeStrong(&self->_declarationType, self->_lastIdent);
            }

LABEL_170:
            v39 = [MEMORY[0x277CCACA8] stringWithCString:text encoding:{4, v9, v8, v7, v68, v69, v70, v10, v11}];
            v40 = self->_lastIdent;
            self->_lastIdent = v39;
          }

LABEL_171:

          goto LABEL_181;
        }

        if (token != 6)
        {
          if (token != 9)
          {
            return blockValueDepth;
          }

          goto LABEL_146;
        }

        if ([(NSString *)self->_lastIdent length])
        {
          if (![(NSMutableArray *)self->_activeTokens count])
          {
            v16 = 11;
LABEL_101:
            self->_state = v16;
            goto LABEL_181;
          }

LABEL_210:
          LOBYTE(blockValueDepth) = 0;
          return blockValueDepth;
        }

        v59 = 10;
LABEL_233:
        self->_state = v59;
        v60 = self->_methodSelector;
        self->_methodSelector = 0;

        v57 = self->_declarationAttributes;
LABEL_234:
        [v57 removeAllObjects];
        goto LABEL_181;
      }

      if (!token)
      {
        goto LABEL_181;
      }

      if (token == 1 || token == 3)
      {
LABEL_146:
        blockValueDepth = [(NSString *)self->_lastIdent length:v9];
        if (!blockValueDepth)
        {
          return blockValueDepth;
        }

        [(TMLParser *)self commitMethod];
LABEL_178:
        self->_state = 1;
        if (token != 3)
        {
          goto LABEL_181;
        }

        selfCopy8 = self;
        tokenCopy = 3;
        goto LABEL_180;
      }

      return blockValueDepth;
    case 0xAuLL:
      LOBYTE(blockValueDepth) = 0;
      if (token <= 18)
      {
        goto LABEL_43;
      }

LABEL_60:
      if (token != 21)
      {
        if (token != 19)
        {
          return blockValueDepth;
        }

        v21 = self->_declarationAttributes;
        v22 = [MEMORY[0x277CCACA8] stringWithCString:text encoding:4];
        [(NSMutableSet *)v21 addObject:v22];
        goto LABEL_63;
      }

      v26 = [MEMORY[0x277CCACA8] stringWithCString:text encoding:4];
      v27 = [v26 isEqualToString:{@", "}];

      if (v27)
      {
        goto LABEL_181;
      }

      goto LABEL_210;
    case 0xBuLL:
      LOBYTE(blockValueDepth) = 0;
      if (token <= 18)
      {
LABEL_43:
        if (!token)
        {
          goto LABEL_181;
        }

        if (token == 7)
        {
          v16 = 9;
          goto LABEL_101;
        }

        return blockValueDepth;
      }

LABEL_87:
      if (token != 21)
      {
        if (token != 19)
        {
          return blockValueDepth;
        }

        goto LABEL_89;
      }

      v31 = [MEMORY[0x277CCACA8] stringWithCString:text encoding:4];
      if ([v31 isEqualToString:{@", "}])
      {
        [(TMLParser *)self addToken:21 text:text];

        goto LABEL_181;
      }

      goto LABEL_210;
    case 0xCuLL:
      if (token > 2)
      {
        if (token != 9 && token != 3)
        {
          goto LABEL_120;
        }
      }

      else
      {
        if (!token)
        {
          goto LABEL_181;
        }

        if (token != 1)
        {
          goto LABEL_120;
        }
      }

      blockValueDepth = [(NSMutableArray *)self->_activeTokens count:v9];
      if (!blockValueDepth)
      {
        return blockValueDepth;
      }

      [(TMLParser *)self commitInitializer];
      goto LABEL_178;
    case 0xDuLL:
      LOBYTE(blockValueDepth) = 0;
      if (token <= 2)
      {
        if (!token)
        {
          goto LABEL_181;
        }

        if (token != 1)
        {
          return blockValueDepth;
        }
      }

      else if (token != 3)
      {
        if (token == 19)
        {
          goto LABEL_89;
        }

        if (token != 9)
        {
          return blockValueDepth;
        }
      }

      blockValueDepth = [(NSMutableArray *)self->_activeTokens count:v9];
      if (!blockValueDepth)
      {
        return blockValueDepth;
      }

      [(TMLParser *)self commitImplements];
      goto LABEL_178;
    case 0xEuLL:
      if (token != 3)
      {
        goto LABEL_120;
      }

      blockValueDepth = [(TMLParser *)self blockValueDepth];
      if (!blockValueDepth)
      {
        return blockValueDepth;
      }

      if (blockValueDepth != 1)
      {
        goto LABEL_120;
      }

      [(TMLParser *)self addToken:3 text:text];
      [(TMLParser *)self commitFunction];
LABEL_68:
      self->_state = 0;
      goto LABEL_181;
    case 0xFuLL:
      if (token > 0x15)
      {
        goto LABEL_172;
      }

      if (((1 << token) & 0x284000) != 0)
      {
        goto LABEL_120;
      }

      if (((1 << token) & 0x202) != 0)
      {
LABEL_98:
        [(TMLParser *)self commitPragma:v9];
        goto LABEL_99;
      }

      if (token == 16)
      {
        if ([(NSMutableArray *)self->_activeTokens count])
        {
          goto LABEL_210;
        }

        v23 = [MEMORY[0x277CCACA8] stringWithCString:text encoding:4];
        if ([v23 isEqualToString:@"@macro"] & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", @"@ifdef") & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", @"@ifndef"))
        {
          [(TMLParser *)self addToken:16 text:text, v9, v8, v67, v68, v69, v70, v10, v11];
          self->_state = 16;

          goto LABEL_181;
        }

        goto LABEL_120;
      }

LABEL_172:
      if (!token)
      {
        goto LABEL_181;
      }

      goto LABEL_210;
    case 0x10uLL:
      if (token != 16)
      {
        goto LABEL_120;
      }

      v24 = [MEMORY[0x277CCACA8] stringWithCString:text encoding:4];
      v25 = [v24 isEqualToString:@"@end"];

      if (!v25)
      {
        goto LABEL_120;
      }

      [(TMLParser *)self addToken:16 text:text];
      goto LABEL_98;
    case 0x11uLL:
      if (token > 15)
      {
        LOBYTE(blockValueDepth) = 0;
        if (token == 16 || token == 20)
        {
          return blockValueDepth;
        }

        if (token == 17 && [(NSMutableArray *)self->_activeTokens count])
        {
          goto LABEL_210;
        }
      }

      else
      {
        if (!token)
        {
          goto LABEL_181;
        }

        if (token == 1 || token == 9)
        {
          [(TMLParser *)self commitMacro:v9];
LABEL_99:
          v16 = 19;
          if (!self->_lookaheadOnly)
          {
            v16 = 0;
          }

          goto LABEL_101;
        }
      }

      goto LABEL_120;
    case 0x13uLL:
      if (token <= 16)
      {
        if (token != 3)
        {
          if (token == 16)
          {
LABEL_150:
            self->_state = 15;
            [(NSMutableArray *)self->_activeTokens removeAllObjects:v9];
            selfCopy8 = self;
            tokenCopy = 16;
LABEL_180:
            [(TMLParser *)selfCopy8 consumeToken:tokenCopy text:text, v65, v66, v67, v68, v69, v70];
            goto LABEL_181;
          }

          goto LABEL_120;
        }

        if (self->_lookaheadInFunction && [(TMLParser *)self blockValueDepth]== 1)
        {
          self->_lookaheadInFunction = 0;
          lookaheadCurrentIdent = self->_lookaheadCurrentIdent;
          self->_lookaheadCurrentIdent = 0;
LABEL_194:

LABEL_225:
          v57 = self->_activeTokens;
          goto LABEL_234;
        }

        selfCopy11 = self;
        tokenCopy2 = 3;
      }

      else
      {
        if (token == 17)
        {
LABEL_116:
          self->_state = 17;
          [(NSMutableArray *)self->_activeTokens removeAllObjects:v9];
          selfCopy8 = self;
          tokenCopy = 17;
          goto LABEL_180;
        }

        if (token != 19)
        {
          if (token == 20)
          {
            if ([(TMLParser *)self blockValueDepth])
            {
              selfCopy11 = self;
              tokenCopy2 = 20;
              goto LABEL_121;
            }

            self->_lookaheadInFunction = 1;
            goto LABEL_225;
          }

LABEL_120:
          selfCopy11 = self;
          tokenCopy2 = token;
          goto LABEL_121;
        }

        if (self->_lookaheadInFunction && !self->_lookaheadCurrentIdent)
        {
          v42 = [MEMORY[0x277CCACA8] stringWithCString:text encoding:4];
          v43 = self->_lookaheadCurrentIdent;
          self->_lookaheadCurrentIdent = v42;

          functionIdentifiers = self->_functionIdentifiers;
          if (!functionIdentifiers)
          {
            v45 = [MEMORY[0x277CBEB58] set];
            v46 = self->_functionIdentifiers;
            self->_functionIdentifiers = v45;

            functionIdentifiers = self->_functionIdentifiers;
          }

          [(NSMutableSet *)functionIdentifiers addObject:self->_lookaheadCurrentIdent, v9, v8, v7, v68, v69, v70, v10, v11];
        }

LABEL_89:
        selfCopy11 = self;
        tokenCopy2 = 19;
      }

LABEL_121:
      [(TMLParser *)selfCopy11 addToken:tokenCopy2 text:text, v65, v66, v67, v68, v69, v70];
      goto LABEL_181;
    default:
      goto LABEL_181;
  }
}

- (void)addToken:(unint64_t)token text:(const char *)text
{
  v11 = [MEMORY[0x277CCACA8] stringWithCString:text encoding:4];
  if (token == 22)
  {
    newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
    v7 = [v11 rangeOfCharacterFromSet:newlineCharacterSet];

    v8 = [v11 substringWithRange:{v7 + 1, objc_msgSend(v11, "length") - 2 * v7 - 2}];

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@'", v8];

    token = 14;
  }

  activeTokens = self->_activeTokens;
  v10 = [[TMLParserToken alloc] initWithToken:token text:v11];
  [(NSMutableArray *)activeTokens addObject:v10];
}

- (unint64_t)blockValueDepth
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  activeTokens = self->_activeTokens;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_26F1AF054;
  v5[3] = &unk_279DC6550;
  v5[4] = &v6;
  [(NSMutableArray *)activeTokens enumerateObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)commitObject
{
  if ([(NSMutableArray *)self->_objectStack count])
  {
    lastObject = [(NSMutableArray *)self->_objectStack lastObject];
    [(NSMutableArray *)self->_objectStack removeLastObject];
    [(TMLMetaObject *)lastObject addObject:self->_activeObject];
    self->_state = 1;
    activeObject = self->_activeObject;
    self->_activeObject = lastObject;
LABEL_3:

    return;
  }

  identifier = [(TMLMetaObject *)self->_activeObject identifier];
  v6 = [identifier length];

  if (!v6)
  {
    if (self->_strict)
    {
      v7 = MEMORY[0x277CCACA8];
      type = [(TMLMetaObject *)self->_activeObject type];
      v8 = [v7 stringWithFormat:@"Missing id property for object of type %@ at line %u", type, self->_lineNo];
      error = self->_error;
      self->_error = v8;

      activeObject = type;
      goto LABEL_3;
    }

    v10 = self->_activeObject;
    v11 = MEMORY[0x277CCACA8];
    type2 = [(TMLMetaObject *)v10 type];
    objects = [(TMLMetaContext *)self->_context objects];
    v14 = [v11 stringWithFormat:@"%@-%ld", type2, objc_msgSend(objects, "count")];
    [(TMLMetaObject *)v10 addProperty:@"id" value:v14];
  }

  context = self->_context;
  v16 = self->_activeObject;

  [(TMLMetaContext *)context addObject:v16];
}

- (void)commitProperty
{
  v72 = *MEMORY[0x277D85DE8];
  if (self->_lastIdent)
  {
    lastObject = [(NSMutableArray *)self->_activeTokens lastObject];
    token = [lastObject token];

    if (!token)
    {
      [(NSMutableArray *)self->_activeTokens removeLastObject];
    }

    v5 = [(NSString *)self->_declarationType length];
    v6 = v5 != 0;
    if (v5)
    {
      [(TMLMetaObject *)self->_activeObject addPropertyDeclaration:self->_lastIdent typeName:self->_declarationType attributes:self->_declarationAttributes];
      declarationType = self->_declarationType;
      self->_declarationType = 0;

      [(NSMutableSet *)self->_declarationAttributes removeAllObjects];
      goto LABEL_11;
    }

    if ([(NSMutableArray *)self->_activeTokens count])
    {
LABEL_11:
      v11 = [(NSMutableArray *)self->_activeTokens count];
      activeTokens = self->_activeTokens;
      if (v11 == 1)
      {
        v13 = [(NSMutableArray *)activeTokens objectAtIndexedSubscript:0];
        token2 = [v13 token];
        lastIdent = 0;
        if (token2 <= 13)
        {
          switch(token2)
          {
            case 11:
              v53 = MEMORY[0x277CCABB0];
              text = [v13 text];
              v19 = [v53 numberWithInteger:{objc_msgSend(text, "integerValue")}];
              break;
            case 12:
              v57 = MEMORY[0x277CCABB0];
              text = [v13 text];
              [text floatValue];
              v19 = [v57 numberWithFloat:?];
              break;
            case 13:
              text = [v13 text];
              bOOLValue = [text BOOLValue];
              v18 = MEMORY[0x277CBEC28];
              if (bOOLValue)
              {
                v18 = MEMORY[0x277CBEC38];
              }

              v19 = v18;
              break;
            default:
LABEL_56:

              if (lastIdent)
              {
                [(TMLMetaObject *)self->_activeObject addProperty:self->_lastIdent value:lastIdent];

                goto LABEL_59;
              }

              if (v6)
              {
                goto LABEL_59;
              }

              goto LABEL_60;
          }

          lastIdent = v19;

          goto LABEL_56;
        }

        if (token2 == 14)
        {
          text2 = [v13 text];
          v55 = [text2 characterAtIndex:0];
          lastIdent = [text2 substringWithRange:{1, objc_msgSend(text2, "length") - 2}];

          if (v55 == 34)
          {
            v56 = [objc_opt_class() unescapeString:lastIdent];

            lastIdent = v56;
          }

          goto LABEL_56;
        }

        if (token2 != 15)
        {
          if (token2 != 19)
          {
            goto LABEL_56;
          }

          text3 = [v13 text];
          v49 = [text3 isEqualToString:@"null"];

          if (v49)
          {
            null = [MEMORY[0x277CBEB68] null];
LABEL_53:
            lastIdent = null;
            goto LABEL_56;
          }

          if ([(NSString *)self->_lastIdent isEqualToString:@"id"]|| [(NSString *)self->_lastIdent isEqualToString:@"superclass"]|| [(NSString *)self->_lastIdent isEqualToString:@"nativeclass"])
          {
            null = [v13 text];
            goto LABEL_53;
          }
        }
      }

      else
      {
        if (![(NSMutableArray *)activeTokens count])
        {
          if (v5)
          {
LABEL_59:
            [(NSMutableArray *)self->_activeTokens removeAllObjects];
            lastIdent = self->_lastIdent;
            self->_lastIdent = 0;
            goto LABEL_61;
          }

LABEL_60:
          v60 = MEMORY[0x277CCACA8];
          v61 = self->_lastIdent;
          lastIdent = [(TMLMetaObject *)self->_activeObject type];
          v62 = [v60 stringWithFormat:@"Unrecognized value for '%@' of type %@ at line %d", v61, lastIdent, self->_lineNo];
          error = self->_error;
          self->_error = v62;

          goto LABEL_61;
        }

        if (qword_2806D9188 != -1)
        {
          sub_26F200C40();
        }

        v13 = [qword_2806D9190 firstMatchInString:self->_lastIdent options:0 range:{0, -[NSString length](self->_lastIdent, "length")}];
        if (v13)
        {
          firstObject = [(NSMutableArray *)self->_activeTokens firstObject];
          token3 = [firstObject token];

          if (token3 == 2 || (-[NSMutableArray firstObject](self->_activeTokens, "firstObject"), v22 = objc_claimAutoreleasedReturnValue(), [v22 text], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", @"function"), v23, v22, v24))
          {
            v25 = self->_lastIdent;
            v26 = [v13 rangeAtIndex:3];
            v28 = [(NSString *)v25 substringWithRange:v26, v27];
            v29 = [v28 substringWithRange:{0, 1}];
            lowercaseString = [v29 lowercaseString];
            v31 = [v28 substringFromIndex:1];
            v32 = [lowercaseString stringByAppendingString:v31];

            v33 = self->_lastIdent;
            v34 = [v13 rangeAtIndex:1];
            v36 = [(NSString *)v33 substringWithRange:v34, v35];
            v37 = [v36 stringByAppendingString:v32];

            v38 = [(TMLMetaObject *)self->_activeObject signalDeclaration:v37];
            parameters = [v38 parameters];
            v40 = [parameters count];

            if (v40)
            {
              v66 = v32;
              v41 = [MEMORY[0x277CBEB58] set];
              v67 = 0u;
              v68 = 0u;
              v69 = 0u;
              v70 = 0u;
              parameters2 = [v38 parameters];
              v43 = [parameters2 countByEnumeratingWithState:&v67 objects:v71 count:16];
              if (v43)
              {
                v44 = v43;
                v45 = *v68;
                do
                {
                  for (i = 0; i != v44; ++i)
                  {
                    if (*v68 != v45)
                    {
                      objc_enumerationMutation(parameters2);
                    }

                    propertyName = [*(*(&v67 + 1) + 8 * i) propertyName];
                    [v41 addObject:propertyName];
                  }

                  v44 = [parameters2 countByEnumeratingWithState:&v67 objects:v71 count:16];
                }

                while (v44);
              }

              v32 = v66;
            }

            else
            {
              v41 = 0;
            }

            v58 = [(TMLParser *)self compileFunction:self->_activeTokens bodyOnly:0 localVars:v41];
            v59 = [[TMLSignalHandlerFunction alloc] initWithSignalName:v32 functionName:self->_lastIdent body:v58];
            [(TMLMetaObject *)self->_activeObject addSignalHandler:v59 signalTarget:v37];

            lastIdent = 0;
            v6 = 1;
            goto LABEL_56;
          }
        }
      }

      lastIdent = [(TMLParser *)self compileExpression:self->_activeTokens];
      if (self->_error)
      {

LABEL_61:
        return;
      }

      goto LABEL_56;
    }

    v51 = MEMORY[0x277CCACA8];
    v52 = self->_lastIdent;
    type = [(TMLMetaObject *)self->_activeObject type];
    [v51 stringWithFormat:@"Missing value for property '%@' of type %@ at line %d", v52, type, self->_lineNo];
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    type = [(TMLMetaObject *)self->_activeObject type];
    [v8 stringWithFormat:@"Missing property name for type %@ at line %d", type, self->_lineNo, v64];
  }
  v9 = ;
  v10 = self->_error;
  self->_error = v9;
}

- (void)commitInitializer
{
  activeTokens = self->_activeTokens;
  v4 = [[TMLParserToken alloc] initWithToken:19 text:@"$ctor"];
  [(NSMutableArray *)activeTokens insertObject:v4 atIndex:0];

  v5 = self->_activeTokens;
  v6 = [[TMLParserToken alloc] initWithToken:10 text:@"."];
  [(NSMutableArray *)v5 insertObject:v6 atIndex:1];

  v7 = [(TMLParser *)self compileFunction:self->_activeTokens bodyOnly:1];
  v10 = [v7 stringByReplacingOccurrencesOfString:@"$ctor.$" withString:@"$ctor$" options:0 range:{0, 7}];

  activeObject = self->_activeObject;
  v9 = [[TMLValueExpression alloc] initWithExpressionText:v10 bindings:&unk_287F57540];
  [(TMLMetaObject *)activeObject setInitializer:v9];

  [(NSMutableArray *)self->_activeTokens removeAllObjects];
}

- (void)commitImplements
{
  activeTokens = self->_activeTokens;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_26F1AFB74;
  v4[3] = &unk_279DC6578;
  v4[4] = self;
  [(NSMutableArray *)activeTokens enumerateObjectsUsingBlock:v4];
  [(NSMutableArray *)self->_activeTokens removeAllObjects];
}

- (void)commitFunction
{
  if (-[NSMutableArray count](self->_activeTokens, "count") >= 7 && (-[NSMutableArray objectAtIndexedSubscript:](self->_activeTokens, "objectAtIndexedSubscript:", 2), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 token], v3, v4 == 19))
  {
    v5 = [(NSMutableArray *)self->_activeTokens objectAtIndexedSubscript:2];
    text = [v5 text];

    v6 = [(TMLParser *)self compileFunction:self->_activeTokens bodyOnly:0];
    context = self->_context;
    v8 = [[TMLFunction alloc] initWithName:text body:v6];
    [(TMLMetaContext *)context addFunction:v8];

    [(NSMutableArray *)self->_activeTokens removeAllObjects];
    error = text;
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Incomplete function at line %d", self->_lineNo];
    error = self->_error;
    self->_error = v9;
  }

  MEMORY[0x2821F96F8](v9, error);
}

- (void)commitPragma
{
  v3 = [(NSMutableArray *)self->_activeTokens objectAtIndexedSubscript:0];
  text = [v3 text];

  if (![text isEqualToString:@"@include"])
  {
    if ([text isEqualToString:@"@export"])
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
      [(NSMutableArray *)self->_activeTokens removeObjectAtIndex:0];
      activeTokens = self->_activeTokens;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = sub_26F1B02AC;
      v35[3] = &unk_279DC65A0;
      v36 = v5;
      selfCopy = self;
      v38 = text;
      text3 = v5;
      [(NSMutableArray *)activeTokens enumerateObjectsUsingBlock:v35];
      [(TMLMetaContext *)self->_context addExports:text3];

LABEL_38:
      goto LABEL_39;
    }

    if ([text isEqualToString:@"@require"])
    {
      [(NSMutableArray *)self->_activeTokens removeObjectAtIndex:0];
      v11 = self->_activeTokens;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = sub_26F1B039C;
      v33[3] = &unk_279DC65C8;
      v33[4] = self;
      v34 = text;
      [(NSMutableArray *)v11 enumerateObjectsUsingBlock:v33];

LABEL_39:
      [(NSMutableArray *)self->_activeTokens removeAllObjects];
      goto LABEL_40;
    }

    if (([text isEqualToString:@"@macro"] & 1) == 0 && (objc_msgSend(text, "isEqualToString:", @"@ifdef") & 1) == 0 && !objc_msgSend(text, "isEqualToString:", @"@ifndef"))
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported pragma %@ at line %d", text, self->_lineNo];
      goto LABEL_29;
    }

    if ([(NSMutableArray *)self->_activeTokens count]<= 1)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Missing macro name at line %d", self->_lineNo, v30];
      goto LABEL_29;
    }

    lastObject = [(NSMutableArray *)self->_activeTokens lastObject];
    text2 = [lastObject text];
    v14 = [text2 isEqualToString:@"@end"];

    if ((v14 & 1) == 0)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Missing macro end at line %d", self->_lineNo, v30];
      goto LABEL_29;
    }

    v15 = [(NSMutableArray *)self->_activeTokens objectAtIndexedSubscript:2];
    text3 = [v15 text];

    [(NSMutableArray *)self->_activeTokens removeObjectsInRange:0, 3];
    [(NSMutableArray *)self->_activeTokens removeLastObject];
    firstObject = [(NSMutableArray *)self->_activeTokens firstObject];
    token = [firstObject token];

    if (token == 1)
    {
      [(NSMutableArray *)self->_activeTokens removeObjectAtIndex:0];
    }

    lastObject2 = [(NSMutableArray *)self->_activeTokens lastObject];
    token2 = [lastObject2 token];

    if (token2 == 1)
    {
      [(NSMutableArray *)self->_activeTokens removeLastObject];
    }

    v20 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{10 * -[NSMutableArray count](self->_activeTokens, "count")}];
    v21 = self->_activeTokens;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_26F1B0490;
    v31[3] = &unk_279DC6578;
    v22 = v20;
    v32 = v22;
    [(NSMutableArray *)v21 enumerateObjectsUsingBlock:v31];
    if ([text isEqualToString:@"@ifdef"])
    {
      if ([(NSMutableSet *)self->_preprocessorMacros containsObject:text3])
      {
        [(NSMutableArray *)self->_activeTokens removeAllObjects];
        basePath = self->_basePath;
        filename = self->_filename;
        if (self->_lookaheadOnly)
        {
          [(TMLParser *)self parseFunctionLookaheadWithString:v22 basePath:basePath filename:filename];
          goto LABEL_37;
        }

LABEL_33:
        [(TMLParser *)self parseString:v22 basePath:basePath filename:filename];
      }
    }

    else
    {
      if (![text isEqualToString:@"@ifndef"])
      {
        if (!self->_macros)
        {
          v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
          macros = self->_macros;
          self->_macros = v27;
        }

        v29 = [TMLMacroText macroTextWithMacroText:v22 basePath:self->_basePath filename:self->_filename];
        [(NSMutableDictionary *)self->_macros setObject:v29 forKeyedSubscript:text3];

        goto LABEL_37;
      }

      if (([(NSMutableSet *)self->_preprocessorMacros containsObject:text3]& 1) == 0)
      {
        [(NSMutableArray *)self->_activeTokens removeAllObjects];
        basePath = self->_basePath;
        filename = self->_filename;
        goto LABEL_33;
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if ([(NSMutableArray *)self->_activeTokens count]> 1)
  {
    if (!self->_basePath)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Include pragma is invalid for source at line %d", self->_lineNo, v30];
      goto LABEL_29;
    }

    v8 = [(NSMutableArray *)self->_activeTokens objectAtIndexedSubscript:1];
    text4 = [v8 text];

    v10 = [text4 substringWithRange:{1, objc_msgSend(text4, "length") - 2}];

    text3 = [(NSString *)self->_basePath stringByAppendingPathComponent:v10];

    if (self->_lookaheadOnly)
    {
      [(TMLParser *)self parseFunctionLookaheadWithFile:text3];
    }

    else
    {
      [(TMLParser *)self parseFile:text3];
    }

    goto LABEL_38;
  }

  [MEMORY[0x277CCACA8] stringWithFormat:@"Missing argument for pragma %@ at line %d", text, self->_lineNo];
  v25 = LABEL_29:;
  error = self->_error;
  self->_error = v25;

LABEL_40:
}

- (void)commitMacro
{
  v3 = [(NSMutableArray *)self->_activeTokens objectAtIndexedSubscript:0];
  text = [v3 text];
  v5 = [text substringFromIndex:1];

  v6 = [(NSMutableDictionary *)self->_macros objectForKeyedSubscript:v5];
  macroText = [v6 macroText];
  v8 = [macroText mutableCopy];

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    [(NSMutableArray *)self->_activeTokens removeObjectAtIndex:0];
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{&stru_287F301C0, 0}];
    activeTokens = self->_activeTokens;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_26F1B085C;
    v24[3] = &unk_279DC65F0;
    v27 = &v33;
    v12 = v9;
    v25 = v12;
    v28 = &v29;
    v13 = v10;
    v26 = v13;
    [(NSMutableArray *)activeTokens enumerateObjectsUsingBlock:v24];
    if (v34[3] || v30[3])
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid macro argument %@ at line %d", v5, self->_lineNo];
      error = self->_error;
      self->_error = v14;
    }

    else
    {
      v18 = [v12 copy];
      [v13 addObject:v18];

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_26F1B09D8;
      v22[3] = &unk_279DC6618;
      v19 = v8;
      v23 = v19;
      [v13 enumerateObjectsWithOptions:2 usingBlock:v22];
      [(NSMutableArray *)self->_activeTokens removeAllObjects];
      if (self->_lookaheadOnly)
      {
        basePath = [v6 basePath];
        filename = [v6 filename];
        [(TMLParser *)self parseFunctionLookaheadWithString:v19 basePath:basePath filename:filename];
      }

      else
      {
        basePath = [v6 basePath];
        filename = [v6 filename];
        [(TMLParser *)self parseString:v19 basePath:basePath filename:filename];
      }

      error = v23;
    }

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Undeclared macro %@ at line %d", v5, self->_lineNo];
    v17 = self->_error;
    self->_error = v16;
  }
}

- (void)commitSignal
{
  v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_activeTokens, "count") >> 1}];
  if ([(NSMutableArray *)self->_activeTokens count]< 2)
  {
LABEL_10:
    activeObject = self->_activeObject;
    lastIdent = self->_lastIdent;
    if ([(NSString *)self->_declarationType length])
    {
      declarationType = self->_declarationType;
    }

    else
    {
      declarationType = @"void";
    }

    v18 = [(NSString *)self->_methodSelector substringWithRange:10, [(NSString *)self->_methodSelector length]- 11];
    [(TMLMetaObject *)activeObject addSignalDeclaration:lastIdent returnType:declarationType parameters:v23 methodSelector:v18 attributes:self->_declarationAttributes];

    [(NSMutableArray *)self->_activeTokens removeAllObjects];
    [(NSMutableSet *)self->_declarationAttributes removeAllObjects];
    methodSelector = self->_methodSelector;
    self->_methodSelector = 0;

    v20 = self->_lastIdent;
    self->_lastIdent = 0;

    v4 = self->_declarationType;
    self->_declarationType = 0;
    goto LABEL_17;
  }

  v3 = 0;
  while (1)
  {
    v4 = [(NSMutableArray *)self->_activeTokens objectAtIndexedSubscript:v3];
    v5 = [(NSMutableArray *)self->_activeTokens objectAtIndexedSubscript:v3 + 1];
    if ([v4 token] != 19 || objc_msgSend(v5, "token") != 19)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed signal parameters declaration at line %d", self->_lineNo];
      error = self->_error;
      self->_error = v17;
      goto LABEL_16;
    }

    v6 = [TMLPropertyDescriptor alloc];
    text = [v5 text];
    text2 = [v4 text];
    v9 = [(TMLPropertyDescriptor *)v6 initWithName:text typeName:text2 attributes:0];
    [v23 addObject:v9];

    v10 = v3 + 2;
    if (v3 + 2 < [(NSMutableArray *)self->_activeTokens count])
    {
      break;
    }

LABEL_9:

    v3 = v10;
    if (([(NSMutableArray *)self->_activeTokens count]- v10) <= 1)
    {
      goto LABEL_10;
    }
  }

  error = [(NSMutableArray *)self->_activeTokens objectAtIndexedSubscript:v3 + 2];
  if ([error token] == 21)
  {
    text3 = [error text];
    v13 = [text3 isEqualToString:{@", "}];

    if (v13)
    {
      v10 = v3 + 3;

      goto LABEL_9;
    }
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed signal parameters declaration at line %d", self->_lineNo];
  v22 = self->_error;
  self->_error = v21;

LABEL_16:
LABEL_17:
}

- (void)commitMethod
{
  v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_activeTokens, "count") >> 1}];
  if ([(NSMutableArray *)self->_activeTokens count]>= 2)
  {
    v3 = 0;
    do
    {
      v4 = [(NSMutableArray *)self->_activeTokens objectAtIndexedSubscript:v3];
      v5 = [(NSMutableArray *)self->_activeTokens objectAtIndexedSubscript:v3 + 1];
      if ([v4 token] != 19 || objc_msgSend(v5, "token") != 19)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed signal parameters declaration at line %d", self->_lineNo];
        error = self->_error;
        self->_error = v20;
        goto LABEL_17;
      }

      v6 = [TMLPropertyDescriptor alloc];
      text = [v5 text];
      text2 = [v4 text];
      v9 = [(TMLPropertyDescriptor *)v6 initWithName:text typeName:text2 attributes:0];
      [v25 addObject:v9];

      v10 = v3 + 2;
      if (v3 + 2 < [(NSMutableArray *)self->_activeTokens count])
      {
        error = [(NSMutableArray *)self->_activeTokens objectAtIndexedSubscript:v3 + 2];
        if ([error token] != 21 || (objc_msgSend(error, "text"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @","), v12, (v13 & 1) == 0))
        {
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed signal parameters declaration at line %d", self->_lineNo];
          v22 = self->_error;
          self->_error = v21;

LABEL_17:
          goto LABEL_22;
        }

        v10 = v3 + 3;
      }

      v3 = v10;
    }

    while (([(NSMutableArray *)self->_activeTokens count]- v10) > 1);
  }

  v14 = [(NSString *)self->_methodSelector substringWithRange:10, [(NSString *)self->_methodSelector length]- 11];
  methodSelector = self->_methodSelector;
  self->_methodSelector = v14;

  if (self->_methodDeclaration)
  {
    activeObject = self->_activeObject;
    lastIdent = self->_lastIdent;
    if ([(NSString *)self->_declarationType length])
    {
      declarationType = self->_declarationType;
    }

    else
    {
      declarationType = @"void";
    }

    [(TMLMetaObject *)activeObject addMethodDeclaration:lastIdent returnType:declarationType parameters:v25 methodSelector:self->_methodSelector attributes:self->_declarationAttributes];
  }

  else
  {
    if ([(NSString *)self->_declarationType length])
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed constructor declaration at line %d", self->_lineNo];
      v4 = self->_error;
      self->_error = v19;
      goto LABEL_22;
    }

    [(TMLMetaObject *)self->_activeObject addConstructorDeclaration:self->_lastIdent parameters:v25 methodSelector:self->_methodSelector attributes:self->_declarationAttributes];
  }

  [(NSMutableArray *)self->_activeTokens removeAllObjects];
  [(NSMutableSet *)self->_declarationAttributes removeAllObjects];
  v23 = self->_methodSelector;
  self->_methodSelector = 0;

  v24 = self->_lastIdent;
  self->_lastIdent = 0;

  v4 = self->_declarationType;
  self->_declarationType = 0;
LABEL_22:
}

- (id)compileExpression:(id)expression
{
  expressionCopy = expression;
  if ([expressionCopy count] >= 3)
  {
    firstObject = [expressionCopy firstObject];
    if ([firstObject token] == 19)
    {
      lastObject = [expressionCopy lastObject];
      token = [lastObject token];

      if (token == 3)
      {
        v40 = 0;
        v41 = &v40;
        v42 = 0x2020000000;
        v43 = 0;
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = sub_26F1B14BC;
        v39[3] = &unk_279DC6550;
        v39[4] = &v40;
        [expressionCopy enumerateObjectsUsingBlock:v39];
        if (*(v41 + 24) == 1)
        {
          v8 = objc_alloc_init(TMLMetaContext);
          v9 = [objc_alloc(objc_opt_class()) initWithContext:v8];
          [v9 setStrict:0];
          if ([v9 parseTokens:expressionCopy startingLine:0])
          {
            rootObject = [(TMLMetaContext *)v8 rootObject];
          }

          else
          {
            error = [v9 error];
            error = self->_error;
            self->_error = error;

            rootObject = 0;
          }

          _Block_object_dispose(&v40, 8);
          goto LABEL_17;
        }

        _Block_object_dispose(&v40, 8);
      }
    }

    else
    {
    }
  }

  v11 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{5 * objc_msgSend(expressionCopy, "count")}];
  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  v13 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:64];
  v14 = [objc_opt_class() transformObjectCreation:expressionCopy];

  v15 = [objc_opt_class() transformFunction:v14];

  array = [MEMORY[0x277CBEB18] array];
  v17 = objc_alloc_init(TMLJSScope);
  [(TMLJSScope *)v17 setType:0];
  [array addObject:v17];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_26F1B1568;
  v28[3] = &unk_279DC6640;
  expressionCopy = v15;
  v29 = expressionCopy;
  v18 = v11;
  v30 = v18;
  v19 = v13;
  v31 = v19;
  selfCopy = self;
  v35 = v37;
  v20 = array;
  v33 = v20;
  v36 = &v40;
  v21 = v12;
  v34 = v21;
  [expressionCopy enumerateObjectsUsingBlock:v28];
  if ([v19 length])
  {
    [v18 appendFormat:@"$(%u)", objc_msgSend(v21, "count")];
    v22 = [v19 copy];
    [v21 addObject:v22];
  }

  if (self->_error)
  {
    rootObject = 0;
  }

  else
  {
    v23 = [TMLValueExpression alloc];
    if ([v21 count])
    {
      v24 = v21;
    }

    else
    {
      v24 = 0;
    }

    rootObject = [(TMLValueExpression *)v23 initWithExpressionText:v18 bindings:v24];
  }

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(&v40, 8);

LABEL_17:

  return rootObject;
}

+ (id)transformFunction:(id)function
{
  v4 = [function mutableCopy];
  if ([v4 count])
  {
    v5 = 0;
    for (i = 0; i < [v4 count]; ++i)
    {
      v7 = [v4 objectAtIndexedSubscript:i];
      token = [v7 token];
      if (!token)
      {
        if (v5)
        {
          v16 = [v4 objectAtIndexedSubscript:i - 1];
          text = [v16 text];

          if (i + 1 >= [v4 count])
          {
            text2 = 0;
          }

          else
          {
            v18 = [v4 objectAtIndexedSubscript:i + 1];
            text2 = [v18 text];
          }

          if ((sub_26F1B1AD8(text) & 1) == 0 && (sub_26F1B1AD8(text2) & 1) == 0)
          {
            [v4 removeObjectAtIndex:i--];
          }

          v5 = 1;
        }

        else
        {
          v5 = 0;
        }

        goto LABEL_7;
      }

      if (token != 6)
      {
        if (token == 2)
        {
          v5 = 1;
        }

        goto LABEL_7;
      }

      if (i >= 3)
      {
        v9 = [v4 objectAtIndexedSubscript:i - 2];
        if ([v9 token] == 10)
        {
          v40 = i - 1;
          v10 = [v4 objectAtIndexedSubscript:?];
          token2 = [v10 token];

          if (token2 == 19)
          {
            v12 = [v4 objectAtIndexedSubscript:i - 3];
            text3 = [v12 text];
            v14 = [self isBuiltinObject:text3];

            if ((v14 & 1) == 0)
            {
              if ([v12 token] == 19)
              {
                text4 = [v12 text];
                if (([(TMLParserToken *)text4 isEqualToString:@"$ctor"]& 1) != 0)
                {

                  goto LABEL_27;
                }

                v31 = i - 4;
                if ((i - 4) >= 0)
                {
                  v37 = text4;
                  selfCopy = self;
                  v32 = i + 0x7FFFFFFFFFFFFFFDLL;
                  while (1)
                  {
                    v33 = [v4 objectAtIndexedSubscript:v31];
                    token3 = [v33 token];

                    if (token3)
                    {
                      if (token3 != 10)
                      {
                        break;
                      }
                    }

                    --v32;
                    if (v31-- <= 0)
                    {
                      goto LABEL_41;
                    }
                  }

                  if (token3 != 15)
                  {
LABEL_41:
                    text4 = v37;
                    self = selfCopy;
                    goto LABEL_42;
                  }

                  self = selfCopy;
                  if (v32)
                  {
                    goto LABEL_27;
                  }

                  goto LABEL_43;
                }

LABEL_42:
              }

              else if ([v12 token] == 15)
              {
LABEL_27:
                v20 = sub_26F1B1F88(v4, i);
                if (v20 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v21 = v20;
                  selfCopy2 = self;
                  if (v20 != i + 1)
                  {
                    v22 = [[TMLParserToken alloc] initWithToken:21 text:@"]"];
                    [v4 insertObject:v22 atIndex:v21];

                    v23 = [[TMLParserToken alloc] initWithToken:21 text:@"["];
                    [v4 insertObject:v23 atIndex:i + 1];

                    v24 = [[TMLParserToken alloc] initWithToken:21 text:@", "];
                    [v4 insertObject:v24 atIndex:i + 1];
                  }

                  v25 = [TMLParserToken alloc];
                  v26 = MEMORY[0x277CCACA8];
                  v27 = [v4 objectAtIndexedSubscript:v40];
                  text5 = [v27 text];
                  v29 = [v26 stringWithFormat:@"'%@'", text5];
                  v30 = [(TMLParserToken *)v25 initWithToken:14 text:v29];
                  [v4 insertObject:v30 atIndex:i + 1];

                  text4 = [[TMLParserToken alloc] initWithToken:19 text:@"$"];
                  [v4 replaceObjectAtIndex:v40 withObject:text4];
                  self = selfCopy2;
                  goto LABEL_42;
                }
              }
            }

LABEL_43:
          }
        }

        else
        {
        }
      }

LABEL_7:
    }
  }

  return v4;
}

+ (id)transformAccessors:(id)accessors
{
  v42[4] = *MEMORY[0x277D85DE8];
  v3 = [accessors mutableCopy];
  if ([v3 count])
  {
    v4 = 0;
    v5 = 0;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v7 = [v3 objectAtIndexedSubscript:v5];
      token = [v7 token];
      if (token > 9)
      {
        if (token == 10)
        {
          if (v6 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v6 = v5;
          }

          goto LABEL_34;
        }

        if (token != 19)
        {
          goto LABEL_19;
        }

        text = [v7 text];
        if ([text isEqualToString:@"$"])
        {

LABEL_18:
          v5 -= v6 != 0x7FFFFFFFFFFFFFFFLL;
LABEL_19:
          if (v6 != 0x7FFFFFFFFFFFFFFFLL && v5 - v6 >= 2)
          {
            v39 = v5 - v6 - 1;
            v16 = [v3 subarrayWithRange:v6 + 1];
            v17 = [v16 valueForKey:@"text"];
            v18 = [v17 componentsJoinedByString:&stru_287F301C0];

            v19 = [v3 objectAtIndexedSubscript:v6 - 1];
            token2 = [v19 token];

            if (token2 == 15)
            {
              v40 = v18;
              if (v5 + 2 < [v3 count])
              {
                v21 = [v3 objectAtIndexedSubscript:v5 + 1];
                text2 = [v21 text];
                if ([text2 isEqualToString:@"$"])
                {
                  v23 = [v3 objectAtIndexedSubscript:v5 + 2];
                  text3 = [v23 text];
                  v25 = objc_msgSend(text3, "isEqualToString:", @"(");

                  if (v25)
                  {
                    v26 = [[TMLParserToken alloc] initWithToken:19 text:@"$$_"];
                    v42[0] = v26;
                    v27 = -[TMLParserToken initWithToken:text:]([TMLParserToken alloc], "initWithToken:text:", 21, @"(");
                    v42[1] = v27;
                    v28 = [TMLParserToken alloc];
                    v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@'", v40];
                    v29 = [(TMLParserToken *)v28 initWithToken:14 text:?];
                    v42[2] = v29;
                    v30 = [[TMLParserToken alloc] initWithToken:21 text:@""]);
                    v42[3] = v30;
                    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
                    [v3 replaceObjectsInRange:v6 + 1 withObjectsFromArray:{v39, v31}];
                    v32 = 6;
                    goto LABEL_38;
                  }
                }

                else
                {
                }
              }

              v37 = [[TMLParserToken alloc] initWithToken:19 text:@"$$"];
              v41[0] = v37;
              v27 = -[TMLParserToken initWithToken:text:]([TMLParserToken alloc], "initWithToken:text:", 21, @"(");
              v41[1] = v27;
              v33 = [TMLParserToken alloc];
              v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@'", v40];
              v29 = [(TMLParserToken *)v33 initWithToken:14 text:?];
              v41[2] = v29;
              v30 = [[TMLParserToken alloc] initWithToken:21 text:@""]);
              v41[3] = v30;
              v31 = [[TMLParserToken alloc] initWithToken:10 text:@"."];
              v41[4] = v31;
              v34 = [[TMLParserToken alloc] initWithToken:19 text:@"_"];
              v41[5] = v34;
              v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:6];
              [v3 replaceObjectsInRange:v6 + 1 withObjectsFromArray:{v39, v35}];

              v26 = v37;
              v32 = 7;
LABEL_38:

              v5 = v6 + v32;
              v18 = v40;
            }
          }

          v6 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_34;
        }

        text4 = [v7 text];
        v15 = [text4 isEqualToString:@"tmlState"];

        if (v15)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (token)
        {
          if (token == 2)
          {
            goto LABEL_33;
          }

          goto LABEL_19;
        }

        if (v4)
        {
          v10 = [v3 objectAtIndexedSubscript:v5 - 1];
          text5 = [v10 text];

          if (v5 + 1 >= [v3 count])
          {
            text6 = 0;
          }

          else
          {
            v12 = [v3 objectAtIndexedSubscript:v5 + 1];
            text6 = [v12 text];
          }

          if ((sub_26F1B1AD8(text5) & 1) == 0 && (sub_26F1B1AD8(text6) & 1) == 0)
          {
            [v3 removeObjectAtIndex:v5--];
          }

LABEL_33:
          v4 = 1;
          goto LABEL_34;
        }

        v4 = 0;
      }

LABEL_34:

      ++v5;
    }

    while (v5 < [v3 count]);
  }

  return v3;
}

+ (id)transformObjectCreation:(id)creation
{
  v56[3] = *MEMORY[0x277D85DE8];
  creationCopy = creation;
  v3 = [creationCopy mutableCopy];
  if ([v3 count])
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    array = 0;
    v8 = 0;
    v9 = CoreImage_TMLModule;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v49 = v3;
    while (1)
    {
      v11 = [v3 objectAtIndexedSubscript:v8];
      token = [v11 token];
      if (token == 6)
      {
        if (v4)
        {
          if (!v6)
          {
            v33 = v5;
            v34 = [v3 objectAtIndexedSubscript:v8 - 1];
            if ([v34 token] == 19)
            {
              v54 = v10;
              v52 = [objc_alloc(&v9[83]) initWithToken:21 text:{@", "}];
              v55[0] = v52;
              v35 = objc_alloc(&v9[83]);
              v36 = MEMORY[0x277CCACA8];
              text = [v34 text];
              v47 = [v36 stringWithFormat:@"'%@'", text];
              v37 = [v35 initWithToken:14 text:v47];
              v55[1] = v37;
              v38 = v9;
              v39 = [objc_alloc(&v9[83]) initWithToken:21 text:{@", "}];
              v55[2] = v39;
              v40 = [objc_alloc(&v38[83]) initWithToken:4 text:@"["];
              v55[3] = v40;
              v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:4];
              [array addObjectsFromArray:v41];

              v10 = v54;
              v9 = v38;

              v33 = 1;
            }

            v6 = 1;
            v4 = 1;
            v5 = v33;
            goto LABEL_27;
          }

          ++v6;
LABEL_16:
          [array addObject:v11];
          goto LABEL_26;
        }

        goto LABEL_20;
      }

      if (token == 7)
      {
        break;
      }

      if (token != 23)
      {
        if (v4)
        {
          if (v5)
          {
            [array addObject:v11];
            v5 = 1;
          }

          else
          {
            v5 = 0;
          }

          goto LABEL_26;
        }

LABEL_20:
        v4 = 0;
        goto LABEL_27;
      }

      if ((v4 & 1) == 0)
      {
        v51 = v6;
        v53 = v5;
        text2 = [v11 text];
        v21 = [text2 substringFromIndex:1];

        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
        }

        v22 = [objc_alloc(&v9[83]) initWithToken:19 text:@"$new$"];
        v56[0] = v22;
        v23 = objc_msgSend(objc_alloc(&v9[83]), "initWithToken:text:", 6, @"(");
        v56[1] = v23;
        v24 = objc_alloc(&v9[83]);
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@'", v21];
        v26 = [v24 initWithToken:14 text:v25];
        v56[2] = v26;
        [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:3];
        v28 = v27 = v9;
        [array addObjectsFromArray:v28];

        v9 = v27;
        v4 = 1;
        v10 = v8;
        v5 = v53;
        v6 = v51;
        v3 = v49;
        goto LABEL_27;
      }

      v13 = sub_26F1B1F88(creationCopy, v8);
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = objc_alloc(&v9[83]);
        text3 = [v11 text];
        v16 = [v14 initWithToken:14 text:text3];
        [array addObject:v16];

LABEL_26:
        v4 = 1;
        goto LABEL_27;
      }

      v29 = v13;
      v30 = [v3 subarrayWithRange:{v8, v13 - v8 + 1}];
      [objc_opt_class() transformObjectCreation:v30];
      v32 = v31 = v6;
      [array addObjectsFromArray:v32];

      v6 = v31;
      v4 = 1;
      v8 = v29;
LABEL_27:

      if (++v8 >= [v3 count])
      {
        goto LABEL_35;
      }
    }

    if (v4)
    {
      if (!--v6)
      {
        v17 = objc_alloc(&v9[83]);
        if (v5)
        {
          v18 = 5;
          v19 = @"]";
        }

        else
        {
          v42 = [v17 initWithToken:21 text:{@", "}];
          [array addObject:v42];

          v43 = [objc_alloc(&v9[83]) initWithToken:14 text:@"'init'"];
          [array addObject:v43];

          v44 = [objc_alloc(&v9[83]) initWithToken:21 text:{@", "}];
          [array addObject:v44];

          v17 = objc_alloc(&v9[83]);
          v18 = 14;
          v19 = @"nil";
        }

        v45 = [v17 initWithToken:v18 text:v19];
        [array addObject:v45];

        [array addObject:v11];
        [v3 replaceObjectsInRange:v10 withObjectsFromArray:{v8 - v10 + 1, array}];
        v8 = [array count] + v10;

        array = 0;
        v6 = 0;
        v5 = 0;
        v4 = 0;
        v10 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    goto LABEL_20;
  }

  array = 0;
LABEL_35:

  return v3;
}

+ (id)transformBreakpoints:(id)breakpoints lineNo:(int)no filename:(id)filename
{
  v5 = *&no;
  filenameCopy = filename;
  v8 = [breakpoints mutableCopy];
  if ([v8 count])
  {
    for (i = 0; i < [v8 count]; ++i)
    {
      v10 = [v8 objectAtIndexedSubscript:i];
      if ([v10 token] == 19)
      {
        text = [v10 text];
        if ([text isEqualToString:@"breakpoint"])
        {

LABEL_7:
          v14 = sub_26F1B1F88(v8, i);
          if (v14 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = v14;
            v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@:%d'", filenameCopy, v5];
            v17 = [[TMLParserToken alloc] initWithToken:21 text:@", "];
            [v8 insertObject:v17 atIndex:v15];

            v18 = [[TMLParserToken alloc] initWithToken:14 text:v16];
            [v8 insertObject:v18 atIndex:v15 + 1];

            i = v15 + 2;
          }

          goto LABEL_9;
        }

        text2 = [v10 text];
        v13 = [text2 isEqualToString:@"nslog"];

        if (v13)
        {
          goto LABEL_7;
        }
      }

LABEL_9:
    }
  }

  return v8;
}

+ (id)varsInCurrentScope:(id)scope
{
  v19 = *MEMORY[0x277D85DE8];
  scopeCopy = scope;
  v4 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = scopeCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        vars = [v10 vars];

        if (vars)
        {
          vars2 = [v10 vars];
          [v4 unionSet:vars2];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)compileFunction:(id)function bodyOnly:(BOOL)only localVars:(id)vars
{
  varsCopy = vars;
  functionCopy = function;
  v10 = [objc_opt_class() transformObjectCreation:functionCopy];

  v11 = [objc_opt_class() transformFunction:v10];

  v12 = [objc_opt_class() transformAccessors:v11];

  v13 = [objc_opt_class() transformBreakpoints:v12 lineNo:self->_lineNo filename:self->_filename];

  v14 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{5 * objc_msgSend(v13, "count")}];
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v43 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  onlyCopy = only;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v15 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
  array = [MEMORY[0x277CBEB18] array];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_26F1B3170;
  v25[3] = &unk_279DC6668;
  v32 = v40;
  v17 = v15;
  v33 = v42;
  v26 = v17;
  selfCopy = self;
  v18 = v13;
  v28 = v18;
  v19 = v14;
  v29 = v19;
  v34 = v36;
  v20 = array;
  v30 = v20;
  v35 = v38;
  v21 = varsCopy;
  v31 = v21;
  [v18 enumerateObjectsUsingBlock:v25];
  v22 = v31;
  v23 = v19;

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v42, 8);

  return v23;
}

+ (id)previousNonSpaceToken:(id)token
{
  reverseObjectEnumerator = [token reverseObjectEnumerator];
  nextObject = [reverseObjectEnumerator nextObject];
  if (nextObject)
  {
    do
    {
      if ([nextObject token] && objc_msgSend(nextObject, "token") != 1)
      {
        break;
      }

      nextObject2 = [reverseObjectEnumerator nextObject];

      nextObject = nextObject2;
    }

    while (nextObject2);
  }

  return nextObject;
}

+ (id)unescapeString:(id)string
{
  v3 = [string stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"\\t" withString:@"\t"];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"\\\ withString:@"\];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"\ withString:@"];

  v7 = [v6 mutableCopy];
  if (CFStringTransform(v7, 0, @"Any-Hex/Java", 1u))
  {
    v8 = [(__CFString *)v7 copy];

    v6 = v8;
  }

  return v6;
}

+ (BOOL)isBuiltinObject:(id)object
{
  v3 = qword_2806D91A0;
  objectCopy = object;
  if (v3 != -1)
  {
    sub_26F200C68();
  }

  v5 = [qword_2806D9198 containsObject:objectCopy];

  return v5;
}

@end