uint64_t AEAKeychainLoadItem(unsigned __int8 *a1, unint64_t a2, int a3, unint64_t a4, void *a5, size_t *a6)
{
  result = 0;
  if (!a2)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainLoadItem", 219, 96, 0, "Invalid args");
    return 0xFFFFFFFFLL;
  }

  v9 = sub_100124234(a1, a2, a3);
  if (!v9)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainLoadItem", 223, 96, 0, "create attributes");
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  CFDictionaryAddValue(v9, kSecReturnData, kCFBooleanTrue);
  v11 = SecItemCopyMatching(v10, &result);
  if (v11 == -25300)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if (!a5 || v11)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainLoadItem", 231, 96, 0, "searching item in keychain: %d");
  }

  else
  {
    v13 = CFGetTypeID(result);
    if (v13 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(result);
      if (Length - 1 < a4)
      {
        v15 = Length;
        BytePtr = CFDataGetBytePtr(result);
        memcpy(a5, BytePtr, v15);
        *a6 = v15;
        v12 = 1;
        goto LABEL_17;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainLoadItem", 236, 96, 0, "Invalid data size");
    }

    else
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainLoadItem", 234, 96, 0, "Invalid return type");
    }
  }

  v12 = 0xFFFFFFFFLL;
LABEL_17:
  CFRelease(v10);
  if (result)
  {
    CFRelease(result);
  }

  return v12;
}

uint64_t AEAKeychainHasItem(unsigned __int8 *a1, unint64_t a2, int a3)
{
  result = 0;
  if (!a2)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainHasItem", 258, 96, 0, "Invalid args");
    return 0xFFFFFFFFLL;
  }

  v3 = sub_100124234(a1, a2, a3);
  if (!v3)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainHasItem", 262, 96, 0, "create attributes");
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  CFDictionaryAddValue(v3, kSecReturnAttributes, kCFBooleanTrue);
  v5 = SecItemCopyMatching(v4, &result);
  if (v5 == -25300)
  {
    v6 = 0;
  }

  else if (v5)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainHasItem", 270, 96, 0, "searching item in keychain: %d", v5);
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = 1;
  }

  CFRelease(v4);
  if (result)
  {
    CFRelease(result);
  }

  return v6;
}

uint64_t AEAKeychainRemoveItem(unsigned __int8 *a1, unint64_t a2, int a3)
{
  if (!a2)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainRemoveItem", 289, 96, 0, "Invalid args");
    return 0xFFFFFFFFLL;
  }

  v3 = sub_100124234(a1, a2, a3);
  if (!v3)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainRemoveItem", 293, 96, 0, "create attributes");
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  v5 = SecItemDelete(v3);
  if (v5 == -25300)
  {
    v6 = 0;
  }

  else if (v5)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainRemoveItem", 298, 96, 0, "removing item from keychain: %d", v5);
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = 1;
  }

  CFRelease(v4);
  return v6;
}

size_t sub_1001248FC(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZFSE);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t sub_100124924(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZFSE);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t sub_10012494C(uint64_t result, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned __int8 *a7, unsigned __int16 *a8, unint64_t *a9, _BYTE *a10, unint64_t *a11, uint64_t a12)
{
  v12 = *a11;
  if (!a3)
  {
    goto LABEL_15;
  }

  v13 = a4;
  v16 = __clz(a6) ^ 0x1F;
  if (v16 > 12)
  {
    if (v16 == 13)
    {
      result = sub_100126FA0(result, a2, a3, a4, a5, a7, a8, a9, a10, a11, a12);
    }

    else if (v16 == 15)
    {
      result = sub_1001281FC(result, a2, a3, a4, a5, a7, a8, a9, a10, a11, a12);
    }
  }

  else if (v16 == 9)
  {
    result = sub_100124AE8(result, a2, a3, a4, a5, a7, a8, a9, a10, a11, a12);
  }

  else if (v16 == 11)
  {
    result = sub_100125D44(result, a2, a3, a4, a5, a7, a8, a9, a10, a11, a12);
  }

  if (*a11 - v12 > 8 * a3 + 31)
  {
    result = sub_100129458(a2, &a2[a3], v12, a11, a12);
  }

  if (v13)
  {
    v12 = *a11;
LABEL_15:
    *(a12 + (v12 >> 3)) = (1 << (v12 & 7)) | *(a12 + (v12 >> 3));
    *a11 = v12 + 1;
    *(a12 + ((v12 + 1) >> 3)) = (1 << ((v12 + 1) & 7)) | *(a12 + ((v12 + 1) >> 3));
    *a11 = (v12 + 9) & 0xFFFFFFF8;
  }

  return result;
}

