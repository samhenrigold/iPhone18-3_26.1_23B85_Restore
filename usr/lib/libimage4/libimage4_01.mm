void *digest_copy_out32(uint64_t a1, void *__dst, _DWORD *a3)
{
  v4 = *a3;
  v5 = *(a1 + 72);
  if (v5 > v4)
  {
LABEL_7:
    __panic_npx("panic: digest length overflow: actual = %u, expected >= %lu", v4, v5);
  }

  if (v5 > 0x40)
  {
    goto LABEL_6;
  }

  result = memcpy(__dst, (a1 + 8), v5);
  v8 = *(a1 + 72);
  if (HIDWORD(v8))
  {
    __panic_npx("panic: integer cast overflow: v = %s, actual = %llu, expected <= %llu", "d->d_len", *(a1 + 72), 0xFFFFFFFFLL);
  }

  v4 = *a3;
  if (v8 > v4)
  {
LABEL_6:
    __break(0x5519u);
    goto LABEL_7;
  }

  *a3 = v8;
  return result;
}

uint64_t *__select_ap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v7[0] = "AP-SECURE-BOOT";
  v7[1] = 1;
  v7[2] = expert_query_chip(v5, 0);
  v7[3] = _img4_chip_ap_reduced;
  v7[4] = _img4_chip_ap_reduced;
  v7[5] = 0;
  result = image4_coprocessor_select_digest(a1, &__select_ap_digest_map);
  if (!result)
  {
    return image4_coprocessor_select_secure_boot(a1, v7, a3);
  }

  return result;
}

uint64_t *__select_ap_pdi(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = "PDI-VMA2";
  v6[1] = 2;
  v6[2] = _image4_coprocessor_vma2;
  v6[3] = 1;
  v6[4] = 0xAAAAAAAAAAAAAAAALL;
  v6[5] = 0xAAAAAAAAAAAAAAAALL;
  v5[0] = "PDI-DIGEST";
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = _chip_ap_pdi_sha2_384;
  v5[4] = 0xAAAAAAAAAAAAAAAALL;
  v5[5] = 0xAAAAAAAAAAAAAAAALL;
  result = image4_coprocessor_select(a1, v6, a3);
  if (!result)
  {
    return image4_coprocessor_select_digest(a1, v5);
  }

  return result;
}

uint64_t __select_ap_acdc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = "ACDC-VMA2";
  v4[1] = 2;
  v4[2] = _image4_coprocessor_vma2;
  v4[3] = 3;
  v4[4] = 0xAAAAAAAAAAAAAAAALL;
  v4[5] = 0xAAAAAAAAAAAAAAAALL;
  return image4_coprocessor_select(a1, v4, a3);
}

uint64_t *__select_ap_ddi(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = "PDI-VMA2";
  v6[1] = 2;
  v6[2] = _image4_coprocessor_vma2;
  v6[3] = 2;
  v6[4] = 0xAAAAAAAAAAAAAAAALL;
  v6[5] = 0xAAAAAAAAAAAAAAAALL;
  v5[0] = "PDI-DIGEST";
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = _chip_ap_ddi_sha2_384;
  v5[4] = 0xAAAAAAAAAAAAAAAALL;
  v5[5] = 0xAAAAAAAAAAAAAAAALL;
  result = image4_coprocessor_select(a1, v6, a3);
  if (!result)
  {
    return image4_coprocessor_select_digest(a1, v5);
  }

  return result;
}

uint64_t fourcc_init(uint64_t result, unsigned int a2)
{
  *result = a2;
  if (result + 4 > (result + 9))
  {
    __break(0x5519u);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 4) = 0;
    *(result + 4) = bswap32(a2);
  }

  return result;
}

size_t fourcc_init_cstring(uint64_t a1, char *__s)
{
  result = strlen(__s);
  if (result != 4)
  {
    __panic_npx_4(result, v5, v6, v7, v8, v9, v10, v11, result);
  }

  if (__s + 5 < __s)
  {
    __break(0x5519u);
  }

  else
  {
    *a1 = bswap32(*__s);
    strlcpy((a1 + 4), __s, 5uLL);
    return a1;
  }

  return result;
}

void __panic_npx_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9 = 0xAAAAAAAAAAAAAAAALL;
  bzero(__str, 0x800uLL);
  va_copy(v9, va);
  vsnprintf(__str, 0x800uLL, "panic: cstring is not a fourcc: length = %lu", va);
  _os_crash();
  __break(1u);
}

uint64_t fourcc_copy(uint64_t result, unsigned int *a2)
{
  v2 = *a2;
  *result = *a2;
  if (result + 4 > (result + 9))
  {
    __break(0x5519u);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 4) = 0;
    *(result + 4) = bswap32(v2);
  }

  return result;
}

char *__select_pdi(uint64_t a1, uint64_t a2, uint64_t a3)
{
  chip = expert_query_chip(*(a3 + 8), 0);
  if (!*(chip + 72))
  {
    return 0;
  }

  if (*(chip + 64))
  {
    return _chip_vma2_clone_pdi;
  }

  return _chip_vma2_pdi;
}

char *__select_ddi(uint64_t a1, uint64_t a2, uint64_t a3)
{
  chip = expert_query_chip(*(a3 + 8), 0);
  if (!*(chip + 72))
  {
    return 0;
  }

  if (*(chip + 64))
  {
    return _chip_vma2_clone_ddi;
  }

  return _chip_vma2_ddi;
}

uint64_t zcmp_npx(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = result;
  while (1)
  {
    v4 = *v2++;
    v3 = v4;
    v5 = v4 < 0 ? -1 : result;
    result = v3 >= 1 ? 1 : v5;
    if (v3)
    {
      break;
    }

    if (!--a2)
    {
      return 0;
    }
  }

  return result;
}

unint64_t strtou32_npx(const char *a1, char **a2, int a3)
{
  __endptr = 0;
  *__error() = 0;
  result = strtoul(a1, &__endptr, a3);
  if (__endptr && *__endptr)
  {
    result = 0;
    if (a2)
    {
      *a2 = __endptr;
    }
  }

  else if (HIDWORD(result))
  {
    *__error() = 34;
    return 0xFFFFFFFFLL;
  }

  return result;
}

const char *strsuf_npx(const char *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = &a1[strlen(a1) - v4];
  if (v5 < a1 || strcmp(v5, __s))
  {
    return 0;
  }

  return v5;
}

uint64_t _boot_flash_secondary_enforceable(const char **a1, uint64_t a2)
{
  if (odometer_policy_get_chip_property(a1, *(a2 + 16)))
  {
    v4 = *(a2 + 16);
    if (*(v4 + 80))
    {
      if (!*(v4 + 88))
      {
        if (manifest_get_restore_info(*(a2 + 8)))
        {
          v12 = *(a2 + 144);
          v13 = *a2;
          name = chip_get_name(*(a2 + 16));
          if (v12)
          {
            expert_log(v13, 1uLL, "odometer[%s:%s]: policy is enforceable", name, *a1);
            return 0;
          }

          v15 = name;
          v16 = *a1;
          v6 = "odometer[%s:%s]: manifest has no constraint for policy";
        }

        else
        {
          v13 = *a2;
          v15 = chip_get_name(*(a2 + 16));
          v16 = *a1;
          v6 = "odometer[%s:%s]: boot object has no restore info";
        }

        v9 = 1;
        v10 = v13;
        goto LABEL_8;
      }

      v5 = *a2;
      v15 = chip_get_name(v4);
      v16 = *a1;
      v6 = "odometer[%s:%s]: chip is not secondary-stage dfu policy";
    }

    else
    {
      v5 = *a2;
      v15 = chip_get_name(v4);
      v16 = *a1;
      v6 = "odometer[%s:%s]: chip has no associated dfu policy";
    }

    v9 = 1;
    v10 = v5;
LABEL_8:
    expert_log(v10, 1uLL, v6, v15, v16);
    return v9;
  }

  v7 = *a2;
  v8 = chip_get_name(*(a2 + 16));
  v17 = *a1;
  v9 = 1;
  expert_log(v7, 1uLL, "odometer[%s:%s]: chip has no property for policy", v8, v17);
  return v9;
}

uint64_t _boot_flash_secondary_enforce(const char **a1, uint64_t a2)
{
  v26[3] = *MEMORY[0x29EDCA608];
  if (!*(a2 + 144))
  {
    __panic_npx("panic: optional not set");
  }

  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = v5[20];
  v7 = *(a2 + 24);
  memset(v26, 0, 24);
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  v8 = *a2;
  restore_info = manifest_get_restore_info(v4);
  if (!restore_info)
  {
    __panic_npx("panic: boot object has no restore info");
  }

  restore_info_nonce = odometer_query_restore_info_nonce(a2, restore_info, v26);
  if (restore_info_nonce)
  {
    v11 = restore_info_nonce;
    v12 = *a2;
    name = chip_get_name(*(a2 + 16));
    expert_log(v12, 0, "odometer[%s:%s]: failed to query restore info nonce: %d", name, *a1, v11);
  }

  else
  {
    v14 = expert_entangle_nonce(v8, v5, v7, v26, v25);
    if (v14)
    {
      v11 = v14;
      v15 = *a2;
      chip_get_name(*(a2 + 16));
      expert_log(v15, 0, "odometer[%s:%s]: failed to entangle nonce: %d");
    }

    else
    {
      odometer_compute_nonce_hash(v8, v5, v25, v24);
      if (!property_constrain_digest(v6, v8, a2 + 64, v24, v16, v17, v18, v19))
      {
        v22 = *a2;
        v23 = chip_get_name(*(a2 + 16));
        expert_log(v22, 1uLL, "odometer[%s:%s]: manifest is current", v23, *a1);
        return 0;
      }

      v11 = *(a1 + 6);
      v20 = *a2;
      chip_get_name(*(a2 + 16));
      expert_log(v20, 0, "odometer[%s:%s]: manifest inconsistent with restore info: %d");
    }
  }

  if (v11 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v11);
  }

  return v11;
}

uint64_t closure_init(uint64_t result, void *a2, uint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = *a2;
  strcpy((result + 24), "qinuuniq");
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  return result;
}

void *_closure_set_unique_tags(void *result, uint64_t a2, uint64_t a3)
{
  result[5] = a2;
  result[6] = a3;
  result[7] = _unique_entry_get_tag;
  return result;
}

uint64_t closure_measure(uint64_t *a1, void *a2)
{
  v9 = 0;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v4 = _closure_compute_internal(a1, v7, &v9);
  if (v4)
  {
    v10 = v7;
    buff_destroy(&v10);
    if (v4 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v4);
    }
  }

  else
  {
    v5 = (*(a1[1] + 48))();
    digest_init_measure(a2, v5, v9);
    v10 = v7;
    buff_destroy(&v10);
  }

  return v4;
}

uint64_t closure_compute(uint64_t *a1, void *a2, char *a3)
{
  if (!a3)
  {
    a3 = &v4;
  }

  return _closure_compute_internal(a1, a2, a3);
}

uint64_t _closure_compute_internal(uint64_t *a1, void *a2, uint64_t *a3)
{
  v64[1] = *MEMORY[0x29EDCA608];
  v3 = a1[2];
  v4 = *a1;
  v5 = *(*a1 + 528);
  v63 = 0;
  v64[0] = 0;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58[1] = 0;
  v58[2] = 0;
  v57 = 0;
  v58[0] = _closure_manifest_property_callback;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  if (!v5)
  {
LABEL_97:
    __panic_npx("panic: closure measurement requires a parsed manifest", a2, a3, v50, v51, v52);
  }

  alloc_preference = _type_get_alloc_preference(&_image4_type_decode_context);
  if (alloc_preference <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = alloc_preference;
  }

  if (v10 == 1)
  {
    goto LABEL_9;
  }

  if (v10 != 2)
  {
    __panic_npx("panic: unreachable case: %s = 0x%llx");
  }

  v11 = _expert_alloc_type(v3, &_image4_type_decode_context);
  if (!v11)
  {
LABEL_9:
    size = type_get_size(&_image4_type_decode_context);
    v21 = MEMORY[0x2A1C7C4A8](size, v14, v15, v16, v17, v18, v19, v20, v50);
    v12 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v21 >= 0x31)
    {
      v22 = v21 - 48;
    }

    else
    {
      v22 = 0;
    }

    memset(v12 + 48, 170, v22);
    *v12 = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
  }

  else
  {
    v12 = v11;
    v64[0] = v11;
  }

  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *v12 = 0u;
  v23 = a1[1];
  strcpy(&v50, "PNAMMANP");
  BYTE9(v50) = 0;
  WORD5(v50) = 0;
  v59 = a1;
  *&v60 = chip_select_decode(v23);
  if (!v60)
  {
    v32 = 82;
    expert_log(a1[2], 0, "chip environment not booted: %s: %d");
LABEL_19:
    expert_log(a1[2], 0, "failed to initialize compute context: %d", v32);
    _expert_dealloc_type(v3, &_image4_type_decode_context, v64);
    goto LABEL_68;
  }

  v24 = closure_node_new_item(a1, &v50);
  if (!v24)
  {
    v32 = 12;
    expert_log(a1[2], 0, "failed to add MANP node: %d");
    goto LABEL_19;
  }

  *(v12 + 5) = &v59;
  *&v62 = 0;
  *(&v62 + 1) = &v62;
  *&v61 = 0;
  *(&v61 + 1) = v24;
  *(&v60 + 1) = 0;
  LODWORD(v63) = -1;
  closure_node_add(v24, &v62, v25, v26, v27, v28, v29, v30);
  v31 = Img4DecodePerformManifestTrustEvaluationWithCallbacks(v4 + 72, v58, v60, v12);
  if (v31)
  {
    v32 = posixdr(v31);
    expert_log(a1[2], 0, "Img4DecodePerformManifestTrustEvaluation: %d");
    goto LABEL_67;
  }

  v33 = Img4DecodeIterateObjectItems((v4 + 72), &v59 + 2, v58, v12);
  if (v33)
  {
    v32 = posixdr(v33);
    expert_log(a1[2], 0, "Img4DecodeIterateObjectItems: %d");
    goto LABEL_67;
  }

  v34 = v62;
  if (!v62)
  {
LABEL_46:
    Single = DEREncoderCreateSingle(0);
    v57 = Single;
    if (!Single)
    {
      v32 = 12;
      expert_log(a1[2], 0, "failed to allocate item sequence encoder: %d", 12);
      goto LABEL_67;
    }

    v42 = Single;
    v43 = &v62;
    while (1)
    {
      v43 = *v43;
      if (!v43)
      {
        break;
      }

      v44 = closure_node_encode_item(v43, v42);
      if (v44)
      {
        switch(v44)
        {
          case 1:
            v32 = 22;
            break;
          case 2:
            v32 = 12;
            break;
          case 3:
            v32 = 104;
            break;
          default:
            v32 = 14;
            break;
        }

        expert_log(*(*(v43 + 1) + 16), 0, "%s: failed to encode item node: %d");
        goto LABEL_67;
      }
    }

    Image4Dictionary = DEREncoderCreateImage4Dictionary("MANB", v42, &v56);
    if (Image4Dictionary > 1)
    {
      if (Image4Dictionary == 3)
      {
        v32 = 104;
        goto LABEL_79;
      }

      if (Image4Dictionary == 2)
      {
        v32 = 12;
        goto LABEL_79;
      }

LABEL_73:
      v32 = 14;
      goto LABEL_79;
    }

    if (Image4Dictionary)
    {
      if (Image4Dictionary == 1)
      {
        v32 = 22;
LABEL_79:
        expert_log(a1[2], 0, "DEREncoderCreateImage4Dictionary: %d");
        goto LABEL_67;
      }

      goto LABEL_73;
    }

    image4_manifest = _closure_create_image4_manifest(a1, v56, &v55);
    if (image4_manifest > 1)
    {
      if (image4_manifest == 3)
      {
        v32 = 104;
        goto LABEL_67;
      }

      if (image4_manifest == 2)
      {
        v32 = 12;
        goto LABEL_67;
      }

LABEL_83:
      v32 = 14;
      goto LABEL_67;
    }

    if (image4_manifest)
    {
      if (image4_manifest == 1)
      {
        v32 = 22;
        goto LABEL_67;
      }

      goto LABEL_83;
    }

    v48 = DEREncoderCreateEncodedBuffer(v55, &v54, &v53);
    if (v48 > 1)
    {
      if (v48 == 3)
      {
        v32 = 104;
        goto LABEL_95;
      }

      if (v48 == 2)
      {
        v32 = 12;
        goto LABEL_95;
      }
    }

    else
    {
      if (!v48)
      {
        v52 = v54;
        inited = buff_init_xfer(a2, &v52, v53, &_buff_destructor_free, 0);
        v32 = 0;
        *a3 = inited;
        goto LABEL_67;
      }

      if (v48 == 1)
      {
        v32 = 22;
LABEL_95:
        expert_log(a1[2], 0, "DEREncoderCreateEncodedBuffer: %d");
        goto LABEL_67;
      }
    }

    v32 = 14;
    goto LABEL_95;
  }

  while (1)
  {
    v50 = *(v34 + 40);
    v51 = *(v34 + 56);
    v35 = v61;
    if (v61)
    {
      v36 = *(&v60 + 1);
      if (!*(&v60 + 1))
      {
        goto LABEL_33;
      }
    }

    else
    {
      v35 = a1[5];
      v36 = a1[6];
      if (!v36)
      {
LABEL_33:
        expert_log(*(*(v34 + 8) + 16), 2uLL, "%s: tag not in unique list", (v34 + 28));
LABEL_34:
        v39 = 0;
        goto LABEL_35;
      }
    }

    v37 = v35 + 4 * v36;
    v38 = v35;
    while (1)
    {
      if (v38 && (v38 >= v37 || v38 < v35))
      {
        goto LABEL_96;
      }

      if ((a1[7])(v38) == *(v34 + 24))
      {
        break;
      }

      v38 += 4;
      if (!--v36)
      {
        goto LABEL_33;
      }
    }

    expert_log(*(*(v34 + 8) + 16), 2uLL, "%s: found unique tag", (v34 + 28));
    if (!v38)
    {
      goto LABEL_34;
    }

    if (v38 >= v37 || v38 < v35)
    {
LABEL_96:
      __break(0x5519u);
      goto LABEL_97;
    }

    v51 = 5;
    v39 = &v50;
LABEL_35:
    v40 = closure_node_encode_property(v34, v39);
    if (v40)
    {
      break;
    }

    v34 = *v34;
    if (!v34)
    {
      goto LABEL_46;
    }
  }

  switch(v40)
  {
    case 1:
      v32 = 22;
      break;
    case 2:
      v32 = 12;
      break;
    case 3:
      v32 = 104;
      break;
    default:
      v32 = 14;
      break;
  }

  expert_log(*(*(v34 + 8) + 16), 0, "%s: failed to encode property node: %d");
LABEL_67:
  _expert_dealloc_type(v3, &_image4_type_decode_context, v64);
  closure_node_list_destroy(a1, &v62);
LABEL_68:
  DEREncoderDestroyAndZero(&v57);
  DEREncoderDestroyAndZero(&v56);
  DEREncoderDestroyAndZero(&v55);
  if (v32 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d");
  }

  return v32;
}

uint64_t _closure_manifest_property_callback(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v7 = *(a4 + 40);
  v8 = *v7;
  fourcc_init(&v41, a1);
  if (a3 == 1)
  {
    fourcc_init(&v39, *(v7 + 8));
    v9 = ":";
  }

  else
  {
    v9 = "";
  }

  v10 = v8 + 64;
  result = expert_log(*(v8 + 16), 2uLL, "recording property for closure computation: %s%s%s", &v39 + 4, v9, &v41 + 4);
  if (*(v8 + 24) == a1)
  {
    if (v8 >= v10)
    {
      goto LABEL_33;
    }

    v46 = 0;
    v45 = 0;
    PropertyData = Img4DecodeGetPropertyData(a2, a1, &v45, &v46);
    if (PropertyData)
    {
      expert_log(*(v8 + 16), 0, "Img4DecodeGetPropertyData: %d", PropertyData);
      v13 = 96;
LABEL_30:
      *(v7 + 64) = v13;
      return 0xFFFFFFFFLL;
    }

    v14 = v46;
    if ((v46 & 3) != 0)
    {
      expert_log(*(v8 + 16), 0, "invalid unique tag list: actual length = %u, expected %% %lu == 0", v46, 4);
      v13 = 94;
      goto LABEL_30;
    }

    v38 = a2;
    v15 = v46 >> 2;
    result = expert_log(*(v8 + 16), 1uLL, "found unique tag list: cnt = %u", v46 >> 2);
    if ((v14 >> 2) > v46 >> 2)
    {
      goto LABEL_33;
    }

    v16 = v45;
    *(v7 + 24) = v15;
    *(v7 + 32) = v16;
    *(v8 + 56) = _unique_entry_get_tag_swapped;
    if (v14)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        v19 = *(v7 + 32);
        v20 = v19 + 4 * *(v7 + 24);
        v44 = 0;
        v43 = 0;
        if (v19 > v19 + v17 || v19 + v17 + 4 > v20)
        {
          goto LABEL_33;
        }

        fourcc_init(&v43, bswap32(*(v19 + 4 * v18)));
        result = expert_log(*(v8 + 16), 2uLL, "unique tag entry[%zu] = %s", v18++, &v43 + 4);
        v17 += 4;
      }

      while (v15 != v18);
    }

    a2 = v38;
  }

  if (*(v7 + 8) == *(v7 + 12))
  {
    goto LABEL_23;
  }

  if (v8 >= v10)
  {
LABEL_33:
    __break(0x5519u);
    return result;
  }

  v22 = closure_node_new_item(v8, &v39);
  if (!v22)
  {
    v13 = 12;
    goto LABEL_30;
  }

  v29 = v22;
  result = closure_node_add(v22, v7 + 48, v23, v24, v25, v26, v27, v28);
  *(v7 + 12) = *(v7 + 8);
  *(v7 + 40) = v29;
LABEL_23:
  if (v8 >= v10)
  {
    goto LABEL_33;
  }

  v30 = closure_node_new(*(v7 + 40), v8, &v41, a2);
  if (!v30)
  {
    *(v7 + 64) = 12;
    expert_log(*(v8 + 16), 0, "failed to allocate closure node");
    return 0xFFFFFFFFLL;
  }

  v37 = v30;
  if (!a3)
  {
    manifest_property_callback(*v8, 0, a1, a2);
  }

  closure_node_add(v37, v7 + 48, v31, v32, v33, v34, v35, v36);
  return 0;
}

uint64_t _closure_create_image4_manifest(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v20 = 0;
  Single = DEREncoderCreateSingle(0);
  v21 = Single;
  if (Single)
  {
    v7 = Single;
    v8 = DEREncoderAddImage4Tag(Single, "IM4M");
    if (v8)
    {
      v9 = v8;
      expert_log(*(a1 + 16), 0, "DEREncoderAddImage4Tag: IM4M: %d");
LABEL_7:
      v11 = v9;
      goto LABEL_8;
    }

    v12 = DEREncoderAddUInt(v7, 0);
    if (v12)
    {
      v9 = v12;
      expert_log(*(a1 + 16), 0, "DEREncoderAddUInt: manifest version: %d");
      goto LABEL_7;
    }

    v14 = DEREncoderAddSetFromEncoder(a2, v7);
    if (v14)
    {
      v15 = v14;
      expert_log(*(a1 + 16), 0, "DEREncoderAddSetFromEncoder: %d", v14);
      v11 = v15;
    }

    else
    {
      v16 = DEREncoderCreateSingle(v14);
      v20 = v16;
      if (v16)
      {
        v17 = v16;
        v18 = DEREncoderAddSequenceFromEncoder(v7, v16);
        if (v18)
        {
          v19 = v18;
          expert_log(*(a1 + 16), 0, "DEREncoderAddSequenceFromEncoder: %d", v18);
          v11 = v19;
        }

        else
        {
          v11 = 0;
          *a3 = v17;
          v20 = 0;
        }
      }

      else
      {
        expert_log(*(a1 + 16), 0, "DEREncoderCreate: %d", 0);
        v11 = 0;
      }
    }
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = 2;
    expert_log(v10, 0, "DEREncoderCreate: %d", 2);
  }

LABEL_8:
  DEREncoderDestroyAndZero(&v21);
  DEREncoderDestroyAndZero(&v20);
  return v11;
}

uint64_t img4_nonce_domain_get_from_handle(unsigned int a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  else
  {
    return _cryptex1_domains[a1];
  }
}

uint64_t _chip_expert_query_property_BOOL(uint64_t a1, uint64_t a2, char **a3, BOOL *a4)
{
  if (a3 == &_property_iuob)
  {

    return expert_compute_eieiou_BOOL(a1, a2, a4);
  }

  else
  {
    v6 = **(a1 + 16);
    if (chip_instance_check(v6, a3))
    {
      chip_instance_get_BOOL(v6, a3, a4);
      return 0;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t _chip_expert_query_property_uint32(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v6 = **(a1 + 16);
  if (!chip_instance_check(v6, a3))
  {
    return 2;
  }

  chip_instance_get_uint32(v6, a3, a4);
  return 0;
}

uint64_t _chip_expert_query_property_uint64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = **(a1 + 16);
  if (!chip_instance_check(v6, a3))
  {
    return 2;
  }

  chip_instance_get_uint64(v6, a3, a4);
  return 0;
}

uint64_t _chip_expert_query_property_digest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = **(a1 + 16);
  if (!chip_instance_check(v6, a3))
  {
    return 2;
  }

  chip_instance_get_digest(v6, a3, a4);
  return 0;
}

uint64_t _chip_expert_query_property_version(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = **(a1 + 16);
  if (!chip_instance_check(v6, a3))
  {
    return 2;
  }

  chip_instance_get_version(v6, a3, a4);
  return 0;
}

void __panic_npx_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9 = 0xAAAAAAAAAAAAAAAALL;
  bzero(__str, 0x800uLL);
  va_copy(v9, va);
  vsnprintf(__str, 0x800uLL, "panic: should never be called", va);
  _os_crash();
  __break(1u);
}

