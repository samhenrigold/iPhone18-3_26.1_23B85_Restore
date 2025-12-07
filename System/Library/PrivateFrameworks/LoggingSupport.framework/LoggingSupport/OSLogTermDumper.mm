@interface OSLogTermDumper
- (OSLogTermDumper)initWithFd:(int)fd colorMode:(unsigned __int8)mode;
- (unsigned)vformat:(const char *)vformat args:(char *)args;
- (void)_flushAttrs;
- (void)_resetAttrsForNewline;
- (void)beginEditing;
- (void)close;
- (void)dealloc;
- (void)endEditing;
- (void)flush:(BOOL)flush;
- (void)hexdump:(const void *)hexdump length:(unint64_t)length;
- (void)pad:(int)pad count:(unint64_t)count;
- (void)putUUID:(unsigned __int8)d[16];
- (void)putc:(int)putc;
- (void)puts:(const char *)puts;
- (void)setBold:(BOOL)bold;
- (void)setOblique:(BOOL)oblique;
- (void)setUnderline:(BOOL)underline;
- (void)startPager;
- (void)write:(const void *)write size:(unint64_t)size;
@end

@implementation OSLogTermDumper

- (void)putUUID:(unsigned __int8)d[16]
{
  v5 = *MEMORY[0x277D85DE8];
  memset(v4, 0, sizeof(v4));
  uuid_unparse_upper(d, v4);
  [(OSLogTermDumper *)self write:v4 size:36];
}

- (void)puts:(const char *)puts
{
  v5 = strlen(puts);

  [(OSLogTermDumper *)self write:puts size:v5];
}

- (void)pad:(int)pad count:(unint64_t)count
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = v7 - ((count + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v6, pad, count);
  [(OSLogTermDumper *)self write:v6 size:count];
}

- (void)hexdump:(const void *)hexdump length:(unint64_t)length
{
  v26 = *MEMORY[0x277D85DE8];
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v8 = i & 0xF;
      if ((i & 0xF) == 0)
      {
        snprintf(__str, 0x4AuLL, "%08x:", i);
        *&v9 = 0x2020202020202020;
        *(&v9 + 1) = 0x2020202020202020;
        *&__str[9] = v9;
        *&__str[25] = v9;
        *&__str[41] = v9;
        *&__str[57] = v9;
        __str[73] = 32;
      }

      v10 = *(hexdump + i);
      v11 = &__str[3 * v8 + 10];
      *v11 = a0123456789abcd[*(hexdump + i) >> 4];
      v11[1] = a0123456789abcd[v10 & 0xF];
      if (v10 < 0 || v10 != 32 && (*(MEMORY[0x277D85DE0] + 4 * v10 + 60) & 0x200) != 0)
      {
        LOBYTE(v10) = 46;
      }

      __str[v8 + 58] = v10;
      if (v8 == 15)
      {
        if (self->_fancy && self->_last_attrs != self->_cur_attrs)
        {
          [(OSLogTermDumper *)self _flushAttrs];
        }

        if ((self->_ob.ob_flags & 2) == 0)
        {
          ob_len = self->_ob.ob_len;
          if (self->_ob.ob_size - ob_len - !self->_ob.ob_binary <= 0x49)
          {
            os_trace_blob_add_slow(&self->_ob, __str, 0x4AuLL);
          }

          else
          {
            v13 = &self->_ob.var0.ob_b[ob_len];
            v14 = *&__str[48];
            *(v13 + 2) = *&__str[32];
            *(v13 + 3) = v14;
            *(v13 + 58) = *&__str[58];
            v15 = *&__str[16];
            *v13 = *__str;
            *(v13 + 1) = v15;
            v16 = self->_ob.ob_len + 74;
            self->_ob.ob_len = v16;
            if (!self->_ob.ob_binary)
            {
              self->_ob.var0.ob_b[v16] = 0;
            }
          }
        }

        if (self->_fancy && self->_last_attrs)
        {
          [(OSLogTermDumper *)self _resetAttrsForNewline];
        }

        __src = 10;
        if ((self->_ob.ob_flags & 2) == 0)
        {
          v17 = self->_ob.ob_len;
          if (self->_ob.ob_size == v17 + !self->_ob.ob_binary)
          {
            os_trace_blob_add_slow(&self->_ob, &__src, 1uLL);
          }

          else
          {
            self->_ob.var0.ob_b[v17] = 10;
            v18 = self->_ob.ob_len + 1;
            self->_ob.ob_len = v18;
            if (!self->_ob.ob_binary)
            {
              self->_ob.var0.ob_b[v18] = 0;
            }
          }
        }
      }

      if (self->_ob.ob_len >= 0x2000)
      {
        [(OSLogTermDumper *)self flush:0];
      }
    }

    if ((length & 0xF) != 0 && (self->_ob.ob_flags & 2) == 0)
    {
      v19 = self->_ob.ob_len;
      if (self->_ob.ob_size - v19 - !self->_ob.ob_binary <= 0x49)
      {
        os_trace_blob_add_slow(&self->_ob, __str, 0x4AuLL);
      }

      else
      {
        v20 = &self->_ob.var0.ob_b[v19];
        v21 = *&__str[48];
        *(v20 + 2) = *&__str[32];
        *(v20 + 3) = v21;
        *(v20 + 58) = *&__str[58];
        v22 = *&__str[16];
        *v20 = *__str;
        *(v20 + 1) = v22;
        v23 = self->_ob.ob_len + 74;
        self->_ob.ob_len = v23;
        if (!self->_ob.ob_binary)
        {
          self->_ob.var0.ob_b[v23] = 0;
        }
      }
    }
  }

  if (self->_ob.ob_len >= 0x2000)
  {

    [(OSLogTermDumper *)self flush:0];
  }
}