uint64_t sub_100124AE8(uint64_t a1, unsigned __int8 *a2, unint64_t a3, int a4, uint64_t a5, unsigned __int8 *a6, unsigned __int16 *a7, unint64_t *a8, _BYTE *a9, unint64_t *a10, uint64_t a11)
{
  v202 = a3;
  if (a3 >= 0x18000)
  {
    v14 = 98304;
  }

  else
  {
    v14 = a3;
  }

  v197 = *a10;
  sub_1001294F4(v14, 0, a10, a11);
  v15 = *a10;
  *(a11 + (*a10 >> 3)) = *(a11 + (*a10 >> 3));
  *a10 = v15 + 13;
  v201 = v14;
  result = sub_10012959C(a1, a2, v14, v204, v203, a10, a11);
  v195 = a1;
  if (*(a1 + 24))
  {
    return result;
  }

  v193 = result;
  v17 = *a8;
  v18 = *a10;
  if (*a8 >= 8)
  {
    v19 = 0;
    do
    {
      *(a11 + (v18 >> 3)) = (a9[v19 >> 3] << (v18 & 7)) | *(a11 + (v18 >> 3));
      v18 += 8;
      *a10 = v18;
      v20 = v19 + 15;
      v19 += 8;
      v17 = *a8;
    }

    while (v20 < *a8);
  }

  *(a11 + (v18 >> 3)) = (a9[v17 >> 3] << (v18 & 7)) | *(a11 + (v18 >> 3));
  *a10 = v18 + (v17 & 7);
  v21 = a2;
  while (1)
  {
    v200 = v201;
    v22 = v21;
    v194 = v21;
    while (1)
    {
      result = memcpy(__dst, &unk_10037C734, sizeof(__dst));
      v23 = v200;
      v24 = &v21[v200];
      if (v200 >= 0x10)
      {
        v25 = v200 - 5;
        if (v200 - 5 >= v202 - 16)
        {
          v25 = v202 - 16;
        }

        v26 = &v21[v25];
        v27 = -1;
        v196 = v21;
        v28 = v21;
LABEL_15:
        v30 = *(v28 + 1);
        v29 = v28 + 1;
        v31 = (0x1E35A7BD000000 * v30) >> 55;
        v32 = 32;
        while (1)
        {
          v33 = &v29[v32 >> 5];
          if (v33 > v26)
          {
            break;
          }

          ++v32;
          v34 = v31;
          v21 = v29;
          while (1)
          {
            v29 = v33;
            v31 = (0x1E35A7BD000000 * *v33) >> 55;
            v35 = &v21[-v27];
            if (*v21 == *v35 && v21[4] == v35[4] && v27 >= 1)
            {
              break;
            }

            v35 = &a2[*(a5 + 4 * v34)];
            *(a5 + 4 * v34) = v21 - a2;
            if (*v21 == *v35 && v21[4] == v35[4])
            {
              goto LABEL_28;
            }

            v33 = &v29[v32++ >> 5];
            v34 = v31;
            v21 = v29;
            if (v33 > v26)
            {
              goto LABEL_99;
            }
          }

          *(a5 + 4 * v34) = v21 - a2;
LABEL_28:
          v37 = v21 - v35;
          if (v21 - v35 <= 262128)
          {
            v38 = v35 + 5;
            v39 = v21 + 5;
            v40 = v24 - v21 - 5;
            if (v40 < 8)
            {
              v43 = 0;
LABEL_88:
              v148 = v40 & 7;
              if (v148)
              {
                v149 = v43 | v148;
                while (v38[v43] == *v39)
                {
                  ++v39;
                  ++v43;
                  if (!--v148)
                  {
                    v43 = v149;
                    break;
                  }
                }
              }
            }

            else
            {
              v41 = 0;
              v42 = v40 >> 3;
              v43 = v40 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v44 = *&v39[v41];
                v45 = *&v38[v41];
                if (v44 != v45)
                {
                  break;
                }

                v41 += 8;
                if (!--v42)
                {
                  v39 += v40 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_88;
                }
              }

              v43 = v41 + (__clz(__rbit64(v45 ^ v44)) >> 3);
            }

            v46 = v21 - v22;
            if ((v21 - v22) >> 1 > 0xC20)
            {
              if (50 * (v22 - v194) <= v46 && v193 >= 0x3D5)
              {
                result = sub_100129458(v194, v21, v197, a10, a11);
                v163 = &v196[v202] - v21;
                goto LABEL_137;
              }

              if (v46 > 0x5841)
              {
                v153 = a6[63];
                v154 = *a10;
                result = *a10 & 7;
                *(a11 + (*a10 >> 3)) = (a7[63] << result) | *(a11 + (*a10 >> 3));
                v155 = v154 + v153;
                *a10 = v155;
                *(a11 + (v155 >> 3)) = ((v46 - 22594) << (v155 & 7)) | *(a11 + (v155 >> 3));
                v50 = v155 + 24;
                *a10 = v50;
                v51 = &__dst[63];
              }

              else
              {
                v150 = a6[62];
                v151 = *a10;
                result = *a10 & 7;
                *(a11 + (*a10 >> 3)) = (a7[62] << result) | *(a11 + (*a10 >> 3));
                v152 = v151 + v150;
                *a10 = v152;
                *(a11 + (v152 >> 3)) = ((v46 - 6210) << (v152 & 7)) | *(a11 + (v152 >> 3));
                v50 = v152 + 14;
                *a10 = v50;
                v51 = &__dst[62];
              }
            }

            else if (v46 > 5)
            {
              if (v46 > 0x81)
              {
                if (v46 > 0x841)
                {
                  v62 = a6[61];
                  v63 = *a10;
                  result = *a10 & 7;
                  *(a11 + (*a10 >> 3)) = (a7[61] << result) | *(a11 + (*a10 >> 3));
                  v64 = v63 + v62;
                  *a10 = v64;
                  *(a11 + (v64 >> 3)) = ((v46 - 2114) << (v64 & 7)) | *(a11 + (v64 >> 3));
                  v50 = v64 + 12;
                  *a10 = v50;
                  v51 = &__dst[61];
                }

                else
                {
                  v58 = __clz(v46 - 66) ^ 0x1F;
                  v59 = a6[v58 + 50];
                  v60 = *a10;
                  *(a11 + (*a10 >> 3)) = (a7[v58 + 50] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                  v61 = v60 + v59;
                  *a10 = v61;
                  result = *(a11 + (v61 >> 3));
                  *(a11 + (v61 >> 3)) = (((-1 << v58) + v46 - 66) << (v61 & 7)) | result;
                  v50 = v61 + v58;
                  *a10 = v61 + v58;
                  v51 = &__dst[v58 + 50];
                }
              }

              else
              {
                v52 = (__clz(v46 - 2) ^ 0x1F) - 1;
                v53 = (v46 - 2) >> v52;
                v54 = v53 + (2 * v52 + 42);
                v55 = a6[v54];
                v56 = *a10;
                v23 = v200;
                *(a11 + (*a10 >> 3)) = (a7[v54] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                v57 = v56 + v55;
                *a10 = v57;
                result = *(a11 + (v57 >> 3));
                *(a11 + (v57 >> 3)) = ((v46 - 2 - (v53 << v52)) << (v57 & 7)) | result;
                v50 = v57 + v52;
                *a10 = v57 + v52;
                v51 = &__dst[v54];
              }
            }

            else
            {
              v47 = a6[v46 | 0x28];
              v48 = *a10;
              v49 = *a10 >> 3;
              result = *(a11 + v49);
              *(a11 + v49) = (a7[v46 | 0x28] << (*a10 & 7)) | result;
              v50 = v48 + v47;
              *a10 = v50;
              v51 = &__dst[v46 | 0x28];
            }

            ++*v51;
            if (v21 != v22)
            {
              if (v46 <= 1)
              {
                v46 = 1;
              }

              do
              {
                v65 = *v22++;
                v66 = v204[v65];
                result = v50 & 7;
                *(a11 + (v50 >> 3)) = (v203[v65] << (v50 & 7)) | *(a11 + (v50 >> 3));
                v50 += v66;
                *a10 = v50;
                --v46;
              }

              while (v46);
            }

            if (v27 == v37)
            {
              v67 = a6[64];
              *(a11 + (v50 >> 3)) = (a7[64] << (v50 & 7)) | *(a11 + (v50 >> 3));
              v68 = v50 + v67;
              v69 = &__dst[64];
            }

            else
            {
              v70 = v37 + 3;
              v71 = __clz(v70) ^ 0x1F;
              v72 = v71 - 1;
              v73 = ((v70 >> (v71 - 1)) & 1 | 2) << (v71 - 1);
              v74 = ((2 * v71 - 4) & 0xFFFFFFFE | (v70 >> (v71 - 1)) & 1) + 80;
              v75 = a6[v74];
              result = v50 >> 3;
              *(a11 + (v50 >> 3)) = (a7[v74] << (v50 & 7)) | *(a11 + (v50 >> 3));
              v76 = v50 + v75;
              *a10 = v76;
              *(a11 + (v76 >> 3)) = ((v70 - v73) << (v76 & 7)) | *(a11 + (v76 >> 3));
              v68 = v76 + v72;
              v69 = &__dst[v74];
              v27 = v37;
            }

            v77 = v43 + 5;
            ++*v69;
            *a10 = v68;
            if (v43 + 5 > 0xB)
            {
              if (v77 > 0x47)
              {
                if (v77 > 0x87)
                {
                  if (v77 > 0x847)
                  {
                    v98 = a6[39];
                    *(a11 + (v68 >> 3)) = (a7[39] << (v68 & 7)) | *(a11 + (v68 >> 3));
                    v99 = v68 + v98;
                    *a10 = v99;
                    v100 = v99 & 7;
                    *(a11 + (v99 >> 3)) = ((v43 - 2115) << (v99 & 7)) | *(a11 + (v99 >> 3));
                    v101 = v99 + 24;
                    *a10 = v99 + 24;
                    v102 = a6[64];
                    *(a11 + (v101 >> 3)) = (a7[64] << v100) | *(a11 + (v101 >> 3));
                    *a10 = v101 + v102;
                    ++__dst[39];
                  }

                  else
                  {
                    v92 = v43 - 67;
                    v93 = __clz(v92) ^ 0x1F;
                    v94 = a6[v93 + 28];
                    result = *(a11 + (v68 >> 3));
                    *(a11 + (v68 >> 3)) = (a7[v93 + 28] << (v68 & 7)) | result;
                    v95 = v68 + v94;
                    *a10 = v95;
                    *(a11 + (v95 >> 3)) = (((-1 << v93) + v92) << (v95 & 7)) | *(a11 + (v95 >> 3));
                    v96 = v95 + v93;
                    *a10 = v95 + v93;
                    v97 = a6[64];
                    *(a11 + (v96 >> 3)) = (a7[64] << (v96 & 7)) | *(a11 + (v96 >> 3));
                    *a10 = v96 + v97;
                    ++__dst[v93 + 28];
                  }
                }

                else
                {
                  v86 = v43 - 3;
                  v87 = (v86 >> 5) + 30;
                  v88 = a6[v87];
                  result = v68 & 7;
                  *(a11 + (v68 >> 3)) = (a7[v87] << (v68 & 7)) | *(a11 + (v68 >> 3));
                  v89 = v68 + v88;
                  *a10 = v89;
                  *(a11 + (v89 >> 3)) = ((v86 & 0x1F) << (v89 & 7)) | *(a11 + (v89 >> 3));
                  v90 = v89 + 5;
                  *a10 = v89 + 5;
                  v91 = a6[64];
                  *(a11 + (v90 >> 3)) = (a7[64] << (v90 & 7)) | *(a11 + (v90 >> 3));
                  *a10 = v90 + v91;
                  ++__dst[v87];
                }

                v80 = &__dst[64];
              }

              else
              {
                v81 = v43 - 3;
                v82 = (__clz(v81) ^ 0x1F) - 1;
                v83 = (v81 >> v82) + (2 * v82 + 4);
                v84 = a6[v83];
                result = v68 >> 3;
                *(a11 + (v68 >> 3)) = (a7[v83] << (v68 & 7)) | *(a11 + (v68 >> 3));
                v85 = v68 + v84;
                *a10 = v85;
                *(a11 + (v85 >> 3)) = ((v81 - (v81 >> v82 << v82)) << (v85 & 7)) | *(a11 + (v85 >> 3));
                *a10 = v85 + v82;
                v80 = &__dst[v83];
              }
            }

            else
            {
              v78 = v43 + 1;
              v79 = a6[v78];
              *(a11 + (v68 >> 3)) = (a7[v78] << (v68 & 7)) | *(a11 + (v68 >> 3));
              *a10 = v68 + v79;
              v80 = &__dst[v78];
            }

            v28 = &v21[v77];
            ++*v80;
            if (&v21[v77] >= v26)
            {
LABEL_98:
              v22 = v28;
              break;
            }

            v103 = *(v28 - 3);
            *(a5 + (((0x1E35A7BD000000 * v103) >> 53) & 0x7FC)) = v28 - a2 - 3;
            *(a5 + (((0x1E35A7BD000000 * (v103 >> 8)) >> 53) & 0x7FC)) = v28 - a2 - 2;
            *(a5 + (((0x1E35A7BD000000 * (v103 >> 16)) >> 53) & 0x7FC)) = v28 - a2 - 1;
            v104 = ((0x1E35A7BD000000 * (v103 >> 24)) >> 53) & 0x7FC;
            v105 = *(a5 + v104);
            *(a5 + v104) = v28 - a2;
            v106 = &a2[v105];
            v22 = v28;
            if (*v28 == *&a2[v105])
            {
              while (1)
              {
                v22 = v28;
                if (v28[4] != v106[4])
                {
                  break;
                }

                v107 = v106 + 5;
                v108 = v28 + 5;
                v109 = v24 - v28 - 5;
                if (v109 < 8)
                {
                  v112 = 0;
LABEL_81:
                  v146 = v109 & 7;
                  if (v146)
                  {
                    v147 = v112 | v146;
                    while (1)
                    {
                      result = *v108;
                      if (v107[v112] != result)
                      {
                        break;
                      }

                      ++v108;
                      ++v112;
                      if (!--v146)
                      {
                        v112 = v147;
                        break;
                      }
                    }
                  }
                }

                else
                {
                  v110 = 0;
                  v111 = v109 >> 3;
                  v112 = v109 & 0xFFFFFFFFFFFFFFF8;
                  result = &v108[v109 & 0xFFFFFFFFFFFFFFF8];
                  while (1)
                  {
                    v113 = *&v108[v110];
                    v114 = *&v107[v110];
                    if (v113 != v114)
                    {
                      break;
                    }

                    v110 += 8;
                    if (!--v111)
                    {
                      v108 += v109 & 0xFFFFFFFFFFFFFFF8;
                      goto LABEL_81;
                    }
                  }

                  v112 = v110 + (__clz(__rbit64(v114 ^ v113)) >> 3);
                }

                v115 = v28 - v106;
                if (v115 <= 262128)
                {
                  v116 = v112 + 5;
                  if (v112 + 5 > 9)
                  {
                    if (v116 > 0x85)
                    {
                      if (v116 > 0x845)
                      {
                        v133 = a6[39];
                        v134 = *a10;
                        *(a11 + (*a10 >> 3)) = (a7[39] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                        v135 = v134 + v133;
                        *a10 = v135;
                        *(a11 + (v135 >> 3)) = ((v112 - 2113) << (v135 & 7)) | *(a11 + (v135 >> 3));
                        v120 = v135 + 24;
                        *a10 = v135 + 24;
                        v121 = &__dst[39];
                      }

                      else
                      {
                        v128 = v112 - 65;
                        v129 = __clz(v128) ^ 0x1F;
                        v130 = a6[v129 + 28];
                        v131 = *a10;
                        *(a11 + (*a10 >> 3)) = (a7[v129 + 28] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                        v132 = v131 + v130;
                        *a10 = v132;
                        *(a11 + (v132 >> 3)) = (((-1 << v129) + v128) << (v132 & 7)) | *(a11 + (v132 >> 3));
                        v120 = v132 + v129;
                        *a10 = v132 + v129;
                        v121 = &__dst[v129 + 28];
                      }
                    }

                    else
                    {
                      v122 = v112 - 1;
                      v123 = (__clz(v122) ^ 0x1F) - 1;
                      v124 = (v122 >> v123) + (2 * v123 + 20);
                      v125 = a6[v124];
                      v126 = *a10;
                      *(a11 + (*a10 >> 3)) = (a7[v124] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                      v127 = v126 + v125;
                      *a10 = v127;
                      *(a11 + (v127 >> 3)) = ((v122 - (v122 >> v123 << v123)) << (v127 & 7)) | *(a11 + (v127 >> 3));
                      v120 = v127 + v123;
                      *a10 = v127 + v123;
                      v121 = &__dst[v124];
                    }
                  }

                  else
                  {
                    v117 = v112 + 19;
                    v118 = a6[v112 + 19];
                    v119 = *a10;
                    *(a11 + (*a10 >> 3)) = (a7[v117] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                    v120 = v119 + v118;
                    *a10 = v120;
                    v121 = &__dst[v117];
                  }

                  v28 += v116;
                  ++*v121;
                  v136 = v115 + 3;
                  v137 = __clz(v136) ^ 0x1F;
                  v138 = v137 - 1;
                  v139 = (v136 >> (v137 - 1)) & 1 | 2;
                  v140 = ((2 * v137 - 4) & 0xFFFFFFFE | (v136 >> (v137 - 1)) & 1) + 80;
                  v141 = a6[v140];
                  result = v120 >> 3;
                  *(a11 + (v120 >> 3)) = (a7[v140] << (v120 & 7)) | *(a11 + (v120 >> 3));
                  v142 = v120 + v141;
                  *a10 = v142;
                  *(a11 + (v142 >> 3)) = ((v136 - (v139 << v138)) << (v142 & 7)) | *(a11 + (v142 >> 3));
                  *a10 = v142 + v138;
                  ++__dst[v140];
                  if (v28 >= v26)
                  {
                    goto LABEL_98;
                  }

                  v27 = v115;
                  v143 = *(v28 - 3);
                  *(a5 + (((0x1E35A7BD000000 * v143) >> 53) & 0x7FC)) = v28 - a2 - 3;
                  *(a5 + (((0x1E35A7BD000000 * (v143 >> 8)) >> 53) & 0x7FC)) = v28 - a2 - 2;
                  *(a5 + (((0x1E35A7BD000000 * (v143 >> 16)) >> 53) & 0x7FC)) = v28 - a2 - 1;
                  v144 = ((0x1E35A7BD000000 * (v143 >> 24)) >> 53) & 0x7FC;
                  v145 = *(a5 + v144);
                  *(a5 + v144) = v28 - a2;
                  v106 = &a2[v145];
                  if (*v28 == *&a2[v145])
                  {
                    continue;
                  }
                }

                v22 = v28;
                goto LABEL_15;
              }
            }

            goto LABEL_15;
          }
        }
      }

LABEL_99:
      v156 = v202 - v23;
      v157 = v202 - v23 >= 0x10000 ? 0x10000 : v202 - v23;
      v202 -= v23;
      if (!v156)
      {
        break;
      }

      v201 += v157;
      if (v201 > 0x100000)
      {
        break;
      }

      v21 = v24;
      v200 = v157;
      result = sub_1001297A8(v24, v157, v204);
      v24 = v21;
      if (!result)
      {
        break;
      }

      sub_100129900((v201 - 1), v197 + 3, a11);
    }

    if (v22 >= v24)
    {
      goto LABEL_135;
    }

    v158 = v24 - v22;
    if ((v24 - v22) >> 1 > 0xC20)
    {
      result = v194;
      if (50 * (v22 - v194) > v158 || v193 < 0x3D5)
      {
        v179 = a7 + 63;
        if (v158 < 0x5842)
        {
          v179 = a7 + 62;
        }

        v180 = a6 + 63;
        if (v158 < 0x5842)
        {
          v180 = a6 + 62;
        }

        v181 = -6210;
        if (v158 >= 0x5842)
        {
          v181 = -22594;
        }

        v182 = 24;
        if (v158 < 0x5842)
        {
          v182 = 14;
        }

        v183 = 63;
        if (v158 < 0x5842)
        {
          v183 = 62;
        }

        v184 = *v180;
        v185 = *a10;
        *(a11 + (*a10 >> 3)) = (*v179 << (*a10 & 7)) | *(a11 + (*a10 >> 3));
        *a10 = v185 + v184;
        *(a11 + ((v185 + v184) >> 3)) = ((v158 + v181) << ((v185 + v184) & 7)) | *(a11 + ((v185 + v184) >> 3));
        v186 = v185 + v184 + v182;
        ++__dst[v183];
        *a10 = v186;
        do
        {
          v187 = *v22++;
          v188 = v204[v187];
          *(a11 + (v186 >> 3)) = (v203[v187] << (v186 & 7)) | *(a11 + (v186 >> 3));
          v186 += v188;
          *a10 = v186;
          --v158;
        }

        while (v158);
LABEL_135:
        v21 = v24;
      }

      else
      {
        v21 = v24;
        result = sub_100129458(v194, v24, v197, a10, a11);
      }

      v163 = v202;
      goto LABEL_137;
    }

    if (v158 > 5)
    {
      v163 = v202;
      if (v158 > 0x81)
      {
        if (v158 > 0x841)
        {
          v174 = a6[61];
          v175 = *a10;
          *(a11 + (*a10 >> 3)) = (a7[61] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
          v176 = v175 + v174;
          *a10 = v176;
          *(a11 + (v176 >> 3)) = ((v158 - 2114) << (v176 & 7)) | *(a11 + (v176 >> 3));
          v161 = v176 + 12;
          *a10 = v161;
          v162 = &__dst[61];
        }

        else
        {
          v170 = __clz(v158 - 66) ^ 0x1F;
          v171 = a6[v170 + 50];
          v172 = *a10;
          *(a11 + (*a10 >> 3)) = (a7[v170 + 50] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
          v173 = v172 + v171;
          *a10 = v173;
          *(a11 + (v173 >> 3)) = (((-1 << v170) + v158 - 66) << (v173 & 7)) | *(a11 + (v173 >> 3));
          v161 = v173 + v170;
          *a10 = v173 + v170;
          v162 = &__dst[v170 + 50];
        }
      }

      else
      {
        v164 = (__clz(v158 - 2) ^ 0x1F) - 1;
        v165 = (v158 - 2) >> v164;
        v166 = v165 + (2 * v164 + 42);
        v167 = a6[v166];
        v168 = *a10;
        result = *a10 & 7;
        *(a11 + (*a10 >> 3)) = (a7[v166] << result) | *(a11 + (*a10 >> 3));
        v169 = v168 + v167;
        *a10 = v169;
        *(a11 + (v169 >> 3)) = ((v158 - 2 - (v165 << v164)) << (v169 & 7)) | *(a11 + (v169 >> 3));
        v161 = v169 + v164;
        *a10 = v169 + v164;
        v162 = &__dst[v166];
      }
    }

    else
    {
      v159 = a6[v158 | 0x28];
      v160 = *a10;
      *(a11 + (*a10 >> 3)) = (a7[v158 | 0x28] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
      v161 = v160 + v159;
      *a10 = v161;
      v162 = &__dst[v158 | 0x28];
      v163 = v202;
    }

    ++*v162;
    if (v158 <= 1)
    {
      v158 = 1;
    }

    do
    {
      v177 = *v22++;
      v178 = v204[v177];
      *(a11 + (v161 >> 3)) = (v203[v177] << (v161 & 7)) | *(a11 + (v161 >> 3));
      v161 += v178;
      *a10 = v161;
      --v158;
    }

    while (v158);
    v21 = v24;
LABEL_137:
    if (!v163)
    {
      break;
    }

    if (v163 >= 0x18000)
    {
      v189 = 98304;
    }

    else
    {
      v189 = v163;
    }

    v201 = v189;
    v202 = v163;
    v197 = *a10;
    sub_1001294F4(v189, 0, a10, a11);
    v190 = *a10;
    *(a11 + (*a10 >> 3)) = *(a11 + (*a10 >> 3));
    *a10 = v190 + 13;
    result = sub_10012959C(v195, v21, v201, v204, v203, a10, a11);
    if (*(v195 + 24))
    {
      return result;
    }

    v193 = result;
    sub_100129960(__dst, a6, a7, a10, a11);
  }

  if (!a4)
  {
    *a9 = 0;
    *a8 = 0;
    return sub_100129960(__dst, a6, a7, a8, a9);
  }

  return result;
}

uint64_t sub_100125D44(uint64_t a1, unsigned __int8 *a2, unint64_t a3, int a4, uint64_t a5, unsigned __int8 *a6, unsigned __int16 *a7, unint64_t *a8, _BYTE *a9, unint64_t *a10, uint64_t a11)
{
  v202 = a3;
  if (a3 >= 0x18000)
  {
    v14 = 98304;
  }

  else
  {
    v14 = a3;
  }

  v197 = *a10;
  sub_1001294F4(v14, 0, a10, a11);
  v15 = *a10;
  *(a11 + (*a10 >> 3)) = *(a11 + (*a10 >> 3));
  *a10 = v15 + 13;
  v201 = v14;
  result = sub_10012959C(a1, a2, v14, v204, v203, a10, a11);
  v195 = a1;
  if (*(a1 + 24))
  {
    return result;
  }

  v193 = result;
  v17 = *a8;
  v18 = *a10;
  if (*a8 >= 8)
  {
    v19 = 0;
    do
    {
      *(a11 + (v18 >> 3)) = (a9[v19 >> 3] << (v18 & 7)) | *(a11 + (v18 >> 3));
      v18 += 8;
      *a10 = v18;
      v20 = v19 + 15;
      v19 += 8;
      v17 = *a8;
    }

    while (v20 < *a8);
  }

  *(a11 + (v18 >> 3)) = (a9[v17 >> 3] << (v18 & 7)) | *(a11 + (v18 >> 3));
  *a10 = v18 + (v17 & 7);
  v21 = a2;
  while (1)
  {
    v200 = v201;
    v22 = v21;
    v194 = v21;
    while (1)
    {
      result = memcpy(__dst, &unk_10037C734, sizeof(__dst));
      v23 = v200;
      v24 = &v21[v200];
      if (v200 >= 0x10)
      {
        v25 = v200 - 5;
        if (v200 - 5 >= v202 - 16)
        {
          v25 = v202 - 16;
        }

        v26 = &v21[v25];
        v27 = -1;
        v196 = v21;
        v28 = v21;
LABEL_15:
        v30 = *(v28 + 1);
        v29 = v28 + 1;
        v31 = (0x1E35A7BD000000 * v30) >> 53;
        v32 = 32;
        while (1)
        {
          v33 = &v29[v32 >> 5];
          if (v33 > v26)
          {
            break;
          }

          ++v32;
          v34 = v31;
          v21 = v29;
          while (1)
          {
            v29 = v33;
            v31 = (0x1E35A7BD000000 * *v33) >> 53;
            v35 = &v21[-v27];
            if (*v21 == *v35 && v21[4] == v35[4] && v27 >= 1)
            {
              break;
            }

            v35 = &a2[*(a5 + 4 * v34)];
            *(a5 + 4 * v34) = v21 - a2;
            if (*v21 == *v35 && v21[4] == v35[4])
            {
              goto LABEL_28;
            }

            v33 = &v29[v32++ >> 5];
            v34 = v31;
            v21 = v29;
            if (v33 > v26)
            {
              goto LABEL_99;
            }
          }

          *(a5 + 4 * v34) = v21 - a2;
LABEL_28:
          v37 = v21 - v35;
          if (v21 - v35 <= 262128)
          {
            v38 = v35 + 5;
            v39 = v21 + 5;
            v40 = v24 - v21 - 5;
            if (v40 < 8)
            {
              v43 = 0;
LABEL_88:
              v148 = v40 & 7;
              if (v148)
              {
                v149 = v43 | v148;
                while (v38[v43] == *v39)
                {
                  ++v39;
                  ++v43;
                  if (!--v148)
                  {
                    v43 = v149;
                    break;
                  }
                }
              }
            }

            else
            {
              v41 = 0;
              v42 = v40 >> 3;
              v43 = v40 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v44 = *&v39[v41];
                v45 = *&v38[v41];
                if (v44 != v45)
                {
                  break;
                }

                v41 += 8;
                if (!--v42)
                {
                  v39 += v40 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_88;
                }
              }

              v43 = v41 + (__clz(__rbit64(v45 ^ v44)) >> 3);
            }

            v46 = v21 - v22;
            if ((v21 - v22) >> 1 > 0xC20)
            {
              if (50 * (v22 - v194) <= v46 && v193 >= 0x3D5)
              {
                result = sub_100129458(v194, v21, v197, a10, a11);
                v163 = &v196[v202] - v21;
                goto LABEL_137;
              }

              if (v46 > 0x5841)
              {
                v153 = a6[63];
                v154 = *a10;
                result = *a10 & 7;
                *(a11 + (*a10 >> 3)) = (a7[63] << result) | *(a11 + (*a10 >> 3));
                v155 = v154 + v153;
                *a10 = v155;
                *(a11 + (v155 >> 3)) = ((v46 - 22594) << (v155 & 7)) | *(a11 + (v155 >> 3));
                v50 = v155 + 24;
                *a10 = v50;
                v51 = &__dst[63];
              }

              else
              {
                v150 = a6[62];
                v151 = *a10;
                result = *a10 & 7;
                *(a11 + (*a10 >> 3)) = (a7[62] << result) | *(a11 + (*a10 >> 3));
                v152 = v151 + v150;
                *a10 = v152;
                *(a11 + (v152 >> 3)) = ((v46 - 6210) << (v152 & 7)) | *(a11 + (v152 >> 3));
                v50 = v152 + 14;
                *a10 = v50;
                v51 = &__dst[62];
              }
            }

            else if (v46 > 5)
            {
              if (v46 > 0x81)
              {
                if (v46 > 0x841)
                {
                  v62 = a6[61];
                  v63 = *a10;
                  result = *a10 & 7;
                  *(a11 + (*a10 >> 3)) = (a7[61] << result) | *(a11 + (*a10 >> 3));
                  v64 = v63 + v62;
                  *a10 = v64;
                  *(a11 + (v64 >> 3)) = ((v46 - 2114) << (v64 & 7)) | *(a11 + (v64 >> 3));
                  v50 = v64 + 12;
                  *a10 = v50;
                  v51 = &__dst[61];
                }

                else
                {
                  v58 = __clz(v46 - 66) ^ 0x1F;
                  v59 = a6[v58 + 50];
                  v60 = *a10;
                  *(a11 + (*a10 >> 3)) = (a7[v58 + 50] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                  v61 = v60 + v59;
                  *a10 = v61;
                  result = *(a11 + (v61 >> 3));
                  *(a11 + (v61 >> 3)) = (((-1 << v58) + v46 - 66) << (v61 & 7)) | result;
                  v50 = v61 + v58;
                  *a10 = v61 + v58;
                  v51 = &__dst[v58 + 50];
                }
              }

              else
              {
                v52 = (__clz(v46 - 2) ^ 0x1F) - 1;
                v53 = (v46 - 2) >> v52;
                v54 = v53 + (2 * v52 + 42);
                v55 = a6[v54];
                v56 = *a10;
                v23 = v200;
                *(a11 + (*a10 >> 3)) = (a7[v54] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                v57 = v56 + v55;
                *a10 = v57;
                result = *(a11 + (v57 >> 3));
                *(a11 + (v57 >> 3)) = ((v46 - 2 - (v53 << v52)) << (v57 & 7)) | result;
                v50 = v57 + v52;
                *a10 = v57 + v52;
                v51 = &__dst[v54];
              }
            }

            else
            {
              v47 = a6[v46 | 0x28];
              v48 = *a10;
              v49 = *a10 >> 3;
              result = *(a11 + v49);
              *(a11 + v49) = (a7[v46 | 0x28] << (*a10 & 7)) | result;
              v50 = v48 + v47;
              *a10 = v50;
              v51 = &__dst[v46 | 0x28];
            }

            ++*v51;
            if (v21 != v22)
            {
              if (v46 <= 1)
              {
                v46 = 1;
              }

              do
              {
                v65 = *v22++;
                v66 = v204[v65];
                result = v50 & 7;
                *(a11 + (v50 >> 3)) = (v203[v65] << (v50 & 7)) | *(a11 + (v50 >> 3));
                v50 += v66;
                *a10 = v50;
                --v46;
              }

              while (v46);
            }

            if (v27 == v37)
            {
              v67 = a6[64];
              *(a11 + (v50 >> 3)) = (a7[64] << (v50 & 7)) | *(a11 + (v50 >> 3));
              v68 = v50 + v67;
              v69 = &__dst[64];
            }

            else
            {
              v70 = v37 + 3;
              v71 = __clz(v70) ^ 0x1F;
              v72 = v71 - 1;
              v73 = ((v70 >> (v71 - 1)) & 1 | 2) << (v71 - 1);
              v74 = ((2 * v71 - 4) & 0xFFFFFFFE | (v70 >> (v71 - 1)) & 1) + 80;
              v75 = a6[v74];
              result = v50 >> 3;
              *(a11 + (v50 >> 3)) = (a7[v74] << (v50 & 7)) | *(a11 + (v50 >> 3));
              v76 = v50 + v75;
              *a10 = v76;
              *(a11 + (v76 >> 3)) = ((v70 - v73) << (v76 & 7)) | *(a11 + (v76 >> 3));
              v68 = v76 + v72;
              v69 = &__dst[v74];
              v27 = v37;
            }

            v77 = v43 + 5;
            ++*v69;
            *a10 = v68;
            if (v43 + 5 > 0xB)
            {
              if (v77 > 0x47)
              {
                if (v77 > 0x87)
                {
                  if (v77 > 0x847)
                  {
                    v98 = a6[39];
                    *(a11 + (v68 >> 3)) = (a7[39] << (v68 & 7)) | *(a11 + (v68 >> 3));
                    v99 = v68 + v98;
                    *a10 = v99;
                    v100 = v99 & 7;
                    *(a11 + (v99 >> 3)) = ((v43 - 2115) << (v99 & 7)) | *(a11 + (v99 >> 3));
                    v101 = v99 + 24;
                    *a10 = v99 + 24;
                    v102 = a6[64];
                    *(a11 + (v101 >> 3)) = (a7[64] << v100) | *(a11 + (v101 >> 3));
                    *a10 = v101 + v102;
                    ++__dst[39];
                  }

                  else
                  {
                    v92 = v43 - 67;
                    v93 = __clz(v92) ^ 0x1F;
                    v94 = a6[v93 + 28];
                    result = *(a11 + (v68 >> 3));
                    *(a11 + (v68 >> 3)) = (a7[v93 + 28] << (v68 & 7)) | result;
                    v95 = v68 + v94;
                    *a10 = v95;
                    *(a11 + (v95 >> 3)) = (((-1 << v93) + v92) << (v95 & 7)) | *(a11 + (v95 >> 3));
                    v96 = v95 + v93;
                    *a10 = v95 + v93;
                    v97 = a6[64];
                    *(a11 + (v96 >> 3)) = (a7[64] << (v96 & 7)) | *(a11 + (v96 >> 3));
                    *a10 = v96 + v97;
                    ++__dst[v93 + 28];
                  }
                }

                else
                {
                  v86 = v43 - 3;
                  v87 = (v86 >> 5) + 30;
                  v88 = a6[v87];
                  result = v68 & 7;
                  *(a11 + (v68 >> 3)) = (a7[v87] << (v68 & 7)) | *(a11 + (v68 >> 3));
                  v89 = v68 + v88;
                  *a10 = v89;
                  *(a11 + (v89 >> 3)) = ((v86 & 0x1F) << (v89 & 7)) | *(a11 + (v89 >> 3));
                  v90 = v89 + 5;
                  *a10 = v89 + 5;
                  v91 = a6[64];
                  *(a11 + (v90 >> 3)) = (a7[64] << (v90 & 7)) | *(a11 + (v90 >> 3));
                  *a10 = v90 + v91;
                  ++__dst[v87];
                }

                v80 = &__dst[64];
              }

              else
              {
                v81 = v43 - 3;
                v82 = (__clz(v81) ^ 0x1F) - 1;
                v83 = (v81 >> v82) + (2 * v82 + 4);
                v84 = a6[v83];
                result = v68 >> 3;
                *(a11 + (v68 >> 3)) = (a7[v83] << (v68 & 7)) | *(a11 + (v68 >> 3));
                v85 = v68 + v84;
                *a10 = v85;
                *(a11 + (v85 >> 3)) = ((v81 - (v81 >> v82 << v82)) << (v85 & 7)) | *(a11 + (v85 >> 3));
                *a10 = v85 + v82;
                v80 = &__dst[v83];
              }
            }

            else
            {
              v78 = v43 + 1;
              v79 = a6[v78];
              *(a11 + (v68 >> 3)) = (a7[v78] << (v68 & 7)) | *(a11 + (v68 >> 3));
              *a10 = v68 + v79;
              v80 = &__dst[v78];
            }

            v28 = &v21[v77];
            ++*v80;
            if (&v21[v77] >= v26)
            {
LABEL_98:
              v22 = v28;
              break;
            }

            v103 = *(v28 - 3);
            *(a5 + (((0x1E35A7BD000000 * v103) >> 51) & 0x1FFC)) = v28 - a2 - 3;
            *(a5 + (((0x1E35A7BD000000 * (v103 >> 8)) >> 51) & 0x1FFC)) = v28 - a2 - 2;
            *(a5 + (((0x1E35A7BD000000 * (v103 >> 16)) >> 51) & 0x1FFC)) = v28 - a2 - 1;
            v104 = ((0x1E35A7BD000000 * (v103 >> 24)) >> 51) & 0x1FFC;
            v105 = *(a5 + v104);
            *(a5 + v104) = v28 - a2;
            v106 = &a2[v105];
            v22 = v28;
            if (*v28 == *&a2[v105])
            {
              while (1)
              {
                v22 = v28;
                if (v28[4] != v106[4])
                {
                  break;
                }

                v107 = v106 + 5;
                v108 = v28 + 5;
                v109 = v24 - v28 - 5;
                if (v109 < 8)
                {
                  v112 = 0;
LABEL_81:
                  v146 = v109 & 7;
                  if (v146)
                  {
                    v147 = v112 | v146;
                    while (1)
                    {
                      result = *v108;
                      if (v107[v112] != result)
                      {
                        break;
                      }

                      ++v108;
                      ++v112;
                      if (!--v146)
                      {
                        v112 = v147;
                        break;
                      }
                    }
                  }
                }

                else
                {
                  v110 = 0;
                  v111 = v109 >> 3;
                  v112 = v109 & 0xFFFFFFFFFFFFFFF8;
                  result = &v108[v109 & 0xFFFFFFFFFFFFFFF8];
                  while (1)
                  {
                    v113 = *&v108[v110];
                    v114 = *&v107[v110];
                    if (v113 != v114)
                    {
                      break;
                    }

                    v110 += 8;
                    if (!--v111)
                    {
                      v108 += v109 & 0xFFFFFFFFFFFFFFF8;
                      goto LABEL_81;
                    }
                  }

                  v112 = v110 + (__clz(__rbit64(v114 ^ v113)) >> 3);
                }

                v115 = v28 - v106;
                if (v115 <= 262128)
                {
                  v116 = v112 + 5;
                  if (v112 + 5 > 9)
                  {
                    if (v116 > 0x85)
                    {
                      if (v116 > 0x845)
                      {
                        v133 = a6[39];
                        v134 = *a10;
                        *(a11 + (*a10 >> 3)) = (a7[39] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                        v135 = v134 + v133;
                        *a10 = v135;
                        *(a11 + (v135 >> 3)) = ((v112 - 2113) << (v135 & 7)) | *(a11 + (v135 >> 3));
                        v120 = v135 + 24;
                        *a10 = v135 + 24;
                        v121 = &__dst[39];
                      }

                      else
                      {
                        v128 = v112 - 65;
                        v129 = __clz(v128) ^ 0x1F;
                        v130 = a6[v129 + 28];
                        v131 = *a10;
                        *(a11 + (*a10 >> 3)) = (a7[v129 + 28] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                        v132 = v131 + v130;
                        *a10 = v132;
                        *(a11 + (v132 >> 3)) = (((-1 << v129) + v128) << (v132 & 7)) | *(a11 + (v132 >> 3));
                        v120 = v132 + v129;
                        *a10 = v132 + v129;
                        v121 = &__dst[v129 + 28];
                      }
                    }

                    else
                    {
                      v122 = v112 - 1;
                      v123 = (__clz(v122) ^ 0x1F) - 1;
                      v124 = (v122 >> v123) + (2 * v123 + 20);
                      v125 = a6[v124];
                      v126 = *a10;
                      *(a11 + (*a10 >> 3)) = (a7[v124] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                      v127 = v126 + v125;
                      *a10 = v127;
                      *(a11 + (v127 >> 3)) = ((v122 - (v122 >> v123 << v123)) << (v127 & 7)) | *(a11 + (v127 >> 3));
                      v120 = v127 + v123;
                      *a10 = v127 + v123;
                      v121 = &__dst[v124];
                    }
                  }

                  else
                  {
                    v117 = v112 + 19;
                    v118 = a6[v112 + 19];
                    v119 = *a10;
                    *(a11 + (*a10 >> 3)) = (a7[v117] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                    v120 = v119 + v118;
                    *a10 = v120;
                    v121 = &__dst[v117];
                  }

                  v28 += v116;
                  ++*v121;
                  v136 = v115 + 3;
                  v137 = __clz(v136) ^ 0x1F;
                  v138 = v137 - 1;
                  v139 = (v136 >> (v137 - 1)) & 1 | 2;
                  v140 = ((2 * v137 - 4) & 0xFFFFFFFE | (v136 >> (v137 - 1)) & 1) + 80;
                  v141 = a6[v140];
                  result = v120 >> 3;
                  *(a11 + (v120 >> 3)) = (a7[v140] << (v120 & 7)) | *(a11 + (v120 >> 3));
                  v142 = v120 + v141;
                  *a10 = v142;
                  *(a11 + (v142 >> 3)) = ((v136 - (v139 << v138)) << (v142 & 7)) | *(a11 + (v142 >> 3));
                  *a10 = v142 + v138;
                  ++__dst[v140];
                  if (v28 >= v26)
                  {
                    goto LABEL_98;
                  }

                  v27 = v115;
                  v143 = *(v28 - 3);
                  *(a5 + (((0x1E35A7BD000000 * v143) >> 51) & 0x1FFC)) = v28 - a2 - 3;
                  *(a5 + (((0x1E35A7BD000000 * (v143 >> 8)) >> 51) & 0x1FFC)) = v28 - a2 - 2;
                  *(a5 + (((0x1E35A7BD000000 * (v143 >> 16)) >> 51) & 0x1FFC)) = v28 - a2 - 1;
                  v144 = ((0x1E35A7BD000000 * (v143 >> 24)) >> 51) & 0x1FFC;
                  v145 = *(a5 + v144);
                  *(a5 + v144) = v28 - a2;
                  v106 = &a2[v145];
                  if (*v28 == *&a2[v145])
                  {
                    continue;
                  }
                }

                v22 = v28;
                goto LABEL_15;
              }
            }

            goto LABEL_15;
          }
        }
      }

LABEL_99:
      v156 = v202 - v23;
      v157 = v202 - v23 >= 0x10000 ? 0x10000 : v202 - v23;
      v202 -= v23;
      if (!v156)
      {
        break;
      }

      v201 += v157;
      if (v201 > 0x100000)
      {
        break;
      }

      v21 = v24;
      v200 = v157;
      result = sub_1001297A8(v24, v157, v204);
      v24 = v21;
      if (!result)
      {
        break;
      }

      sub_100129900((v201 - 1), v197 + 3, a11);
    }

    if (v22 >= v24)
    {
      goto LABEL_135;
    }

    v158 = v24 - v22;
    if ((v24 - v22) >> 1 > 0xC20)
    {
      result = v194;
      if (50 * (v22 - v194) > v158 || v193 < 0x3D5)
      {
        v179 = a7 + 63;
        if (v158 < 0x5842)
        {
          v179 = a7 + 62;
        }

        v180 = a6 + 63;
        if (v158 < 0x5842)
        {
          v180 = a6 + 62;
        }

        v181 = -6210;
        if (v158 >= 0x5842)
        {
          v181 = -22594;
        }

        v182 = 24;
        if (v158 < 0x5842)
        {
          v182 = 14;
        }

        v183 = 63;
        if (v158 < 0x5842)
        {
          v183 = 62;
        }

        v184 = *v180;
        v185 = *a10;
        *(a11 + (*a10 >> 3)) = (*v179 << (*a10 & 7)) | *(a11 + (*a10 >> 3));
        *a10 = v185 + v184;
        *(a11 + ((v185 + v184) >> 3)) = ((v158 + v181) << ((v185 + v184) & 7)) | *(a11 + ((v185 + v184) >> 3));
        v186 = v185 + v184 + v182;
        ++__dst[v183];
        *a10 = v186;
        do
        {
          v187 = *v22++;
          v188 = v204[v187];
          *(a11 + (v186 >> 3)) = (v203[v187] << (v186 & 7)) | *(a11 + (v186 >> 3));
          v186 += v188;
          *a10 = v186;
          --v158;
        }

        while (v158);
LABEL_135:
        v21 = v24;
      }

      else
      {
        v21 = v24;
        result = sub_100129458(v194, v24, v197, a10, a11);
      }

      v163 = v202;
      goto LABEL_137;
    }

    if (v158 > 5)
    {
      v163 = v202;
      if (v158 > 0x81)
      {
        if (v158 > 0x841)
        {
          v174 = a6[61];
          v175 = *a10;
          *(a11 + (*a10 >> 3)) = (a7[61] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
          v176 = v175 + v174;
          *a10 = v176;
          *(a11 + (v176 >> 3)) = ((v158 - 2114) << (v176 & 7)) | *(a11 + (v176 >> 3));
          v161 = v176 + 12;
          *a10 = v161;
          v162 = &__dst[61];
        }

        else
        {
          v170 = __clz(v158 - 66) ^ 0x1F;
          v171 = a6[v170 + 50];
          v172 = *a10;
          *(a11 + (*a10 >> 3)) = (a7[v170 + 50] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
          v173 = v172 + v171;
          *a10 = v173;
          *(a11 + (v173 >> 3)) = (((-1 << v170) + v158 - 66) << (v173 & 7)) | *(a11 + (v173 >> 3));
          v161 = v173 + v170;
          *a10 = v173 + v170;
          v162 = &__dst[v170 + 50];
        }
      }

      else
      {
        v164 = (__clz(v158 - 2) ^ 0x1F) - 1;
        v165 = (v158 - 2) >> v164;
        v166 = v165 + (2 * v164 + 42);
        v167 = a6[v166];
        v168 = *a10;
        result = *a10 & 7;
        *(a11 + (*a10 >> 3)) = (a7[v166] << result) | *(a11 + (*a10 >> 3));
        v169 = v168 + v167;
        *a10 = v169;
        *(a11 + (v169 >> 3)) = ((v158 - 2 - (v165 << v164)) << (v169 & 7)) | *(a11 + (v169 >> 3));
        v161 = v169 + v164;
        *a10 = v169 + v164;
        v162 = &__dst[v166];
      }
    }

    else
    {
      v159 = a6[v158 | 0x28];
      v160 = *a10;
      *(a11 + (*a10 >> 3)) = (a7[v158 | 0x28] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
      v161 = v160 + v159;
      *a10 = v161;
      v162 = &__dst[v158 | 0x28];
      v163 = v202;
    }

    ++*v162;
    if (v158 <= 1)
    {
      v158 = 1;
    }

    do
    {
      v177 = *v22++;
      v178 = v204[v177];
      *(a11 + (v161 >> 3)) = (v203[v177] << (v161 & 7)) | *(a11 + (v161 >> 3));
      v161 += v178;
      *a10 = v161;
      --v158;
    }

    while (v158);
    v21 = v24;
LABEL_137:
    if (!v163)
    {
      break;
    }

    if (v163 >= 0x18000)
    {
      v189 = 98304;
    }

    else
    {
      v189 = v163;
    }

    v201 = v189;
    v202 = v163;
    v197 = *a10;
    sub_1001294F4(v189, 0, a10, a11);
    v190 = *a10;
    *(a11 + (*a10 >> 3)) = *(a11 + (*a10 >> 3));
    *a10 = v190 + 13;
    result = sub_10012959C(v195, v21, v201, v204, v203, a10, a11);
    if (*(v195 + 24))
    {
      return result;
    }

    v193 = result;
    sub_100129960(__dst, a6, a7, a10, a11);
  }

  if (!a4)
  {
    *a9 = 0;
    *a8 = 0;
    return sub_100129960(__dst, a6, a7, a8, a9);
  }

  return result;
}

uint64_t sub_100126FA0(uint64_t a1, unsigned __int8 *a2, unint64_t a3, int a4, uint64_t a5, unsigned __int8 *a6, unsigned __int16 *a7, unint64_t *a8, _BYTE *a9, unint64_t *a10, uint64_t a11)
{
  v202 = a3;
  if (a3 >= 0x18000)
  {
    v14 = 98304;
  }

  else
  {
    v14 = a3;
  }

  v197 = *a10;
  sub_1001294F4(v14, 0, a10, a11);
  v15 = *a10;
  *(a11 + (*a10 >> 3)) = *(a11 + (*a10 >> 3));
  *a10 = v15 + 13;
  v201 = v14;
  result = sub_10012959C(a1, a2, v14, v204, v203, a10, a11);
  v195 = a1;
  if (*(a1 + 24))
  {
    return result;
  }

  v193 = result;
  v17 = *a8;
  v18 = *a10;
  if (*a8 >= 8)
  {
    v19 = 0;
    do
    {
      *(a11 + (v18 >> 3)) = (a9[v19 >> 3] << (v18 & 7)) | *(a11 + (v18 >> 3));
      v18 += 8;
      *a10 = v18;
      v20 = v19 + 15;
      v19 += 8;
      v17 = *a8;
    }

    while (v20 < *a8);
  }

  *(a11 + (v18 >> 3)) = (a9[v17 >> 3] << (v18 & 7)) | *(a11 + (v18 >> 3));
  *a10 = v18 + (v17 & 7);
  v21 = a2;
  while (1)
  {
    v200 = v201;
    v22 = v21;
    v194 = v21;
    while (1)
    {
      result = memcpy(__dst, &unk_10037C734, sizeof(__dst));
      v23 = v200;
      v24 = &v21[v200];
      if (v200 >= 0x10)
      {
        v25 = v200 - 5;
        if (v200 - 5 >= v202 - 16)
        {
          v25 = v202 - 16;
        }

        v26 = &v21[v25];
        v27 = -1;
        v196 = v21;
        v28 = v21;
LABEL_15:
        v30 = *(v28 + 1);
        v29 = v28 + 1;
        v31 = (0x1E35A7BD000000 * v30) >> 51;
        v32 = 32;
        while (1)
        {
          v33 = &v29[v32 >> 5];
          if (v33 > v26)
          {
            break;
          }

          ++v32;
          v34 = v31;
          v21 = v29;
          while (1)
          {
            v29 = v33;
            v31 = (0x1E35A7BD000000 * *v33) >> 51;
            v35 = &v21[-v27];
            if (*v21 == *v35 && v21[4] == v35[4] && v27 >= 1)
            {
              break;
            }

            v35 = &a2[*(a5 + 4 * v34)];
            *(a5 + 4 * v34) = v21 - a2;
            if (*v21 == *v35 && v21[4] == v35[4])
            {
              goto LABEL_28;
            }

            v33 = &v29[v32++ >> 5];
            v34 = v31;
            v21 = v29;
            if (v33 > v26)
            {
              goto LABEL_99;
            }
          }

          *(a5 + 4 * v34) = v21 - a2;
LABEL_28:
          v37 = v21 - v35;
          if (v21 - v35 <= 262128)
          {
            v38 = v35 + 5;
            v39 = v21 + 5;
            v40 = v24 - v21 - 5;
            if (v40 < 8)
            {
              v43 = 0;
LABEL_88:
              v148 = v40 & 7;
              if (v148)
              {
                v149 = v43 | v148;
                while (v38[v43] == *v39)
                {
                  ++v39;
                  ++v43;
                  if (!--v148)
                  {
                    v43 = v149;
                    break;
                  }
                }
              }
            }

            else
            {
              v41 = 0;
              v42 = v40 >> 3;
              v43 = v40 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v44 = *&v39[v41];
                v45 = *&v38[v41];
                if (v44 != v45)
                {
                  break;
                }

                v41 += 8;
                if (!--v42)
                {
                  v39 += v40 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_88;
                }
              }

              v43 = v41 + (__clz(__rbit64(v45 ^ v44)) >> 3);
            }

            v46 = v21 - v22;
            if ((v21 - v22) >> 1 > 0xC20)
            {
              if (50 * (v22 - v194) <= v46 && v193 >= 0x3D5)
              {
                result = sub_100129458(v194, v21, v197, a10, a11);
                v163 = &v196[v202] - v21;
                goto LABEL_137;
              }

              if (v46 > 0x5841)
              {
                v153 = a6[63];
                v154 = *a10;
                result = *a10 & 7;
                *(a11 + (*a10 >> 3)) = (a7[63] << result) | *(a11 + (*a10 >> 3));
                v155 = v154 + v153;
                *a10 = v155;
                *(a11 + (v155 >> 3)) = ((v46 - 22594) << (v155 & 7)) | *(a11 + (v155 >> 3));
                v50 = v155 + 24;
                *a10 = v50;
                v51 = &__dst[63];
              }

              else
              {
                v150 = a6[62];
                v151 = *a10;
                result = *a10 & 7;
                *(a11 + (*a10 >> 3)) = (a7[62] << result) | *(a11 + (*a10 >> 3));
                v152 = v151 + v150;
                *a10 = v152;
                *(a11 + (v152 >> 3)) = ((v46 - 6210) << (v152 & 7)) | *(a11 + (v152 >> 3));
                v50 = v152 + 14;
                *a10 = v50;
                v51 = &__dst[62];
              }
            }

            else if (v46 > 5)
            {
              if (v46 > 0x81)
              {
                if (v46 > 0x841)
                {
                  v62 = a6[61];
                  v63 = *a10;
                  result = *a10 & 7;
                  *(a11 + (*a10 >> 3)) = (a7[61] << result) | *(a11 + (*a10 >> 3));
                  v64 = v63 + v62;
                  *a10 = v64;
                  *(a11 + (v64 >> 3)) = ((v46 - 2114) << (v64 & 7)) | *(a11 + (v64 >> 3));
                  v50 = v64 + 12;
                  *a10 = v50;
                  v51 = &__dst[61];
                }

                else
                {
                  v58 = __clz(v46 - 66) ^ 0x1F;
                  v59 = a6[v58 + 50];
                  v60 = *a10;
                  *(a11 + (*a10 >> 3)) = (a7[v58 + 50] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                  v61 = v60 + v59;
                  *a10 = v61;
                  result = *(a11 + (v61 >> 3));
                  *(a11 + (v61 >> 3)) = (((-1 << v58) + v46 - 66) << (v61 & 7)) | result;
                  v50 = v61 + v58;
                  *a10 = v61 + v58;
                  v51 = &__dst[v58 + 50];
                }
              }

              else
              {
                v52 = (__clz(v46 - 2) ^ 0x1F) - 1;
                v53 = (v46 - 2) >> v52;
                v54 = v53 + (2 * v52 + 42);
                v55 = a6[v54];
                v56 = *a10;
                v23 = v200;
                *(a11 + (*a10 >> 3)) = (a7[v54] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                v57 = v56 + v55;
                *a10 = v57;
                result = *(a11 + (v57 >> 3));
                *(a11 + (v57 >> 3)) = ((v46 - 2 - (v53 << v52)) << (v57 & 7)) | result;
                v50 = v57 + v52;
                *a10 = v57 + v52;
                v51 = &__dst[v54];
              }
            }

            else
            {
              v47 = a6[v46 | 0x28];
              v48 = *a10;
              v49 = *a10 >> 3;
              result = *(a11 + v49);
              *(a11 + v49) = (a7[v46 | 0x28] << (*a10 & 7)) | result;
              v50 = v48 + v47;
              *a10 = v50;
              v51 = &__dst[v46 | 0x28];
            }

            ++*v51;
            if (v21 != v22)
            {
              if (v46 <= 1)
              {
                v46 = 1;
              }

              do
              {
                v65 = *v22++;
                v66 = v204[v65];
                result = v50 & 7;
                *(a11 + (v50 >> 3)) = (v203[v65] << (v50 & 7)) | *(a11 + (v50 >> 3));
                v50 += v66;
                *a10 = v50;
                --v46;
              }

              while (v46);
            }

            if (v27 == v37)
            {
              v67 = a6[64];
              *(a11 + (v50 >> 3)) = (a7[64] << (v50 & 7)) | *(a11 + (v50 >> 3));
              v68 = v50 + v67;
              v69 = &__dst[64];
            }

            else
            {
              v70 = v37 + 3;
              v71 = __clz(v70) ^ 0x1F;
              v72 = v71 - 1;
              v73 = ((v70 >> (v71 - 1)) & 1 | 2) << (v71 - 1);
              v74 = ((2 * v71 - 4) & 0xFFFFFFFE | (v70 >> (v71 - 1)) & 1) + 80;
              v75 = a6[v74];
              result = v50 >> 3;
              *(a11 + (v50 >> 3)) = (a7[v74] << (v50 & 7)) | *(a11 + (v50 >> 3));
              v76 = v50 + v75;
              *a10 = v76;
              *(a11 + (v76 >> 3)) = ((v70 - v73) << (v76 & 7)) | *(a11 + (v76 >> 3));
              v68 = v76 + v72;
              v69 = &__dst[v74];
              v27 = v37;
            }

            v77 = v43 + 5;
            ++*v69;
            *a10 = v68;
            if (v43 + 5 > 0xB)
            {
              if (v77 > 0x47)
              {
                if (v77 > 0x87)
                {
                  if (v77 > 0x847)
                  {
                    v98 = a6[39];
                    *(a11 + (v68 >> 3)) = (a7[39] << (v68 & 7)) | *(a11 + (v68 >> 3));
                    v99 = v68 + v98;
                    *a10 = v99;
                    v100 = v99 & 7;
                    *(a11 + (v99 >> 3)) = ((v43 - 2115) << (v99 & 7)) | *(a11 + (v99 >> 3));
                    v101 = v99 + 24;
                    *a10 = v99 + 24;
                    v102 = a6[64];
                    *(a11 + (v101 >> 3)) = (a7[64] << v100) | *(a11 + (v101 >> 3));
                    *a10 = v101 + v102;
                    ++__dst[39];
                  }

                  else
                  {
                    v92 = v43 - 67;
                    v93 = __clz(v92) ^ 0x1F;
                    v94 = a6[v93 + 28];
                    result = *(a11 + (v68 >> 3));
                    *(a11 + (v68 >> 3)) = (a7[v93 + 28] << (v68 & 7)) | result;
                    v95 = v68 + v94;
                    *a10 = v95;
                    *(a11 + (v95 >> 3)) = (((-1 << v93) + v92) << (v95 & 7)) | *(a11 + (v95 >> 3));
                    v96 = v95 + v93;
                    *a10 = v95 + v93;
                    v97 = a6[64];
                    *(a11 + (v96 >> 3)) = (a7[64] << (v96 & 7)) | *(a11 + (v96 >> 3));
                    *a10 = v96 + v97;
                    ++__dst[v93 + 28];
                  }
                }

                else
                {
                  v86 = v43 - 3;
                  v87 = (v86 >> 5) + 30;
                  v88 = a6[v87];
                  result = v68 & 7;
                  *(a11 + (v68 >> 3)) = (a7[v87] << (v68 & 7)) | *(a11 + (v68 >> 3));
                  v89 = v68 + v88;
                  *a10 = v89;
                  *(a11 + (v89 >> 3)) = ((v86 & 0x1F) << (v89 & 7)) | *(a11 + (v89 >> 3));
                  v90 = v89 + 5;
                  *a10 = v89 + 5;
                  v91 = a6[64];
                  *(a11 + (v90 >> 3)) = (a7[64] << (v90 & 7)) | *(a11 + (v90 >> 3));
                  *a10 = v90 + v91;
                  ++__dst[v87];
                }

                v80 = &__dst[64];
              }

              else
              {
                v81 = v43 - 3;
                v82 = (__clz(v81) ^ 0x1F) - 1;
                v83 = (v81 >> v82) + (2 * v82 + 4);
                v84 = a6[v83];
                result = v68 >> 3;
                *(a11 + (v68 >> 3)) = (a7[v83] << (v68 & 7)) | *(a11 + (v68 >> 3));
                v85 = v68 + v84;
                *a10 = v85;
                *(a11 + (v85 >> 3)) = ((v81 - (v81 >> v82 << v82)) << (v85 & 7)) | *(a11 + (v85 >> 3));
                *a10 = v85 + v82;
                v80 = &__dst[v83];
              }
            }

            else
            {
              v78 = v43 + 1;
              v79 = a6[v78];
              *(a11 + (v68 >> 3)) = (a7[v78] << (v68 & 7)) | *(a11 + (v68 >> 3));
              *a10 = v68 + v79;
              v80 = &__dst[v78];
            }

            v28 = &v21[v77];
            ++*v80;
            if (&v21[v77] >= v26)
            {
LABEL_98:
              v22 = v28;
              break;
            }

            v103 = *(v28 - 3);
            *(a5 + (((0x1E35A7BD000000 * v103) >> 49) & 0x7FFC)) = v28 - a2 - 3;
            *(a5 + (((0x1E35A7BD000000 * (v103 >> 8)) >> 49) & 0x7FFC)) = v28 - a2 - 2;
            *(a5 + (((0x1E35A7BD000000 * (v103 >> 16)) >> 49) & 0x7FFC)) = v28 - a2 - 1;
            v104 = ((0x1E35A7BD000000 * (v103 >> 24)) >> 49) & 0x7FFC;
            v105 = *(a5 + v104);
            *(a5 + v104) = v28 - a2;
            v106 = &a2[v105];
            v22 = v28;
            if (*v28 == *&a2[v105])
            {
              while (1)
              {
                v22 = v28;
                if (v28[4] != v106[4])
                {
                  break;
                }

                v107 = v106 + 5;
                v108 = v28 + 5;
                v109 = v24 - v28 - 5;
                if (v109 < 8)
                {
                  v112 = 0;
LABEL_81:
                  v146 = v109 & 7;
                  if (v146)
                  {
                    v147 = v112 | v146;
                    while (1)
                    {
                      result = *v108;
                      if (v107[v112] != result)
                      {
                        break;
                      }

                      ++v108;
                      ++v112;
                      if (!--v146)
                      {
                        v112 = v147;
                        break;
                      }
                    }
                  }
                }

                else
                {
                  v110 = 0;
                  v111 = v109 >> 3;
                  v112 = v109 & 0xFFFFFFFFFFFFFFF8;
                  result = &v108[v109 & 0xFFFFFFFFFFFFFFF8];
                  while (1)
                  {
                    v113 = *&v108[v110];
                    v114 = *&v107[v110];
                    if (v113 != v114)
                    {
                      break;
                    }

                    v110 += 8;
                    if (!--v111)
                    {
                      v108 += v109 & 0xFFFFFFFFFFFFFFF8;
                      goto LABEL_81;
                    }
                  }

                  v112 = v110 + (__clz(__rbit64(v114 ^ v113)) >> 3);
                }

                v115 = v28 - v106;
                if (v115 <= 262128)
                {
                  v116 = v112 + 5;
                  if (v112 + 5 > 9)
                  {
                    if (v116 > 0x85)
                    {
                      if (v116 > 0x845)
                      {
                        v133 = a6[39];
                        v134 = *a10;
                        *(a11 + (*a10 >> 3)) = (a7[39] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                        v135 = v134 + v133;
                        *a10 = v135;
                        *(a11 + (v135 >> 3)) = ((v112 - 2113) << (v135 & 7)) | *(a11 + (v135 >> 3));
                        v120 = v135 + 24;
                        *a10 = v135 + 24;
                        v121 = &__dst[39];
                      }

                      else
                      {
                        v128 = v112 - 65;
                        v129 = __clz(v128) ^ 0x1F;
                        v130 = a6[v129 + 28];
                        v131 = *a10;
                        *(a11 + (*a10 >> 3)) = (a7[v129 + 28] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                        v132 = v131 + v130;
                        *a10 = v132;
                        *(a11 + (v132 >> 3)) = (((-1 << v129) + v128) << (v132 & 7)) | *(a11 + (v132 >> 3));
                        v120 = v132 + v129;
                        *a10 = v132 + v129;
                        v121 = &__dst[v129 + 28];
                      }
                    }

                    else
                    {
                      v122 = v112 - 1;
                      v123 = (__clz(v122) ^ 0x1F) - 1;
                      v124 = (v122 >> v123) + (2 * v123 + 20);
                      v125 = a6[v124];
                      v126 = *a10;
                      *(a11 + (*a10 >> 3)) = (a7[v124] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                      v127 = v126 + v125;
                      *a10 = v127;
                      *(a11 + (v127 >> 3)) = ((v122 - (v122 >> v123 << v123)) << (v127 & 7)) | *(a11 + (v127 >> 3));
                      v120 = v127 + v123;
                      *a10 = v127 + v123;
                      v121 = &__dst[v124];
                    }
                  }

                  else
                  {
                    v117 = v112 + 19;
                    v118 = a6[v112 + 19];
                    v119 = *a10;
                    *(a11 + (*a10 >> 3)) = (a7[v117] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                    v120 = v119 + v118;
                    *a10 = v120;
                    v121 = &__dst[v117];
                  }

                  v28 += v116;
                  ++*v121;
                  v136 = v115 + 3;
                  v137 = __clz(v136) ^ 0x1F;
                  v138 = v137 - 1;
                  v139 = (v136 >> (v137 - 1)) & 1 | 2;
                  v140 = ((2 * v137 - 4) & 0xFFFFFFFE | (v136 >> (v137 - 1)) & 1) + 80;
                  v141 = a6[v140];
                  result = v120 >> 3;
                  *(a11 + (v120 >> 3)) = (a7[v140] << (v120 & 7)) | *(a11 + (v120 >> 3));
                  v142 = v120 + v141;
                  *a10 = v142;
                  *(a11 + (v142 >> 3)) = ((v136 - (v139 << v138)) << (v142 & 7)) | *(a11 + (v142 >> 3));
                  *a10 = v142 + v138;
                  ++__dst[v140];
                  if (v28 >= v26)
                  {
                    goto LABEL_98;
                  }

                  v27 = v115;
                  v143 = *(v28 - 3);
                  *(a5 + (((0x1E35A7BD000000 * v143) >> 49) & 0x7FFC)) = v28 - a2 - 3;
                  *(a5 + (((0x1E35A7BD000000 * (v143 >> 8)) >> 49) & 0x7FFC)) = v28 - a2 - 2;
                  *(a5 + (((0x1E35A7BD000000 * (v143 >> 16)) >> 49) & 0x7FFC)) = v28 - a2 - 1;
                  v144 = ((0x1E35A7BD000000 * (v143 >> 24)) >> 49) & 0x7FFC;
                  v145 = *(a5 + v144);
                  *(a5 + v144) = v28 - a2;
                  v106 = &a2[v145];
                  if (*v28 == *&a2[v145])
                  {
                    continue;
                  }
                }

                v22 = v28;
                goto LABEL_15;
              }
            }

            goto LABEL_15;
          }
        }
      }

LABEL_99:
      v156 = v202 - v23;
      v157 = v202 - v23 >= 0x10000 ? 0x10000 : v202 - v23;
      v202 -= v23;
      if (!v156)
      {
        break;
      }

      v201 += v157;
      if (v201 > 0x100000)
      {
        break;
      }

      v21 = v24;
      v200 = v157;
      result = sub_1001297A8(v24, v157, v204);
      v24 = v21;
      if (!result)
      {
        break;
      }

      sub_100129900((v201 - 1), v197 + 3, a11);
    }

    if (v22 >= v24)
    {
      goto LABEL_135;
    }

    v158 = v24 - v22;
    if ((v24 - v22) >> 1 > 0xC20)
    {
      result = v194;
      if (50 * (v22 - v194) > v158 || v193 < 0x3D5)
      {
        v179 = a7 + 63;
        if (v158 < 0x5842)
        {
          v179 = a7 + 62;
        }

        v180 = a6 + 63;
        if (v158 < 0x5842)
        {
          v180 = a6 + 62;
        }

        v181 = -6210;
        if (v158 >= 0x5842)
        {
          v181 = -22594;
        }

        v182 = 24;
        if (v158 < 0x5842)
        {
          v182 = 14;
        }

        v183 = 63;
        if (v158 < 0x5842)
        {
          v183 = 62;
        }

        v184 = *v180;
        v185 = *a10;
        *(a11 + (*a10 >> 3)) = (*v179 << (*a10 & 7)) | *(a11 + (*a10 >> 3));
        *a10 = v185 + v184;
        *(a11 + ((v185 + v184) >> 3)) = ((v158 + v181) << ((v185 + v184) & 7)) | *(a11 + ((v185 + v184) >> 3));
        v186 = v185 + v184 + v182;
        ++__dst[v183];
        *a10 = v186;
        do
        {
          v187 = *v22++;
          v188 = v204[v187];
          *(a11 + (v186 >> 3)) = (v203[v187] << (v186 & 7)) | *(a11 + (v186 >> 3));
          v186 += v188;
          *a10 = v186;
          --v158;
        }

        while (v158);
LABEL_135:
        v21 = v24;
      }

      else
      {
        v21 = v24;
        result = sub_100129458(v194, v24, v197, a10, a11);
      }

      v163 = v202;
      goto LABEL_137;
    }

    if (v158 > 5)
    {
      v163 = v202;
      if (v158 > 0x81)
      {
        if (v158 > 0x841)
        {
          v174 = a6[61];
          v175 = *a10;
          *(a11 + (*a10 >> 3)) = (a7[61] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
          v176 = v175 + v174;
          *a10 = v176;
          *(a11 + (v176 >> 3)) = ((v158 - 2114) << (v176 & 7)) | *(a11 + (v176 >> 3));
          v161 = v176 + 12;
          *a10 = v161;
          v162 = &__dst[61];
        }

        else
        {
          v170 = __clz(v158 - 66) ^ 0x1F;
          v171 = a6[v170 + 50];
          v172 = *a10;
          *(a11 + (*a10 >> 3)) = (a7[v170 + 50] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
          v173 = v172 + v171;
          *a10 = v173;
          *(a11 + (v173 >> 3)) = (((-1 << v170) + v158 - 66) << (v173 & 7)) | *(a11 + (v173 >> 3));
          v161 = v173 + v170;
          *a10 = v173 + v170;
          v162 = &__dst[v170 + 50];
        }
      }

      else
      {
        v164 = (__clz(v158 - 2) ^ 0x1F) - 1;
        v165 = (v158 - 2) >> v164;
        v166 = v165 + (2 * v164 + 42);
        v167 = a6[v166];
        v168 = *a10;
        result = *a10 & 7;
        *(a11 + (*a10 >> 3)) = (a7[v166] << result) | *(a11 + (*a10 >> 3));
        v169 = v168 + v167;
        *a10 = v169;
        *(a11 + (v169 >> 3)) = ((v158 - 2 - (v165 << v164)) << (v169 & 7)) | *(a11 + (v169 >> 3));
        v161 = v169 + v164;
        *a10 = v169 + v164;
        v162 = &__dst[v166];
      }
    }

    else
    {
      v159 = a6[v158 | 0x28];
      v160 = *a10;
      *(a11 + (*a10 >> 3)) = (a7[v158 | 0x28] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
      v161 = v160 + v159;
      *a10 = v161;
      v162 = &__dst[v158 | 0x28];
      v163 = v202;
    }

    ++*v162;
    if (v158 <= 1)
    {
      v158 = 1;
    }

    do
    {
      v177 = *v22++;
      v178 = v204[v177];
      *(a11 + (v161 >> 3)) = (v203[v177] << (v161 & 7)) | *(a11 + (v161 >> 3));
      v161 += v178;
      *a10 = v161;
      --v158;
    }

    while (v158);
    v21 = v24;
LABEL_137:
    if (!v163)
    {
      break;
    }

    if (v163 >= 0x18000)
    {
      v189 = 98304;
    }

    else
    {
      v189 = v163;
    }

    v201 = v189;
    v202 = v163;
    v197 = *a10;
    sub_1001294F4(v189, 0, a10, a11);
    v190 = *a10;
    *(a11 + (*a10 >> 3)) = *(a11 + (*a10 >> 3));
    *a10 = v190 + 13;
    result = sub_10012959C(v195, v21, v201, v204, v203, a10, a11);
    if (*(v195 + 24))
    {
      return result;
    }

    v193 = result;
    sub_100129960(__dst, a6, a7, a10, a11);
  }

  if (!a4)
  {
    *a9 = 0;
    *a8 = 0;
    return sub_100129960(__dst, a6, a7, a8, a9);
  }

  return result;
}

uint64_t sub_1001281FC(uint64_t a1, unsigned __int8 *a2, unint64_t a3, int a4, uint64_t a5, unsigned __int8 *a6, unsigned __int16 *a7, unint64_t *a8, _BYTE *a9, unint64_t *a10, uint64_t a11)
{
  v202 = a3;
  if (a3 >= 0x18000)
  {
    v14 = 98304;
  }

  else
  {
    v14 = a3;
  }

  v197 = *a10;
  sub_1001294F4(v14, 0, a10, a11);
  v15 = *a10;
  *(a11 + (*a10 >> 3)) = *(a11 + (*a10 >> 3));
  *a10 = v15 + 13;
  v201 = v14;
  result = sub_10012959C(a1, a2, v14, v204, v203, a10, a11);
  v195 = a1;
  if (*(a1 + 24))
  {
    return result;
  }

  v193 = result;
  v17 = *a8;
  v18 = *a10;
  if (*a8 >= 8)
  {
    v19 = 0;
    do
    {
      *(a11 + (v18 >> 3)) = (a9[v19 >> 3] << (v18 & 7)) | *(a11 + (v18 >> 3));
      v18 += 8;
      *a10 = v18;
      v20 = v19 + 15;
      v19 += 8;
      v17 = *a8;
    }

    while (v20 < *a8);
  }

  *(a11 + (v18 >> 3)) = (a9[v17 >> 3] << (v18 & 7)) | *(a11 + (v18 >> 3));
  *a10 = v18 + (v17 & 7);
  v21 = a2;
  while (1)
  {
    v200 = v201;
    v22 = v21;
    v194 = v21;
    while (1)
    {
      result = memcpy(__dst, &unk_10037C734, sizeof(__dst));
      v23 = v200;
      v24 = &v21[v200];
      if (v200 >= 0x10)
      {
        v25 = v200 - 5;
        if (v200 - 5 >= v202 - 16)
        {
          v25 = v202 - 16;
        }

        v26 = &v21[v25];
        v27 = -1;
        v196 = v21;
        v28 = v21;
LABEL_15:
        v30 = *(v28 + 1);
        v29 = v28 + 1;
        v31 = (0x1E35A7BD000000 * v30) >> 49;
        v32 = 32;
        while (1)
        {
          v33 = &v29[v32 >> 5];
          if (v33 > v26)
          {
            break;
          }

          ++v32;
          v34 = v31;
          v21 = v29;
          while (1)
          {
            v29 = v33;
            v31 = (0x1E35A7BD000000 * *v33) >> 49;
            v35 = &v21[-v27];
            if (*v21 == *v35 && v21[4] == v35[4] && v27 >= 1)
            {
              break;
            }

            v35 = &a2[*(a5 + 4 * v34)];
            *(a5 + 4 * v34) = v21 - a2;
            if (*v21 == *v35 && v21[4] == v35[4])
            {
              goto LABEL_28;
            }

            v33 = &v29[v32++ >> 5];
            v34 = v31;
            v21 = v29;
            if (v33 > v26)
            {
              goto LABEL_99;
            }
          }

          *(a5 + 4 * v34) = v21 - a2;
LABEL_28:
          v37 = v21 - v35;
          if (v21 - v35 <= 262128)
          {
            v38 = v35 + 5;
            v39 = v21 + 5;
            v40 = v24 - v21 - 5;
            if (v40 < 8)
            {
              v43 = 0;
LABEL_88:
              v148 = v40 & 7;
              if (v148)
              {
                v149 = v43 | v148;
                while (v38[v43] == *v39)
                {
                  ++v39;
                  ++v43;
                  if (!--v148)
                  {
                    v43 = v149;
                    break;
                  }
                }
              }
            }

            else
            {
              v41 = 0;
              v42 = v40 >> 3;
              v43 = v40 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v44 = *&v39[v41];
                v45 = *&v38[v41];
                if (v44 != v45)
                {
                  break;
                }

                v41 += 8;
                if (!--v42)
                {
                  v39 += v40 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_88;
                }
              }

              v43 = v41 + (__clz(__rbit64(v45 ^ v44)) >> 3);
            }

            v46 = v21 - v22;
            if ((v21 - v22) >> 1 > 0xC20)
            {
              if (50 * (v22 - v194) <= v46 && v193 >= 0x3D5)
              {
                result = sub_100129458(v194, v21, v197, a10, a11);
                v163 = &v196[v202] - v21;
                goto LABEL_137;
              }

              if (v46 > 0x5841)
              {
                v153 = a6[63];
                v154 = *a10;
                result = *a10 & 7;
                *(a11 + (*a10 >> 3)) = (a7[63] << result) | *(a11 + (*a10 >> 3));
                v155 = v154 + v153;
                *a10 = v155;
                *(a11 + (v155 >> 3)) = ((v46 - 22594) << (v155 & 7)) | *(a11 + (v155 >> 3));
                v50 = v155 + 24;
                *a10 = v50;
                v51 = &__dst[63];
              }

              else
              {
                v150 = a6[62];
                v151 = *a10;
                result = *a10 & 7;
                *(a11 + (*a10 >> 3)) = (a7[62] << result) | *(a11 + (*a10 >> 3));
                v152 = v151 + v150;
                *a10 = v152;
                *(a11 + (v152 >> 3)) = ((v46 - 6210) << (v152 & 7)) | *(a11 + (v152 >> 3));
                v50 = v152 + 14;
                *a10 = v50;
                v51 = &__dst[62];
              }
            }

            else if (v46 > 5)
            {
              if (v46 > 0x81)
              {
                if (v46 > 0x841)
                {
                  v62 = a6[61];
                  v63 = *a10;
                  result = *a10 & 7;
                  *(a11 + (*a10 >> 3)) = (a7[61] << result) | *(a11 + (*a10 >> 3));
                  v64 = v63 + v62;
                  *a10 = v64;
                  *(a11 + (v64 >> 3)) = ((v46 - 2114) << (v64 & 7)) | *(a11 + (v64 >> 3));
                  v50 = v64 + 12;
                  *a10 = v50;
                  v51 = &__dst[61];
                }

                else
                {
                  v58 = __clz(v46 - 66) ^ 0x1F;
                  v59 = a6[v58 + 50];
                  v60 = *a10;
                  *(a11 + (*a10 >> 3)) = (a7[v58 + 50] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                  v61 = v60 + v59;
                  *a10 = v61;
                  result = *(a11 + (v61 >> 3));
                  *(a11 + (v61 >> 3)) = (((-1 << v58) + v46 - 66) << (v61 & 7)) | result;
                  v50 = v61 + v58;
                  *a10 = v61 + v58;
                  v51 = &__dst[v58 + 50];
                }
              }

              else
              {
                v52 = (__clz(v46 - 2) ^ 0x1F) - 1;
                v53 = (v46 - 2) >> v52;
                v54 = v53 + (2 * v52 + 42);
                v55 = a6[v54];
                v56 = *a10;
                v23 = v200;
                *(a11 + (*a10 >> 3)) = (a7[v54] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                v57 = v56 + v55;
                *a10 = v57;
                result = *(a11 + (v57 >> 3));
                *(a11 + (v57 >> 3)) = ((v46 - 2 - (v53 << v52)) << (v57 & 7)) | result;
                v50 = v57 + v52;
                *a10 = v57 + v52;
                v51 = &__dst[v54];
              }
            }

            else
            {
              v47 = a6[v46 | 0x28];
              v48 = *a10;
              v49 = *a10 >> 3;
              result = *(a11 + v49);
              *(a11 + v49) = (a7[v46 | 0x28] << (*a10 & 7)) | result;
              v50 = v48 + v47;
              *a10 = v50;
              v51 = &__dst[v46 | 0x28];
            }

            ++*v51;
            if (v21 != v22)
            {
              if (v46 <= 1)
              {
                v46 = 1;
              }

              do
              {
                v65 = *v22++;
                v66 = v204[v65];
                result = v50 & 7;
                *(a11 + (v50 >> 3)) = (v203[v65] << (v50 & 7)) | *(a11 + (v50 >> 3));
                v50 += v66;
                *a10 = v50;
                --v46;
              }

              while (v46);
            }

            if (v27 == v37)
            {
              v67 = a6[64];
              *(a11 + (v50 >> 3)) = (a7[64] << (v50 & 7)) | *(a11 + (v50 >> 3));
              v68 = v50 + v67;
              v69 = &__dst[64];
            }

            else
            {
              v70 = v37 + 3;
              v71 = __clz(v70) ^ 0x1F;
              v72 = v71 - 1;
              v73 = ((v70 >> (v71 - 1)) & 1 | 2) << (v71 - 1);
              v74 = ((2 * v71 - 4) & 0xFFFFFFFE | (v70 >> (v71 - 1)) & 1) + 80;
              v75 = a6[v74];
              result = v50 >> 3;
              *(a11 + (v50 >> 3)) = (a7[v74] << (v50 & 7)) | *(a11 + (v50 >> 3));
              v76 = v50 + v75;
              *a10 = v76;
              *(a11 + (v76 >> 3)) = ((v70 - v73) << (v76 & 7)) | *(a11 + (v76 >> 3));
              v68 = v76 + v72;
              v69 = &__dst[v74];
              v27 = v37;
            }

            v77 = v43 + 5;
            ++*v69;
            *a10 = v68;
            if (v43 + 5 > 0xB)
            {
              if (v77 > 0x47)
              {
                if (v77 > 0x87)
                {
                  if (v77 > 0x847)
                  {
                    v98 = a6[39];
                    *(a11 + (v68 >> 3)) = (a7[39] << (v68 & 7)) | *(a11 + (v68 >> 3));
                    v99 = v68 + v98;
                    *a10 = v99;
                    v100 = v99 & 7;
                    *(a11 + (v99 >> 3)) = ((v43 - 2115) << (v99 & 7)) | *(a11 + (v99 >> 3));
                    v101 = v99 + 24;
                    *a10 = v99 + 24;
                    v102 = a6[64];
                    *(a11 + (v101 >> 3)) = (a7[64] << v100) | *(a11 + (v101 >> 3));
                    *a10 = v101 + v102;
                    ++__dst[39];
                  }

                  else
                  {
                    v92 = v43 - 67;
                    v93 = __clz(v92) ^ 0x1F;
                    v94 = a6[v93 + 28];
                    result = *(a11 + (v68 >> 3));
                    *(a11 + (v68 >> 3)) = (a7[v93 + 28] << (v68 & 7)) | result;
                    v95 = v68 + v94;
                    *a10 = v95;
                    *(a11 + (v95 >> 3)) = (((-1 << v93) + v92) << (v95 & 7)) | *(a11 + (v95 >> 3));
                    v96 = v95 + v93;
                    *a10 = v95 + v93;
                    v97 = a6[64];
                    *(a11 + (v96 >> 3)) = (a7[64] << (v96 & 7)) | *(a11 + (v96 >> 3));
                    *a10 = v96 + v97;
                    ++__dst[v93 + 28];
                  }
                }

                else
                {
                  v86 = v43 - 3;
                  v87 = (v86 >> 5) + 30;
                  v88 = a6[v87];
                  result = v68 & 7;
                  *(a11 + (v68 >> 3)) = (a7[v87] << (v68 & 7)) | *(a11 + (v68 >> 3));
                  v89 = v68 + v88;
                  *a10 = v89;
                  *(a11 + (v89 >> 3)) = ((v86 & 0x1F) << (v89 & 7)) | *(a11 + (v89 >> 3));
                  v90 = v89 + 5;
                  *a10 = v89 + 5;
                  v91 = a6[64];
                  *(a11 + (v90 >> 3)) = (a7[64] << (v90 & 7)) | *(a11 + (v90 >> 3));
                  *a10 = v90 + v91;
                  ++__dst[v87];
                }

                v80 = &__dst[64];
              }

              else
              {
                v81 = v43 - 3;
                v82 = (__clz(v81) ^ 0x1F) - 1;
                v83 = (v81 >> v82) + (2 * v82 + 4);
                v84 = a6[v83];
                result = v68 >> 3;
                *(a11 + (v68 >> 3)) = (a7[v83] << (v68 & 7)) | *(a11 + (v68 >> 3));
                v85 = v68 + v84;
                *a10 = v85;
                *(a11 + (v85 >> 3)) = ((v81 - (v81 >> v82 << v82)) << (v85 & 7)) | *(a11 + (v85 >> 3));
                *a10 = v85 + v82;
                v80 = &__dst[v83];
              }
            }

            else
            {
              v78 = v43 + 1;
              v79 = a6[v78];
              *(a11 + (v68 >> 3)) = (a7[v78] << (v68 & 7)) | *(a11 + (v68 >> 3));
              *a10 = v68 + v79;
              v80 = &__dst[v78];
            }

            v28 = &v21[v77];
            ++*v80;
            if (&v21[v77] >= v26)
            {
LABEL_98:
              v22 = v28;
              break;
            }

            v103 = *(v28 - 3);
            *(a5 + (((0x1E35A7BD000000 * v103) >> 47) & 0x1FFFC)) = v28 - a2 - 3;
            *(a5 + (((0x1E35A7BD000000 * (v103 >> 8)) >> 47) & 0x1FFFC)) = v28 - a2 - 2;
            *(a5 + (((0x1E35A7BD000000 * (v103 >> 16)) >> 47) & 0x1FFFC)) = v28 - a2 - 1;
            v104 = ((0x1E35A7BD000000 * (v103 >> 24)) >> 47) & 0x1FFFC;
            v105 = *(a5 + v104);
            *(a5 + v104) = v28 - a2;
            v106 = &a2[v105];
            v22 = v28;
            if (*v28 == *&a2[v105])
            {
              while (1)
              {
                v22 = v28;
                if (v28[4] != v106[4])
                {
                  break;
                }

                v107 = v106 + 5;
                v108 = v28 + 5;
                v109 = v24 - v28 - 5;
                if (v109 < 8)
                {
                  v112 = 0;
LABEL_81:
                  v146 = v109 & 7;
                  if (v146)
                  {
                    v147 = v112 | v146;
                    while (1)
                    {
                      result = *v108;
                      if (v107[v112] != result)
                      {
                        break;
                      }

                      ++v108;
                      ++v112;
                      if (!--v146)
                      {
                        v112 = v147;
                        break;
                      }
                    }
                  }
                }

                else
                {
                  v110 = 0;
                  v111 = v109 >> 3;
                  v112 = v109 & 0xFFFFFFFFFFFFFFF8;
                  result = &v108[v109 & 0xFFFFFFFFFFFFFFF8];
                  while (1)
                  {
                    v113 = *&v108[v110];
                    v114 = *&v107[v110];
                    if (v113 != v114)
                    {
                      break;
                    }

                    v110 += 8;
                    if (!--v111)
                    {
                      v108 += v109 & 0xFFFFFFFFFFFFFFF8;
                      goto LABEL_81;
                    }
                  }

                  v112 = v110 + (__clz(__rbit64(v114 ^ v113)) >> 3);
                }

                v115 = v28 - v106;
                if (v115 <= 262128)
                {
                  v116 = v112 + 5;
                  if (v112 + 5 > 9)
                  {
                    if (v116 > 0x85)
                    {
                      if (v116 > 0x845)
                      {
                        v133 = a6[39];
                        v134 = *a10;
                        *(a11 + (*a10 >> 3)) = (a7[39] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                        v135 = v134 + v133;
                        *a10 = v135;
                        *(a11 + (v135 >> 3)) = ((v112 - 2113) << (v135 & 7)) | *(a11 + (v135 >> 3));
                        v120 = v135 + 24;
                        *a10 = v135 + 24;
                        v121 = &__dst[39];
                      }

                      else
                      {
                        v128 = v112 - 65;
                        v129 = __clz(v128) ^ 0x1F;
                        v130 = a6[v129 + 28];
                        v131 = *a10;
                        *(a11 + (*a10 >> 3)) = (a7[v129 + 28] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                        v132 = v131 + v130;
                        *a10 = v132;
                        *(a11 + (v132 >> 3)) = (((-1 << v129) + v128) << (v132 & 7)) | *(a11 + (v132 >> 3));
                        v120 = v132 + v129;
                        *a10 = v132 + v129;
                        v121 = &__dst[v129 + 28];
                      }
                    }

                    else
                    {
                      v122 = v112 - 1;
                      v123 = (__clz(v122) ^ 0x1F) - 1;
                      v124 = (v122 >> v123) + (2 * v123 + 20);
                      v125 = a6[v124];
                      v126 = *a10;
                      *(a11 + (*a10 >> 3)) = (a7[v124] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                      v127 = v126 + v125;
                      *a10 = v127;
                      *(a11 + (v127 >> 3)) = ((v122 - (v122 >> v123 << v123)) << (v127 & 7)) | *(a11 + (v127 >> 3));
                      v120 = v127 + v123;
                      *a10 = v127 + v123;
                      v121 = &__dst[v124];
                    }
                  }

                  else
                  {
                    v117 = v112 + 19;
                    v118 = a6[v112 + 19];
                    v119 = *a10;
                    *(a11 + (*a10 >> 3)) = (a7[v117] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
                    v120 = v119 + v118;
                    *a10 = v120;
                    v121 = &__dst[v117];
                  }

                  v28 += v116;
                  ++*v121;
                  v136 = v115 + 3;
                  v137 = __clz(v136) ^ 0x1F;
                  v138 = v137 - 1;
                  v139 = (v136 >> (v137 - 1)) & 1 | 2;
                  v140 = ((2 * v137 - 4) & 0xFFFFFFFE | (v136 >> (v137 - 1)) & 1) + 80;
                  v141 = a6[v140];
                  result = v120 >> 3;
                  *(a11 + (v120 >> 3)) = (a7[v140] << (v120 & 7)) | *(a11 + (v120 >> 3));
                  v142 = v120 + v141;
                  *a10 = v142;
                  *(a11 + (v142 >> 3)) = ((v136 - (v139 << v138)) << (v142 & 7)) | *(a11 + (v142 >> 3));
                  *a10 = v142 + v138;
                  ++__dst[v140];
                  if (v28 >= v26)
                  {
                    goto LABEL_98;
                  }

                  v27 = v115;
                  v143 = *(v28 - 3);
                  *(a5 + (((0x1E35A7BD000000 * v143) >> 47) & 0x1FFFC)) = v28 - a2 - 3;
                  *(a5 + (((0x1E35A7BD000000 * (v143 >> 8)) >> 47) & 0x1FFFC)) = v28 - a2 - 2;
                  *(a5 + (((0x1E35A7BD000000 * (v143 >> 16)) >> 47) & 0x1FFFC)) = v28 - a2 - 1;
                  v144 = ((0x1E35A7BD000000 * (v143 >> 24)) >> 47) & 0x1FFFC;
                  v145 = *(a5 + v144);
                  *(a5 + v144) = v28 - a2;
                  v106 = &a2[v145];
                  if (*v28 == *&a2[v145])
                  {
                    continue;
                  }
                }

                v22 = v28;
                goto LABEL_15;
              }
            }

            goto LABEL_15;
          }
        }
      }

LABEL_99:
      v156 = v202 - v23;
      v157 = v202 - v23 >= 0x10000 ? 0x10000 : v202 - v23;
      v202 -= v23;
      if (!v156)
      {
        break;
      }

      v201 += v157;
      if (v201 > 0x100000)
      {
        break;
      }

      v21 = v24;
      v200 = v157;
      result = sub_1001297A8(v24, v157, v204);
      v24 = v21;
      if (!result)
      {
        break;
      }

      sub_100129900((v201 - 1), v197 + 3, a11);
    }

    if (v22 >= v24)
    {
      goto LABEL_135;
    }

    v158 = v24 - v22;
    if ((v24 - v22) >> 1 > 0xC20)
    {
      result = v194;
      if (50 * (v22 - v194) > v158 || v193 < 0x3D5)
      {
        v179 = a7 + 63;
        if (v158 < 0x5842)
        {
          v179 = a7 + 62;
        }

        v180 = a6 + 63;
        if (v158 < 0x5842)
        {
          v180 = a6 + 62;
        }

        v181 = -6210;
        if (v158 >= 0x5842)
        {
          v181 = -22594;
        }

        v182 = 24;
        if (v158 < 0x5842)
        {
          v182 = 14;
        }

        v183 = 63;
        if (v158 < 0x5842)
        {
          v183 = 62;
        }

        v184 = *v180;
        v185 = *a10;
        *(a11 + (*a10 >> 3)) = (*v179 << (*a10 & 7)) | *(a11 + (*a10 >> 3));
        *a10 = v185 + v184;
        *(a11 + ((v185 + v184) >> 3)) = ((v158 + v181) << ((v185 + v184) & 7)) | *(a11 + ((v185 + v184) >> 3));
        v186 = v185 + v184 + v182;
        ++__dst[v183];
        *a10 = v186;
        do
        {
          v187 = *v22++;
          v188 = v204[v187];
          *(a11 + (v186 >> 3)) = (v203[v187] << (v186 & 7)) | *(a11 + (v186 >> 3));
          v186 += v188;
          *a10 = v186;
          --v158;
        }

        while (v158);
LABEL_135:
        v21 = v24;
      }

      else
      {
        v21 = v24;
        result = sub_100129458(v194, v24, v197, a10, a11);
      }

      v163 = v202;
      goto LABEL_137;
    }

    if (v158 > 5)
    {
      v163 = v202;
      if (v158 > 0x81)
      {
        if (v158 > 0x841)
        {
          v174 = a6[61];
          v175 = *a10;
          *(a11 + (*a10 >> 3)) = (a7[61] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
          v176 = v175 + v174;
          *a10 = v176;
          *(a11 + (v176 >> 3)) = ((v158 - 2114) << (v176 & 7)) | *(a11 + (v176 >> 3));
          v161 = v176 + 12;
          *a10 = v161;
          v162 = &__dst[61];
        }

        else
        {
          v170 = __clz(v158 - 66) ^ 0x1F;
          v171 = a6[v170 + 50];
          v172 = *a10;
          *(a11 + (*a10 >> 3)) = (a7[v170 + 50] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
          v173 = v172 + v171;
          *a10 = v173;
          *(a11 + (v173 >> 3)) = (((-1 << v170) + v158 - 66) << (v173 & 7)) | *(a11 + (v173 >> 3));
          v161 = v173 + v170;
          *a10 = v173 + v170;
          v162 = &__dst[v170 + 50];
        }
      }

      else
      {
        v164 = (__clz(v158 - 2) ^ 0x1F) - 1;
        v165 = (v158 - 2) >> v164;
        v166 = v165 + (2 * v164 + 42);
        v167 = a6[v166];
        v168 = *a10;
        result = *a10 & 7;
        *(a11 + (*a10 >> 3)) = (a7[v166] << result) | *(a11 + (*a10 >> 3));
        v169 = v168 + v167;
        *a10 = v169;
        *(a11 + (v169 >> 3)) = ((v158 - 2 - (v165 << v164)) << (v169 & 7)) | *(a11 + (v169 >> 3));
        v161 = v169 + v164;
        *a10 = v169 + v164;
        v162 = &__dst[v166];
      }
    }

    else
    {
      v159 = a6[v158 | 0x28];
      v160 = *a10;
      *(a11 + (*a10 >> 3)) = (a7[v158 | 0x28] << (*a10 & 7)) | *(a11 + (*a10 >> 3));
      v161 = v160 + v159;
      *a10 = v161;
      v162 = &__dst[v158 | 0x28];
      v163 = v202;
    }

    ++*v162;
    if (v158 <= 1)
    {
      v158 = 1;
    }

    do
    {
      v177 = *v22++;
      v178 = v204[v177];
      *(a11 + (v161 >> 3)) = (v203[v177] << (v161 & 7)) | *(a11 + (v161 >> 3));
      v161 += v178;
      *a10 = v161;
      --v158;
    }

    while (v158);
    v21 = v24;
LABEL_137:
    if (!v163)
    {
      break;
    }

    if (v163 >= 0x18000)
    {
      v189 = 98304;
    }

    else
    {
      v189 = v163;
    }

    v201 = v189;
    v202 = v163;
    v197 = *a10;
    sub_1001294F4(v189, 0, a10, a11);
    v190 = *a10;
    *(a11 + (*a10 >> 3)) = *(a11 + (*a10 >> 3));
    *a10 = v190 + 13;
    result = sub_10012959C(v195, v21, v201, v204, v203, a10, a11);
    if (*(v195 + 24))
    {
      return result;
    }

    v193 = result;
    sub_100129960(__dst, a6, a7, a10, a11);
  }

  if (!a4)
  {
    *a9 = 0;
    *a8 = 0;
    return sub_100129960(__dst, a6, a7, a8, a9);
  }

  return result;
}

void *sub_100129458(const void *a1, uint64_t a2, unint64_t a3, unint64_t *a4, uint64_t a5)
{
  v8 = a2 - a1;
  *(a5 + (a3 >> 3)) &= ~(-1 << (a3 & 7));
  *a4 = a3;
  sub_1001294F4(a2 - a1, 1u, a4, a5);
  v9 = (*a4 + 7) & 0xFFFFFFF8;
  *a4 = v9;
  result = memcpy((a5 + (v9 >> 3)), a1, v8);
  v11 = *a4 + 8 * v8;
  *a4 = v11;
  *(a5 + (v11 >> 3)) = 0;
  return result;
}

unint64_t sub_1001294F4(unint64_t result, unsigned int a2, unint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  *(a4 + (*a3 >> 3)) = *(a4 + (*a3 >> 3));
  *a3 = v4 + 1;
  v5 = 5;
  if (result >= 0x100001)
  {
    v5 = 6;
  }

  if (result <= 0x10000)
  {
    v5 = 4;
  }

  *(a4 + ((v4 + 1) >> 3)) = ((v5 - 4) << ((v4 + 1) & 7)) | *(a4 + ((v4 + 1) >> 3));
  v6 = v4 + 3;
  *a3 = v6;
  *(a4 + (v6 >> 3)) = ((result - 1) << (v6 & 7)) | *(a4 + (v6 >> 3));
  v7 = v6 + 4 * v5;
  *a3 = v7;
  *(a4 + (v7 >> 3)) = (a2 << (v7 & 7)) | *(a4 + (v7 >> 3));
  *a3 = v7 + 1;
  return result;
}

unint64_t sub_10012959C(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  bzero(v35, 0x400uLL);
  if (a3 >= 0x8000)
  {
    v23 = 0;
    do
    {
      ++v35[a2[v23]];
      v23 += 29;
    }

    while (v23 < a3);
    v24 = 0;
    v25 = ((a3 + 28) * 0x1A7B9611A7B9611BuLL) >> 64;
    v17 = 0uLL;
    v18 = ((v25 + ((a3 + 28 - v25) >> 1)) >> 4);
    v26.i64[0] = 0xB0000000BLL;
    v26.i64[1] = 0xB0000000BLL;
    do
    {
      v27 = *&v35[v24];
      v28 = vminq_u32(v27, v26);
      v29 = *&vaddq_s32(v28, v28) | __PAIR128__(0x100000001, 0x100000001);
      *&v35[v24] = vaddq_s32(v29, v27);
      v17 = vaddw_high_u32(v17, v29);
      v18 = vaddw_u32(v18, *&v29);
      v24 += 4;
    }

    while (v24 != 256);
  }

  else
  {
    if (a3)
    {
      v14 = a3;
      do
      {
        v15 = *a2++;
        ++v35[v15];
        --v14;
      }

      while (v14);
    }

    v16 = 0;
    v17 = 0uLL;
    v18 = a3;
    v19.i64[0] = 0xB0000000BLL;
    v19.i64[1] = 0xB0000000BLL;
    do
    {
      v20 = *&v35[v16];
      v21 = vminq_u32(v20, v19);
      v22 = vaddq_s32(v21, v21);
      *&v35[v16] = vaddq_s32(v22, v20);
      v17 = vaddw_high_u32(v17, v22);
      v18 = vaddw_u32(v18, *v22.i8);
      v16 += 4;
    }

    while (v16 != 256);
  }

  v30 = vaddvq_s64(vaddq_s64(v18, v17));
  sub_10016D708(a1, v35, v30, 8, a4, a5, a6, a7);
  if (*(a1 + 24))
  {
    return 0;
  }

  v32 = 0;
  for (i = 0; i != 256; ++i)
  {
    v34 = v35[i];
    if (v34)
    {
      v32 += v34 * a4[i];
    }
  }

  return 125 * v32 / v30;
}

BOOL sub_1001297A8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  bzero(v16, 0x800uLL);
  v7 = 0;
  if (!a2)
  {
    goto LABEL_4;
  }

  do
  {
    ++v16[*(a1 + v7)];
    v7 += 43;
  }

  while (v7 < a2);
  v7 = (a2 + 42) / 0x2B;
  if ((a2 + 42) >> 8 > 0x2A)
  {
    v9 = v7;
    v8 = log2(v7);
  }

  else
  {
LABEL_4:
    v8 = dbl_1003EDA70[v7];
    v9 = v7;
  }

  v10 = 0;
  v11 = (v8 + 0.5) * v9 + 200.0;
  do
  {
    v12 = v16[v10];
    v13 = v12;
    LOBYTE(v3) = *(a3 + v10);
    if (v12 > 0xFF)
    {
      v14 = log2(v12);
    }

    else
    {
      v14 = dbl_1003EDA70[v12];
    }

    v11 = v11 - v13 * (v14 + v3);
    ++v10;
  }

  while (v10 != 256);
  return v11 >= 0.0;
}

uint64_t sub_100129900(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = 20;
  do
  {
    v4 = 8 - (a2 & 7);
    if (v3 < v4)
    {
      v4 = v3;
    }

    *(a3 + (a2 >> 3)) = ((-1 << (v4 + (a2 & 7))) | ~(-1 << (a2 & 7))) & *(a3 + (a2 >> 3)) | ((result & ~(-1 << v4)) << (a2 & 7));
    result = result >> v4;
    a2 += v4;
    v3 -= v4;
  }

  while (v3);
  return result;
}

unint64_t sub_100129960(uint64_t a1, uint64_t *a2, _OWORD *a3, unint64_t *a4, uint64_t a5)
{
  bzero(v30, 0x280uLL);
  sub_10013CB14(a1, 64, 15, v31, a2);
  sub_10013CB14(a1 + 256, 64, 14, v31, (a2 + 8));
  *v27 = *a2;
  v10 = v28;
  v32.val[1] = *(a2 + 3);
  v32.val[0] = *(a2 + 5);
  vst2q_f64(v10, v32);
  v12 = a2 + 7;
  v11 = a2[7];
  *&v27[16] = a2[2];
  v29 = v11;
  sub_10013D55C(v27, 64, v26);
  v13 = v26[1];
  *a3 = v26[0];
  a3[1] = v13;
  v14 = v26[3];
  v15 = v26[4];
  v16 = v26[5];
  a3[2] = v26[2];
  a3[3] = v15;
  v17 = v26[7];
  a3[4] = v26[6];
  a3[5] = v14;
  a3[6] = v16;
  a3[7] = v17;
  sub_10013D55C(a2 + 64, 64, (a3 + 8));
  memset(v28, 0, sizeof(v28));
  v18 = *a2;
  v19 = a2[1];
  v29 = 0;
  v30[0] = v19;
  *v27 = v18;
  v20 = a2[3];
  v30[8] = a2[2];
  v21 = a2[4];
  v30[16] = v20;
  v30[40] = v21;
  v22 = 256;
  *&v27[8] = 0u;
  do
  {
    v23 = &v27[v22];
    *(v23 - 128) = *(v12 - 16);
    *v23 = *(v12 - 8);
    v24 = *v12;
    v12 = (v12 + 1);
    v23[192] = v24;
    v22 += 8;
  }

  while (v22 != 320);
  sub_10016D458(v27, 0x2C0uLL, v31, a4, a5);
  return sub_10016D458((a2 + 8), 0x40uLL, v31, a4, a5);
}

uint64_t sub_100129B14(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8) - *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32) - v3;
  if (*(a1 + 8) == *a1 || *(a1 + 32) == v3)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *(a1 + 48);
  v9 = *(a1 + 56);
  v8 = a1 + 48;
  if (!v10)
  {
    if (!v9)
    {
      return (*(&off_1004837A0 + *v1))(a1, v8);
    }

    v11 = *(a1 + 64);
    *v8 = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    goto LABEL_19;
  }

  v11 = *(a1 + 64);
  *v8 = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (v9)
  {
    if (v4 < 4 || v2 < 4)
    {
      v13 = v10 - v4;
      if (v10 > v4)
      {
        if (v4)
        {
          v21 = v1;
          v22 = v3;
          v23 = v4;
          do
          {
            v24 = *v21++;
            *v22++ = v24;
            --v23;
          }

          while (v23);
        }

        *a1 = &v1[v4];
        *(a1 + 16) = v3 + v4;
        *(a1 + 48) = v13;
        *(a1 + 56) = v9;
        goto LABEL_40;
      }

      v14 = v1;
      v15 = v3;
      v16 = v10;
      do
      {
        v17 = *v14++;
        *v15++ = v17;
        --v16;
      }

      while (v16);
    }

    else
    {
      *v3 = *v1;
    }

    v3 = (v3 + v10);
    if (v11 - 1 >= v3 - *(a1 + 24))
    {
      return 4294967293;
    }

    v4 -= v10;
    v1 += v10;
LABEL_19:
    if (v4 < v9 + 7 || v11 < 8)
    {
      v18 = v9 - v4;
      if (v9 > v4)
      {
        if (v4)
        {
          v25 = v3;
          v26 = v4;
          do
          {
            *v25 = v25[-v11];
            ++v25;
            --v26;
          }

          while (v26);
        }

        *a1 = v1;
        *(a1 + 16) = v3 + v4;
        *(a1 + 48) = 0;
        *(a1 + 56) = v18;
        goto LABEL_40;
      }

      v19 = v3;
      v20 = v9;
      do
      {
        *v19 = v19[-v11];
        ++v19;
        --v20;
      }

      while (v20);
    }

    else
    {
      for (i = 0; i < v9; i += 8)
      {
        *&v3[i / 4] = *(&v3[i / 4] - v11);
      }
    }

    return (*(&off_1004837A0 + *v1))();
  }

  if (v2 <= v10)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 >= v10 + 7 && v2 >= v10 + 7)
  {
    for (j = 0; j < v10; j += 8)
    {
      *&v3[j / 4] = *&v1[j];
    }

    goto LABEL_52;
  }

  v28 = v10 - v4;
  if (v10 > v4)
  {
    if (v4)
    {
      v34 = v1;
      v35 = v3;
      v36 = v4;
      do
      {
        v37 = *v34++;
        *v35++ = v37;
        --v36;
      }

      while (v36);
    }

    *a1 = &v1[v4];
    *(a1 + 16) = v3 + v4;
    *(a1 + 48) = v28;
    *(a1 + 56) = 0;
LABEL_40:
    v6 = 4294967294;
    *(a1 + 64) = v11;
    return v6;
  }

  v29 = v1;
  v30 = v3;
  v31 = v10;
  do
  {
    v32 = *v29++;
    v8 = v32;
    *v30++ = v32;
    --v31;
  }

  while (v31);
LABEL_52:
  v1 += v10;
  return (*(&off_1004837A0 + *v1))(a1, v8);
}

uint64_t sub_100129F84(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result + 12;
    do
    {
      *(v2 - 12) = 1;
      *(v2 - 4) = 0x7EFFC99E00000000;
      v2 += 16;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t sub_100129FB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v45 = result;
  v8 = *(a3 + 12);
  if (v8 == -1)
  {
    v9 = 0;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v11 = (1 << *(a6 + 8)) - 16;
    v12 = *(a6 + 16) + a2;
    v13 = a7 + 8;
    do
    {
      v14 = (a3 + 16 * v9 + 16 * v8);
      v15 = *v14;
      v16 = v14[2];
      v8 = v14[3];
      v17 = v16 & 0x7FFFFFF;
      if (v10)
      {
        v18 = v16 & 0x7FFFFFF;
      }

      else
      {
        v18 = *a5 + v17;
        *a5 = 0;
      }

      v19 = v15 & 0x1FFFFFF;
      v20 = v9 + v17;
      v21 = v14[1];
      v22 = (v15 & 0x1FFFFFF) - (v15 >> 25) + 9;
      v23 = v12 + v20;
      if (v12 + v20 >= v11)
      {
        v23 = v11;
      }

      v24 = v16 >> 27;
      if (v24)
      {
        v25 = v24 - 1;
      }

      else
      {
        v25 = (v21 + 15);
      }

      *(v13 - 8) = v18;
      *(v13 - 4) = v19 | ((v22 - v15) << 25);
      v26 = *(a6 + 68);
      v27 = v26 + 16;
      if (v26 + 16 <= v25)
      {
        v30 = *(a6 + 64);
        v31 = v25 - v26 + (4 << v30) - 16;
        v32 = (__clz(v31) ^ 0x1F) - 1;
        result = v32 - v30;
        v29 = ((v31 & ~(-1 << v30)) + v27 + ((((v31 >> v32) & 1 | (2 * (v32 - v30))) + 65534) << v30)) | ((v32 - v30) << 10);
        v28 = (v31 - (((v31 >> v32) & 1 | 2) << v32)) >> v30;
      }

      else
      {
        LODWORD(v28) = 0;
        v29 = v25;
      }

      *(v13 + 6) = v29;
      *v13 = v28;
      if (v18 > 5)
      {
        if (v18 > 0x81)
        {
          if (v18 > 0x841)
          {
            if (v18 >> 1 >= 0xC21)
            {
              if (v18 < 0x5842)
              {
                LOWORD(v33) = 22;
              }

              else
              {
                LOWORD(v33) = 23;
              }
            }

            else
            {
              LOWORD(v33) = 21;
            }
          }

          else
          {
            v33 = (__clz(v18 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v34 = (__clz(v18 - 2) ^ 0x1F) - 1;
          v33 = ((v18 - 2) >> v34) + 2 * v34 + 2;
        }
      }

      else
      {
        LOWORD(v33) = v18;
      }

      if (v22 > 9)
      {
        v36 = (__clz(v22 - 70) ^ 0x1F) + 12;
        if (v22 > 0x845)
        {
          LOWORD(v36) = 23;
        }

        v37 = (__clz(v22 - 6) ^ 0x1F) - 1;
        v38 = ((v22 - 6) >> v37) + 2 * v37 + 4;
        if (v22 <= 0x85)
        {
          v35 = v38;
        }

        else
        {
          v35 = v36;
        }
      }

      else
      {
        v35 = v22 - 2;
      }

      v39 = v29 & 0x3FF;
      v40 = v35 & 7 | (8 * (v33 & 7));
      if (v39)
      {
        v41 = 1;
      }

      else
      {
        v41 = v33 > 7u;
      }

      if (v41 || v35 > 0xFu)
      {
        v43 = 3 * (v33 >> 3) + ((v35 & 0xFFF8) >> 3);
        v44 = ((((0x520D40u >> (2 * v43)) & 0xC0) + (v43 << 6)) | v40) + 64;
      }

      else if ((v35 & 0xFFF8) != 0)
      {
        LOWORD(v44) = v40 | 0x40;
      }

      else
      {
        LOWORD(v44) = v35 & 7 | (8 * (v33 & 7));
      }

      *(v13 + 4) = v44;
      if (v23 >= v21 && v25)
      {
        *(a4 + 12) = *(a4 + 8);
        *(a4 + 4) = *a4;
        *a4 = v21;
      }

      *a8 += v18;
      v9 = v20 + v19;
      --v10;
      v13 += 16;
    }

    while (v8 != 0xFFFFFFFFLL);
  }

  *a5 += v45 - v9;
  return result;
}

uint64_t sub_10012A2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10)
{
  v10 = __chkstk_darwin(a1);
  v168 = v13;
  v14 = v12;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v11;
  v22 = v10;
  v169 = *(v12 + 16);
  v23 = *(v12 + 8);
  if (*(v12 + 4) >= 11)
  {
    v24 = 325;
  }

  else
  {
    v24 = 150;
  }

  memset(v175, 0, 512);
  if (v11 >= 0x7F)
  {
    v25 = v11 - 127;
  }

  else
  {
    v25 = 0;
  }

  *a10 = 0;
  a10[3] = 0;
  sub_10012AD48(v10, v175, v12 + 64, v11);
  result = 0;
  if (!*(v22 + 24))
  {
    v161 = v24;
    v160 = v22;
    v172 = v20;
    sub_10012ADC4(v175, v20, v18, v16);
    v174 = 0;
    v27 = v21;
    v28 = v169;
    if (v21 >= 4)
    {
      v29 = 0;
      v170 = (1 << v23) - 16;
      memset(v173, 0, sizeof(v173));
      *v171 = v21;
      *v164 = v14;
      do
      {
        v30 = v29 + v172;
        if (v29 + v172 >= v170)
        {
          v31 = v170;
        }

        else
        {
          v31 = v29 + v172;
        }

        v32 = v30 + v28;
        if (v32 >= v170)
        {
          v32 = v170;
        }

        v162 = v32;
        v33 = v27 - v29;
        v34 = 16;
        if (*(v14 + 4) == 11)
        {
          v34 = 64;
        }

        v35 = v30 >= v34;
        v36 = v30 - v34;
        if (!v35)
        {
          v36 = 0;
        }

        v37 = v30 - 1;
        v163 = v30 & v16;
        if (v30 - 1 <= v36)
        {
          v39 = v178;
          v40 = 1;
        }

        else
        {
          v38 = (v18 + (v30 & v16));
          v39 = v178;
          v40 = 1;
          do
          {
            if (v30 - v37 > v31)
            {
              break;
            }

            v41 = (v18 + (v37 & v16));
            if (*v38 == *v41 && v38[1] == v41[1])
            {
              if (v33 < 8)
              {
                v46 = 0;
                v47 = (v18 + (v30 & v16));
LABEL_36:
                if ((v33 & 7) != 0)
                {
                  v48 = v33 & 7 | v46;
                  v49 = v33 & 7;
                  while (v41[v46] == *v47)
                  {
                    ++v47;
                    ++v46;
                    if (!--v49)
                    {
                      v46 = v48;
                      break;
                    }
                  }
                }
              }

              else
              {
                v42 = 0;
                v43 = v33 >> 3;
                while (1)
                {
                  v44 = *&v38[v42];
                  v45 = *&v41[v42];
                  if (v44 != v45)
                  {
                    break;
                  }

                  v42 += 8;
                  if (!--v43)
                  {
                    v46 = v33 & 0xFFFFFFFFFFFFFFF8;
                    v47 = &v38[v33 & 0xFFFFFFFFFFFFFFF8];
                    goto LABEL_36;
                  }
                }

                v46 = v42 + (__clz(__rbit64(v45 ^ v44)) >> 3);
              }

              if (v46 > v40)
              {
                *v39 = v30 - v37;
                *(v39++ + 1) = 32 * v46;
                v40 = v46;
              }
            }

            if (--v37 <= v36)
            {
              break;
            }
          }

          while (v40 < 3);
        }

        if (v40 < v33)
        {
          v50 = v18 + v163;
          v51 = (506832829 * *(v18 + v163)) >> 15;
          v52 = *(a9 + 72);
          v54 = *(a9 + 48);
          v53 = *(a9 + 56);
          v55 = *(v53 + 4 * v51);
          if (v33 >= 0x80)
          {
            v56 = 128;
          }

          else
          {
            v56 = v33;
          }

          v165 = v56;
          v166 = *(a9 + 48);
          if (v33 >= 0x80)
          {
            *(v53 + 4 * v51) = v30;
          }

          v57 = 2 * (v54 & v30);
          v58 = v57 | 1;
          if (v30 != v55)
          {
            v139 = 0;
            v140 = 0;
            v141 = 64;
            do
            {
              if (v30 - v55 > v31 || v141 == 0)
              {
                break;
              }

              v143 = v55 & v16;
              if (v140 >= v139)
              {
                v144 = v139;
              }

              else
              {
                v144 = v140;
              }

              v145 = v50 + v144;
              v146 = v18 + v143;
              v147 = (v18 + v143 + v144);
              v148 = v33 - v144;
              if (v33 - v144 < 8)
              {
                v151 = 0;
LABEL_187:
                v156 = v148 & 7;
                if (v156)
                {
                  v157 = v151 | v156;
                  while (*(v145 + v151) == *v147)
                  {
                    ++v147;
                    ++v151;
                    if (!--v156)
                    {
                      v151 = v157;
                      break;
                    }
                  }
                }
              }

              else
              {
                v149 = 0;
                v150 = v148 >> 3;
                v151 = v148 & 0xFFFFFFFFFFFFFFF8;
                while (1)
                {
                  v152 = *&v147[v149];
                  v153 = *(v145 + v149);
                  if (v152 != v153)
                  {
                    break;
                  }

                  v149 += 8;
                  if (!--v150)
                  {
                    v147 += v148 & 0xFFFFFFFFFFFFFFF8;
                    goto LABEL_187;
                  }
                }

                v151 = v149 + (__clz(__rbit64(v153 ^ v152)) >> 3);
              }

              v154 = v151 + v144;
              if (v39 && v154 > v40)
              {
                *v39 = v30 - v55;
                *(v39++ + 1) = 32 * v154;
                v40 = v154;
              }

              if (v154 >= v165)
              {
                if (v33 < 0x80)
                {
                  goto LABEL_52;
                }

                v158 = (v52 + 8 * (v55 & v166));
                *(v52 + 4 * v57) = *v158;
                v59 = v158[1];
                goto LABEL_51;
              }

              if (*(v50 + v154) <= *(v146 + v154))
              {
                if (v33 >= 0x80)
                {
                  *(v52 + 4 * v58) = v55;
                }

                v58 = 2 * (v55 & v166);
                v139 = v154;
                v155 = v58;
              }

              else
              {
                if (v33 >= 0x80)
                {
                  *(v52 + 4 * v57) = v55;
                }

                v57 = (2 * (v55 & v166)) | 1;
                v140 = v154;
                v155 = v57;
              }

              v55 = *(v52 + 4 * v155);
              --v141;
            }

            while (v30 != v55);
          }

          if (v33 >= 0x80)
          {
            v59 = *(a9 + 64);
            *(v52 + 4 * v57) = v59;
LABEL_51:
            *(v52 + 4 * v58) = v59;
          }
        }

LABEL_52:
        memset_pattern16(__b, &unk_10037CB50, 0x98uLL);
        if (v40 + 1 > 4)
        {
          v60 = v40 + 1;
        }

        else
        {
          v60 = 4;
        }

        if (sub_100167AA0((*v164 + 88), (v18 + v163), v60, v33, __b) && (v33 >= 0x25 ? (v61 = 37) : (v61 = v33), v60 <= v61))
        {
          v63 = v61 + 1;
          v64 = 32 * v60;
          v62 = *v164;
          do
          {
            v65 = __b[v60];
            if (v65 <= 0xFFFFFFE)
            {
              v66 = v162 + 1 + (v65 >> 5);
              if (v66 <= *(*v164 + 80))
              {
                v67 = v65 & 0x1F;
                if (v60 == v67)
                {
                  LODWORD(v67) = 0;
                }

                *v39 = v66;
                *(v39++ + 1) = v64 + v67;
              }
            }

            ++v60;
            v64 += 32;
          }

          while (v63 != v60);
        }

        else
        {
          v62 = *v164;
        }

        if (v39 == v178)
        {
          v69 = 0;
          v68 = *v171;
        }

        else
        {
          v68 = *v171;
          if (v161 >= *(v39 - 1) >> 5)
          {
            v69 = v39 - v178;
          }

          else
          {
            v178[0] = *(v39 - 1);
            v69 = 1;
          }
        }

        v70 = sub_10012AEE0(v68, v172, v29, v18, v16, v62, v170, v168, v69, v178, v175, v173, a10);
        if (v70 >= 0x4000)
        {
          v71 = v70;
        }

        else
        {
          v71 = 0;
        }

        if (v69 == 1)
        {
          v72 = HIDWORD(v178[0]) >> 5;
          if (v72 <= v71)
          {
            v72 = v71;
          }

          if (v161 < HIDWORD(v178[0]) >> 5)
          {
            v71 = v72;
          }
        }

        if (v71 < 2)
        {
          v27 = *v171;
        }

        else
        {
          v167 = v71;
          v73 = v25 + v172;
          if (v71 + v30 < v25 + v172)
          {
            v73 = v71 + v30;
          }

          v74 = v73 - 63;
          if (v30 + 64 > v73)
          {
            v74 = v30 + 1;
          }

          if (v30 + 513 <= v74)
          {
            v75 = v30 + 1;
            if (v30 + 1 < v74)
            {
              v76 = *(a9 + 48);
              v77 = *(a9 + 56);
              v78 = *(a9 + 72);
              do
              {
                v79 = (v18 + (v75 & v16));
                v80 = (506832829 * *v79) >> 15;
                v81 = *(v77 + 4 * v80);
                v82 = 2 * (v76 & v75);
                v83 = v82 | 1;
                *(v77 + 4 * v80) = v75;
                if (v75 != v81)
                {
                  v85 = 0;
                  v86 = 0;
                  v87 = 64;
                  do
                  {
                    if (v75 - v81 > v76 - 15 || v87 == 0)
                    {
                      break;
                    }

                    v89 = v81 & v16;
                    if (v86 >= v85)
                    {
                      v90 = v85;
                    }

                    else
                    {
                      v90 = v86;
                    }

                    v91 = v79 + v90;
                    v92 = v18 + v89;
                    v93 = (v18 + v89 + v90);
                    v94 = 128 - v90;
                    if (128 - v90 < 8)
                    {
                      v97 = 0;
LABEL_114:
                      v103 = v94 & 7;
                      if (v103)
                      {
                        v104 = v97 | v103;
                        while (v91[v97] == *v93)
                        {
                          ++v93;
                          ++v97;
                          if (!--v103)
                          {
                            v97 = v104;
                            break;
                          }
                        }
                      }
                    }

                    else
                    {
                      v95 = 0;
                      v96 = v94 >> 3;
                      v97 = v94 & 0xFFFFFFFFFFFFFFF8;
                      while (1)
                      {
                        v98 = *&v93[v95];
                        v99 = *&v91[v95];
                        if (v98 != v99)
                        {
                          break;
                        }

                        v95 += 8;
                        if (!--v96)
                        {
                          v93 += v94 & 0xFFFFFFFFFFFFFFF8;
                          goto LABEL_114;
                        }
                      }

                      v97 = v95 + (__clz(__rbit64(v99 ^ v98)) >> 3);
                    }

                    v100 = v97 + v90;
                    if (v100 >= 0x80)
                    {
                      v105 = (v78 + 8 * (v81 & v76));
                      *(v78 + 4 * v82) = *v105;
                      v84 = v105[1];
                      goto LABEL_91;
                    }

                    v101 = *(v92 + v100);
                    v102 = 2 * (v81 & v76);
                    if (*(v79 + v100) <= v101)
                    {
                      *(v78 + 4 * v83) = v81;
                      v83 = 2 * (v81 & v76);
                      v85 = v100;
                    }

                    else
                    {
                      *(v78 + 4 * v82) = v81;
                      v82 = v102 | 1;
                      v86 = v100;
                      v102 |= 1uLL;
                    }

                    v81 = *(v78 + 4 * v102);
                    --v87;
                  }

                  while (v75 != v81);
                }

                v84 = *(a9 + 64);
                *(v78 + 4 * v82) = v84;
LABEL_91:
                *(v78 + 4 * v83) = v84;
                v75 += 8;
              }

              while (v75 < v74);
            }
          }

          if (v74 < v73)
          {
            v106 = *(a9 + 48);
            v107 = *(a9 + 56);
            v108 = *(a9 + 72);
            do
            {
              v109 = (v18 + (v74 & v16));
              v110 = (506832829 * *v109) >> 15;
              v111 = *(v107 + 4 * v110);
              v112 = 2 * (v106 & v74);
              v113 = v112 | 1;
              *(v107 + 4 * v110) = v74;
              if (v74 != v111)
              {
                v115 = 0;
                v116 = 0;
                v117 = 64;
                do
                {
                  if (v74 - v111 > v106 - 15 || v117 == 0)
                  {
                    break;
                  }

                  v119 = v111 & v16;
                  if (v116 >= v115)
                  {
                    v120 = v115;
                  }

                  else
                  {
                    v120 = v116;
                  }

                  v121 = v109 + v120;
                  v122 = v18 + v119;
                  v123 = (v18 + v119 + v120);
                  v124 = 128 - v120;
                  if (128 - v120 < 8)
                  {
                    v127 = 0;
LABEL_148:
                    v133 = v124 & 7;
                    if (v133)
                    {
                      v134 = v127 | v133;
                      while (v121[v127] == *v123)
                      {
                        ++v123;
                        ++v127;
                        if (!--v133)
                        {
                          v127 = v134;
                          break;
                        }
                      }
                    }
                  }

                  else
                  {
                    v125 = 0;
                    v126 = v124 >> 3;
                    v127 = v124 & 0xFFFFFFFFFFFFFFF8;
                    while (1)
                    {
                      v128 = *&v123[v125];
                      v129 = *&v121[v125];
                      if (v128 != v129)
                      {
                        break;
                      }

                      v125 += 8;
                      if (!--v126)
                      {
                        v123 += v124 & 0xFFFFFFFFFFFFFFF8;
                        goto LABEL_148;
                      }
                    }

                    v127 = v125 + (__clz(__rbit64(v129 ^ v128)) >> 3);
                  }

                  v130 = v127 + v120;
                  if (v130 >= 0x80)
                  {
                    v135 = (v108 + 8 * (v111 & v106));
                    *(v108 + 4 * v112) = *v135;
                    v114 = v135[1];
                    goto LABEL_125;
                  }

                  v131 = *(v122 + v130);
                  v132 = 2 * (v111 & v106);
                  if (*(v109 + v130) <= v131)
                  {
                    *(v108 + 4 * v113) = v111;
                    v113 = 2 * (v111 & v106);
                    v115 = v130;
                  }

                  else
                  {
                    *(v108 + 4 * v112) = v111;
                    v112 = v132 | 1;
                    v116 = v130;
                    v132 |= 1uLL;
                  }

                  v111 = *(v108 + 4 * v132);
                  --v117;
                }

                while (v74 != v111);
              }

              v114 = *(a9 + 64);
              *(v108 + 4 * v112) = v114;
LABEL_125:
              *(v108 + 4 * v113) = v114;
              ++v74;
            }

            while (v74 < v73);
          }

          v136 = v167 - 1;
          v137 = v29 + 4;
          v27 = *v171;
          do
          {
            v29 = v137 - 3;
            if (v137 >= v27)
            {
              break;
            }

            sub_10012B610((v169 + v172), v137 - 3, v170, v168, v175, v173, a10);
            v27 = *v171;
            ++v137;
            --v136;
          }

          while (v136);
        }

        v14 = *v164;
        v28 = v169;
        v138 = v29 + 4;
        ++v29;
      }

      while (v138 < v27);
    }

    v159 = v27;
    sub_100166DB4(v160, v177);
    sub_100166DB4(v160, v176);
    return sub_10012B7B4(v159, a10);
  }

  return result;
}

uint64_t sub_10012AD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 2848) = a4;
  if (a4 == -2)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_100166C7C(a1);
  }

  *(a2 + 2832) = v7;
  v8 = *(a3 + 12);
  if (v8)
  {
    result = sub_100166C7C(a1);
    v8 = *(a3 + 12);
  }

  else
  {
    result = 0;
  }

  *(a2 + 2816) = result;
  *(a2 + 2824) = v8;
  return result;
}

float sub_10012ADC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 2832);
  v6 = *(a1 + 2816);
  v7 = *(a1 + 2848);
  v8 = (v5 + 1);
  sub_100170CFC(a2);
  *v5 = 0;
  if (v7)
  {
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v11 = v10 + *v8;
      v12 = v9 + v11;
      *v8++ = v9 + v11;
      v10 = v11 - ((v9 + v11) - v9);
      v9 = v12;
      --v7;
    }

    while (v7);
  }

  for (i = 0; i != 704; ++i)
  {
    if (i > 0xF4)
    {
      v14 = log2((i + 11));
    }

    else
    {
      v14 = dbl_1003EDA70[i + 11];
    }

    v15 = v14;
    *(a1 + 4 * i) = v15;
  }

  v16 = *(a1 + 2824);
  if (v16)
  {
    v17 = 20;
    do
    {
      if (v17 > 0xFFuLL)
      {
        v18 = log2(v17);
      }

      else
      {
        v18 = dbl_1003EDA70[v17];
      }

      v19 = v18;
      *v6++ = v19;
      ++v17;
      --v16;
    }

    while (v16);
  }

  result = 3.45943165;
  *(a1 + 2840) = 3.45943165;
  return result;
}

unint64_t sub_10012AEE0(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, void *__src, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = a3;
  v16 = *(a6 + 16);
  v17 = a3 + a2;
  v106 = (a3 + a2) & a5;
  if (v16 + a3 + a2 >= a7)
  {
    v18 = a7;
  }

  else
  {
    v18 = v16 + a3 + a2;
  }

  v107 = a1 - a3;
  v100 = *(a6 + 4);
  if (v100 <= 10)
  {
    v19 = 150;
  }

  else
  {
    v19 = 325;
  }

  sub_10012B610((v16 + a2), a3, a7, __src, a11, a12, a13);
  v20 = a13 + 16 * v15;
  if (v15 + 2 <= a1)
  {
    v22 = a4;
    v23 = a12;
    v24 = a12 + 32 * (-*(a12 + 256) & 7);
    v25 = (*(v24 + 28) + *(a11 + 2840)) + (*(*(a11 + 2832) + 4 * v15) - *(*(a11 + 2832) + 4 * *v24));
    v26 = (v20 + 44);
    v21 = 2;
    v27 = 4;
    v28 = 10;
    do
    {
      if (*v26 > v25)
      {
        break;
      }

      if (++v21 == v28)
      {
        v25 = v25 + 1.0;
        v29 = v27;
      }

      else
      {
        v29 = 0;
      }

      v27 <<= v21 == v28;
      v28 += v29;
      v26 += 4;
    }

    while (v15 + v21 <= a1);
  }

  else
  {
    v21 = 2;
    v22 = a4;
    v23 = a12;
  }

  result = 0;
  v31 = 0;
  v32 = v21 - 1;
  if (v18 >= v17)
  {
    v33 = v17;
  }

  else
  {
    v33 = v18;
  }

  v103 = v33;
  v98 = (v22 + v106);
  v96 = v22 + v106 + (v107 & 0xFFFFFFFFFFFFFFF8);
  v97 = v20 + 28;
  v105 = v20 + 12;
  v99 = v15;
  while (1)
  {
    v34 = *(v23 + 256);
    v35 = 8;
    if (v34 < 8)
    {
      v35 = *(v23 + 256);
    }

    if (v31 >= v35)
    {
      return result;
    }

    v36 = v23 + 32 * ((v31 - v34) & 7);
    v37 = v15 - *v36;
    v102 = v31;
    if (v37 > 5)
    {
      if (v37 > 0x81)
      {
        if (v37 < 0x5842)
        {
          v40 = 22;
        }

        else
        {
          v40 = 23;
        }

        if (v37 >> 1 >= 0xC21)
        {
          v41 = v40;
        }

        else
        {
          v41 = 21;
        }

        v42 = (__clz(v37 - 66) ^ 0x1F) + 10;
        if (v37 <= 0x841)
        {
          LOWORD(v38) = v42;
        }

        else
        {
          LOWORD(v38) = v41;
        }
      }

      else
      {
        v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
        LODWORD(v38) = ((v37 - 2) >> v39) + 2 * v39 + 2;
      }
    }

    else
    {
      v38 = v15 - *v36;
    }

    v43 = (*(v36 + 24) + dword_10037C994[v38]) + (*(*(a11 + 2832) + 4 * v15) - **(a11 + 2832));
    if (v32 < v107)
    {
      v44 = 0;
      v45 = v36 + 8;
      while (1)
      {
        if (v32 + v106 > a5)
        {
          goto LABEL_92;
        }

        v46 = dword_10037CB04[v44] + *(v45 + 4 * dword_10037CAC4[v44]);
        v47 = v17 - v46;
        v48 = v103 < v46 || v47 >= v17;
        v49 = v47 & a5;
        v50 = v49 + v32;
        v51 = v48 || v50 > a5;
        if (!v51 && *(a4 + v32 + v106) == *(a4 + v50))
        {
          v52 = a4 + v49;
          if (v107 < 8)
          {
            v57 = 0;
            v58 = v98;
LABEL_87:
            v73 = v107 & 7;
            if ((v107 & 7) != 0)
            {
              v74 = v107 & 7 | v57;
              while (*(v52 + v57) == *v58)
              {
                ++v58;
                ++v57;
                if (!--v73)
                {
                  v57 = v74;
                  break;
                }
              }
            }
          }

          else
          {
            v53 = 0;
            v54 = v107 >> 3;
            while (1)
            {
              v55 = *&v98[v53];
              v56 = *(v52 + v53);
              if (v55 != v56)
              {
                break;
              }

              v53 += 8;
              if (!--v54)
              {
                v58 = v96;
                v57 = v107 & 0xFFFFFFFFFFFFFFF8;
                goto LABEL_87;
              }
            }

            v57 = v53 + (__clz(__rbit64(v56 ^ v55)) >> 3);
          }

          if (v32 + 1 <= v57)
          {
            break;
          }
        }

LABEL_46:
        if (v44 <= 0xE)
        {
          ++v44;
          if (v32 < v107)
          {
            continue;
          }
        }

        goto LABEL_92;
      }

      v59 = v43 + *(*(a11 + 2816) + 4 * v44);
      v61 = v38 < 8u && v44 == 0;
      v62 = (v97 + 16 * v32);
      v63 = !v61;
      v64 = v32;
      while (2)
      {
        v65 = v64 + 1;
        if (v64 + 1 <= 9)
        {
          LOWORD(v66) = v64 - 1;
          goto LABEL_70;
        }

        if (v65 <= 0x85)
        {
          v67 = (__clz(v64 - 5) ^ 0x1F) - 1;
          v66 = ((v64 - 5) >> v67) + 2 * v67 + 4;
          goto LABEL_70;
        }

        if (v65 > 0x845)
        {
          LOWORD(v66) = 23;
          v68 = (8 * (v38 & 7)) | 7;
        }

        else
        {
          v66 = (__clz(v64 - 69) ^ 0x1F) + 12;
LABEL_70:
          v68 = v66 & 7 | (8 * (v38 & 7));
          if (v66 > 0xFu)
          {
            v69 = 1;
          }

          else
          {
            v69 = v63;
          }

          if ((v69 & 1) == 0)
          {
            if ((v66 & 0xFFF8) != 0)
            {
              LOWORD(v68) = v68 | 0x40;
            }

LABEL_78:
            if ((v68 & 0xFF80) != 0)
            {
              v70 = v59;
            }

            else
            {
              v70 = v43;
            }

            v71 = *(a11 + 4 * v68) + (v70 + dword_10037CA54[v66]);
            if (v71 < *v62)
            {
              *(v62 - 3) = (v64 + 1) | 0x12000000;
              *(v62 - 2) = v46;
              *(v62 - 1) = ((v44 << 27) + 0x8000000) | v37;
              *v62 = v71;
              if (result <= v65)
              {
                result = v64 + 1;
              }
            }

            v32 = v64 + 1;
            v72 = v64 + 2;
            v62 += 4;
            ++v64;
            if (v72 > v57)
            {
              goto LABEL_46;
            }

            continue;
          }
        }

        break;
      }

      v68 = ((((0x520D40u >> (2 * (3 * (v38 >> 3) + ((v66 & 0xFFF8) >> 3)))) & 0xC0) + ((3 * (v38 >> 3) + ((v66 & 0xFFF8) >> 3)) << 6)) | v68) + 64;
      goto LABEL_78;
    }

LABEL_92:
    if (v102 <= 1 && a9)
    {
      v75 = 0;
      v76 = v21;
      do
      {
        v77 = *(a10 + 8 * v75);
        v78 = v77 + 15;
        v79 = *(a6 + 68);
        v80 = v79 + 16;
        if (v79 + 16 <= v78)
        {
          v81 = *(a6 + 64);
          v82 = v77 + ~v79 + (4 << v81);
          v83 = __clz(v82);
          v78 = ((v82 & ~(-1 << v81)) + v80 + ((((v82 >> ((v83 ^ 0x1F) - 1)) & 1 | (2 * ((v83 ^ 0x1F) - 1 - v81))) - 2) << v81)) | (((v83 ^ 0x1F) - 1 - v81) << 10);
        }

        v84 = v77 >> 37;
        if ((v77 >> 37 > v19 || v18 < v77) && v76 < v84)
        {
          v76 = v77 >> 37;
        }

        if (v76 <= v77 >> 37)
        {
          v87 = *(*(a11 + 2816) + 4 * (v78 & 0x3FF)) + (v43 + (v78 >> 10));
          if ((v77 & 0x1F00000000) != 0)
          {
            v88 = HIDWORD(v77) & 0x1F;
          }

          else
          {
            v88 = v77 >> 37;
          }

          v89 = v84 + 1;
          v90 = (v105 + 16 * v76);
          v91 = (v76 << 25) + 301989888;
          do
          {
            if (v18 >= v77)
            {
              v92 = v76;
            }

            else
            {
              v92 = v88;
            }

            if (v92 > 9)
            {
              v93 = (__clz(v92 - 70) ^ 0x1F) + 12;
              if (v92 > 0x845)
              {
                LOWORD(v93) = 23;
              }

              v94 = (__clz(v92 - 6) ^ 0x1F) - 1;
              if (v92 <= 0x85)
              {
                LOWORD(v93) = ((v92 - 6) >> v94) + 2 * v94 + 4;
              }
            }

            else
            {
              LOWORD(v93) = v92 - 2;
            }

            v95 = *(a11 + 4 * (((((0x520D40u >> (2 * (3 * (v38 >> 3) + ((v93 & 0xFFF8) >> 3)))) & 0xC0) + ((3 * (v38 >> 3) + ((v93 & 0xFFF8) >> 3)) << 6)) | v93 & 7 | (8 * (v38 & 7))) + 64)) + (v87 + dword_10037CA54[v93]);
            if (v95 < *v90)
            {
              *(v90 - 3) = (v91 - (v92 << 25)) | v76;
              *(v90 - 2) = v77;
              *(v90 - 1) = v37;
              *v90 = v95;
              if (result <= v76)
              {
                result = v76;
              }
            }

            ++v76;
            v90 += 4;
            v91 += 0x2000000;
          }

          while (v89 != v76);
          v76 = v89;
        }

        ++v75;
      }

      while (v75 != a9);
    }

    if (v100 >= 11)
    {
      v31 = v102 + 1;
      v32 = v21 - 1;
      v15 = v99;
      v23 = a12;
      if (v102 < 4)
      {
        continue;
      }
    }

    return result;
  }
}

void *sub_10012B610(void *result, unint64_t a2, unint64_t a3, void *__src, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (a7 + 16 * a2);
  v9 = v8 + 3;
  v10 = *(v8 + 3);
  if (a2)
  {
    v11 = v8[1];
    v12 = *v8 & 0x1FFFFFF;
    v13 = v8[2];
    if (v11 > a3 || v11 + v12 > result + a2)
    {
      goto LABEL_10;
    }

    v15 = v11 + 15;
    if (v13 >> 27)
    {
      v15 = (v13 >> 27) - 1;
    }

    if (!v15)
    {
LABEL_10:
      v16 = *(a7 + 16 * (a2 - ((v13 & 0x7FFFFFF) + v12)) + 12);
    }

    else
    {
      v16 = a2;
    }
  }

  else
  {
    v16 = 0;
  }

  *v9 = v16;
  v17 = *(*(a5 + 2832) + 4 * a2) - **(a5 + 2832);
  if (v10 <= v17)
  {
    *&v37 = 0;
    v36 = a2;
    *(&v37 + 2) = v10 - v17;
    *(&v37 + 3) = v10;
    v18 = 0;
    if (!v16)
    {
      goto LABEL_17;
    }

    do
    {
      v19 = v18;
      v20 = (a7 + 16 * v16);
      v22 = v20[1];
      v21 = v20[2];
      v23 = *v20;
      v18 = v19 + 1;
      *(&v36 + v19 + 2) = v22;
      if (v19 > 2)
      {
        break;
      }

      v16 = *(a7 + 16 * (v16 - ((v23 & 0x1FFFFFF) + (v21 & 0x7FFFFFFu))) + 12);
    }

    while (v16);
    if (v19 <= 2)
    {
LABEL_17:
      result = memcpy(&v36 + 4 * v18 + 8, __src, 16 - 4 * v18);
    }

    v24 = *(a6 + 256);
    v25 = v24 + 1;
    *(a6 + 256) = v24 + 1;
    v26 = ~v24 & 7;
    if ((v24 + 1) < 8)
    {
      v27 = v24 + 1;
    }

    else
    {
      v27 = 8;
    }

    v28 = v37;
    v29 = (a6 + 32 * v26);
    *v29 = v36;
    v29[1] = v28;
    if (v25 >= 2)
    {
      v30 = v27 - 1;
      do
      {
        v31 = (a6 + 32 * (v26 & 7));
        v32 = (a6 + 32 * ((v26 + 1) & 7));
        if (v31[6] > v32[6])
        {
          v34 = *v31;
          v33 = *(v31 + 1);
          v35 = *(v32 + 1);
          *v31 = *v32;
          *(v31 + 1) = v35;
          *v32 = v34;
          *(v32 + 1) = v33;
        }

        LOBYTE(v26) = v26 + 1;
        --v30;
      }

      while (v30);
    }
  }

  return result;
}

uint64_t sub_10012B7B4(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 16 * a1);
  if ((v2[2] & 0x7FFFFFF) == 0)
  {
    do
    {
      if (*v2 != 1)
      {
        break;
      }

      --a1;
      v3 = *(v2 - 2);
      v2 -= 4;
    }

    while ((v3 & 0x7FFFFFF) == 0);
  }

  v2[3] = -1;
  for (i = 0; a1; *(a2 + 16 * a1 + 12) = v5)
  {
    v5 = (*(a2 + 16 * a1 + 8) & 0x7FFFFFF) + (*(a2 + 16 * a1) & 0x1FFFFFFu);
    ++i;
    a1 -= v5;
  }

  return i;
}

uint64_t sub_10012B82C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13)
{
  v18 = result;
  v19 = a2 + 1;
  if (a2 == -1)
  {
    if (*(result + 24))
    {
      return result;
    }

    v20 = 0;
  }

  else
  {
    result = sub_100166C7C(result);
    if (*(v18 + 24))
    {
      return result;
    }

    v20 = result;
    v21 = result + 12;
    do
    {
      *(v21 - 12) = 1;
      *(v21 - 4) = 0x7EFFC99E00000000;
      v21 += 16;
      --v19;
    }

    while (v19);
  }

  result = sub_10012A2B8(v18, a2, a3, a4, a5, a6, a7, a9, a8, v20);
  *a12 += result;
  if (!*(v18 + 24))
  {
    sub_100129FB4(a2, a3, v20, a9, a10, a7, a11, a13);

    return sub_100166DB4(v18, v20);
  }

  return result;
}

void sub_10012B98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, void *a10, uint64_t a11, uint64_t *a12, void *a13)
{
  v13 = __chkstk_darwin(a1);
  v233 = v16;
  v237 = v17;
  v19 = v18;
  v240 = v20;
  v21 = v14;
  v22 = v13;
  v225 = v13;
  v238 = v15;
  v239 = v19;
  v241 = v14;
  if (!v14)
  {
    v272 = 0u;
    v273 = 0u;
    v270 = 0u;
    v271 = 0u;
    v268 = 0u;
    v269 = 0u;
    v266 = 0u;
    v267 = 0u;
    v264 = 0u;
    v265 = 0u;
    v262 = 0u;
    v263 = 0u;
    v260 = 0u;
    v261 = 0u;
    v258 = 0u;
    v259 = 0u;
    v256 = 0u;
    v257 = 0u;
    v254 = 0u;
    v255 = 0u;
    v252 = 0u;
    v253 = 0u;
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    v244 = 0u;
    v245 = 0u;
    v242 = 0u;
    v243 = 0u;
    v223 = (v13 + 24);
    if (*(v13 + 24))
    {
      return;
    }

    v222 = 0;
    v235 = 0;
    __src = 0;
    goto LABEL_201;
  }

  v221 = *(v15 + 16);
  v23 = *(v15 + 8);
  v24 = 4 * v14;
  v25 = sub_100166C7C(v13);
  v26 = v24;
  v21 = v241;
  v235 = v25;
  v272 = 0u;
  v273 = 0u;
  if (v241 >= 0x7F)
  {
    v27 = v241 - 127;
  }

  else
  {
    v27 = 0;
  }

  v270 = 0uLL;
  v271 = 0uLL;
  v268 = 0uLL;
  v269 = 0uLL;
  v266 = 0uLL;
  v267 = 0uLL;
  v264 = 0uLL;
  v265 = 0uLL;
  v262 = 0uLL;
  v263 = 0uLL;
  v260 = 0uLL;
  v261 = 0uLL;
  v258 = 0uLL;
  v259 = 0uLL;
  v256 = 0uLL;
  v257 = 0uLL;
  v254 = 0uLL;
  v255 = 0uLL;
  v252 = 0uLL;
  v253 = 0uLL;
  v250 = 0uLL;
  v251 = 0uLL;
  v248 = 0uLL;
  v249 = 0uLL;
  v246 = 0uLL;
  v247 = 0uLL;
  v244 = 0uLL;
  v245 = 0uLL;
  v242 = 0uLL;
  v243 = 0uLL;
  if (v26)
  {
    v28 = v26;
    v29 = sub_100166C7C(v22);
    v26 = v28;
    v21 = v241;
    __src = v29;
  }

  else
  {
    __src = 0;
  }

  v223 = (v22 + 24);
  v30 = v237;
  v15 = v238;
  if (*(v22 + 24))
  {
    return;
  }

  if (v21 < 4)
  {
    v222 = 0;
LABEL_201:
    v164 = a12;
    v163 = a13;
    v165 = a10;
    v220 = *a13;
    v166 = *a10;
    v279 = *a9;
    v226 = v166;
    v228 = *a12;
    v167 = v21 + 1;
    if (v21 == -1)
    {
      v168 = 0;
    }

    else
    {
      v169 = sub_100166C7C(v225);
      v21 = v241;
      v15 = v238;
      v168 = v169;
    }

    if (!*v223)
    {
      sub_10012AD48(v225, &v242, v15 + 64, v21);
      if (!*(v225 + 24))
      {
        v170 = a11;
        v171 = 1;
        v224 = v167;
        do
        {
          v172 = v171;
          if (v167)
          {
            v173 = v168 + 3;
            v174 = v167;
            do
            {
              *(v173 - 3) = 1;
              *(v173 - 1) = 0x7EFFC99E00000000;
              v173 += 4;
              --v174;
            }

            while (v174);
          }

          v230 = v172;
          if (v172)
          {
            sub_10012ADC4(&v242, v240, v19, v237);
            v175 = v237;
            v176 = v238;
          }

          else
          {
            v177 = *v164;
            bzero(v284, 0x400uLL);
            bzero(v282, 0xB00uLL);
            bzero(v281, 0x880uLL);
            if (v177 != v228)
            {
              v178 = 0;
              v179 = v240 - v226;
              do
              {
                v180 = (v170 + 16 * v178);
                v181 = *v180;
                v182 = v180[1];
                v183 = *(v180 + 7);
                v184 = *(v180 + 6);
                ++*(v282 + v184);
                if (v184 >= 0x80)
                {
                  ++v281[v183 & 0x3FF];
                }

                if (v181)
                {
                  v185 = v179;
                  v186 = v181;
                  do
                  {
                    ++v284[*(v19 + (v185++ & v237))];
                    --v186;
                  }

                  while (v186);
                }

                v179 += v181 + (v182 & 0x1FFFFFF);
                ++v178;
              }

              while (v178 != v177 - v228);
            }

            sub_10012C98C(v284, 256, 1, v280);
            sub_10012C98C(v282, 704, 0, &v242);
            sub_10012C98C(v281, v275, 0, v274);
            v187 = 0;
            v188 = 1.7e38;
            do
            {
              if (v188 >= *(&v242 + v187))
              {
                v188 = *(&v242 + v187);
              }

              v187 += 4;
            }

            while (v187 != 2816);
            v277 = v188;
            v189 = v276;
            v190 = v278;
            *v276 = 0;
            v175 = v237;
            v176 = v238;
            if (v190)
            {
              v191 = (v189 + 1);
              v192 = 0.0;
              v193 = v240;
              v194 = 0.0;
              do
              {
                v195 = v194 + v280[*(v19 + (v193 & v237))];
                v196 = v192 + v195;
                *v191++ = v192 + v195;
                v194 = v195 - ((v192 + v195) - v192);
                ++v193;
                v192 = v196;
                --v190;
              }

              while (v190);
            }
          }

          *v164 = v228;
          *v163 = v220;
          *v165 = v226;
          *a9 = v279;
          v197 = *(v176 + 16);
          v198 = *(v176 + 8);
          v199 = 325;
          if (*(v176 + 4) < 11)
          {
            v199 = 150;
          }

          v234 = v199;
          *v168 = 0;
          v168[3] = 0;
          v283 = 0;
          v200 = v241;
          if (v222)
          {
            v201 = 0;
            v202 = 0;
            v203 = (1 << v198) - 16;
            memset(v282, 0, sizeof(v282));
            do
            {
              v204 = sub_10012AEE0(v200, v240, v201, v239, v175, v176, v203, a9, *(v235 + 4 * v201), &__src[2 * v202], &v242, v282, v168);
              if (v204 >= 0x4000)
              {
                v205 = v204;
              }

              else
              {
                v205 = 0;
              }

              v206 = *(v235 + 4 * v201);
              v202 += v206;
              if (v206 == 1)
              {
                v207 = __src[2 * v202 - 1];
                v208 = v207 >> 5;
                if (v207 >> 5 <= v205)
                {
                  v208 = v205;
                }

                if (v234 < v207 >> 5)
                {
                  v205 = v208;
                }
              }

              if (v205 >= 2)
              {
                v209 = v205 - 1;
                v210 = v201 + 4;
                v211 = (v235 + 4 + 4 * v201);
                v200 = v241;
                do
                {
                  v201 = v210 - 3;
                  if (v210 >= v200)
                  {
                    break;
                  }

                  sub_10012B610((v197 + v240), v210 - 3, v203, a9, &v242, v282, v168);
                  v200 = v241;
                  v212 = *v211++;
                  v202 += v212;
                  ++v210;
                  --v209;
                }

                while (v209);
              }

              else
              {
                v200 = v241;
              }

              v213 = v201 + 4;
              ++v201;
              v175 = v237;
              v176 = v238;
            }

            while (v213 < v200);
          }

          v214 = v176;
          v215 = v200;
          v165 = a10;
          v164 = a12;
          *a12 += sub_10012B7B4(v200, v168);
          v216 = v215;
          v170 = a11;
          v163 = a13;
          sub_100129FB4(v216, v240, v168, a9, a10, v214, a11, a13);
          v171 = 0;
          v19 = v239;
          v167 = v224;
        }

        while ((v230 & 1) != 0);
        sub_100166DB4(v225, v276);
        v276 = 0;
        sub_100166DB4(v225, v274);
        v274 = 0;
        sub_100166DB4(v225, v168);
        sub_100166DB4(v225, __src);
        sub_100166DB4(v225, v235);
      }
    }

    return;
  }

  v232 = 0;
  v31 = 0;
  v217 = v27 + v240;
  v218 = (1 << v23) - 16;
  while (1)
  {
    v32 = v31 + v240;
    if (v31 + v240 >= v218)
    {
      v33 = v218;
    }

    else
    {
      v33 = v31 + v240;
    }

    if (v32 + v221 >= v218)
    {
      v34 = v218;
    }

    else
    {
      v34 = v32 + v221;
    }

    if (v26 < v232 + 128)
    {
      v35 = v31;
      v36 = v26;
      if (!v26)
      {
        v26 = v232 + 128;
      }

      do
      {
        v37 = v26;
        v26 *= 2;
      }

      while (v37 < v232 + 128);
      v38 = sub_100166C7C(v225);
      v39 = v38;
      if (*(v225 + 24))
      {
        v40 = 1;
      }

      else
      {
        v40 = v36 == 0;
      }

      if (!v40)
      {
        memcpy(v38, __src, 8 * v36);
      }

      sub_100166DB4(v225, __src);
      __src = v39;
      v26 = v37;
      v30 = v237;
      v15 = v238;
      v21 = v241;
      v31 = v35;
    }

    if (*v223)
    {
      break;
    }

    v219 = v34;
    v227 = v26;
    v229 = v31;
    v41 = v21 - v31;
    v42 = 16;
    if (*(v15 + 4) == 11)
    {
      v42 = 64;
    }

    v84 = v32 >= v42;
    v43 = v32 - v42;
    if (!v84)
    {
      v43 = 0;
    }

    v44 = v32 - 1;
    v231 = v32 & v30;
    if (v32 - 1 <= v43)
    {
      v46 = &__src[2 * v232];
      v47 = 1;
    }

    else
    {
      v45 = (v19 + (v32 & v30));
      v46 = &__src[2 * v232];
      v47 = 1;
      do
      {
        if (v32 - v44 > v33)
        {
          break;
        }

        v48 = (v239 + (v44 & v30));
        if (*v45 == *v48 && v45[1] == v48[1])
        {
          if (v41 < 8)
          {
            v53 = 0;
            v54 = v45;
LABEL_51:
            if ((v41 & 7) != 0)
            {
              v55 = v41 & 7 | v53;
              v56 = v41 & 7;
              while (v48[v53] == *v54)
              {
                ++v54;
                ++v53;
                if (!--v56)
                {
                  v53 = v55;
                  break;
                }
              }
            }
          }

          else
          {
            v49 = 0;
            v50 = v41 >> 3;
            while (1)
            {
              v51 = *&v45[v49];
              v52 = *&v48[v49];
              if (v51 != v52)
              {
                break;
              }

              v49 += 8;
              if (!--v50)
              {
                v53 = v41 & 0xFFFFFFFFFFFFFFF8;
                v54 = &v45[v41 & 0xFFFFFFFFFFFFFFF8];
                goto LABEL_51;
              }
            }

            v53 = v49 + (__clz(__rbit64(v52 ^ v51)) >> 3);
          }

          if (v53 > v47)
          {
            *v46 = v32 - v44;
            *(v46 + 1) = 32 * v53;
            v46 += 8;
            v47 = v53;
          }
        }

        if (--v44 <= v43)
        {
          break;
        }
      }

      while (v47 < 3);
    }

    if (v47 < v41)
    {
      v57 = v239 + v231;
      v58 = (506832829 * *(v239 + v231)) >> 15;
      v59 = *(v233 + 72);
      v61 = *(v233 + 48);
      v60 = *(v233 + 56);
      v62 = *(v60 + 4 * v58);
      if (v41 >= 0x80)
      {
        v63 = 128;
      }

      else
      {
        v63 = v41;
      }

      if (v41 >= 0x80)
      {
        *(v60 + 4 * v58) = v32;
      }

      v64 = 2 * (v61 & v32);
      v65 = v64 | 1;
      if (v32 != v62)
      {
        v115 = 0;
        v116 = 0;
        v117 = 64;
        do
        {
          if (v32 - v62 > v33 || v117 == 0)
          {
            break;
          }

          if (v116 >= v115)
          {
            v119 = v115;
          }

          else
          {
            v119 = v116;
          }

          v120 = v57 + v119;
          v121 = v239 + (v62 & v30);
          v122 = (v121 + v119);
          v123 = v41 - v119;
          if (v41 - v119 < 8)
          {
            v126 = 0;
LABEL_162:
            v131 = v123 & 7;
            if (v131)
            {
              v132 = v126 | v131;
              while (*(v120 + v126) == *v122)
              {
                ++v122;
                ++v126;
                if (!--v131)
                {
                  v126 = v132;
                  break;
                }
              }
            }
          }

          else
          {
            v124 = 0;
            v125 = v123 >> 3;
            v126 = v123 & 0xFFFFFFFFFFFFFFF8;
            while (1)
            {
              v127 = *&v122[v124];
              v128 = *(v120 + v124);
              if (v127 != v128)
              {
                break;
              }

              v124 += 8;
              if (!--v125)
              {
                v122 += v123 & 0xFFFFFFFFFFFFFFF8;
                goto LABEL_162;
              }
            }

            v126 = v124 + (__clz(__rbit64(v128 ^ v127)) >> 3);
          }

          v129 = v126 + v119;
          if (v46 && v129 > v47)
          {
            *v46 = v32 - v62;
            *(v46 + 1) = 32 * v129;
            v46 += 8;
            v47 = v129;
          }

          if (v129 >= v63)
          {
            if (v41 < 0x80)
            {
              goto LABEL_67;
            }

            v162 = (v59 + 8 * (v62 & v61));
            *(v59 + 4 * v64) = *v162;
            v66 = v162[1];
            goto LABEL_66;
          }

          if (*(v57 + v129) <= *(v121 + v129))
          {
            if (v41 >= 0x80)
            {
              *(v59 + 4 * v65) = v62;
            }

            v65 = 2 * (v62 & v61);
            v115 = v129;
            v130 = v65;
          }

          else
          {
            if (v41 >= 0x80)
            {
              *(v59 + 4 * v64) = v62;
            }

            v64 = (2 * (v62 & v61)) | 1;
            v116 = v129;
            v130 = v64;
          }

          v62 = *(v59 + 4 * v130);
          --v117;
        }

        while (v32 != v62);
      }

      if (v41 >= 0x80)
      {
        v66 = *(v233 + 64);
        *(v59 + 4 * v64) = v66;
LABEL_66:
        *(v59 + 4 * v65) = v66;
      }
    }

LABEL_67:
    memset_pattern16(v282, &unk_10037CB50, 0x98uLL);
    if (v47 + 1 > 4)
    {
      v67 = v47 + 1;
    }

    else
    {
      v67 = 4;
    }

    if (sub_100167AA0((v238 + 88), (v239 + v231), v67, v41, v282))
    {
      if (v41 >= 0x25)
      {
        v68 = 37;
      }

      else
      {
        v68 = v41;
      }

      v69 = v229;
      v70 = &__src[2 * v232];
      if (v67 <= v68)
      {
        v71 = v68 + 1;
        v72 = 32 * v67;
        v30 = v237;
        v15 = v238;
        do
        {
          v73 = *(v282 + v67);
          if (v73 <= 0xFFFFFFE)
          {
            v74 = v219 + 1 + (v73 >> 5);
            if (v74 <= *(v238 + 80))
            {
              v75 = v73 & 0x1F;
              if (v67 == v75)
              {
                LODWORD(v75) = 0;
              }

              *v46 = v74;
              *(v46 + 1) = v72 + v75;
              v46 += 8;
            }
          }

          ++v67;
          v72 += 32;
        }

        while (v71 != v67);
      }

      else
      {
        v30 = v237;
        v15 = v238;
      }
    }

    else
    {
      v30 = v237;
      v15 = v238;
      v69 = v229;
      v70 = &__src[2 * v232];
    }

    v76 = (v46 - v70) >> 3;
    v77 = (v235 + 4 * v69);
    *v77 = v76;
    if (v46 == v70)
    {
      v19 = v239;
    }

    else
    {
      v78 = v76 + v232;
      v79 = &__src[2 * v76 + 2 * v232];
      v80 = *(v79 - 1);
      v19 = v239;
      if (v80 >> 6 < 0xA3)
      {
        v232 = v78;
      }

      else
      {
        *v70 = *(v79 - 1);
        *v77 = 1;
        v81 = v32 + 1;
        v82 = v32 + (v80 >> 5);
        if (v82 >= v217)
        {
          v82 = v217;
        }

        if (v32 + 64 > v82)
        {
          v83 = v32 + 1;
        }

        else
        {
          v83 = v82 - 63;
        }

        v84 = v32 + 513 > v83 || v81 >= v83;
        if (!v84)
        {
          v133 = *(v233 + 48);
          v134 = *(v233 + 56);
          v135 = *(v233 + 72);
          do
          {
            v136 = (v19 + (v81 & v30));
            v137 = (506832829 * *v136) >> 15;
            v138 = *(v134 + 4 * v137);
            v139 = 2 * (v133 & v81);
            v140 = v139 | 1;
            *(v134 + 4 * v137) = v81;
            if (v81 != v138)
            {
              v142 = 0;
              v143 = 0;
              v144 = 64;
              do
              {
                if (v81 - v138 > v133 - 15 || v144 == 0)
                {
                  break;
                }

                if (v143 >= v142)
                {
                  v146 = v142;
                }

                else
                {
                  v146 = v143;
                }

                v147 = v136 + v146;
                v148 = v19 + (v138 & v30);
                v149 = (v148 + v146);
                v150 = 128 - v146;
                if (128 - v146 < 8)
                {
                  v153 = 0;
LABEL_192:
                  v159 = v150 & 7;
                  if (v159)
                  {
                    v160 = v153 | v159;
                    while (v147[v153] == *v149)
                    {
                      ++v149;
                      ++v153;
                      if (!--v159)
                      {
                        v153 = v160;
                        break;
                      }
                    }
                  }
                }

                else
                {
                  v151 = 0;
                  v152 = v150 >> 3;
                  v153 = v150 & 0xFFFFFFFFFFFFFFF8;
                  while (1)
                  {
                    v154 = *&v149[v151];
                    v155 = *&v147[v151];
                    if (v154 != v155)
                    {
                      break;
                    }

                    v151 += 8;
                    if (!--v152)
                    {
                      v149 += v150 & 0xFFFFFFFFFFFFFFF8;
                      v19 = v239;
                      goto LABEL_192;
                    }
                  }

                  v153 = v151 + (__clz(__rbit64(v155 ^ v154)) >> 3);
                  v19 = v239;
                }

                v156 = v153 + v146;
                if (v156 >= 0x80)
                {
                  v161 = (v135 + 8 * (v138 & v133));
                  *(v135 + 4 * v139) = *v161;
                  v141 = v161[1];
                  goto LABEL_169;
                }

                v157 = *(v148 + v156);
                v158 = 2 * (v138 & v133);
                if (*(v136 + v156) <= v157)
                {
                  *(v135 + 4 * v140) = v138;
                  v140 = 2 * (v138 & v133);
                  v142 = v156;
                }

                else
                {
                  *(v135 + 4 * v139) = v138;
                  v139 = v158 | 1;
                  v143 = v156;
                  v158 |= 1uLL;
                }

                v138 = *(v135 + 4 * v158);
                --v144;
              }

              while (v81 != v138);
            }

            v141 = *(v233 + 64);
            *(v135 + 4 * v139) = v141;
LABEL_169:
            *(v135 + 4 * v140) = v141;
            v81 += 8;
          }

          while (v81 < v83);
        }

        if (v83 < v82)
        {
          v85 = *(v233 + 48);
          v86 = *(v233 + 56);
          v87 = *(v233 + 72);
          do
          {
            v88 = (v19 + (v83 & v30));
            v89 = (506832829 * *v88) >> 15;
            v90 = *(v86 + 4 * v89);
            v91 = 2 * (v85 & v83);
            v92 = v91 | 1;
            *(v86 + 4 * v89) = v83;
            if (v83 != v90)
            {
              v94 = 0;
              v95 = 0;
              v96 = 64;
              do
              {
                if (v83 - v90 > v85 - 15 || v96 == 0)
                {
                  break;
                }

                if (v95 >= v94)
                {
                  v98 = v94;
                }

                else
                {
                  v98 = v95;
                }

                v99 = v88 + v98;
                v100 = v19 + (v90 & v30);
                v101 = (v100 + v98);
                v102 = 128 - v98;
                if (128 - v98 < 8)
                {
                  v105 = 0;
LABEL_123:
                  v111 = v102 & 7;
                  if (v111)
                  {
                    v112 = v105 | v111;
                    while (v99[v105] == *v101)
                    {
                      ++v101;
                      ++v105;
                      if (!--v111)
                      {
                        v105 = v112;
                        break;
                      }
                    }
                  }
                }

                else
                {
                  v103 = 0;
                  v104 = v102 >> 3;
                  v105 = v102 & 0xFFFFFFFFFFFFFFF8;
                  while (1)
                  {
                    v106 = *&v101[v103];
                    v107 = *&v99[v103];
                    if (v106 != v107)
                    {
                      break;
                    }

                    v103 += 8;
                    if (!--v104)
                    {
                      v101 += v102 & 0xFFFFFFFFFFFFFFF8;
                      goto LABEL_123;
                    }
                  }

                  v105 = v103 + (__clz(__rbit64(v107 ^ v106)) >> 3);
                }

                v108 = v105 + v98;
                if (v108 >= 0x80)
                {
                  v113 = (v87 + 8 * (v90 & v85));
                  *(v87 + 4 * v91) = *v113;
                  v93 = v113[1];
                  goto LABEL_100;
                }

                v109 = *(v100 + v108);
                v110 = 2 * (v90 & v85);
                if (*(v88 + v108) <= v109)
                {
                  *(v87 + 4 * v92) = v90;
                  v92 = 2 * (v90 & v85);
                  v94 = v108;
                }

                else
                {
                  *(v87 + 4 * v91) = v90;
                  v91 = v110 | 1;
                  v95 = v108;
                  v110 |= 1uLL;
                }

                v90 = *(v87 + 4 * v110);
                --v96;
              }

              while (v83 != v90);
            }

            v93 = *(v233 + 64);
            *(v87 + 4 * v91) = v93;
LABEL_100:
            *(v87 + 4 * v92) = v93;
            ++v83;
          }

          while (v83 < v82);
        }

        v114 = (v80 >> 5) - 1;
        ++v232;
        bzero(v77 + 1, 4 * v114);
        v30 = v237;
        v15 = v238;
        v69 = v114 + v229;
      }
    }

    v31 = v69 + 1;
    v21 = v241;
    v26 = v227;
    if (v69 + 4 >= v241)
    {
      v222 = 1;
      goto LABEL_201;
    }
  }
}

void sub_10012C98C(unsigned int *a1, uint64_t a2, int a3, float *a4)
{
  v6 = a2;
  v7 = a1;
  v8 = 0;
  if (!a2)
  {
    goto LABEL_5;
  }

  v9 = a1;
  v10 = a2;
  do
  {
    v11 = *v9++;
    v8 += v11;
    --v10;
  }

  while (v10);
  if (v8 > 0xFF)
  {
    v12 = log2(v8);
    if (a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_5:
    v12 = dbl_1003EDA70[v8];
    if (a3)
    {
      goto LABEL_13;
    }
  }

  if (v6)
  {
    v13 = v7;
    v14 = v6;
    do
    {
      if (!*v13++)
      {
        ++v8;
      }

      --v14;
    }

    while (v14);
  }

LABEL_13:
  if (v8 > 0xFF)
  {
    v16 = log2(v8);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v16 = dbl_1003EDA70[v8];
    if (!v6)
    {
      return;
    }
  }

  v17 = v12;
  v18 = v16;
  v19 = v18 + 2.0;
  do
  {
    v21 = *v7++;
    v20 = v21;
    if (v21)
    {
      if (v20 > 0xFF)
      {
        v22 = log2(v20);
      }

      else
      {
        v22 = dbl_1003EDA70[v20];
      }

      v23 = v22;
      v24 = v17 - v23;
      *a4 = v24;
      if (v24 < 1.0)
      {
        *a4 = 1.0;
      }
    }

    else
    {
      *a4 = v19;
    }

    ++a4;
    --v6;
  }

  while (v6);
}

uint64_t sub_10012CAC8(uint64_t a1, int a2, unsigned int a3)
{
  if (*(a1 + 8636))
  {
    return 0;
  }

  result = 0;
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      if (a2 == 5)
      {
        *(a1 + 24) = a3;
      }

      else
      {
        *(a1 + 36) = a3 != 0;
      }

      return 1;
    }

    if (a2 == 7)
    {
      *(a1 + 64) = a3;
      return 1;
    }

    if (a2 == 8)
    {
      *(a1 + 68) = a3;
      return 1;
    }

    if (a2 != 9)
    {
      return result;
    }

    if (a3 <= 0x40000000)
    {
      *(a1 + 16) = a3;
      return 1;
    }

    return 0;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      *(a1 + 8) = a3;
      return 1;
    }

    if (a2 == 3)
    {
      *(a1 + 12) = a3;
      return 1;
    }

    if (a3 <= 1)
    {
      *(a1 + 32) = a3;
      return 1;
    }

    return 0;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    *(a1 + 4) = a3;
  }

  else
  {
    *a1 = a3;
  }

  return 1;
}

char *sub_10012CBBC(uint64_t (*a1)(uint64_t, uint64_t), void (*a2)(int a1, void *a2), uint64_t a3)
{
  if (a1 | a2)
  {
    v6 = 0;
    if (!a1 || !a2)
    {
      return v6;
    }

    v7 = a1(a3, 8640);
  }

  else
  {
    v7 = malloc(0x21C0uLL);
  }

  v6 = v7;
  if (v7)
  {
    sub_100166C3C((v7 + 144), a1, a2, a3);
    *(v6 + 9) = 0;
    *v6 = 0xB00000000;
    *(v6 + 2) = 22;
    *(v6 + 12) = 0;
    *(v6 + 20) = 0u;
    sub_10013524C((v6 + 88));
    *(v6 + 4) = xmmword_10037CBB0;
    *(v6 + 10) = 67108860;
    *(v6 + 281) = 0;
    *(v6 + 1218) = 0;
    *(v6 + 2157) = 0;
    *(v6 + 1079) = 0;
    *(v6 + 142) = 0u;
    *(v6 + 143) = 0u;
    *(v6 + 144) = 0u;
    *(v6 + 145) = 0u;
    *(v6 + 146) = 0u;
    *(v6 + 305) = 0;
    *(v6 + 153) = 0u;
    *(v6 + 478) = 0u;
    *(v6 + 537) = 0u;
    *(v6 + 536) = 0u;
    *(v6 + 535) = 0u;
    *(v6 + 147) = xmmword_10037CBC0;
    *(v6 + 151) = *(v6 + 147);
  }

  return v6;
}

uint64_t sub_10012CCD0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v4 = *(result + 152);
    v2 = *(result + 160);
    if (*(result + 168))
    {
      sub_100166E10(result + 144);
    }

    else
    {
      sub_100166DB4(result + 144, *(result + 2448));
      v1[306] = 0;
      sub_100166DB4((v1 + 18), v1[288]);
      v1[288] = 0;
      sub_100166DB4((v1 + 18), v1[285]);
      v1[285] = 0;
      v3 = v1[307];
      if (v3)
      {
        sub_100166DB4((v1 + 18), v3);
        v1[307] = 0;
      }

      sub_100166DB4((v1 + 18), v1[956]);
      v1[956] = 0;
      sub_100166DB4((v1 + 18), v1[1071]);
      v1[1071] = 0;
      sub_100166DB4((v1 + 18), v1[1072]);
      v1[1072] = 0;
    }

    return v4(v2, v1);
  }

  return result;
}

unint64_t sub_10012CDB0(unint64_t a1)
{
  v1 = a1 + 4 * (a1 >> 14) + 6;
  if (v1 < a1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_10012CDD4(int a1, int a2, int a3, unint64_t a4, uint64_t *a5, unint64_t *a6, _BYTE *a7)
{
  v7 = a7;
  v8 = a6;
  v9 = *a6;
  if (!a4)
  {
    if (v9)
    {
      result = 1;
      *a6 = 1;
      *a7 = 6;
      return result;
    }

    return 0;
  }

  v10 = a4;
  v11 = a4 + 4 * (a4 >> 14) + 6;
  if (v11 < a4)
  {
    v11 = 0;
  }

  if (v9)
  {
    v176 = v11;
    if (a1 != 10)
    {
      result = sub_10012CBBC(0, 0, 0);
      if (!result)
      {
        return result;
      }

      v22 = result;
      v23 = v9;
      *&v233 = v10;
      *&v203[0] = a5;
      *&v192[0] = *v8;
      *v232 = v7;
      *&v186[0] = 0;
      if (!*(result + 8636))
      {
        *(result + 4) = a1;
        *(result + 8) = a2;
        *result = a3;
        *(result + 24) = v10;
        if (a2 >= 25)
        {
          *(result + 36) = 1;
        }
      }

      v24 = sub_10012E5F8(result, 2, &v233, v203, v192, v232, v186);
      if (*(v22 + 8628) == 2 && !*(v22 + 8592))
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      *v8 = *&v186[0];
      sub_10012CCD0(v22);
      v26 = v176;
      if (!v25)
      {
LABEL_345:
        *v8 = 0;
        if (v26 - 1 < v23)
        {
          v152 = v8;
          v153 = 0;
          *v7 = 801;
          v154 = 2;
          do
          {
            if (v10 >= 0x1000000)
            {
              v155 = 0x1000000;
            }

            else
            {
              v155 = v10;
            }

            if (v10 <= 0x100000)
            {
              v156 = 1;
            }

            else
            {
              v156 = 2;
            }

            if (v10 <= 0x10000)
            {
              v156 = 0;
            }

            v157 = 8 * v155 - 8;
            v158 = v157 | (2 * v156);
            v159 = v158 | (0x80000 << (4 * v156));
            v160 = v7 + v154;
            *v160 = v158;
            v160[1] = BYTE1(v157);
            v161 = v154 + 3;
            v160[2] = BYTE2(v159);
            if (v10 > 0x100000)
            {
              *(v7 + v161) = HIBYTE(v159);
              v161 = v154 + 4;
            }

            memcpy(v7 + v161, a5 + v153, v155);
            v154 = v161 + v155;
            v153 += v155;
            v10 -= v155;
          }

          while (v10);
          *(v7 + v154) = 3;
          *v152 = v154 + 1;
          return 1;
        }

        return 0;
      }

LABEL_30:
      if (!v26 || *v8 <= v26)
      {
        return 1;
      }

      goto LABEL_345;
    }

    v264 = 0u;
    v263 = 0u;
    if (a2 <= 16)
    {
      v15 = 16;
    }

    else
    {
      v15 = a2;
    }

    v262 = 0uLL;
    v261 = 0uLL;
    if (v15 >= 30)
    {
      v16 = 30;
    }

    else
    {
      v16 = v15;
    }

    v260 = 0uLL;
    v259 = 0uLL;
    v258 = 0uLL;
    v257 = 0uLL;
    v256 = 0uLL;
    v255 = 0uLL;
    v254 = 0uLL;
    v253 = 0uLL;
    v252 = 0uLL;
    v251 = 0uLL;
    v250 = 0uLL;
    v249 = 0uLL;
    v248 = 0uLL;
    v247 = 0uLL;
    v246 = 0uLL;
    v245 = 0uLL;
    v244 = 0uLL;
    v243 = 0uLL;
    v242 = 0uLL;
    v241 = 0uLL;
    v240 = 0uLL;
    v239 = 0uLL;
    v238 = 0uLL;
    v237 = 0uLL;
    v236 = 0uLL;
    v235 = 0uLL;
    v234 = 0uLL;
    v233 = 0uLL;
    v265 = xmmword_10037CBC0;
    v266 = xmmword_10037CBC0;
    if (a4 >= 1 << v16)
    {
      v17 = 1 << v16;
    }

    else
    {
      v17 = a4;
    }

    memset(&v232[40], 0, 104);
    if (v15 >= 23)
    {
      v18 = 23;
    }

    else
    {
      v18 = v15;
    }

    v228 = 0uLL;
    v227 = 0uLL;
    v226 = 0uLL;
    v225 = 0uLL;
    v224 = 0uLL;
    v223 = 0uLL;
    v222 = 0uLL;
    v220 = 0uLL;
    v221 = 0uLL;
    v218 = 0uLL;
    v219 = 0uLL;
    v216 = 0uLL;
    v217 = 0uLL;
    v214 = 0uLL;
    v215 = 0uLL;
    v212 = 0uLL;
    v213 = 0uLL;
    v210 = 0uLL;
    v211 = 0uLL;
    v208 = 0uLL;
    v209 = 0uLL;
    v207 = 0uLL;
    memset(v206, 0, sizeof(v206));
    *v204 = 0uLL;
    *__b = 0uLL;
    memset(v203, 0, sizeof(v203));
    *v232 = 0xB00000000;
    memset(&v232[12], 0, 28);
    sub_10013524C(&v232[88]);
    *&v232[64] = xmmword_10037CBB0;
    *&v232[80] = 67108860;
    *&v232[8] = v16;
    if (a2 < 25)
    {
      *&v232[4] = 10;
      v19 = v16;
      if (v16 > 0x18)
      {
        *&v232[8] = 24;
        v19 = 24;
      }
    }

    else
    {
      *&v232[36] = 1;
      *&v232[4] = 10;
      v19 = v16;
    }

    v8 = a6;
    v174 = v9;
    if (v19 >= 0x12)
    {
      v19 = 18;
    }

    *&v232[12] = v19;
    sub_100130FCC(v232);
    v27 = v232[12];
    sub_100166C3C(&v233, 0, 0, 0);
    if (*&v232[36])
    {
      v28 = 17;
      v29 = 14;
    }

    else if (v16 == 16)
    {
      v28 = 0;
      LOBYTE(v16) = 0;
      v29 = 1;
    }

    else
    {
      if (v16 != 17)
      {
        v28 = 2 * v16 - 33;
        v172 = 4;
        LOBYTE(v16) = 0;
LABEL_40:
        if (*&v203[0])
        {
          if (HIDWORD(v203[2]))
          {
            goto LABEL_215;
          }

          v30 = DWORD2(v203[1]);
LABEL_141:
          if (v30 > 34)
          {
            if (v30 > 41)
            {
              if (v30 > 54)
              {
                if (v30 == 55)
                {
                  sub_10013167C(v204, 1, v17, a5);
                }

                else if (v30 == 65)
                {
                  sub_100131738(v204, 1, v17, a5);
                }

                goto LABEL_214;
              }

              if (v30 != 42)
              {
                if (v30 == 54)
                {
                  v42 = v204[1];
                  if (v17 <= 0x8000)
                  {
                    v43 = 0;
                    do
                    {
                      v44 = (0x35A7BD1E35A7BD00 * *(a5 + v43)) >> 44;
                      v45 = 4;
                      do
                      {
                        v42[v44 & 0xFFFFF] = 0;
                        LODWORD(v44) = v44 + 8;
                        --v45;
                      }

                      while (v45);
                      ++v43;
                    }

                    while (v43 != v17);
                    goto LABEL_214;
                  }

                  v81 = 0x400000;
                  goto LABEL_213;
                }

LABEL_214:
                *&v203[1] = 0;
                *(&v203[0] + 1) = 0;
                HIDWORD(v203[2]) = 1;
LABEL_215:
                if (DWORD2(v234))
                {
LABEL_344:
                  sub_100166E10(&v233);
                  v23 = v174;
                  v7 = a7;
                  v26 = v176;
                  goto LABEL_345;
                }

                v87 = 1 << (v18 + 1);
                if (DWORD2(v203[1]) == 65)
                {
                  v88 = &v206[3] + 1;
                  v89 = a7;
                  if (v17 >= 0x20)
                  {
                    v94 = 0;
                    v95 = 0;
                    do
                    {
                      v95 = *(a5 + v94++) + v95 * DWORD1(v206[4]) + 1;
                    }

                    while (v94 != 32);
                    DWORD2(v206[2]) = v95;
                  }

                  goto LABEL_233;
                }

                v88 = v206;
                v89 = a7;
                if (DWORD2(v203[1]) == 55)
                {
                  if (v17 >= 0x20)
                  {
                    v93 = 0;
                    v91 = 0;
                    do
                    {
                      v91 = *(a5 + v93) + v91 * HIDWORD(v206[0]) + 1;
                      v92 = v93 >= 0x1C;
                      v93 += 4;
                    }

                    while (!v92);
                    goto LABEL_228;
                  }
                }

                else
                {
                  if (DWORD2(v203[1]) != 35)
                  {
LABEL_234:
                    v169 = v28;
                    v171 = 0;
                    v96 = 0;
                    v164 = 0;
                    v165 = 0;
                    v177 = v87 >> 3;
                    __dst = v89;
                    v163 = 1 << (v18 + 1);
                    do
                    {
                      v167 = v16;
                      v97 = v96 + v87;
                      if (v10 < v96 + v87)
                      {
                        v97 = v10;
                      }

                      v180 = v97;
                      v98 = v97 - v96;
                      v202 = 0;
                      v201 = 0;
                      v200 = 0;
                      v99 = v96;
                      if (*&v232[4] < 10 || sub_100132880(a5, v96, 0x7FFFFFFFFFFFFFFFLL, v98, 0.75))
                      {
                        v100 = 2;
                      }

                      else
                      {
                        v100 = 3;
                      }

                      __src = 0;
                      v184 = 0;
                      v101 = 0;
                      v181 = 0;
                      v178 = v98 / 0xC + 16;
                      v166 = v100;
                      v179 = (v100 << 9);
                      v170 = v96;
                      while (v180 > v99)
                      {
                        v182 = v101;
                        if (v180 - v99 >= 1 << v27)
                        {
                          v102 = 1 << v27;
                        }

                        else
                        {
                          v102 = v180 - v99;
                        }

                        if (v102 == -1)
                        {
                          v185 = 0;
                        }

                        else
                        {
                          v185 = sub_100166C7C(&v233);
                        }

                        if (DWORD2(v234))
                        {
                          goto LABEL_343;
                        }

                        sub_100129F84(v185, v102 + 1);
                        if (v99 >= 0x80 && v102 >= 3)
                        {
                          v103 = v99 - 127;
                          v104 = v102 + v99 - 127;
                          if (v99 < v104)
                          {
                            v104 = v99;
                          }

                          if (v103 < v104)
                          {
                            v105 = v204[0];
                            v106 = v204[1];
                            v107 = __b[1];
                            do
                            {
                              v108 = v103 & 0x7FFFFFFFFFFFFFFFLL;
                              if (v99 - v103 <= 0xF)
                              {
                                v109 = 15;
                              }

                              else
                              {
                                v109 = v99 - v103;
                              }

                              v110 = a5 + v108;
                              v111 = (506832829 * *(a5 + v108)) >> 15;
                              v112 = v106[v111];
                              v113 = 2 * (v103 & v105);
                              v114 = v113 | 1;
                              v106[v111] = v103;
                              if (v103 != v112)
                              {
                                v116 = 0;
                                v117 = 0;
                                v118 = (v105 - v109);
                                v119 = 64;
                                do
                                {
                                  if (v103 - v112 > v118 || v119 == 0)
                                  {
                                    break;
                                  }

                                  if (v117 >= v116)
                                  {
                                    v121 = v116;
                                  }

                                  else
                                  {
                                    v121 = v117;
                                  }

                                  v122 = a5 + v112 + v121;
                                  v123 = 128 - v121;
                                  if (128 - v121 < 8)
                                  {
                                    v126 = 0;
LABEL_283:
                                    v131 = v123 & 7;
                                    if (v131)
                                    {
                                      v132 = v126 | v131;
                                      while (v110[v121 + v126] == *v122)
                                      {
                                        ++v122;
                                        ++v126;
                                        if (!--v131)
                                        {
                                          v126 = v132;
                                          break;
                                        }
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v124 = 0;
                                    v125 = v123 >> 3;
                                    v126 = v123 & 0xFFFFFFFFFFFFFFF8;
                                    while (1)
                                    {
                                      v127 = *&v122[v124];
                                      v128 = *&v110[v121 + v124];
                                      if (v127 != v128)
                                      {
                                        break;
                                      }

                                      v124 += 8;
                                      if (!--v125)
                                      {
                                        v122 += v123 & 0xFFFFFFFFFFFFFFF8;
                                        goto LABEL_283;
                                      }
                                    }

                                    v126 = v124 + (__clz(__rbit64(v128 ^ v127)) >> 3);
                                  }

                                  v129 = v126 + v121;
                                  if (v129 >= 0x80)
                                  {
                                    v133 = &v107[2 * (v112 & v105)];
                                    v107[v113] = *v133;
                                    v115 = v133[1];
                                    goto LABEL_260;
                                  }

                                  v130 = 2 * (v112 & v105);
                                  if (v110[v129] <= *(a5 + v112 + v129))
                                  {
                                    v107[v114] = v112;
                                    v114 = 2 * (v112 & v105);
                                    v116 = v129;
                                  }

                                  else
                                  {
                                    v107[v113] = v112;
                                    v113 = v130 | 1;
                                    v117 = v129;
                                    v130 |= 1uLL;
                                  }

                                  v112 = v107[v130];
                                  --v119;
                                }

                                while (v103 != v112);
                              }

                              v115 = __b[0];
                              v107[v113] = __b[0];
LABEL_260:
                              v107[v114] = v115;
                              ++v103;
                            }

                            while (v103 != v104);
                          }
                        }

                        v134 = sub_10012A2B8(&v233, v102, v99, a5, 0x7FFFFFFFFFFFFFFFLL, &byte_1003E3330[v179], v232, &v266, v203, v185);
                        if (DWORD2(v234))
                        {
                          goto LABEL_343;
                        }

                        v135 = v134 + v184;
                        if (v178 <= v134 + v184 + 1)
                        {
                          v136 = v135 + 1;
                        }

                        else
                        {
                          v136 = v178;
                        }

                        if (v181 == v136)
                        {
                          v137 = v177;
                          v138 = __src;
                        }

                        else
                        {
                          v139 = sub_100166C7C(&v233);
                          if (DWORD2(v234))
                          {
                            goto LABEL_343;
                          }

                          v138 = v139;
                          if (__src)
                          {
                            memcpy(v139, __src, 16 * v184);
                            sub_100166DB4(&v233, __src);
                          }

                          v181 = v136;
                          v137 = v177;
                        }

                        __src = v138;
                        sub_100129FB4(v102, v99, v185, &v266, &v202, v232, &v138[16 * v184], &v201);
                        v101 = v102 + v182;
                        sub_100166DB4(&v233, v185);
                        if (v135 <= v137)
                        {
                          v99 += v102;
                          v184 = v135;
                          if (v201 <= v137)
                          {
                            continue;
                          }
                        }

                        goto LABEL_303;
                      }

                      v135 = v184;
LABEL_303:
                      v140 = v202;
                      if (v202)
                      {
                        v141 = &__src[16 * v135];
                        *v141 = v202;
                        *(v141 + 4) = 0x8000000;
                        *(v141 + 7) = 16;
                        v142 = v170;
                        if (v140 > 5)
                        {
                          if (v140 > 0x81)
                          {
                            if (v140 > 0x841)
                            {
                              if (v140 >> 1 >= 0xC21)
                              {
                                if (v140 < 0x5842)
                                {
                                  LOWORD(v143) = 22;
                                }

                                else
                                {
                                  LOWORD(v143) = 23;
                                }
                              }

                              else
                              {
                                LOWORD(v143) = 21;
                              }
                            }

                            else
                            {
                              v143 = (__clz(v140 - 66) ^ 0x1F) + 10;
                            }
                          }

                          else
                          {
                            v144 = (__clz(v140 - 2) ^ 0x1F) - 1;
                            v143 = ((v140 - 2) >> v144) + 2 * v144 + 2;
                          }
                        }

                        else
                        {
                          LOWORD(v143) = v140;
                        }

                        ++v135;
                        *(v141 + 6) = ((((0x520D40u >> (6 * (v143 >> 3))) & 0xC0) + 192 * (v143 >> 3)) & 0xFFC7 | (8 * (v143 & 7))) + 66;
                        v201 += v140;
                      }

                      else
                      {
                        v142 = v170;
                      }

                      v96 = v101 + v142;
                      v145 = v101 + v142 == v10;
                      v200 = v172;
                      if (v101)
                      {
                        if (sub_100131024(a5, 0xFFFFFFFF, v142, v101, v201, v135))
                        {
                          v198 = 0u;
                          v199 = 0u;
                          v196 = 0u;
                          v197 = 0u;
                          v195 = 0u;
                          memset(v194, 0, sizeof(v194));
                          memset(v193, 0, sizeof(v193));
                          memset(v192, 0, sizeof(v192));
                          v189 = *&v232[96];
                          v190 = *&v232[112];
                          v191 = *&v232[128];
                          v186[2] = *&v232[32];
                          v186[3] = *&v232[48];
                          *v187 = *&v232[64];
                          v188 = *&v232[80];
                          v186[0] = *v232;
                          v186[1] = *&v232[16];
                          sub_100147390(v192);
                          sub_100147390(v193);
                          sub_100147390(v194);
                          v198 = 0u;
                          v199 = 0u;
                          v196 = 0u;
                          v197 = 0u;
                          v195 = 0u;
                          sub_10014BF54(&v233, a5, v142, 0x7FFFFFFFFFFFFFFFuLL, v186, v165, v164, __src, v135, v166, v192);
                          if (DWORD2(v234))
                          {
                            goto LABEL_343;
                          }

                          sub_10014CE58(HIDWORD(v187[1]), v192);
                          v146 = sub_100166C7C(&v233);
                          if (DWORD2(v234))
                          {
                            goto LABEL_343;
                          }

                          v147 = v146;
                          *v146 = v169;
                          v146[1] = v167;
                          sub_10016DE1C(&v233, a5, v170, v101, 0x7FFFFFFFFFFFFFFFLL, v165, v164, v145, v186, v166, __src, v135, v192, &v200, v146);
                          if (DWORD2(v234))
                          {
                            goto LABEL_343;
                          }

                          if (v101 + 4 < v200 >> 3)
                          {
                            v266 = v265;
                            *v147 = v169;
                            v147[1] = v167;
                            v200 = v172;
                            sub_1001705B4(v145, a5, v170, 0x7FFFFFFFFFFFFFFFLL, v101, &v200, v147);
                          }

                          sub_1001473A0(&v233, v192);
                          sub_1001473A0(&v233, v193);
                          sub_1001473A0(&v233, v194);
                          sub_100166DB4(&v233, v195);
                          *&v195 = 0;
                          sub_100166DB4(&v233, v196);
                          *&v196 = 0;
                          sub_100166DB4(&v233, v197);
                          *&v197 = 0;
                          sub_100166DB4(&v233, v198);
                          *&v198 = 0;
                          sub_100166DB4(&v233, v199);
                        }

                        else
                        {
                          v266 = v265;
                          if (v101 == -16)
                          {
                            v147 = 0;
                          }

                          else
                          {
                            v147 = sub_100166C7C(&v233);
                          }

                          if (DWORD2(v234))
                          {
LABEL_343:
                            v8 = a6;
                            goto LABEL_344;
                          }

                          *v147 = v169;
                          v147[1] = v167;
                          sub_1001705B4(v101 + v142 == v10, a5, v170, 0x7FFFFFFFFFFFFFFFLL, v101, &v200, v147);
                        }
                      }

                      else
                      {
                        v148 = sub_100166C7C(&v233);
                        if (DWORD2(v234))
                        {
                          goto LABEL_343;
                        }

                        v147 = v148;
                        *v148 = v169;
                        v148[1] = v167;
                        v149 = v200;
                        *&v148[v200 >> 3] = (3 << (v200 & 7)) | v148[v200 >> 3];
                        v200 = (v149 + 9) & 0xFFFFFFF8;
                      }

                      v150 = v200;
                      v151 = v200 >> 3;
                      v169 = v147[v200 >> 3];
                      v7 = a7;
                      if (v96 < v10)
                      {
                        v164 = *(a5 + v96 - 2);
                        v165 = *(a5 + v96 - 1);
                      }

                      v265 = v266;
                      v171 += v151;
                      if (v171 <= v174)
                      {
                        memcpy(__dst, v147, v200 >> 3);
                        __dst += v151;
                      }

                      sub_100166DB4(&v233, v147);
                      sub_100166DB4(&v233, __src);
                      v87 = v163;
                      if (v96 >= v10)
                      {
                        break;
                      }

                      LOBYTE(v16) = 0;
                      v172 = v150 & 7;
                    }

                    while (v171 <= v174);
                    v8 = a6;
                    *a6 = v171;
                    if (*&v203[0])
                    {
                      sub_100166DB4(&v233, *&v203[0]);
                    }

                    v23 = v174;
                    v26 = v176;
                    if (v171 > v174)
                    {
                      goto LABEL_345;
                    }

                    goto LABEL_30;
                  }

                  if (v17 >= 0x20)
                  {
                    v90 = 0;
                    v91 = 0;
                    do
                    {
                      v91 = *(a5 + v90) + v91 * HIDWORD(v206[0]) + 1;
                      v92 = v90 >= 0x1C;
                      v90 += 4;
                    }

                    while (!v92);
LABEL_228:
                    LODWORD(__b[0]) = v91;
                  }
                }

LABEL_233:
                *v88 = 0;
                goto LABEL_234;
              }

              v168 = v28;
              v59 = v230;
              v60 = v230 + 0x20000;
              if (v17 > 0x200)
              {
                memset(v230, 204, 0x20000uLL);
                bzero(v60, 0x10000uLL);
              }

              else
              {
                v61 = a5;
                v62 = v17;
                do
                {
                  v63 = *v61;
                  v61 = (v61 + 1);
                  v64 = (506832829 * v63) >> 17;
                  v59[v64] = -858993460;
                  *&v60[2 * v64] = -13108;
                  --v62;
                }

                while (v62);
              }

              bzero(v59 + 49152, 0x10000uLL);
              bzero(v204, 0x400uLL);
              v8 = a6;
LABEL_207:
              v28 = v168;
              goto LABEL_214;
            }

            switch(v30)
            {
              case '#':
                sub_100131568(v204, 1, v17, a5);
                goto LABEL_214;
              case '(':
                v168 = v28;
                v49 = __b[0];
                v50 = __b[0] + 0x20000;
                if (v17 <= 0x200)
                {
                  v65 = a5;
                  v66 = v17;
                  do
                  {
                    v67 = *v65;
                    v65 = (v65 + 1);
                    v68 = (506832829 * v67) >> 17;
                    v49[v68] = -858993460;
                    *&v50[2 * v68] = -13108;
                    --v66;
                  }

                  while (v66);
                  goto LABEL_197;
                }

                break;
              case ')':
                v168 = v28;
                v49 = __b[0];
                v50 = __b[0] + 0x20000;
                if (v17 <= 0x200)
                {
                  v51 = a5;
                  v52 = v17;
                  do
                  {
                    v53 = *v51;
                    v51 = (v51 + 1);
                    v54 = (506832829 * v53) >> 17;
                    v49[v54] = -858993460;
                    *&v50[2 * v54] = -13108;
                    --v52;
                  }

                  while (v52);
                  goto LABEL_197;
                }

                break;
              default:
                goto LABEL_214;
            }

            memset(v49, 204, 0x20000uLL);
            bzero(v50, 0x10000uLL);
LABEL_197:
            bzero(v49 + 49152, 0x10000uLL);
            LOWORD(v204[0]) = 0;
            goto LABEL_207;
          }

          if (v30 > 4)
          {
            if (v30 == 5)
            {
              v42 = *(&v206[0] + 1);
              v72 = v204[0];
              if (v17 <= v204[0] >> 6)
              {
                v73 = __b[0];
                v74 = a5;
                v75 = v17;
                do
                {
                  v76 = *v74;
                  v74 = (v74 + 1);
                  *(v42 + ((506832829 * v76) >> v73)) = 0;
                  --v75;
                }

                while (v75);
                goto LABEL_214;
              }
            }

            else
            {
              if (v30 != 6)
              {
                if (v30 == 10)
                {
                  v55 = 0;
                  v56 = v204[1];
                  v57 = __b;
                  v58 = vld1q_dup_f32(v57);
                  do
                  {
                    *&v56[v55] = v58;
                    v55 += 16;
                  }

                  while (v55 != 0x80000);
                }

                goto LABEL_214;
              }

              v42 = *(&v206[1] + 1);
              v72 = v204[0];
              if (v17 <= v204[0] >> 6)
              {
                v82 = __b[1];
                v83 = __b[0];
                v84 = a5;
                v85 = v17;
                do
                {
                  v86 = *v84;
                  v84 = (v84 + 1);
                  *(v42 + ((0x1FE35A7BD3579BD3 * (v86 & v82)) >> v83)) = 0;
                  --v85;
                }

                while (v85);
                goto LABEL_214;
              }
            }

            v81 = 2 * v72;
            goto LABEL_213;
          }

          switch(v30)
          {
            case 2:
              v42 = v204[1];
              if (v17 <= 0x800)
              {
                v69 = a5;
                v70 = v17;
                do
                {
                  v71 = *v69;
                  v69 = (v69 + 1);
                  *(v42 + (((0xBD1E35A7BD000000 * v71) >> 46) & 0x3FFFC)) = 0;
                  --v70;
                }

                while (v70);
                goto LABEL_214;
              }

              break;
            case 3:
              v42 = v204[1];
              if (v17 <= 0x800)
              {
                v77 = a5;
                v78 = v17;
                do
                {
                  v79 = *v77;
                  v77 = (v77 + 1);
                  v80 = (0xBD1E35A7BD000000 * v79) >> 48;
                  v42[v80] = 0;
                  v42[(v80 + 8)] = 0;
                  --v78;
                }

                while (v78);
                goto LABEL_214;
              }

              break;
            case 4:
              v42 = v204[1];
              if (v17 <= 0x1000)
              {
                v46 = 0;
                do
                {
                  v47 = (0xBD1E35A7BD000000 * *(a5 + v46)) >> 47;
                  v48 = 4;
                  do
                  {
                    v42[v47 & 0x1FFFF] = 0;
                    LODWORD(v47) = v47 + 8;
                    --v48;
                  }

                  while (v48);
                  ++v46;
                }

                while (v46 != v17);
                goto LABEL_214;
              }

              v81 = 0x80000;
LABEL_213:
              bzero(v42, v81);
              goto LABEL_214;
            default:
              goto LABEL_214;
          }

          v81 = 0x40000;
          goto LABEL_213;
        }

        v31 = *&v232[4];
        if (*&v232[4] < 10)
        {
          if (*&v232[4] == 4)
          {
            if (*&v232[24] >= 0x100000uLL)
            {
              v31 = 54;
            }
          }

          else if (*&v232[4] > 4)
          {
            if (*&v232[8] > 16)
            {
              if (*&v232[8] < 0x13u || *&v232[24] < 0x100000uLL)
              {
                if (*&v232[4] >= 9u)
                {
                  v38 = 16;
                }

                else
                {
                  v38 = 10;
                }

                if (*&v232[4] < 7u)
                {
                  v39 = 14;
                }

                else
                {
                  v39 = 15;
                }

                *&v232[40] = 5;
                *&v232[44] = v39;
                if (*&v232[4] >= 7u)
                {
                  v40 = v38;
                }

                else
                {
                  v40 = 4;
                }

                *&v232[48] = *&v232[4] - 1;
                *&v232[56] = v40;
                v31 = 5;
              }

              else
              {
                *&v232[40] = 0xF00000006;
                *&v232[48] = *&v232[4] - 1;
                *&v232[52] = 5;
                if (*&v232[4] >= 9u)
                {
                  v36 = 16;
                }

                else
                {
                  v36 = 10;
                }

                if (*&v232[4] >= 7u)
                {
                  v37 = v36;
                }

                else
                {
                  v37 = 4;
                }

                *&v232[56] = v37;
                v31 = 6;
              }

LABEL_49:
              if (*&v232[8] < 25)
              {
                v32 = 0;
                if (v31 <= 34)
                {
                  if (v31 > 4)
                  {
                    if (v31 == 5 || v31 == 6)
                    {
                      goto LABEL_81;
                    }
                  }

                  else if ((v31 - 2) >= 2 && v31 != 4)
                  {
LABEL_88:
                    *&v203[0] = v32;
                    if (DWORD2(v234))
                    {
                      goto LABEL_215;
                    }

                    *(&v203[1] + 8) = *&v232[40];
                    DWORD2(v203[2]) = *&v232[56];
                    v30 = *&v232[40];
                    if (*&v232[40] > 34)
                    {
                      if (*&v232[40] <= 41)
                      {
                        if (*&v232[40] != 35)
                        {
                          if (*&v232[40] == 40 || *&v232[40] == 41)
                          {
                            __b[1] = v203;
                            if (*&v232[4] >= 7)
                            {
                              v35 = 7;
                            }

                            else
                            {
                              v35 = 8;
                            }

                            __b[0] = v32;
                            v204[1] = (v35 << (v232[4] - 4));
                          }

                          goto LABEL_140;
                        }
                      }

                      else
                      {
                        if (*&v232[40] <= 54)
                        {
                          if (*&v232[40] == 42)
                          {
                            v231 = v203;
                            v230 = v32;
                            if (*&v232[4] >= 7)
                            {
                              v41 = 7;
                            }

                            else
                            {
                              v41 = 8;
                            }

                            v229 = (v41 << (v232[4] - 4));
                            goto LABEL_140;
                          }

                          if (*&v232[40] != 54)
                          {
LABEL_140:
                            HIDWORD(v203[2]) = 0;
                            goto LABEL_141;
                          }

LABEL_99:
                          v204[0] = v203;
                          v204[1] = v32;
                          goto LABEL_140;
                        }

                        if (*&v232[40] != 55)
                        {
                          if (*&v232[40] == 65)
                          {
                            *(&v210 + 1) = v203;
                            *&v210 = v32;
                            v207 = v203[0];
                            v208 = v203[1];
                            v209 = v203[2];
                            LODWORD(v211) = 1;
                            *(&v211 + 1) = v232;
                          }

                          goto LABEL_140;
                        }
                      }

                      *&v207 = v203;
                      *(&v206[4] + 1) = v32;
                      *(&v206[1] + 8) = v203[0];
                      *(&v206[2] + 8) = v203[1];
                      *(&v206[3] + 8) = v203[2];
                      DWORD2(v207) = 1;
                      *&v208 = v232;
                      goto LABEL_140;
                    }

                    if (*&v232[40] > 4)
                    {
                      switch(*&v232[40])
                      {
                        case 5:
                          v204[0] = (1 << SBYTE12(v203[1]));
                          v204[1] = (1 << SLOBYTE(v203[2]));
                          LODWORD(__b[0]) = 32 - HIDWORD(v203[1]);
                          HIDWORD(__b[0]) = (1 << SLOBYTE(v203[2])) - 1;
                          *&v206[0] = v203;
                          *(&v206[0] + 1) = v32;
                          *&v206[1] = v32 + 2 * (1 << SBYTE12(v203[1]));
                          __b[1] = __PAIR64__(DWORD2(v203[2]), v203[2]);
                          break;
                        case 6:
                          LODWORD(__b[0]) = 64 - HIDWORD(v203[1]);
                          __b[1] = (0xFFFFFFFFFFFFFFFFLL >> (-8 * BYTE4(v203[2])));
                          v204[0] = (1 << SBYTE12(v203[1]));
                          v204[1] = (1 << SLOBYTE(v203[2]));
                          *(v206 + 4) = __PAIR64__(DWORD2(v203[2]), v203[2]);
                          LODWORD(v206[0]) = (1 << SLOBYTE(v203[2])) - 1;
                          *&v206[1] = v203;
                          *(&v206[1] + 1) = v32;
                          *&v206[2] = v32 + 2 * (1 << SBYTE12(v203[1]));
                          break;
                        case 0xA:
                          __b[1] = (v32 + 0x80000);
                          v204[1] = v32;
                          v204[0] = ~(-1 << v232[8]);
                          LODWORD(__b[0]) = (-1 << v232[8]) + 1;
                          break;
                      }

                      goto LABEL_140;
                    }

                    if (*&v232[40] != 2 && *&v232[40] != 3 && *&v232[40] != 4)
                    {
                      goto LABEL_140;
                    }

                    goto LABEL_99;
                  }
                }
              }

              else
              {
                v32 = 0;
                if (v31 > 9)
                {
                  if (v31 > 42)
                  {
                    *&v232[40] = 55;
                  }

                  goto LABEL_87;
                }

                if (v31 <= 3)
                {
                  if (v31 != 2)
                  {
                    if (v31 != 3)
                    {
                      goto LABEL_88;
                    }

                    *&v232[40] = 35;
                  }

                  goto LABEL_87;
                }

                if (v31 != 4)
                {
                  if (v31 != 5)
                  {
                    *&v232[40] = 65;
                    v34 = (2 << v232[44]) + 0x4000000 + (4 << v232[44] << v232[48]);
                    goto LABEL_82;
                  }

LABEL_81:
                  v34 = (4 << v232[44] << v232[48]) + (2 << v232[44]);
LABEL_82:
                  if (!v34)
                  {
                    v32 = 0;
                    goto LABEL_88;
                  }
                }
              }

LABEL_87:
              v32 = sub_100166C7C(&v233);
              goto LABEL_88;
            }

            if (*&v232[4] < 9u)
            {
              v33 = 41;
            }

            else
            {
              v33 = 42;
            }

            if (*&v232[4] >= 7u)
            {
              v31 = v33;
            }

            else
            {
              v31 = 40;
            }
          }
        }

        else
        {
          v31 = 10;
        }

        *&v232[40] = v31;
        goto LABEL_49;
      }

      LOBYTE(v16) = 0;
      v28 = 1;
      v29 = 7;
    }

    v172 = v29;
    goto LABEL_40;
  }

  return 0;
}

uint64_t sub_10012E5F8(uint64_t a1, int a2, size_t *a3, const void **a4, size_t *a5, void **a6, unint64_t *a7)
{
  if (*(a1 + 168))
  {
    return 0;
  }

  v143[11] = v7;
  v143[12] = v8;
  if (!*(a1 + 8636))
  {
    *(a1 + 2432) = -33554432;
    *(a1 + 8624) = -1;
    v17 = *(a1 + 4);
    v18 = v17 & ~(v17 >> 31);
    if (v18 >= 11)
    {
      v18 = 11;
    }

    *(a1 + 4) = v18;
    if (v17 <= 2)
    {
      *(a1 + 36) = 0;
    }

    v19 = *(a1 + 8);
    if (v19 >= 10)
    {
      if (*(a1 + 36))
      {
        v20 = 30;
      }

      else
      {
        v20 = 24;
      }

      if (v19 <= v20)
      {
LABEL_15:
        if (v17 >= 2)
        {
          if (v17 >= 4)
          {
            v22 = *(a1 + 12);
            if (v22)
            {
              if (v22 <= 16)
              {
                v23 = 16;
              }

              else
              {
                v23 = *(a1 + 12);
              }

              if (v23 >= 24)
              {
                v21 = 24;
              }

              else
              {
                v21 = v23;
              }
            }

            else
            {
              v21 = 16;
              if (v17 >= 9)
              {
                if (v19 >= 0x12)
                {
                  v24 = 18;
                }

                else
                {
                  v24 = v19;
                }

                if (v24 <= 0x10)
                {
                  v21 = 16;
                }

                else
                {
                  v21 = v24;
                }
              }
            }
          }

          else
          {
            v21 = 14;
          }
        }

        else
        {
          v21 = v19;
        }

        *(a1 + 12) = v21;
        sub_100130FCC(a1);
        v25 = *(a1 + 16);
        if (v25)
        {
          *(a1 + 2435) = 2;
          *&v26 = 0xF0000000FLL;
          *(&v26 + 1) = 0xF0000000FLL;
          *(a1 + 2352) = v26;
          *(a1 + 2416) = *(a1 + 2352);
        }

        v28 = *(a1 + 8);
        v27 = *(a1 + 12);
        v29 = *(a1 + 4);
        if (v28 <= v27)
        {
          v30 = *(a1 + 12);
        }

        else
        {
          v30 = *(a1 + 8);
        }

        v31 = 1 << (v30 + 1);
        *(a1 + 2260) = v31 - 1;
        *(a1 + 2256) = v31;
        v32 = 1 << v27;
        *(a1 + 2264) = v32;
        *(a1 + 2268) = v31 + v32;
        if (v28 <= 18)
        {
          v33 = 18;
        }

        else
        {
          v33 = v28;
        }

        if (v29 >= 2)
        {
          v33 = v28;
        }

        if (v25)
        {
          v34 = (1 << v33) - 16;
          if (v25 >= v34)
          {
            v25 = v34;
          }

          *(a1 + 16) = v25;
          if (v29)
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (*(a1 + 36))
          {
            v39 = ((v33 & 0x3F) << 8) | 0x11;
            v40 = 14;
          }

          else if (v33 == 16)
          {
            v39 = 0;
            v40 = 1;
          }

          else if (v33 == 17)
          {
            v40 = 7;
            v39 = 1;
          }

          else if (v33 < 18)
          {
            v39 = 16 * v33 - 127;
            v40 = 7;
          }

          else
          {
            v39 = 2 * v33 - 33;
            v40 = 4;
          }

          *(a1 + 2432) = v39;
          *(a1 + 2434) = v40;
          if (v29)
          {
            goto LABEL_48;
          }
        }

        *(a1 + 7728) = xmmword_10037CC10;
        *(a1 + 7744) = unk_10037CC20;
        *(a1 + 7760) = xmmword_10037CC30;
        *(a1 + 7776) = unk_10037CC40;
        *(a1 + 7664) = xmmword_10037CBD0;
        *(a1 + 7680) = unk_10037CBE0;
        *(a1 + 7696) = xmmword_10037CBF0;
        *(a1 + 7712) = unk_10037CC00;
        *(a1 + 7840) = unk_10037CC80;
        *(a1 + 7824) = xmmword_10037CC70;
        *(a1 + 7808) = unk_10037CC60;
        *(a1 + 7792) = xmmword_10037CC50;
        *(a1 + 7904) = unk_10037CCC0;
        *(a1 + 7888) = xmmword_10037CCB0;
        *(a1 + 7872) = unk_10037CCA0;
        *(a1 + 7856) = xmmword_10037CC90;
        *(a1 + 7968) = unk_10037CD00;
        *(a1 + 7952) = xmmword_10037CCF0;
        *(a1 + 7936) = unk_10037CCE0;
        *(a1 + 7920) = xmmword_10037CCD0;
        *(a1 + 8032) = unk_10037CD40;
        *(a1 + 8016) = xmmword_10037CD30;
        *(a1 + 8000) = unk_10037CD20;
        *(a1 + 7984) = xmmword_10037CD10;
        strcpy((a1 + 8048), "\xFFwտ\xE7\xDE\xEA\x9EQ]\xDE\xC6pW\xBCX");
        strcpy((a1 + 8064), "XX\xD8\xD8X\xD5\xCB\x8C\xEA\xE0\xC3\x87\x1F\x83\xC1\x60\x1Cg\xB2\xAA\x06\x83\xC1\x600\x18̡ΈT\x94");
        *(a1 + 8095) = asc_10043CBD2[47];
        *(a1 + 8089) = *"\x18̡ΈT\x94F\xE1\xB0\xD0N\xB2\xF7\x04BM";
        *(a1 + 8560) = 448;
LABEL_48:
        *(a1 + 8636) = 1;
        goto LABEL_49;
      }
    }

    else
    {
      v20 = 10;
    }

    *(a1 + 8) = v20;
    v19 = v20;
    goto LABEL_15;
  }

LABEL_49:
  v35 = *(a1 + 8624);
  if (v35 != -1)
  {
    result = 0;
    if (a2 != 3 || *a3 != v35)
    {
      return result;
    }

LABEL_54:
    if (!*(a1 + 24))
    {
      v36 = *(a1 + 2248) - *(a1 + 2344);
      if (v36 >= 0x40000000)
      {
        v36 = 0x40000000;
      }

      *(a1 + 24) = v36;
    }

    if (*a3 <= 0x1000000)
    {
      v37 = *(a1 + 8628);
      if (!v37)
      {
        *(a1 + 8624) = *a3;
        *(a1 + 8628) = 3;
LABEL_71:
        v41 = a1 + 8608;
        while (1)
        {
          while (1)
          {
            while (1)
            {
                ;
              }

              if (*(a1 + 8592))
              {
                return 1;
              }

              if (*(a1 + 2248) == *(a1 + 2336))
              {
                break;
              }

              result = sub_10012F4D4(a1, 0, 1, (a1 + 8592), (a1 + 8584), v42, v43, v44, v45, v46, v47);
              if (!result)
              {
                return result;
              }
            }

            if (*(a1 + 8628) == 3)
            {
              break;
            }

            v54 = *(a1 + 8624);
            if (!v54)
            {
              *(a1 + 8624) = 0xFFFFFFFFLL;
              return 1;
            }

            if (*a5)
            {
              if (v54 >= *a5)
              {
                v55 = *a5;
              }

              else
              {
                v55 = *(a1 + 8624);
              }

              memcpy(*a6, *a4, v55);
              *a4 = *a4 + v55;
              *a3 -= v55;
              *(a1 + 8624) -= v55;
              *a6 = *a6 + v55;
              *a5 -= v55;
            }

            else
            {
              if (v54 >= 0x10)
              {
                v56 = 16;
              }

              else
              {
                v56 = v54;
              }

              *(a1 + 8584) = v41;
              memcpy((a1 + 8608), *a4, v56);
              *a4 = *a4 + v56;
              *a3 -= v56;
              *(a1 + 8624) -= v56;
              *(a1 + 8592) = v56;
            }
          }

          *(a1 + 8584) = v41;
          v48 = *(a1 + 8624);
          v49 = *(a1 + 2434);
          *(a1 + 8608) = *(a1 + 2432);
          *(a1 + 2432) = 0;
          *(v41 + (v49 >> 3)) = *(v41 + (v49 >> 3));
          *(v41 + ((v49 + 1) >> 3)) = (3 << ((v49 + 1) & 7)) | *(v41 + ((v49 + 1) >> 3));
          v50 = (v49 + 3) >> 3;
          v51 = *(v41 + v50);
          *(a1 + 2434) = 0;
          *(v41 + v50) = v51;
          v52 = (v49 + 4) >> 3;
          if (v48 == 1)
          {
            v57 = 0;
          }

          else
          {
            if (!v48)
            {
              *(v41 + v52) = *(v41 + v52);
              v53 = v49 + 6;
              goto LABEL_94;
            }

            v57 = ((__clz(v48 - 1) ^ 0x18) + 8) >> 3;
          }

          *(v41 + v52) = (v57 << ((v49 + 4) & 7)) | *(v41 + v52);
          v58 = v49 + 6;
          *(v41 + (v58 >> 3)) = ((v48 - 1) << (v58 & 7)) | *(v41 + (v58 >> 3));
          v53 = v58 + 8 * v57;
LABEL_94:
          *(a1 + 8592) = (v53 + 7) >> 3;
          *(a1 + 8628) = 4;
        }
      }

      if ((v37 - 3) <= 1)
      {
        goto LABEL_71;
      }
    }

    return 0;
  }

  if (a2 == 3)
  {
    goto LABEL_54;
  }

  v38 = *(a1 + 8628);
  if ((v38 - 3) < 2 || v38 && *a3)
  {
    return 0;
  }

  v59 = *(a1 + 4);
  if (v59 < 2)
  {
    v60 = 1 << *(a1 + 8);
    v137 = v60;
    if (*a3 < v60)
    {
      v60 = *a3;
    }

    if (v59 != 1)
    {
      v62 = 0;
      v63 = 0;
      v61 = 0;
      goto LABEL_190;
    }

    v61 = *(a1 + 8568);
    if (v61 || v60 < 0x20000)
    {
      if (v61)
      {
        v63 = 0;
        v115 = 0;
        v62 = *(a1 + 8576);
        goto LABEL_200;
      }

      if (!*a3)
      {
        v61 = 0;
        v62 = 0;
LABEL_199:
        v63 = v62;
        v115 = v61;
        if (*(a1 + 168))
        {
          return 0;
        }

        goto LABEL_200;
      }
    }

    else
    {
      *(a1 + 8568) = sub_100166C7C(a1 + 144);
      v62 = sub_100166C7C(a1 + 144);
      *(a1 + 8576) = v62;
      if (*(a1 + 168))
      {
        return 0;
      }

      v61 = *(a1 + 8568);
      if (v61)
      {
        v63 = 0;
LABEL_190:
        v115 = 0;
LABEL_200:
        v132 = v115;
        v133 = v63;
        v134 = v62;
        v135 = v61;
        if (a2 == 2)
        {
          v116 = 2;
        }

        else
        {
          v116 = 1;
        }

        v136 = v116;
        v117 = v137;
        while (1)
        {
            ;
          }

          if (*(a1 + 8592) || *(a1 + 8628) || (v118 = *a3, !a2) && !v118)
          {
            sub_100166DB4(a1 + 144, v132);
            sub_100166DB4(a1 + 144, v133);
            if (*(a1 + 8628) == 1 && !*(a1 + 8592))
            {
LABEL_241:
              *(a1 + 8628) = 0;
              *(a1 + 8584) = 0;
            }

            return 1;
          }

          v119 = v117 >= v118 ? *a3 : v117;
          v120 = *(a1 + 2434);
          v121 = a2 != 2 || v118 > v117;
          v122 = !v121;
          v142 = 0;
          v143[0] = v120;
          if (a2 == 1 && !v118)
          {
            break;
          }

          v141 = v122;
          v124 = 2 * v119 + 503;
          v138 = *a5;
          v139 = v124;
          if (v124 <= *a5)
          {
            v126 = *a6;
          }

          else
          {
            v125 = sub_10013185C(a1, v124);
            if (*(a1 + 168))
            {
              return 0;
            }

            v126 = v125;
          }

          *v126 = *(a1 + 2432);
          v126[1] = *(a1 + 2433);
          v127 = sub_1001318CC(a1, *(a1 + 4), v119, &v142);
          if (*(a1 + 168))
          {
            return 0;
          }

          v128 = *a4;
          if (*(a1 + 4))
          {
            sub_10013D848((a1 + 144), v128, v119, v141, v135, v134, v127, v142, v143, v126);
          }

          else
          {
            sub_10012494C(a1 + 144, v128, v119, v141, v127, v142, (a1 + 7664), (a1 + 7792), (a1 + 8560), (a1 + 8048), v143, v126);
          }

          if (*(a1 + 168))
          {
            return 0;
          }

          if (v118)
          {
            *a4 = *a4 + v119;
            *a3 -= v119;
          }

          v129 = v143[0];
          v130 = v143[0] >> 3;
          if (v139 <= v138)
          {
            *a6 = *a6 + v130;
            *a5 -= v130;
            v131 = *(a1 + 8600) + v130;
            *(a1 + 8600) = v131;
            if (a7)
            {
              *a7 = v131;
            }
          }

          else
          {
            *(a1 + 8584) = v126;
            *(a1 + 8592) = v130;
          }

          *(a1 + 2432) = v126[v130];
          *(a1 + 2434) = v129 & 7;
          v117 = v137;
          if ((a2 - 1) <= 1)
          {
            v123 = v136;
            if (v118 <= v137)
            {
LABEL_238:
              *(a1 + 8628) = v123;
            }
          }
        }

        v123 = 1;
        goto LABEL_238;
      }
    }

    v61 = sub_100166C7C(a1 + 144);
    v62 = sub_100166C7C(a1 + 144);
    goto LABEL_199;
  }

  while (1)
  {
    while (1)
    {
      while (1)
      {
        v64 = *(a1 + 2248) - *(a1 + 2344);
        v65 = 1 << *(a1 + 12);
        v66 = v65 >= v64;
        v67 = v65 - v64;
        if (!v66)
        {
          v67 = 0;
        }

        v68 = *(a1 + 2435);
        v69 = v68;
        if (v67 < v68)
        {
          v68 = v67;
        }

        v70 = v69 >= 0 ? v68 : v67;
        if (!v70 || !*a3)
        {
          break;
        }

        if (v70 >= *a3)
        {
          v70 = *a3;
        }

        v71 = *a4;
        v72 = *(a1 + 2276);
        if (v72 || v70 >= *(a1 + 2264))
        {
          v85 = *(a1 + 2268);
          if (*(a1 + 2272) >= v85)
          {
            goto LABEL_142;
          }

          v140 = *a4;
          v86 = sub_100166C7C(a1 + 144);
          if (!*(a1 + 168))
          {
            v87 = v86;
            v88 = *(a1 + 2280);
            if (v88)
            {
              memcpy(v86, v88, (*(a1 + 2272) + 2) + 7);
              sub_100166DB4(a1 + 144, *(a1 + 2280));
            }

            v89 = 0;
            *(a1 + 2280) = v87;
            *(a1 + 2272) = v85;
            *(a1 + 2288) = v87 + 2;
            v87[1] = 0;
            *(*(a1 + 2288) - 2) = 0;
            do
            {
              *(*(a1 + 2288) + *(a1 + 2272) + v89++) = 0;
            }

            while (v89 != 7);
            if (!*(a1 + 168))
            {
              *(*(a1 + 2288) + (*(a1 + 2256) - 2)) = 0;
              *(*(a1 + 2288) + (*(a1 + 2256) - 1)) = 0;
              *(*(a1 + 2288) + *(a1 + 2256)) = -15;
              v72 = *(a1 + 2276);
              v71 = v140;
LABEL_142:
              v90 = *(a1 + 2260) & v72;
              v91 = *(a1 + 2264);
              v92 = *(a1 + 2256);
              if (v90 < v91)
              {
                v108 = *(a1 + 2288) + v92;
                v109 = v91 - v90;
                if (v70 >= v109)
                {
                  v110 = v109;
                }

                else
                {
                  v110 = v70;
                }

                v111 = v71;
                memcpy((v108 + v90), v71, v110);
                v71 = v111;
                v92 = *(a1 + 2256);
              }

              v93 = *(a1 + 2288);
              if (v70 + v90 > v92)
              {
                if (v70 >= *(a1 + 2268) - v90)
                {
                  v112 = *(a1 + 2268) - v90;
                }

                else
                {
                  v112 = v70;
                }

                v113 = v71;
                memcpy((v93 + v90), v71, v112);
                v94 = *(a1 + 2288);
                v114 = *(a1 + 2256) - v90;
                v95 = v70 - v114;
                v71 = &v113[v114];
              }

              else
              {
                v94 = (v93 + v90);
                v95 = v70;
              }

              memcpy(v94, v71, v95);
              v96 = *(a1 + 2276);
              *(*(a1 + 2288) - 2) = *(*(a1 + 2288) + (*(a1 + 2256) - 2));
              *(*(a1 + 2288) - 1) = *(*(a1 + 2288) + (*(a1 + 2256) - 1));
              *(a1 + 2276) = ((*(a1 + 2276) & 0x7FFFFFFF) + (v70 & 0x7FFFFFFF)) | v96 & 0x80000000;
LABEL_146:
              if (!*(a1 + 168))
              {
                *(a1 + 2248) += v70;
                v97 = *(a1 + 2276);
                if (v97 <= *(a1 + 2260))
                {
                  v98 = (*(a1 + 2288) + v97);
                  *(v98 + 3) = 0;
                  *v98 = 0;
                }
              }
            }
          }
        }

        else
        {
          v73 = *a4;
          *(a1 + 2276) = v70;
          v74 = sub_100166C7C(a1 + 144);
          if (!*(a1 + 168))
          {
            v75 = v74;
            v76 = *(a1 + 2280);
            if (v76)
            {
              memcpy(v74, v76, (*(a1 + 2272) + 2) + 7);
              sub_100166DB4(a1 + 144, *(a1 + 2280));
            }

            v77 = 0;
            *(a1 + 2280) = v75;
            *(a1 + 2272) = v70;
            *(a1 + 2288) = v75 + 2;
            v75[1] = 0;
            *(*(a1 + 2288) - 2) = 0;
            do
            {
              *(*(a1 + 2288) + *(a1 + 2272) + v77++) = 0;
            }

            while (v77 != 7);
            if (!*(a1 + 168))
            {
              memcpy(*(a1 + 2288), v73, v70);
              goto LABEL_146;
            }
          }
        }

        *a4 = *a4 + v70;
        *a3 -= v70;
        v99 = *(a1 + 2435);
        if (v99 >= 1)
        {
          *(a1 + 2435) = v99 - v70;
        }
      }

      if (!sub_10012F39C(a1, a5, a6, a7))
      {
        break;
      }

      if (*(a1 + 2435) == 255)
      {
        v84 = *(a1 + 8628);
        if (!v84)
        {
          goto LABEL_133;
        }

        if (v84 == 1 && !*(a1 + 8592))
        {
          *(a1 + 8628) = 0;
          *(a1 + 8584) = 0;
LABEL_133:
          *(a1 + 2435) = -2;
        }
      }
    }

    if (*(a1 + 8592))
    {
      return 1;
    }

    v100 = *(a1 + 8628);
    if (v100)
    {
      if (v100 == 1)
      {
        goto LABEL_241;
      }

      return 1;
    }

    if (!a2 && v70)
    {
      return 1;
    }

    v101 = *a3;
    if (*a3)
    {
      v102 = 0;
    }

    else
    {
      v102 = a2 == 2;
    }

    if (*a3)
    {
      v103 = 0;
    }

    else
    {
      v103 = a2 == 1;
    }

    if (!v102 && !*(a1 + 2435))
    {
      *(a1 + 2435) = -1;
      v103 = 1;
    }

    if (!*(a1 + 24))
    {
      v104 = *(a1 + 2248) - *(a1 + 2344);
      v105 = v104 | v101;
      v106 = v104 + v101;
      if (v106 >= 0x40000000)
      {
        v106 = 0x40000000;
      }

      if (v105 >> 30)
      {
        v106 = 0x40000000;
      }

      *(a1 + 24) = v106;
    }

    result = sub_10012F4D4(a1, v102, v103, (a1 + 8592), (a1 + 8584), v78, v79, v80, v81, v82, v83);
    if (!result)
    {
      return result;
    }

    if (v102 || v103)
    {
      if (v102)
      {
        v107 = 2;
      }

      else
      {
        v107 = 1;
      }

      *(a1 + 8628) = v107;
    }
  }
}

uint64_t sub_10012F39C(uint64_t a1, size_t *a2, void **a3, size_t *a4)
{
  if (*(a1 + 8628) == 1 && (v8 = *(a1 + 2434), *(a1 + 2434)))
  {
    v9 = *(a1 + 2432);
    *(a1 + 2432) = 0;
    *(a1 + 2434) = 0;
    v10 = (6 << v8) | v9;
    v11 = *(a1 + 8584);
    if (v11)
    {
      v12 = (v11 + *(a1 + 8592));
    }

    else
    {
      v12 = (a1 + 8608);
      *(a1 + 8584) = a1 + 8608;
    }

    *v12 = v10;
    if (v8 >= 3)
    {
      v12[1] = HIBYTE(v10);
      if (v8 >= 0xB)
      {
        v12[2] = (6 << v8) >> 16;
      }
    }

    *(a1 + 8592) += (v8 + 13) >> 3;
  }

  else
  {
    v13 = *(a1 + 8592);
    if (!v13 || !*a2)
    {
      return 0;
    }

    if (v13 >= *a2)
    {
      v14 = *a2;
    }

    else
    {
      v14 = *(a1 + 8592);
    }

    memcpy(*a3, *(a1 + 8584), v14);
    *a3 = *a3 + v14;
    *a2 -= v14;
    *(a1 + 8584) += v14;
    *(a1 + 8592) -= v14;
    v15 = *(a1 + 8600) + v14;
    *(a1 + 8600) = v15;
    if (a4)
    {
      *a4 = v15;
    }
  }

  return 1;
}

uint64_t sub_10012F4D4(uint64_t a1, uint64_t a2, int a3, unint64_t *a4, char **a5, __n128 a6, int32x4_t a7, double a8, double a9, double a10, int32x4_t a11)
{
  v11 = *(a1 + 2248);
  v12 = *(a1 + 2344);
  v13 = v11 - v12;
  if (v12 >> 30 >= 3)
  {
    v14 = (((2 * v12) >> 1) & 0xC0000000 | v12 & 0x3FFFFFFF) ^ 0x80000000;
  }

  else
  {
    v14 = v12;
  }

  v264 = v14;
  v265 = v11 - v12;
  if (*(a1 + 8632))
  {
    return 0;
  }

  v16 = a4;
  v20 = *(a1 + 2288);
  v21 = *(a1 + 2260);
  if (a2)
  {
    *(a1 + 8632) = 1;
  }

  if (v13 > 1 << *(a1 + 12))
  {
    return 0;
  }

  v23 = *(a1 + 4);
  v260 = v21;
  if (v23 != 1)
  {
    goto LABEL_13;
  }

  if (!*(a1 + 8568))
  {
    *(a1 + 8568) = sub_100166C7C(a1 + 144);
    *(a1 + 8576) = sub_100166C7C(a1 + 144);
    if (*(a1 + 168))
    {
      return 0;
    }

    v23 = *(a1 + 4);
    v16 = a4;
    v21 = v260;
LABEL_13:
    if (v23 <= 1)
    {
      goto LABEL_14;
    }

    v33 = (v13 >> 1) + *(a1 + 2312) + 1;
    if (v33 > *(a1 + 2296))
    {
      v34 = v16;
      v35 = v33 + (v13 >> 2) + 16;
      *(a1 + 2296) = v35;
      if (v35)
      {
        v36 = sub_100166C7C(a1 + 144);
      }

      else
      {
        v36 = 0;
      }

      if (*(a1 + 168))
      {
        return 0;
      }

      v37 = *(a1 + 2304);
      if (v37)
      {
        memcpy(v36, v37, 16 * *(a1 + 2312));
        sub_100166DB4(a1 + 144, *(a1 + 2304));
      }

      *(a1 + 2304) = v36;
      v16 = v34;
      v21 = v260;
    }

    v259 = (a1 + 2456);
    v38 = v13;
    if (a2)
    {
      v39 = v14 == 0;
    }

    else
    {
      v39 = 0;
    }

    v40 = v39;
    if (*(a1 + 2456))
    {
      if (*(a1 + 2500))
      {
        goto LABEL_192;
      }

LABEL_145:
      v65 = *(a1 + 2480);
      if (v65 <= 34)
      {
        if (v65 <= 4)
        {
          switch(v65)
          {
            case 2:
              v70 = *(a1 + 2512);
              if (v38 <= 0x800 && v40)
              {
                if (!v38)
                {
                  goto LABEL_190;
                }

                v71 = v20;
                v72 = v38;
                do
                {
                  v73 = *v71;
                  v71 = (v71 + 1);
                  *(v70 + (((0xBD1E35A7BD000000 * v73) >> 46) & 0x3FFFC)) = 0;
                  --v72;
                }

                while (v72);
                goto LABEL_189;
              }

              break;
            case 3:
              v70 = *(a1 + 2512);
              if (v38 <= 0x800 && v40)
              {
                if (!v38)
                {
                  goto LABEL_190;
                }

                v74 = v20;
                v75 = v38;
                do
                {
                  v76 = *v74;
                  v74 = (v74 + 1);
                  v77 = (0xBD1E35A7BD000000 * v76) >> 48;
                  v70[v77] = 0;
                  v70[(v77 + 8)] = 0;
                  --v75;
                }

                while (v75);
                goto LABEL_189;
              }

              break;
            case 4:
              v66 = v16;
              sub_1001312A8(a1 + 2504, v40, v38, v20);
              goto LABEL_188;
            default:
              goto LABEL_189;
          }

          v66 = v16;
          bzero(v70, 0x40000uLL);
          goto LABEL_188;
        }

        switch(v65)
        {
          case 5:
            v66 = v16;
            sub_100131308((a1 + 2504), v40, v38, v20);
            goto LABEL_188;
          case 6:
            v66 = v16;
            sub_100131358((a1 + 2504), v40, v38, v20);
            goto LABEL_188;
          case 10:
            v67 = 0;
            v68 = *(a1 + 2512);
            v69 = (a1 + 2520);
            a6 = vld1q_dup_f32(v69);
            do
            {
              *(v68 + v67) = a6;
              v67 += 16;
            }

            while (v67 != 0x80000);
            break;
        }
      }

      else
      {
        if (v65 > 41)
        {
          if (v65 > 54)
          {
            if (v65 == 55)
            {
              v66 = v16;
              sub_10013167C(a1 + 2504, v40, v38, v20);
            }

            else
            {
              if (v65 != 65)
              {
                goto LABEL_189;
              }

              v66 = v16;
              sub_100131738(a1 + 2504, v40, v38, v20);
            }
          }

          else if (v65 == 42)
          {
            v66 = v16;
            sub_100131454((a1 + 2504), v40, v38, v20);
          }

          else
          {
            if (v65 != 54)
            {
              goto LABEL_189;
            }

            v66 = v16;
            sub_100131504(a1 + 2504, v40, v38, v20);
          }

          goto LABEL_188;
        }

        if (v65 == 35)
        {
          v66 = v16;
          sub_100131568(a1 + 2504, v40, v38, v20);
          goto LABEL_188;
        }

        if (v65 == 40 || v65 == 41)
        {
          v66 = v16;
          sub_1001313B8(a1 + 2504, v40, v38, v20);
LABEL_188:
          v16 = v66;
          v21 = v260;
        }
      }

LABEL_189:
      if (v14)
      {
LABEL_191:
        *(a1 + 2500) = 1;
LABEL_192:
        v258 = v16;
        if (*(a1 + 168))
        {
          goto LABEL_193;
        }

        v89 = *(a1 + 2480);
        if (v89 <= 34)
        {
          if (v89 > 4)
          {
            if (v89 == 5)
            {
              if (v38 >= 3 && v14 >= 3)
              {
                v228 = (506832829 * *(v20 + ((v14 - 3) & v21))) >> *(a1 + 2520);
                v229 = *(a1 + 2544);
                v230 = *(v229 + 2 * v228);
                v231 = *(a1 + 2552);
                *(v231 + 4 * (*(a1 + 2524) & v230) + 4 * (v228 << *(a1 + 2528))) = v14 - 3;
                *(v229 + 2 * v228) = v230 + 1;
                v232 = (506832829 * *(v20 + ((v14 - 2) & v21))) >> *(a1 + 2520);
                v233 = *(v229 + 2 * v232);
                *(v231 + 4 * (*(a1 + 2524) & v233) + 4 * (v232 << *(a1 + 2528))) = v14 - 2;
                *(v229 + 2 * v232) = v233 + 1;
                v234 = (506832829 * *(v20 + ((v14 - 1) & v21))) >> *(a1 + 2520);
                v235 = *(v229 + 2 * v234);
                *(v231 + 4 * (*(a1 + 2524) & v235) + 4 * (v234 << *(a1 + 2528))) = v14 - 1;
                *(v229 + 2 * v234) = v235 + 1;
              }
            }

            else if (v89 == 6)
            {
              if (v38 >= 7 && v14 >= 3)
              {
                v236 = *(a1 + 2560);
                v237 = *(a1 + 2568);
                v238 = *(a1 + 2528);
                v239 = (0x1FE35A7BD3579BD3 * (*(v20 + ((v14 - 3) & v21)) & v238)) >> *(a1 + 2520);
                v240 = *(v236 + 2 * v239);
                v241 = *(a1 + 2536) & v240;
                v242 = v239 << *(a1 + 2540);
                *(v236 + 2 * v239) = v240 + 1;
                *(v237 + 4 * v241 + 4 * v242) = v14 - 3;
                v243 = (0x1FE35A7BD3579BD3 * (*(v20 + ((v14 - 2) & v21)) & v238)) >> *(a1 + 2520);
                v244 = *(v236 + 2 * v243);
                v245 = *(a1 + 2536) & v244;
                v246 = *(a1 + 2540);
                *(v236 + 2 * v243) = v244 + 1;
                *(v237 + 4 * v245 + 4 * (v243 << v246)) = v14 - 2;
                v247 = (0x1FE35A7BD3579BD3 * (*(v20 + ((v14 - 1) & v21)) & v238)) >> *(a1 + 2520);
                LODWORD(v238) = *(v236 + 2 * v247);
                v248 = v247 << *(a1 + 2540);
                v249 = *(a1 + 2536) & v238;
                *(v236 + 2 * v247) = v238 + 1;
                *(v237 + 4 * v249 + 4 * v248) = v14 - 1;
              }
            }

            else if (v89 == 10 && v38 >= 3 && v14 >= 0x80)
            {
              v131 = v14 - 127;
              v132 = v14 - 127 + v38;
              if (v14 < v132)
              {
                v132 = v14;
              }

              v257 = v132;
              if (v131 < v132)
              {
                v133 = *(a1 + 2504);
                v256 = *(a1 + 2512);
                v134 = *(a1 + 2528);
                do
                {
                  v135 = v14 - v131;
                  if (v14 - v131 <= 0xF)
                  {
                    v135 = 15;
                  }

                  v136 = (v20 + (v131 & v21));
                  v137 = (506832829 * *v136) >> 15;
                  v138 = *(v256 + 4 * v137);
                  v139 = 2 * (v133 & v131);
                  v140 = v139 | 1;
                  *(v256 + 4 * v137) = v131;
                  if (v131 != v138)
                  {
                    v142 = 0;
                    v143 = 0;
                    v144 = v133 - v135;
                    v145 = 64;
                    do
                    {
                      if (v131 - v138 > v144 || v145 == 0)
                      {
                        break;
                      }

                      v147 = v138 & v21;
                      if (v143 >= v142)
                      {
                        v148 = v142;
                      }

                      else
                      {
                        v148 = v143;
                      }

                      v149 = v136 + v148;
                      v150 = v20 + v147;
                      v151 = v20 + v147 + v148;
                      v152 = 128 - v148;
                      if (128 - v148 < 8)
                      {
                        v157 = 0;
LABEL_292:
                        v161 = v152 & 7;
                        if ((v152 & 7) != 0)
                        {
                          v162 = v157 | v161;
                          while (v149[v157] == *v151)
                          {
                            ++v151;
                            ++v157;
                            if (!--v161)
                            {
                              v157 = v162;
                              break;
                            }
                          }
                        }
                      }

                      else
                      {
                        v153 = a5;
                        v154 = v20;
                        v155 = 0;
                        v156 = v152 >> 3;
                        v157 = v152 & 0xFFFFFFFFFFFFFFF8;
                        while (1)
                        {
                          v158 = *&v151[v155];
                          v159 = *&v149[v155];
                          if (v158 != v159)
                          {
                            break;
                          }

                          v155 += 8;
                          if (!--v156)
                          {
                            v151 += v152 & 0xFFFFFFFFFFFFFFF8;
                            v20 = v154;
                            a5 = v153;
                            v21 = v260;
                            goto LABEL_292;
                          }
                        }

                        v157 = v155 + (__clz(__rbit64(v159 ^ v158)) >> 3);
                        v20 = v154;
                        a5 = v153;
                        v21 = v260;
                      }

                      if (v157 + v148 >= 0x80)
                      {
                        v163 = (v134 + 8 * (v138 & v133));
                        *(v134 + 4 * v139) = *v163;
                        v141 = v163[1];
                        goto LABEL_269;
                      }

                      v160 = 2 * (v138 & v133);
                      if (*(v136 + v157 + v148) <= v150[v157 + v148])
                      {
                        *(v134 + 4 * v140) = v138;
                        v140 = 2 * (v138 & v133);
                        v142 = v157 + v148;
                      }

                      else
                      {
                        *(v134 + 4 * v139) = v138;
                        v139 = v160 | 1;
                        v143 = v157 + v148;
                        v160 |= 1uLL;
                      }

                      v138 = *(v134 + 4 * v160);
                      --v145;
                    }

                    while (v131 != v138);
                  }

                  v141 = *(a1 + 2520);
                  *(v134 + 4 * v139) = v141;
LABEL_269:
                  *(v134 + 4 * v140) = v141;
                  ++v131;
                }

                while (v131 != v257);
              }
            }
          }

          else
          {
            if (v89 != 2)
            {
              if (v89 == 3)
              {
                if (v38 < 7 || v14 < 3)
                {
                  goto LABEL_193;
                }

                v90 = *(a1 + 2512);
                *(v90 + 4 * (((0xBD1E35A7BD000000 * *(v20 + ((v14 - 3) & v21))) >> 48) + ((v14 - 3) & 8))) = v14 - 3;
                *(v90 + 4 * (((0xBD1E35A7BD000000 * *(v20 + ((v14 - 2) & v21))) >> 48) + ((v14 - 2) & 8))) = v14 - 2;
                v91 = v14 - 1;
                v92 = (((0xBD1E35A7BD000000 * *(v20 + ((v14 - 1) & v21))) >> 48) + ((v14 - 1) & 8));
              }

              else
              {
                if (v89 != 4 || v38 < 7 || v14 < 3)
                {
                  goto LABEL_193;
                }

                v90 = *(a1 + 2512);
                *(v90 + 4 * (((((0xBD1E35A7BD000000 * *(v20 + ((v14 - 3) & v21))) >> 32) >> 15) + ((v14 - 3) & 0x18)) & 0x1FFFF)) = v14 - 3;
                *(v90 + 4 * (((((0xBD1E35A7BD000000 * *(v20 + ((v14 - 2) & v21))) >> 32) >> 15) + ((v14 - 2) & 0x18)) & 0x1FFFF)) = v14 - 2;
                v91 = v14 - 1;
                v92 = ((((0xBD1E35A7BD000000 * *(v20 + ((v14 - 1) & v21))) >> 32) >> 15) + ((v14 - 1) & 0x18)) & 0x1FFFF;
              }

LABEL_372:
              *(v90 + 4 * v92) = v91;
              goto LABEL_193;
            }

            if (v38 >= 7 && v14 >= 3)
            {
              v227 = *(a1 + 2512);
              *(v227 + (((0xBD1E35A7BD000000 * *(v20 + ((v14 - 3) & v21))) >> 46) & 0x3FFFC)) = v14 - 3;
              *(v227 + (((0xBD1E35A7BD000000 * *(v20 + ((v14 - 2) & v21))) >> 46) & 0x3FFFC)) = v14 - 2;
              *(v227 + (((0xBD1E35A7BD000000 * *(v20 + ((v14 - 1) & v21))) >> 46) & 0x3FFFC)) = v14 - 1;
            }
          }

LABEL_193:
          v78 = *(a1 + 2336);
          if (v78 > 0xBFFFFFFF)
          {
            v79 = (((2 * v78) >> 1) & 0xC0000000 | v78 & 0x3FFFFFFF) ^ 0x80000000;
          }

          else
          {
            v79 = v78;
          }

          if (*(a1 + 4) < 10 || sub_100132880(v20, v79, v21, *(a1 + 2248) - v78, 0.75))
          {
            v80 = 2;
          }

          else
          {
            v80 = 3;
          }

          if (*(a1 + 168))
          {
            return 0;
          }

          v81 = (a1 + 2312);
          v82 = v80 << 9;
          v261 = (a1 + 2312);
          if (*(a1 + 2312) && !*(a1 + 2328))
          {
            sub_1001319FC(a1, &v265, &v264);
            v81 = (a1 + 2312);
          }

          v83 = *(a1 + 4);
          v84 = (a1 + 2328);
          v85 = (*(a1 + 2304) + 16 * *(a1 + 2312));
          v86 = (a1 + 2320);
          if (v83 == 11)
          {
            v93 = &byte_1003E3330[v82];
            v88 = (a1 + 2352);
            sub_10012B98C(a1 + 144, v265, v264, v20, v21, v93, a1, v259, (a1 + 2352), (a1 + 2328), v85, v81, (a1 + 2320));
          }

          else
          {
            if (v83 != 10)
            {
              v94 = &byte_1003E3330[v82];
              v88 = (a1 + 2352);
              sub_10014F8D0(v265, v264, v20, v21, v94, a1, v259, (a1 + 2352), a6.n128_f64[0], a7, a8, a9, a10, a11, (a1 + 2328), v85, v81, (a1 + 2320));
              goto LABEL_226;
            }

            v87 = &byte_1003E3330[v82];
            v88 = (a1 + 2352);
            sub_10012B82C(a1 + 144, v265, v264, v20, v21, v87, a1, v259, a1 + 2352, (a1 + 2328), v85, v81, (a1 + 2320));
          }

          if (*(a1 + 168))
          {
            return 0;
          }

LABEL_226:
          v95 = *(a1 + 8);
          v96 = *(a1 + 12);
          if (v95 <= v96)
          {
            v95 = *(a1 + 12);
          }

          if (v95 >= 23)
          {
            v97 = 23;
          }

          else
          {
            v97 = v95;
          }

          v98 = *(a1 + 2248);
          v99 = *(a1 + 2336);
          if (*(a1 + 4) > 3)
          {
            v101 = 0;
            v100 = (a1 + 2312);
          }

          else
          {
            v100 = (a1 + 2312);
            v101 = *v261 + *v86 > 0x2FFE;
          }

          v102 = v98 - v99;
          if (a3 | a2 || v101 || (v103 = 1 << (v97 + 1), v102 + (1 << v96) > v103) || *v86 >= v103 >> 3 || *v100 >= v103 >> 3)
          {
            v104 = *v84;
            if (*v84)
            {
              v105 = *(a1 + 2304);
              v106 = *(a1 + 2312);
              *(a1 + 2312) = v106 + 1;
              v107 = v105 + 16 * v106;
              *v107 = v104;
              *(v107 + 4) = 0x8000000;
              *(v107 + 14) = 16;
              if (v104 > 5)
              {
                if (v104 > 0x81)
                {
                  if (v104 > 0x841)
                  {
                    if (v104 >> 1 >= 0xC21)
                    {
                      if (v104 < 0x5842)
                      {
                        LOWORD(v108) = 22;
                      }

                      else
                      {
                        LOWORD(v108) = 23;
                      }
                    }

                    else
                    {
                      LOWORD(v108) = 21;
                    }
                  }

                  else
                  {
                    v108 = (__clz(v104 - 66) ^ 0x1F) + 10;
                  }
                }

                else
                {
                  v164 = (__clz(v104 - 2) ^ 0x1F) - 1;
                  v108 = ((v104 - 2) >> v164) + 2 * v164 + 2;
                }
              }

              else
              {
                LOWORD(v108) = v104;
              }

              *(v107 + 12) = ((((0x520D40u >> (6 * (v108 >> 3))) & 0xC0) + 192 * (v108 >> 3)) & 0xFFC7 | (8 * (v108 & 7))) + 66;
              *v86 += v104;
              *v84 = 0;
            }

            if (a2 || v98 != v99)
            {
              v250 = v98 - v99;
              v251 = sub_10013185C(a1, (2 * v102 + 503));
              v263 = *(a1 + 2434);
              if (!*(a1 + 168))
              {
                v252 = v251;
                *v251 = *(a1 + 2432);
                v251[1] = *(a1 + 2433);
                sub_100131C40(a1 + 144, v20, v21, *(a1 + 2336), v250, a2, v80, a1, *(a1 + 2436), HIBYTE(*(a1 + 2436)), *(a1 + 2320), *(a1 + 2312), *(a1 + 2304), (a1 + 2416), v88, &v263, v251);
                if (!*(a1 + 168))
                {
                  v253 = v263;
                  v254 = v263 >> 3;
                  *(a1 + 2432) = v252[v263 >> 3];
                  *(a1 + 2434) = v253 & 7;
                  *(a1 + 2336) = *(a1 + 2248);
                  if (sub_1001319B4(a1))
                  {
                    *(a1 + 2500) = 0;
                  }

                  v255 = *(a1 + 2336);
                  if (v255)
                  {
                    *(a1 + 2436) = *(v20 + ((v255 - 1) & v21));
                    if (v255 != 1)
                    {
                      *(a1 + 2437) = *(v20 + ((v255 - 2) & v21));
                    }
                  }

                  *v261 = 0;
                  *(a1 + 2320) = 0;
                  *(a1 + 2416) = *v88;
                  *a5 = v252;
                  *v258 = v254;
                  return 1;
                }
              }

              return 0;
            }
          }

          else if (sub_1001319B4(a1))
          {
            *(a1 + 2500) = 0;
          }

          *v258 = 0;
          return 1;
        }

        if (v89 <= 41)
        {
          if (v89 != 35)
          {
            if ((v89 == 40 || v89 == 41) && v38 >= 3 && v14 >= 3)
            {
              v109 = *(a1 + 2520);
              v110 = (506832829 * *(v20 + ((v14 - 3) & v21))) >> 17;
              v111 = v109 + 2 * v110;
              v112 = *(a1 + 2504);
              v113 = v109 + 4 * v112;
              v114 = v112 + 1;
              *(a1 + 2504) = v112 + 1;
              v115 = v14 - 3 - *(v109 + 4 * v110);
              *(v109 + (v14 - 3) + 196608) = v110;
              v116 = -1;
              if (v115 >= 0xFFFF)
              {
                LOWORD(v115) = -1;
              }

              *(v113 + 0x40000) = v115;
              v117 = *(v111 + 0x20000);
              *(v109 + 4 * v110) = v14 - 3;
              *(v113 + 262146) = v117;
              *(v111 + 0x20000) = v112;
              v118 = *(a1 + 2520);
              v119 = (506832829 * *(v20 + ((v14 - 2) & v21))) >> 17;
              v120 = v118 + 2 * v119;
              v121 = v118 + 4 * v114;
              *(a1 + 2504) = v112 + 2;
              v122 = v14 - 2 - *(v118 + 4 * v119);
              *(v118 + (v14 - 2) + 196608) = v119;
              if (v122 >= 0xFFFF)
              {
                LOWORD(v122) = -1;
              }

              *(v121 + 0x40000) = v122;
              v123 = *(v120 + 0x20000);
              *(v118 + 4 * v119) = v14 - 2;
              *(v120 + 0x20000) = v114;
              *(v121 + 262146) = v123;
              v124 = *(a1 + 2520);
              v125 = (506832829 * *(v20 + ((v14 - 1) & v21))) >> 17;
              v126 = v124 + 2 * v125;
              v127 = *(a1 + 2504);
              v128 = v124 + 4 * v127;
              *(a1 + 2504) = v127 + 1;
              v129 = *(v124 + 4 * v125);
              *(v124 + (v14 - 1) + 196608) = v125;
              v130 = *(v126 + 0x20000);
              if (v14 - 1 - v129 < 0xFFFF)
              {
                v116 = v14 - 1 - v129;
              }

              *(v128 + 0x40000) = v116;
              *(v128 + 262146) = v130;
              *(v124 + 4 * v125) = v14 - 1;
              *(v126 + 0x20000) = v127;
            }

            goto LABEL_193;
          }

          if (v38 >= 7 && v14 >= 3)
          {
            v218 = *(a1 + 2512);
            *(v218 + 4 * (((0xBD1E35A7BD000000 * *(v20 + ((v14 - 3) & v21))) >> 48) + ((v14 - 3) & 8))) = v14 - 3;
            *(v218 + 4 * (((0xBD1E35A7BD000000 * *(v20 + ((v14 - 2) & v21))) >> 48) + ((v14 - 2) & 8))) = v14 - 2;
            *(v218 + 4 * (((0xBD1E35A7BD000000 * *(v20 + ((v14 - 1) & v21))) >> 48) + ((v14 - 1) & 8))) = v14 - 1;
          }

          v219 = 4 - (v14 & 3);
          if ((v14 & 3) != 0)
          {
            v220 = 4 - (v14 & 3);
          }

          else
          {
            v220 = 0;
          }

          v59 = v38 >= v219;
          v221 = v38 - v219;
          if (!v59)
          {
            v221 = 0;
          }

          if ((v14 & 3) != 0)
          {
            v222 = v221;
          }

          else
          {
            v222 = v38;
          }

          v212 = v220 + v14;
          v223 = (v220 + v14) & v21;
          v224 = v21 - v223;
          if (v222 < v21 - v223)
          {
            v224 = v222;
          }

          if (v224 >= 0x20)
          {
            v225 = 0;
            v216 = 0;
            v226 = v20 + v223;
            do
            {
              v216 = v226[v225] + v216 * *(a1 + 2548) + 1;
              v59 = v225 >= 0x1C;
              v225 += 4;
            }

            while (!v59);
            goto LABEL_361;
          }
        }

        else
        {
          if (v89 <= 54)
          {
            if (v89 != 42)
            {
              if (v89 != 54 || v38 < 7 || v14 < 3)
              {
                goto LABEL_193;
              }

              v90 = *(a1 + 2512);
              *(v90 + 4 * (((((0x35A7BD1E35A7BD00 * *(v20 + ((v14 - 3) & v21))) >> 32) >> 12) + ((v14 - 3) & 0x18)) & 0xFFFFF)) = v14 - 3;
              *(v90 + 4 * (((((0x35A7BD1E35A7BD00 * *(v20 + ((v14 - 2) & v21))) >> 32) >> 12) + ((v14 - 2) & 0x18)) & 0xFFFFF)) = v14 - 2;
              v91 = v14 - 1;
              v92 = ((((0x35A7BD1E35A7BD00 * *(v20 + ((v14 - 1) & v21))) >> 32) >> 12) + ((v14 - 1) & 0x18)) & 0xFFFFF;
              goto LABEL_372;
            }

            if (v38 >= 3 && v14 >= 3)
            {
              v182 = a1 + 2504;
              v183 = *(a1 + 3536);
              v184 = (506832829 * *(v20 + ((v14 - 3) & v21))) >> 17;
              v185 = v183 + 2 * v184;
              v186 = *(a1 + 2504 + 2 * (v184 & 0x1FF));
              *(a1 + 2504 + 2 * (v184 & 0x1FF)) = v186 + 1;
              v187 = v186 & 0x1FF;
              v188 = v14 - 3 - *(v183 + 4 * v184);
              *(v183 + (v14 - 3) + 196608) = v184;
              if (v188 >= 0xFFFF)
              {
                v189 = -1;
              }

              else
              {
                v189 = v188;
              }

              v190 = (v183 + ((v184 & 0x1FF) << 11) + 4 * v187 + 0x40000);
              *v190 = v189;
              v190[1] = *(v185 + 0x20000);
              *(v183 + 4 * v184) = v14 - 3;
              *(v185 + 0x20000) = v187;
              v191 = *(a1 + 3536);
              v192 = (506832829 * *(v20 + ((v14 - 2) & v21))) >> 17;
              v193 = v191 + 2 * v192;
              v194 = *(v182 + 2 * (v192 & 0x1FF));
              *(v182 + 2 * (v192 & 0x1FF)) = v194 + 1;
              v195 = v194 & 0x1FF;
              v196 = v14 - 2 - *(v191 + 4 * v192);
              *(v191 + (v14 - 2) + 196608) = v192;
              if (v196 >= 0xFFFF)
              {
                v197 = -1;
              }

              else
              {
                v197 = v196;
              }

              v198 = v191 + ((v192 & 0x1FF) << 11) + 4 * v195 + 0x40000;
              *v198 = v197;
              *(v198 + 2) = *(v193 + 0x20000);
              *(v191 + 4 * v192) = v14 - 2;
              *(v193 + 0x20000) = v195;
              v199 = *(a1 + 3536);
              v200 = (506832829 * *(v20 + ((v14 - 1) & v21))) >> 17;
              v201 = v199 + 2 * v200;
              LOWORD(v198) = *(v182 + 2 * (v200 & 0x1FF));
              *(v182 + 2 * (v200 & 0x1FF)) = v198 + 1;
              v202 = v198 & 0x1FF;
              v203 = v14 - 1 - *(v199 + 4 * v200);
              *(v199 + (v14 - 1) + 196608) = v200;
              if (v203 >= 0xFFFF)
              {
                v204 = -1;
              }

              else
              {
                v204 = v203;
              }

              v205 = *(v201 + 0x20000);
              v206 = (v199 + ((v200 & 0x1FF) << 11) + 4 * v202 + 0x40000);
              *v206 = v204;
              v206[1] = v205;
              *(v199 + 4 * v200) = v14 - 1;
              *(v201 + 0x20000) = v202;
            }

            goto LABEL_193;
          }

          if (v89 != 55)
          {
            if (v89 == 65)
            {
              if (v38 >= 7 && v14 >= 3)
              {
                v165 = *(a1 + 2560);
                v166 = *(a1 + 2568);
                v167 = *(a1 + 2528);
                v168 = (0x1FE35A7BD3579BD3 * (*(v20 + ((v14 - 3) & v21)) & v167)) >> *(a1 + 2520);
                v169 = *(v165 + 2 * v168);
                v170 = *(a1 + 2536) & v169;
                v171 = v168 << *(a1 + 2540);
                *(v165 + 2 * v168) = v169 + 1;
                *(v166 + 4 * v170 + 4 * v171) = v14 - 3;
                v172 = (0x1FE35A7BD3579BD3 * (*(v20 + ((v14 - 2) & v21)) & v167)) >> *(a1 + 2520);
                v173 = *(v165 + 2 * v172);
                v174 = *(a1 + 2536) & v173;
                v175 = *(a1 + 2540);
                *(v165 + 2 * v172) = v173 + 1;
                *(v166 + 4 * v174 + 4 * (v172 << v175)) = v14 - 2;
                v176 = (0x1FE35A7BD3579BD3 * (*(v20 + ((v14 - 1) & v21)) & v167)) >> *(a1 + 2520);
                LODWORD(v167) = *(v165 + 2 * v176);
                v177 = v176 << *(a1 + 2540);
                v178 = *(a1 + 2536) & v167;
                *(v165 + 2 * v176) = v167 + 1;
                *(v166 + 4 * v178 + 4 * v177) = v14 - 1;
              }

              v179 = v21 - (v21 & v14);
              if (v179 >= v38)
              {
                v179 = v38;
              }

              if (v179 >= 0x20)
              {
                v180 = 0;
                v181 = 0;
                do
                {
                  v181 = *(v20 + (v21 & v14) + v180++) + v181 * *(a1 + 2604) + 1;
                }

                while (v180 != 32);
                *(a1 + 2576) = v181;
              }

              *(a1 + 2592) = v14;
            }

            goto LABEL_193;
          }

          if (v38 >= 7 && v14 >= 3)
          {
            v207 = *(a1 + 2512);
            *(v207 + 4 * (((((0x35A7BD1E35A7BD00 * *(v20 + ((v14 - 3) & v21))) >> 32) >> 12) + ((v14 - 3) & 0x18)) & 0xFFFFF)) = v14 - 3;
            *(v207 + 4 * (((((0x35A7BD1E35A7BD00 * *(v20 + ((v14 - 2) & v21))) >> 32) >> 12) + ((v14 - 2) & 0x18)) & 0xFFFFF)) = v14 - 2;
            *(v207 + 4 * (((((0x35A7BD1E35A7BD00 * *(v20 + ((v14 - 1) & v21))) >> 32) >> 12) + ((v14 - 1) & 0x18)) & 0xFFFFF)) = v14 - 1;
          }

          v208 = 4 - (v14 & 3);
          if ((v14 & 3) != 0)
          {
            v209 = 4 - (v14 & 3);
          }

          else
          {
            v209 = 0;
          }

          v59 = v38 >= v208;
          v210 = v38 - v208;
          if (!v59)
          {
            v210 = 0;
          }

          if ((v14 & 3) != 0)
          {
            v211 = v210;
          }

          else
          {
            v211 = v38;
          }

          v212 = v209 + v14;
          v213 = (v209 + v14) & v21;
          v214 = v21 - v213;
          if (v211 < v21 - v213)
          {
            v214 = v211;
          }

          if (v214 >= 0x20)
          {
            v215 = 0;
            v216 = 0;
            v217 = v20 + v213;
            do
            {
              v216 = v217[v215] + v216 * *(a1 + 2548) + 1;
              v59 = v215 >= 0x1C;
              v215 += 4;
            }

            while (!v59);
LABEL_361:
            *(a1 + 2520) = v216;
          }
        }

        *(a1 + 2536) = v212;
        goto LABEL_193;
      }

LABEL_190:
      a6.n128_u64[0] = 0;
      *(a1 + 2464) = 0u;
      goto LABEL_191;
    }

    v41 = *(a1 + 4);
    if (v41 < 10)
    {
      if (v41 == 4)
      {
        if (*(a1 + 24) >= 0x100000uLL)
        {
          v41 = 54;
        }
      }

      else if (v41 > 4)
      {
        v44 = *(a1 + 8);
        if (v44 > 16)
        {
          v55 = v41 - 1;
          if (v44 < 0x13 || *(a1 + 24) < 0x100000uLL)
          {
            *(a1 + 48) = v55;
            if (v41 >= 9)
            {
              v58 = 16;
            }

            else
            {
              v58 = 10;
            }

            v59 = v41 >= 7;
            if (v41 < 7)
            {
              v60 = 14;
            }

            else
            {
              v60 = 15;
            }

            *(a1 + 40) = 5;
            *(a1 + 44) = v60;
            if (v59)
            {
              v61 = v58;
            }

            else
            {
              v61 = 4;
            }

            *(a1 + 56) = v61;
            v41 = 5;
          }

          else
          {
            a6.n128_u64[0] = 0xF00000006;
            *(a1 + 40) = 0xF00000006;
            *(a1 + 48) = v55;
            *(a1 + 52) = 5;
            if (v41 >= 9)
            {
              v56 = 16;
            }

            else
            {
              v56 = 10;
            }

            if (v41 >= 7)
            {
              v57 = v56;
            }

            else
            {
              v57 = 4;
            }

            *(a1 + 56) = v57;
            v41 = 6;
          }

LABEL_42:
          v42 = *(a1 + 8);
          if (v42 < 25)
          {
            v43 = 0;
            if (v41 > 34)
            {
              goto LABEL_90;
            }

            if (v41 <= 4)
            {
              if ((v41 - 2) >= 2 && v41 != 4)
              {
LABEL_91:
                *(a1 + 2456) = v43;
                if (*(a1 + 168))
                {
                  goto LABEL_192;
                }

                a6 = *(a1 + 40);
                *(a1 + 2480) = a6;
                *(a1 + 2496) = *(a1 + 56);
                v51 = *(a1 + 2480);
                if (v51 > 34)
                {
                  if (v51 <= 41)
                  {
                    if (v51 != 35)
                    {
                      if (v51 == 40 || v51 == 41)
                      {
                        *(a1 + 2528) = v259;
                        *(a1 + 2520) = v43;
                        v52 = *(a1 + 4);
                        if (v52 >= 7)
                        {
                          v53 = 7;
                        }

                        else
                        {
                          v53 = 8;
                        }

                        *(a1 + 2512) = (v53 << (v52 - 4));
                      }

                      goto LABEL_144;
                    }
                  }

                  else
                  {
                    if (v51 <= 54)
                    {
                      if (v51 == 42)
                      {
                        *(a1 + 3544) = v259;
                        *(a1 + 3536) = v43;
                        v62 = *(a1 + 4);
                        if (v62 >= 7)
                        {
                          v63 = 7;
                        }

                        else
                        {
                          v63 = 8;
                        }

                        *(a1 + 3528) = (v63 << (v62 - 4));
                        goto LABEL_144;
                      }

                      if (v51 != 54)
                      {
LABEL_144:
                        *(a1 + 2500) = 0;
                        goto LABEL_145;
                      }

                      goto LABEL_102;
                    }

                    if (v51 != 55)
                    {
                      if (v51 == 65)
                      {
                        *(a1 + 2672) = v259;
                        *(a1 + 2664) = v43;
                        a7 = *(a1 + 2472);
                        *(a1 + 2616) = *v259;
                        *(a1 + 2632) = a7;
                        a6 = *(a1 + 2488);
                        *(a1 + 2648) = a6;
                        *(a1 + 2680) = 1;
                        *(a1 + 2688) = a1;
                      }

                      goto LABEL_144;
                    }
                  }

                  *(a1 + 2616) = v259;
                  *(a1 + 2608) = v43;
                  a7 = *(a1 + 2472);
                  *(a1 + 2560) = *v259;
                  *(a1 + 2576) = a7;
                  a6 = *(a1 + 2488);
                  *(a1 + 2592) = a6;
                  *(a1 + 2624) = 1;
                  *(a1 + 2632) = a1;
                  goto LABEL_144;
                }

                if (v51 > 4)
                {
                  if (v51 == 5)
                  {
                    v64 = v16;
                    sub_100131210(v259, a1 + 2504);
                  }

                  else
                  {
                    if (v51 != 6)
                    {
                      if (v51 == 10)
                      {
                        *(a1 + 2512) = v43;
                        *(a1 + 2528) = v43 + 0x80000;
                        v54 = -1 << *(a1 + 8);
                        *(a1 + 2504) = ~v54;
                        *(a1 + 2520) = v54 + 1;
                      }

                      goto LABEL_144;
                    }

                    v64 = v16;
                    sub_100131250(v259, a1 + 2504);
                  }

                  v16 = v64;
                  v21 = v260;
                  goto LABEL_144;
                }

                if (v51 != 2 && v51 != 3 && v51 != 4)
                {
                  goto LABEL_144;
                }

LABEL_102:
                *(a1 + 2504) = v259;
                *(a1 + 2512) = v43;
                goto LABEL_144;
              }

              goto LABEL_90;
            }

            if (v41 != 5 && v41 != 6)
            {
LABEL_78:
              v48 = 1 << v42;
              if (1 << v42 >= v38)
              {
                v49 = v38;
              }

              else
              {
                v49 = 1 << v42;
              }

              if (v40)
              {
                v48 = v49;
              }

              v46 = 8 * v48 + 0x80000;
LABEL_85:
              if (!v46)
              {
                v43 = 0;
                goto LABEL_91;
              }

              goto LABEL_90;
            }
          }

          else
          {
            v43 = 0;
            if (v41 > 9)
            {
              if (v41 > 40)
              {
                if (v41 != 41 && v41 != 42)
                {
                  *(a1 + 40) = 55;
                }
              }

              else if (v41 == 10)
              {
                goto LABEL_78;
              }

LABEL_90:
              v50 = v16;
              v43 = sub_100166C7C(a1 + 144);
              v16 = v50;
              v21 = v260;
              goto LABEL_91;
            }

            if (v41 <= 3)
            {
              if (v41 != 2)
              {
                if (v41 != 3)
                {
                  goto LABEL_91;
                }

                *(a1 + 40) = 35;
              }

              goto LABEL_90;
            }

            if (v41 == 4)
            {
              goto LABEL_90;
            }

            if (v41 != 5)
            {
              *(a1 + 40) = 65;
              v46 = (2 << *(a1 + 44)) + 0x4000000 + (4 << *(a1 + 44) << *(a1 + 48));
              goto LABEL_85;
            }
          }

          v46 = (4 << *(a1 + 44) << *(a1 + 48)) + (2 << *(a1 + 44));
          goto LABEL_85;
        }

        if (v41 < 9)
        {
          v45 = 41;
        }

        else
        {
          v45 = 42;
        }

        if (v41 >= 7)
        {
          v41 = v45;
        }

        else
        {
          v41 = 40;
        }
      }
    }

    else
    {
      v41 = 10;
    }

    *(a1 + 40) = v41;
    goto LABEL_42;
  }

LABEL_14:
  v25 = a5;
  v26 = v20;
  v263 = *(a1 + 2434);
  *v262 = 0;
  if (!a2)
  {
    v27 = 0;
    if (v11 == v12)
    {
      goto LABEL_16;
    }
  }

  v28 = v16;
  v29 = sub_10013185C(a1, (2 * v13 + 503));
  if (*(a1 + 168))
  {
    return 0;
  }

  v30 = v29;
  *v29 = *(a1 + 2432);
  v29[1] = *(a1 + 2433);
  v31 = sub_1001318CC(a1, *(a1 + 4), v13, v262);
  if (*(a1 + 168))
  {
    return 0;
  }

  v32 = v260 & v14;
  if (*(a1 + 4))
  {
    sub_10013D848((a1 + 144), v26 + v32, v13, a2, *(a1 + 8568), *(a1 + 8576), v31, v262[0], &v263, v30);
  }

  else
  {
    sub_10012494C(a1 + 144, v26 + v32, v13, a2, v31, v262[0], (a1 + 7664), (a1 + 7792), (a1 + 8560), (a1 + 8048), &v263, v30);
  }

  if (*(a1 + 168))
  {
    return 0;
  }

  v47 = v263;
  v27 = v263 >> 3;
  *(a1 + 2432) = *(v30 + (v263 >> 3));
  *(a1 + 2434) = v47 & 7;
  sub_1001319B4(a1);
  *v25 = v30;
  v16 = v28;
LABEL_16:
  *v16 = v27;
  return 1;
}