void *closure_node_list_destroy(uint64_t a1, void **a2)
{
  result = *a2;
  v5 = result;
  if (result)
  {
    do
    {
      v4 = *result;
      closure_node_remove(result, a2);
      closure_node_destroy(&v5);
      v5 = v4;
      result = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t closure_node_remove(uint64_t a1, void *a2)
{
  result = expert_log(*(*(a1 + 8) + 16), 2uLL, "%s: removing node", (a1 + 28));
  v5 = *a2;
  if (*a2 == a1)
  {
    v8 = *v5;
    *a2 = v8;
    v6 = a2;
    if (v8)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  do
  {
    v6 = v5;
    v5 = *v5;
  }

  while (v5 != a1);
  v7 = *v5;
  *v6 = v7;
  if (!v7)
  {
LABEL_4:
    a2[1] = v6;
  }

LABEL_5:
  *a1 = 0;
  return result;
}

uint64_t *closure_node_destroy(uint64_t *result)
{
  v1 = *result;
  v4 = v1;
  if (v1)
  {
    if (*v1)
    {
      __panic_npx("panic: closure node deallocated while still in list");
    }

    v2 = result;
    v3 = *(*(v1 + 8) + 16);
    DEREncoderDestroyAndZero((v1 + 64));
    result = _expert_dealloc_type(v3, &_image4_type_closure_node, &v4);
    *v2 = 0;
  }

  return result;
}

void *closure_node_new(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v8 = _expert_alloc_type(*(a2 + 16), &_image4_type_closure_node);
  v9 = v8;
  if (v8)
  {
    *v8 = 0;
    v8[1] = a2;
    v8[2] = a1;
    fourcc_copy((v8 + 3), a3);
    v10 = *(a4 + 16);
    *(v9 + 5) = *a4;
    v9[7] = v10;
    v9[8] = 0;
  }

  else
  {
    expert_log(*(a2 + 16), 0, "failed to allocate node");
  }

  return v9;
}

void *closure_node_new_item(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 16);
  v10 = 0;
  v5 = _expert_alloc_type(v4, &_image4_type_closure_node);
  v11 = v5;
  if (!v5)
  {
    expert_log(*(a1 + 16), 0, "failed to allocate item node", v10);
LABEL_6:
    _expert_dealloc_type(v4, &_image4_type_closure_node, &v11);
    DEREncoderDestroyAndZero(&v10);
    return v11;
  }

  v6 = v5;
  Single = DEREncoderCreateSingle(1);
  v10 = Single;
  if (!Single)
  {
    expert_log(*(a1 + 16), 0, "failed to allocate DER encoder", 0);
    goto LABEL_6;
  }

  v8 = Single;
  v6[1] = a1;
  v6[2] = 0;
  fourcc_copy((v6 + 3), a2);
  v6[5] = 0;
  v6[6] = 0;
  v6[7] = 0;
  v6[8] = v8;
  return v6;
}

uint64_t closure_node_add(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a1[2])
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12[14] = v10;
    v12[15] = v10;
    v12[12] = v10;
    v12[13] = v10;
    v12[10] = v10;
    v12[11] = v10;
    v12[8] = v10;
    v12[9] = v10;
    v12[6] = v10;
    v12[7] = v10;
    v12[4] = v10;
    v12[5] = v10;
    v12[2] = v10;
    v12[3] = v10;
    v12[0] = v10;
    v12[1] = v10;
    _closure_node_get_value_string(a1, 0, v12, a4, a5, a6, a7, a8);
    result = expert_log(*(a1[1] + 16), 2uLL, "%s: inserting node: %s");
  }

  else
  {
    result = expert_log(*(a1[1] + 16), 2uLL, "%s: inserting item node");
  }

  *a1 = 0;
  **(a2 + 8) = a1;
  *(a2 + 8) = a1;
  return result;
}

char *_closure_node_get_value_string(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[13] = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 24);
  *v24 = xmmword_298EF8E10;
  memset(&v24[2], 170, 88);
  memset(__n, 0, sizeof(__n));
  *v22 = 0;
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (a1 + 40);
  }

  v12 = v11[2];
  if (v12 <= 3)
  {
    if (v12 == 1)
    {
      if (Img4DecodeGetPropertyBoolean(v11, v10, v24))
      {
        snprintf(a3, 0x100uLL, "[error decoding BOOL %d]");
      }

      else
      {
        snprintf(a3, 0x100uLL, "%d");
      }

      goto LABEL_20;
    }

    if (v12 == 2)
    {
      if (Img4DecodeGetPropertyInteger64(v11, v10, v24, a4, a5, a6, a7, a8))
      {
        snprintf(a3, 0x100uLL, "[error decoding uint %d]");
      }

      else
      {
        snprintf(a3, 0x100uLL, "0x%llx");
      }

      goto LABEL_20;
    }

LABEL_26:
    __panic_npx("panic: unreachable case: %s = 0x%llx", "i4p->type", v12);
  }

  if (v12 == 4)
  {
    if (Img4DecodeGetPropertyData(v11, v10, v22, __n))
    {
      snprintf(a3, 0x100uLL, "[error decoding data %d]");
    }

    else if (*__n < 0x41u)
    {
      digest_init(&__n[4], *v22, *__n);
      digest_print_cstr(&__n[4], a3, v16, v17, v18, v19, v20, v21);
    }

    else
    {
      snprintf(a3, 0x100uLL, "<data: %u bytes>");
    }

    goto LABEL_20;
  }

  if (v12 != 5)
  {
    goto LABEL_26;
  }

  strcpy(a3, "<null>");
LABEL_20:
  v13 = 0;
  do
  {
    if (v13 == 256)
    {
      __break(0x5519u);
    }
  }

  while (a3[v13++]);
  return a3;
}

uint64_t closure_node_encode_property(uint64_t a1, uint64_t *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  cstring = fourcc_get_cstring(a1 + 24);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v10 = cstring;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[14] = v11;
  v15[15] = v11;
  v15[12] = v11;
  v15[13] = v11;
  v15[10] = v11;
  v15[11] = v11;
  v15[8] = v11;
  v15[9] = v11;
  v15[6] = v11;
  v15[7] = v11;
  v15[4] = v11;
  v15[5] = v11;
  v15[2] = v11;
  v15[3] = v11;
  if (!a2)
  {
    a2 = (a1 + 40);
  }

  v15[0] = v11;
  v15[1] = v11;
  _closure_node_get_value_string(a1, a2, v15, v5, v6, v7, v8, v9);
  v12 = *(a1 + 16);
  v13 = *(v12 + 64);
  expert_log(*(*(a1 + 8) + 16), 2uLL, "%s: encoding closure property: p = %s, item = %s, type = %llx, val = %s", (a1 + 28), (a1 + 28), (v12 + 28), a2[2], v15);
  return DEREncoderAddImage4Property(v13, v10, a2);
}

size_t closure_node_encode_item(uint64_t a1, uint64_t *a2)
{
  cstring = fourcc_get_cstring(a1 + 24);
  if (*(a1 + 16))
  {
    return 0;
  }

  v6 = cstring;
  expert_log(*(*(a1 + 8) + 16), 2uLL, "%s: encoding closure item: %s", (a1 + 28), cstring);
  v7 = *(a1 + 64);

  return DEREncoderEncodeImage4Dictionary(a2, v6, v7);
}

uint64_t odometer_policy_get_chip_property(uint64_t result, unint64_t a2)
{
  v2 = *(result + 16);
  if (v2 < 0)
  {
    return 0;
  }

  v3 = a2 + v2;
  if (v3 < a2 + 264 && v3 >= a2)
  {
    return *v3;
  }

  __break(0x5519u);
  return result;
}

uint64_t odometer_policy_enforce(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1[1];
  if (v10)
  {
    if (v10 == 2)
    {
      if (*(a2 + 440) == 1 && *(a2 + 968) == 1)
      {
        v11 = *a2;
        name = chip_get_name(*(a2 + 16));
        v22 = *a1;
        v12 = "odometer[%s:%s]: manifest has mix-n-match entitlement and environment allows mix-n-match; relaxing chain integrity policy";
        goto LABEL_11;
      }

      if (expert_query_chip_boot(*a2, *(a2 + 16)))
      {
        v11 = *a2;
        name = chip_get_name(*(a2 + 16));
        v22 = *a1;
        v12 = "odometer[%s:%s]: expert does not boot chip; relaxing chain integrity policy";
        goto LABEL_11;
      }
    }

    else
    {
      if (v10 != 1)
      {
        __panic_npx_3(a1, a2, a3, a4, a5, a6, a7, a8, "odp->odp_type", v10);
      }

      if (odometer_check_fuse(a2, &_odometer_cylinder_mixn_match))
      {
        v11 = *a2;
        name = chip_get_name(*(a2 + 16));
        v22 = *a1;
        v12 = "odometer[%s:%s]: environment allows mix-n-match; relaxing chain integrity policy";
LABEL_11:
        v13 = v11;
LABEL_16:
        expert_log(v13, 1uLL, v12, name, v22);
        return 0;
      }
    }
  }

  if (*(a2 + 441) == 1)
  {
    if (odometer_check_fuse(a2, &_odometer_cylinder_mixn_match))
    {
      v14 = "odometer[%s:%s]: environment allows mix-n-match; relaxing all odometer policy";
LABEL_15:
      v15 = *a2;
      name = chip_get_name(*(a2 + 16));
      v22 = *a1;
      v13 = v15;
      v12 = v14;
      goto LABEL_16;
    }

    if (*(a2 + 442) == 1 && *(a2 + 440) == 1)
    {
      v14 = "odometer[%s:%s]: manifest self-entitled for mix-n-match; relaxing all odometer policy";
      goto LABEL_15;
    }

    v17 = "odometer[%s:%s]: enforcing strict mix-n-match behavior";
  }

  else
  {
    v17 = "odometer[%s:%s]: mix-n-match god mode not set; enforcing strict mix-n-match behavior";
  }

  v18 = *a2;
  v19 = chip_get_name(*(a2 + 16));
  expert_log(v18, 1uLL, v17, v19, *a1);
  v20 = a1[5];

  return v20(a1, a2);
}

uint64_t _buff_destructor_free_prepare(void *a1, rsize_t __n)
{
  result = memset_s(a1, __n, 0, __n);
  if (result)
  {
    __panic_npx("panic: memset_s: %d", result);
  }

  return result;
}

void *buff_init_xfer(void *result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  *a2 = 0;
  *result = v5;
  result[1] = a3;
  result[2] = a4;
  result[4] = a5;
  *a2 = *(a4 + 8);
  return result;
}

void *buff_init_wrap(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = &_buff_destructor_wrap;
  result[4] = 0;
  return result;
}

void *buff_init_alias(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = &_buff_destructor_null;
  result[4] = 0;
  return result;
}

void *buff_init_xfer_signed(void *result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0)
  {
    __panic_npx("panic: integer cast underflow: v = %s, actual = %lld, expected >= 0", "len", a3);
  }

  v5 = *a2;
  *a2 = 0;
  *result = v5;
  result[1] = a3;
  result[2] = a4;
  result[4] = a5;
  *a2 = *(a4 + 8);
  return result;
}

void *buff_init_wrap_signed(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __panic_npx("panic: integer cast underflow: v = %s, actual = %lld, expected >= 0", "len", a3);
  }

  *result = a2;
  result[1] = a3;
  result[2] = &_buff_destructor_wrap;
  result[4] = 0;
  return result;
}

void *buff_xfer(void *result, uint64_t **a2)
{
  v2 = *a2;
  if (*a2 >= *a2 + 1)
  {
    __break(0x5519u);
  }

  else
  {
    v4 = v2[1];
    v3 = v2[2];
    v5 = v2[4];
    v6 = *v2;
    *v2 = 0;
    *result = v6;
    result[1] = v4;
    result[2] = v3;
    result[4] = v5;
    *v2 = *(v3 + 8);
    v2[2] = 0;
    *a2 = 0;
  }

  return result;
}

void *buff_borrow(void *result, void *a2)
{
  *result = *a2;
  result[2] = &_buff_destructor_loanee;
  v2 = a2[2];
  result[1] = a2[1];
  a2[2] = &_buff_destructor_loan;
  a2[3] = v2;
  return result;
}

uint64_t buff_return(uint64_t result, void **a2)
{
  v2 = *a2;
  *(result + 16) = *(result + 24);
  *(result + 24) = 0;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = &_buff_destructor_null;
  *a2 = 0;
  return result;
}

unint64_t *buff_lockdown(unint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  result = **a1;
  if (result > (result + v4[1]) || (result = (*(v4[2] + 16))(), v4[2] = &_buff_destructor_static, v4 >= v4 + 5))
  {
    __break(0x5519u);
  }

  else
  {
    v6 = *v4;
    v7 = *(v4 + 1);
    *(a2 + 32) = v4[4];
    *a2 = v6;
    *(a2 + 16) = v7;
    *a1 = 0;
    return v4;
  }

  return result;
}

const void **buff_copy_out(const void **result, void *__dst, size_t *a3)
{
  v4 = *a3;
  v5 = result[1];
  if (v4 < v5)
  {
    return 0;
  }

  v6 = __dst;
  v7 = result;
  if (*result <= *result + v5)
  {
    result = memcpy(__dst, *result, v5);
    v8 = v7[1];
    if (v8 <= *a3)
    {
      *a3 = v8;
      if (v8)
      {
        return v6;
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t buff_get_length_signed(uint64_t a1)
{
  result = *(a1 + 8);
  if (result < 0)
  {
    __panic_npx("panic: length not expressible as ssize_t: %lu", result);
  }

  return result;
}

unint64_t buff_get_length_uint32(uint64_t a1)
{
  result = *(a1 + 8);
  if (HIDWORD(result))
  {
    __panic_npx("panic: length not expressible as unsigned 32-bit integer: %lu", result);
  }

  return result;
}

void *buff_destroy(void *result)
{
  v1 = *result;
  if (*result)
  {
    if (v1 < v1 + 5)
    {
      v2 = result;
      v3 = v1[2];
      if (!v3)
      {
LABEL_6:
        *v2 = 0;
        return result;
      }

      v5 = *v1;
      v4 = v1[1];
      if (*v1 <= (*v1 + v4))
      {
        v6 = v1[4];
        (*(v3 + 24))(*v1, v1[1], v6);
        result = (*(v1[2] + 32))(v5, v4, v6);
        v1[2] = &_buff_destructor_panic;
        goto LABEL_6;
      }
    }

    __break(0x5519u);
  }

  return result;
}

void *_restore_runtime_alloc(uint64_t a1, int64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = malloc_type_calloc(1uLL, a2, 0x8A375538uLL);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = malloc_type_calloc(1uLL, a2, 0x8709206FuLL);
    if (!result)
    {
      _darwin_runtime_alloc_cold_1(&v4, v5);
    }
  }

  if (a2 < 1)
  {
    __break(0x5519u);
  }

  return result;
}

void __panic_npx_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9 = 0xAAAAAAAAAAAAAAAALL;
  bzero(__str, 0x800uLL);
  va_copy(v9, va);
  vsnprintf(__str, 0x800uLL, "panic: function should never be called: %s", va);
  _os_crash();
  __break(1u);
}

uint64_t _BootPolicyClosureComputeDigest_1(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = **(*(a5 + 32) + 16);
  if (*v9 > a4)
  {
    __panic_npx_0(v9, a2, a1, a4, a5, a6, a7, a8, a4, *v9);
  }

  ccdigest();
  return 0;
}

uint64_t img4_nonce_domain_copy_nonce(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v4 = generic_expert_specialist();
  v19 = 0u;
  memset(v22, 0, sizeof(v22));
  v21 = 0u;
  v20 = 0u;
  v18 = 1;
  DWORD1(v19) = *(a1 + 8);
  memset(&v17[1], 0, 76);
  v17[0] = 1;
  *&v17[5] = DWORD1(v19);
  v16 = 77;
  result = dylib_expert_call_method(v4, 7uLL, &v18, 0x4DuLL, v17, &v16);
  if (result)
  {
    if (result == 45)
    {
      v6 = 19;
    }

    else
    {
      v6 = result;
    }

    v7 = expert_log(v4, 0, "img4_nonce_domain_copy_nonce: %d", v6);
    if (v6 >= 0x6B)
    {
      __panic_npx_2(v7, v8, v9, v10, v11, v12, v13, v14, v6);
    }

    return v6;
  }

  *a2 = 0;
  v15 = *&v17[73];
  if (*&v17[73] <= 0x30u)
  {
    memcpy((a2 + 2), &v17[9], *&v17[73]);
    v6 = 0;
    *(a2 + 52) = v15;
    return v6;
  }

  __break(0x5519u);
  return result;
}

uint64_t img4_nonce_domain_roll_nonce(uint64_t a1)
{
  v2 = generic_expert_specialist();
  v19 = 1;
  v3 = *(a1 + 8);
  v20 = 0;
  v21 = v3;
  v16 = 1;
  v17 = 0;
  v18 = v3;
  v15 = 9;
  v4 = dylib_expert_call_method(v2, 9uLL, &v19, 9uLL, &v16, &v15);
  if (!v4)
  {
    return 0;
  }

  if (v4 == 45)
  {
    v5 = 19;
  }

  else
  {
    v5 = v4;
  }

  v6 = expert_log(v2, 0, "img4_nonce_domain_roll_nonce: %d", v5);
  if (v5 >= 0x6B)
  {
    __panic_npx_2(v6, v7, v8, v9, v10, v11, v12, v13, v5);
  }

  return v5;
}

uint64_t img4_nonce_domain_preroll_nonce(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x29EDCA608];
  v4 = generic_expert_specialist();
  v23 = 0u;
  v29 = 0;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v22 = 1;
  HIDWORD(v23) = *(a1 + 8);
  v18 = 0u;
  v21 = 0;
  v20 = 0u;
  memset(v19, 0, sizeof(v19));
  v17 = 1;
  HIDWORD(v18) = HIDWORD(v23);
  v16 = 105;
  result = dylib_expert_call_method(v4, 0xBuLL, &v22, 0x69uLL, &v17, &v16);
  if (result)
  {
    if (result == 45)
    {
      v6 = 19;
    }

    else
    {
      v6 = result;
    }

    v7 = expert_log(v4, 0, "img4_nonce_domain_preroll_nonce: %d", v6);
    if (v6 >= 0x6B)
    {
      __panic_npx_2(v7, v8, v9, v10, v11, v12, v13, v14, v6);
    }

    return v6;
  }

  *a2 = 0;
  v15 = v20;
  if (v20 <= 0x30)
  {
    memcpy((a2 + 2), v19, v20);
    v6 = 0;
    *(a2 + 52) = v15;
    return v6;
  }

  __break(0x5519u);
  return result;
}

uint64_t img4_nonce_domain_peek_nonce(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v4 = generic_expert_specialist();
  v19 = 0u;
  memset(v22, 0, sizeof(v22));
  v21 = 0u;
  v20 = 0u;
  v18 = 1;
  DWORD1(v19) = *(a1 + 8);
  memset(&v17[1], 0, 76);
  v17[0] = 1;
  *&v17[5] = DWORD1(v19);
  v16 = 77;
  result = dylib_expert_call_method(v4, 8uLL, &v18, 0x4DuLL, v17, &v16);
  if (result)
  {
    if (result == 45)
    {
      v6 = 19;
    }

    else
    {
      v6 = result;
    }

    v7 = expert_log(v4, 0, "img4_nonce_domain_peek_nonce: %d", v6);
    if (v6 >= 0x6B)
    {
      __panic_npx_2(v7, v8, v9, v10, v11, v12, v13, v14, v6);
    }

    return v6;
  }

  *a2 = 0;
  v15 = *&v17[73];
  if (*&v17[73] <= 0x30u)
  {
    memcpy((a2 + 2), &v17[9], *&v17[73]);
    v6 = 0;
    *(a2 + 52) = v15;
    return v6;
  }

  __break(0x5519u);
  return result;
}

char *image4_environment_get_firmware_chip(unsigned int a1, uint64_t a2)
{
  if (a1 > 0x7CF)
  {
    return 0;
  }

  result = image4_environment_resolve(a2);
  if (result == _img4_chip_x86_software_8012)
  {
    return 0;
  }

  return result;
}

char **property_find_from_expert(char **result)
{
  v1 = &__expert_properties[result];
  if (v1 < __chpld_ap_pdi_sha2_384 && v1 >= __expert_properties)
  {
    return *v1;
  }

  __break(0x5519u);
  return result;
}

uint64_t property_find_entitlement(_DWORD *a1)
{
  v5[0] = _property_filter_manifest;
  v5[1] = 0;
  v5[2] = -1;
  do
  {
    v2 = property_iterator_next(v5);
    v3 = v2;
    if (!v2)
    {
      return v3;
    }

    result = _property_filter_expert(v2);
  }

  while (result || *(v3 + 24) != *a1);
  if (v3 < v3 + 104)
  {
    return v3;
  }

  __break(0x5519u);
  return result;
}

uint64_t property_find_from_fourcc(_DWORD *a1, int a2)
{
  v7[0] = 0;
  v7[1] = 0;
  v7[2] = -1;
  if (a2 == 1)
  {
    v3 = _property_filter_object;
  }

  else
  {
    if (a2)
    {
      goto LABEL_6;
    }

    v3 = _property_filter_manifest;
  }

  v7[0] = v3;
  while (1)
  {
LABEL_6:
    v4 = property_iterator_next(v7);
    v5 = v4;
    if (!v4)
    {
      return v5;
    }

    result = _property_filter_constraint(v4);
    if (result)
    {
      result = _property_filter_anti_replay(v5);
      if (result)
      {
        continue;
      }
    }

    if (*(v5 + 24) == *a1)
    {
      break;
    }
  }

  if (v5 < v5 + 104)
  {
    return v5;
  }

  __break(0x5519u);
  return result;
}

BOOL property_equal(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == a2 || *(a1 + 8) == a2 || *(a2 + 8) == a1)
  {
    return 1;
  }

  return *(a2 + 24) == *(a1 + 24);
}

BOOL property_equal_fourcc(_BOOL8 result, int a2)
{
  if (result)
  {
    return *(result + 24) == a2;
  }

  return result;
}

BOOL property_imposable(uint64_t a1, uint64_t a2)
{
  digest = chip_get_digest(a2);
  if (digest && (digest == a1 || *(a1 + 8) == digest || digest[1] == a1 || *(digest + 6) == *(a1 + 24)))
  {
    return 1;
  }

  if (*(a1 + 16) == 34 || *(a1 + 48) == &_property_constraint_rp)
  {
    return 0;
  }

  return chip_check_entitlement(a2, a1) != 0;
}

uint64_t property_constrain_BOOL(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = *a3;
  v5 = *a4;
  v6 = *(a1 + 48);
  v7 = *v6;
  if (*v6 > 3)
  {
    if (v7 > 5)
    {
      if (v7 == 6)
      {
        goto LABEL_37;
      }

      if (v7 == 8)
      {
        __panic_npx("panic: property is not constrainable: %s", *a1);
      }
    }

    else
    {
      if (v7 == 4)
      {
        v8 = v4 < v5;
        if (v4 >= v5)
        {
          goto LABEL_37;
        }

        goto LABEL_28;
      }

      if (v7 == 5)
      {
        v8 = v4 == v5;
        if (v4 != v5)
        {
          goto LABEL_37;
        }

        goto LABEL_28;
      }
    }

    goto LABEL_56;
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      v8 = v4 != v5;
      if (v4 == v5)
      {
        goto LABEL_37;
      }

      goto LABEL_28;
    }

    if (v7 == 1)
    {
      if (v4 < v5)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0xFFFFFFFFLL;
      }

      if (!v8)
      {
        goto LABEL_37;
      }

      goto LABEL_28;
    }

LABEL_56:
    v14 = "p->p_constraint->pc_code";
LABEL_55:
    __panic_npx("panic: unreachable case: %s = 0x%llx", v14, v7);
  }

  if (v7 != 2)
  {
    if (v7 == 3)
    {
      v8 = v4 <= v5;
      if (v4 > v5)
      {
        goto LABEL_37;
      }

      goto LABEL_28;
    }

    goto LABEL_56;
  }

  if (v4 <= v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_37:
    v7 = *(a1 + 56);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v11 = "chip";
        v12 = "manifest";
        goto LABEL_52;
      }

      if (v7 == 1)
      {
        v12 = "object";
        v11 = "object";
LABEL_52:
        expert_log(a2, 1uLL, "%s: enforcing[%s %s %s]: 0x%x %s 0x%x: success", (a1 + 28), v12, *(v6 + 8), v11, v4, *(v6 + 8), v5);
        return 0;
      }
    }

    else
    {
      if ((v7 - 2) < 2)
      {
        v11 = "manifest properties";
        if (v7 == 3)
        {
          v11 = "object properties";
        }

        v12 = "certificate";
        goto LABEL_52;
      }

      if (v7 == 6)
      {
        v11 = "none";
        v12 = "pseudo";
        goto LABEL_52;
      }
    }

    goto LABEL_54;
  }

LABEL_28:
  v7 = *(a1 + 56);
  if (v7 > 1)
  {
    if ((v7 - 2) < 2)
    {
      v9 = "manifest properties";
      if (v7 == 3)
      {
        v9 = "object properties";
      }

      v10 = "certificate";
      goto LABEL_48;
    }

    if (v7 == 6)
    {
      v9 = "none";
      v10 = "pseudo";
      goto LABEL_48;
    }

LABEL_54:
    v14 = "p->p_container";
    goto LABEL_55;
  }

  if (!v7)
  {
    v9 = "chip";
    v10 = "manifest";
    goto LABEL_48;
  }

  if (v7 != 1)
  {
    goto LABEL_54;
  }

  v10 = "object";
  v9 = "object";
LABEL_48:
  expert_log(a2, 0, "%s: enforcing[%s %s %s]: 0x%x %s 0x%x: %d", (a1 + 28), v10, *(v6 + 8), v9, v4, *(v6 + 8), *a4, v8);
  return v8;
}

