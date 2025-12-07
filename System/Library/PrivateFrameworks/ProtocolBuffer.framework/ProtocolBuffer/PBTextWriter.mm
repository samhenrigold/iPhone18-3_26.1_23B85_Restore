@interface PBTextWriter
- (BOOL)write:(id)write;
- (PBTextWriter)init;
- (_BYTE)_printLine:(uint64_t)line format:(uint64_t)format;
- (_BYTE)_writeResult:(uint64_t)result forProperty:(uint64_t)property bracePrefix:(uint64_t)prefix;
- (id)string;
- (uint64_t)_write:(uint64_t)_write;
- (void)dealloc;
@end

@implementation PBTextWriter

- (BOOL)write:(id)write
{
  if (!write)
  {
    return 0;
  }

  if (self && !self->_newlinesPrinted)
  {
    [(NSMutableString *)self->_dest appendString:@"\n"];
    self->_newlinesPrinted = 1;
  }

  return [(PBTextWriter *)self _write:write];
}

- (uint64_t)_write:(uint64_t)_write
{
  v79 = *MEMORY[0x1E69E9840];
  if (_write)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  v70 = v3;
  if (!v2)
  {
    v6 = objc_opt_class();
    v7 = [_PBProperty getValidPropertiesForType:v6 withCache:*(_write + 32)];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v72 objects:v78 count:16];
    if (v8)
    {
      v13 = v8;
      v14 = *v73;
      v15 = 0x1E696A000uLL;
      v71 = v7;
      do
      {
        v16 = 0;
        do
        {
          if (*v73 != v14)
          {
            objc_enumerationMutation(v7);
          }

          v17 = *(*(&v72 + 1) + 8 * v16);
          if (v17)
          {
            v18 = *(v17 + 56);
            if (v18)
            {
              v19 = [objc_msgSend(*(v17 + 56) "methodSignature")];
              v20 = 0;
              v21 = *v19;
              if (v21 <= 98)
              {
                if (v21 > 75)
                {
                  switch(v21)
                  {
                    case 'L':
                      v77 = 0;
                      [v18 invokeWithTarget:a2];
                      [v18 getReturnValue:&v77];
                      v20 = [*(v15 + 3480) numberWithUnsignedLong:v77];
                      break;
                    case 'Q':
                      v77 = 0;
                      [v18 invokeWithTarget:a2];
                      [v18 getReturnValue:&v77];
                      v20 = [*(v15 + 3480) numberWithUnsignedLongLong:v77];
                      break;
                    case 'S':
                      LOWORD(v77) = 0;
                      [v18 invokeWithTarget:a2];
                      [v18 getReturnValue:&v77];
                      v20 = [*(v15 + 3480) numberWithUnsignedShort:v77];
                      break;
                  }
                }

                else
                {
                  switch(v21)
                  {
                    case 'B':
                      LOBYTE(v77) = 0;
                      [v18 invokeWithTarget:a2];
                      [v18 getReturnValue:&v77];
                      v20 = [*(v15 + 3480) numberWithBool:v77];
                      break;
                    case 'C':
                      LOBYTE(v77) = 0;
                      [v18 invokeWithTarget:a2];
                      [v18 getReturnValue:&v77];
                      v20 = [*(v15 + 3480) numberWithUnsignedChar:v77];
                      break;
                    case 'I':
                      LODWORD(v77) = 0;
                      [v18 invokeWithTarget:a2];
                      [v18 getReturnValue:&v77];
                      v20 = [*(v15 + 3480) numberWithUnsignedInt:v77];
                      break;
                  }
                }
              }

              else if (v21 <= 104)
              {
                switch(v21)
                {
                  case 'c':
                    LOBYTE(v77) = 0;
                    [v18 invokeWithTarget:a2];
                    [v18 getReturnValue:&v77];
                    v20 = [*(v15 + 3480) numberWithChar:v77];
                    break;
                  case 'd':
                    v77 = 0;
                    [v18 invokeWithTarget:a2];
                    [v18 getReturnValue:&v77];
                    v20 = [*(v15 + 3480) numberWithDouble:*&v77];
                    break;
                  case 'f':
                    LODWORD(v77) = 0;
                    [v18 invokeWithTarget:a2];
                    [v18 getReturnValue:&v77];
                    LODWORD(v22) = v77;
                    v20 = [*(v15 + 3480) numberWithFloat:v22];
                    break;
                }
              }

              else if (v21 > 112)
              {
                if (v21 == 113)
                {
                  v77 = 0;
                  [v18 invokeWithTarget:a2];
                  [v18 getReturnValue:&v77];
                  v20 = [*(v15 + 3480) numberWithLongLong:v77];
                }

                else if (v21 == 115)
                {
                  LOWORD(v77) = 0;
                  [v18 invokeWithTarget:a2];
                  [v18 getReturnValue:&v77];
                  v20 = [*(v15 + 3480) numberWithShort:v77];
                }
              }

              else if (v21 == 105)
              {
                LODWORD(v77) = 0;
                [v18 invokeWithTarget:a2];
                [v18 getReturnValue:&v77];
                v20 = [*(v15 + 3480) numberWithInt:v77];
              }

              else if (v21 == 108)
              {
                v77 = 0;
                [v18 invokeWithTarget:a2];
                [v18 getReturnValue:&v77];
                v20 = [*(v15 + 3480) numberWithLong:v77];
              }

              if (![v20 BOOLValue])
              {
                goto LABEL_129;
              }
            }

            else if (*(v17 + 64) && ![(_PBProperty *)*(*(&v72 + 1) + 8 * v16) getCountOfRepeatedValuesFromInstance:a2])
            {
              goto LABEL_129;
            }

            v23 = *(v17 + 32);
            if (v23 == 64)
            {
              if ([*(v17 + 16) isSubclassOfClass:objc_opt_class()])
              {
                [(PBTextWriter *)_write _printLine:@"%@: {" format:v24, v9, v10, v11, v12, *(v17 + 8)];
                ++*(_write + 16);
                v77 = 0;
                [*(v17 + 48) invokeWithTarget:a2];
                [*(v17 + 48) getReturnValue:&v77];
                [(PBTextWriter *)_write _write:v77];
                --*(_write + 16);
                [(PBTextWriter *)_write _printLine:@"}" format:v25, v26, v27, v28, v29, v69];
                goto LABEL_129;
              }

              v23 = *(v17 + 32);
            }

            v30 = (v23 - 66);
            if (v30 > 0x39)
            {
LABEL_80:
              if (v23 != 64)
              {
                goto LABEL_129;
              }

              v77 = 0;
              [*(v17 + 48) invokeWithTarget:a2];
              v36 = *(v17 + 48);
LABEL_110:
              [v36 getReturnValue:&v77];
              v31 = v77;
LABEL_128:
              [(PBTextWriter *)_write _writeResult:v31 forProperty:v17 bracePrefix:0, v9, v10, v11, v12, v68];
              v15 = 0x1E696A000;
              goto LABEL_129;
            }

            if (((1 << (v23 - 66)) & 0x2849600028483) != 0)
            {
              v31 = 0;
              if (v23 <= 98)
              {
                if (v23 > 75)
                {
                  if (v23 == 76)
                  {
                    v77 = 0;
                    [*(v17 + 48) invokeWithTarget:a2];
                    [*(v17 + 48) getReturnValue:&v77];
                    v32 = *(v17 + 72);
                    if (!v32)
                    {
                      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v77];
                      goto LABEL_127;
                    }

                    goto LABEL_112;
                  }

                  if (v23 == 81)
                  {
                    v77 = 0;
                    [*(v17 + 48) invokeWithTarget:a2];
                    [*(v17 + 48) getReturnValue:&v77];
                    v32 = *(v17 + 72);
                    if (!v32)
                    {
                      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v77];
                      goto LABEL_127;
                    }

                    goto LABEL_112;
                  }

                  if (v23 != 83)
                  {
                    goto LABEL_128;
                  }

                  LOWORD(v76) = 0;
                  [*(v17 + 48) invokeWithTarget:a2];
                  [*(v17 + 48) getReturnValue:&v76];
                  v34 = *(v17 + 72);
                  if (!v34)
                  {
                    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v76];
                    goto LABEL_127;
                  }
                }

                else
                {
                  switch(v23)
                  {
                    case 'B':
                      LOBYTE(v76) = 0;
                      [*(v17 + 48) invokeWithTarget:a2];
                      [*(v17 + 48) getReturnValue:&v76];
                      v34 = *(v17 + 72);
                      if (!v34)
                      {
                        v33 = [MEMORY[0x1E696AD98] numberWithBool:v76];
                        goto LABEL_127;
                      }

                      break;
                    case 'C':
                      LOBYTE(v76) = 0;
                      [*(v17 + 48) invokeWithTarget:a2];
                      [*(v17 + 48) getReturnValue:&v76];
                      v34 = *(v17 + 72);
                      if (!v34)
                      {
                        v33 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v76];
                        goto LABEL_127;
                      }

                      break;
                    case 'I':
                      LODWORD(v76) = 0;
                      [*(v17 + 48) invokeWithTarget:a2];
                      [*(v17 + 48) getReturnValue:&v76];
                      v34 = *(v17 + 72);
                      if (!v34)
                      {
                        v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v76];
                        goto LABEL_127;
                      }

                      break;
                    default:
                      goto LABEL_128;
                  }
                }
              }

              else if (v23 <= 104)
              {
                switch(v23)
                {
                  case 'c':
                    LOBYTE(v76) = 0;
                    [*(v17 + 48) invokeWithTarget:a2];
                    [*(v17 + 48) getReturnValue:&v76];
                    v34 = *(v17 + 72);
                    if (!v34)
                    {
                      v33 = [MEMORY[0x1E696AD98] numberWithChar:v76];
                      goto LABEL_127;
                    }

                    break;
                  case 'd':
                    v77 = 0;
                    [*(v17 + 48) invokeWithTarget:a2];
                    [*(v17 + 48) getReturnValue:&v77];
                    v32 = *(v17 + 72);
                    if (!v32)
                    {
                      v33 = [MEMORY[0x1E696AD98] numberWithDouble:*&v77];
                      goto LABEL_127;
                    }

                    goto LABEL_112;
                  case 'f':
                    LODWORD(v76) = 0;
                    [*(v17 + 48) invokeWithTarget:a2];
                    [*(v17 + 48) getReturnValue:&v76];
                    v34 = *(v17 + 72);
                    if (!v34)
                    {
                      LODWORD(v35) = v76;
                      v33 = [MEMORY[0x1E696AD98] numberWithFloat:v35];
                      goto LABEL_127;
                    }

                    break;
                  default:
                    goto LABEL_128;
                }
              }

              else if (v23 > 112)
              {
                if (v23 == 113)
                {
                  v77 = 0;
                  [*(v17 + 48) invokeWithTarget:a2];
                  [*(v17 + 48) getReturnValue:&v77];
                  v32 = *(v17 + 72);
                  if (!v32)
                  {
                    v33 = [MEMORY[0x1E696AD98] numberWithLongLong:v77];
                    goto LABEL_127;
                  }

                  goto LABEL_112;
                }

                if (v23 != 115)
                {
                  goto LABEL_128;
                }

                LOWORD(v76) = 0;
                [*(v17 + 48) invokeWithTarget:a2];
                [*(v17 + 48) getReturnValue:&v76];
                v34 = *(v17 + 72);
                if (!v34)
                {
                  v33 = [MEMORY[0x1E696AD98] numberWithShort:v76];
                  goto LABEL_127;
                }
              }

              else
              {
                if (v23 != 105)
                {
                  if (v23 != 108)
                  {
                    goto LABEL_128;
                  }

                  v77 = 0;
                  [*(v17 + 48) invokeWithTarget:a2];
                  [*(v17 + 48) getReturnValue:&v77];
                  v32 = *(v17 + 72);
                  if (!v32)
                  {
                    v33 = [MEMORY[0x1E696AD98] numberWithLong:v77];
LABEL_127:
                    v31 = v33;
                    goto LABEL_128;
                  }

LABEL_112:
                  [v32 setArgument:&v77 atIndex:2];
                  [*(v17 + 72) invokeWithTarget:a2];
                  v76 = 0;
                  [*(v17 + 72) getReturnValue:&v76];
                  v31 = v76;
                  goto LABEL_128;
                }

                LODWORD(v76) = 0;
                [*(v17 + 48) invokeWithTarget:a2];
                [*(v17 + 48) getReturnValue:&v76];
                v34 = *(v17 + 72);
                if (!v34)
                {
                  v33 = [MEMORY[0x1E696AD98] numberWithInt:v76];
                  goto LABEL_127;
                }
              }

              [v34 setArgument:&v76 atIndex:2];
              [*(v17 + 72) invokeWithTarget:a2];
              v77 = 0;
              v36 = *(v17 + 72);
              goto LABEL_110;
            }

            if (v30 == 28)
            {
              if (*(v17 + 33) != 123)
              {
                v49 = [(_PBProperty *)v17 getCountOfRepeatedValuesFromInstance:a2];
                if (!v49)
                {
                  v31 = 0;
                  goto LABEL_128;
                }

                v50 = v49;
                v31 = 0;
                v51 = *(v17 + 33);
                if (v51 <= 0x62)
                {
                  if (*(v17 + 33) > 0x4Bu)
                  {
                    switch(v51)
                    {
                      case 'L':
                        v77 = 0;
                        [*(v17 + 48) invokeWithTarget:a2];
                        [*(v17 + 48) getReturnValue:&v77];
                        v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v50];
                        for (i = 0; i != v50; ++i)
                        {
                          [v31 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLong:", *&v77[4 * i])}];
                        }

                        break;
                      case 'Q':
                        v77 = 0;
                        [*(v17 + 48) invokeWithTarget:a2];
                        [*(v17 + 48) getReturnValue:&v77];
                        v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v50];
                        for (j = 0; j != v50; ++j)
                        {
                          [v31 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", *&v77[4 * j])}];
                        }

                        break;
                      case 'S':
                        v77 = 0;
                        [*(v17 + 48) invokeWithTarget:a2];
                        [*(v17 + 48) getReturnValue:&v77];
                        v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v50];
                        for (k = 0; k != v50; ++k)
                        {
                          [v31 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", v77[k])}];
                        }

                        break;
                      default:
                        goto LABEL_128;
                    }
                  }

                  else
                  {
                    switch(v51)
                    {
                      case 'B':
                        v77 = 0;
                        [*(v17 + 48) invokeWithTarget:a2];
                        [*(v17 + 48) getReturnValue:&v77];
                        v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v50];
                        for (m = 0; m != v50; ++m)
                        {
                          [v31 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", *(v77 + m))}];
                        }

                        break;
                      case 'C':
                        v77 = 0;
                        [*(v17 + 48) invokeWithTarget:a2];
                        [*(v17 + 48) getReturnValue:&v77];
                        v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v50];
                        for (n = 0; n != v50; ++n)
                        {
                          [v31 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedChar:", *(v77 + n))}];
                        }

                        break;
                      case 'I':
                        v77 = 0;
                        [*(v17 + 48) invokeWithTarget:a2];
                        [*(v17 + 48) getReturnValue:&v77];
                        v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v50];
                        for (ii = 0; ii != v50; ++ii)
                        {
                          [v31 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *&v77[2 * ii])}];
                        }

                        break;
                      default:
                        goto LABEL_128;
                    }
                  }
                }

                else if (*(v17 + 33) <= 0x68u)
                {
                  switch(v51)
                  {
                    case 'c':
                      v77 = 0;
                      [*(v17 + 48) invokeWithTarget:a2];
                      [*(v17 + 48) getReturnValue:&v77];
                      v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v50];
                      for (jj = 0; jj != v50; ++jj)
                      {
                        [v31 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithChar:", *(v77 + jj))}];
                      }

                      break;
                    case 'd':
                      v77 = 0;
                      [*(v17 + 48) invokeWithTarget:a2];
                      [*(v17 + 48) getReturnValue:&v77];
                      v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v50];
                      for (kk = 0; kk != v50; ++kk)
                      {
                        [v31 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", *&v77[4 * kk])}];
                      }

                      break;
                    case 'f':
                      v77 = 0;
                      [*(v17 + 48) invokeWithTarget:a2];
                      [*(v17 + 48) getReturnValue:&v77];
                      v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v50];
                      for (mm = 0; mm != v50; ++mm)
                      {
                        LODWORD(v54) = *&v77[2 * mm];
                        [v31 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v54)}];
                      }

                      break;
                    default:
                      goto LABEL_128;
                  }
                }

                else if (*(v17 + 33) > 0x70u)
                {
                  if (v51 == 113)
                  {
                    v77 = 0;
                    [*(v17 + 48) invokeWithTarget:a2];
                    [*(v17 + 48) getReturnValue:&v77];
                    v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v50];
                    for (nn = 0; nn != v50; ++nn)
                    {
                      [v31 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", *&v77[4 * nn])}];
                    }
                  }

                  else
                  {
                    if (v51 != 115)
                    {
                      goto LABEL_128;
                    }

                    v77 = 0;
                    [*(v17 + 48) invokeWithTarget:a2];
                    [*(v17 + 48) getReturnValue:&v77];
                    v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v50];
                    for (i1 = 0; i1 != v50; ++i1)
                    {
                      [v31 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithShort:", v77[i1])}];
                    }
                  }
                }

                else if (v51 == 105)
                {
                  v77 = 0;
                  [*(v17 + 48) invokeWithTarget:a2];
                  [*(v17 + 48) getReturnValue:&v77];
                  v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v50];
                  for (i2 = 0; i2 != v50; ++i2)
                  {
                    [v31 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", *&v77[2 * i2])}];
                  }
                }

                else
                {
                  if (v51 != 108)
                  {
                    goto LABEL_128;
                  }

                  v77 = 0;
                  [*(v17 + 48) invokeWithTarget:a2];
                  [*(v17 + 48) getReturnValue:&v77];
                  v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v50];
                  for (i3 = 0; i3 != v50; ++i3)
                  {
                    [v31 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", *&v77[4 * i3])}];
                  }
                }

                v7 = v71;
                goto LABEL_128;
              }
            }

            else if (v30 != 57)
            {
              goto LABEL_80;
            }

            v37 = [*(v17 + 8) hasSuffix:@"s"];
            v38 = *(v17 + 8);
            if (v37)
            {
              v38 = [v38 substringToIndex:{objc_msgSend(*(v17 + 8), "length") - 1}];
            }

            if (*(v17 + 88) || (v68 = *(v17 + 104), v39 = dlsym(0xFFFFFFFFFFFFFFFELL, [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%@DictionaryRepresentation", "UTF8String"]), (*(v17 + 88) = v39) != 0))
            {
              if (*(v17 + 32) == 94)
              {
                v44 = [(_PBProperty *)v17 getCountOfRepeatedValuesFromInstance:a2];
                if (v44)
                {
                  v45 = v44;
                  v77 = 0;
                  [*(v17 + 48) invokeWithTarget:a2];
                  [*(v17 + 48) getReturnValue:&v77];
                  v46 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v45];
                  v47 = v77;
                  do
                  {
                    [v46 addObject:(*(v17 + 88))(v47)];
                    v47 = v77 + *(v17 + 120);
                    v77 = v47;
                    --v45;
                  }

                  while (v45);
                }

                else
                {
                  v46 = 0;
                }
              }

              else
              {
                v48 = *(v17 + 120);
                if (v48)
                {
                  v48 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v48];
                }

                [*(v17 + 48) invokeWithTarget:a2];
                [*(v17 + 48) getReturnValue:{objc_msgSend(v48, "mutableBytes")}];
                v46 = (*(v17 + 88))([v48 bytes]);
              }

              v15 = 0x1E696A000;
            }

            else
            {
              v46 = 0;
            }

            [(PBTextWriter *)_write _writeResult:v46 forProperty:v17 bracePrefix:v38, v40, v41, v42, v43, v68];
          }

LABEL_129:
          ++v16;
        }

        while (v16 != v13);
        v66 = [v7 countByEnumeratingWithState:&v72 objects:v78 count:16];
        v13 = v66;
      }

      while (v66);
    }
  }

  return v70;
}

