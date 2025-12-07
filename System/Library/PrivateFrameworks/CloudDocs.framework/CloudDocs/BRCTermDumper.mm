@interface BRCTermDumper
+ (void)execPagerOnFileFd:(int)fd;
+ (void)setupPagerForFd:(int)fd;
- (BRCTermDumper)initWithFd:(int)fd forceColor:(BOOL)color darkMode:(BOOL)mode;
- (BRCTermDumper)initWithFile:(__sFILE *)file forceColor:(BOOL)color darkMode:(BOOL)mode closeOnDeinit:(BOOL)deinit;
- (id)startStringForFgColor:(int)color bgColor:(int)bgColor attr:(int)attr;
- (int)_transformToDarkMode:(int)mode;
- (unint64_t)_startInCString:(char)string[256] fgColor:(int)color bgColor:(int)bgColor attr:(int)curAttrs;
- (unint64_t)remainingSpace;
- (void)_putsAndCrop:(const char *)crop len:(unint64_t)len;
- (void)cursorDown:(unsigned int)down;
- (void)cursorGotoLineStart;
- (void)cursorLeft:(unsigned int)left;
- (void)cursorRestore;
- (void)cursorRight:(unsigned int)right;
- (void)cursorSave;
- (void)cursorUp:(unsigned int)up;
- (void)dealloc;
- (void)endLine;
- (void)eraseEndOfLine;
- (void)eraseLine;
- (void)eraseScreenDown;
- (void)eraseScreenUp;
- (void)eraseStartOfLine;
- (void)put:(id)put;
- (void)puts:(const char *)puts;
- (void)puts:(const char *)puts len:(unint64_t)len;
- (void)startFgColor:(int)color bgColor:(int)bgColor attr:(int)attr;
- (void)startNewLine;
- (void)startPager;
- (void)write:(const char *)write;
@end

@implementation BRCTermDumper

- (BRCTermDumper)initWithFd:(int)fd forceColor:(BOOL)color darkMode:(BOOL)mode
{
  modeCopy = mode;
  colorCopy = color;
  v9 = fdopen(fd, "w");
  if (!v9)
  {
    [BRCTermDumper initWithFd:forceColor:darkMode:];
  }

  return [(BRCTermDumper *)self initWithFile:v9 forceColor:colorCopy darkMode:modeCopy closeOnDeinit:fd > 2];
}

- (BRCTermDumper)initWithFile:(__sFILE *)file forceColor:(BOOL)color darkMode:(BOOL)mode closeOnDeinit:(BOOL)deinit
{
  v18.receiver = self;
  v18.super_class = BRCTermDumper;
  v10 = [(BRCTermDumper *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v10->_file = file;
    v10->_fileNeedsClosing = deinit;
    setvbuf(file, 0, 2, 0x400uLL);
    v12 = fileno(file);
    v13 = isatty(v12) != 0;
    v11->_isatty = v13;
    v14 = getenv("TERM");
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    v11->_supportsEscapeSequences = v15;
    if (!color && v15)
    {
      v16 = v14;
      if (strcasestr(v14, "ansi"))
      {
        color = 1;
      }

      else
      {
        color = strstr(v16, "color") != 0;
      }
    }

    v11->_useColor = color;
    v11->_curBg = 9;
    v11->_curFg = 9;
    v11->_darkMode = mode;
  }

  return v11;
}

- (void)dealloc
{
  if (self->_fileNeedsClosing)
  {
    file = self->_file;
    if (file)
    {
      fclose(file);
      self->_file = 0;
    }
  }

  v4.receiver = self;
  v4.super_class = BRCTermDumper;
  [(BRCTermDumper *)&v4 dealloc];
}

- (int)_transformToDarkMode:(int)mode
{
  if (mode == 0 && self->_darkMode)
  {
    return 7;
  }

  else
  {
    return mode;
  }
}

+ (void)setupPagerForFd:(int)fd
{
  v3 = 0;
  ioctl(fd, 0x40087468uLL, &v3);
  if (!getenv("LESS"))
  {
    putenv("LESS=FRSX");
  }

  if (!getenv("LESSCHARSET"))
  {
    putenv("LESSCHARSET=utf-8");
  }
}

+ (void)execPagerOnFileFd:(int)fd
{
  [self setupPagerForFd:?];
  dup2(fd, 0);
  lseek(fd, 0, 0);
  if (execlp("less", "less", "-", 0) < 0)
  {
    perror("execvp");
    exit(1);
  }

  __break(1u);
}

- (void)startPager
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_isatty)
  {
    v3 = objc_opt_class();
    [v3 setupPagerForFd:fileno(self->_file)];
    if ((pipe(v8) & 0x80000000) == 0)
    {
      signal(13, 1);
      v4 = fork();
      if ((v4 & 0x80000000) == 0)
      {
        v5 = v4;
        if (v4)
        {
          signal(20, less_exit_handler);
          dup2(v8[1], 1);
          close(v8[1]);
          close(v8[0]);
          v6[0] = MEMORY[0x1E69E9820];
          v6[1] = 3221225472;
          v6[2] = __27__BRCTermDumper_startPager__block_invoke;
          v6[3] = &__block_descriptor_36_e5_v8__0l;
          v7 = v5;
          atexit_b(v6);
        }

        else
        {
          dup2(v8[0], 0);
          close(v8[0]);
          close(v8[1]);
          if (execlp("less", "less", "-", 0) < 0)
          {
            [BRCTermDumper startPager];
          }
        }
      }
    }
  }
}