uint64_t property_constrain_uint32(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a3;
  v5 = *a4;
  v6 = *(a1 + 48);
  v7 = *v6;
  if (*v6 > 3)
  {
    if (v7 > 5)
    {
      if (v7 == 6)
      {
        goto LABEL_37;
      }

      if (v7 == 8)
      {
        __panic_npx("panic: property is not constrainable: %s", *a1);
      }
    }

    else
    {
      if (v7 == 4)
      {
        v8 = v4 < v5;
        if (v4 >= v5)
        {
          goto LABEL_37;
        }

        goto LABEL_28;
      }

      if (v7 == 5)
      {
        v8 = v4 == v5;
        if (v4 != v5)
        {
          goto LABEL_37;
        }

        goto LABEL_28;
      }
    }

    goto LABEL_56;
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      v8 = v4 != v5;
      if (v4 == v5)
      {
        goto LABEL_37;
      }

      goto LABEL_28;
    }

    if (v7 == 1)
    {
      if (v4 < v5)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0xFFFFFFFFLL;
      }

      if (!v8)
      {
        goto LABEL_37;
      }

      goto LABEL_28;
    }

LABEL_56:
    v14 = "p->p_constraint->pc_code";
LABEL_55:
    __panic_npx("panic: unreachable case: %s = 0x%llx", v14, v7);
  }

  if (v7 != 2)
  {
    if (v7 == 3)
    {
      v8 = v4 <= v5;
      if (v4 > v5)
      {
        goto LABEL_37;
      }

      goto LABEL_28;
    }

    goto LABEL_56;
  }

  if (v4 <= v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_37:
    v7 = *(a1 + 56);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v11 = "chip";
        v12 = "manifest";
        goto LABEL_52;
      }

      if (v7 == 1)
      {
        v12 = "object";
        v11 = "object";
LABEL_52:
        expert_log(a2, 1uLL, "%s: enforcing[%s %s %s]: 0x%x %s 0x%x: success", (a1 + 28), v12, *(v6 + 8), v11, v4, *(v6 + 8), v5);
        return 0;
      }
    }

    else
    {
      if ((v7 - 2) < 2)
      {
        v11 = "manifest properties";
        if (v7 == 3)
        {
          v11 = "object properties";
        }

        v12 = "certificate";
        goto LABEL_52;
      }

      if (v7 == 6)
      {
        v11 = "none";
        v12 = "pseudo";
        goto LABEL_52;
      }
    }

    goto LABEL_54;
  }

LABEL_28:
  v7 = *(a1 + 56);
  if (v7 > 1)
  {
    if ((v7 - 2) < 2)
    {
      v9 = "manifest properties";
      if (v7 == 3)
      {
        v9 = "object properties";
      }

      v10 = "certificate";
      goto LABEL_48;
    }

    if (v7 == 6)
    {
      v9 = "none";
      v10 = "pseudo";
      goto LABEL_48;
    }

LABEL_54:
    v14 = "p->p_container";
    goto LABEL_55;
  }

  if (!v7)
  {
    v9 = "chip";
    v10 = "manifest";
    goto LABEL_48;
  }

  if (v7 != 1)
  {
    goto LABEL_54;
  }

  v10 = "object";
  v9 = "object";
LABEL_48:
  expert_log(a2, 0, "%s: enforcing[%s %s %s]: 0x%x %s 0x%x: %d", (a1 + 28), v10, *(v6 + 8), v9, v4, *(v6 + 8), *a4, v8);
  return v8;
}

uint64_t property_constrain_uint64(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *a3;
  v5 = *a4;
  v6 = *(a1 + 48);
  v7 = *v6;
  if (*v6 > 3)
  {
    if (v7 > 5)
    {
      if (v7 == 6)
      {
        goto LABEL_37;
      }

      if (v7 == 8)
      {
        __panic_npx("panic: property is not constrainable: %s", *a1);
      }
    }

    else
    {
      if (v7 == 4)
      {
        v8 = v4 < v5;
        if (v4 >= v5)
        {
          goto LABEL_37;
        }

        goto LABEL_28;
      }

      if (v7 == 5)
      {
        v8 = v4 == v5;
        if (v4 != v5)
        {
          goto LABEL_37;
        }

        goto LABEL_28;
      }
    }

    goto LABEL_56;
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      v8 = v4 != v5;
      if (v4 == v5)
      {
        goto LABEL_37;
      }

      goto LABEL_28;
    }

    if (v7 == 1)
    {
      if (v4 < v5)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0xFFFFFFFFLL;
      }

      if (!v8)
      {
        goto LABEL_37;
      }

      goto LABEL_28;
    }

LABEL_56:
    v14 = "p->p_constraint->pc_code";
LABEL_55:
    __panic_npx("panic: unreachable case: %s = 0x%llx", v14, v7);
  }

  if (v7 != 2)
  {
    if (v7 == 3)
    {
      v8 = v4 <= v5;
      if (v4 > v5)
      {
        goto LABEL_37;
      }

      goto LABEL_28;
    }

    goto LABEL_56;
  }

  if (v4 <= v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_37:
    v7 = *(a1 + 56);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v11 = "chip";
        v12 = "manifest";
        goto LABEL_52;
      }

      if (v7 == 1)
      {
        v12 = "object";
        v11 = "object";
LABEL_52:
        expert_log(a2, 1uLL, "%s: enforcing[%s %s %s]: 0x%llx %s 0x%llx: success", (a1 + 28), v12, *(v6 + 8), v11, v4, *(v6 + 8), v5);
        return 0;
      }
    }

    else
    {
      if ((v7 - 2) < 2)
      {
        v11 = "manifest properties";
        if (v7 == 3)
        {
          v11 = "object properties";
        }

        v12 = "certificate";
        goto LABEL_52;
      }

      if (v7 == 6)
      {
        v11 = "none";
        v12 = "pseudo";
        goto LABEL_52;
      }
    }

    goto LABEL_54;
  }

LABEL_28:
  v7 = *(a1 + 56);
  if (v7 > 1)
  {
    if ((v7 - 2) < 2)
    {
      v9 = "manifest properties";
      if (v7 == 3)
      {
        v9 = "object properties";
      }

      v10 = "certificate";
      goto LABEL_48;
    }

    if (v7 == 6)
    {
      v9 = "none";
      v10 = "pseudo";
      goto LABEL_48;
    }

LABEL_54:
    v14 = "p->p_container";
    goto LABEL_55;
  }

  if (!v7)
  {
    v9 = "chip";
    v10 = "manifest";
    goto LABEL_48;
  }

  if (v7 != 1)
  {
    goto LABEL_54;
  }

  v10 = "object";
  v9 = "object";
LABEL_48:
  expert_log(a2, 0, "%s: enforcing[%s %s %s]: 0x%llx %s 0x%llx: %d", (a1 + 28), v10, *(v6 + 8), v9, v4, *(v6 + 8), *a4, v8);
  return v8;
}

BOOL property_constrain_digest(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = *MEMORY[0x29EDCA608];
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  digest_print_cstr(a3, v34, a3, a4, a5, a6, a7, a8);
  digest_print_cstr(a4, v32, v12, v13, v14, v15, v16, v17);
  v18 = digest_compare(a3, a4);
  v19 = v18;
  v20 = *(a3 + 72);
  v21 = *(a4 + 72);
  v22 = *(a1 + 48);
  v23 = *v22;
  if (*v22 <= 4)
  {
    if (v23)
    {
      if ((v23 - 1) < 4)
      {
        __panic_npx("panic: non-sensical property digest specification: %s", *a1);
      }

      goto LABEL_55;
    }

    if (v20 == v21)
    {
LABEL_12:
      v23 = *(a1 + 56);
      if (v23 <= 1)
      {
        if (!v23)
        {
          v25 = "manifest";
          goto LABEL_24;
        }

        if (v23 == 1)
        {
          v25 = "object";
          goto LABEL_24;
        }
      }

      else
      {
        if ((v23 - 2) < 2)
        {
          v25 = "certificate";
LABEL_24:
          expert_log(a2, 1uLL, "%s: enforcing length[%s %s %s]: %lu %s %lu: success", a1 + 28, v25);
          goto LABEL_29;
        }

        if (v23 == 6)
        {
          v25 = "pseudo";
          goto LABEL_24;
        }
      }

LABEL_53:
      v31 = "p->p_container";
      goto LABEL_56;
    }
  }

  else
  {
    if (v23 != 5)
    {
      v19 = 0;
      if (v23 != 6)
      {
        if (v23 == 8)
        {
          __panic_npx("panic: property is not constrainable: %s", *a1);
        }

LABEL_55:
        v31 = "p->p_constraint->pc_code";
LABEL_56:
        __panic_npx("panic: unreachable case: %s = 0x%llx", v31, v23);
      }

      goto LABEL_12;
    }

    v19 = v18 == 0;
    if (v20 != v21)
    {
      goto LABEL_12;
    }
  }

  v23 = *(a1 + 56);
  if (v23 <= 1)
  {
    if (v23)
    {
      if (v23 != 1)
      {
        goto LABEL_53;
      }

      v24 = "object";
    }

    else
    {
      v24 = "manifest";
    }
  }

  else if ((v23 - 2) >= 2)
  {
    if (v23 != 6)
    {
      goto LABEL_53;
    }

    v24 = "pseudo";
  }

  else
  {
    v24 = "certificate";
  }

  expert_log(a2, 0, "%s: enforcing length[%s %s %s]: %lu %s %lu: %d", a1 + 28, v24, v22[1]);
LABEL_29:
  v26 = *(a1 + 56);
  if (!v19)
  {
    if (v26 <= 1)
    {
      if (v26)
      {
        if (v26 != 1)
        {
          goto LABEL_54;
        }

        v29 = "object";
      }

      else
      {
        v29 = "manifest";
      }
    }

    else if ((v26 - 2) >= 2)
    {
      if (v26 != 6)
      {
        goto LABEL_54;
      }

      v29 = "pseudo";
    }

    else
    {
      v29 = "certificate";
    }

    expert_log(a2, 1uLL, "%s: enforcing[%s %s %s]: %s %s %s: success", a1 + 28, v29);
    return v19;
  }

  if (v26 <= 1)
  {
    if (!v26)
    {
      v27 = (*(a1 + 48) + 8);
      v28 = "manifest";
      goto LABEL_45;
    }

    if (v26 == 1)
    {
      v27 = (*(a1 + 48) + 8);
      v28 = "object";
      goto LABEL_45;
    }

LABEL_54:
    __panic_npx("panic: unreachable case: %s = 0x%llx", "p->p_container", *(a1 + 56));
  }

  if ((v26 - 2) >= 2)
  {
    if (v26 == 6)
    {
      v27 = (*(a1 + 48) + 8);
      v28 = "pseudo";
      goto LABEL_45;
    }

    goto LABEL_54;
  }

  v27 = (*(a1 + 48) + 8);
  v28 = "certificate";
LABEL_45:
  expert_log(a2, 0, "%s: enforcing[%s %s %s]: %s %s %s: %d", a1 + 28, v28, *v27);
  return v19;
}

uint64_t property_constrain_version(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = **(a1 + 48);
  if (v6 <= 2)
  {
    if (v6)
    {
      if (v6 != 1)
      {
        if (v6 == 2)
        {
          v8 = 1;
          v7 = -1;
          goto LABEL_16;
        }

        goto LABEL_47;
      }

      v8 = 0;
      v7 = -1;
      v6 = 2;
    }

    else
    {
      v8 = 0;
      v7 = 1;
    }
  }

  else
  {
    if (v6 <= 4)
    {
      if (v6 == 3)
      {
        v8 = 0;
        v6 = 1;
        v7 = 1;
      }

      else
      {
        v7 = 1;
        v8 = 1;
        v6 = 1;
      }

      goto LABEL_16;
    }

    if (v6 != 5)
    {
      if (v6 == 6)
      {
        v7 = 0;
        v8 = 0;
        v6 = 0;
        goto LABEL_16;
      }

LABEL_47:
      __panic_npx("panic: illegal property definition: %s", *a1);
    }

    v8 = 0;
    v7 = 1;
    v6 = 3;
  }

LABEL_16:
  v9 = version_compare(a3, a4);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  if (v9 == v6)
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  v12 = *(a1 + 56);
  if (!v11)
  {
    if (v12 <= 1)
    {
      if (v12)
      {
        if (v12 != 1)
        {
          goto LABEL_46;
        }

        v15 = "object";
      }

      else
      {
        v15 = "manifest";
      }
    }

    else if ((v12 - 2) >= 2)
    {
      if (v12 != 6)
      {
        goto LABEL_46;
      }

      v15 = "pseudo";
    }

    else
    {
      v15 = "certificate";
    }

    expert_log(a2, 1uLL, "%s: enforcing[%s %s %s]: %s %s %s: success", a1 + 28, v15);
    return v11;
  }

  if (v12 <= 1)
  {
    if (!v12)
    {
      v13 = (*(a1 + 48) + 8);
      v14 = "manifest";
      goto LABEL_40;
    }

    if (v12 == 1)
    {
      v13 = (*(a1 + 48) + 8);
      v14 = "object";
      goto LABEL_40;
    }

LABEL_46:
    __panic_npx("panic: unreachable case: %s = 0x%llx", "p->p_container", v12);
  }

  if ((v12 - 2) >= 2)
  {
    if (v12 == 6)
    {
      v13 = (*(a1 + 48) + 8);
      v14 = "pseudo";
      goto LABEL_40;
    }

    goto LABEL_46;
  }

  v13 = (*(a1 + 48) + 8);
  v14 = "certificate";
LABEL_40:
  expert_log(a2, 0, "%s: enforcing[%s %s %s]: %s %s %s: %d", a1 + 28, v14, *v13);
  return v11;
}

char *property_print_value(uint64_t a1, unint64_t a2, char *__str, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = **(a1 + 40);
  if (v9 <= 1)
  {
    if (v9 <= 1)
    {
      snprintf(__str, 0x80uLL, "0x%x");
      goto LABEL_11;
    }

LABEL_16:
    __panic_npx("panic: unreachable case: %s = 0x%llx", "p->p_type->pt_switchable", v9);
  }

  if (v9 == 2)
  {
    snprintf(__str, 0x80uLL, "0x%llx");
    goto LABEL_11;
  }

  if (v9 == 3)
  {
    v9 = a2 + 80;
    if (a2 + 80 >= a2)
    {
      digest_print_cstr(a2, __str, __str, a4, a5, a6, a7, a8);
      goto LABEL_11;
    }

LABEL_15:
    __break(0x5519u);
    goto LABEL_16;
  }

  if (v9 != 4)
  {
    goto LABEL_16;
  }

  snprintf(__str, 0x80uLL, "%s");
LABEL_11:
  v9 = 0;
  do
  {
    if (v9 == 256)
    {
      goto LABEL_15;
    }
  }

  while (__str[v9++]);
  return __str;
}

uint64_t _chain_enforceable(const char **a1, uint64_t a2)
{
  if (odometer_policy_get_chip_property(a1, *(a2 + 16)))
  {
    if (*(a2 + 528))
    {
      v4 = *a2;
      name = chip_get_name(*(a2 + 16));
      v13 = *a1;
      v5 = "odometer[%s:%s]: boot manifest hash is caller-supplied";
    }

    else
    {
      chip_boot = odometer_query_chip_boot(a2);
      v4 = *a2;
      v10 = chip_get_name(*(a2 + 16));
      if (chip_boot)
      {
        expert_log(v4, 1uLL, "odometer[%s:%s]: policy is enforceable", v10, *a1);
        return 0;
      }

      name = v10;
      v13 = *a1;
      v5 = "odometer[%s:%s]: environment is a first-stage booter";
    }

    v6 = 1;
    expert_log(v4, 1uLL, v5, name, v13);
  }

  else
  {
    v7 = *a2;
    v8 = chip_get_name(*(a2 + 16));
    v14 = *a1;
    v6 = 1;
    expert_log(v7, 1uLL, "odometer[%s:%s]: chip has no property for policy", v8, v14);
  }

  return v6;
}

uint64_t _chain_enforce(const char **a1, uint64_t *a2)
{
  v19[13] = *MEMORY[0x29EDCA608];
  v4 = a2[1];
  v5 = a2[2];
  chip_property = odometer_policy_get_chip_property(a1, v5);
  *v19 = xmmword_298EF8F18;
  memset(&v19[2], 170, 88);
  manifest_measure(v4, v5, v19);
  v7 = odometer_enforce_property(a2, a1, chip_property, v19);
  v8 = *a2;
  name = chip_get_name(a2[2]);
  if (v7)
  {
    v10 = expert_log(v8, 0, "odometer[%s:%s]: boot chain integrity violation: %d", name, *a1, v7);
    if (v7 >= 0x6B)
    {
      __panic_npx_2(v10, v11, v12, v13, v14, v15, v16, v17, v7);
    }
  }

  else
  {
    expert_log(v8, 1uLL, "odometer[%s:%s]: manifest is consistent with boot chain", name, *a1);
  }

  return v7;
}

uint64_t generic_expert_specialist()
{
  bootstrap = expert_get_bootstrap();
  expert_runtime_entry(bootstrap);
  result = __plat4_mem;
  if (!__plat4_mem)
  {
    __panic_npx("panic: specialist not set after runtime entry");
  }

  return result;
}

uint64_t generic_expert_current()
{
  if (off_2A18AB7A8)
  {
    return off_2A18AB7A8();
  }

  else
  {
    return generic_expert_specialist();
  }
}

uint64_t generic_expert_set_specialist(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 24);
  result = _expert_assert(a1, 0x67656E78u, "set specialist");
  *v5 = a2;
  v5[3] = a3;
  return result;
}

uint64_t generic_expert_set_current_resolver(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  result = _expert_assert(a1, 0x67656E78u, "set resolver");
  *(v3 + 16) = a2;
  return result;
}

uint64_t generic_expert_set_supervisor(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  result = _expert_assert(a1, 0x67656E78u, "set supervisor");
  *(v3 + 8) = a2;
  return result;
}

char **_generic_expert_init(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(v1 + 24);
  v9[0] = _property_filter_chip_instance;
  v9[1] = 0;
  v9[2] = -1;
  v4 = *v1;
  result = property_iterator_next(v9);
  if (result)
  {
    v6 = result;
    while (1)
    {
      v12 = 0;
      v11 = 0;
      v10 = 0;
      memset(v15, 0, 80);
      v14 = 0x3E800000000;
      memset(v13, 0, sizeof(v13));
      v7 = *v6[5];
      if (v7 <= 1)
      {
        if (v7)
        {
          if (v7 != 1)
          {
            goto LABEL_35;
          }

          property_digest = expert_query_property_uint32(v4, v3, v6, &v11);
        }

        else
        {
          property_digest = expert_query_property_BOOL(v4, v3, v6, &v12);
        }
      }

      else
      {
        switch(v7)
        {
          case 2:
            property_digest = expert_query_property_uint64(v4, v3, v6, &v10);
            break;
          case 3:
            property_digest = expert_query_property_digest(v4, v3, v6, v15);
            break;
          case 4:
            property_digest = expert_query_property_version(v4, v3, v6, v13);
            break;
          default:
            goto LABEL_35;
        }
      }

      if (property_digest > 18)
      {
        break;
      }

      if (property_digest)
      {
        if (property_digest != 2)
        {
          goto LABEL_36;
        }

LABEL_20:
        expert_log(v4, 2uLL, "failed to query expert: expert = %s, p = %s, fourcc = %s, code = %llu: %d", *v4, *v6, v6 + 28, v6[2], property_digest);
        goto LABEL_21;
      }

      v7 = *v6[5];
      if (v7 <= 1)
      {
        if (v7)
        {
          if (v7 != 1)
          {
LABEL_35:
            __panic_npx("panic: unreachable case: %s = 0x%llx", "p->p_type->pt_switchable", v7);
          }

          chip_instance_set_uint32(v2 + 40, v6, &v11);
        }

        else
        {
          chip_instance_set_BOOL(v2 + 40, v6, &v12);
        }
      }

      else
      {
        switch(v7)
        {
          case 2:
            chip_instance_set_uint64(v2 + 40, v6, &v10);
            break;
          case 3:
            chip_instance_set_digest(v2 + 40, v6, v15);
            break;
          case 4:
            chip_instance_set_version(v2 + 40, v6, v13);
            break;
          default:
            goto LABEL_35;
        }
      }

LABEL_21:
      result = property_iterator_next(v9);
      v6 = result;
      if (!result)
      {
        goto LABEL_34;
      }
    }

    if (property_digest != 45 && property_digest != 19)
    {
LABEL_36:
      __panic_npx("panic: failed to query expert: expert = %s, p = %s, fourcc = %s, code = %llu: %d", *v4, *v6, v6 + 28, v6[2], property_digest);
    }

    goto LABEL_20;
  }

LABEL_34:
  *(v2 + 32) = v2 + 40;
  return result;
}

uint64_t _generic_expert_query_property_BOOL(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 16) + 32);
  if (!chip_instance_check(v6, a3))
  {
    return 2;
  }

  chip_instance_get_BOOL(v6, a3, a4);
  return 0;
}

uint64_t _generic_expert_query_property_uint32(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v6 = *(*(a1 + 16) + 32);
  if (!chip_instance_check(v6, a3))
  {
    return 2;
  }

  chip_instance_get_uint32(v6, a3, a4);
  return 0;
}

uint64_t _generic_expert_query_property_uint64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(*(a1 + 16) + 32);
  if (!chip_instance_check(v6, a3))
  {
    return 2;
  }

  chip_instance_get_uint64(v6, a3, a4);
  return 0;
}

uint64_t _generic_expert_query_property_digest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a1 + 16) + 32);
  if (!chip_instance_check(v6, a3))
  {
    return 2;
  }

  chip_instance_get_digest(v6, a3, a4);
  return 0;
}

uint64_t _generic_expert_query_property_version(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a1 + 16) + 32);
  if (!chip_instance_check(v6, a3))
  {
    return 2;
  }

  chip_instance_get_version(v6, a3, a4);
  return 0;
}

uint64_t img4_runtime_get_expert(char *a1)
{
  if (a1 == &_img4_runtime_default || a1 == &_img4_runtime_restore)
  {
    v2 = (a1 + 88);
  }

  else
  {
    v3 = *(a1 + 1);
    if (v3 == off_2A1F23D48)
    {
      v2 = &off_2A1F23D98;
    }

    else
    {
      if (v3 != off_2A1F26A28)
      {
        return 0;
      }

      v2 = &off_2A1F26A78;
    }
  }

  return (*v2)();
}

uint64_t img4_runtime_check_custom_BOOL(uint64_t a1)
{
  v1 = _img4_runtime_default;
  v2 = 1;
  while (*(a1 + 56) != *(v1 + 7))
  {
    v3 = v2;
    v2 = 0;
    v1 = &_img4_runtime_restore;
    if ((v3 & 1) == 0)
    {
      return *(a1 + 80);
    }
  }

  return 0;
}

uint64_t img4_runtime_check_custom_digest(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 80);
  v3 = _img4_runtime_default;
  do
  {
    v4 = *(v3 + 10);
    if (v2 == v4)
    {
      break;
    }

    v5 = v1;
    v1 = 1;
    v3 = &_img4_runtime_restore;
  }

  while ((v5 & 1) == 0);
  if (v2 == v4)
  {
    return 0;
  }

  else
  {
    return *(a1 + 80);
  }
}

uint64_t version_init(uint64_t a1, char *a2, size_t a3)
{
  v24 = *MEMORY[0x29EDCA608];
  memset(v23, 0, sizeof(v23));
  v21 = xmmword_298EF8F90;
  v22 = 0;
  v20 = -1;
  v19[0] = -1;
  v19[1] = -1;
  __stringp = v23;
  cstring_init_with_buff(a1, a2, a3);
  *(a1 + 80) = xmmword_298EF8F90;
  *(a1 + 96) = v22;
  *(a1 + 100) = -86102547;
  cstring_get_string();
  __strlcpy_chk();
  v17 = strsep_npx(&__stringp, ",");
  if (__stringp)
  {
    *(a1 + 100) = _strtou_bounded(__stringp, 0, 0, v4, v5, v6, v7, v8);
  }

  for (i = 0; i != 20; i += 4)
  {
    v10 = strsep_npx(&v17, ".");
    if (!v10)
    {
      break;
    }

    *(a1 + i + 80) = _strtou_bounded(v10, *(&v21 + i), *(v19 + i), v11, v12, v13, v14, v15);
  }

  if (!strcmp(a1, "0.0.0.0.0,0"))
  {
    *(a1 + 80) = 0;
  }

  return a1;
}

uint64_t _strtou_bounded(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  v14 = 0;
  if (a2 > a3)
  {
    __panic_npx_7(a1, a2, a3, a4, a5, a6, a7, a8, a2, a3);
  }

  v10 = strtou32_npx(a1, &v14, 10);
  if (v14 && *v14)
  {
    v10 = v9;
  }

  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= v8 || v8 == 0)
  {
    return v11;
  }

  else
  {
    return v9;
  }
}

uint64_t version_compare_xgroup(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 80;
  if (!*(a1 + 80))
  {
    return 0;
  }

  v3 = 0;
  result = 1;
  while (1)
  {
    v5 = *(v2 + v3);
    v6 = *(a2 + 80 + v3);
    if (v5 > v6)
    {
      break;
    }

    if (v5 < v6)
    {
      return 2;
    }

    v3 += 4;
    if (v3 == 20)
    {
      return 0;
    }
  }

  return result;
}

uint64_t version_compare(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 80;
  if (!*(a1 + 80))
  {
    return 0;
  }

  if (*(a1 + 100) != *(a2 + 100))
  {
    return 3;
  }

  v3 = 0;
  result = 1;
  while (1)
  {
    v5 = *(v2 + v3);
    v6 = *(a2 + 80 + v3);
    if (v5 > v6)
    {
      break;
    }

    if (v5 < v6)
    {
      return 2;
    }

    v3 += 4;
    if (v3 == 20)
    {
      return 0;
    }
  }

  return result;
}

__n128 version_copy(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

char *version_copyout(char *__source, char *__dst)
{
  result = strlcpy(__dst, __source, 0x40uLL);
  v4 = 0;
  while (v4 != 64)
  {
    if (!__dst[v4++])
    {
      return __dst;
    }
  }

  __break(0x5519u);
  return result;
}

void __panic_npx_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9 = 0xAAAAAAAAAAAAAAAALL;
  bzero(__str, 0x800uLL);
  va_copy(v9, va);
  vsnprintf(__str, 0x800uLL, "panic: invalid min/max: min = %u, max = %u", va);
  _os_crash();
  __break(1u);
}

uint64_t type_get_handle(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 8) && dyld_program_minos_at_least())
  {
    return 0;
  }

  return v1;
}

