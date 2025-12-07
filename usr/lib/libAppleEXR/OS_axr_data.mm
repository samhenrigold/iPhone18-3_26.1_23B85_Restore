@interface OS_axr_data
- (NSString)debugDescription;
- (void)dealloc;
@end

@implementation OS_axr_data

- (void)dealloc
{
  (*self[2].super.super.isa)();
  v3.receiver = self;
  v3.super_class = OS_axr_data;
  [(OS_axr_data *)&v3 dealloc];
}

- (NSString)debugDescription
{
  isa = self[12].super.super.isa;
  if (isa)
  {
    v4 = 0;
    v5 = isa << 8;
    v6 = self[11].super.super.isa;
    while (1)
    {
      if (v4 && v6)
      {
        v7 = 1;
        v8 = self[11].super.super.isa;
        do
        {
          v8 = *(v8 + 1);
          if (v7 >= v4)
          {
            break;
          }

          ++v7;
        }

        while (v8);
        if (!v8)
        {
LABEL_27:
          if (GetFlagsOnceToken != -1)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }

        v9 = *(v8 + 8) << 9;
        v10 = 1;
        v11 = self[11].super.super.isa;
        do
        {
          v11 = *(v11 + 1);
          if (v10 >= v4)
          {
            break;
          }

          ++v10;
        }

        while (v11);
        if (!v11)
        {
          if (GetFlagsOnceToken != -1)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }

        v12 = *(v11 + 38) << 8;
        v13 = 1;
        v14 = self[11].super.super.isa;
        do
        {
          v14 = *(v14 + 1);
          if (v13 >= v4)
          {
            break;
          }

          ++v13;
        }

        while (v14);
        if (!v14)
        {
          if (GetFlagsOnceToken != -1)
          {
            goto LABEL_33;
          }

          while (1)
          {
LABEL_32:
            AXRLogError("Error: image index %lu out of range [0,%lu]", a2, v4, self[12].super.super.isa - 1);
            __break(1u);
LABEL_33:
            [OS_axr_data debugDescription];
          }
        }

        v15 = v12 + v9;
      }

      else
      {
        if (!v6)
        {
          goto LABEL_27;
        }

        v15 = (*(v6 + 38) << 8) + (*(v6 + 8) << 9);
        v14 = self[11].super.super.isa;
      }

      v5 += v15 + (*(v14 + 31) << 7);
      if (++v4 == isa)
      {
        goto LABEL_23;
      }
    }
  }

  v5 = 0;
LABEL_23:
  v16 = malloc_type_malloc(v5, 0x100004077774924uLL);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  AXRData::DebugDescription(&self[2], v16);
  v20.receiver = self;
  v20.super_class = OS_axr_data;
  v18 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@:\n%s\n", -[OS_axr_data debugDescription](&v20, sel_debugDescription), v17];
  free(v17);
  return v18;
}

@end