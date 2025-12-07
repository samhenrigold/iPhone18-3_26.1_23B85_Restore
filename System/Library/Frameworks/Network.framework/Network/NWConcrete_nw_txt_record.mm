@interface NWConcrete_nw_txt_record
- (NSString)description;
- (NWConcrete_nw_txt_record)init;
- (void)dealloc;
@end

@implementation NWConcrete_nw_txt_record

- (NWConcrete_nw_txt_record)init
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NWConcrete_nw_txt_record;
  v2 = [(NWConcrete_nw_txt_record *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v18 = "[NWConcrete_nw_txt_record init]";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s [super init] failed", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v7, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_txt_record init]";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s [super init] failed", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v11 = type;
      v12 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v18 = "[NWConcrete_nw_txt_record init]";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_txt_record init]";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_txt_record init]";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

LABEL_3:

  return v3;
}

- (void)dealloc
{
  v3 = *(self + 1);
  if (v3)
  {
    free(v3);
    *(self + 1) = 0;
  }

  v4.receiver = self;
  v4.super_class = NWConcrete_nw_txt_record;
  [(NWConcrete_nw_txt_record *)&v4 dealloc];
}

- (NSString)description
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = *(self + 2);
  v4 = v3 + 2;
  if (v3 == -2)
  {
    v64 = __nwlog_obj();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      v65 = 3;
    }

    else
    {
      v65 = 2;
    }

    v68 = 136446210;
    v69 = "[NWConcrete_nw_txt_record description]";
    v66 = _os_log_send_and_compose_impl(v65, 0, 0, 0, &dword_181A37000, v64, 16, "%{public}s strict_malloc called with size 0", &v68, 12);

    result = __nwlog_should_abort(v66);
    if (result)
    {
      goto LABEL_78;
    }

    free(v66);
    v4 = 0;
  }

  v5 = malloc_type_malloc(v4, 0xFDB87F72uLL);
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v68 = 136446210;
    v69 = "[NWConcrete_nw_txt_record description]";
    LODWORD(v67) = 12;
    v20 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s strict allocator failed", &v68, v67);

    result = __nwlog_should_abort(v20);
    if (!result)
    {
      free(v20);
      if ((*(self + 36) & 1) == 0)
      {
LABEL_4:
        v12 = *(self + 2);
        if (v12 < 1)
        {
LABEL_67:
          v50 = &v5[v12 + 1];
          goto LABEL_68;
        }

        v13 = *(self + 1);
        v14 = &v13->i8[v12];
        if (&v13->i8[v12] <= &v13->i8[1])
        {
          v14 = &v13->i8[1];
        }

        v15 = v14 - v13;
        if (v15 < 8)
        {
          v16 = v5;
          v17 = *(self + 1);
          goto LABEL_62;
        }

        v16 = v5;
        v17 = *(self + 1);
        if ((v5 - v13 + 1) >= 0x20)
        {
          if (v15 < 0x20)
          {
            v49 = 0;
            goto LABEL_57;
          }

          v49 = v15 & 0xFFFFFFFFFFFFFFE0;
          v51 = v13 + 1;
          v52 = (v5 + 17);
          v6.i64[0] = 0x8181818181818181;
          v6.i64[1] = 0x8181818181818181;
          v7.i64[0] = 0xA1A1A1A1A1A1A1A1;
          v7.i64[1] = 0xA1A1A1A1A1A1A1A1;
          v8.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
          v8.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
          v53 = v15 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v54 = v51[-1];
            v11 = vcgtq_u8(v7, vaddq_s8(v54, v6));
            v9 = vbslq_s8(v11, v8, v54);
            v10 = vbslq_s8(vcgtq_u8(v7, vaddq_s8(*v51, v6)), v8, *v51);
            v52[-1] = v9;
            *v52 = v10;
            v51 += 2;
            v52 += 2;
            v53 -= 32;
          }

          while (v53);
          if (v15 == v49)
          {
            goto LABEL_66;
          }

          if ((v15 & 0x18) != 0)
          {
LABEL_57:
            v55 = v15 & 0xFFFFFFFFFFFFFFF8;
            v16 = &v5[v15 & 0xFFFFFFFFFFFFFFF8];
            v56 = v49 - (v15 & 0xFFFFFFFFFFFFFFF8);
            v57 = &v5[v49 + 1];
            v58 = &v13->i8[v49];
            v6.i64[0] = 0x8181818181818181;
            v7.i64[0] = 0xA1A1A1A1A1A1A1A1;
            v8.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
            do
            {
              v59 = *v58++;
              *v10.i8 = vcgt_u8(0xA1A1A1A1A1A1A1A1, vadd_s8(v59, 0x8181818181818181));
              *v9.i8 = vbsl_s8(*v10.i8, 0x2E2E2E2E2E2E2E2ELL, v59);
              *v57 = v9.i64[0];
              v57 += 8;
              v56 += 8;
            }

            while (v56);
            if (v15 != v55)
            {
              v17 = &v13->u8[v55];
              goto LABEL_62;
            }

LABEL_66:
            v12 = *(self + 2);
            goto LABEL_67;
          }

          v17 = &v13->u8[v49];
          v16 = &v5[v49];
        }

LABEL_62:
        v60 = v13->u64 + v12;
        v61 = v16 + 1;
        do
        {
          v63 = *v17++;
          v62 = v63;
          if ((v63 - 127) < 0xFFFFFFA1)
          {
            v62 = 46;
          }

          *v61++ = v62;
        }

        while (v17 < v60);
        goto LABEL_66;
      }

      goto LABEL_14;
    }