uint64_t _image4_coprocessor_select_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 8);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v7 = *(a2 + 16);
      if (!v7)
      {
        return v7;
      }

      goto LABEL_10;
    }

    if (v5 != 4)
    {
      goto LABEL_14;
    }

    v6 = (*(a2 + 16))(a1);
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = image4_coprocessor_select_secure_boot(a1, a2, a3);
        goto LABEL_9;
      }

LABEL_14:
      __panic_npx("panic: unreachable case: %s = 0x%llx", "cps->cps_type", v5);
    }

    v6 = image4_coprocessor_select_digest(a1, a2);
  }

LABEL_9:
  v7 = v6;
  if (v6)
  {
LABEL_10:
    name = chip_get_name(v7);
    expert_log(a4, 2uLL, "resolved: %s", name);
  }

  return v7;
}

uint64_t *image4_coprocessor_select_digest(uint64_t a1, uint64_t a2)
{
  v3 = generic_expert_current();
  v4 = a2 + 16;
  v5 = a2 + 32;
  result = expert_get_digest_info(v3, 0, 0);
  v7 = *result;
  if (*result == 20)
  {
    if (v4 >= v5)
    {
LABEL_9:
      __break(0x5519u);
      return result;
    }
  }

  else
  {
    result = 0;
    if (v7 != 48)
    {
      return result;
    }

    if (a2 + 24 >= v5)
    {
      goto LABEL_9;
    }

    v8 = a2 + 24 >= v4;
    v4 = a2 + 24;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  return *v4;
}

uint64_t image4_coprocessor_select_secure_boot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16;
  v5 = a2 + 48;
  v6 = (*(a1 + 24))(a1, a3);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v7 = a2 + 32;
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_16;
      }

      v7 = a2 + 40;
    }

LABEL_11:
    if (v7 >= v5)
    {
      goto LABEL_15;
    }

    v8 = v7 >= v4;
    v4 = v7;
    if (!v8)
    {
      goto LABEL_15;
    }

    return *v4;
  }

  if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_16;
    }

    v7 = a2 + 24;
    goto LABEL_11;
  }

  if (v4 >= v5)
  {
LABEL_15:
    __break(0x5519u);
LABEL_16:
    __panic_npx("panic: unreachable case: %s = 0x%llx", "sb", v6);
  }

  return *v4;
}

uint64_t image4_coprocessor_get_secure_boot_host(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v5 = 0;
  secure_boot = expert_get_secure_boot(v2, &v5);
  if (secure_boot)
  {
    __panic_npx("panic: failed to get secure boot: %d", secure_boot);
  }

  return v5;
}

uint64_t image4_coprocessor_select(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 8);
  v7 = (*(a1 + 16))(a1, a3);
  v8 = v7;
  v9 = *(v5 + 608);
  if (v7 >= v9)
  {
    __panic_npx("panic: incomplete coprocessor map: handle = %lld, expected < %lld", v7, v9);
  }

  v10 = (*(v5 + 24))(v5, a3);
  result = expert_log(v6, 2uLL, "resolving environment: coproc = %s, handle = %llx, secure boot = %llx", *v5, v8, v10);
  v12 = v5 + 32 + 48 * v8;
  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = (v5 + 32 + 48 * v8);
  }

  if ((!v13 || (v12 < v5 + 608 ? (v14 = v12 >= v5 + 32) : (v14 = 0), !v14 ? (v15 = 0) : (v15 = 1), a2 || v15)) && (v13[1] != 2 || (v5 = v13[2], (v13 = (v5 + 32 + 48 * v13[3])) == 0) || (v13 < v5 + 608 ? (v16 = v13 >= v5 + 32) : (v16 = 0), v16)))
  {

    return _image4_coprocessor_select_internal(v5, v13, a3, v6);
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

const char **image4_coprocessor_resolve_from_manifest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x29EDCA608];
  v6 = generic_expert_current();
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  if (expert_runtime_boot(v6))
  {
    expert_log(v6, 3uLL, "failed to boot expert for chip selection: %d");
    return 0;
  }

  Img4DecodeInitAsManifest(a1, a2, v29);
  if (v7)
  {
    expert_log(v6, 0, "Img4DecodeInitAsManifest: %d");
    return 0;
  }

  v10 = 0;
  while (1)
  {
    v8 = *(a3 + 8 * v10);
    v28 = 0;
    if (v8)
    {
      v11 = v8 + 77;
      v12 = image4_environment_new(v8, 0);
      v28 = v12;
      if (!v12)
      {
        MEMORY[0x2A1C7C4A8](0, v13, v14, v15, v16, v17, v18, v19, v27);
        *&v20 = 0xAAAAAAAAAAAAAAAALL;
        *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *(&v27 - 2) = v20;
        v26 = v20;
        *(&v27 - 4) = v20;
        *(&v27 - 3) = v20;
        *(&v27 - 6) = v20;
        *(&v27 - 5) = v20;
        *(&v27 - 8) = v20;
        *(&v27 - 7) = v20;
        *(&v27 - 10) = v20;
        *(&v27 - 9) = v20;
        *(&v27 - 12) = v20;
        *(&v27 - 11) = v20;
        *(&v27 - 14) = v20;
        *(&v27 - 13) = v20;
        *(&v27 - 16) = v20;
        *(&v27 - 15) = v20;
        if (v8 >= v11)
        {
          goto LABEL_20;
        }

        v12 = _image4_environment_init((&v27 - 32), v8, 0, 0);
        v28 = v12;
      }

      v21 = image4_environment_resolve(v12);
      if (v21)
      {
        break;
      }
    }

LABEL_17:
    image4_environment_destroy(&v28);
    v8 = 0;
    if (++v10 == 3)
    {
      return v8;
    }
  }

  v22 = v21;
  if (!*(v21 + 32))
  {
    __panic_npx("panic: illegal coprocessor map: canonical handle has no static decode implementation");
  }

  v23 = 0;
  v24 = 1;
  while (1)
  {
    v25 = v24;
    if (!Img4DecodeCheckAuthority(v29, *(*(v22 + 32) + 8 * v23)))
    {
      break;
    }

    v24 = 0;
    v23 = 1;
    if ((v25 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  expert_log(v6, 2uLL, "manifest matches coproc: %s, i4ct: %u", *v8, v23);
  image4_environment_destroy(&v28);
  if (v8 >= v11)
  {
LABEL_20:
    __break(0x5519u);
  }

  return v8;
}

uint64_t img4_image_get_bytes(uint64_t a1)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v2 = *(a1 + 40);
  if ((*a1 & 0x10) != 0)
  {
    encoded_bytes = payload_get_encoded_bytes(v2, v8);
  }

  else
  {
    encoded_bytes = payload_get_decoded_bytes(v2, v8);
  }

  v4 = encoded_bytes;
  *(a1 + 8) = 0;
  result = a1 + 8;
  v7 = *v4;
  v6 = v4[1];
  if (v7 > v7 + v6)
  {
    __break(0x5519u);
  }

  else
  {
    *(a1 + 16) = v7;
    *(a1 + 24) = v6;
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t img4_image_get_property_BOOL(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (Img4DecodeGetObjectPropertyBoolean())
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

_DWORD *img4_image_get_property_uint32(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  Img4DecodeGetObjectPropertyInteger(*(*(a1 + 40) + 104), **(*(a1 + 40) + 8), a2, a3);
  if (v4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

unint64_t *img4_image_get_property_uint64(uint64_t a1, unsigned int a2, unint64_t *a3)
{
  Img4DecodeGetObjectPropertyInteger64(*(*(a1 + 40) + 104), **(*(a1 + 40) + 8), a2, a3);
  if (v4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

uint64_t img4_image_get_property_data(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = *(v4 + 104);
  v6 = **(v4 + 8);
  v11 = 0;
  v12 = 0;
  Img4DecodeGetObjectPropertyData(v5, v6, a2, &v11, &v12);
  v8 = v7;
  result = 0;
  if (!v8)
  {
    *a3 = 0;
    v10 = v12;
    *(a3 + 8) = v11;
    *(a3 + 16) = v10;
    *(a3 + 24) = 0;
    return a3;
  }

  return result;
}

BOOL *img4_image_get_entitlement_BOOL(uint64_t a1, unsigned int a2, BOOL *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 48);
  v8 = *(v7 + 528);
  v9 = v7 + 72;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (Img4DecodeGetBooleanFromSection(v10, 0, a2, a3, a5, a6))
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

_DWORD *img4_image_get_entitlement_uint32(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 48);
  v8 = *(v7 + 528);
  v9 = v7 + 72;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  Img4DecodeGetIntegerFromSection(v10, 0, a2, a3, a5, a6);
  if (v11)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

unint64_t *img4_image_get_entitlement_uint64(uint64_t a1, unsigned int a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 48);
  v8 = *(v7 + 528);
  v9 = v7 + 72;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  Img4DecodeGetInteger64FromSection(v10, 0, a2, a3, a5, a6);
  if (v11)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

uint64_t img4_image_get_entitlement_data(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 48);
  v8 = *(v7 + 528);
  v9 = v7 + 72;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v15 = 0;
  v16 = 0;
  Img4DecodeGetDataFromSection(v10, 0, a2, &v15, &v16, a6);
  v12 = v11;
  result = 0;
  if (!v12)
  {
    *a3 = 0;
    v14 = v16;
    *(a3 + 8) = v15;
    *(a3 + 16) = v14;
    *(a3 + 24) = 0;
    return a3;
  }

  return result;
}

void *img4_image_init(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a4;
  result[5] = a2;
  result[6] = a3;
  return result;
}

unint64_t boot_expert_boot_manifest(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v27[13] = *MEMORY[0x29EDCA608];
  v25 = 0;
  v26[0] = _boot_expert_property_BOOL;
  v26[1] = _boot_expert_property_integer;
  v26[2] = _boot_expert_property_data;
  v26[3] = 0;
  v26[5] = 0;
  v26[6] = 0;
  v26[4] = _boot_expert_odometer_prepare;
  v23[0] = a1;
  v23[1] = a2;
  v24 = 0;
  *v27 = xmmword_298EF9100;
  memset(&v27[2], 170, 88);
  _expert_assert(a1, 0x626F6F74u, "boot manifest");
  if (a3[1])
  {
    v6 = a3[2];
    v24 = a3[1];
    v25 = v6;
  }

  manifest_set_callbacks(a3, v23, v26);
  v7 = manifest_parse(a3);
  if (v7)
  {
    v8 = v7;
    expert_log(a1, 0, "failed to parse manifest for boot: %d", v7);
    goto LABEL_7;
  }

  v9 = manifest_impose(a3, a2, 0, 0);
  if (v9)
  {
    v8 = v9;
    expert_log(a1, 0, "failed to impose manifest for boot: %d", v9);
LABEL_7:
    if (v8 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v8);
    }

    return v8;
  }

  if (!*(a2 + 248))
  {
LABEL_18:
    expert_log(a1, 2uLL, "booted manifest");
    return 0;
  }

  result = manifest_measure(a3, a2, v27);
  v11 = *(a1 + 24);
  v12 = *(*(a2 + 248) + 16);
  v13 = v11 + 280;
  v14 = v11 + 280 + 104 * v12;
  if (v14 < v11 + 3816 && v14 >= v13)
  {
    v16 = *v27;
    v17 = *&v27[4];
    *(v14 + 16) = *&v27[2];
    *(v14 + 32) = v17;
    *v14 = v16;
    v18 = *&v27[6];
    v19 = *&v27[8];
    v20 = *&v27[10];
    *(v14 + 96) = v27[12];
    *(v14 + 64) = v19;
    *(v14 + 80) = v20;
    *(v14 + 48) = v18;
    v21 = v11 + 8;
    v22 = (v11 + 8 + 8 * v12);
    if (v22 < v13 && v22 >= v21)
    {
      *v22 = v14;
      goto LABEL_18;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t _boot_expert_property_BOOL(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  v11 = a5[2];
  v10 = a5[3];
  result = _boot_expert_find_entitlement(*a5, a2, a3, a5[1], &_property_type_BOOL);
  if (result)
  {
    v13 = *(v9 + 24);
    v14 = v13 + 280 + 104 * *(result + 16);
    if (v14 && (v14 < v13 + 3816 ? (v15 = v14 >= v13 + 280) : (v15 = 0), !v15) || ((*v14 = a4, v16 = *(v9 + 24), v17 = *(result + 16), v18 = v16 + 280, v19 = v16 + 280 + 104 * v17, v19 < v16 + 3816) ? (v20 = v19 >= v18) : (v20 = 0), !v20 || ((v21 = *v14, v22 = *(v14 + 32), *(v19 + 16) = *(v14 + 16), *(v19 + 32) = v22, *v19 = v21, v23 = *(v14 + 48), v24 = *(v14 + 64), v25 = *(v14 + 80), *(v19 + 96) = *(v14 + 96), *(v19 + 64) = v24, *(v19 + 80) = v25, *(v19 + 48) = v23, v26 = v16 + 8, v27 = (v26 + 8 * v17), v27 < v18) ? (v28 = v27 >= v26) : (v28 = 0), !v28)))
    {
      __break(0x5519u);
      return result;
    }

    *v27 = v19;
  }

  if (v11)
  {
    v29 = *v11;
    if (*v11)
    {

      return v29(a1, a2, a3, a4, v10);
    }
  }

  return result;
}

unint64_t _boot_expert_property_integer(uint64_t a1, _DWORD *a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  v9 = a5[1];
  v11 = a5[2];
  v10 = a5[3];
  v12 = &_property_type_uint32;
  v13 = 1;
  do
  {
    v14 = v13;
    result = _boot_expert_find_entitlement(v8, a2, a3, v9, v12);
    if (result)
    {
      v16 = *(v8 + 24);
      v17 = v16 + 280;
      v18 = v16 + 280 + 104 * *(result + 16);
      if (!v18 || (v18 < v16 + 3816 ? (v19 = v18 >= v17) : (v19 = 0), v19))
      {
        v17 = *v12;
        if (*v12 == 2)
        {
          *v18 = a4;
        }

        else
        {
          if (v17 != 1)
          {
            goto LABEL_32;
          }

          if (HIDWORD(a4))
          {
            __panic_npx("panic: integer cast overflow: v = %s, actual = %llu, expected <= %llu", "v", a4, 0xFFFFFFFFLL);
          }

          *v18 = a4;
        }

        v17 = v18 + 104;
        if (v18 < v18 + 104)
        {
          v20 = *(v8 + 24);
          v21 = *(result + 16);
          v22 = v20 + 280;
          v17 = v20 + 280 + 104 * v21;
          if (v17 < v20 + 3816 && v17 >= v22)
          {
            v24 = *v18;
            v25 = *(v18 + 32);
            *(v17 + 16) = *(v18 + 16);
            *(v17 + 32) = v25;
            *v17 = v24;
            v26 = *(v18 + 48);
            v27 = *(v18 + 64);
            v28 = *(v18 + 80);
            *(v17 + 96) = *(v18 + 96);
            *(v17 + 64) = v27;
            *(v17 + 80) = v28;
            *(v17 + 48) = v26;
            v29 = v20 + 8;
            v30 = (v29 + 8 * v21);
            if (v30 < v22 && v30 >= v29)
            {
              *v30 = v17;
              if (v11)
              {
                goto LABEL_26;
              }

              return result;
            }
          }
        }
      }

      __break(0x5519u);
LABEL_32:
      __panic_npx("panic: unreachable case: %s = 0x%llx", "pti->pt_switchable", v17);
    }

    v13 = 0;
    v12 = &_property_type_uint64;
  }

  while ((v14 & 1) != 0);
  if (!v11)
  {
    return result;
  }

LABEL_26:
  v31 = *(v11 + 8);
  if (v31)
  {

    return v31(a1, a2, a3, a4, v10);
  }

  return result;
}

uint64_t _boot_expert_property_data(uint64_t a1, _DWORD *a2, uint64_t a3, char *a4, size_t a5, uint64_t *a6)
{
  v9 = *a6;
  v10 = a6[1];
  v11 = a6[2];
  v34 = a6[3];
  v12 = &_property_type_digest;
  v13 = 1;
  do
  {
    v14 = v13;
    result = _boot_expert_find_entitlement(v9, a2, a3, v10, v12);
    if (result)
    {
      v16 = result;
      v17 = *(v9 + 24);
      v18 = v17 + 280;
      v19 = v17 + 280 + 104 * *(result + 16);
      if (v19)
      {
        if (v19 >= v17 + 3816 || v19 < v18)
        {
          goto LABEL_32;
        }
      }

      v21 = v19 + 104;
      v18 = *v12;
      if (*v12 == 4)
      {
        if (v19 < v21)
        {
          result = version_init(v19, a4, a5);
          goto LABEL_18;
        }
      }

      else
      {
        if (v18 != 3)
        {
          goto LABEL_33;
        }

        v18 = v19 + 80;
        if (v19 < v19 + 80)
        {
          result = digest_init(v19, a4, a5);
LABEL_18:
          if (v19 < v21)
          {
            v22 = *(v9 + 24);
            v23 = *(v16 + 16);
            v24 = v22 + 280;
            v18 = v22 + 280 + 104 * v23;
            if (v18 < v22 + 3816 && v18 >= v24)
            {
              v26 = *v19;
              v27 = *(v19 + 32);
              *(v18 + 16) = *(v19 + 16);
              *(v18 + 32) = v27;
              *v18 = v26;
              v28 = *(v19 + 48);
              v29 = *(v19 + 64);
              v30 = *(v19 + 80);
              *(v18 + 96) = *(v19 + 96);
              *(v18 + 64) = v29;
              *(v18 + 80) = v30;
              *(v18 + 48) = v28;
              v31 = v22 + 8;
              v32 = (v22 + 8 + 8 * v23);
              if (v32 < v24 && v32 >= v31)
              {
                *v32 = v18;
                if (v11)
                {
                  goto LABEL_27;
                }

                return result;
              }
            }
          }
        }
      }

LABEL_32:
      __break(0x5519u);
LABEL_33:
      __panic_npx("panic: unreachable case: %s = 0x%llx", "pti->pt_switchable", v18);
    }

    v13 = 0;
    v12 = &_property_type_version;
  }

  while ((v14 & 1) != 0);
  if (!v11)
  {
    return result;
  }

LABEL_27:
  v33 = *(v11 + 16);
  if (v33)
  {

    return v33(a1, a2, a3, a4, a5, v34);
  }

  return result;
}

uint64_t _boot_expert_odometer_prepare(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = *(v3 + 32);
    if (v4)
    {
      return v4(result, a2, *(a3 + 24));
    }
  }

  return result;
}

void *boot_expert_boot_closure(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x29EDCA608];
  memset(v20, 170, sizeof(v20));
  v18 = xmmword_298EF9100;
  v19 = unk_298EF9110;
  v5 = (*(*(a2 + 8) + 48))();
  result = digest_init_measure(&v18, v5, a3);
  v7 = *(a1 + 24);
  v8 = v7 + 280;
  v9 = (v7 + 3504);
  v10 = v7 + 3504 < (v7 + 3816) && v9 >= v8;
  if (!v10 || (v11 = v18, v12 = *v20, *(v7 + 3520) = v19, *(v7 + 3536) = v12, *v9 = v11, v13 = *&v20[16], v14 = *&v20[32], v15 = *&v20[48], *(v7 + 3600) = *&v20[64], *(v7 + 3568) = v14, *(v7 + 3584) = v15, *(v7 + 3552) = v13, v16 = v7 + 8, v17 = (v7 + 256), v17 >= v8) || v17 < v16)
  {
    __break(0x5519u);
  }

  *v17 = v9;
  return result;
}

uint64_t _boot_expert_query_property_BOOL(uint64_t result, uint64_t a2, uint64_t a3, BOOL *a4)
{
  if (a3 == &_property_iuob)
  {

    return expert_compute_eieiou_BOOL(result, a2, a4);
  }

  else
  {
    v7 = *(result + 24);
    v8 = v7 + 8;
    v9 = v7 + 280;
    v10 = (v7 + 8 + 8 * *(a3 + 16));
    if (v10 < v9 && v10 >= v8)
    {
      v12 = *v10;
      if (v12)
      {
        *a4 = *v12;
        return 0;
      }

      else
      {
        v13 = **(result + 16);
        expert_log(result, 2uLL, "falling back to base expert for property: %s", (a3 + 28));

        return expert_query_property_BOOL(v13, a2, a3, a4);
      }
    }

    else
    {
      __break(0x5519u);
    }
  }

  return result;
}

uint64_t _boot_expert_query_property_uint32(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = *(result + 24);
  v5 = v4 + 8;
  v6 = v4 + 280;
  v7 = (v4 + 8 + 8 * *(a3 + 16));
  if (v7 < v6 && v7 >= v5)
  {
    v10 = *v7;
    if (v10)
    {
      *a4 = *v10;
      return 0;
    }

    else
    {
      v13 = **(result + 16);
      expert_log(result, 2uLL, "falling back to base expert for property: %s", (a3 + 28));

      return expert_query_property_uint32(v13, a2, a3, a4);
    }
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t _boot_expert_query_property_uint64(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(result + 24);
  v5 = v4 + 8;
  v6 = v4 + 280;
  v7 = (v4 + 8 + 8 * *(a3 + 16));
  if (v7 < v6 && v7 >= v5)
  {
    v10 = *v7;
    if (v10)
    {
      *a4 = *v10;
      return 0;
    }

    else
    {
      v13 = **(result + 16);
      expert_log(result, 2uLL, "falling back to base expert for property: %s", (a3 + 28));

      return expert_query_property_uint64(v13, a2, a3, a4);
    }
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

uint64_t _boot_expert_query_property_digest(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 24);
  v5 = v4 + 8;
  v6 = v4 + 280;
  v7 = (v4 + 8 + 8 * *(a3 + 16));
  if (v7 >= v6 || v7 < v5)
  {
LABEL_12:
    __break(0x5519u);
    return result;
  }

  v11 = *v7;
  if (*v7)
  {
    if (v11 < v11 + 80)
    {
      digest_copy(a4, v11);
      return 0;
    }

    goto LABEL_12;
  }

  v13 = **(result + 16);
  expert_log(result, 2uLL, "falling back to base expert for property: %s", (a3 + 28));

  return expert_query_property_digest(v13, a2, a3, a4);
}

uint64_t _boot_expert_query_property_version(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 24);
  v5 = v4 + 8;
  v6 = v4 + 280;
  v7 = (v4 + 8 + 8 * *(a3 + 16));
  if (v7 >= v6 || v7 < v5)
  {
LABEL_12:
    __break(0x5519u);
    return result;
  }

  v11 = *v7;
  if (*v7)
  {
    if (v11 < (v11 + 104))
    {
      version_copy(a4, v11);
      return 0;
    }

    goto LABEL_12;
  }

  v13 = **(result + 16);
  expert_log(result, 2uLL, "falling back to base expert for property: %s", (a3 + 28));

  return expert_query_property_version(v13, a2, a3, a4);
}

uint64_t _boot_expert_read_random(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return expert_read_random(**(result + 16), a2, a3);
  }

  __break(0x5519u);
  return result;
}

unint64_t _boot_expert_find_entitlement(uint64_t a1, _DWORD *a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = (a2 + 1);
  name = chip_get_name(a4);
  expert_log(a1, 2uLL, "finding entitlement for chip: entitlement = %s, chip = %s", v10, name);
  if (a3)
  {
    expert_log(a1, 2uLL, "not a manifest property", v14, v15);
    return 0;
  }

  result = property_find_entitlement(a2);
  if (!result || (v13 = result, *(result + 16) == 34))
  {
    expert_log(a1, 2uLL, "not an expert property", v14, v15);
    return 0;
  }

  if (*(result + 40) != a5)
  {
    expert_log(a1, 2uLL, "unexpected type: actual = %s, expected = %s");
    return 0;
  }

  if (result < result + 104)
  {
    if (!chip_check_entitlement(a4, result))
    {
      expert_log(a1, 2uLL, "entitlement present for chip");
      return v13;
    }

    expert_log(a1, 2uLL, "entitlement not present in chip");
    return 0;
  }

  __break(0x5519u);
  return result;
}

uint64_t odometer_compute_nonce_hash(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  chip = a2;
  v23 = *MEMORY[0x29EDCA608];
  memset(v22, 0, sizeof(v22));
  if (!a2)
  {
    chip = expert_query_chip(a1, 0);
  }

  if (!chip[25] || (v7 = chip[21]) != 0)
  {
    v7 = 1;
  }

  if (chip[22])
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  digest_info = expert_get_digest_info(a1, chip, v8);
  MEMORY[0x2A1C7C4A8](digest_info, v10, (digest_info[1] + digest_info[2] + 19) & 0xFFFFFFFFFFFFFFF8, v11, v12, v13, v14, v15, *&v22[0]);
  v18 = v22 - v17;
  if (v19 >= 8)
  {
    memset(v22 - v17, 170, v16);
  }

  if (*digest_info >= 0x41)
  {
    __panic_npx("panic: buffer not large enough for digest: actual = %lu, expected >= %lu", 64, *digest_info);
  }

  name = chip_get_name(chip);
  expert_log(a1, 2uLL, "computing nonce digest: chip = %s, digest length = %lu", name, *digest_info);
  ccdigest_init();
  ccdigest_update();
  (digest_info[7])(digest_info, v18, v22);
  if (*digest_info > 0x40)
  {
    __break(0x5519u);
  }

  return digest_init(a4, v22, *digest_info);
}

uint64_t odometer_derive_nonce_hash(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[3] = *MEMORY[0x29EDCA608];
  memset(v11, 0, 24);
  v8 = expert_entangle_nonce(a1, a2, a3, a4, v11);
  v9 = v8;
  if (v8)
  {
    expert_log(a1, 0, "failed to entangle nonce: %d", v8);
    if (v9 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v9);
    }
  }

  else
  {
    odometer_compute_nonce_hash(a1, a2, v11, a5);
  }

  return v9;
}

unint64_t odometer_check_fuse(unint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 < 0)
  {
    __panic_npx("panic: invalid offset: %lld", v2);
  }

  v3 = (result + v2);
  if (v3 < result + 976 && v3 >= result)
  {
    return *v3;
  }

  __break(0x5519u);
  return result;
}

uint64_t odometer_query_chip_boot(uint64_t a1)
{
  v2 = *(a1 + 16);
  chip_boot = expert_query_chip_boot(*a1, v2);
  v4 = *a1;
  name = chip_get_name(*(a1 + 16));
  v6 = name;
  if (chip_boot == 45)
  {
    expert_log(v4, 1uLL, "odometer[%s]: expert does not boot chip", name);
    if (*(a1 + 56))
    {
      v7 = *a1;
      chip_get_name(*(a1 + 16));
      expert_log(v7, 1uLL, "odometer[%s]: nonce supplied; simulating first-stage boot");
    }

    else
    {
      if (!*(a1 + 232))
      {
        return 45;
      }

      v9 = *a1;
      chip_get_name(*(a1 + 16));
      expert_log(v9, 1uLL, "odometer[%s]: nonce hash supplied; simulating first-stage boot");
    }

    return 0;
  }

  else if (chip_boot)
  {
    v8 = chip_get_name(v2);
    expert_log(v4, 0, "odometer[%s]: failed to query chip boot: %s: %d", v6, v8, chip_boot);
    if (chip_boot >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", chip_boot);
    }
  }

  else
  {
    expert_log(v4, 1uLL, "odometer[%s]: expert boots chip", name);
  }

  return chip_boot;
}

uint64_t odometer_query_live_nonce(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 56))
  {
    nonce_init_copy(a4, (a1 + 32));
    return 0;
  }

  else
  {
    v7 = *a1;
    if (a3 == -1)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a1 + 16);
    }

    return expert_query_nonce(v7, v8, a3, a4);
  }
}

uint64_t odometer_query_restore_info_nonce(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = a1[2];
  v7 = *(v6 + 96);
  v8 = *(v7 + 24);
  *v24 = 0;
  __n = 0;
  v9 = *a1;
  name = chip_get_name(v6);
  expert_log(v9, 1uLL, "odometer[%s]: querying restore info for boot nonce: %s", name, (v7 + 28));
  Img4DecodeGetRestoreInfoData(a2, v8, v24, &__n, v11, v12);
  if (v13 == 1)
  {
    v18 = *a1;
    v19 = chip_get_name(a1[2]);
    expert_log(v18, 0, "odometer[%s]: restore info has no boot nonce", v19);
    return 2;
  }

  else
  {
    v14 = v13;
    if (v13)
    {
      v20 = *a1;
      v21 = chip_get_name(a1[2]);
      expert_log(v20, 0, "odometer[%s]: failed to query restore info for boot nonce: %d", v21, v14);
      result = posixdr(v14);
      if (result >= 0x6B)
      {
        __panic_npx("panic: error not set to valid posix code: %d", result);
      }
    }

    else if (__n < 0x11)
    {
      nonce_init(a3, *v24, __n);
      v22 = *a1;
      v23 = chip_get_name(a1[2]);
      expert_log(v22, 1uLL, "odometer[%s]: fetched boot nonce from restore info", v23);
      return 0;
    }

    else
    {
      v15 = *a1;
      v16 = chip_get_name(a1[2]);
      expert_log(v15, 1uLL, "odometer[%s]: restore info nonce too large: actual = %lu, expected <= %lu", v16, __n, 16);
      return 84;
    }
  }

  return result;
}

uint64_t odometer_enforce_property(uint64_t *a1, const char **a2, const char **a3, unsigned int *a4)
{
  v42[13] = *MEMORY[0x29EDCA608];
  v8 = *(a2 + 6);
  v9 = *a1;
  v10 = a1[2];
  *v42 = xmmword_298EF9168;
  memset(&v42[2], 170, 88);
  v11 = *a3[5];
  if (v11 <= 1)
  {
    if (v11)
    {
      if (v11 != 1)
      {
LABEL_51:
        __panic_npx("panic: unreachable case: %s = 0x%llx", "p->p_type->pt_switchable", v11);
      }

      property_uint32 = expert_query_property_uint32(v9, v10, a3, v42);
      if (!property_uint32)
      {
        if (a4 + 1 < a4)
        {
          goto LABEL_49;
        }

        if (property_constrain_uint32(a3, v9, a4, v42))
        {
          goto LABEL_18;
        }

        return 0;
      }
    }

    else
    {
      property_uint32 = expert_query_property_BOOL(v9, v10, a3, v42);
      if (!property_uint32)
      {
        if ((a4 + 1) < a4)
        {
          goto LABEL_49;
        }

        if (property_constrain_BOOL(a3, v9, a4, v42))
        {
          goto LABEL_18;
        }

        return 0;
      }
    }

LABEL_24:
    v23 = property_uint32;
    v24 = *a1;
    name = chip_get_name(a1[2]);
    expert_log(v24, 0, "odometer[%s:%s]: failed to query expert: p = %s: %d", name, *a2, *a3, v23);
    v8 = v23;
    goto LABEL_25;
  }

  if (v11 == 2)
  {
    property_uint32 = expert_query_property_uint64(v9, v10, a3, v42);
    if (!property_uint32)
    {
      if (a4 + 2 < a4)
      {
        goto LABEL_49;
      }

      if (property_constrain_uint64(a3, v9, a4, v42))
      {
        goto LABEL_18;
      }

      return 0;
    }

    goto LABEL_24;
  }

  if (v11 == 3)
  {
    property_uint32 = expert_query_property_digest(v9, v10, a3, v42);
    if (!property_uint32)
    {
      if (a4 + 20 < a4)
      {
        goto LABEL_49;
      }

      if (property_constrain_digest(a3, v9, a4, v42, v19, v20, v21, v22))
      {
        goto LABEL_18;
      }

      return 0;
    }

    goto LABEL_24;
  }

  if (v11 != 4)
  {
    goto LABEL_51;
  }

  v12 = a1 + 122;
  v13 = a1 + 121;
  if (a1 + 121 >= a1 + 122 || v13 < a1)
  {
    goto LABEL_49;
  }

  if (*v13 == 1)
  {
    v14 = chip_get_name(v10);
    v15 = 1;
    expert_log(v9, 1uLL, "odometer[%s:%s]: allowing cross-group policy: mix-n-match", v14, *a2);
  }

  else
  {
    v15 = 0;
  }

  v27 = (a1 + 969);
  if ((a1 + 969) >= v12 || v27 < a1)
  {
    goto LABEL_49;
  }

  if ((*v27 & 1) == 0)
  {
    v28 = *a1;
    v29 = chip_get_name(a1[2]);
    expert_log(v28, 1uLL, "odometer[%s:%s]: allowing cross-group policy: production status", v29, *a2);
    ++v15;
  }

  v30 = (a1 + 972);
  if ((a1 + 972) >= v12 || v30 < a1)
  {
    goto LABEL_49;
  }

  if (*v30 == 1)
  {
    v31 = *a1;
    v32 = chip_get_name(a1[2]);
    expert_log(v31, 1uLL, "odometer[%s:%s]: allowing cross-group policy: engineering use", v32, *a2);
    ++v15;
  }

  if (!*(v10 + 24))
  {
    v33 = *a1;
    v34 = chip_get_name(a1[2]);
    v15 = 1;
    expert_log(v33, 1uLL, "odometer[%s:%s]: allowing cross-group policy: full security", v34, *a2);
  }

  if (v10 >= v10 + 264)
  {
    goto LABEL_49;
  }

  property_version = expert_query_property_version(v9, v10, a3, v42);
  if (!property_version)
  {
    v39 = _odometer_enforce_version;
    if (v15)
    {
      v40 = *a1;
      v41 = chip_get_name(a1[2]);
      expert_log(v40, 1uLL, "odometer[%s:%s]: allowing cross-group version comparison", v41, *a2);
      v39 = _odometer_enforce_version_xgroup;
    }

    if (a4 + 26 >= a4)
    {
      if (!v39(a1, a3, a4, v42))
      {
        return 0;
      }

LABEL_18:
      v17 = *a1;
      v18 = chip_get_name(a1[2]);
      expert_log(v17, 0, "odometer[%s:%s]: constraint violation: %s: %d", v18, *a2, *a3, v8);
      goto LABEL_25;
    }

LABEL_49:
    __break(0x5519u);
  }

  v36 = property_version;
  v37 = *a1;
  v38 = chip_get_name(a1[2]);
  expert_log(v37, 0, "odometer[%s:%s]: failed to query expert: p = %s: %d", v38, *a2, *a3, v36);
  v8 = v36;
LABEL_25:
  if (v8 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v8);
  }

  return v8;
}

uint64_t _odometer_enforce_version_xgroup(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = property_constrain_version(a2, *a1, a3, a4);
  if (v7)
  {
    if (*(a3 + 100) == *(a4 + 100))
    {
      v8 = *a1;
      name = chip_get_name(a1[2]);
      expert_log(v8, 1uLL, "odometer[%s]: versions directly comparable; allowing enforcement decision to stand", name);
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

double odometer_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = -1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 320) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 442) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 872) = -1;
  *(a1 + 972) = 0;
  *(a1 + 968) = 0;
  return result;
}