- (unsigned)vformat:(const char *)vformat args:(char *)args
{
  v8 = 0;
  v5 = vasprintf(&v8, vformat, args);
  if (!v8)
  {
    return 0;
  }

  v6 = v5;
  [(OSLogTermDumper *)self write:v8 size:v5];
  free(v8);
  return v6;
}

- (void)putc:(int)putc
{
  if (self->_fancy && self->_last_attrs != self->_cur_attrs)
  {
    [(OSLogTermDumper *)self _flushAttrs];
  }

  if (putc == 10 && self->_fancy && self->_last_attrs)
  {
    [(OSLogTermDumper *)self _resetAttrsForNewline];
  }

  __src = putc;
  if ((self->_ob.ob_flags & 2) == 0)
  {
    ob_len = self->_ob.ob_len;
    if (self->_ob.ob_size == ob_len + !self->_ob.ob_binary)
    {
      os_trace_blob_add_slow(&self->_ob, &__src, 1uLL);
    }

    else
    {
      self->_ob.var0.ob_b[ob_len] = putc;
      v6 = self->_ob.ob_len + 1;
      self->_ob.ob_len = v6;
      if (!self->_ob.ob_binary)
      {
        self->_ob.var0.ob_b[v6] = 0;
      }
    }
  }

  if (self->_ob.ob_len >= 0x2000)
  {

    [(OSLogTermDumper *)self flush:0];
  }
}