void __27__BRCTermDumper_startPager__block_invoke(uint64_t a1)
{
  v2 = 0;
  fflush(*MEMORY[0x1E69E9858]);
  fflush(*MEMORY[0x1E69E9848]);
  close(1);
  close(2);
  if (waitpid(*(a1 + 32), &v2, 0) < 0)
  {
    perror("waitpid");
  }
}

- (unint64_t)_startInCString:(char)string[256] fgColor:(int)color bgColor:(int)bgColor attr:(int)curAttrs
{
  v7 = *&bgColor;
  curFg = [(BRCTermDumper *)self _transformToDarkMode:*&color];
  curBg = [(BRCTermDumper *)self _transformToDarkMode:v7];
  if (curBg == -1)
  {
    curBg = self->_curBg;
  }

  if (curFg == -1)
  {
    curFg = self->_curFg;
  }

  if (curAttrs == -1)
  {
    curAttrs = self->_curAttrs;
  }

  *string = 23323;
  if (curAttrs == self->_curAttrs)
  {
    v12 = 2;
  }

  else
  {
    *(string + 1) = 15152;
    v12 = 4;
    for (i = 1; i != 32; ++i)
    {
      if ((curAttrs >> i))
      {
        if (i >= 0xA)
        {
          [BRCTermDumper _startInCString:fgColor:bgColor:attr:];
        }

        v14 = &string[v12];
        *v14 = i | 0x30;
        v12 += 2;
        v14[1] = 59;
      }
    }

    self->_curAttrs = curAttrs;
    self->_curFg = 9;
    self->_curBg = 9;
  }

  if (curFg != self->_curFg)
  {
    v15 = &string[v12];
    *v15 = 51;
    v15[1] = curFg + 48;
    v12 += 3;
    v15[2] = 59;
    self->_curFg = curFg;
  }

  if (curBg != self->_curBg)
  {
    v16 = &string[v12];
    *v16 = 52;
    v16[1] = curBg + 48;
    v12 += 3;
    v16[2] = 59;
    self->_curBg = curBg;
  }

  string[v12] = 0;
  if (v12 < 3)
  {
    return 0;
  }

  string[v12 - 1] = 109;
  return v12;
}

- (id)startStringForFgColor:(int)color bgColor:(int)bgColor attr:(int)attr
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [(BRCTermDumper *)self _startInCString:v8 fgColor:*&color bgColor:*&bgColor attr:*&attr];
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v8 length:v5 encoding:4];

  return v6;
}

- (void)startFgColor:(int)color bgColor:(int)bgColor attr:(int)attr
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_useColor)
  {
    v6 = [(BRCTermDumper *)self _startInCString:__ptr fgColor:*&color bgColor:*&bgColor attr:*&attr];
    if (v6)
    {
      fwrite(__ptr, 1uLL, v6, self->_file);
    }
  }
}