uint64_t odometer_prepare(uint64_t *a1)
{
  v2 = 0;
  v3 = a1 + 122;
  while (1)
  {
    v4 = _cylinders[v2];
    v5 = v4[1];
    if (v5 < 0)
    {
      goto LABEL_20;
    }

    v6 = *v4;
    v7 = a1 + v5;
    constraint = chip_get_constraint(a1[2], *v4, 0);
    if (v7)
    {
      if (v7 >= v3 || v7 < a1)
      {
LABEL_19:
        __break(0x5519u);
LABEL_20:
        __panic_npx("panic: invalid offset: %lld", v5);
      }
    }

    property_BOOL = expert_query_property_BOOL(*a1, a1[2], constraint, v7);
    if (property_BOOL)
    {
      break;
    }

    if (v7 >= v3 || v7 < a1)
    {
      goto LABEL_19;
    }

    expert_log(*a1, 2uLL, "queried cylinder: p = %s, v = 0x%x", (v6 + 28), *v7);
    if (++v2 == 6)
    {
      return property_BOOL;
    }
  }

  v12 = *a1;
  name = chip_get_name(a1[2]);
  expert_log(v12, 0, "odometer[%s]: failed to query odometer cylinder: %s: %d", name, (v6 + 28), property_BOOL);
  if (property_BOOL >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", property_BOOL);
  }

  return property_BOOL;
}

double odometer_prepare_nonce(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v4 = 0uLL;
  v5 = 0;
  nonce_init_copy(&v4, a2);
  result = *&v4;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = 1;
  return result;
}

__n128 odometer_prepare_nonce_hash(uint64_t a1, uint64_t a2)
{
  *(a1 + 152) = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 216) = *(a2 + 64);
  *(a1 + 200) = v4;
  *(a1 + 184) = v3;
  *(a1 + 168) = result;
  *(a1 + 232) = 1;
  return result;
}

__n128 odometer_prepare_notarized_manifest_hash(uint64_t a1, uint64_t a2)
{
  *(a1 + 448) = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 496) = *(a2 + 48);
  *(a1 + 512) = v4;
  *(a1 + 464) = result;
  *(a1 + 480) = v3;
  *(a1 + 528) = 1;
  return result;
}

uint64_t odometer_update(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  for (i = 0; i != 80; i += 8)
  {
    v7 = *(&_property_consumers + i);
    v8 = *v7;
    v9 = *(v7 + 8);
    if (*v7)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        __panic_npx("panic: illegal odometer consumption configuration");
      }
    }

    else if (v9 < 0)
    {
      v8 = 0;
    }

    else
    {
      v10 = *(v5 + 16);
      v11 = (v10 + v9);
      if (v11 >= v10 + 264 || v11 < v10)
      {
        __break(0x5519u);
        return result;
      }

      v8 = *v11;
    }

    result = property_equal(a2, v8);
    if ((result & 1) != 0 || !*v7 && (*(v7 + 8) & 0x8000000000000000) != 0)
    {
      result = (*(v7 + 16))(v7, v5, a2, a3);
      if (!result)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t odometer_enforce(unint64_t a1)
{
  chip_boot = odometer_query_chip_boot(a1);
  v3 = *a1;
  name = chip_get_name(*(a1 + 16));
  if (chip_boot)
  {
    expert_log(v3, 1uLL, "odometer[%s]: expert does not boot chip", name);
  }

  else
  {
    expert_log(v3, 1uLL, "odometer[%s]: enforcing anti-replay", name);
    __odometer_select_policy(a1, _anti_replay_policies, 7);
    v16 = v15;
    v23 = odometer_policy_enforce(v15, a1, v17, v18, v19, v20, v21, v22);
    if (v23)
    {
      v13 = v23;
      v24 = *a1;
      v25 = chip_get_name(*(a1 + 16));
      expert_log(v24, 0, "odometer[%s:%s]: anti-replay violation: %d", v25, *v16, v13);
      goto LABEL_8;
    }
  }

  __odometer_select_policy(a1, _chain_integrity_policies, 5);
  v12 = odometer_policy_enforce(v5, a1, v6, v7, v8, v9, v10, v11);
  if (v12)
  {
    v13 = v12;
    v14 = *a1;
    chip_get_name(*(a1 + 16));
    expert_log(v14, 0, "odometer[%s:%s]: boot chain integrity violation: %d");
  }

  else
  {
    if (odometer_policy_enforceable(&_odometer_policy_chain_manifest) || (v35 = odometer_policy_enforce(&_odometer_policy_chain_manifest, a1, v26, v27, v28, v29, v30, v31), !v35))
    {
      v32 = *a1;
      v33 = chip_get_name(*(a1 + 16));
      expert_log(v32, 1uLL, "odometer[%s]: manifest is live and boot chain is intact", v33);
      return 0;
    }

    v13 = v35;
    v36 = *a1;
    chip_get_name(*(a1 + 16));
    expert_log(v36, 0, "odometer[%s:%s]: boot chain integrity violation: %d");
  }

LABEL_8:
  if (v13 == 31 && (*(a1 + 441) & 1) != 0)
  {
    return 70;
  }

  if (v13 >= 0x6B)
  {
    __panic_npx("panic: error not set to valid posix code: %d", v13);
  }

  return v13;
}

void __odometer_select_policy(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (!a3)
  {
    goto LABEL_7;
  }

  v3 = a3;
  v5 = &a2[a3];
  v6 = a2;
  while (1)
  {
    if (v6 >= v5 || v6 < a2)
    {
      __break(0x5519u);
      return;
    }

    v7 = *v6;
    if (!odometer_policy_enforceable(*v6))
    {
      break;
    }

    ++v6;
    if (!--v3)
    {
      goto LABEL_7;
    }
  }

  if (!v7)
  {
LABEL_7:
    __panic_npx("panic: no anti-replay policy selected", a2);
  }
}

__n128 _odometer_consume_nonce_hash(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 24);
  memset(__n, 0, sizeof(__n));
  *v12 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  PropertyData = Img4DecodeGetPropertyData(a4, v5, v12, __n);
  if (PropertyData)
  {
    v7 = PropertyData;
    v8 = *a2;
    name = chip_get_name(*(a2 + 16));
    expert_log(v8, 0, "odometer[%s]: Img4DecodeGetPropertyData: %d", name, v7);
  }

  else
  {
    digest_init(&__n[1], *v12, __n[0]);
    v11 = v16;
    *(a2 + 96) = v15;
    *(a2 + 112) = v11;
    *(a2 + 128) = v17;
    result = v14;
    *(a2 + 64) = *&__n[1];
    *(a2 + 80) = result;
    *(a2 + 144) = 1;
  }

  return result;
}

uint64_t _odometer_consume_nonce_domain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a3 + 24);
  v14 = 0;
  result = Img4DecodeGetPropertyInteger(a4, v9, &v14, a4, a5, a6, a7, a8);
  if (result)
  {
    v11 = result;
    v12 = *a2;
    name = chip_get_name(*(a2 + 16));
    expert_log(v12, 0, "odometer[%s]: Img4DecodeGetPropertyInteger: %d", name, v11);
    return 0xFFFFFFFFLL;
  }

  else
  {
    *(a2 + 24) = v14;
  }

  return result;
}

uint64_t _odometer_consume_ephemeral_switch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = _odometer_decode_property(a2, a3, a4, a2 + 760, a5, a6, a7, a8);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *(a2 + 864) = 1;
  return result;
}

uint64_t _odometer_decode_property(uint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a2 + 24);
  LODWORD(__n) = 0;
  *v22 = 0;
  v12 = **(a2 + 40);
  if (v12 <= 1)
  {
    if (!v12)
    {
      PropertyBoolean = Img4DecodeGetPropertyBoolean(a3, v11, a4);
      if (PropertyBoolean)
      {
        v20 = *a1;
        name = chip_get_name(a1[2]);
        expert_log(v20, 0, "odometer[%s]: Img4DecodeGetPropertyBoolean: %d", name, PropertyBoolean);
      }

      return PropertyBoolean;
    }

    if (v12 == 1)
    {
      PropertyBoolean = Img4DecodeGetPropertyInteger(a3, v11, a4, a4, a5, a6, a7, a8);
      if (PropertyBoolean)
      {
        v15 = *a1;
        chip_get_name(a1[2]);
        expert_log(v15, 0, "odometer[%s]: Img4DecodeGetPropertyInteger: %d");
      }

      return PropertyBoolean;
    }

    goto LABEL_23;
  }

  if (v12 == 2)
  {
    PropertyBoolean = Img4DecodeGetPropertyInteger64(a3, v11, a4, a4, a5, a6, a7, a8);
    if (PropertyBoolean)
    {
      v16 = *a1;
      chip_get_name(a1[2]);
      expert_log(v16, 0, "odometer[%s]: Img4DecodeGetPropertyInteger64: %d");
    }

    return PropertyBoolean;
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {
      result = Img4DecodeGetPropertyData(a3, v11, v22, &__n);
      if (!result)
      {
        if (a4 + 104 >= a4)
        {
          version_init(a4, *v22, __n);
          return 0;
        }

        goto LABEL_24;
      }

LABEL_16:
      v17 = result;
      v18 = *a1;
      v19 = chip_get_name(a1[2]);
      expert_log(v18, 0, "odometer[%s]: Img4DecodeGetPropertyData: %d", v19, v17);
      return v17;
    }

LABEL_23:
    __panic_npx("panic: unreachable case: %s = 0x%llx", "p->p_type->pt_switchable", v12);
  }

  result = Img4DecodeGetPropertyData(a3, v11, v22, &__n);
  if (result)
  {
    goto LABEL_16;
  }

  if (a4 + 80 >= a4)
  {
    digest_init(a4, *v22, __n);
    return 0;
  }

LABEL_24:
  __break(0x5519u);
  return result;
}

uint64_t _odometer_consume_ephemeral_nonce_domain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a3 + 24);
  v14 = 0;
  result = Img4DecodeGetPropertyInteger(a4, v9, &v14, a4, a5, a6, a7, a8);
  if (result)
  {
    v11 = result;
    v12 = *a2;
    name = chip_get_name(*(a2 + 16));
    expert_log(v12, 0, "odometer[%s]: Img4DecodeGetPropertyInteger: %d", name, v11);
    return 0xFFFFFFFFLL;
  }

  else
  {
    *(a2 + 872) = v14;
  }

  return result;
}

__n128 _odometer_consume_ephemeral_nonce_hash(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 24);
  memset(__n, 0, sizeof(__n));
  *v12 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  PropertyData = Img4DecodeGetPropertyData(a4, v5, v12, __n);
  if (PropertyData)
  {
    v7 = PropertyData;
    v8 = *a2;
    name = chip_get_name(*(a2 + 16));
    expert_log(v8, 0, "odometer[%s]: Img4DecodeGetPropertyData: %d", name, v7);
  }

  else
  {
    digest_init(&__n[1], *v12, __n[0]);
    v11 = v16;
    *(a2 + 912) = v15;
    *(a2 + 928) = v11;
    *(a2 + 944) = v17;
    result = v14;
    *(a2 + 880) = *&__n[1];
    *(a2 + 896) = result;
    *(a2 + 960) = 1;
  }

  return result;
}

uint64_t _odometer_consume_chain_hash(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a3 + 24);
  LODWORD(__n) = 0;
  *v11 = 0;
  PropertyData = Img4DecodeGetPropertyData(a4, v5, v11, &__n);
  if (PropertyData)
  {
    v7 = PropertyData;
    v8 = *a2;
    name = chip_get_name(*(a2 + 16));
    expert_log(v8, 0, "odometer[%s]: Img4DecodeGetPropertyData: %d", name, v7);
    return 0xFFFFFFFFLL;
  }

  else
  {
    digest_init(a2 + 240, *v11, __n);
    result = 0;
    *(a2 + 320) = 1;
  }

  return result;
}

uint64_t _odometer_consume_mixn_match(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 24);
  v10 = 0;
  result = Img4DecodeGetPropertyBoolean(a4, v5, &v10);
  if (result)
  {
    v7 = result;
    v8 = *a2;
    name = chip_get_name(*(a2 + 16));
    expert_log(v8, 0, "odometer[%s]: Img4DecodeGetPropertyBoolean: %d", name, v7);
    return 0xFFFFFFFFLL;
  }

  else
  {
    *(a2 + 440) = v10;
  }

  return result;
}

uint64_t _odometer_consume_pivot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = _odometer_decode_property(a2, a3, a4, a2 + 328, a5, a6, a7, a8);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *(a2 + 432) = 1;
  return result;
}