- (void)write:(const void *)write size:(unint64_t)size
{
  sizeCopy = size;
  writeCopy = write;
  if (self->_fancy)
  {
    if (size)
    {
      do
      {
        v9 = memchr(writeCopy, 10, sizeCopy);
        v10 = v9;
        v11 = v9 - writeCopy;
        if (v9)
        {
          v12 = v9 - writeCopy;
        }

        else
        {
          v12 = sizeCopy;
        }

        if (self->_fancy && self->_last_attrs != self->_cur_attrs)
        {
          [(OSLogTermDumper *)self _flushAttrs];
        }

        if (self->_vis)
        {
          os_trace_blob_add_unsafe_bytes(&self->_ob, writeCopy, v12);
        }

        else if ((self->_ob.ob_flags & 2) == 0)
        {
          ob_len = self->_ob.ob_len;
          if (v12 > self->_ob.ob_size - ob_len - !self->_ob.ob_binary)
          {
            os_trace_blob_add_slow(&self->_ob, writeCopy, v12);
          }

          else
          {
            memcpy(&self->_ob.var0.ob_b[ob_len], writeCopy, v12);
            v14 = self->_ob.ob_len + v12;
            self->_ob.ob_len = v14;
            if (!self->_ob.ob_binary)
            {
              self->_ob.var0.ob_b[v14] = 0;
            }
          }
        }

        v15 = sizeCopy;
        if (v10)
        {
          if (self->_fancy && self->_last_attrs)
          {
            [(OSLogTermDumper *)self _resetAttrsForNewline];
          }

          v16 = *v10;
          __src = *v10;
          if ((self->_ob.ob_flags & 2) == 0)
          {
            v17 = self->_ob.ob_len;
            if (self->_ob.ob_size == v17 + !self->_ob.ob_binary)
            {
              os_trace_blob_add_slow(&self->_ob, &__src, 1uLL);
            }

            else
            {
              self->_ob.var0.ob_b[v17] = v16;
              v18 = self->_ob.ob_len + 1;
              self->_ob.ob_len = v18;
              if (!self->_ob.ob_binary)
              {
                self->_ob.var0.ob_b[v18] = 0;
              }
            }
          }

          writeCopy = v10 + 1;
          v15 = v11 + 1;
        }

        if (self->_ob.ob_len >= 0x2000)
        {
          [(OSLogTermDumper *)self flush:0];
        }

        sizeCopy -= v15;
      }

      while (sizeCopy);
    }
  }

  else
  {
    if (self->_vis)
    {
      os_trace_blob_add_unsafe_bytes(&self->_ob, write, size);
    }

    else if ((self->_ob.ob_flags & 2) == 0)
    {
      v7 = self->_ob.ob_len;
      if (self->_ob.ob_size - v7 - !self->_ob.ob_binary < size)
      {
        os_trace_blob_add_slow(&self->_ob, write, size);
      }

      else
      {
        memcpy(&self->_ob.var0.ob_b[v7], write, size);
        v8 = self->_ob.ob_len + sizeCopy;
        self->_ob.ob_len = v8;
        if (!self->_ob.ob_binary)
        {
          self->_ob.var0.ob_b[v8] = 0;
        }
      }
    }

    if (self->_ob.ob_len >= 0x2000)
    {

      [(OSLogTermDumper *)self flush:0];
    }
  }
}

- (void)flush:(BOOL)flush
{
  if (flush && self->_fancy && self->_last_attrs != self->_cur_attrs)
  {
    [(OSLogTermDumper *)self _flushAttrs];
  }

  _os_trace_write();
  self->_ob.ob_len = 0;
  if (!self->_ob.ob_binary)
  {
    *self->_ob.var0.ob_b = 0;
  }
}

- (void)endEditing
{
  if (self->_ob.ob_len >= 0x2000)
  {
    [(OSLogTermDumper *)self flush:0];
  }
}

- (void)beginEditing
{
  if (self->_fancy && self->_last_attrs != self->_cur_attrs)
  {
    [(OSLogTermDumper *)self _flushAttrs];
  }
}

- (void)_resetAttrsForNewline
{
  if (self->_last_attrs)
  {
    if ((self->_cur_attrs & 0x1F) != 0x10 && (self->_ob.ob_flags & 2) == 0)
    {
      ob_len = self->_ob.ob_len;
      if (self->_ob.ob_size - ob_len - !self->_ob.ob_binary <= 2)
      {
        os_trace_blob_add_slow(&self->_ob, "\x1B[K", 3uLL);
      }

      else
      {
        v4 = &self->_ob.var0.ob_b[ob_len];
        v4[2] = 75;
        *v4 = 23323;
        v5 = self->_ob.ob_len + 3;
        self->_ob.ob_len = v5;
        if (!self->_ob.ob_binary)
        {
          self->_ob.var0.ob_b[v5] = 0;
        }
      }
    }

    cur_attrs = self->_cur_attrs;
    self->_cur_attrs = 4112;
    [(OSLogTermDumper *)self _flushAttrs];
    self->_cur_attrs = cur_attrs;
  }
}