- (void)eraseEndOfLine
{
  if (self->_supportsEscapeSequences)
  {
    fputs("\x1BK", self->_file);
  }
}

- (void)eraseStartOfLine
{
  if (self->_supportsEscapeSequences)
  {
    fputs("\x1B[1K", self->_file);
  }
}

- (void)eraseLine
{
  if (self->_supportsEscapeSequences)
  {
    fputs("\x1B[2K", self->_file);
  }
}

- (void)eraseScreenDown
{
  if (self->_supportsEscapeSequences)
  {
    fputs("\x1B[J", self->_file);
  }
}

- (void)eraseScreenUp
{
  if (self->_supportsEscapeSequences)
  {
    fputs("\x1B[1J", self->_file);
  }
}

- (void)cursorSave
{
  if (self->_supportsEscapeSequences)
  {
    fputs("\x1B[s", self->_file);
  }
}

- (void)cursorRestore
{
  if (self->_supportsEscapeSequences)
  {
    fputs("\x1B[u", self->_file);
  }
}

- (void)cursorUp:(unsigned int)up
{
  if (self->_supportsEscapeSequences)
  {
    fprintf(self->_file, "\x1B[%d%c", up, 65);
  }
}

- (void)cursorDown:(unsigned int)down
{
  if (self->_supportsEscapeSequences)
  {
    fprintf(self->_file, "\x1B[%d%c", down, 66);
  }
}

- (void)cursorRight:(unsigned int)right
{
  if (self->_supportsEscapeSequences)
  {
    fprintf(self->_file, "\x1B[%d%c", right, 67);
  }
}

- (void)cursorLeft:(unsigned int)left
{
  if (self->_supportsEscapeSequences)
  {
    fprintf(self->_file, "\x1B[%d%c", left, 68);
  }
}

- (void)cursorGotoLineStart
{
  if (self->_supportsEscapeSequences)
  {
    fputs("\r", self->_file);
  }
}

- (void)startNewLine
{
  if (!self->_termWidth)
  {
    v3 = 0;
    ioctl(1, 0x40087468uLL, &v3);
    self->_termWidth = WORD1(v3);
  }

  [(BRCTermDumper *)self cursorGotoLineStart];
  self->_usedTermWidth = 0;
}

- (void)endLine
{
  self->_usedTermWidth = 0;
  [(BRCTermDumper *)self forgetRemainingSpace];

  [(BRCTermDumper *)self puts:"\n" len:1];
}

- (unint64_t)remainingSpace
{
  v5 = 0;
  ioctl(1, 0x40087468uLL, &v5);
  v3 = WORD1(v5);
  self->_termWidth = WORD1(v5);
  return v3 - self->_usedTermWidth;
}

- (void)_putsAndCrop:(const char *)crop len:(unint64_t)len
{
  usedTermWidth = self->_usedTermWidth;
  if (self->_termWidth - usedTermWidth >= len)
  {
    lenCopy = len;
  }

  else
  {
    lenCopy = self->_termWidth - usedTermWidth;
  }

  self->_usedTermWidth = lenCopy + usedTermWidth;
  fwrite(crop, 1uLL, lenCopy, self->_file);
}

- (void)puts:(const char *)puts len:(unint64_t)len
{
  if (self->_termWidth)
  {
    [(BRCTermDumper *)self _putsAndCrop:puts len:len];
  }

  else
  {
    fwrite(puts, 1uLL, len, self->_file);
  }
}

- (void)puts:(const char *)puts
{
  v5 = strlen(puts);

  [(BRCTermDumper *)self puts:puts len:v5];
}

- (void)put:(id)put
{
  putCopy = put;
  uTF8String = [put UTF8String];

  [(BRCTermDumper *)self puts:uTF8String];
}

- (void)write:(const char *)write
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_termWidth)
  {
    v4 = vsnprintf(__str, 0x800uLL, write, &v8);
    if (v4 >= 0x800)
    {
      v5 = 2048;
    }

    else
    {
      v5 = v4;
    }

    [(BRCTermDumper *)self _putsAndCrop:__str len:v5, &v8];
  }

  else
  {
    *__str = &v8;
    vfprintf(self->_file, write, &v8);
  }
}

@end