uint64_t _odometer_consume_static_lifetime(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v7 = 0;
  v8 = a2[2] + 232;
  for (i = 1; ; i = 0)
  {
    v10 = i;
    if (property_equal(a3, *(v8 + 8 * v7)))
    {
      break;
    }

    v7 = 1;
    if ((v10 & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v15 = &a2[14 * v7];
  result = _odometer_decode_property(a2, a3, a4, (v15 + 67), v11, v12, v13, v14);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *(v15 + 320) = 1;
  return result;
}

uint64_t DEREncoderAddImage4Tag(uint64_t *a1, char *__s)
{
  if (strlen(__s) != 4)
  {
    __panic_npx("panic: invalid Image4 tag: %s", __s);
  }

  return DEREncoderAddData(a1, 0, 22, __s, 4, 0);
}

uint64_t DEREncoderAddString(uint64_t *a1, char *__s)
{
  v4 = strlen(__s);

  return DEREncoderAddData(a1, 0, 22, __s, v4, 0);
}

uint64_t DEREncoderAddImage4Property(uint64_t *a1, char *__s, uint64_t *a3)
{
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  if (strlen(__s) != 4)
  {
LABEL_35:
    __panic_npx("panic: four-character codes must be four characters long");
  }

  if (__s + 5 < __s)
  {
LABEL_34:
    __break(0x5519u);
    goto LABEL_35;
  }

  v6 = *__s;
  v7 = DEREncoderCreate(0);
  if (v7)
  {
    v8 = v7;
    v9 = DEREncoderAddImage4Tag(v7, __s);
    if (v9)
    {
      v15 = v9;
      v16 = log_expert(v9);
      expert_log(v16, 2uLL, "DEREncoderAddImage4TagUInt32: %d", v15);
LABEL_32:
      DEREncoderDestroy(v8);
      return v15;
    }

    v18 = bswap32(v6);
    v19 = a3[2];
    if (v19 <= 3)
    {
      if (v19 != 1)
      {
        if (v19 == 2)
        {
          PropertyInteger64 = Img4DecodeGetPropertyInteger64(a3, v18, &v40, v10, v11, v12, v13, v14);
          if (PropertyInteger64)
          {
            v21 = log_expert(PropertyInteger64);
            expert_log(v21, 2uLL, "Img4DecodeGetPropertyInteger64: %d");
LABEL_20:
            v15 = 3;
            goto LABEL_32;
          }

          v33 = DEREncoderAddUInt64(v8, 0, 2u, v40);
          if (v33)
          {
            v23 = v33;
            v34 = log_expert(v33);
            expert_log(v34, 2uLL, "DEREncoderAddUInt64: %d");
            goto LABEL_29;
          }

LABEL_30:
          v35 = DEREncoderAddPrivateFromEncoder(v8, a1, v18);
          v15 = v35;
          if (v35)
          {
            v36 = log_expert(v35);
            expert_log(v36, 2uLL, "DEREncoderAddPrivateFromEncoder: %d", v15);
          }

          goto LABEL_32;
        }

LABEL_36:
        __panic_npx("panic: unreachable");
      }

      PropertyBoolean = Img4DecodeGetPropertyBoolean(a3, v18, &v41);
      if (PropertyBoolean)
      {
        v26 = log_expert(PropertyBoolean);
        expert_log(v26, 2uLL, "Img4DecodeGetPropertyBoolean: %d");
        goto LABEL_20;
      }

      v29 = DEREncoderAddBoolean(v8, v41);
      if (!v29)
      {
        goto LABEL_30;
      }

      v23 = v29;
      v30 = log_expert(v29);
      expert_log(v30, 2uLL, "DEREncoderAddBoolean: %d");
LABEL_29:
      v15 = v23;
      goto LABEL_32;
    }

    if (v19 != 4)
    {
      if (v19 != 5)
      {
        goto LABEL_36;
      }

      v22 = DEREncoderAddData(v8, 0, 5, 0, 0, 0);
      if (!v22)
      {
        goto LABEL_30;
      }

      v23 = v22;
      v24 = log_expert(v22);
      expert_log(v24, 2uLL, "DEREncoderAddNull: %d");
      goto LABEL_29;
    }

    PropertyData = Img4DecodeGetPropertyData(a3, v18, &v38, &v39);
    if (PropertyData)
    {
      v28 = log_expert(PropertyData);
      expert_log(v28, 2uLL, "Img4DecodeGetPropertyData: %d");
      goto LABEL_20;
    }

    if (!v38 || v39)
    {
      v31 = DEREncoderAddDataNoCopy(v8, 0, 4u, v38, v39, 0);
      if (!v31)
      {
        goto LABEL_30;
      }

      v23 = v31;
      v32 = log_expert(v31);
      expert_log(v32, 2uLL, "DEREncoderAddOctetString: %d");
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  v17 = log_expert(0);
  v15 = 2;
  expert_log(v17, 2uLL, "DEREncoderCreate: %d", 2);
  return v15;
}

void DEREncoderDestroyAndZero(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    DEREncoderDestroy(v2);
    *a1 = 0;
  }
}

size_t DEREncoderEncodeImage4Dictionary(uint64_t *a1, char *__s, uint64_t **a3)
{
  result = strlen(__s);
  if (result != 4)
  {
    __panic_npx("panic: four-character codes must be four characters long");
  }

  if (__s + 5 < __s)
  {
    __break(0x5519u);
  }

  else
  {
    v7 = *__s;
    v8 = DEREncoderCreate(0);
    if (!v8)
    {
      return 2;
    }

    v9 = v8;
    v10 = DEREncoderAddImage4Tag(v8, __s);
    if (!v10)
    {
      v10 = DEREncoderAddSetFromEncoder(a3, v9);
      if (!v10)
      {
        v10 = DEREncoderAddPrivateFromEncoder(v9, a1, bswap32(v7));
      }
    }

    v11 = v10;
    DEREncoderDestroy(v9);
    return v11;
  }

  return result;
}

size_t DEREncoderCreateImage4Dictionary(char *a1, uint64_t **a2, uint64_t **a3)
{
  v6 = DEREncoderCreate(0);
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  v8 = DEREncoderEncodeImage4Dictionary(v6, a1, a2);
  if (v8)
  {
    DEREncoderDestroy(v7);
  }

  else
  {
    *a3 = v7;
  }

  return v8;
}

size_t cstring_init_with_string(uint64_t a1, char *__s)
{
  result = strlen(__s);
  if (&__s[result + 1] < __s)
  {
    __break(0x5519u);
  }

  else
  {
    v5 = strnlen(__s, result + 1);
    v6 = v5;
    if (v5 >= 0x3F)
    {
      v7 = 63;
    }

    else
    {
      v7 = v5;
    }

    strlcpy(a1, __s, v7 + 1);
    *(a1 + 64) = v7;
    *(a1 + 72) = v6;
    return a1;
  }

  return result;
}

uint64_t cstring_init_with_buff(uint64_t a1, char *__s1, size_t __n)
{
  v5 = strnlen(__s1, __n);
  v6 = v5;
  if (v5 >= 0x3F)
  {
    v7 = 63;
  }

  else
  {
    v7 = v5;
  }

  strlcpy(a1, __s1, v7 + 1);
  *(a1 + 64) = v7;
  *(a1 + 72) = v6;
  return a1;
}

unint64_t _boot_static_enforceable(void *a1, uint64_t *a2)
{
  result = a2[2];
  if (!*(result + 232))
  {
    v4 = 1;
    v5 = "odometer[%s:%s]: chip has no properties for policy";
    goto LABEL_5;
  }

  if (!*(result + 160))
  {
    v4 = 0;
    v5 = "odometer[%s:%s]: policy is enforceable";
LABEL_5:
    v6 = *a2;
    name = chip_get_name(result);
    expert_log(v6, 1uLL, v5, name, *a1);
    return v4;
  }

  if (result < result + 264)
  {
    v8 = chip_get_name(result);
    __panic_npx("panic: illegal chip definition: anti-replay and static lifetime policies defined: %s", v8);
  }

  __break(0x5519u);
  return result;
}

uint64_t _boot_static_enforce(const char **a1, uint64_t *a2)
{
  v4 = a2[2];
  if (odometer_check_fuse(a2, &_odometer_cylinder_internal_use))
  {
    v5 = "odometer[%s:%s]: internal use-only unit entitlement found";
LABEL_13:
    v15 = *a2;
    name = chip_get_name(a2[2]);
    expert_log(v15, 1uLL, v5, name, *a1);
    return 0;
  }

  else
  {
    v6 = 0;
    v7 = v4 + 232;
    v8 = 1;
    v5 = "odometer[%s:%s]: manifest is current";
    while (1)
    {
      v9 = *(v7 + 8 * v6);
      v10 = v8;
      v11 = &a2[14 * v6 + 67];
      v12 = !v9 || *(v11 + 52) == 0;
      if (!v12 && v11 != 0)
      {
        v14 = odometer_enforce_property(a2, a1, v9, v11);
        if (v14)
        {
          break;
        }
      }

      v8 = 0;
      v6 = 1;
      if ((v10 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v17 = v14;
    v19 = *a2;
    v20 = chip_get_name(a2[2]);
    expert_log(v19, 0, "odometer[%s:%s]: anti-replay violation: %d", v20, *a1, v17);
    if (v17 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v17);
    }
  }

  return v17;
}

uint64_t _boot_live_enforceable(const char **a1, uint64_t a2)
{
  if (odometer_policy_get_chip_property(a1, *(a2 + 16)))
  {
    v4 = *(a2 + 144);
    v5 = *a2;
    name = chip_get_name(*(a2 + 16));
    v7 = *a1;
    if (v4)
    {
      expert_log(v5, 1uLL, "odometer[%s:%s]: policy is enforceable", name, v7);
      return 0;
    }

    else
    {
      v8 = 1;
      expert_log(v5, 1uLL, "odometer[%s:%s]: manifest has no constraint for policy", name, v7);
    }
  }

  else
  {
    v9 = *a2;
    v10 = chip_get_name(*(a2 + 16));
    v12 = *a1;
    v8 = 1;
    expert_log(v9, 1uLL, "odometer[%s:%s]: chip has no property for policy", v10, v12);
  }

  return v8;
}

uint64_t _boot_live_enforce(const char **a1, uint64_t a2)
{
  v29[3] = *MEMORY[0x29EDCA608];
  v4 = *a2;
  chip_property = odometer_policy_get_chip_property(a1, *(a2 + 16));
  if (!*(a2 + 144))
  {
    __panic_npx("panic: optional not set");
  }

  v6 = chip_property;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  memset(v29, 0, 24);
  memset(v28, 0, sizeof(v28));
  memset(v27, 0, sizeof(v27));
  __n = 64;
  live_nonce = odometer_query_live_nonce(a2, a1, v8, v29);
  if (live_nonce != 6)
  {
    v10 = live_nonce;
    if (live_nonce)
    {
      v18 = *a2;
      chip_get_name(*(a2 + 16));
      expert_log(v18, 0, "odometer[%s:%s]: failed to query nonce: %d");
      goto LABEL_16;
    }

    v11 = expert_entangle_nonce(v4, v7, v8, v29, v28);
    if (v11)
    {
      v10 = v11;
      v12 = *a2;
      chip_get_name(*(a2 + 16));
      expert_log(v12, 0, "odometer[%s:%s]: failed to entangle nonce: %d");
      goto LABEL_16;
    }

    odometer_compute_nonce_hash(v4, v7, v28, v27);
LABEL_14:
    if (!property_constrain_digest(v6, v4, a2 + 64, v27, v19, v20, v21, v22))
    {
      v24 = *a2;
      name = chip_get_name(*(a2 + 16));
      expert_log(v24, 1uLL, "odometer[%s:%s]: manifest is current", name, *a1);
      return 0;
    }

    v10 = *(a1 + 6);
    v23 = *a2;
    chip_get_name(*(a2 + 16));
    expert_log(v23, 0, "odometer[%s:%s]: anti-replay violation: %d");
LABEL_16:
    if (v10 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v10);
    }

    return v10;
  }

  v13 = *a2;
  v14 = chip_get_name(*(a2 + 16));
  expert_log(v13, 1uLL, "odometer[%s:%s]: nonce is bootstrapping; using boot nonce hash", v14, *a1);
  v15 = v7[21];
  if (!v15)
  {
    __panic_npx("panic: illegal chip/expert configuration");
  }

  result = expert_read_boot_manifest(v4, v15 + 28, v27 + 8, &__n);
  if (result)
  {
    v10 = result;
    v17 = *a2;
    chip_get_name(*(a2 + 16));
    expert_log(v17, 0, "odometer[%s:%s]: failed to query boot nonce hash: %d");
    goto LABEL_16;
  }

  if (__n <= 0x40)
  {
    digest_init(v27, v27 + 8, __n);
    goto LABEL_14;
  }

  __break(0x5519u);
  return result;
}

uint64_t image4_environment_copy_nonce_digest(uint64_t a1, void *a2, size_t *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 8);
  memset(__src, 0, sizeof(__src));
  __n = 64;
  v7 = image4_environment_resolve(a1);
  if (v7)
  {
    v8 = v7;
    nonce_domain = image4_environment_get_nonce_domain(a1);
    v10 = darwin_syscall_nonce_copy_hash(v6, v8, nonce_domain, __src, &__n);
    if (v10)
    {
      v18 = v10;
      if (v10 >= 0x6B)
      {
        __panic_npx_2(v10, v11, v12, v13, v14, v15, v16, v17, v10);
      }
    }

    else
    {
      v19 = __n;
      if (__n <= 0x40)
      {
        memcpy(a2, __src, __n);
        v18 = 0;
        *a3 = v19;
      }

      else
      {
        return 84;
      }
    }
  }

  else
  {
    v18 = 45;
    expert_log(v6, 0, "failed to resolve chip environment: %d", 45);
  }

  return v18;
}

uint64_t image4_environment_roll_nonce(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = image4_environment_resolve(a1);
  if (v3)
  {
    v4 = v3;
    nonce_domain = image4_environment_get_nonce_domain(a1);
    v6 = darwin_syscall_nonce_roll(v2, v4, nonce_domain);
    v14 = v6;
    if (v6 >= 0x6B)
    {
      __panic_npx_2(v6, v7, v8, v9, v10, v11, v12, v13, v6);
    }
  }

  else
  {
    v14 = 45;
    expert_log(v2, 0, "failed to resolve chip environment: %d", 45);
  }

  return v14;
}

uint64_t image4_environment_generate_nonce_proposal(uint64_t a1, void *a2, size_t *a3, char *a4, unint64_t *a5)
{
  v27 = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 8);
  memset(__src, 0, sizeof(__src));
  __n = 64;
  v11 = image4_environment_resolve(a1);
  if (v11)
  {
    v12 = v11;
    nonce_domain = image4_environment_get_nonce_domain(a1);
    v14 = darwin_syscall_nonce_generate_proposal(v10, v12, nonce_domain, __src, &__n, a4, a5);
    if (v14)
    {
      v22 = v14;
      if (v14 >= 0x6B)
      {
        __panic_npx_2(v14, v15, v16, v17, v18, v19, v20, v21, v14);
      }
    }

    else
    {
      v23 = __n;
      if (__n <= 0x40)
      {
        memcpy(a2, __src, __n);
        v22 = 0;
        *a3 = v23;
      }

      else
      {
        return 84;
      }
    }
  }

  else
  {
    v22 = 45;
    expert_log(v10, 0, "failed to resolve chip environment: %d", 45);
  }

  return v22;
}

uint64_t image4_environment_commit_nonce_proposal(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 64;
  v3 = image4_environment_resolve(a1);
  if (v3)
  {
    v4 = v3;
    nonce_domain = image4_environment_get_nonce_domain(a1);
    v6 = darwin_syscall_nonce_peek_hash(v2, v4, nonce_domain, &v17, &v16);
    v14 = v6;
    if (!v6)
    {
      v6 = darwin_syscall_nonce_roll(v2, v4, nonce_domain);
      v14 = v6;
    }

    if (v14 >= 0x6B)
    {
      __panic_npx_2(v6, v7, v8, v9, v10, v11, v12, v13, v14, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    v14 = 45;
    expert_log(v2, 0, "failed to resolve chip environment: %d", 45);
  }

  return v14;
}

unint64_t image4_environment_flash(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, size_t *a5)
{
  __src[2] = *MEMORY[0x29EDCA608];
  v9 = *(a1 + 8);
  v24 = 0;
  __src[0] = 0;
  memset(v23, 0, sizeof(v23));
  __src[1] = 0;
  __n = 16;
  result = image4_environment_resolve(a1);
  if (!result)
  {
    v19 = 45;
    expert_log(v9, 0, "failed to resolve chip environment: %d", 45);
    return v19;
  }

  v11 = result;
  if (!*(result + 80))
  {
    if (result >= result + 264)
    {
      goto LABEL_14;
    }

    name = chip_get_name(result);
    v19 = 45;
    expert_log(v9, 0, "%s: chip has no associated dfu policy: %d", name, 45);
    return v19;
  }

  buff_init_wrap(v23, a2, a3);
  result = darwin_syscall_image_dfu(v9, *(v11 + 80), v23, __src, &__n);
  if (result)
  {
    v19 = result;
    if (result >= 0x6B)
    {
      __panic_npx_2(result, v12, v13, v14, v15, v16, v17, v18, result);
    }

    return v19;
  }

  if (!a4)
  {
    return 0;
  }

  v21 = __n;
  if (__n <= 0x10)
  {
    memcpy(a4, __src, __n);
    v19 = 0;
    *a5 = v21;
    return v19;
  }

LABEL_14:
  __break(0x5519u);
  return result;
}

uint64_t img4_firmware_new_from_fd_4MSM(char *a1, uint64_t a2, unsigned int a3, int *a4, uint64_t a5)
{
  expert = img4_runtime_get_expert(a1);
  v17 = 0;
  v16 = 0;
  v11 = *a4;
  v12 = _expert_alloc_type(expert, &_image4_type_firmware);
  img4_firmware_init_sentinel(v12, a1, a5);
  fourcc_init(&v16, a3);
  *(v12 + 16) = &_image4_type_firmware;
  inited = payload_init_empty(v12 + 56, expert, &v16);
  *(v12 + 48) = inited;
  v14 = *(a2 + 16);
  *(v12 + 24) = *a2;
  *(v12 + 40) = v14;
  payload_set_callbacks(inited, img4_firmware_new_from_fd_4MSM_callbacks, v11);
  *a4 = -1;
  return v12;
}

uint64_t _fd_measure(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v33 = a3;
  v38 = *MEMORY[0x29EDCA608];
  v6 = (*(a2 + 48))();
  memset(&v36, 0, sizeof(v36));
  memset(v37, 0, sizeof(v37));
  MEMORY[0x2A1C7C4A8](v6, v7, (*(v6 + 8) + *(v6 + 16) + 19) & 0xFFFFFFFFFFFFFFF8, v8, v9, v10, v11, v12, v31);
  v15 = &v31 - v14;
  if (v16 >= 8)
  {
    memset(&v31 - v14, 170, v13);
  }

  ccdigest_init();
  v34 = &v31;
  if (a4 < 0)
  {
    v19 = 0;
    v17 = 0;
    goto LABEL_9;
  }

  v17 = malloc_type_malloc(0x40000uLL, 0xB28FF26uLL);
  if (v17)
  {
    if (fstat(a4, &v36))
    {
      v18 = *__error();
      expert_log(*a1, 0, "%s: fstat: %d", (a1[1] + 4), v18);
      if (v18)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v22 = 0;
      v32 = 0;
      st_size = v36.st_size;
      while (1)
      {
        while (1)
        {
          memset(v35, 0, 40);
          if (st_size >= 0x40000)
          {
            v24 = 0x40000;
          }

          else
          {
            v24 = st_size;
          }

          v25 = read(a4, v17, v24);
          if ((v25 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v26 = v25;
          if (v25 > 0x40000)
          {
            goto LABEL_25;
          }

          buff_init_wrap_signed(v35, v17, v25);
          if (v26 != v24)
          {
            break;
          }

          length_signed = buff_get_length_signed(v35);
          st_size -= v35[1];
          expert_log(*a1, 2uLL, "%s: left to read = %lu", (a1[1] + 4), v24);
          v28 = *a1;
          v29 = (a1[1] + 4);
          v32 += length_signed;
          expert_log(v28, 2uLL, "%s: cur offset = %lld", v29, v32);
          ccdigest_update();
          v22 = 0;
          if (!st_size)
          {
            goto LABEL_23;
          }
        }

        if (v26)
        {
          v30 = 5;
          expert_log(*a1, 0, "%s: read: bad read: actual = %ld, requested = %lu, chunk length = %lu: %d", (a1[1] + 4), v26, v24, 0x40000, 5);
          goto LABEL_29;
        }

        expert_log(*a1, 2uLL, "%s: stall while reading file", (a1[1] + 4));
        if (v22 >= 3)
        {
          break;
        }

        ++v22;
        if (!st_size)
        {
LABEL_23:
          if (*v6 >= 0x41uLL)
          {
            __panic_npx("panic: buffer not sufficient for digest: actual = %lu, expected >= %lu", 64, *v6);
          }

          (*(v6 + 56))(v6, v15, v37);
          v19 = *v6;
          if (*v6 < 0x41uLL)
          {
            goto LABEL_9;
          }

LABEL_25:
          __break(0x5519u);
LABEL_26:
          v30 = *__error();
          expert_log(*a1, 0, "%s: read: %d");
          goto LABEL_29;
        }
      }

      v30 = 5;
      expert_log(*a1, 0, "%s: stalled out: %d");
LABEL_29:
      if (v30)
      {
        goto LABEL_7;
      }
    }

    v20 = 0;
    goto LABEL_10;
  }

LABEL_7:
  v19 = 0;
LABEL_9:
  v20 = digest_init(v33, v37, v19);
LABEL_10:
  free(v17);
  return v20;
}

uint64_t _fd_dealloc(int a1, int a2)
{
  result = close(a2);
  if (result)
  {
    v3 = __error();
    __panic_npx("panic: close%d", *v3);
  }

  return result;
}

uint64_t _BootPolicyClosureComputeDigest_2(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = **(*(a5 + 32) + 16);
  if (*v9 > a4)
  {
    __panic_npx_0(v9, a2, a1, a4, a5, a6, a7, a8, a4, *v9);
  }

  ccdigest();
  return 0;
}

uint64_t _extract_payload_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a3 + 584))
  {
    __panic_npx_8(a1, a2, a3, a4, a5, a6, a7, a8, v8, v9);
  }

  *a5 = *(a3 + 552);
  return *(a3 + 544);
}

void __panic_npx_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9 = 0xAAAAAAAAAAAAAAAALL;
  bzero(__str, 0x800uLL);
  va_copy(v9, va);
  vsnprintf(__str, 0x800uLL, "panic: optional not set", va);
  _os_crash();
  __break(1u);
}

uint64_t dylib_init(uint64_t a1)
{
  v2 = generic_expert();
  expert_init(a1);
  darwin_syscall_init(a1);

  return generic_expert_set_specialist(v2, a1, 0);
}

size_t dylib_expert_state_init(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  memset(v3, 0, sizeof(v3));
  if (os_parse_boot_arg_int())
  {
    *a1 = 1;
  }

  result = os_parse_boot_arg_string();
  if (result)
  {
    if (LODWORD(v3[0]) == 3171437)
    {
      *(a1 + 16) = a1 + 24;
    }

    result = strlcpy((a1 + 24), v3, 0x20uLL);
    *(a1 + 8) = a1 + 24;
  }

  return result;
}

uint64_t dylib_expert_call_method(uint64_t a1, unint64_t a2, const void *a3, size_t a4, void *a5, size_t *a6)
{
  v12 = expert_runtime_boot(a1);
  if (v12)
  {
    v13 = v12;
    expert_log(a1, 3uLL, "failed to boot expert for user client call: %d", v12);
    goto LABEL_3;
  }

  v14 = darwin_syscall_get(a2);
  if (!v14)
  {
    return 78;
  }

  v15 = v14;
  if (*(v14 + 9) == 6)
  {
    return 78;
  }

  kmod_connect = dylib_expert_get_kmod_connect(a1);
  if (!kmod_connect)
  {
    expert_log(a1, 1uLL, "user client not supported on this target");
    return 45;
  }

  result = IOConnectCallMethod(kmod_connect, *(v15 + 36), 0, 0, a3, a4, 0, 0, a5, a6);
  if (!result)
  {
    expert_log(a1, 2uLL, "user client method success");
    return 0;
  }

  if (((result >> 14) & 0xFFF) != 3)
  {
    expert_log(a1, 0, "user client method failed: v = %hx, trap = %s, kr = %#x, sys = %#x, sub = %#x, code = %#x", *(v15 + 8), *v15, result, result >> 26, (result >> 14) & 0xFFF, result & 0x3FFF);
    return 64;
  }

  if (v15 < v15 + 40)
  {
    v13 = result & 0x3FFF;
    dylib_expert_record_trap_error(a1, v15, "iokit", v13);
LABEL_3:
    if (v13 >= 0x6B)
    {
      __panic_npx("panic: error not set to valid posix code: %d", v13);
    }

    return v13;
  }

  __break(0x5519u);
  return result;
}

uint64_t dylib_expert_record_trap_error(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  switch(a4)
  {
    case 'T':
      return expert_log(a1, 0, "bad argument vector provided to kext: v = %hx, how = %s, trap = %s: %d");
    case 'W':
      return expert_log(a1, 0, "kext and dylib are out of sync: v = %hx, how = %s, trap = %s: %d");
      return expert_log(a1, 0, "kext cannot parse argument vector: v = %hx, how = %s, trap = %s: %d");
  }

  return expert_log(a1, 0, "trap failed: v = %hx, how = %s, trap = %s: %d");
}

uint64_t dylib_restoreos_logv(unint64_t a1, const char *a2, va_list a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a1 >= 4)
  {
    __panic_npx("panic: unreachable case: %s = 0x%llx", "lvl", a1);
  }

  v4 = off_29EF019D8[a1];
  os_unfair_lock_lock(&dylib_restoreos_logv_rd_log);
  v5 = _restore_log_state_file_locked();
  os_unfair_lock_unlock(&dylib_restoreos_logv_rd_log);
  v6 = getprogname();
  if (fprintf(v5, "%s: AppleImage4 %s", v6, v4) < 0 || vfprintf(v5, a2, a3) < 0 || (result = fprintf(v5, "\n"), (result & 0x80000000) != 0))
  {
    os_unfair_lock_lock(&dylib_restoreos_logv_rd_log);
    v8 = qword_2A13C3B18;
    qword_2A13C3B18 = 0;
    v9 = _restore_log_state_file_locked();
    os_unfair_lock_unlock(&dylib_restoreos_logv_rd_log);
    v10 = getprogname();
    fprintf(v9, "%s: AppleImage4 %s", v10, v4);
    vfprintf(v9, a2, a3);
    result = fputc(10, v9);
    if (v8 && v8 != *MEMORY[0x29EDCA610])
    {
      result = fclose(v8);
      if (result == -1)
      {
        dylib_restoreos_logv_cold_1(&v13, v14);
      }
    }
  }

  return result;
}

FILE *_restore_log_state_file_locked()
{
  result = qword_2A13C3B18;
  if (!qword_2A13C3B18)
  {
    result = fopen("/dev/console", "w");
    if (result < &result[1])
    {
      qword_2A13C3B18 = result;
      if (result)
      {
        return result;
      }

      v1 = *__error();
      if (v1 != 1 && v1 != 13)
      {
        if (v1 == 22)
        {
          goto LABEL_16;
        }

        result = *MEMORY[0x29EDCA610];
        goto LABEL_13;
      }

      result = *MEMORY[0x29EDCA610];
      if (*MEMORY[0x29EDCA610] < (*MEMORY[0x29EDCA610] + 152))
      {
        qword_2A13C3B18 = *MEMORY[0x29EDCA610];
LABEL_13:
        if (result < &result[1])
        {
          return result;
        }
      }
    }

    __break(0x5519u);
LABEL_16:
    __panic_npx("panic: invalid mode trying to open console");
  }

  return result;
}

uint64_t chip_instance_instantiate(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[0] = _property_filter_chip_instance;
  v19[1] = 0;
  v19[2] = -1;
  v6 = property_iterator_next(v19);
  if (!v6)
  {
    LODWORD(result) = -1;
    goto LABEL_48;
  }

  v7 = v6;
  v8 = a1 + 160;
  while (1)
  {
    constraint = chip_get_constraint(a3, v7, 0);
    v10 = constraint;
    v11 = constraint + 104;
    v12 = **(constraint + 40);
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = *(constraint + 64);
        if (v13 < 0)
        {
          goto LABEL_45;
        }

        if (constraint >= v11 || (v18 = (a1 + v13)) != 0 && (v18 >= v8 || v18 < a1))
        {
LABEL_44:
          __break(0x5519u);
LABEL_45:
          __panic_npx("panic: invalid offset: %lld", v13);
        }

        result = expert_query_property_uint64(a2, a3, constraint, v18);
      }

      else
      {
        if (v12 != 3)
        {
LABEL_46:
          __panic_npx("panic: version property iterated during instantiation: p = %s, fourcc = %s", *constraint, (constraint + 28));
        }

        v13 = *(constraint + 64);
        if (v13 < 0)
        {
          goto LABEL_45;
        }

        if (constraint >= v11)
        {
          goto LABEL_44;
        }

        v16 = a1 + v13;
        if (a1 + v13)
        {
          if (v16 >= v8 || v16 < a1)
          {
            goto LABEL_44;
          }
        }

        result = expert_query_property_digest(a2, a3, constraint, v16);
      }
    }

    else if (v12)
    {
      if (v12 != 1)
      {
        goto LABEL_46;
      }

      v13 = *(constraint + 64);
      if (v13 < 0)
      {
        goto LABEL_45;
      }

      if (constraint >= v11)
      {
        goto LABEL_44;
      }

      v14 = (a1 + v13);
      if (a1 + v13)
      {
        if (v14 >= v8 || v14 < a1)
        {
          goto LABEL_44;
        }
      }

      result = expert_query_property_uint32(a2, a3, constraint, v14);
    }

    else
    {
      v13 = *(constraint + 64);
      if (v13 < 0)
      {
        goto LABEL_45;
      }

      if (constraint >= v11)
      {
        goto LABEL_44;
      }

      v17 = (a1 + v13);
      if (a1 + v13)
      {
        if (v17 >= v8 || v17 < a1)
        {
          goto LABEL_44;
        }
      }

      result = expert_query_property_BOOL(a2, a3, constraint, v17);
    }

    if (result <= 18)
    {
      if (result)
      {
        if (result != 2)
        {
          break;
        }
      }

      else
      {
        *(a1 + 8) |= *(v10 + 72);
      }

      goto LABEL_40;
    }

    if (result != 19 && result != 45)
    {
      break;
    }

LABEL_40:
    result = property_iterator_next(v19);
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  if (result >= 0x6B)
  {
LABEL_48:
    __panic_npx("panic: error not set to valid posix code: %d", result);
  }

  return result;
}

unint64_t chip_instance_check(unint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (v2 < 0)
  {
    return 0;
  }

  v3 = *(a2 + 72);
  if (!v3)
  {
    __panic_npx("panic: illegal property definition: %s", *a2);
  }

  if ((*(a1 + 8) & v3) == 0)
  {
    return 0;
  }

  v4 = a1 + v2;
  if (v4)
  {
    if (v4 >= a1 + 160 || v4 < a1)
    {
      __break(0x5519u);
      return 0;
    }
  }

  return v4;
}

unint64_t chip_instance_set_BOOL(unint64_t result, uint64_t a2, _BYTE *a3)
{
  v3 = *(a2 + 40);
  if (v3 != &_property_type_BOOL)
  {
    __panic_npx("panic: non-%s property set: property = %s, type = %s", "BOOL", *a2, *(v3 + 8));
  }

  v4 = *(a2 + 64);
  if (v4 < 0)
  {
    __panic_npx("panic: property not present in chip instance: %s", *a2);
  }

  v5 = (result + v4);
  *(result + 8) |= *(a2 + 72);
  if (v5 < result + 160 && v5 >= result)
  {
    *v5 = *a3;
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

unint64_t chip_instance_set_uint32(unint64_t result, uint64_t a2, _DWORD *a3)
{
  v3 = *(a2 + 40);
  if (v3 != &_property_type_uint32)
  {
    __panic_npx("panic: non-%s property set: property = %s, type = %s", "uint32", *a2, *(v3 + 8));
  }

  v4 = *(a2 + 64);
  if (v4 < 0)
  {
    __panic_npx("panic: property not present in chip instance: %s", *a2);
  }

  v5 = (result + v4);
  *(result + 8) |= *(a2 + 72);
  if (v5 < result + 160 && v5 >= result)
  {
    *v5 = *a3;
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

unint64_t chip_instance_set_uint64(unint64_t result, uint64_t a2, void *a3)
{
  v3 = *(a2 + 40);
  if (v3 != &_property_type_uint64)
  {
    __panic_npx("panic: non-%s property set: property = %s, type = %s", "uint64", *a2, *(v3 + 8));
  }

  v4 = *(a2 + 64);
  if (v4 < 0)
  {
    __panic_npx("panic: property not present in chip instance: %s", *a2);
  }

  v5 = (result + v4);
  *(result + 8) |= *(a2 + 72);
  if (v5 < result + 160 && v5 >= result)
  {
    *v5 = *a3;
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

unint64_t chip_instance_set_digest(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 40);
  if (v3 != &_property_type_digest)
  {
    __panic_npx("panic: non-%s property set: property = %s, type = %s", "digest", *a2, *(v3 + 8));
  }

  v4 = *(a2 + 64);
  if (v4 < 0)
  {
    __panic_npx("panic: property not present in chip instance: %s", *a2);
  }

  *(result + 8) |= *(a2 + 72);
  v5 = result + v4;
  if (!v5 || (v5 < result + 160 ? (v6 = v5 >= result) : (v6 = 0), v6))
  {

    return digest_copy(v5, a3);
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

void chip_instance_set_version(unint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *(a2 + 40);
  if (v3 != &_property_type_version)
  {
    __panic_npx("panic: non-%s property set: property = %s, type = %s", "version", *a2, *(v3 + 8));
  }

  v4 = *(a2 + 64);
  if (v4 < 0)
  {
    __panic_npx("panic: property not present in chip instance: %s", *a2);
  }

  *(a1 + 8) |= *(a2 + 72);
  v5 = a1 + v4;
  if (!v5 || (v5 < a1 + 160 ? (v6 = v5 >= a1) : (v6 = 0), v6))
  {

    version_copy(v5, a3);
  }

  else
  {
    __break(0x5519u);
  }
}

_BYTE *chip_instance_get_BOOL(_BYTE *result, uint64_t a2, _BYTE *a3)
{
  v3 = *(a2 + 40);
  if (v3 != &_property_type_BOOL)
  {
    __panic_npx("panic: non-%s property set: property = %s, type = %s", "BOOL", *a2, *(v3 + 8));
  }

  v4 = *(a2 + 64);
  if (v4 < 0)
  {
    __panic_npx("panic: property not present in chip instance: %s", *a2);
  }

  if ((*(a2 + 72) & *(result + 1)) == 0)
  {
    return 0;
  }

  v5 = &result[v4];
  if (v5 >= result + 160 || v5 < result)
  {
    __break(0x5519u);
    return result;
  }

  *a3 = *v5;
  return v5;
}

_DWORD *chip_instance_get_uint32(_DWORD *result, uint64_t a2, _DWORD *a3)
{
  v3 = *(a2 + 40);
  if (v3 != &_property_type_uint32)
  {
    __panic_npx("panic: non-%s property set: property = %s, type = %s", "uint32", *a2, *(v3 + 8));
  }

  v4 = *(a2 + 64);
  if (v4 < 0)
  {
    __panic_npx("panic: property not present in chip instance: %s", *a2);
  }

  if ((*(a2 + 72) & *(result + 1)) == 0)
  {
    return 0;
  }

  v5 = (result + v4);
  if (v5 >= result + 40 || v5 < result)
  {
    __break(0x5519u);
    return result;
  }

  *a3 = *v5;
  return v5;
}

void *chip_instance_get_uint64(void *result, uint64_t a2, void *a3)
{
  v3 = *(a2 + 40);
  if (v3 != &_property_type_uint64)
  {
    __panic_npx("panic: non-%s property set: property = %s, type = %s", "uint64", *a2, *(v3 + 8));
  }

  v4 = *(a2 + 64);
  if (v4 < 0)
  {
    __panic_npx("panic: property not present in chip instance: %s", *a2);
  }

  if ((*(a2 + 72) & result[1]) == 0)
  {
    return 0;
  }

  v5 = (result + v4);
  if (v5 >= result + 20 || v5 < result)
  {
    __break(0x5519u);
    return result;
  }

  *a3 = *v5;
  return v5;
}

unint64_t chip_instance_get_digest(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 40);
  if (v3 != &_property_type_digest)
  {
    __panic_npx("panic: non-%s property set: property = %s, type = %s", "digest", *a2, *(v3 + 8));
  }

  v4 = *(a2 + 64);
  if (v4 < 0)
  {
    __panic_npx("panic: property not present in chip instance: %s", *a2);
  }

  if ((*(a2 + 72) & *(result + 8)) == 0)
  {
    return 0;
  }

  v5 = result + v4;
  if (!(result + v4) || (v5 < result + 160 ? (v6 = v5 >= result) : (v6 = 0), v6))
  {

    return digest_copy(a3, v5);
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

void chip_instance_get_version(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 40);
  if (v3 != &_property_type_version)
  {
    __panic_npx("panic: non-%s property set: property = %s, type = %s", "version", *a2, *(v3 + 8));
  }

  v4 = *(a2 + 64);
  if (v4 < 0)
  {
    __panic_npx("panic: property not present in chip instance: %s", *a2);
  }

  if ((*(a2 + 72) & *(a1 + 8)) != 0)
  {
    v5 = (a1 + v4);
    if (!(a1 + v4) || (v5 < a1 + 160 ? (v6 = v5 >= a1) : (v6 = 0), v6))
    {

      version_copy(a3, v5);
    }

    else
    {
      __break(0x5519u);
    }
  }
}

uint64_t X509PolicySetFlagsForCommonNames(uint64_t a1)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v2 = (a1 + 104);
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  result = X509CertificateSubjectNameGetCommonName(v2, v5);
  if (!result)
  {
    result = compare_octet_string(&iPhoneCAName, v5);
    if (result)
    {
      result = compare_octet_string(&CodeSigningCAName, v5);
      if (result)
      {
        result = compare_octet_string_partial(&MFi4AccessoryCAName, v5);
        if (result)
        {
          result = compare_octet_string_partial(&MFi4AttestationCAName, v5);
          if (result)
          {
            result = compare_octet_string_partial(&MFi4ProvisioningCAName, v5);
            if (result)
            {
              return result;
            }

            v4 = 0x1000000000;
          }

          else
          {
            v4 = 0x800000000;
          }
        }

        else
        {
          v4 = 0x400000000;
        }
      }

      else
      {
        v4 = 0x800000000008;
      }
    }

    else
    {
      v4 = 3840;
    }

    *(a1 + 240) |= v4;
  }

  return result;
}

double X509PolicySetFlagsForMFI(uint64_t a1)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v2 = (a1 + 104);
  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  if (!X509CertificateSubjectNameGetCommonName(v2, v7))
  {
    if (compare_octet_string_partial(&MFICommonNamePrefix, v7))
    {
      goto LABEL_4;
    }

    v6 = 0;
    if (!X509CertificateGetNotBefore(a1, &v6))
    {
      memset(&v5, 0, sizeof(v5));
      strptime("2006-05-31", "%F", &v5);
      v4 = timegm(&v5);
      result = difftime(v4, v6);
      if (result < 0.0)
      {
        *(a1 + 240) |= 0x8000000uLL;
LABEL_4:
        if (!compare_octet_string_partial(&MFi4ProvisioningHostNamePrefix, v7))
        {
          *(a1 + 240) |= 0x1000000000uLL;
        }
      }
    }
  }

  return result;
}

uint64_t X509PolicySetFlagsForRoots(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (*(result + 16) == 1)
  {
    v4 = numAppleProdRoots;
    if (numAppleProdRoots)
    {
      if (a2 + 88 <= (a2 + 104))
      {
        v5 = AppleRootSPKIs;
        while (1)
        {
          v6 = v5 + 1;
          v7 = v5 < AppleRootSPKIs || v6 > X509PolicyImg4;
          if (v7 || v5 >= v6)
          {
            break;
          }

          result = compare_octet_string(a2 + 88, *v5);
          if (!result)
          {
            *(a2 + 240) |= 0xD8E30653FFF8uLL;
            goto LABEL_17;
          }

          ++v5;
          if (!--v4)
          {
            goto LABEL_17;
          }
        }
      }

      goto LABEL_50;
    }
  }

LABEL_17:
  v9 = *(v3 + 8);
  if ((v9 & 0x1000000) != 0)
  {
    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &UcrtRootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1000000;
      goto LABEL_27;
    }
  }

  else
  {
    if ((v9 & 0x1C00000000) == 0)
    {
      goto LABEL_28;
    }

    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &MFi4RootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1C00000000;
LABEL_27:
      *(a2 + 240) = v10;
      goto LABEL_28;
    }
  }

  if (*(v3 + 17) == 1)
  {
    result = X509PolicySetFlagsForTestAnchor(v3, a2);
  }

LABEL_28:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1 && numAppleProdRoots < numAppleRoots)
  {
    if (a2 + 88 <= (a2 + 104))
    {
      v11 = &AppleRootSPKIs[numAppleProdRoots];
      v12 = numAppleRoots - numAppleProdRoots;
      while (1)
      {
        v13 = v11 + 1;
        v14 = v11 < AppleRootSPKIs || v13 > X509PolicyImg4;
        if (v14 || v11 >= v13)
        {
          break;
        }

        result = compare_octet_string(a2 + 88, *v11);
        if (!result)
        {
          *(a2 + 240) |= 0xD8E30653FFF8uLL;
          goto LABEL_44;
        }

        ++v11;
        if (!--v12)
        {
          goto LABEL_44;
        }
      }
    }

    goto LABEL_50;
  }

LABEL_44:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1)
  {
    result = a2 + 88;
    if (a2 + 88 <= (a2 + 104))
    {
      result = compare_octet_string(result, &TestAppleRootECCSPKI);
      if (!result)
      {
        *(a2 + 240) |= 0x6400000uLL;
      }

      return result;
    }

LABEL_50:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509PolicySetFlagsForTestAnchor(void *a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x29EDCA608];
  v6[0] = 0;
  v6[1] = 0;
  v5[0] = 0;
  v5[1] = 0;
  if (a2 + 88 > (a2 + 104))
  {
    __break(0x5519u);
  }

  result = X509CertificateParseSPKI((a2 + 88), v6, 0, v5);
  if (!result)
  {
    result = compare_octet_string(a1[4], v6);
    if (!result)
    {
      result = compare_octet_string(a1[3], v5);
      if (!result)
      {
        *(a2 + 240) |= a1[1];
      }
    }
  }

  return result;
}

unint64_t X509PolicyCheckForBlockedKeys(uint64_t a1)
{
  result = a1 + 88;
  if (result > a1 + 104)
  {
    __break(0x5519u);
  }

  else
  {
    result = compare_octet_string(result, &BlockedYonkersSPKI);
    if (!result)
    {
      *(a1 + 240) &= 0xFFFFFFFFFFF3FFFFLL;
    }
  }

  return result;
}

unint64_t CTImg4VerifyChain(unint64_t result, uint64_t a2, void *a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7, uint64_t a8)
{
  v38[4] = *MEMORY[0x29EDCA608];
  if (!a8)
  {
    return 6;
  }

  v14 = result;
  memset(v38, 170, 32);
  v37[0] = 0xAAAAAAAAAAAAAAAALL;
  v37[1] = 0xAAAAAAAAAAAAAAAALL;
  v15 = *(a8 + 8);
  if (v15)
  {
    v16 = *(a8 + 16);
    if (v16)
    {
      *&v17 = 0xAAAAAAAAAAAAAAAALL;
      *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v36[12] = v17;
      v36[13] = v17;
      v36[10] = v17;
      v36[11] = v17;
      v36[8] = v17;
      v36[9] = v17;
      v36[6] = v17;
      v36[7] = v17;
      v36[4] = v17;
      v36[5] = v17;
      v36[2] = v17;
      v36[3] = v17;
      v36[0] = v17;
      v36[1] = v17;
      v34 = v17;
      v35 = v17;
      v32 = v17;
      v33 = v17;
      v31 = v17;
      v29 = 0xAAAAAAAAAAAAAAAALL;
      v30 = 0xAAAAAAAAAAAAAAAALL;
      if (__CFADD__(v15, v16))
      {
LABEL_27:
        __break(0x5513u);
        return result;
      }

      v18 = v15 + v16;
      if (v15 > v18)
      {
LABEL_26:
        __break(0x5519u);
        goto LABEL_27;
      }

      v29 = v15;
      v30 = v18;
      LODWORD(result) = X509CertificateParse(&v31, &v29);
      if (result || (result = X509CertificateParseSPKI(v36 + 1, &v38[2], v37, v38), result))
      {
        *(a8 + 32) = result;
        return 3;
      }
    }
  }

  v19 = *(a8 + 24);
  v20 = 0x80000000;
  if (v19)
  {
    v20 = *(a8 + 24);
  }

  *&v31 = 0;
  *(&v31 + 1) = v20;
  *(&v32 + 1) = v38;
  *&v32 = 0xAAAAAAAA01000000;
  *&v33 = &v38[2];
  *(&v33 + 1) = v37;
  *&v34 = &null_octet;
  v21 = (&X509PolicyBAAUser & (v19 << 21 >> 63));
  if ((v19 & 0x800000) != 0)
  {
    v21 = &X509PolicyBAASystem;
  }

  v22 = (v19 & 0x40000800000) == 0;
  v23 = &v31;
  if (!v22)
  {
    v23 = v21;
  }

  v29 = 0xAAAAAAAAAAAAAAAALL;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v27 = 0;
  v28 = 0;
  if (v23 >= (v23 + 56))
  {
    goto LABEL_26;
  }

  v24 = CTEvaluateCertsForPolicy(v14, a2, 0, 0, &v27, &v28, 0, 0, 0, &v29, v23);
  if (v24)
  {
    *(a8 + 32) = v24;
    return 0xFFFFFFFFLL;
  }

  else
  {
    if (a5 && a6)
    {
      v25 = v30;
      *a5 = v29;
      *a6 = v25;
    }

    result = 0;
    if (a3)
    {
      if (a4)
      {
        result = 0;
        v26 = v28;
        *a3 = v27;
        *a4 = v26;
      }
    }
  }

  return result;
}

uint64_t CTImg4VerifySignatureWithPublicKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = *MEMORY[0x29EDCA608];
  if (!a8)
  {
    return 6;
  }

  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31 = v13;
  v32 = v13;
  v14 = 655617;
  v29 = v13;
  v30 = v13;
  v27 = v13;
  v28 = v13;
  v25 = v13;
  v26 = v13;
  v24[0] = v13;
  v24[1] = v13;
  v23 = v13;
  v15 = *(a7 + 48);
  v16 = *(*(a7 + 40) + 8);
  *(&v25 + 1) = **(a7 + 40);
  *&v26 = v16;
  *(&v27 + 1) = a3;
  *&v28 = a4;
  v17 = v15[1];
  v22[0] = *v15;
  v22[1] = v17;
  if ((find_digestOID_for_signingOID(&v25 + 8, v24 + 1) & 1) == 0)
  {
    v14 = 656640;
    goto LABEL_8;
  }

  result = compare_octet_string(v22, &rsaEncryption);
  if (!result)
  {
    v21 = validateSignatureRSA;
    v19 = 0;
    v20 = 0;
    goto LABEL_12;
  }

  if (compare_octet_string(v22, &ecPublicKey))
  {
LABEL_8:
    result = 4;
    goto LABEL_9;
  }

  result = oidForPubKeyLength();
  v20 = *result;
  v19 = *(result + 8);
  v21 = validateSignatureEC;
LABEL_12:
  *(&v26 + 1) = v20;
  *&v27 = v19;
  if (a1 && !a2 || a5 && !a6)
  {
    __break(0x5519u);
    return result;
  }

  if (v21(a1, a2, a5, a6, &v23))
  {
    return 0;
  }

  v14 = 655648;
  result = 0xFFFFFFFFLL;
LABEL_9:
  *(a8 + 32) = v14;
  return result;
}

unint64_t CTImg4CreateContext(unint64_t result, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v23 = *MEMORY[0x29EDCA608];
  if (!a5)
  {
    return 786433;
  }

  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  if (a5 + 48 < a5)
  {
LABEL_33:
    __break(0x5519u);
    goto LABEL_34;
  }

  v9 = result;
  v10 = 786435;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  if (!a2 || !result)
  {
    if ((a4 | 0x80000000) == 0x80000000)
    {
      return v10;
    }

    if ((a4 & 0x40000800000) == 0)
    {
      return 786436;
    }

    v12 = (&X509PolicyBAAUser & (a4 << 21 >> 63));
    if ((a4 & 0x800000) != 0)
    {
      v12 = &X509PolicyBAASystem;
    }

    v13 = *(v12[4] + 8);
    v21 = *v12[4];
    v22 = v13;
LABEL_15:
    v14 = compare_octet_string(&rsaEncryption, &v21);
    if (!v14 || !compare_octet_string(&ecPublicKey, &v21))
    {
      v10 = 786434;
      if (a3 > 7)
      {
        if (a3 == 8)
        {
          v15 = _ctImg4EcdsaSha384Impl;
          v16 = _ctImg4RsaSha384Impl;
        }

        else
        {
          if (a3 != 16)
          {
            return v10;
          }

          v15 = _ctImg4EcdsaSha512Impl;
          v16 = _ctImg4RsaSha512Impl;
        }
      }

      else if (a3 == 1)
      {
        v15 = _ctImg4EcdsaSha1Impl;
        v16 = _ctImg4RsaSha1Impl;
      }

      else
      {
        if (a3 != 4)
        {
          return v10;
        }

        v15 = _ctImg4EcdsaSha256Impl;
        v16 = _ctImg4RsaSha256Impl;
      }

      if (!v14)
      {
        v15 = v16;
      }

      v10 = 0;
      *a5 = v15;
      *(a5 + 8) = v9;
      *(a5 + 16) = a2;
      *(a5 + 24) = a4;
      return v10;
    }

    return 655617;
  }

  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[12] = v11;
  v20[13] = v11;
  v20[10] = v11;
  v20[11] = v11;
  v20[8] = v11;
  v20[9] = v11;
  v20[6] = v11;
  v20[7] = v11;
  v20[4] = v11;
  v20[5] = v11;
  v20[2] = v11;
  v20[3] = v11;
  v20[0] = v11;
  v20[1] = v11;
  v19[3] = v11;
  v19[4] = v11;
  v19[1] = v11;
  v19[2] = v11;
  v19[0] = v11;
  if (!__CFADD__(result, a2))
  {
    if (result + a2 >= result)
    {
      v18[0] = result;
      v18[1] = result + a2;
      if (X509CertificateParse(v19, v18))
      {
        return v10;
      }

      v17[0] = 0xAAAAAAAAAAAAAAAALL;
      v17[1] = 0xAAAAAAAAAAAAAAAALL;
      v10 = X509CertificateParseSPKI(v20 + 1, &v21, 0, v17);
      if (v10)
      {
        return v10;
      }

      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_34:
  __break(0x5513u);
  return result;
}

int *find_digest(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = &digests[v2 / 4 + 2];
    if (result > &digests[v2 / 4 + 6])
    {
      __break(0x5519u);
      goto LABEL_9;
    }

    result = compare_octet_string_raw(result, *a1, *(a1 + 8));
    if (!result)
    {
      break;
    }

    v2 += 32;
    if (v2 == 160)
    {
      return 0;
    }
  }

  if (v2 <= ~digests)
  {
    return &digests[v2 / 4];
  }

LABEL_9:
  __break(0x5513u);
  return result;
}

int *find_digest_by_type(int *result)
{
  v1 = 0;
  while (digests[v1 / 4] != result)
  {
    v1 += 32;
    if (v1 == 160)
    {
      return 0;
    }
  }

  if (v1 <= ~digests)
  {
    return &digests[v1 / 4];
  }

  __break(0x5513u);
  return result;
}

uint64_t find_digestOID_for_signingOID(uint64_t a1, void *a2)
{
  if (!compare_octet_string_raw(a1, &sha1WithRSA_oid, 9uLL) || !compare_octet_string_raw(a1, &sha1WithECDSA_oid, 7uLL))
  {
    v6 = &CTOidSha1;
    v4 = 5;
    goto LABEL_11;
  }

  v4 = 9;
  if (!compare_octet_string_raw(a1, &sha256WithRSA_oid, 9uLL))
  {
    v6 = &CTOidSha256;
    goto LABEL_11;
  }

  if (!compare_octet_string_raw(a1, &sha256WithECDSA_oid, 8uLL))
  {
    v6 = &CTOidSha256;
LABEL_18:
    v4 = 9;
    goto LABEL_11;
  }

  v4 = 9;
  if (!compare_octet_string_raw(a1, &sha384WithRSA_oid, 9uLL))
  {
    v6 = &CTOidSha384;
    goto LABEL_11;
  }

  if (!compare_octet_string_raw(a1, &sha384WithECDSA_oid, 8uLL))
  {
    v6 = &CTOidSha384;
    goto LABEL_18;
  }

  v4 = 9;
  if (compare_octet_string_raw(a1, &sha512WithRSA_oid, 9uLL))
  {
    if (compare_octet_string_raw(a1, &sha512WithECDSA_oid, 8uLL))
    {
      return 0;
    }

    v6 = &CTOidSha512;
    goto LABEL_18;
  }

  v6 = &CTOidSha512;
LABEL_11:
  *a2 = v6;
  a2[1] = v4;
  return 1;
}

unint64_t validateSignatureRSA(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 0;
  v34 = *MEMORY[0x29EDCA608];
  v30 = 0;
  if (!result)
  {
    return v5 & 1;
  }

  if (!a2)
  {
    return v5 & 1;
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    return v5 & 1;
  }

  if (a5 + 7 > a5 + 9)
  {
    goto LABEL_34;
  }

  v8 = result;
  result = compare_octet_string(&rsaEncryption, (a5 + 7));
  if (result)
  {
    result = validateOIDs(&rsaAlgs, (a5 + 3), (a5 + 7));
    if (!result)
    {
      goto LABEL_23;
    }
  }

  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v10 = a5[9];
  v9 = a5[10];
  if (__CFADD__(v10, v9))
  {
    goto LABEL_35;
  }

  if (v10 > v10 + v9)
  {
    goto LABEL_34;
  }

  v28 = a5[9];
  v29 = v10 + v9;
  if (v9)
  {
    result = ccder_blob_check_null(&v28);
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (__CFADD__(v8, a2))
  {
    goto LABEL_35;
  }

  if (v8 + a2 < v8)
  {
    goto LABEL_34;
  }

  result = ccder_decode_rsa_pub_n();
  if (!result)
  {
LABEL_23:
    v5 = 0;
    return v5 & 1;
  }

  v11 = result;
  if (!(result >> 58))
  {
    v12 = result << 6;
    if (result << 6 >= 0x400)
    {
      v32 = 0xAAAAAAAAAAAAAAAALL;
      v33 = -21846;
      v31 = 6;
      if (&vars0 == 82)
      {
        goto LABEL_35;
      }

      v13 = a5[4];
      LOBYTE(v32) = v13;
      if (&v31 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_35;
      }

      if (v13 < 0xA)
      {
        result = __memcpy_chk();
        if (result <= result + v13)
        {
          if (v12 > 0x1068)
          {
            goto LABEL_23;
          }

          result = MEMORY[0x2A1C7C4A8](result, v14, v15, v16, v17, v18, v19, v20, v27);
          v23 = (&v27 - 4 * v22);
          v24 = 0;
          *&v25 = 0xAAAAAAAAAAAAAAAALL;
          *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
          do
          {
            v26 = &v23[v24 / 8];
            *v26 = v25;
            *(v26 + 1) = v25;
            v24 += 32;
          }

          while ((v21 & 0x7FFFFFFFFFFFFFE0) != v24);
          if (v23 + 4 <= &v27 && v23 <= v23 + 4)
          {
            *v23 = v11;
            if (ccrsa_import_pub())
            {
              v5 = 0;
            }

            else if (ccrsa_verify_pkcs1v15_allowshortsigs())
            {
              v5 = 0;
              v30 = 0;
            }

            else
            {
              v5 = v30;
            }

            return v5 & 1;
          }
        }
      }

LABEL_34:
      __break(0x5519u);
LABEL_35:
      __break(0x5513u);
      goto LABEL_36;
    }

    goto LABEL_23;
  }

LABEL_36:
  __break(0x550Cu);
  return result;
}

unint64_t validateOIDs(unint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 1;
  while (v5 < v5 + 16)
  {
    result = compare_octet_string(v5, a2);
    if (result)
    {
      goto LABEL_11;
    }

    if (v5 + 16 > v5 + 32)
    {
      break;
    }

    result = compare_octet_string(v5 + 16, a3);
    if (result)
    {
LABEL_11:
      v7 = v6 < 3;
      v5 += 32;
      if (++v6 != 4)
      {
        continue;
      }
    }

    return v7;
  }

  __break(0x5519u);
  return result;
}

_UNKNOWN **oidForPubKeyLength()
{
  v0 = ccec_x963_import_pub_size();
  is_supported = ccec_keysize_is_supported();
  v2 = &CTOidSECP256r1;
  v3 = &CTOidSECP521r1;
  v4 = &CTOidSECP384r1;
  if (v0 != 384)
  {
    v4 = 0;
  }

  if (v0 != 521)
  {
    v3 = v4;
  }

  if (v0 != 256)
  {
    v2 = v3;
  }

  if (is_supported)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t *validateSignatureEC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v24[1] = *MEMORY[0x29EDCA608];
  HIBYTE(v24[0]) = 0;
  if (!result)
  {
    return (v5 & 1);
  }

  if (!a2)
  {
    return (v5 & 1);
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    return (v5 & 1);
  }

  v7 = a5 + 72;
  if (a5 + 56 > (a5 + 72))
  {
    goto LABEL_32;
  }

  result = compare_octet_string(&ecPublicKey, a5 + 56);
  if (result)
  {
    result = validateOIDs(&ecAlgs, a5 + 24, a5 + 56);
    if (!result)
    {
      goto LABEL_27;
    }
  }

  if (v7 > a5 + 88)
  {
    goto LABEL_32;
  }

  result = ccec_cp_for_oid((a5 + 72));
  if (!result)
  {
LABEL_27:
    v5 = 0;
    return (v5 & 1);
  }

  if (result >= result + 4)
  {
    goto LABEL_32;
  }

  v15 = *result;
  if (*result >> 61 || !is_mul_ok(8 * v15, 3uLL))
  {
    goto LABEL_33;
  }

  v16 = 24 * v15;
  v17 = __CFADD__(v16, 16);
  v18 = v16 + 16;
  if (v17 || v18 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_34;
  }

  result = MEMORY[0x2A1C7C4A8](result, v8, v9, v10, v11, v12, v13, v14, v24[0]);
  v21 = &v24[-2 * v20];
  v22 = 0;
  do
  {
    v23 = &v21[v22 / 8];
    *v23 = 0xAAAAAAAAAAAAAAAALL;
    v23[1] = 0xAAAAAAAAAAAAAAAALL;
    v22 += 16;
  }

  while ((v19 & 0xFFFFFFFFFFFFFFF0) != v22);
  if (v19 < 0x10)
  {
    goto LABEL_35;
  }

  *v21 = result;
  if (v21 + 2 > v24 || v21 > v21 + 2)
  {
LABEL_32:
    __break(0x5519u);
LABEL_33:
    __break(0x550Cu);
LABEL_34:
    __break(0x5500u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (MEMORY[0x29C295B80]())
  {
    goto LABEL_30;
  }

  result = ccec_x963_import_pub_size();
  if (result != 256 || *(a5 + 96) != 64)
  {
    if (ccec_verify())
    {
LABEL_29:
      HIBYTE(v24[0]) = 0;
    }

LABEL_30:
    v5 = HIBYTE(v24[0]);
    return (v5 & 1);
  }

  if (*(a5 + 88) < 0xFFFFFFFFFFFFFFE0)
  {
    if (!ccec_verify_composite())
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_36:
  __break(0x5513u);
  return result;
}

uint64_t ccec_cp_for_oid(int **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1[1];
  if (v1 != 7)
  {
    if (v1 == 10 && **a1 == 0x33DCE48862A0806 && *(*a1 + 4) == 1793)
    {
      JUMPOUT(0x29C295B30);
    }

    return 0;
  }

  v3 = *a1;
  if (**a1 == -2127887098 && *(*a1 + 3) == 570426497)
  {
    JUMPOUT(0x29C295B40);
  }

  v5 = *v3;
  v6 = *(v3 + 3);
  if (v5 != -2127887098 || v6 != 587203713)
  {
    return 0;
  }

  return MEMORY[0x2A1C74408]();
}

uint64_t compressECPublicKey(void *a1, int **a2, uint64_t a3, uint64_t a4)
{
  v26[1] = *MEMORY[0x29EDCA608];
  v7 = ccec_cp_for_oid(a2);
  if (!v7)
  {
    return 655366;
  }

  v15 = v7;
  if (v7 >= v7 + 4)
  {
    goto LABEL_20;
  }

  v16 = *v7;
  if (*v7 >> 61 || !is_mul_ok(8 * v16, 3uLL))
  {
    goto LABEL_21;
  }

  v17 = 24 * v16;
  v18 = __CFADD__(v17, 16);
  v19 = v17 + 16;
  if (v18 || v19 >= 0xFFFFFFFFFFFFFFF0)
  {
LABEL_22:
    __break(0x5500u);
  }

  result = MEMORY[0x2A1C7C4A8](v7, v8, v9, v10, v11, v12, v13, v14, v26[0]);
  v23 = &v26[-2 * v22];
  v24 = 0;
  do
  {
    v25 = &v23[v24 / 8];
    *v25 = 0xAAAAAAAAAAAAAAAALL;
    v25[1] = 0xAAAAAAAAAAAAAAAALL;
    v24 += 16;
  }

  while ((v21 & 0xFFFFFFFFFFFFFFF0) != v24);
  if (v21 < 0x10)
  {
    __break(1u);
    return result;
  }

  *v23 = v15;
  if (v23 + 2 > v26 || v23 > v23 + 2)
  {
LABEL_20:
    __break(0x5519u);
LABEL_21:
    __break(0x550Cu);
    goto LABEL_22;
  }

  result = MEMORY[0x29C295B80](v15, a1[1], *a1, v23);
  if (!result)
  {
    if (ccec_compressed_x962_export_pub_size() == a4)
    {
      if (!a3 || a4)
      {
        return ccec_compressed_x962_export_pub();
      }

      goto LABEL_20;
    }

    return 393220;
  }

  return result;
}

uint64_t decompressECPublicKey(uint64_t a1, int **a2, uint64_t a3, uint64_t a4)
{
  v26[1] = *MEMORY[0x29EDCA608];
  v6 = ccec_cp_for_oid(a2);
  if (!v6)
  {
    return 655366;
  }

  if (v6 >= v6 + 4)
  {
LABEL_23:
    __break(0x5519u);
    goto LABEL_24;
  }

  v14 = *v6;
  if (*v6 >> 61 || !is_mul_ok(8 * v14, 3uLL))
  {
LABEL_25:
    __break(0x550Cu);
  }

  v15 = 24 * v14;
  v16 = __CFADD__(v15, 16);
  v17 = v15 + 16;
  if (v16 || v17 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_24;
  }

  result = MEMORY[0x2A1C7C4A8](v6, v7, v8, v9, v10, v11, v12, v13, v26[0]);
  v21 = &v26[-2 * v20];
  v22 = 0;
  do
  {
    v23 = &v21[v22 / 8];
    *v23 = 0xAAAAAAAAAAAAAAAALL;
    v23[1] = 0xAAAAAAAAAAAAAAAALL;
    v22 += 16;
  }

  while ((v19 & 0xFFFFFFFFFFFFFFF0) != v22);
  if (v19 >= 0x10)
  {
    *v21 = result;
    if (v21 + 2 <= v26 && v21 <= v21 + 2)
    {
      v24 = ccec_compressed_x962_import_pub();
      if (!v24)
      {
        v25 = cczp_bitlen();
        if (v25 < 0xFFFFFFFFFFFFFFF9)
        {
          if (!a3 || a4)
          {
            if ((((v25 + 7) >> 2) | 1) == a4)
            {
              v24 = 0;
            }

            else
            {
              v24 = 393220;
            }

            ccec_export_pub();
            return v24;
          }

          goto LABEL_23;
        }

LABEL_24:
        __break(0x5500u);
        goto LABEL_25;
      }

      return v24;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t CMSParseContentInfoSignedDataWithOptions(char *a1, uint64_t a2, unint64_t *a3, char a4)
{
  v41 = *MEMORY[0x29EDCA608];
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_110;
  }

  if (&a1[a2] < a1)
  {
    goto LABEL_108;
  }

  v4 = 65537;
  v27 = a1;
  v28 = &a1[a2];
  v26 = 0;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v7 = ccder_blob_decode_ber_tl(&v27, 0x2000000000000010, &v26 + 1, &v25);
  result = 65537;
  if (v7)
  {
    v23 = 0xAAAAAAAAAAAAAAAALL;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v27, v25))
    {
      goto LABEL_110;
    }

    if (v27 > &v27[v25] || &v27[v25] > v28)
    {
      goto LABEL_108;
    }

    v23 = v27;
    v24 = &v27[v25];
    if (ccder_blob_decode_tl())
    {
      if (v24 < v23 || v25 > v24 - v23)
      {
        goto LABEL_108;
      }

      if (compare_octet_string_raw(&pkcs7_signedData_oid, v23, v25))
      {
        return 65539;
      }

      if (__CFADD__(v23, v25))
      {
        goto LABEL_110;
      }

      if (v23 > &v23[v25] || &v23[v25] > v24)
      {
        goto LABEL_108;
      }

      v23 += v25;
      if (!ccder_blob_decode_ber_tl(&v23, 0xA000000000000000, &v26, &v25))
      {
        return 65540;
      }

      v21 = 0xAAAAAAAAAAAAAAAALL;
      v22 = 0xAAAAAAAAAAAAAAAALL;
      if (__CFADD__(v23, v25))
      {
        goto LABEL_110;
      }

      if (v23 > &v23[v25] || &v23[v25] > v24)
      {
        goto LABEL_108;
      }

      v21 = v23;
      v22 = &v23[v25];
      v30 = 0;
      memset(v29, 170, sizeof(v29));
      if ((ccder_blob_decode_ber_tl(&v21, 0x2000000000000010, &v30 + 1, v29) & 1) == 0)
      {
        return 131073;
      }

      if (__CFADD__(v21, v29[0]))
      {
        goto LABEL_110;
      }

      v9 = 131080;
      if (&v21[v29[0]] != v22)
      {
        return 131082;
      }

      if (!ccder_blob_decode_uint64())
      {
        return 131074;
      }

      v10 = a3[11];
      result = 131092;
      if (v10 <= 4 && ((1 << v10) & 0x1A) != 0)
      {
        if (!ccder_blob_eat_ber_inner(&v21, 0x2000000000000011, 0, 125))
        {
          return 131075;
        }

        v34 = 0;
        v33 = 0;
        if ((ccder_blob_decode_ber_tl(&v21, 0x2000000000000010, &v34, &v33) & 1) == 0)
        {
          return 131076;
        }

        v31 = 0xAAAAAAAAAAAAAAAALL;
        v32 = 0xAAAAAAAAAAAAAAAALL;
        if (__CFADD__(v21, v33))
        {
          goto LABEL_110;
        }

        if (v21 > &v21[v33] || &v21[v33] > v22)
        {
          goto LABEL_108;
        }

        v31 = v21;
        v32 = &v21[v33];
        if (!ccder_blob_decode_tl())
        {
          return 131077;
        }

        if (v32 < v31 || v33 > v32 - v31)
        {
          goto LABEL_108;
        }

        if (compare_octet_string_raw(&pkcs7_data_oid, v31, v33))
        {
          return 131078;
        }

        if (__CFADD__(v31, v33))
        {
          goto LABEL_110;
        }

        v11 = &v31[v33];
        if (v31 > &v31[v33] || v11 > v32)
        {
          goto LABEL_108;
        }

        v31 += v33;
        v12 = v34;
        if (v11 != v32 || (v34 & 1) != 0)
        {
          v39 = 0;
          v37 = v32;
          v38 = 0;
          v36 = v11;
          if (ccder_blob_decode_ber_tl(&v36, 0xA000000000000000, &v39, &v38))
          {
            if ((v12 & 1) == 0)
            {
              if (__CFADD__(v36, v38))
              {
                goto LABEL_110;
              }

              if (&v36[v38] != v32)
              {
                return v9;
              }
            }

            if (v36 > v37)
            {
              goto LABEL_108;
            }

            v31 = v36;
            v32 = v37;
            v35 = 0;
            v15 = v39;
            if (v39 == 1 && !ccder_blob_decode_ber_tl(&v31, 0x2000000000000004, &v35, &v38))
            {
              return 131079;
            }

            v40 = 0;
            if (!ccder_blob_decode_tl())
            {
              return 131090;
            }

            v16 = v31;
            v17 = v32;
            if (v32 < v31)
            {
              goto LABEL_108;
            }

            v18 = v40;
            if (v40 > v32 - v31)
            {
              goto LABEL_108;
            }

            a3[9] = v31;
            a3[10] = v18;
            if (__CFADD__(v16, v18))
            {
LABEL_110:
              __break(0x5513u);
              return 0;
            }

            v19 = &v16[v18];
            if (v19 > v17 || v16 > v19)
            {
              goto LABEL_108;
            }

            v31 = v19;
            if ((ccder_blob_decode_eoc(&v31, v35) & 1) == 0)
            {
              return 131089;
            }
          }

          else
          {
            if (!v12)
            {
              return v9;
            }

            v15 = v39;
          }

          if ((ccder_blob_decode_eoc(&v31, v15 & 1) & 1) == 0)
          {
            return 131088;
          }

          v11 = v31;
        }

        if (v11 > v22 || v21 > v11)
        {
          goto LABEL_108;
        }

        v21 = v11;
        if ((ccder_blob_decode_eoc(&v21, v12) & 1) == 0)
        {
          return 131081;
        }

        v36 = 0xAAAAAAAAAAAAAAAALL;
        v37 = 0xAAAAAAAAAAAAAAAALL;
        if (v21 > v22)
        {
          goto LABEL_108;
        }

        v36 = v21;
        v37 = v22;
        if ((ccder_blob_decode_ber_tl(&v36, 0xA000000000000000, &v30, v29) & 1) == 0)
        {
          v13 = v21;
          v14 = v22;
          goto LABEL_85;
        }

        v31 = 0xAAAAAAAAAAAAAAAALL;
        v32 = 0xAAAAAAAAAAAAAAAALL;
        if (!__CFADD__(v36, v29[0]))
        {
          if (v36 > &v36[v29[0]] || &v36[v29[0]] > v37)
          {
            goto LABEL_108;
          }

          v31 = v36;
          v32 = &v36[v29[0]];
          if (!CMSParseImplicitCertificateSet(&v31, a3[1], *a3, a3 + 3, a3 + 2))
          {
            return 131085;
          }

          if (!ccder_blob_decode_eoc(&v31, v30))
          {
            return 131086;
          }

          v13 = v31;
          if (v31 >= v36 != v31 - v36 < 0)
          {
            if (v36 > v31)
            {
              goto LABEL_108;
            }

            v14 = v37;
            if (v31 > v37)
            {
              goto LABEL_108;
            }

            v21 = v31;
            v22 = v37;
LABEL_85:
            if (v13 <= v14)
            {
              v36 = v13;
              v37 = v14;
              if (ccder_blob_eat_ber_inner(&v36, 0xA000000000000001, 0, 125))
              {
                if (v36 > v37)
                {
                  goto LABEL_108;
                }

                v21 = v36;
                v22 = v37;
              }

              if (!ccder_blob_eat_ber_inner(&v21, 0x2000000000000011, &v29[1], 125))
              {
                return 131083;
              }

              if (v29[2] >= v29[1])
              {
                v20 = &v21[-v29[1]];
                if (&v21[-v29[1]] <= v29[2] - v29[1])
                {
                  a3[5] = v29[1];
                  a3[6] = v20;
                  if ((ccder_blob_decode_eoc(&v21, HIBYTE(v30)) & 1) == 0)
                  {
                    return 131084;
                  }

                  if (!ccder_blob_decode_eoc(&v21, v26))
                  {
                    return 65541;
                  }

                  if (v21 <= v24 && v23 <= v21)
                  {
                    v23 = v21;
                    if (ccder_blob_decode_eoc(&v23, HIBYTE(v26)))
                    {
                      if ((a4 & 1) == 0 && v23 != v28)
                      {
                        return 65543;
                      }

                      return 0;
                    }

                    return (v4 + 5);
                  }
                }
              }
            }

LABEL_108:
            __break(0x5519u);
            return (v4 + 5);
          }
        }

        goto LABEL_110;
      }
    }

    else
    {
      return 65538;
    }
  }

  return result;
}

uint64_t ccder_blob_decode_ber_tl(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t *a4)
{
  v8 = ccder_blob_decode_tag();
  result = 0;
  if (v8)
  {
    if (a2 == 0xAAAAAAAAAAAAAAAALL)
    {
      return ccder_blob_decode_ber_len(a1, a3, a4);
    }
  }

  return result;
}

uint64_t ccder_blob_decode_eoc(unint64_t *a1, int a2)
{
  if (!a2)
  {
    return 1;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return result;
  }

  v4 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
LABEL_12:
    __break(0x5519u);
    return result;
  }

  v5 = v4 - 0x5555555555555556;
  if (v4 > v4 - 0x5555555555555556 || v5 > a1[1])
  {
    goto LABEL_12;
  }

  *a1 = v5;
  return 1;
}

uint64_t CMSParseSignerInfos(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, __int128 *))
{
  v83 = *MEMORY[0x29EDCA608];
  v81 = 0xAAAAAAAAAAAAAAAALL;
  v82 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (__CFADD__(v4, v3))
  {
    goto LABEL_94;
  }

  if (v4 > v4 + v3)
  {
    goto LABEL_93;
  }

  v81 = *(a1 + 40);
  v82 = v4 + v3;
  v69 = 0xAAAAAAAAAAAAAAAALL;
  if (v4 >= v4 + v3)
  {
    v48 = 0;
    result = 0;
    if (v3)
    {
      return (v48 << 8) + 196616;
    }

    return result;
  }

  v8 = 0;
  v59 = 0;
  v9 = 196871;
  v10 = 256;
  do
  {
    v68 = 0;
    v79 = 0u;
    v80 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    DWORD2(v80) = 327681;
    LOBYTE(v79) = v8 + 1;
    if ((ccder_blob_decode_ber_tl(&v81, 0x2000000000000010, &v68, &v69) & 1) == 0)
    {
      return (v9 - 6);
    }

    v66 = 0xAAAAAAAAAAAAAAAALL;
    v67 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v81, v69))
    {
      goto LABEL_94;
    }

    if (v81 > v81 + v69 || v81 + v69 > v82)
    {
      goto LABEL_93;
    }

    v66 = v81;
    v67 = v81 + v69;
    if ((ccder_blob_decode_uint64() & 1) == 0)
    {
      return (v9 - 5);
    }

    v11 = v66;
    v12 = v67;
    v64 = 0xAAAAAAAAAAAAAAAALL;
    v65 = 0xAAAAAAAAAAAAAAAALL;
    if (v66 > v67)
    {
      goto LABEL_93;
    }

    v64 = v66;
    v65 = v67;
    v62 = v66;
    v63 = v67;
    if (ccder_blob_decode_tl())
    {
      v13 = v66;
    }

    else
    {
      if (ccder_blob_decode_tl())
      {
        v13 = v64;
        v14 = v65;
      }

      else
      {
        if (!ccder_blob_decode_tl())
        {
          v58 = 196611;
          return (v58 + v10);
        }

        v13 = v62;
        v14 = v63;
      }

      if (v13 > v14)
      {
        goto LABEL_93;
      }

      v66 = v13;
      v67 = v14;
    }

    if (__CFADD__(v69, v13 - v11))
    {
      goto LABEL_95;
    }

    if (v69 + v13 - v11 > v12 - v11)
    {
      goto LABEL_93;
    }

    *(&v70 + 1) = v11;
    *&v71 = v69 + v13 - v11;
    if (__CFADD__(v13, v69))
    {
      goto LABEL_94;
    }

    if (v13 > v13 + v69 || v13 + v69 > v67)
    {
      goto LABEL_93;
    }

    v66 = v13 + v69;
    if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v66, &v71 + 1))
    {
      v58 = 196612;
      return (v58 + v10);
    }

    v60 = 0xAAAAAAAAAAAAAAAALL;
    v61 = 0xAAAAAAAAAAAAAAAALL;
    if (v66 > v67)
    {
      goto LABEL_93;
    }

    v60 = v66;
    v61 = v67;
    if (ccder_blob_decode_tl())
    {
      if (v61 < v60 || v69 > v61 - v60)
      {
        goto LABEL_93;
      }

      *(&v72 + 1) = v60;
      *&v73 = v69;
      if (__CFADD__(v60, v69))
      {
        goto LABEL_94;
      }

      if (v60 + v69 > v61 || v60 > v60 + v69)
      {
        goto LABEL_93;
      }

      v66 = v60 + v69;
      v67 = v61;
    }

    else
    {
      *(&v72 + 1) = 0;
      *&v73 = 0;
    }

    if ((ccder_blob_decode_AlgorithmIdentifierNULL(&v66, &v73 + 1) & 1) == 0)
    {
      return (v9 - 2);
    }

    if ((ccder_blob_decode_tl() & 1) == 0)
    {
      return (v9 - 1);
    }

    if (v67 < v66 || v69 > v67 - v66)
    {
      goto LABEL_93;
    }

    *(&v75 + 1) = v66;
    *&v76 = v69;
    if (__CFADD__(v66, v69))
    {
      goto LABEL_94;
    }

    v15 = v66 + v69;
    if (v66 + v69 > v67 || v66 > v15)
    {
      goto LABEL_93;
    }

    v66 += v69;
    v60 = v15;
    v61 = v67;
    if (ccder_blob_eat_ber_inner(&v60, 0xA000000000000001, 0, 125))
    {
      if (v60 > v61)
      {
        goto LABEL_93;
      }

      v66 = v60;
      v67 = v61;
    }

    if (!ccder_blob_decode_eoc(&v66, v68))
    {
      return v9;
    }

    digest = find_digest(&v71 + 8);
    if (digest)
    {
      v17 = digest;
      v18 = *(a1 + 96);
      if (!v18 || *digest <= v18)
      {
        result = a3(a2, a1, &v70);
        if (result != 327710)
        {
          if (result)
          {
            return result;
          }

          v20 = *(a1 + 64);
          if (v20 <= v59)
          {
            if (v20)
            {
              v32 = *(a1 + 56);
              v33 = 176 * v59 - 176;
              if (__CFADD__(v32, v33))
              {
                goto LABEL_94;
              }

              v34 = v32 + v33;
              if (v32 + v33 < v32 || v34 + 176 > v32 + 176 * v20 || v34 > v34 + 176 || v34 + 24 > v34 + 40)
              {
                goto LABEL_93;
              }

              v35 = find_digest(v34 + 24);
              if (v35)
              {
                if (*v17 > *v35)
                {
                  v36 = *(a1 + 96);
                  if (!v36 || *v17 <= v36)
                  {
                    v37 = *(a1 + 56);
                    if (__CFADD__(v37, v33))
                    {
                      goto LABEL_94;
                    }

                    v38 = 176 * *(a1 + 64);
                    if ((v38 - v33) < 0xB0)
                    {
                      goto LABEL_93;
                    }

                    v39 = (v37 + v33);
                    if (v37 + v33 > v37 + v38)
                    {
                      goto LABEL_93;
                    }

                    if (v37 > v39)
                    {
                      goto LABEL_93;
                    }

                    v40 = v70;
                    v41 = v72;
                    v39[1] = v71;
                    v39[2] = v41;
                    *v39 = v40;
                    v42 = v73;
                    v43 = v74;
                    v44 = v76;
                    v39[5] = v75;
                    v39[6] = v44;
                    v39[3] = v42;
                    v39[4] = v43;
                    v45 = v77;
                    v46 = v78;
                    v47 = v80;
                    v39[9] = v79;
                    v39[10] = v47;
                    v39[7] = v45;
                    v39[8] = v46;
                    if (v39 >= v39 + 11)
                    {
                      goto LABEL_93;
                    }
                  }
                }
              }
            }
          }

          else
          {
            v21 = *(a1 + 96);
            if (!v21 || *v17 <= v21)
            {
              v22 = *(a1 + 56);
              if (__CFADD__(v22, 176 * v59))
              {
                goto LABEL_94;
              }

              if (176 * (v20 - v59) < 0xB0)
              {
                goto LABEL_93;
              }

              v23 = (v22 + 176 * v59);
              v24 = v70;
              v25 = v72;
              v23[1] = v71;
              v23[2] = v25;
              *v23 = v24;
              v26 = v73;
              v27 = v74;
              v28 = v76;
              v23[5] = v75;
              v23[6] = v28;
              v23[3] = v26;
              v23[4] = v27;
              v29 = v77;
              v30 = v78;
              v31 = v80;
              v23[9] = v79;
              v23[10] = v31;
              v23[7] = v29;
              v23[8] = v30;
              if (v23 >= v23 + 11)
              {
                goto LABEL_93;
              }

              if (v59 == 0xFF)
              {
                __break(0x5507u);
                return result;
              }

              ++v59;
            }
          }
        }
      }
    }

    if (v66 > v82 || v81 > v66)
    {
      goto LABEL_93;
    }

    v81 = v66;
    v48 = v8 + 1;
    if (v8 > 6)
    {
      break;
    }

    v10 += 256;
    v9 = (v9 + 256);
    ++v8;
  }

  while (v66 < v82);
  if (v66 == v82)
  {
    if (v59)
    {
      return 0;
    }

    if (!*(a1 + 64))
    {
      return 0;
    }

    v49 = *(a1 + 56);
    v50 = v70;
    v51 = v72;
    v49[1] = v71;
    v49[2] = v51;
    *v49 = v50;
    v52 = v73;
    v53 = v74;
    v54 = v76;
    v49[5] = v75;
    v49[6] = v54;
    v49[3] = v52;
    v49[4] = v53;
    v55 = v77;
    v56 = v78;
    v57 = v80;
    v49[9] = v79;
    v49[10] = v57;
    v49[7] = v55;
    v49[8] = v56;
    if (v49 < v49 + 11)
    {
      return 0;
    }

LABEL_93:
    __break(0x5519u);
LABEL_94:
    __break(0x5513u);
LABEL_95:
    __break(0x5500u);
  }

  return (v48 << 8) + 196616;
}