- (void)_flushAttrs
{
  last_attrs = self->_last_attrs;
  cur_attrs = self->_cur_attrs;
  if (last_attrs != cur_attrs)
  {
    ob_flags = self->_ob.ob_flags;
    if (cur_attrs == 4112)
    {
      if ((ob_flags & 2) == 0)
      {
        ob_len = self->_ob.ob_len;
        if (self->_ob.ob_size - ob_len - !self->_ob.ob_binary <= 3)
        {
          os_trace_blob_add_slow(&self->_ob, "\x1B[0m", 4uLL);
        }

        else
        {
          *&self->_ob.var0.ob_b[ob_len] = 1831885595;
          v7 = self->_ob.ob_len + 4;
          self->_ob.ob_len = v7;
          if (!self->_ob.ob_binary)
          {
            self->_ob.var0.ob_b[v7] = 0;
          }
        }
      }

LABEL_56:
      self->_last_attrs = self->_cur_attrs;
      return;
    }

    v8 = cur_attrs ^ last_attrs;
    if ((ob_flags & 2) == 0)
    {
      v9 = self->_ob.ob_len;
      if (self->_ob.ob_size - v9 - !self->_ob.ob_binary <= 1)
      {
        os_trace_blob_add_slow(&self->_ob, "\x1B[", 2uLL);
        if ((v8 & 0x20) == 0)
        {
          goto LABEL_21;
        }

LABEL_12:
        v11 = self->_ob.ob_flags;
        if ((self->_cur_attrs & 0x20) != 0)
        {
          if ((v11 & 2) != 0)
          {
            goto LABEL_21;
          }

          v15 = self->_ob.ob_len;
          if (self->_ob.ob_size - v15 - !self->_ob.ob_binary > 1)
          {
            *&self->_ob.var0.ob_b[v15] = 15153;
            v14 = self->_ob.ob_len + 2;
LABEL_19:
            self->_ob.ob_len = v14;
            if (!self->_ob.ob_binary)
            {
              self->_ob.var0.ob_b[v14] = 0;
            }

LABEL_21:
            if ((v8 & 0x40) == 0)
            {
              goto LABEL_31;
            }

            v16 = self->_ob.ob_flags;
            if ((self->_cur_attrs & 0x40) != 0)
            {
              if ((v16 & 2) != 0)
              {
                goto LABEL_31;
              }

              v20 = self->_ob.ob_len;
              if (self->_ob.ob_size - v20 - !self->_ob.ob_binary > 1)
              {
                *&self->_ob.var0.ob_b[v20] = 15155;
                v19 = self->_ob.ob_len + 2;
LABEL_29:
                self->_ob.ob_len = v19;
                if (!self->_ob.ob_binary)
                {
                  self->_ob.var0.ob_b[v19] = 0;
                }

LABEL_31:
                if ((v8 & 0x80) == 0)
                {
                  goto LABEL_41;
                }

                goto LABEL_32;
              }

              v35 = "3;";
              p_ob = &self->_ob;
              v37 = 2;
            }

            else
            {
              if ((v16 & 2) != 0)
              {
                goto LABEL_31;
              }

              v17 = self->_ob.ob_len;
              if (self->_ob.ob_size - v17 - !self->_ob.ob_binary > 2)
              {
                v18 = &self->_ob.var0.ob_b[v17];
                v18[2] = 59;
                *v18 = 13362;
                v19 = self->_ob.ob_len + 3;
                goto LABEL_29;
              }

              v35 = "24;";
              p_ob = &self->_ob;
              v37 = 3;
            }

            os_trace_blob_add_slow(p_ob, v35, v37);
            if ((v8 & 0x80) == 0)
            {
              goto LABEL_41;
            }

LABEL_32:
            v21 = self->_ob.ob_flags;
            if ((self->_cur_attrs & 0x80) != 0)
            {
              if ((v21 & 2) == 0)
              {
                v25 = self->_ob.ob_len;
                if (self->_ob.ob_size - v25 - !self->_ob.ob_binary > 1)
                {
                  *&self->_ob.var0.ob_b[v25] = 15156;
                  v24 = self->_ob.ob_len + 2;
LABEL_39:
                  self->_ob.ob_len = v24;
                  if (!self->_ob.ob_binary)
                  {
                    self->_ob.var0.ob_b[v24] = 0;
                  }

                  goto LABEL_41;
                }

                v38 = "4;";
                v39 = &self->_ob;
                v40 = 2;
                goto LABEL_72;
              }
            }

            else if ((v21 & 2) == 0)
            {
              v22 = self->_ob.ob_len;
              if (self->_ob.ob_size - v22 - !self->_ob.ob_binary > 2)
              {
                v23 = &self->_ob.var0.ob_b[v22];
                v23[2] = 59;
                *v23 = 13362;
                v24 = self->_ob.ob_len + 3;
                goto LABEL_39;
              }

              v38 = "24;";
              v39 = &self->_ob;
              v40 = 3;
LABEL_72:
              os_trace_blob_add_slow(v39, v38, v40);
            }

LABEL_41:
            if ((v8 & 0x1F) != 0)
            {
              if ((self->_cur_attrs & 0x1F) == 0x10)
              {
                if ((self->_ob.ob_flags & 2) == 0)
                {
                  v26 = self->_ob.ob_len;
                  if (self->_ob.ob_size - v26 - !self->_ob.ob_binary <= 2)
                  {
                    os_trace_blob_add_slow(&self->_ob, "49;", 3uLL);
                  }

                  else
                  {
                    v27 = &self->_ob.var0.ob_b[v26];
                    v27[2] = 59;
                    *v27 = 14644;
                    v28 = self->_ob.ob_len + 3;
                    self->_ob.ob_len = v28;
                    if (!self->_ob.ob_binary)
                    {
                      self->_ob.var0.ob_b[v28] = 0;
                    }
                  }
                }
              }

              else
              {
                os_trace_blob_addf(&self->_ob, "48;5;%d;", self->_cur_attrs & 0x1F);
              }
            }

            if ((v8 & 0x1F00) != 0)
            {
              if ((HIBYTE(self->_cur_attrs) & 0x1F) == 0x10)
              {
                if ((self->_ob.ob_flags & 2) == 0)
                {
                  v29 = self->_ob.ob_len;
                  if (self->_ob.ob_size - v29 - !self->_ob.ob_binary <= 2)
                  {
                    os_trace_blob_add_slow(&self->_ob, "39;", 3uLL);
                  }

                  else
                  {
                    v30 = &self->_ob.var0.ob_b[v29];
                    v30[2] = 59;
                    *v30 = 14643;
                    v31 = self->_ob.ob_len + 3;
                    self->_ob.ob_len = v31;
                    if (!self->_ob.ob_binary)
                    {
                      self->_ob.var0.ob_b[v31] = 0;
                    }
                  }
                }
              }

              else
              {
                os_trace_blob_addf(&self->_ob, "38;5;%d;", HIBYTE(self->_cur_attrs) & 0x1F);
              }
            }

            self->_ob.var0.ob_b[self->_ob.ob_len - 1] = 109;
            goto LABEL_56;
          }

          v32 = "1;";
          v33 = &self->_ob;
          v34 = 2;
        }

        else
        {
          if ((v11 & 2) != 0)
          {
            goto LABEL_21;
          }

          v12 = self->_ob.ob_len;
          if (self->_ob.ob_size - v12 - !self->_ob.ob_binary > 2)
          {
            v13 = &self->_ob.var0.ob_b[v12];
            v13[2] = 59;
            *v13 = 12850;
            v14 = self->_ob.ob_len + 3;
            goto LABEL_19;
          }

          v32 = "22;";
          v33 = &self->_ob;
          v34 = 3;
        }

        os_trace_blob_add_slow(v33, v32, v34);
        goto LABEL_21;
      }

      *&self->_ob.var0.ob_b[v9] = 23323;
      v10 = self->_ob.ob_len + 2;
      self->_ob.ob_len = v10;
      if (!self->_ob.ob_binary)
      {
        self->_ob.var0.ob_b[v10] = 0;
      }
    }

    if ((v8 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_12;
  }
}

- (void)startPager
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_fancy)
  {
    return;
  }

  v12 = 0;
  ioctl(self->_fd, 0x40087468uLL, &v12);
  if (!getenv("LESS"))
  {
    putenv("LESS=FnRSX");
  }

  if (!getenv("LESSCHARSET"))
  {
    putenv("LESSCHARSET=utf-8");
  }

  if (pipe(v13) < 0)
  {
    return;
  }

  v2 = fork();
  if (v2 < 0)
  {
    return;
  }

  v3 = v2;
  if (v2)
  {
    dup2(v13[1], 1);
    if (close(v13[1]) == -1)
    {
      v4 = *__error();
      v5 = *__error();
      if (v4 == 9)
      {
        qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_27DA527A8 = v5;
        __break(1u);
LABEL_25:
        qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_27DA527A8 = v5;
        __break(1u);
LABEL_26:
        perror("execvp");
        exit(1);
      }

      _os_assumes_log();
    }

    if (close(v13[0]) != -1)
    {
LABEL_11:
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __29__OSLogTermDumper_startPager__block_invoke;
      v10[3] = &__block_descriptor_36_e5_v8__0l;
      v11 = v3;
      atexit_b(v10);
      return;
    }

    v6 = *__error();
    v5 = *__error();
    if (v6 != 9)
    {
      _os_assumes_log();
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  dup2(v13[0], 0);
  if (close(v13[0]) == -1)
  {
    v7 = *__error();
    v8 = *__error();
    if (v7 == 9)
    {
      qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_27DA527A8 = v8;
      __break(1u);
      goto LABEL_28;
    }

    _os_assumes_log();
  }

  if (close(v13[1]) != -1)
  {
    goto LABEL_14;
  }

  v9 = *__error();
  v8 = *__error();
  if (v9 == 9)
  {
LABEL_28:
    qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_27DA527A8 = v8;
    __break(1u);
    return;
  }

  _os_assumes_log();
LABEL_14:
  if (execlp("less", "less", "-", 0) < 0)
  {
    goto LABEL_26;
  }
}

void __29__OSLogTermDumper_startPager__block_invoke(uint64_t a1)
{
  v5 = 0;
  fflush(*MEMORY[0x277D85E08]);
  fflush(*MEMORY[0x277D85DF8]);
  if (close(1) == -1)
  {
    v2 = *__error();
    v3 = *__error();
    if (v2 == 9)
    {
      qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_27DA527A8 = v3;
      __break(1u);
      goto LABEL_11;
    }

    _os_assumes_log();
  }

  if (close(2) != -1)
  {
    goto LABEL_3;
  }

  v4 = *__error();
  v3 = *__error();
  if (v4 == 9)
  {
LABEL_11:
    qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_27DA527A8 = v3;
    __break(1u);
    return;
  }

  _os_assumes_log();
LABEL_3:
  if (waitpid(*(a1 + 32), &v5, 0) < 0)
  {
    perror("waitpid");
  }
}

- (void)dealloc
{
  if (self->_ob.ob_flags)
  {
    ob_b = self->_ob.var0.ob_b;
    self->_ob.var0.ob_b = 3954044928;
    self->_ob.ob_flags = 0;
    free(ob_b);
  }

  v4.receiver = self;
  v4.super_class = OSLogTermDumper;
  [(OSLogTermDumper *)&v4 dealloc];
}

- (void)close
{
  [(OSLogTermDumper *)self resetStyle];
  [(OSLogTermDumper *)self flush:1];
  if (self->_ob.ob_flags)
  {
    ob_b = self->_ob.var0.ob_b;
    self->_ob.var0.ob_b = 3954044928;
    self->_ob.ob_flags = 0;
    free(ob_b);
  }

  self->_ob.var0.ob_b = self->_ob_slop;
  *&self->_ob.ob_len = 0x100000000;
  self->_ob.ob_maxsize = 0;
  self->_ob.ob_flags = 0;
  self->_ob.ob_binary = 0;
}

- (OSLogTermDumper)initWithFd:(int)fd colorMode:(unsigned __int8)mode
{
  modeCopy = mode;
  v15.receiver = self;
  v15.super_class = OSLogTermDumper;
  v6 = [(OSLogTermDumper *)&v15 init];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  v6->_ob.var0.ob_b = v6->_ob_slop;
  *&v6->_ob.ob_len = 0x100000000;
  v6->_ob.ob_flags = 0;
  v6->_ob.ob_binary = 0;
  v6->_ob.ob_maxsize = 0x100000;
  v6->_fd = fd;
  v6->_last_attrs = 4112;
  v6->_cur_attrs = 4112;
  v6->_colorMode = modeCopy;
  v8 = getenv("LOG_USE_ESCAPECNTRLCHARS");
  if (!v8 || *v8 != 48 || (v9 = v8[1]) != 0)
  {
    v9 = 1;
  }

  v7->_vis = v9;
  v10 = getenv("TERM");
  switch(modeCopy)
  {
    case 0:
      v11 = v10;
      v12 = isatty(fd);
      if (!v11 || !v12 || !strcmp(v11, "dummy"))
      {
        return v7;
      }

      if (!strcasestr(v11, "ansi"))
      {
        v13 = strcasestr(v11, "color") != 0;
        goto LABEL_15;
      }

LABEL_14:
      v13 = 1;
LABEL_15:
      v7->_fancy = v13;
      return v7;
    case 2:
      goto LABEL_14;
    case 1:
      v7->_fancy = 0;
      break;
  }

  return v7;
}

- (void)setUnderline:(BOOL)underline
{
  if (underline)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_cur_attrs = self->_cur_attrs & 0xFF7F | v3;
}

- (void)setOblique:(BOOL)oblique
{
  if (oblique)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_cur_attrs = self->_cur_attrs & 0xFFBF | v3;
}

- (void)setBold:(BOOL)bold
{
  if (bold)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_cur_attrs = self->_cur_attrs & 0xFFDF | v3;
}

@end