LABEL_78:
    __break(1u);
    return result;
  }

  if ((*(self + 36) & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  v22 = *(self + 2);
  if (v22 == 1)
  {
    v23 = &stru_1EEFDE910;
    if (v5)
    {
      goto LABEL_69;
    }

    goto LABEL_70;
  }

  if (v22 < 1)
  {
    goto LABEL_52;
  }

  v24 = *(self + 1);
  v25 = &v24[v22];
  v6.i64[0] = 0x8181818181818181;
  v7.i64[0] = 0xA1A1A1A1A1A1A1A1;
  v8.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
  v9.i64[0] = 0x8181818181818181;
  v9.i64[1] = 0x8181818181818181;
  v10.i64[0] = 0xA1A1A1A1A1A1A1A1;
  v10.i64[1] = 0xA1A1A1A1A1A1A1A1;
  v11.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
  v11.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
  v26 = v5;
  do
  {
    *v26 = 10;
    v28 = *v24;
    if (!*v24)
    {
      v27 = 1;
      goto LABEL_20;
    }

    v27 = v28 + 1;
    if (v28 < 8 || (v26 - v24) <= 0x1F)
    {
      v30 = 1;
      goto LABEL_43;
    }

    if (v28 < 0x20)
    {
      v31 = 0;
LABEL_38:
      v39 = v28 & 0xF8;
      v40 = v31 - v39;
      v41 = &v26[v31 + 1];
      v42 = &v24[v31 + 1];
      do
      {
        v43 = *v42++;
        *v41++ = vbsl_s8(vcgt_u8(0xA1A1A1A1A1A1A1A1, vadd_s8(v43, 0x8181818181818181)), 0x2E2E2E2E2E2E2E2ELL, v43);
        v40 += 8;
      }

      while (v40);
      if (v39 == v28)
      {
        goto LABEL_20;
      }

      v30 = v39 | 1;
      goto LABEL_43;
    }

    v31 = v28 & 0xE0;
    v32 = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v24 + 17), v9)), v11, *(v24 + 17));
    *(v26 + 1) = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v24 + 1), v9)), v11, *(v24 + 1));
    *(v26 + 17) = v32;
    if (v31 != 32)
    {
      v33 = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v24 + 49), v9)), v11, *(v24 + 49));
      *(v26 + 33) = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v24 + 33), v9)), v11, *(v24 + 33));
      *(v26 + 49) = v33;
      if (v31 != 64)
      {
        v34 = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v24 + 81), v9)), v11, *(v24 + 81));
        *(v26 + 65) = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v24 + 65), v9)), v11, *(v24 + 65));
        *(v26 + 81) = v34;
        if (v31 != 96)
        {
          v35 = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v24 + 113), v9)), v11, *(v24 + 113));
          *(v26 + 97) = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v24 + 97), v9)), v11, *(v24 + 97));
          *(v26 + 113) = v35;
          if (v31 != 128)
          {
            v36 = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v24 + 145), v9)), v11, *(v24 + 145));
            *(v26 + 129) = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v24 + 129), v9)), v11, *(v24 + 129));
            *(v26 + 145) = v36;
            if (v31 != 160)
            {
              v37 = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v24 + 177), v9)), v11, *(v24 + 177));
              *(v26 + 161) = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v24 + 161), v9)), v11, *(v24 + 161));
              *(v26 + 177) = v37;
              if (v31 != 192)
              {
                v38 = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v24 + 209), v9)), v11, *(v24 + 209));
                *(v26 + 193) = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v24 + 193), v9)), v11, *(v24 + 193));
                *(v26 + 209) = v38;
              }
            }
          }
        }
      }
    }

    if (v31 != v28)
    {
      if ((v28 & 0x18) != 0)
      {
        goto LABEL_38;
      }

      v30 = v31 | 1;
LABEL_43:
      v44 = v28 - v30 + 1;
      v45 = &v26[v30];
      v46 = &v24[v30];
      do
      {
        v48 = *v46++;
        v47 = v48;
        if ((v48 - 127) < 0xFFFFFFA1)
        {
          v47 = 46;
        }

        *v45++ = v47;
        --v44;
      }

      while (v44);
    }

LABEL_20:
    v24 += v27;
    v26 += v27;
  }

  while (v24 < v25);
  v22 = *(self + 2);
LABEL_52:
  v50 = &v5[v22];
LABEL_68:
  *v50 = 0;
  v23 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s", *v6.i64, *v7.i64, *v8.i64, *v9.i64, *v10.i64, *v11.i64, v5 + 1);
LABEL_69:
  free(v5);
LABEL_70:

  return v23;
}

@end