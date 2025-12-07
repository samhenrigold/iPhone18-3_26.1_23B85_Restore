@interface SPColorWrapper
+ (id)wrapperForColor:(id)color;
- (SPColorWrapper)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPColorWrapper

+ (id)wrapperForColor:(id)color
{
  colorCopy = color;
  v5 = objc_alloc_init(SPColorWrapper);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_color, color);
    v7 = v6;
  }

  return v6;
}

- (SPColorWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = SPColorWrapper;
  v5 = [(SPColorWrapper *)&v33 init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"c"])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"c"];
      color = v5->_color;
      v5->_color = v6;

LABEL_19:
      v30 = v5;
      goto LABEL_20;
    }

    v32 = 0;
    v8 = [coderCopy decodeBytesWithReturnedLength:&v32];
    v9 = v8;
    if (v32 <= 2)
    {
      if (v32 == 1)
      {
        v10 = objc_alloc(MEMORY[0x277D75348]);
        LOBYTE(v25) = *v9;
        v12 = v25 / 255.0;
        v14 = 1.0;
        goto LABEL_14;
      }

      if (v32 == 2)
      {
        v10 = objc_alloc(MEMORY[0x277D75348]);
        LOBYTE(v11) = *v9;
        v12 = v11 / 255.0;
        LOBYTE(v13) = v9[1];
        v14 = v13 / 255.0;
LABEL_14:
        v26 = [v10 initWithWhite:v12 alpha:v14];
LABEL_17:
        p_super = &v5->_color->super;
        v5->_color = v26;
LABEL_18:

        goto LABEL_19;
      }

LABEL_11:
      p_super = wk_default_log(v8);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [SPColorWrapper initWithCoder:];
      }

      goto LABEL_18;
    }

    if (v32 == 3)
    {
      v15 = objc_alloc(MEMORY[0x277D75348]);
      LOBYTE(v27) = *v9;
      v17 = v27 / 255.0;
      LOBYTE(v28) = v9[1];
      v19 = v28 / 255.0;
      LOBYTE(v29) = v9[2];
      v21 = v29 / 255.0;
      v23 = 1.0;
    }

    else
    {
      if (v32 != 4)
      {
        goto LABEL_11;
      }

      v15 = objc_alloc(MEMORY[0x277D75348]);
      LOBYTE(v16) = *v9;
      v17 = v16 / 255.0;
      LOBYTE(v18) = v9[1];
      v19 = v18 / 255.0;
      LOBYTE(v20) = v9[2];
      v21 = v20 / 255.0;
      LOBYTE(v22) = v9[3];
      v23 = v22 / 255.0;
    }

    v26 = [v15 initWithRed:v17 green:v19 blue:v21 alpha:v23];
    goto LABEL_17;
  }

LABEL_20:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v42 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  cGColor = [(UIColor *)self->_color CGColor];
  ColorSpace = CGColorGetColorSpace(cGColor);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model > kCGColorSpaceModelRGB)
  {
    [coderCopy encodeObject:self->_color forKey:@"c"];
  }

  else
  {
    v8 = Model;
    NumberOfComponents = CGColorGetNumberOfComponents(cGColor);
    v10 = NumberOfComponents;
    v11 = 4;
    if (v8 == kCGColorSpaceModelMonochrome)
    {
      v11 = 2;
    }

    if (NumberOfComponents != v11)
    {
      v12 = wk_default_log(NumberOfComponents);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(SPColorWrapper *)v10 encodeWithCoder:v12, v13, v14, v15, v16, v17, v18];
      }
    }

    v19 = &buf[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
    Components = CGColorGetComponents(cGColor);
    v22 = Components;
    v23 = v10 - 1;
    if (v10 != 1)
    {
      *&v21 = 136446722;
      v35 = v21;
      v24 = Components;
      v25 = &buf[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
      v26 = v10 - 1;
      do
      {
        v27 = *v24;
        if (*v24 < 0.0 || v27 > 1.0)
        {
          v29 = wk_default_log(Components);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = *v24;
            *buf = v35;
            v37 = "[SPColorWrapper encodeWithCoder:]";
            v38 = 1024;
            v39 = 88;
            v40 = 2048;
            v41 = v30;
            _os_log_error_impl(&dword_23B338000, v29, OS_LOG_TYPE_ERROR, "%{public}s:%d: Color component with value %f must be in the range [0, 1].", buf, 0x1Cu);
          }

          v27 = *v24;
        }

        *v25++ = (v27 * 255.0);
        ++v24;
        --v26;
      }

      while (v26);
    }

    v31 = &v22[v23];
    v32 = *v31;
    if (*v31 < 0.0 || v32 > 1.0)
    {
      v34 = wk_default_log(Components);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [SPColorWrapper encodeWithCoder:];
      }

      v32 = *v31;
    }

    if (v32 >= 1.0)
    {
      --v10;
    }

    else
    {
      v19[v23] = (v32 * 255.0);
    }

    [coderCopy encodeBytes:v19 length:{v10, v35}];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong(v4 + 1, self->_color);
  return v4;
}

- (void)initWithCoder:.cold.1()
{
  LODWORD(v6) = 136446722;
  *(&v6 + 4) = "[SPColorWrapper initWithCoder:]";
  WORD6(v6) = 1024;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: Unexpected number of decoded color components (%lu).", v2, v3, v4, v5, v6);
}

- (void)encodeWithCoder:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v8 = 136446722;
  *&v8[4] = "[SPColorWrapper encodeWithCoder:]";
  *&v8[12] = 1024;
  *&v8[14] = 82;
  *&v8[18] = 2048;
  *&v8[20] = a1;
  OUTLINED_FUNCTION_0_0(&dword_23B338000, a2, a3, "%{public}s:%d: Unexpected number of color components (%lu).", a5, a6, a7, a8, *v8, *&v8[8], *&v8[16], *&v8[24]);
}

- (void)encodeWithCoder:.cold.2()
{
  LODWORD(v6) = 136446722;
  *(&v6 + 4) = "[SPColorWrapper encodeWithCoder:]";
  WORD6(v6) = 1024;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: Alpha component with value %f must be in the range [0, 1].", v2, v3, v4, v5, v6);
}

@end