- (_BYTE)_printLine:(uint64_t)line format:(uint64_t)format
{
  v24 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v9 = result;
    result[8] = 0;
    v22 = &a9;
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:line arguments:&a9];
    v11 = objc_alloc_init(MEMORY[0x1E696AD60]);
    if (*(v9 + 2) >= 1)
    {
      v12 = 0;
      do
      {
        [v11 appendString:@"    "];
        ++v12;
      }

      while (*(v9 + 2) > v12);
    }

    v13 = [v10 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "newlineCharacterSet")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    result = [v13 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (result)
    {
      v14 = result;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v18 + 1) + 8 * v16);
          [*(v9 + 3) appendString:v11];
          [*(v9 + 3) appendString:v17];
          [*(v9 + 3) appendString:@"\n"];
          ++v16;
        }

        while (v14 != v16);
        result = [v13 countByEnumeratingWithState:&v18 objects:v23 count:16];
        v14 = result;
      }

      while (result);
    }
  }

  return result;
}

- (_BYTE)_writeResult:(uint64_t)result forProperty:(uint64_t)property bracePrefix:(uint64_t)prefix
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return result;
  }

  resultCopy = result;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (result)
    {
      v18 = *(result + 8);
      if (*(result + 32) == 64)
      {
        return [(PBTextWriter *)resultCopy _printLine:@"%@: %@" format:v13, v14, v15, v16, v17, *(result + 8)];
      }
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_30;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    result = [a2 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (result)
    {
      resultCopy3 = result;
      v24 = *v42;
      do
      {
        v25 = 0;
        do
        {
          if (*v42 != v24)
          {
            objc_enumerationMutation(a2);
          }

          [(PBTextWriter *)resultCopy _writeResult:result forProperty:property bracePrefix:v19, v20, v21, v22, v39];
        }

        while (resultCopy3 != v25);
        result = [a2 countByEnumeratingWithState:&v41 objects:v45 count:16];
        resultCopy3 = result;
      }

      while (result);
    }

    return result;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (result)
      {
        v32 = *(result + 8);
      }

      else
      {
        v32 = 0;
      }

      v39 = v32;
      [a2 base64EncodedStringWithOptions:0];
      goto LABEL_31;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (result)
    {
      v18 = *(result + 8);
      if (isKindOfClass)
      {
LABEL_26:
        [(PBTextWriter *)resultCopy _printLine:@"%@: {" format:v13, v14, v15, v16, v17, v18];
        ++*(resultCopy + 2);
        [(PBTextWriter *)resultCopy _write:a2];
        --*(resultCopy + 2);

        return [(PBTextWriter *)resultCopy _printLine:@"}" format:v34, v35, v36, v37, v38, a9];
      }
    }

    else
    {
      v18 = 0;
      if (isKindOfClass)
      {
        goto LABEL_26;
      }
    }

LABEL_30:
    v39 = v18;
LABEL_31:
    v31 = @"%@: %@";
    return [(PBTextWriter *)resultCopy _printLine:v31 format:v13, v14, v15, v16, v17, v39];
  }

  if (property)
  {
    [(PBTextWriter *)resultCopy _printLine:@"%@ {" format:v26, v27, v28, v29, v30, property];
    ++*(resultCopy + 2);
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __53__PBTextWriter__writeResult_forProperty_bracePrefix___block_invoke;
  v40[3] = &unk_1E833D4D8;
  v40[4] = resultCopy;
  result = [a2 enumerateKeysAndObjectsUsingBlock:v40];
  if (property)
  {
    --*(resultCopy + 2);
    v31 = @"}";
    return [(PBTextWriter *)resultCopy _printLine:v31 format:v13, v14, v15, v16, v17, v39];
  }

  return result;
}

_BYTE *__53__PBTextWriter__writeResult_forProperty_bracePrefix___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = @"%@: %@";
  }

  else
  {
    v10 = @"%@: %@";
  }

  return [(PBTextWriter *)*(a1 + 32) _printLine:v10 format:v5, v6, v7, v8, v9, a2];
}

- (id)string
{
  v2 = [(NSMutableString *)self->_dest copy];

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PBTextWriter;
  [(PBTextWriter *)&v3 dealloc];
}

- (PBTextWriter)init
{
  v4.receiver = self;
  v4.super_class = PBTextWriter;
  v2 = [(PBTextWriter *)&v4 init];
  if (v2)
  {
    v2->_dest = objc_alloc_init(MEMORY[0x1E696AD60]);
    v2->_newlinesPrinted = 1;
    v2->_cachedObjectTypes = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

@end