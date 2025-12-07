void _PCSBackupGuitarfishGetRecoveredInnerBlobFromOuterBlobWithWrappingKey(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__5;
  v63 = __Block_byref_object_dispose__5;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__5;
  v57 = __Block_byref_object_dispose__5;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__5;
  v51 = __Block_byref_object_dispose__5;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__5;
  v45 = __Block_byref_object_dispose__5;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__5;
  v39 = __Block_byref_object_dispose__5;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__5;
  v33 = __Block_byref_object_dispose__5;
  v34 = 0;
  v26 = 0;
  v27[0] = &v26;
  v27[1] = 0x3032000000;
  v27[2] = __Block_byref_object_copy__5;
  v27[3] = __Block_byref_object_dispose__5;
  v28 = 0;
  v8 = dispatch_semaphore_create(0);
  v9 = *(v27[0] + 40);
  *(v27[0] + 40) = v8;

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = ___PCSBackupGuitarfishGetRecoveredInnerBlobFromOuterBlobWithWrappingKey_block_invoke;
  v25[3] = &unk_1E7B19BF0;
  v25[4] = &v53;
  v25[5] = &v59;
  v25[6] = &v26;
  _PCSBackupGuitarfishDecodeOuterRecord(v6, v25);
  dispatch_semaphore_wait(*(v27[0] + 40), 0xFFFFFFFFFFFFFFFFLL);
  v10 = (v54 + 5);
  if (v54[5] || (v11 = v60[5]) == 0)
  {
    v12 = 0;
  }

  else
  {
    obj = 0;
    v12 = _PCSGuitarfishUnwrapDataWithAESKey(v11, v5, &obj);
    objc_storeStrong(v10, obj);
    v18 = (v54 + 5);
    if (v54[5] || !v12)
    {
      v23 = v54[5];
      _PCSNSError(&v23, 209, @"Unable to unwrap inner asn blob", v13, v14, v15, v16, v17, v21);
      objc_storeStrong(v18, v23);
    }

    else
    {
      v19 = dispatch_semaphore_create(0);
      v20 = *(v27[0] + 40);
      *(v27[0] + 40) = v19;

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = ___PCSBackupGuitarfishGetRecoveredInnerBlobFromOuterBlobWithWrappingKey_block_invoke_2;
      v22[3] = &unk_1E7B19C18;
      v22[4] = &v53;
      v22[5] = &v47;
      v22[6] = &v41;
      v22[7] = &v35;
      v22[8] = &v29;
      v22[9] = &v26;
      _PCSBackupGuitarfishDecodeInnerRecord(v12, v22);
      _PCSBackupGuitarfishGetRecoveredInnerBlobFromOuterBlobWithWrappingKey_cold_1(v27);
    }
  }

  if (v54[5])
  {
    (*(v7 + 2))(v7, 0, 0, 0, 0);
  }

  else
  {
    (*(v7 + 2))(v7, v48[5], v42[5], v36[5], v30[5]);
  }

  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);
}

void sub_1B22D8F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v46 - 224), 8);
  _Block_object_dispose((v46 - 176), 8);
  _Block_object_dispose((v46 - 128), 8);
  _Unwind_Resume(a1);
}

void _PCSBackupGuitarfishDecodeOuterRecord(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v25 = 0;
  v26 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = decode_PCSBackupGuitarfishEscrow([v3 bytes], objc_msgSend(v3, "length"), &v27, &v26);
  if (v5)
  {
    v22 = v5;
    v23 = "decode PCSBackupGuitarfishEscrow";
  }

  else
  {
    v6 = v26;
    if (v6 == [v3 length])
    {
      goto LABEL_3;
    }

    v23 = "size PCSBackupGuitarfishEscrow";
    v22 = 1859794442;
  }

  _PCSErrorASN1(&v25, v23, v22);
LABEL_3:
  v7 = v25;
  if (v25)
  {
    v24 = v25;
    v8 = [v3 length];
    _PCSNSError(&v24, 200, @"Unable to decode outer ASN; potentially missing. length: %lu", v9, v10, v11, v12, v13, v8);
    v14 = v24;

    (*(v4 + 2))(v4, 0, 0, 0, 0, v14);
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x1E695DEF0]);
    v14 = [v15 initWithBytes:*(&v27 + 1) length:v27];
    v16 = objc_alloc(MEMORY[0x1E695DEF0]);
    v17 = [v16 initWithBytes:*(&v28 + 1) length:v28];
    v18 = objc_alloc(MEMORY[0x1E695DEF0]);
    v19 = [v18 initWithBytes:*(&v29 + 1) length:v29];
    v20 = objc_alloc(MEMORY[0x1E695DEF0]);
    v21 = [v20 initWithBytes:*(&v30 + 1) length:v30];
    (*(v4 + 2))(v4, v14, v17, v19, v21, 0);
  }

  free_PCSBackupGuitarfishEscrow(&v27);
}

void _PCSBackupGuitarfishDecodeInnerRecord(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v36 = 0;
  v37 = 0;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = decode_PCSBackupGuitarfishEscrowContents([v3 bytes], objc_msgSend(v3, "length"), &v38, &v37);
  if (v5)
  {
    v30 = v5;
    v31 = "decode PCSBackupGuitarfishEscrowContents";
  }

  else
  {
    v6 = v37;
    if (v6 == [v3 length])
    {
      goto LABEL_3;
    }

    v31 = "size PCSBackupGuitarfishEscrowContents";
    v30 = 1859794442;
  }

  _PCSErrorASN1(&v36, v31, v30);
LABEL_3:
  v12 = v36;
  if (!v36)
  {
    if (v39)
    {
      v14 = objc_alloc(MEMORY[0x1E695DEF0]);
      v15 = [v14 initWithBytes:*(&v39 + 1) length:v39];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Decoded inner record with empty mnemonic data", buf, 2u);
      }

      v15 = 0;
    }

    if (v41)
    {
      v16 = objc_alloc(MEMORY[0x1E695DEF0]);
      v17 = [v16 initWithBytes:*(&v41 + 1) length:v41];
      if (v15)
      {
LABEL_12:
        v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithData:v15 encoding:4];
        CFStringTrimWhitespace(v18);
        v19 = [(__CFString *)v18 componentsSeparatedByString:@" "];
        if (0xAAAAAAAAAAAAAAABLL * [v19 count] <= 0x5555555555555555 && objc_msgSend(v19, "count") >= 9 && objc_msgSend(v19, "count") < 0x19)
        {
          v13 = 0;
        }

        else
        {
          v33 = 0;
          v20 = [v15 length];
          [v19 count];
          _PCSNSError(&v33, 201, @"Unable to decode mnemonic properly (length=%lu, count=%lu)", v21, v22, v23, v24, v25, v20);
          v13 = v33;
        }

        goto LABEL_21;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Decoded inner record with empty recovery token key", buf, 2u);
      }

      v17 = 0;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    v13 = 0;
    v19 = 0;
LABEL_21:
    v26 = objc_alloc(MEMORY[0x1E695DEF0]);
    v27 = [v26 initWithBytes:*(&v38 + 1) length:v38];
    v28 = objc_alloc(MEMORY[0x1E695DEF0]);
    v29 = [v28 initWithBytes:*(&v40 + 1) length:v40];
    v4[2](v4, v27, v19, v29, v17, v13);

    goto LABEL_22;
  }

  v35 = v36;
  _PCSNSError(&v35, 201, @"Unable to decode inner ASN", v7, v8, v9, v10, v11, v32);
  v13 = v35;

  v4[2](v4, 0, 0, 0, 0, v13);
LABEL_22:
  free_PCSBackupGuitarfishEscrowContents(&v38);
}

__CFData *_PCSBackupGuitarfishEncodeOuterRecord(void *a1, __CFData *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v76 = a7;
  v80 = a1;
  v82 = a3;
  v12 = a4;
  v81 = a5;
  v18 = a6;
  v129 = 0;
  v130 = 0;
  v124 = 0;
  v125 = &v124;
  v126 = 0x3032000000;
  v127 = __Block_byref_object_copy__5;
  v128 = __Block_byref_object_dispose__5;
  v118 = 0;
  v119 = &v118;
  v120 = 0x3032000000;
  v121 = __Block_byref_object_copy__5;
  v122 = __Block_byref_object_dispose__5;
  v123 = 0;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v78 = v18;
  v79 = v12;
  if (!v18)
  {
    v26 = 0;
    i = 0;
    v29 = 0;
    goto LABEL_16;
  }

  *buf = 0;
  v113 = buf;
  v114 = 0x3032000000;
  v115 = __Block_byref_object_copy__5;
  v116 = __Block_byref_object_dispose__5;
  v117 = 0;
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__5;
  v110 = __Block_byref_object_dispose__5;
  v111 = 0;
  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = __Block_byref_object_copy__5;
  v104 = __Block_byref_object_dispose__5;
  v105 = 0;
  v94 = 0;
  v95 = &v94;
  v96 = 0x3032000000;
  v97 = __Block_byref_object_copy__5;
  v98 = __Block_byref_object_dispose__5;
  v99 = 0;
  v19 = dispatch_semaphore_create(0);
  v20 = v119[5];
  v119[5] = v19;

  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = ___PCSBackupGuitarfishEncodeOuterRecord_block_invoke;
  v93[3] = &unk_1E7B19C40;
  v93[4] = &v124;
  v93[5] = buf;
  v93[6] = &v106;
  v93[7] = &v100;
  v93[8] = &v94;
  v93[9] = &v118;
  _PCSBackupGuitarfishDecodeOuterRecord(v18, v93);
  dispatch_semaphore_wait(v119[5], 0xFFFFFFFFFFFFFFFFLL);
  v26 = v125 + 5;
  v27 = v125[5];
  if (v27)
  {
    goto LABEL_77;
  }

  if (!v82)
  {
    v18 = *(v113 + 5);
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_8:
    v26 = v107[5];
    goto LABEL_9;
  }

  v18 = 0;
  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_5:
  v26 = 0;
LABEL_9:
  if (v81)
  {
    v29 = 0;
    if (a2)
    {
LABEL_11:
      i = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v29 = v95[5];
    if (a2)
    {
      goto LABEL_11;
    }
  }

  for (i = v101[5]; ; i = 0)
  {
LABEL_14:
    _Block_object_dispose(&v94, 8);

    _Block_object_dispose(&v100, 8);
    _Block_object_dispose(&v106, 8);

    _Block_object_dispose(buf, 8);
    if (v27)
    {
      goto LABEL_15;
    }

LABEL_16:
    if (!(v82 | v18))
    {
      v75 = v125;
      v91 = v125[5];
      _PCSNSError(&v91, 204, @"missing primary HSM Record Secret parameter", v13, v14, v15, v16, v17, v76);
      objc_storeStrong(v75 + 5, v91);
      v18 = 0;
      goto LABEL_15;
    }

    if (!v81)
    {
      v73 = v125;
      v90 = v125[5];
      _PCSNSError(&v90, 207, @"Missing Encrypted Contents parameter", v13, v14, v15, v16, v17, v76);
      objc_storeStrong(v73 + 5, v90);
LABEL_15:
      v30 = 0;
      v31 = 0;
      v32 = 0;
      goto LABEL_67;
    }

    if (i)
    {
      v32 = 0;
      goto LABEL_29;
    }

    if (!a2)
    {
      break;
    }

    v33 = PCSIdentityCopyWrappedKey(a2, v80, &v130);
    if (v130)
    {
      v34 = v125[5];
      v125[5] = v130;
    }

    v35 = v33;
    v32 = v35;
    v30 = 0;
    if (v125[5] || (i = v35) == 0)
    {
      i = v35;
      v31 = 0;
      a2 = 0;
      goto LABEL_68;
    }

LABEL_29:
    if (!_PCSFillOctetString(&v133, i))
    {
      _PCSErrorOOM(&v130);
LABEL_81:
      v30 = 0;
      goto LABEL_88;
    }

    if (v130)
    {
      v37 = v125[5];
      v125[5] = v130;
    }

    v38 = v125 + 5;
    if (v125[5])
    {
      goto LABEL_81;
    }

    if (v18)
    {
      v30 = 0;
    }

    else
    {
      obj = 0;
      v30 = _PCSGuitarfishWrapKeyWithAESKey(v80, v82, &obj);
      objc_storeStrong(v38, obj);
      v44 = v125 + 5;
      if (v125[5] || !v30)
      {
        v88 = v125[5];
        _PCSNSError(&v88, 12, @"unable to wrap data to key for primary hsm secret", v39, v40, v41, v42, v43, v76);
        objc_storeStrong(v44, v88);
        v18 = 0;
        goto LABEL_88;
      }

      v18 = v30;
      v30 = v18;
    }

    if (!_PCSFillOctetString(&v131, v18))
    {
      _PCSErrorOOM(&v130);
LABEL_88:
      v31 = 0;
      goto LABEL_67;
    }

    if (v130)
    {
      v45 = v125[5];
      v125[5] = v130;
    }

    v46 = v125 + 5;
    if (v125[5])
    {
      goto LABEL_88;
    }

    if (v79)
    {
      v87 = 0;
      v31 = _PCSGuitarfishWrapKeyWithAESKey(v80, v79, &v87);
      objc_storeStrong(v46, v87);
      v52 = v125 + 5;
      if (v125[5] || !v31)
      {
        v86 = v125[5];
        _PCSNSError(&v86, 19, @"Unable to wrap recoveryTokenSecret record to wrapping key", v47, v48, v49, v50, v51, v76);
        v74 = v86;
        goto LABEL_90;
      }

      v31 = v31;

      v26 = v31;
    }

    else
    {
      if (!v26)
      {
        v53 = pcsLogObjForScope("Guitarfish");
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B229C000, v53, OS_LOG_TYPE_DEFAULT, "using empty resolvedRecoverTokenHSMWrap for encoding outer record", buf, 2u);
        }

        v26 = objc_alloc_init(MEMORY[0x1E695DEF0]);
      }

      v31 = 0;
    }

    if (!_PCSFillOctetString(&v132, v26))
    {
      goto LABEL_83;
    }

    if (v130)
    {
      v54 = v125[5];
      v125[5] = v130;
    }

    v55 = v125 + 5;
    if (v125[5])
    {
      goto LABEL_67;
    }

    if (!v29)
    {
      v85 = 0;
      v29 = _PCSGuitarfishWrapDataWithAESKey(v81, v80, &v85);
      objc_storeStrong(v55, v85);
      v52 = v125 + 5;
      if (v125[5] || !v29)
      {
        v84 = v125[5];
        _PCSNSError(&v84, 19, @"Unable to wrap encryptedcontents record to wrapping key", v56, v57, v58, v59, v60, v76);
        v74 = v84;
LABEL_90:
        objc_storeStrong(v52, v74);
        goto LABEL_67;
      }
    }

    if (!_PCSFillOctetString(&v134, v29))
    {
LABEL_83:
      _PCSErrorOOM(&v130);
      goto LABEL_67;
    }

    if (v130)
    {
      v61 = v125[5];
      v125[5] = v130;
    }

    if (v125[5])
    {
      goto LABEL_67;
    }

    *buf = 0;
    v27 = length_PCSBackupGuitarfishEscrow(&v131);
    Mutable = CFDataCreateMutable(0, v27);
    a2 = Mutable;
    if (!Mutable)
    {
      v64 = 12;
LABEL_66:
      _PCSErrorASN1(&v130, "encode PCSBackupGuitarfishEscrow", v64);
LABEL_67:
      a2 = 0;
      goto LABEL_68;
    }

    CFDataSetLength(Mutable, v27);
    MutableBytePtr = CFDataGetMutableBytePtr(a2);
    v64 = encode_PCSBackupGuitarfishEscrow(v27 + MutableBytePtr - 1, v27, &v131, buf);
    if (v64)
    {
      CFRelease(a2);
      goto LABEL_66;
    }

    if (v27 == *buf)
    {
      goto LABEL_68;
    }

    asn1_abort();
    __break(1u);
LABEL_77:
    v92 = v27;
    _PCSNSError(&v92, 200, @"unable to decode existing blob", v21, v22, v23, v24, v25, v76);
    objc_storeStrong(v26, v92);
    v18 = 0;
    v26 = 0;
    v29 = 0;
  }

  v36 = pcsLogObjForScope("Guitarfish");
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, v36, OS_LOG_TYPE_DEFAULT, "using empty resolvedWrapToEscrow for encoding outer record", buf, 2u);
  }

  i = objc_alloc_init(MEMORY[0x1E695DEF0]);
  v32 = 0;
  if (i)
  {
    goto LABEL_29;
  }

  v30 = 0;
  i = 0;
  v31 = 0;
  a2 = 0;
LABEL_68:
  free_PCSBackupGuitarfishEscrow(&v131);
  v70 = v125 + 5;
  if (v125[5])
  {
    v83 = v125[5];
    _PCSNSError(&v83, 202, @"Unable to encode outer record", v65, v66, v67, v68, v69, v76);
    objc_storeStrong(v70, v83);
    if (v77)
    {
      v71 = v125[5];
      if (v71)
      {
        *v77 = v71;
      }
    }
  }

  _Block_object_dispose(&v118, 8);

  _Block_object_dispose(&v124, 8);

  return a2;
}

void sub_1B22D9F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, ...)
{
  va_start(va, a59);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v59 - 216), 8);
  _Unwind_Resume(a1);
}

__CFData *_PCSBackupGuitarfishEncodeInnerRecord(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v23 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DEF0]);
  }

  if (!_PCSFillOctetString(&v24, v7) || v8 && ([v8 componentsJoinedByString:@" "], v11 = objc_claimAutoreleasedReturnValue(), v12 = _PCSFillOctetString(&v25, objc_msgSend(v11, "dataUsingEncoding:", 4)), v11, !v12) || !_PCSFillOctetString(&v26, v9) || v10 && !_PCSFillOctetString(&v27, v10))
  {
    _PCSErrorOOM(&v23);
    goto LABEL_14;
  }

  v22 = 0;
  v13 = length_PCSBackupGuitarfishEscrowContents(&v24);
  Mutable = CFDataCreateMutable(0, v13);
  if (!Mutable)
  {
    v18 = 12;
    goto LABEL_13;
  }

  v15 = Mutable;
  CFDataSetLength(Mutable, v13);
  MutableBytePtr = CFDataGetMutableBytePtr(v15);
  v17 = encode_PCSBackupGuitarfishEscrowContents(&MutableBytePtr[v13 - 1], v13, &v24, &v22);
  if (v17)
  {
    v18 = v17;
    CFRelease(v15);
LABEL_13:
    _PCSErrorASN1(&v23, "encode PCSBackupGuitarfishEscrowContents", v18);
LABEL_14:
    v15 = 0;
    goto LABEL_16;
  }

  if (v13 != v22)
  {
    v20 = asn1_abort();
    return +[(PCSKeybagKey *)v20];
  }

LABEL_16:
  free_PCSBackupGuitarfishEscrowContents(&v24);

  return v15;
}

void _PCSSyncingSetupInterface(void *a1)
{
  v1 = _PCSSyncingSetupInterface_onceToken;
  v2 = a1;
  v5 = v2;
  if (v1 != -1)
  {
    _PCSSyncingSetupInterface_cold_1();
    v2 = v5;
  }

  [v2 setClasses:_PCSSyncingSetupInterface_errClasses forSelector:sel_getAllClients_ argumentIndex:1 ofReply:1];
  [v5 setClasses:_PCSSyncingSetupInterface_errClasses forSelector:sel_syncKeys_withReply_ argumentIndex:1 ofReply:1];
  [v5 setClasses:_PCSSyncingSetupInterface_errClasses forSelector:sel_triggerDaily_withReply_ argumentIndex:1 ofReply:1];
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v5 setClasses:v3 forSelector:sel_triggerSyncingWithEscrowProxy_dsid_publicKeys_accountIdentifier_settingsKeyExpirationDate_settingsKeyIdentifier_complete_ argumentIndex:1 ofReply:1];

  [v5 setClasses:_PCSSyncingSetupInterface_errClasses forSelector:sel_triggerSyncingWithEscrowProxy_dsid_publicKeys_accountIdentifier_settingsKeyExpirationDate_settingsKeyIdentifier_complete_ argumentIndex:2 ofReply:1];
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v5 setClasses:v4 forSelector:sel_createIdentity_dsid_roll_sync_forceSync_complete_ argumentIndex:1 ofReply:1];

  [v5 setClasses:_PCSSyncingSetupInterface_errClasses forSelector:sel_createIdentity_dsid_roll_sync_forceSync_complete_ argumentIndex:2 ofReply:1];
  [v5 setClasses:_PCSSyncingSetupInterface_statsClasses forSelector:sel_fetchStats_ argumentIndex:0 ofReply:1];
  [v5 setClasses:_PCSSyncingSetupInterface_errClasses forSelector:sel_setupIdentitiesWithParameters_complete_ argumentIndex:2 ofReply:1];
}

void sub_1B22DA9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PCSKeySyncingGetAllClients(void *a1)
{
  v1 = a1;
  v2 = connectionPCSKeySyncing(v1);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __PCSKeySyncingGetAllClients_block_invoke;
  v5[3] = &unk_1E7B19C90;
  v6 = v1;
  v3 = v1;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v5];
  [v4 getAllClients:v3];
}

id connectionPCSKeySyncing(uint64_t a1)
{
  if (connectionPCSKeySyncing_onceToken != -1)
  {
    connectionPCSKeySyncing_cold_1();
  }

  v2 = connectionPCSKeySyncing_connection;

  return v2;
}

void PCSKeySyncingSyncKeys(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = connectionPCSKeySyncing(v4);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __PCSKeySyncingSyncKeys_block_invoke;
  v8[3] = &unk_1E7B19C90;
  v9 = v3;
  v6 = v3;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v8];
  [v7 syncKeys:v4 withReply:v6];
}

void PCSKeySyncingTriggerDaily(uint64_t a1)
{
  v1 = connectionPCSKeySyncing(a1);
  v2 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __PCSKeySyncingTriggerDaily_block_invoke;
  v9[3] = &unk_1E7B19CB8;
  v3 = v2;
  v10 = v3;
  v4 = [v1 remoteObjectProxyWithErrorHandler:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __PCSKeySyncingTriggerDaily_block_invoke_2;
  v7[3] = &unk_1E7B19CE0;
  v8 = v3;
  v5 = v3;
  [v4 triggerDaily:MEMORY[0x1E695E0F8] withReply:v7];

  v6 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v5, v6);
}

void PCSSyncKeyRegistryWithServiceName(void *a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = kPCSSetupService[0];
  v8[0] = a1;
  v3 = MEMORY[0x1E695DF20];
  v4 = a2;
  v5 = a1;
  v6 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];

  PCSSyncKeyRegistryWithOptions(v6, v4);
}

void PCSSyncKeyRegistryWithOptions(void *a1, void *a2)
{
  v49[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = connectionPCSKeySyncing(v4);
  if (v3)
  {
    v6 = [v3 objectForKeyedSubscript:kPCSSetupService[0]];
    v7 = [v3 objectForKeyedSubscript:kPCSSetupDSID[0]];
    if (!PCSCurrentPersonaMatchesDSID(v7))
    {
      v26 = MEMORY[0x1E696ABC0];
      v27 = kPCSErrorDomain;
      v48 = *MEMORY[0x1E696A578];
      v49[0] = @"Current persona does not match chosen dsid";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
      v25 = [v26 errorWithDomain:v27 code:152 userInfo:v8];
      v4[2](v4, 0, v25);
      goto LABEL_18;
    }

    v8 = [v3 objectForKeyedSubscript:kPCSSetupPublicKeys[0]];
    v9 = [v3 objectForKeyedSubscript:kPCSSetupMTTCallback[0]];
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
  }

  v10 = +[PCSAccountsModel accountForCurrentPersona];
  v11 = v10;
  v36 = v9;
  if (v7 || ([v10 aa_personID], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v34 = v11;
    v35 = v3;
    v33 = [v11 identifier];
    v43 = 0;
    v12 = [PCSAccountsModel settingsKeyForKey:@"nextRegistrySync" error:&v43];
    v13 = v43;
    v14 = v13;
    v32 = v12;
    if ((!v12 || v13) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v14;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to get key: %@", buf, 0xCu);
    }

    v31 = v14;
    v42 = 0;
    v15 = [PCSAccountsModel settingsKeyForKey:@"registrySyncIdentifier" error:&v42];
    v16 = v42;
    v17 = v16;
    v18 = v15;
    if ((!v15 || v16) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v17;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to get key: %@", buf, 0xCu);
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __PCSSyncKeyRegistryWithOptions_block_invoke;
    v39[3] = &unk_1E7B19D08;
    v40 = v9;
    v41 = v4;
    v19 = MEMORY[0x1B2745320](v39);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __PCSSyncKeyRegistryWithOptions_block_invoke_2;
    v37[3] = &unk_1E7B19C90;
    v38 = v19;
    v20 = v19;
    [v5 remoteObjectProxyWithErrorHandler:v37];
    v21 = v5;
    v23 = v22 = v4;
    v24 = v33;
    [v23 triggerSyncingWithEscrowProxy:v6 dsid:v7 publicKeys:v8 accountIdentifier:v33 settingsKeyExpirationDate:v32 settingsKeyIdentifier:v18 complete:v20];

    v4 = v22;
    v5 = v21;

    v11 = v34;
    v3 = v35;
  }

  else
  {
    v28 = MEMORY[0x1E696ABC0];
    v29 = kPCSErrorDomain;
    v46 = *MEMORY[0x1E696A578];
    v47 = @"unable to determine DSID";
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v24 = [v28 errorWithDomain:v29 code:66 userInfo:v30];

    v4[2](v4, 0, v24);
    v7 = 0;
  }

  v25 = v36;
LABEL_18:
}

void __PCSSyncKeyRegistryWithOptions_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, a3);
  }

  (*(*(a1 + 40) + 16))();
}

void PCSAccountOldSetupIdentities(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  v8 = connectionPCSKeySyncing(v6);
  v7 = [v8 remoteObjectProxyWithErrorHandler:&__block_literal_global_173];
  [v7 setupIdentitiesForAccount:v6 withParameters:v5 optional:a3];
}

uint64_t PCSAccountMigrateToiCDP(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = connectionPCSKeySyncing(v6);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __PCSAccountMigrateToiCDP_block_invoke;
  v13[3] = &unk_1E7B19AB0;
  v13[4] = &v14;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __PCSAccountMigrateToiCDP_block_invoke_2;
  v12[3] = &unk_1E7B19D50;
  v12[4] = &v20;
  v12[5] = &v14;
  [v8 migrateToiCDPForAccount:v5 withParameters:v6 complete:v12];

  if (a3)
  {
    v9 = v15[5];
    if (v9)
    {
      *a3 = v9;
    }
  }

  v10 = *(v21 + 24);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v10;
}

void sub_1B22DB5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t PCSAccountEnableWalrus(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = connectionPCSKeySyncing(v6);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__5;
  v24 = 0;
  v8 = [v6 objectForKeyedSubscript:kPCSSetupGuitarfish[0]];
  if ([v8 BOOLValue])
  {
    v18 = 0;
    v9 = PCSGuitarfishCreateSetupParameters(v6, 1, 0, &v18);
    v10 = v18;

    if (!v9 || v10)
    {
      if (a3)
      {
        v11 = v10;
        *a3 = v10;
      }

      v12 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v9 = v6;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __PCSAccountEnableWalrus_block_invoke;
  v17[3] = &unk_1E7B19AB0;
  v17[4] = &v19;
  v13 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __PCSAccountEnableWalrus_block_invoke_2;
  v16[3] = &unk_1E7B19D50;
  v16[4] = &v25;
  v16[5] = &v19;
  [v13 enableWalrusForAccount:v5 withParameters:v9 complete:v16];

  if (v26[3])
  {
    v12 = 1;
  }

  else
  {
    v12 = 0;
    if (a3)
    {
      v14 = v20[5];
      if (v14)
      {
        *a3 = v14;
        v12 = *(v26 + 24);
      }
    }
  }

LABEL_13:

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12 & 1;
}

void sub_1B22DB858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

id PCSGuitarfishCreateSetupParameters(void *a1, uint64_t a2, int a3, void *a4)
{
  v124 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v14 = v7;
  v118[0] = 0;
  v118[1] = v118;
  v118[2] = 0x2020000000;
  v118[3] = 0;
  if (!v7 || ([v7 objectForKeyedSubscript:kPCSSetupDSID[0]], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    PCSErrorCreate(121, @"Missing DSID in parameters", v8, v9, v10, v11, v12, v13, v87);
    *a4 = v50 = 0;
    goto LABEL_25;
  }

  v22 = [v14 objectForKeyedSubscript:kPCSSetupRawPassword[0]];
  if (!v22)
  {
    *a4 = PCSErrorCreate(123, @"Missing raw password in parameters", v16, v17, v18, v19, v20, v21, v87);

LABEL_24:
    v50 = 0;
    goto LABEL_25;
  }

  v29 = [v14 objectForKeyedSubscript:kPCSSetupPassword[0]];
  if (!v29)
  {
    *a4 = PCSErrorCreate(123, @"Missing password in parameters", v23, v24, v25, v26, v27, v28, v87);

    goto LABEL_24;
  }

  if (!PCSCurrentPersonaMatchesDSID(v15))
  {
    *a4 = PCSErrorCreate(152, @"Current persona does not match chosen dsid", v30, v31, v32, v33, v34, v35, v87);

    goto LABEL_24;
  }

  v94 = 0;
  v96 = 0;
  v117 = 0;
  if (!a2)
  {
    goto LABEL_44;
  }

  Random = _PCSStingrayCreateRandom(0x20uLL, &v117);
  if (v117 || !Random)
  {
    v94 = 0;
    v96 = 0;
    v50 = 0;
    *a4 = v117;
  }

  else
  {
    v36 = _PCSStingrayCreateRandom(0x20uLL, &v117);
    if (!v117 && v36)
    {
      v92 = v36;
      p_buf = &buf;
      *&buf = 0;
      *(&buf + 1) = &buf;
      v120 = 0x3032000000;
      v121 = __Block_byref_object_copy__5;
      v122 = __Block_byref_object_dispose__5;
      v123 = 0;
      if (!a3)
      {
        v53 = 0;
        v54 = 0;
        v91 = 0;
        v55 = 0;
        goto LABEL_31;
      }

      v38 = _PCSStingrayCreateRandom(0x20uLL, &v117);
      v91 = v38;
      if (v117 || !v38)
      {
        v49 = 0;
        v94 = 0;
        v96 = 0;
        LOBYTE(v39) = 0;
        *a4 = v117;
        goto LABEL_43;
      }

      v39 = _PCSStingrayCreateRandom(0x10uLL, &v117);
      v96 = 0;
      v40 = v117;
      if (!v117 && v39)
      {
        v96 = [MnemonicRepresentation mnemonicFrom:v39];
        if (!v117 && v96)
        {
          v95 = v39;
          v115[0] = 0;
          v115[1] = v115;
          v115[2] = 0x3032000000;
          v115[3] = __Block_byref_object_copy__5;
          v115[4] = __Block_byref_object_dispose__5;
          v116 = 0;
          v109 = 0;
          v110 = &v109;
          v111 = 0x3032000000;
          v112 = __Block_byref_object_copy__5;
          v113 = __Block_byref_object_dispose__5;
          v114 = 0;
          v108[0] = MEMORY[0x1E69E9820];
          v108[1] = 3221225472;
          v108[2] = __PCSGuitarfishCreateSetupParameters_block_invoke;
          v108[3] = &unk_1E7B19A88;
          v108[4] = v115;
          v108[5] = &v109;
          v108[6] = &buf;
          PCSGuitarfishDeriveRecoveryKeyFromMnemonic(v96, v108);
          v48 = (*(&buf + 1) + 40);
          v47 = *(*(&buf + 1) + 40);
          if (v47)
          {
            v49 = 0;
          }

          else
          {
            v86 = v110[5];
            v107 = 0;
            v49 = _PCSGuitarfishDeriveRecoveryTokenWrap(v86, v38, &v107);
            objc_storeStrong(v48, v107);
            v47 = *(*(&buf + 1) + 40);
            if (!v47)
            {
              LODWORD(v39) = 1;
              goto LABEL_74;
            }
          }

          LODWORD(v39) = 0;
          *a4 = v47;
LABEL_74:
          _Block_object_dispose(&v109, 8);

          _Block_object_dispose(v115, 8);
          if (v39)
          {
            p_buf = *(&buf + 1);
            v53 = *(*(&buf + 1) + 40);
            v55 = v96;
            v54 = v49;
LABEL_31:
            obj = v53;
            v96 = v55;
            v49 = v54;
            v90 = _PCSBackupGuitarfishEncodeInnerRecord(0, v55, Random, v54);
            objc_storeStrong(p_buf + 5, obj);
            v57 = (*(&buf + 1) + 40);
            v56 = *(*(&buf + 1) + 40);
            if (v56)
            {
              v58 = v56;
              v94 = 0;
            }

            else
            {
              v105 = 0;
              v94 = _PCSBackupGuitarfishEncodeOuterRecord(v92, 0, Random, v49, v90, 0, &v105);
              objc_storeStrong(v57, v105);
              v59 = *(*(&buf + 1) + 40);
              if (!v59)
              {
                v60 = dispatch_semaphore_create(0);
                v102[0] = MEMORY[0x1E69E9820];
                v102[1] = 3221225472;
                v102[2] = __PCSGuitarfishCreateSetupParameters_block_invoke_2;
                v102[3] = &unk_1E7B19A60;
                v104 = v118;
                v39 = v60;
                v103 = v39;
                _PCSGuitarfishSetKeychainItem(@"WrappingKey", v15, v92, v102);
                dispatch_semaphore_wait(v39, 0xFFFFFFFFFFFFFFFFLL);
                if (a3)
                {
                  v88 = dispatch_semaphore_create(0);

                  v89 = [v96 componentsJoinedByString:@" "];
                  v61 = [v89 dataUsingEncoding:4];
                  v99[0] = MEMORY[0x1E69E9820];
                  v99[1] = 3221225472;
                  v99[2] = __PCSGuitarfishCreateSetupParameters_block_invoke_245;
                  v99[3] = &unk_1E7B19A60;
                  v101 = v118;
                  v39 = v88;
                  v100 = v39;
                  _PCSGuitarfishSetKeychainItem(@"RecoveryToken", v15, v61, v99);

                  dispatch_semaphore_wait(v39, 0xFFFFFFFFFFFFFFFFLL);
                }

                LOBYTE(v39) = 1;
                goto LABEL_37;
              }

              v58 = v59;
            }

            LOBYTE(v39) = 0;
            *a4 = v58;
LABEL_37:

            goto LABEL_43;
          }

          v94 = 0;
LABEL_43:
          _Block_object_dispose(&buf, 8);

          if ((v39 & 1) == 0)
          {
            v50 = 0;
            goto LABEL_69;
          }

LABEL_44:
          v62 = [MEMORY[0x1E6959A48] defaultStore];
          Random = [v62 aa_appleAccountWithPersonID:v15];

          v63 = [v14 mutableCopy];
          v64 = [MEMORY[0x1E696AD98] numberWithBool:a2];
          [v63 setObject:v64 forKeyedSubscript:kPCSSetupGuitarfishReEnroll[0]];

          [v63 setObject:v94 forKeyedSubscript:kPCSSetupOuterGuitarfishEncodedTemplate[0]];
          [v63 setObject:v96 forKeyedSubscript:kPCSSetupRecoveryToken[0]];
          v65 = [v14 objectForKeyedSubscript:kPCSSetupUsername[0]];
          v66 = v65;
          if (!v65)
          {
            v66 = [Random username];
          }

          [v63 setObject:v66 forKeyedSubscript:kPCSSetupUsername[0]];
          if (!v65)
          {
          }

          [v63 setObject:v22 forKeyedSubscript:kPCSSetupRawPassword[0]];
          [v63 setObject:v29 forKeyedSubscript:kPCSSetupPassword[0]];
          [v63 setObject:MEMORY[0x1E695E118] forKeyedSubscript:kPCSSetupGuitarfish[0]];
          v67 = [v63 objectForKeyedSubscript:kPCSSetupPasswordGeneration[0]];
          v68 = v67 == 0;

          if (Random)
          {
            v69 = v68;
          }

          else
          {
            v69 = 0;
          }

          if (v69)
          {
            v70 = [getAKAccountManagerClass() sharedInstance];
            v71 = [Random aa_altDSID];
            v98 = 0;
            v72 = [v70 authKitAccountWithAltDSID:v71 error:&v98];
            v93 = v70;
            v73 = v98;

            if (!v72 || v73)
            {
              v74 = pcsLogObjForScope("Guitarfish");
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v73;
                _os_log_impl(&dword_1B229C000, v74, OS_LOG_TYPE_DEFAULT, "Unable to get AKAccount: %@", &buf, 0xCu);
              }
            }

            else
            {
              v74 = pcsLogObjForScope("Guitarfish");
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                v75 = [v63 objectForKeyedSubscript:kPCSSetupPasswordGeneration[0]];
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v75;
                _os_log_impl(&dword_1B229C000, v74, OS_LOG_TYPE_DEFAULT, "Got passwordVersionForAccount: %@", &buf, 0xCu);
              }
            }
          }

          v76 = [v63 objectForKeyedSubscript:kPCSSetupVerifierIterationCount[0]];
          v77 = v76 == 0;

          if (v77)
          {
            [v63 setObject:&unk_1F2998490 forKeyedSubscript:kPCSSetupVerifierIterationCount[0]];
          }

          v78 = [v63 objectForKeyedSubscript:kPCSSetupVerifierSalt[0]];
          v79 = v78 == 0;

          if (v79)
          {
            v85 = _PCSStingrayCreateRandom(0x20uLL, &v117);
            if (v117)
            {
              *a4 = v117;

              v50 = 0;
LABEL_67:

              goto LABEL_68;
            }

            [v63 setObject:v85 forKeyedSubscript:kPCSSetupVerifierSalt[0]];
          }

          v80 = [v63 objectForKeyedSubscript:kPCSSetupVerifierProtocol[0]];
          v81 = v80 == 0;

          if (v81)
          {
            [v63 setObject:@"s2k" forKeyedSubscript:kPCSSetupVerifierProtocol[0]];
          }

          v82 = [v14 objectForKeyedSubscript:kPCSAltDSID[0]];
          [v63 setObject:v82 forKeyedSubscript:kPCSAltDSID[0]];

          v83 = [v14 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
          [v63 setObject:v83 forKeyedSubscript:kPCSDeviceSessionID[0]];

          v84 = [v14 objectForKeyedSubscript:kPCSFlowID[0]];
          [v63 setObject:v84 forKeyedSubscript:kPCSFlowID[0]];

          v50 = v63;
          goto LABEL_67;
        }

        v40 = PCSErrorCreate(214, @"unable to create mnemonic from input entropy", v41, v42, v43, v44, v45, v46, v87);
      }

      *a4 = v40;

      v49 = 0;
      v94 = 0;
      LOBYTE(v39) = 0;
      goto LABEL_43;
    }

    v52 = v36;
    *a4 = v117;

    v94 = 0;
    v96 = 0;
    v50 = 0;
  }

LABEL_68:

LABEL_69:
LABEL_25:
  _Block_object_dispose(v118, 8);

  return v50;
}

void sub_1B22DC3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  va_start(va, a47);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v47 - 176), 8);
  _Block_object_dispose((v47 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t PCSAccountDisableWalrus(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = connectionPCSKeySyncing(v6);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__5;
  v24 = 0;
  v8 = [v6 objectForKeyedSubscript:kPCSSetupGuitarfish[0]];
  if ([v8 BOOLValue])
  {
    v18 = 0;
    v9 = PCSGuitarfishCreateSetupParameters(v6, 1, 1, &v18);
    v10 = v18;

    if (!v9 || v10)
    {
      if (a3)
      {
        v11 = v10;
        *a3 = v10;
      }

      v12 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v9 = v6;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __PCSAccountDisableWalrus_block_invoke;
  v17[3] = &unk_1E7B19AB0;
  v17[4] = &v19;
  v13 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __PCSAccountDisableWalrus_block_invoke_2;
  v16[3] = &unk_1E7B19D50;
  v16[4] = &v25;
  v16[5] = &v19;
  [v13 disableWalrusForAccount:v5 withParameters:v9 complete:v16];

  if (v26[3])
  {
    v12 = 1;
  }

  else
  {
    v12 = 0;
    if (a3)
    {
      v14 = v20[5];
      if (v14)
      {
        *a3 = v14;
        v12 = *(v26 + 24);
      }
    }
  }

LABEL_13:

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12 & 1;
}

void sub_1B22DC6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void PCSTriggerWatchSyncing(void *a1)
{
  v1 = a1;
  v2 = connectionPCSKeySyncing(v1);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __PCSTriggerWatchSyncing_block_invoke;
  v5[3] = &unk_1E7B19C90;
  v6 = v1;
  v3 = v1;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v5];
  [v4 triggerWatchSyncing:v3];
}

void PCSBackupCheckUserRegistry(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = connectionPCSKeySyncing(v4);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __PCSBackupCheckUserRegistry_block_invoke;
  v8[3] = &unk_1E7B19C90;
  v9 = v3;
  v6 = v3;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v8];
  [v7 triggerUserRegistryCheck:v4 withReply:v6];
}

void PCSBackupRestoreMobileBackup(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[PCSAccountsModel accountForCurrentPersona];
  v5 = [v4 aa_personID];

  if (v5)
  {
    v7 = connectionPCSKeySyncing(v6);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __PCSBackupRestoreMobileBackup_block_invoke;
    v14 = &unk_1E7B19C90;
    v8 = v3;
    v15 = v8;
    v9 = [v7 remoteObjectProxyWithErrorHandler:&v11];
    [v9 restoreMobileBackup:a1 dsid:v5 withReply:{v8, v11, v12, v13, v14}];
  }

  else
  {
    cf = 0;
    _PCSError(&cf, 66, @"unable to determine DSID");
    (*(v3 + 2))(v3, 0, 0, 0, cf);
    v10 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v10);
    }
  }
}

void PCSMobileBackupStatusXPC(void *a1)
{
  v1 = a1;
  v2 = connectionPCSKeySyncing(v1);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __PCSMobileBackupStatusXPC_block_invoke;
  v5[3] = &unk_1E7B19C90;
  v6 = v1;
  v3 = v1;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v5];
  [v4 mobileBackupStatus:v3];
}

void __PCSMobileBackupStatusXPC_block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PCSMobileBackupStatusXPC failed:%@", &v4, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void PCSBackupRegistryMobileBackupRecords(void *a1)
{
  v1 = a1;
  v2 = connectionPCSKeySyncing(v1);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __PCSBackupRegistryMobileBackupRecords_block_invoke;
  v5[3] = &unk_1E7B19C90;
  v6 = v1;
  v3 = v1;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v5];
  [v4 mobileBackupRecordIDsWithReply:v3];
}

void PCSBackupLocalDBMobileBackupRecords(void *a1)
{
  v1 = a1;
  v2 = connectionPCSKeySyncing(v1);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __PCSBackupLocalDBMobileBackupRecords_block_invoke;
  v5[3] = &unk_1E7B19C90;
  v6 = v1;
  v3 = v1;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v5];
  [v4 userDBBackupRecordIDsWithReply:v3];
}

void PCSIdentitySetCreateManatee(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1B229C000, "PCSIdentitySetCreateManatee", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v10 = connectionPCSKeySyncing(v9);
  v11 = v10;
  if (a2)
  {
    v32 = v10;
    if (v6)
    {
      v12 = [v6 objectForKeyedSubscript:kPCSSetupLogContext[0]];

      v13 = PCSCopyPIIClearedOptions(v6);
      v14 = PCSLogGetOSLog(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = a2;
        v43 = 2114;
        v44 = v13;
        _os_log_impl(&dword_1B229C000, v14, OS_LOG_TYPE_DEFAULT, "PCSIdentitySetCreateManatee: %{public}@ %{public}@", buf, 0x16u);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      v15 = [v6 objectForKeyedSubscript:kPCSSetupDSID[0]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (!PCSCurrentPersonaMatchesDSID(v16))
      {
        v22 = MEMORY[0x1E696ABC0];
        v23 = kPCSErrorDomain;
        v40 = *MEMORY[0x1E696A578];
        v41 = @"Current persona does not match chosen dsid";
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v25 = [v22 errorWithDomain:v23 code:152 userInfo:v24];
        v7[2](v7, 0, v25);

LABEL_23:
        v11 = v32;
        goto LABEL_24;
      }

      v21 = [v6 objectForKeyedSubscript:kPCSSetupRollIdentity[0]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [v21 BOOLValue];
      }

      else
      {
        v20 = 0;
      }

      v26 = [v6 objectForKeyedSubscript:kPCSSetupSyncIdentity[0]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [v26 BOOLValue];
      }

      else
      {
        v19 = 0;
      }

      v18 = [v6 objectForKeyedSubscript:kPCSSetupMTTCallback[0]];
    }

    else
    {
      v18 = 0;
      v16 = 0;
      v19 = 0;
      v20 = 0;
    }

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __PCSIdentitySetCreateManatee_block_invoke;
    v35[3] = &unk_1E7B19D78;
    v27 = v16;
    v36 = v27;
    v28 = v18;
    v37 = v28;
    v38 = v7;
    v29 = MEMORY[0x1B2745320](v35);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __PCSIdentitySetCreateManatee_block_invoke_2;
    v33[3] = &unk_1E7B19C90;
    v30 = v29;
    v34 = v30;
    v31 = [v32 remoteObjectProxyWithErrorHandler:v33];
    [v31 createIdentity:a2 dsid:v27 roll:v20 sync:v19 forceSync:0 complete:v30];

    goto LABEL_23;
  }

  *buf = 0;
  _PCSError(buf, 124, @"No ServiceName Specified");
  v7[2](v7, 0, *buf);
  v17 = *buf;
  if (*buf)
  {
    *buf = 0;
    CFRelease(v17);
  }

LABEL_24:

  os_activity_scope_leave(&state);
}

void __PCSIdentitySetCreateManatee_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (v11)
  {
    v9 = PCSIdentityCreateFromPersistentReference(v11, *(a1 + 32));
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v7);
  }

  (*(*(a1 + 48) + 16))();
  if (v9)
  {
    CFRelease(v9);
  }
}

void PCSIdentitySetCreateAllManateeIdentities(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = _os_activity_create(&dword_1B229C000, "PCSIdentitySetCreateAllManateeIdentities", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  v8 = connectionPCSKeySyncing(v7);
  v9 = pcsLogObjForScope("Manatee");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, v9, OS_LOG_TYPE_DEFAULT, "Starting creation of all manatee identities", buf, 2u);
  }

  if (v4)
  {
    v10 = [v4 objectForKeyedSubscript:kPCSSetupLogContext[0]];

    v11 = PCSCopyPIIClearedOptions(v4);
    v12 = PCSLogGetOSLog(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = v11;
      _os_log_impl(&dword_1B229C000, v12, OS_LOG_TYPE_DEFAULT, "PCSIdentitySetCreateAllManateeIdentities: %{public}@", buf, 0xCu);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    v13 = [v4 objectForKeyedSubscript:kPCSSetupDSID[0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v16 = [v4 objectForKeyedSubscript:kPCSSetupSyncIdentity[0]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v16 BOOLValue];
    }

    else
    {
      v15 = 0;
    }

    if (!PCSCurrentPersonaMatchesDSID(v14))
    {
      v22 = MEMORY[0x1E696ABC0];
      v23 = kPCSErrorDomain;
      v32 = *MEMORY[0x1E696A578];
      v33 = @"Current persona does not match chosen dsid";
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v25 = [v22 errorWithDomain:v23 code:152 userInfo:v24];
      v5[2](v5, 0, v25);

      goto LABEL_19;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __PCSIdentitySetCreateAllManateeIdentities_block_invoke;
  v28[3] = &unk_1E7B19DA0;
  v14 = v14;
  v29 = v14;
  v30 = v5;
  v17 = MEMORY[0x1B2745320](v28);
  v19 = _PCSServiceItemsGetAllManateeServices(v17, v18);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __PCSIdentitySetCreateAllManateeIdentities_block_invoke_2;
  v26[3] = &unk_1E7B19C90;
  v20 = v17;
  v27 = v20;
  v21 = [v8 remoteObjectProxyWithErrorHandler:v26];
  [v21 createIdentities:v19 dsid:v14 roll:0 sync:v15 forceSync:0 complete:v20];

  v16 = v29;
LABEL_19:

  os_activity_scope_leave(&state);
}

void __PCSIdentitySetCreateAllManateeIdentities_block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if (v14)
        {
          v15 = PCSIdentityCreateFromPersistentReference(v14, *(a1 + 32));
          if (v15)
          {
            CFArrayAppendValue(Mutable, v15);
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

uint64_t PCSReportManateeStatus(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 11;
  v2 = connectionPCSKeySyncing(v1);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __PCSReportManateeStatus_block_invoke;
  v9[3] = &unk_1E7B19AB0;
  v9[4] = &v10;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __PCSReportManateeStatus_block_invoke_2;
  v8[3] = &unk_1E7B19DC8;
  v8[4] = &v10;
  [v3 manateeStatus:v1 complete:v8];

  v4 = pcsLogObjForScope("ManateeStatus");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v11 + 6);
    *buf = 67109120;
    v15 = v5;
    _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "PCSReportManateeStatus: %d", buf, 8u);
  }

  v6 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);

  return v6;
}

void sub_1B22DDAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PCSReportKeyRollPending(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = connectionPCSKeySyncing(v1);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_186_0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __PCSReportKeyRollPending_block_invoke_2;
  v6[3] = &unk_1E7B19DF0;
  v6[4] = &v7;
  [v3 keyRollPending:v1 complete:v6];

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_1B22DDBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PCSReportKeyRollPending_block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = pcsLogObjForScope("ManateeStatus");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_1B229C000, v6, OS_LOG_TYPE_DEFAULT, "PCSReportKeyRollPending: %d: %@", v7, 0x12u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
}

void PCSGetHealthSummary(void *a1)
{
  v1 = a1;
  v2 = connectionPCSKeySyncing(v1);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __PCSGetHealthSummary_block_invoke;
  v5[3] = &unk_1E7B19C90;
  v6 = v1;
  v3 = v1;
  v4 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v5];
  [v4 getHealthSummary:v3];
}

void PCSGuitarfishChangePassword(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = pcsLogObjForScope("Guitarfish");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B229C000, v5, OS_LOG_TYPE_DEFAULT, "PCSGuitarfishChangePassword entered", v6, 2u);
  }

  PCSGuitarfishRepairIdentities(v4, v3);
}

void PCSGuitarfishRepairIdentities(void *a1, void *a2)
{
  v341[1] = *MEMORY[0x1E69E9840];
  v238 = a1;
  v237 = a2;
  v3 = pcsLogObjForScope("Guitarfish");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, v3, OS_LOG_TYPE_DEFAULT, "PCSGuitarfishRepairIdentities entered", buf, 2u);
  }

  v316 = 0;
  v317 = &v316;
  v318 = 0x2020000000;
  v319 = 0;
  if (v238)
  {
    v10 = [v238 objectForKeyedSubscript:kPCSSetupDSID[0]];
    v11 = v10;
    if (v10)
    {
      if (!PCSCurrentPersonaMatchesDSID(v10))
      {
        v55 = PCSErrorCreate(152, @"Current persona does not match chosen dsid", v12, v13, v14, v15, v16, v17, v223);
        completeRepairIdentities(v237, 2, 1uLL, v55);
LABEL_143:

        goto LABEL_144;
      }

      v18 = pcsLogObjForScope("Guitarfish");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B229C000, v18, OS_LOG_TYPE_DEFAULT, "Repair: Entered", buf, 2u);
      }

      v312 = 0;
      v313 = &v312;
      v314 = 0x2020000000;
      v315 = 2;
      v19 = dispatch_semaphore_create(0);
      v308 = 0;
      v309 = &v308;
      v310 = 0x2020000000;
      v311 = 0;
      v340 = kPCSSetupDSID[0];
      v341[0] = v11;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v341 forKeys:&v340 count:1];
      v303[0] = MEMORY[0x1E69E9820];
      v303[1] = 3221225472;
      v303[2] = __PCSGuitarfishRepairIdentities_block_invoke;
      v303[3] = &unk_1E7B19E18;
      v305 = &v312;
      v306 = &v308;
      v307 = &v316;
      dsema = v19;
      v304 = dsema;
      PCSGuitarfishValidateIdentities(v20, v303);

      dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
      if (!v313[3])
      {
        v56 = pcsLogObjForScope("Guitarfish");
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B229C000, v56, OS_LOG_TYPE_DEFAULT, "skipping repair because we are already in a good state", buf, 2u);
        }

        if ((*(v309 + 25) & 0xC) != 0)
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(DarwinNotifyCenter, kPCSNotificationGuitarfishRepairCompleted, 0, 0, 0);
        }

        completeRepairIdentities(v237, v313[3], v317[3], 0);
        goto LABEL_142;
      }

      v21 = [MEMORY[0x1E6959A48] defaultStore];
      v234 = [v21 aa_appleAccountWithPersonID:v11];

      v22 = [v238 objectForKeyedSubscript:kPCSSetupPassword[0]];
      v23 = v22 == 0;

      if (v23)
      {
        v58 = PCSErrorCreate(123, @"must provide kPCSSetupPassword", v24, v25, v26, v27, v28, v29, v223);
        completeRepairIdentities(v237, 2, 1uLL, v58);
      }

      else
      {
        v30 = [v238 objectForKeyedSubscript:kPCSSetupRawPassword[0]];
        v31 = v30 == 0;

        if (!v31)
        {
          v38 = pcsLogObjForScope("Guitarfish");
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B229C000, v38, OS_LOG_TYPE_DEFAULT, "Repair: Fetching Primary Record", buf, 2u);
          }

          v302 = 0;
          v338 = kPCSSetupDSID[0];
          v339 = v11;
          v233 = __PCSCopyStingrayInfo(1, 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v339 forKeys:&v338 count:1], &v302);
          v44 = v302;
          if (v302 || !v233)
          {
            v317[3] |= 2uLL;
            v301 = v44;
            _PCSNSError(&v301, 200, @"Unable to retrieve primary record, nothing to repair from!", v39, v40, v41, v42, v43, v223);
            v60 = v301;

            completeRepairIdentities(v237, 2, v317[3], v60);
LABEL_140:

            goto LABEL_141;
          }

          v232 = *MEMORY[0x1E6994F70];
          v45 = [v233 objectForKeyedSubscript:?];
          v46 = v45 == 0;

          if (v46)
          {
            v317[3] |= 2uLL;
            v61 = pcsLogObjForScope("Guitarfish");
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1B229C000, v61, OS_LOG_TYPE_DEFAULT, "No Guitarfish Primary Record to decode", buf, 2u);
            }

            v62 = v317[3];
            v60 = PCSErrorCreate(238, @"No Primary Guitarfish Record. Account needs PCSGuitarfishSetupIdentities or migration.", v63, v64, v65, v66, v67, v68, v223);
            completeRepairIdentities(v237, 2, v62, v60);
            goto LABEL_140;
          }

          v47 = pcsLogObjForScope("Guitarfish");
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B229C000, v47, OS_LOG_TYPE_DEFAULT, "Repair: Decoding Outer Record", buf, 2u);
          }

          v48 = [v233 objectForKeyedSubscript:v232];
          v230 = [v48 objectForKeyedSubscript:*MEMORY[0x1E6994E48]];

          v49 = [v230 objectForKeyedSubscript:kPCSSecureBackupCFiCloudDataProtectionKey[0]];
          v231 = [v49 objectForKeyedSubscript:@"SecureBackupWrappedKeys"];
          v50 = [v230 objectForKeyedSubscript:@"IdMSPasswordGeneration"];
          v51 = [v49 objectForKeyedSubscript:@"DerivedDBRSeedAESPID"];
          v52 = pcsLogObjForScope("Guitarfish");
          v224 = @"IdMSPasswordGeneration";
          v227 = v49;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = v50;
            *&buf[12] = 2112;
            *&buf[14] = v51;
            _os_log_impl(&dword_1B229C000, v52, OS_LOG_TYPE_DEFAULT, "Repair: Primary Record PWGeneration: %@, PID: %@", buf, 0x16u);
          }

          v228 = v50;
          v229 = v51;

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v335 = __Block_byref_object_copy__5;
          v336 = __Block_byref_object_dispose__5;
          v337 = 0;
          v295 = 0;
          v296 = &v295;
          v297 = 0x3032000000;
          v298 = __Block_byref_object_copy__5;
          v299 = __Block_byref_object_dispose__5;
          v300 = 0;
          v293[0] = 0;
          v293[1] = v293;
          v293[2] = 0x3032000000;
          v293[3] = __Block_byref_object_copy__5;
          v293[4] = __Block_byref_object_dispose__5;
          v294 = 0;
          v291[0] = 0;
          v291[1] = v291;
          v291[2] = 0x3032000000;
          v291[3] = __Block_byref_object_copy__5;
          v291[4] = __Block_byref_object_dispose__5;
          v292 = 0;
          v285 = 0;
          v286 = &v285;
          v287 = 0x3032000000;
          v288 = __Block_byref_object_copy__5;
          v289 = __Block_byref_object_dispose__5;
          v290 = 0;
          v53 = dispatch_semaphore_create(0);

          v277[0] = MEMORY[0x1E69E9820];
          v277[1] = 3221225472;
          v277[2] = __PCSGuitarfishRepairIdentities_block_invoke_204;
          v277[3] = &unk_1E7B19E40;
          v279 = &v316;
          v280 = &v285;
          v281 = buf;
          v282 = &v295;
          v283 = v293;
          v284 = v291;
          dsema = v53;
          v278 = dsema;
          _PCSBackupGuitarfishDecodeOuterRecord(v231, v277);
          dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
          v54 = v286[5];
          if (v54)
          {
            completeRepairIdentities(v237, 3, v317[3], v54);
LABEL_139:

            _Block_object_dispose(&v285, 8);
            _Block_object_dispose(v291, 8);

            _Block_object_dispose(v293, 8);
            _Block_object_dispose(&v295, 8);

            _Block_object_dispose(buf, 8);
            v60 = v230;
            goto LABEL_140;
          }

          v69 = pcsLogObjForScope("Guitarfish");
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            *v271 = 0;
            _os_log_impl(&dword_1B229C000, v69, OS_LOG_TYPE_DEFAULT, "Repair: Primary Record obtained and decoded", v271, 2u);
          }

          *v271 = 0;
          v272 = v271;
          v273 = 0x3032000000;
          v274 = __Block_byref_object_copy__5;
          v275 = __Block_byref_object_dispose__5;
          v276 = 0;
          v70 = dispatch_semaphore_create(0);

          v267[0] = MEMORY[0x1E69E9820];
          v267[1] = 3221225472;
          v267[2] = __PCSGuitarfishRepairIdentities_block_invoke_205;
          v267[3] = &unk_1E7B199C0;
          v269 = v271;
          v270 = &v316;
          v71 = v70;
          v268 = v71;
          _PCSGuitarfishGetKeychainItem(@"WrappingKey", v11, v267);
          dsema = v71;
          dispatch_semaphore_wait(v71, 0xFFFFFFFFFFFFFFFFLL);
          if (*(v272 + 5))
          {
            *&v329 = 0;
            *(&v329 + 1) = &v329;
            v330 = 0x3032000000;
            v331 = __Block_byref_object_copy__5;
            v332 = __Block_byref_object_dispose__5;
            v333 = 0;
            v72 = *(v272 + 5);
            v266[0] = MEMORY[0x1E69E9820];
            v266[1] = 3221225472;
            v266[2] = __PCSGuitarfishRepairIdentities_block_invoke_207;
            v266[3] = &unk_1E7B19E68;
            v266[4] = &v329;
            _PCSBackupGuitarfishGetRecoveredInnerBlobFromOuterBlobWithWrappingKey(v72, v231, v266);
            if (*(*(&v329 + 1) + 40))
            {
              v73 = pcsLogObjForScope("Guitarfish");
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                PCSGuitarfishRepairIdentities_cold_1(&v329 + 8, v73);
              }

              v74 = *(v272 + 5);
              *(v272 + 5) = 0;
            }

            else
            {
              v74 = pcsLogObjForScope("Guitarfish");
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                *v260 = 0;
                _os_log_impl(&dword_1B229C000, v74, OS_LOG_TYPE_DEFAULT, "Existing stashed wrappingKey is valid for the current record. No need to recover via p_password or p_token", v260, 2u);
              }
            }

            _Block_object_dispose(&v329, 8);
          }

          cf = objc_alloc_init(MEMORY[0x1E695DF90]);
          [cf setObject:v11 forKeyedSubscript:kPCSSetupDSID[0]];
          v75 = [v234 username];
          [cf setObject:v75 forKeyedSubscript:kPCSSetupUsername[0]];

          v76 = [v238 objectForKeyedSubscript:kPCSSetupPassword[0]];
          [cf setObject:v76 forKeyedSubscript:kPCSSetupPassword[0]];

          v77 = [v238 objectForKeyedSubscript:kPCSSetupRawPassword[0]];
          [cf setObject:v77 forKeyedSubscript:kPCSSetupRawPassword[0]];

          [cf setObject:MEMORY[0x1E695E118] forKeyedSubscript:kPCSSetupGuitarfish[0]];
          v78 = [v238 objectForKeyedSubscript:kPCSSetupVerifierProtocol[0]];
          [cf setObject:v78 forKeyedSubscript:kPCSSetupVerifierProtocol[0]];

          v79 = [v238 objectForKeyedSubscript:kPCSSetupVerifierIterationCount[0]];
          [cf setObject:v79 forKeyedSubscript:kPCSSetupVerifierIterationCount[0]];

          v80 = [v238 objectForKeyedSubscript:kPCSSetupVerifierSalt[0]];
          [cf setObject:v80 forKeyedSubscript:kPCSSetupVerifierSalt[0]];

          v81 = [v238 objectForKeyedSubscript:kPCSSetupPasswordGeneration[0]];
          [cf setObject:v81 forKeyedSubscript:kPCSSetupPasswordGeneration[0]];

          v82 = [v230 objectForKeyedSubscript:@"IdMSPasswordGeneration"];
          [cf setObject:v82 forKeyedSubscript:kPCSPasswordGenerationFromExistingMetadata[0]];

          if (*(v272 + 5))
          {
            goto LABEL_46;
          }

          v85 = pcsLogObjForScope("Guitarfish");
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v329) = 0;
            _os_log_impl(&dword_1B229C000, v85, OS_LOG_TYPE_DEFAULT, "wrappingKey is not already available locally, performing recovery", &v329, 2u);
          }

          v86 = [v238 objectForKeyedSubscript:kPCSSetupRecoveryToken[0]];
          v87 = v86 == 0;

          if (v87)
          {
            v108 = pcsLogObjForScope("Guitarfish");
            if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v329) = 0;
              _os_log_impl(&dword_1B229C000, v108, OS_LOG_TYPE_DEFAULT, "Repair: Attempting p_password recovery", &v329, 2u);
            }

            v109 = [v238 objectForKeyedSubscript:kPCSSetupPreviousiCloudPassword[0]];

            if (v109)
            {
              v110 = pcsLogObjForScope("Guitarfish");
              if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v329) = 0;
                _os_log_impl(&dword_1B229C000, v110, OS_LOG_TYPE_DEFAULT, "Repair: Provided a previous iCloud Password, using that for p_password recovery", &v329, 2u);
              }

              v111 = [v238 objectForKeyedSubscript:kPCSSetupPreviousiCloudPassword[0]];
              [cf setObject:v111 forKeyedSubscript:kPCSSetupRawPassword[0]];

              v112 = [v238 objectForKeyedSubscript:kPCSSetupPreviousiCloudPasswordGeneration[0]];
              [cf setObject:v112 forKeyedSubscript:kPCSSetupPasswordGeneration[0]];
            }

            v302 = 0;
            v113 = __PCSCopyHSMData(1, 0, cf, &v302);
            v114 = v302;
            if (v302)
            {
              v115 = pcsLogObjForScope("Guitarfish");
              if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v329) = 138412290;
                *(&v329 + 4) = v114;
                _os_log_impl(&dword_1B229C000, v115, OS_LOG_TYPE_DEFAULT, "Repair: FAILED to recover p_password from HSM: %@", &v329, 0xCu);
              }

              v252 = v114;
              _PCSNSError(&v252, 221, @"Unable to recover wrappingKey with p_password", v116, v117, v118, v119, v120, @"IdMSPasswordGeneration");
              v121 = v252;

              completeRepairIdentities(v237, 2, v317[3], v121);
            }

            else
            {
              v175 = [v238 objectForKeyedSubscript:kPCSSetupRawPassword[0]];
              [cf setObject:v175 forKeyedSubscript:kPCSSetupRawPassword[0]];

              v176 = [v238 objectForKeyedSubscript:kPCSSetupPasswordGeneration[0]];
              [cf setObject:v176 forKeyedSubscript:kPCSSetupPasswordGeneration[0]];

              v177 = pcsLogObjForScope("Guitarfish");
              if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
              {
                v178 = [v113 length];
                LODWORD(v329) = 134217984;
                *(&v329 + 4) = v178;
                _os_log_impl(&dword_1B229C000, v177, OS_LOG_TYPE_DEFAULT, "Repair: Obtained ClassicContent with length of: %lu", &v329, 0xCu);
              }

              v179 = *(*&buf[8] + 40);
              v180 = (v286 + 5);
              obj = v286[5];
              v181 = _PCSGuitarfishUnwrapKeyWithAESKey(v179, v113, &obj);
              objc_storeStrong(v180, obj);
              v182 = *(v272 + 5);
              *(v272 + 5) = v181;

              if (v286[5])
              {
                v189 = pcsLogObjForScope("Guitarfish");
                if (os_log_type_enabled(v189, OS_LOG_TYPE_DEFAULT))
                {
                  v190 = v286[5];
                  LODWORD(v329) = 138412290;
                  *(&v329 + 4) = v190;
                  _os_log_impl(&dword_1B229C000, v189, OS_LOG_TYPE_DEFAULT, "Unable to unwrap wrappingKey with p_password: %@", &v329, 0xCu);
                }
              }

              v191 = v317[3];
              if (*(v272 + 5))
              {
                v317[3] = v191 & 0xFFFFFFFFFFF9FFFDLL | 0x60000;
                v192 = pcsLogObjForScope("Guitarfish");
                if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v329) = 0;
                  _os_log_impl(&dword_1B229C000, v192, OS_LOG_TYPE_DEFAULT, "Repair: wrappingKey recovered with p_password", &v329, 2u);
                }

                goto LABEL_46;
              }

              v121 = PCSErrorCreate(221, @"Unable to recover wrappingKey with p_password", v183, v184, v185, v186, v187, v188, @"IdMSPasswordGeneration");
              completeRepairIdentities(v237, 2, v191, v121);
            }

LABEL_138:
            _Block_object_dispose(v271, 8);

            goto LABEL_139;
          }

          v88 = pcsLogObjForScope("Guitarfish");
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v329) = 0;
            _os_log_impl(&dword_1B229C000, v88, OS_LOG_TYPE_DEFAULT, "Repair: Attempting recovery token repair", &v329, 2u);
          }

          *&v329 = 0;
          *(&v329 + 1) = &v329;
          v330 = 0x3032000000;
          v331 = __Block_byref_object_copy__5;
          v332 = __Block_byref_object_dispose__5;
          v333 = 0;
          *v260 = 0;
          v261 = v260;
          v262 = 0x3032000000;
          v263 = __Block_byref_object_copy__5;
          v264 = __Block_byref_object_dispose__5;
          v265 = 0;
          v89 = [v238 objectForKeyedSubscript:kPCSSetupRecoveryToken[0]];
          v90 = dispatch_semaphore_create(0);

          v255[0] = MEMORY[0x1E69E9820];
          v255[1] = 3221225472;
          v255[2] = __PCSGuitarfishRepairIdentities_block_invoke_209;
          v255[3] = &unk_1E7B19E90;
          v257 = &v285;
          v258 = &v329;
          v259 = v260;
          dsema = v90;
          v256 = dsema;
          PCSGuitarfishDeriveRecoveryKeyFromMnemonic(v89, v255);
          dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
          if (v286[5])
          {
            v91 = pcsLogObjForScope("Guitarfish");
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
            {
              v92 = v286[5];
              *v325 = 138412290;
              *&v325[4] = v92;
              _os_log_impl(&dword_1B229C000, v91, OS_LOG_TYPE_DEFAULT, "unable to derive PID from provided mnemonic: %@", v325, 0xCu);
            }

            completeRepairIdentities(v237, 2, v317[3], v286[5]);
            v93 = 0;
LABEL_168:

            _Block_object_dispose(v260, 8);
            _Block_object_dispose(&v329, 8);

            if ((v93 & 1) == 0)
            {
              goto LABEL_138;
            }

LABEL_46:
            *&v329 = 0;
            *(&v329 + 1) = &v329;
            v330 = 0x3032000000;
            v331 = __Block_byref_object_copy__5;
            v332 = __Block_byref_object_dispose__5;
            v333 = 0;
            *v260 = 0;
            v261 = v260;
            v262 = 0x3032000000;
            v263 = __Block_byref_object_copy__5;
            v264 = __Block_byref_object_dispose__5;
            v265 = 0;
            *v325 = 0;
            *&v325[8] = v325;
            *&v325[16] = 0x3032000000;
            v326 = __Block_byref_object_copy__5;
            v327 = __Block_byref_object_dispose__5;
            v328 = 0;
            v83 = *(v272 + 5);
            if (!v83)
            {
              v94 = pcsLogObjForScope("Guitarfish");
              if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
              {
                *v321 = 0;
                _os_log_impl(&dword_1B229C000, v94, OS_LOG_TYPE_DEFAULT, "Unable to recover wrapping key from recovery mechanism, unable to repair", v321, 2u);
              }

              v95 = v317[3];
              v102 = PCSErrorCreate(223, @"Unable to recover wrappingKey from provided recovery mechanism", v96, v97, v98, v99, v100, v101, v224);
              completeRepairIdentities(v237, 3, v95, v102);
              goto LABEL_136;
            }

            v250[0] = MEMORY[0x1E69E9820];
            v250[1] = 3221225472;
            v250[2] = __PCSGuitarfishRepairIdentities_block_invoke_220;
            v250[3] = &unk_1E7B19EB8;
            v250[4] = &v285;
            v250[5] = &v329;
            v250[6] = v260;
            v250[7] = v325;
            _PCSBackupGuitarfishGetRecoveredInnerBlobFromOuterBlobWithWrappingKey(v83, v231, v250);
            v84 = v286[5];
            if (v84)
            {
              completeRepairIdentities(v237, 3, v317[3], v84);
LABEL_137:
              _Block_object_dispose(v325, 8);

              _Block_object_dispose(v260, 8);
              _Block_object_dispose(&v329, 8);

              goto LABEL_138;
            }

            v103 = dispatch_semaphore_create(0);

            v104 = *(v272 + 5);
            v247[0] = MEMORY[0x1E69E9820];
            v247[1] = 3221225472;
            v247[2] = __PCSGuitarfishRepairIdentities_block_invoke_221;
            v247[3] = &unk_1E7B19A60;
            v249 = &v316;
            dsema = v103;
            v248 = dsema;
            _PCSGuitarfishSetKeychainItem(@"WrappingKey", v11, v104, v247);
            dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
            if (*(*(&v329 + 1) + 40))
            {
              v105 = dispatch_semaphore_create(0);

              v106 = [*(*(&v329 + 1) + 40) componentsJoinedByString:@" "];
              v107 = [v106 dataUsingEncoding:4];
              v244[0] = MEMORY[0x1E69E9820];
              v244[1] = 3221225472;
              v244[2] = __PCSGuitarfishRepairIdentities_block_invoke_222;
              v244[3] = &unk_1E7B19A60;
              v246 = &v316;
              dsema = v105;
              v245 = dsema;
              _PCSGuitarfishSetKeychainItem(@"RecoveryToken", v11, v107, v244);

              dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
            }

            else
            {
              v317[3] &= ~0x40000uLL;
              _PCSGuitarfishDeleteKeychainItem(@"RecoveryToken", v11, &__block_literal_global_225);
            }

            if (!v234)
            {
              v132 = pcsLogObjForScope("Guitarfish");
              if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
              {
                *v321 = 0;
                _os_log_impl(&dword_1B229C000, v132, OS_LOG_TYPE_DEFAULT, "Unable to get ACAccount", v321, 2u);
              }

LABEL_93:

              v317[3] |= 0x1000uLL;
              v135 = pcsLogObjForScope("Guitarfish");
              if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
              {
                *v321 = 0;
                _os_log_impl(&dword_1B229C000, v135, OS_LOG_TYPE_DEFAULT, "Unable to resolve password version from AKAccount", v321, 2u);
              }

              v136 = [v233 objectForKeyedSubscript:v232];
              v137 = *MEMORY[0x1E6994EB0];
              v138 = [v136 objectForKeyedSubscript:*MEMORY[0x1E6994EB0]];
              if (v138)
              {
                v139 = [v233 objectForKeyedSubscript:v232];
                v140 = *MEMORY[0x1E6994E98];
                v141 = [v139 objectForKeyedSubscript:*MEMORY[0x1E6994E98]];
                v142 = v141 == 0;

                if (v142)
                {
                  goto LABEL_103;
                }

                v143 = pcsLogObjForScope("Guitarfish");
                if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
                {
                  v144 = [v233 objectForKeyedSubscript:v232];
                  v145 = [v144 objectForKeyedSubscript:v137];
                  v146 = [v233 objectForKeyedSubscript:v232];
                  v147 = [v146 objectForKeyedSubscript:v140];
                  *v321 = 138412546;
                  v322 = v145;
                  v323 = 2112;
                  v324 = v147;
                  _os_log_impl(&dword_1B229C000, v143, OS_LOG_TYPE_DEFAULT, "Existing Federation: %@, Expected Federation: %@", v321, 0x16u);
                }

                v148 = [v233 objectForKeyedSubscript:v232];
                v149 = [v148 objectForKeyedSubscript:v137];
                v150 = [v233 objectForKeyedSubscript:v232];
                v151 = [v150 objectForKeyedSubscript:v140];
                v152 = [v149 isEqual:v151];

                if (v152)
                {
                  goto LABEL_103;
                }

                v317[3] |= 0x80uLL;
                v136 = pcsLogObjForScope("Guitarfish");
                if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
                {
                  *v321 = 0;
                  _os_log_impl(&dword_1B229C000, v136, OS_LOG_TYPE_DEFAULT, "Federation Migration Needed", v321, 2u);
                }
              }

LABEL_103:
              v153 = [v233 objectForKeyedSubscript:{v232, v224, v227, v228}];
              v225 = [v153 objectForKeyedSubscript:*MEMORY[0x1E6994F50]];

              v154 = pcsLogObjForScope("Guitarfish");
              if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
              {
                *v321 = 138412290;
                v322 = v225;
                _os_log_impl(&dword_1B229C000, v154, OS_LOG_TYPE_DEFAULT, "Primary record has %@ attempts remaining", v321, 0xCu);
              }

              if (v225 && [v225 isEqualToNumber:&unk_1F2998448])
              {
                v155 = pcsLogObjForScope("Guitarfish");
                if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
                {
                  *v321 = 0;
                  _os_log_impl(&dword_1B229C000, v155, OS_LOG_TYPE_DEFAULT, "Primary record is terminal, re-enroll is required", v321, 2u);
                }

                [cf setObject:MEMORY[0x1E695E118] forKeyedSubscript:kPCSSetupForceEnroll[0]];
              }

              v241 = 0u;
              v242 = 0u;
              v239 = 0u;
              v240 = 0u;
              v156 = [&unk_1F29983D0 countByEnumeratingWithState:&v239 objects:v320 count:{16, v225}];
              if (v156)
              {
                v157 = *v240;
                v158 = MEMORY[0x1E695E118];
                do
                {
                  for (i = 0; i != v156; ++i)
                  {
                    if (*v240 != v157)
                    {
                      objc_enumerationMutation(&unk_1F29983D0);
                    }

                    v160 = *(*(&v239 + 1) + 8 * i);
                    v161 = v317[3];
                    v162 = [v160 intValue];
                    if ((v161 & v162) == [v160 intValue])
                    {
                      v163 = pcsLogObjForScope("Guitarfish");
                      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
                      {
                        v164 = _PCSGuitarfishPopulateFlagNamesToTelemetryArray([v160 intValue], 0);
                        *v321 = 138412290;
                        v322 = v164;
                        _os_log_impl(&dword_1B229C000, v163, OS_LOG_TYPE_DEFAULT, "Flag %@ was set, forcing re-enrollment and unsetting flag", v321, 0xCu);
                      }

                      [cf setObject:v158 forKeyedSubscript:kPCSSetupForceEnroll[0]];
                      v165 = [v160 intValue];
                      v317[3] &= ~v165;
                    }
                  }

                  v156 = [&unk_1F29983D0 countByEnumeratingWithState:&v239 objects:v320 count:16];
                }

                while (v156);
              }

              v166 = [cf objectForKeyedSubscript:kPCSSetupForceEnroll[0]];

              if (v166)
              {
                v167 = pcsLogObjForScope("Guitarfish");
                if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
                {
                  *v321 = 0;
                  _os_log_impl(&dword_1B229C000, v167, OS_LOG_TYPE_DEFAULT, "Forcing enroll of Primary record", v321, 2u);
                }
              }

              v302 = 0;
              v168 = pcsLogObjForScope("Guitarfish");
              if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
              {
                *v321 = 0;
                _os_log_impl(&dword_1B229C000, v168, OS_LOG_TYPE_DEFAULT, "Repair: Calling Synchronize", v321, 2u);
              }

              v169 = PCSIdentitySynchronizeKeys(cf, &v302);
              v170 = pcsLogObjForScope("Guitarfish");
              if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
              {
                *v321 = 67109120;
                LODWORD(v322) = v169;
                _os_log_impl(&dword_1B229C000, v170, OS_LOG_TYPE_DEFAULT, "Repair: Synchronize status: %d", v321, 8u);
              }

              v171 = v302;
              if (v302)
              {
                v172 = pcsLogObjForScope("Guitarfish");
                if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
                {
                  *v321 = 138412290;
                  v322 = v171;
                  _os_log_impl(&dword_1B229C000, v172, OS_LOG_TYPE_DEFAULT, "Repair: Synchronize error: %@", v321, 0xCu);
                }

                completeRepairIdentities(v237, 2, v317[3], v171);
                v102 = v226;
              }

              else
              {
                v173 = pcsLogObjForScope("Guitarfish");
                if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
                {
                  *v321 = 0;
                  _os_log_impl(&dword_1B229C000, v173, OS_LOG_TYPE_DEFAULT, "Repair: Finished", v321, 2u);
                }

                v174 = CFNotificationCenterGetDarwinNotifyCenter();
                v102 = v226;
                CFNotificationCenterPostNotification(v174, kPCSNotificationGuitarfishRepairCompleted, 0, 0, 0);
                completeRepairIdentities(v237, 0, v317[3], 0);
              }

LABEL_136:

              goto LABEL_137;
            }

            v129 = [getAKAccountManagerClass() sharedInstance];
            v130 = [v234 aa_altDSID];
            v243 = 0;
            v131 = [v129 authKitAccountWithAltDSID:v130 error:&v243];
            v132 = v243;

            if (!v131 || v132)
            {
              v133 = pcsLogObjForScope("Guitarfish");
              if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
              {
                *v321 = 138412290;
                v322 = v132;
                v134 = "Unable to get AKAccount: %@";
                goto LABEL_91;
              }
            }

            else
            {
              v133 = pcsLogObjForScope("Guitarfish");
              if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
              {
                *v321 = 138412290;
                v322 = 0;
                v134 = "Got passwordVersionForAccount: %@";
LABEL_91:
                _os_log_impl(&dword_1B229C000, v133, OS_LOG_TYPE_DEFAULT, v134, v321, 0xCu);
              }
            }

            goto LABEL_93;
          }

          if (([*(*(&v329 + 1) + 40) isEqualToData:v51] & 1) == 0)
          {
            v193 = pcsLogObjForScope("Guitarfish");
            if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
            {
              v194 = *(*(&v329 + 1) + 40);
              *v325 = 138412546;
              *&v325[4] = v194;
              *&v325[12] = 2112;
              *&v325[14] = v51;
              _os_log_impl(&dword_1B229C000, v193, OS_LOG_TYPE_DEFAULT, "derived PID isn't equal to record PID: %@, %@", v325, 0x16u);
            }

            v195 = v317[3];
            v123 = PCSErrorCreate(235, @"Recovery token record has a different PID, not attempting recovery", v196, v197, v198, v199, v200, v201, @"IdMSPasswordGeneration");
            completeRepairIdentities(v237, 2, v195, v123);
            v93 = 0;
            goto LABEL_167;
          }

          v122 = pcsLogObjForScope("Guitarfish");
          if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
          {
            *v325 = 0;
            _os_log_impl(&dword_1B229C000, v122, OS_LOG_TYPE_DEFAULT, "Repair: Recovering RT Record hsm contents", v325, 2u);
          }

          v123 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v123 setObject:MEMORY[0x1E695E118] forKeyedSubscript:kPCSSetupGuitarfishToken[0]];
          v124 = [v238 objectForKeyedSubscript:kPCSSetupDSID[0]];
          [v123 setObject:v124 forKeyedSubscript:kPCSSetupDSID[0]];

          v302 = 0;
          v125 = __PCSCopyGuitarfishTokenData(0, v123, &v302);
          if (v302)
          {
            v126 = v286[5];
            v286[5] = v302;

            v127 = pcsLogObjForScope("Guitarfish");
            if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
            {
              v128 = v286[5];
              *v325 = 138412290;
              *&v325[4] = v128;
              _os_log_impl(&dword_1B229C000, v127, OS_LOG_TYPE_DEFAULT, "unable to obtain p_token from hsm: %@", v325, 0xCu);
            }

            completeRepairIdentities(v237, 2, v317[3], v286[5]);
            v93 = 0;
            goto LABEL_166;
          }

          v202 = *(v261 + 5);
          v203 = (v286 + 5);
          v254 = v286[5];
          v204 = _PCSGuitarfishDeriveRecoveryTokenWrap(v202, v125, &v254);
          objc_storeStrong(v203, v254);
          if (v204 && !v286[5])
          {
            v207 = pcsLogObjForScope("Guitarfish");
            if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
            {
              *v325 = 0;
              _os_log_impl(&dword_1B229C000, v207, OS_LOG_TYPE_DEFAULT, "Repair: Unwrapping wrappingKey with p_recovery", v325, 2u);
            }

            v208 = v296[5];
            v209 = (v286 + 5);
            v253 = v286[5];
            v210 = _PCSGuitarfishUnwrapKeyWithAESKey(v208, v204, &v253);
            objc_storeStrong(v209, v253);
            v211 = *(v272 + 5);
            *(v272 + 5) = v210;

            if (v286[5])
            {
              v218 = pcsLogObjForScope("Guitarfish");
              if (os_log_type_enabled(v218, OS_LOG_TYPE_DEFAULT))
              {
                v219 = v286[5];
                *v325 = 138412290;
                *&v325[4] = v219;
                _os_log_impl(&dword_1B229C000, v218, OS_LOG_TYPE_DEFAULT, "Unable to unwrap wrappingKey with p_recovery: %@", v325, 0xCu);
              }
            }

            if (*(v272 + 5))
            {
              v220 = pcsLogObjForScope("Guitarfish");
              if (os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
              {
                *v325 = 0;
                _os_log_impl(&dword_1B229C000, v220, OS_LOG_TYPE_DEFAULT, "Repair: wrappingKey recovered with p_recovery", v325, 2u);
              }

              v317[3] |= 0x180000uLL;
              v93 = 1;
              goto LABEL_165;
            }

            v221 = v317[3];
            v222 = PCSErrorCreate(222, @"Unable to recover wrappingKey with p_recovery", v212, v213, v214, v215, v216, v217, @"IdMSPasswordGeneration");
            completeRepairIdentities(v237, 2, v221, v222);
          }

          else
          {
            v205 = pcsLogObjForScope("Guitarfish");
            if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
            {
              v206 = v286[5];
              *v325 = 138412290;
              *&v325[4] = v206;
              _os_log_impl(&dword_1B229C000, v205, OS_LOG_TYPE_DEFAULT, "unable to derive token wrap: %@", v325, 0xCu);
            }

            completeRepairIdentities(v237, 2, v317[3], v286[5]);
          }

          v93 = 0;
LABEL_165:

LABEL_166:
LABEL_167:

          goto LABEL_168;
        }

        v59 = PCSErrorCreate(123, @"must provide kPCSSetupRawPassword", v32, v33, v34, v35, v36, v37, v223);
        completeRepairIdentities(v237, 2, 1uLL, v59);
      }

LABEL_141:

LABEL_142:
      _Block_object_dispose(&v308, 8);
      _Block_object_dispose(&v312, 8);
      v55 = dsema;
      goto LABEL_143;
    }
  }

  v11 = PCSErrorCreate(121, @"Missing DSID in parameters", v4, v5, v6, v7, v8, v9, v223);
  completeRepairIdentities(v237, 2, 1uLL, v11);
LABEL_144:

  _Block_object_dispose(&v316, 8);
}

void sub_1B22E03D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v65 - 256), 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose(&STACK[0x340], 8);
  _Block_object_dispose(&STACK[0x370], 8);
  _Block_object_dispose((v65 - 208), 8);
  _Block_object_dispose(&STACK[0x3F0], 8);
  _Block_object_dispose(&STACK[0x410], 8);
  _Block_object_dispose(&STACK[0x430], 8);
  _Unwind_Resume(a1);
}

void completeRepairIdentities(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a1;
  v9 = pcsLogObjForScope("Guitarfish");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _PCSGuitarfishPopulateFlagNamesToTelemetryArray(a3, 0);
    v11 = 134218754;
    v12 = a2;
    v13 = 2112;
    v14 = v7;
    v15 = 2048;
    v16 = a3;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_1B229C000, v9, OS_LOG_TYPE_DEFAULT, "PCSGuitarfishRepairIdentities Complete: Status: %lu, error: %@, flags: %lu, flags_dict: %@", &v11, 0x2Au);
  }

  v8[2](v8, a2, a3, v7);
}

void PCSGuitarfishValidateIdentities(void *a1, void *a2)
{
  v269[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = pcsLogObjForScope("Guitarfish");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, v5, OS_LOG_TYPE_DEFAULT, "PCSGuitarfishValidateIdentities entered", buf, 2u);
  }

  v247 = 0;
  v248 = &v247;
  v249 = 0x2020000000;
  v250 = 0;
  v243 = 0;
  v244 = &v243;
  v245 = 0x2020000000;
  v246 = 0;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v3 && ([(__CFDictionary *)v3 objectForKeyedSubscript:kPCSSetupDSID[0]], v13 = objc_claimAutoreleasedReturnValue(), (v14 = v13) != 0))
  {
    if (PCSCurrentPersonaMatchesDSID(v13))
    {
      cf = 0;
      v21 = PCSIdentitySetCreate(v3, 0, &cf);
      v22 = cf;
      if (v21)
      {
        if (cf)
        {
          cf = 0;
          CFRelease(v22);
        }

        v241 = 0;
        v23 = PCSIdentitySetIsWalrusWithForceFetch(v21, 0, &v241);
        v24 = v241;
        if (v241)
        {
          completeValidateIdentities(v4, 2, 1uLL, v12, v241);

LABEL_100:
          CFRelease(v21);
          goto LABEL_101;
        }

        v26 = v23;
        *buf = 0;
        v236 = buf;
        v237 = 0x3032000000;
        v238 = __Block_byref_object_copy__5;
        v239 = __Block_byref_object_dispose__5;
        v240 = 0;
        v233[0] = 0;
        v233[1] = v233;
        v233[2] = 0x3032000000;
        v233[3] = __Block_byref_object_copy__5;
        v233[4] = __Block_byref_object_dispose__5;
        v234 = 0;
        v227 = 0;
        v228 = &v227;
        v229 = 0x3032000000;
        v230 = __Block_byref_object_copy__5;
        v231 = __Block_byref_object_dispose__5;
        v232 = 0;
        if ((v23 & 1) == 0)
        {
          v27 = dispatch_semaphore_create(0);
          v268 = kPCSSetupDSID[0];
          v269[0] = v14;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v269 forKeys:&v268 count:1];
          v221[0] = MEMORY[0x1E69E9820];
          v221[1] = 3221225472;
          v221[2] = __PCSGuitarfishValidateIdentities_block_invoke;
          v221[3] = &unk_1E7B19F08;
          v223 = &v243;
          v224 = &v247;
          v225 = v233;
          v226 = buf;
          v24 = v27;
          v222 = v24;
          PCSGuitarfishGetRecoveryTokenInfo(v28, v221);

          dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
        }

        v220 = 0;
        v266 = kPCSSetupDSID[0];
        v267 = v14;
        v180 = __PCSCopyStingrayInfo(1, 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v267 forKeys:&v266 count:1], &v220);
        v29 = v220;
        if (v220 || !v180)
        {
          v59 = v244[3] | 2;
          v244[3] = v59;
          v60 = v29;
          completeValidateIdentities(v4, 2, v59, v12, v29);
        }

        else
        {
          v176 = *MEMORY[0x1E6994F70];
          v30 = [v180 objectForKeyedSubscript:?];
          v31 = v30 == 0;

          if (!v31)
          {
            v32 = [v180 objectForKeyedSubscript:v176];
            v173 = *MEMORY[0x1E6994E48];
            v178 = [v32 objectForKeyedSubscript:?];

            v177 = [v178 objectForKeyedSubscript:kPCSSecureBackupCFiCloudDataProtectionKey[0]];
            v179 = [v177 objectForKeyedSubscript:@"SecureBackupWrappedKeys"];
            v175 = [v177 objectForKeyedSubscript:?];
            v174 = [v178 objectForKeyedSubscript:@"IdMSPasswordGeneration"];
            v33 = pcsLogObjForScope("Guitarfish");
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = [v179 base64EncodedStringWithOptions:0];
              LODWORD(v261) = 138412290;
              *(&v261 + 4) = v34;
              _os_log_impl(&dword_1B229C000, v33, OS_LOG_TYPE_DEFAULT, "OuterBlob: %@", &v261, 0xCu);
            }

            v35 = pcsLogObjForScope("Guitarfish");
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = [v175 base64EncodedStringWithOptions:0];
              LODWORD(v261) = 138412290;
              *(&v261 + 4) = v36;
              _os_log_impl(&dword_1B229C000, v35, OS_LOG_TYPE_DEFAULT, "PID: %@", &v261, 0xCu);
            }

            if (!v179)
            {
              v69 = v244[3] | 2;
              v244[3] = v69;
              v70 = PCSErrorCreate(200, @"Failed to decode Outer blob, potential missing guitarfish record", v37, v38, v39, v40, v41, v42, log);
              completeValidateIdentities(v4, 1, v69, v12, v70);

LABEL_98:
              v60 = v175;
              goto LABEL_99;
            }

            if ((v26 & 1) == 0)
            {
              v43 = dispatch_semaphore_create(0);

              v216[0] = MEMORY[0x1E69E9820];
              v216[1] = 3221225472;
              v216[2] = __PCSGuitarfishValidateIdentities_block_invoke_268;
              v216[3] = &unk_1E7B199C0;
              v218 = &v227;
              v219 = &v243;
              v24 = v43;
              v217 = v24;
              _PCSGuitarfishGetKeychainItem(@"RecoveryToken", v14, v216);
              dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
            }

            *&v261 = 0;
            *(&v261 + 1) = &v261;
            v262 = 0x3032000000;
            v263 = __Block_byref_object_copy__5;
            v264 = __Block_byref_object_dispose__5;
            v265 = 0;
            v44 = dispatch_semaphore_create(0);

            v212[0] = MEMORY[0x1E69E9820];
            v212[1] = 3221225472;
            v212[2] = __PCSGuitarfishValidateIdentities_block_invoke_269;
            v212[3] = &unk_1E7B199C0;
            v214 = &v261;
            v215 = &v243;
            v213 = v44;
            v24 = v213;
            _PCSGuitarfishGetKeychainItem(@"WrappingKey", v14, v212);
            dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
            if (*(*(&v261 + 1) + 40))
            {
              if ((v26 & 1) != 0 || v228[5])
              {
                v206 = 0;
                v207 = &v206;
                v208 = 0x3032000000;
                v209 = __Block_byref_object_copy__5;
                v210 = __Block_byref_object_dispose__5;
                v211 = 0;
                v51 = dispatch_semaphore_create(0);

                v203[0] = MEMORY[0x1E69E9820];
                v203[1] = 3221225472;
                v203[2] = __PCSGuitarfishValidateIdentities_block_invoke_276;
                v203[3] = &unk_1E7B19F30;
                v205 = &v206;
                v24 = v51;
                v204 = v24;
                _PCSBackupGuitarfishDecodeOuterRecord(v179, v203);
                dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
                v57 = (v207 + 5);
                if (v207[5])
                {
                  obj = v207[5];
                  _PCSNSError(&obj, 200, @"Failed to decode Outer blob", v52, v53, v54, v55, v56, log);
                  objc_storeStrong(v57, obj);
                  v58 = v244[3] | 2;
                  v244[3] = v58;
                  completeValidateIdentities(v4, 1, v58, 0, v207[5]);
LABEL_96:

                  _Block_object_dispose(&v206, 8);
                  goto LABEL_97;
                }

                v196 = 0;
                v197 = &v196;
                v198 = 0x3032000000;
                v199 = __Block_byref_object_copy__5;
                v200 = __Block_byref_object_dispose__5;
                v201 = 0;
                v73 = *(*(&v261 + 1) + 40);
                v195[0] = MEMORY[0x1E69E9820];
                v195[1] = 3221225472;
                v195[2] = __PCSGuitarfishValidateIdentities_block_invoke_2;
                v195[3] = &unk_1E7B19E68;
                v195[4] = &v196;
                _PCSBackupGuitarfishGetRecoveredInnerBlobFromOuterBlobWithWrappingKey(v73, v179, v195);
                if (v197[5])
                {
                  v74 = pcsLogObjForScope("Guitarfish");
                  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                  {
                    *v257 = 0;
                    _os_log_impl(&dword_1B229C000, v74, OS_LOG_TYPE_DEFAULT, "wrappingKey is not valid for the inner record, needs repair", v257, 2u);
                  }

                  v244[3] |= 0x30uLL;
                  v190[0] = MEMORY[0x1E69E9820];
                  v190[1] = 3221225472;
                  v190[2] = __PCSGuitarfishValidateIdentities_block_invoke_280;
                  v190[3] = &unk_1E7B19F80;
                  v191 = v14;
                  v192 = v4;
                  v193 = &v243;
                  v194 = &v196;
                  _PCSGuitarfishDeleteKeychainItem(@"WrappingKey", v191, v190);

                  v75 = v191;
                  goto LABEL_95;
                }

                v78 = pcsLogObjForScope("Guitarfish");
                if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                {
                  *v257 = 0;
                  _os_log_impl(&dword_1B229C000, v78, OS_LOG_TYPE_DEFAULT, "wrappingKey is valid for the inner record", v257, 2u);
                }

                v79 = +[PCSAccountsModel defaultAccountsModel];
                v80 = [v79 store];
                v172 = [v80 aa_appleAccountWithPersonID:v14];

                if (!v172)
                {
                  v85 = pcsLogObjForScope("Guitarfish");
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                  {
                    *v257 = 0;
                    _os_log_impl(&dword_1B229C000, v85, OS_LOG_TYPE_DEFAULT, "Unable to get ACAccount", v257, 2u);
                  }

LABEL_56:

                  v244[3] |= 0x1000uLL;
                  v86 = pcsLogObjForScope("Guitarfish");
                  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                  {
                    *v257 = 0;
                    _os_log_impl(&dword_1B229C000, v86, OS_LOG_TYPE_DEFAULT, "Unable to resolve password version from AKAccount", v257, 2u);
                  }

                  [v12 setObject:v174 forKeyedSubscript:@"recordPasswordVersion"];
                  v168 = [v180 objectForKeyedSubscript:v176];
                  v164 = *MEMORY[0x1E6994EB0];
                  v87 = [v168 objectForKeyedSubscript:?];
                  if (v87)
                  {
                    v88 = [v180 objectForKeyedSubscript:v176];
                    v158 = *MEMORY[0x1E6994E98];
                    v89 = [v88 objectForKeyedSubscript:?];
                    v160 = v89 == 0;

                    if (!v160)
                    {
                      v90 = pcsLogObjForScope("Guitarfish");
                      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
                      {
                        log = v90;
                        v169 = [v180 objectForKeyedSubscript:v176];
                        v161 = [v169 objectForKeyedSubscript:v164];
                        v91 = [v180 objectForKeyedSubscript:v176];
                        v92 = [v91 objectForKeyedSubscript:v158];
                        *v257 = 138412546;
                        *&v257[4] = v161;
                        *&v257[12] = 2112;
                        *&v257[14] = v92;
                        _os_log_impl(&dword_1B229C000, log, OS_LOG_TYPE_DEFAULT, "Existing Federation: %@, Expected Federation: %@", v257, 0x16u);

                        v90 = log;
                      }

                      v170 = [v180 objectForKeyedSubscript:v176];
                      v165 = [v170 objectForKeyedSubscript:v164];
                      v93 = [v180 objectForKeyedSubscript:v176];
                      v94 = [v93 objectForKeyedSubscript:v158];
                      v162 = [v165 isEqual:v94];

                      if ((v162 & 1) == 0)
                      {
                        v244[3] |= 0x80uLL;
                        v95 = pcsLogObjForScope("Guitarfish");
                        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                        {
                          *v257 = 0;
                          _os_log_impl(&dword_1B229C000, v95, OS_LOG_TYPE_DEFAULT, "Federation Migration Needed", v257, 2u);
                        }

                        v96 = v244[3];
                        v103 = PCSErrorCreate(229, @"Federation Migration Needed", v97, v98, v99, v100, v101, v102, log);
                        completeValidateIdentities(v4, 1, v96, 0, v103);

                        goto LABEL_94;
                      }
                    }
                  }

                  else
                  {
                  }

                  v171 = 0;
                  *v257 = 0;
                  *&v257[8] = v257;
                  *&v257[16] = 0x3032000000;
                  v258 = __Block_byref_object_copy__5;
                  v259 = __Block_byref_object_dispose__5;
                  v260 = 0;
                  if ((v26 & 1) == 0)
                  {
                    v117 = dispatch_semaphore_create(0);

                    v118 = v228[5];
                    v185[0] = MEMORY[0x1E69E9820];
                    v185[1] = 3221225472;
                    v185[2] = __PCSGuitarfishValidateIdentities_block_invoke_288;
                    v185[3] = &unk_1E7B19FA8;
                    v187 = &v206;
                    v188 = v257;
                    v24 = v117;
                    v186 = v24;
                    PCSGuitarfishDeriveRecoveryKeyFromMnemonic(v118, v185);
                    dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
                    if (v207[5])
                    {
                      v119 = pcsLogObjForScope("Guitarfish");
                      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                      {
                        v120 = v207[5];
                        *v253 = 138412290;
                        v254 = v120;
                        _os_log_impl(&dword_1B229C000, v119, OS_LOG_TYPE_DEFAULT, "unable to derive PID from stashed mnemonic: %@", v253, 0xCu);
                      }

                      if (v207[5])
                      {
                        goto LABEL_87;
                      }
                    }

                    if (([*(*&v257[8] + 40) isEqualToData:v175] & 1) == 0)
                    {
LABEL_87:
                      v137 = pcsLogObjForScope("Guitarfish");
                      if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
                      {
                        v138 = *(*&v257[8] + 40);
                        *v253 = 138412546;
                        v254 = v138;
                        v255 = 2112;
                        v256 = v175;
                        _os_log_impl(&dword_1B229C000, v137, OS_LOG_TYPE_DEFAULT, "derived PID isn't equal to record PID: %@, %@", v253, 0x16u);
                      }

                      v244[3] |= 0x10uLL;
                      v181[0] = MEMORY[0x1E69E9820];
                      v181[1] = 3221225472;
                      v181[2] = __PCSGuitarfishValidateIdentities_block_invoke_289;
                      v181[3] = &unk_1E7B19F58;
                      v182 = v4;
                      v183 = &v243;
                      v184 = &v206;
                      _PCSGuitarfishDeleteKeychainItem(@"RecoveryToken", v14, v181);

                      v139 = v186;
                      goto LABEL_93;
                    }

                    v220 = 0;
                    v251 = kPCSSetupDSID[0];
                    v252 = v14;
                    v171 = __PCSCopyStingrayInfo(2, 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v252 forKeys:&v251 count:1], &v220);
                    v127 = v220;
                    if (v220)
                    {
                      v128 = v244[3] | 4;
                      v244[3] = v128;
                      completeValidateIdentities(v4, 2, v128, v12, v127);

LABEL_92:
                      v139 = v171;
LABEL_93:

                      _Block_object_dispose(v257, 8);
LABEL_94:
                      v75 = v172;
LABEL_95:

                      _Block_object_dispose(&v196, 8);
                      goto LABEL_96;
                    }

                    if (!v171 || (v140 = *MEMORY[0x1E6994EC0], [v171 objectForKeyedSubscript:*MEMORY[0x1E6994EC0]], v141 = objc_claimAutoreleasedReturnValue(), v142 = v141 == 0, v141, v142))
                    {
                      v146 = v244[3] | 4;
                      v244[3] = v146;
                      v147 = PCSErrorCreate(234, @"Recovery Token record is missing, needs repair", v121, v122, v123, v124, v125, v126, log);
                      completeValidateIdentities(v4, 1, v146, v12, v147);

                      goto LABEL_92;
                    }

                    v166 = [v171 objectForKeyedSubscript:v140];
                    v143 = [v166 objectForKeyedSubscript:v173];
                    v144 = [v143 objectForKeyedSubscript:kPCSSecureBackupCFiCloudDataProtectionKey[0]];
                    v145 = [v144 objectForKeyedSubscript:@"DerivedDBRSeedAESPID"];

                    if (!v145 || ([v145 isEqualToData:v175] & 1) == 0)
                    {
                      v148 = pcsLogObjForScope("Guitarfish");
                      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
                      {
                        *v253 = 0;
                        _os_log_impl(&dword_1B229C000, v148, OS_LOG_TYPE_DEFAULT, "healthcheck: PID mismatch, needs repair", v253, 2u);
                      }

                      v149 = v244[3] | 4;
                      v244[3] = v149;
                      v156 = PCSErrorCreate(235, @"Recovery Token PID is unexpected, needs repair", v150, v151, v152, v153, v154, v155, log);
                      completeValidateIdentities(v4, 1, v149, v12, v156);

                      goto LABEL_92;
                    }
                  }

                  v104 = [v180 objectForKeyedSubscript:v176];
                  v105 = *MEMORY[0x1E6994F50];
                  v106 = [v104 objectForKeyedSubscript:*MEMORY[0x1E6994F50]];

                  v107 = [v171 objectForKeyedSubscript:*MEMORY[0x1E6994EC0]];
                  v108 = [v107 objectForKeyedSubscript:v105];

                  [v12 setObject:v106 forKeyedSubscript:@"primaryRecordAttemptsRemaining"];
                  if ((v26 & 1) == 0)
                  {
                    [v12 setObject:v108 forKeyedSubscript:@"recoveryTokenRecordAttemptsRemaining"];
                  }

                  if (v106 && [v106 isEqualToNumber:&unk_1F2998448])
                  {
                    v115 = v244[3] | 2;
                    v244[3] = v115;
                    v116 = PCSErrorCreate(236, @"Primary Record is terminal, needs repair", v109, v110, v111, v112, v113, v114, log);
                    completeValidateIdentities(v4, 1, v115, v12, v116);
                  }

                  else
                  {
                    if (v108)
                    {
                      v129 = v26;
                    }

                    else
                    {
                      v129 = 1;
                    }

                    if ((v129 & 1) != 0 || ![v108 isEqualToNumber:&unk_1F2998448])
                    {
                      completeValidateIdentities(v4, v248[3], v244[3], v12, 0);
                      goto LABEL_91;
                    }

                    v136 = v244[3] | 4;
                    v244[3] = v136;
                    v116 = PCSErrorCreate(237, @"Recovery Token Record is terminal, needs repair", v130, v131, v132, v133, v134, v135, log);
                    completeValidateIdentities(v4, 1, v136, v12, v116);
                  }

LABEL_91:
                  goto LABEL_92;
                }

                v81 = [getAKAccountManagerClass() sharedInstance];
                v82 = [v172 aa_altDSID];
                v189 = 0;
                v167 = [v81 authKitAccountWithAltDSID:v82 error:&v189];
                v159 = v81;
                v163 = v189;

                if (!v167 || v163)
                {
                  v83 = pcsLogObjForScope("Guitarfish");
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                  {
                    *v257 = 138412290;
                    *&v257[4] = v163;
                    v84 = "Unable to get AKAccount: %@";
                    goto LABEL_54;
                  }
                }

                else
                {
                  v83 = pcsLogObjForScope("Guitarfish");
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                  {
                    *v257 = 138412290;
                    *&v257[4] = 0;
                    v84 = "Got passwordVersionForAccount: %@";
LABEL_54:
                    _os_log_impl(&dword_1B229C000, v83, OS_LOG_TYPE_DEFAULT, v84, v257, 0xCu);
                  }
                }

                v85 = v163;
                goto LABEL_56;
              }

              v76 = v244[3];
              v77 = PCSErrorCreate(216, @"Missing Recovery Token in Keychain, needs repair", v45, v46, v47, v48, v49, v50, log);
              completeValidateIdentities(v4, 1, v76, v12, v77);
            }

            else
            {
              v71 = v244[3];
              v72 = PCSErrorCreate(215, @"Missing Wrapping Key in Keychain, needs repair", v45, v46, v47, v48, v49, v50, log);
              completeValidateIdentities(v4, 1, v71, v12, v72);
            }

LABEL_97:

            _Block_object_dispose(&v261, 8);
            goto LABEL_98;
          }

          v244[3] |= 2uLL;
          v61 = pcsLogObjForScope("Guitarfish");
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v261) = 0;
            _os_log_impl(&dword_1B229C000, v61, OS_LOG_TYPE_DEFAULT, "No Guitarfish Primary Record to decode", &v261, 2u);
          }

          v62 = v244[3];
          v60 = PCSErrorCreate(238, @"No Primary Guitarfish Record. Account needs PCSGuitarfishSetupIdentities or migration.", v63, v64, v65, v66, v67, v68, log);
          completeValidateIdentities(v4, 2, v62, v12, v60);
        }

        v179 = 0;
LABEL_99:

        _Block_object_dispose(&v227, 8);
        _Block_object_dispose(v233, 8);

        _Block_object_dispose(buf, 8);
        goto LABEL_100;
      }

      completeValidateIdentities(v4, 2, 1uLL, v12, cf);
    }

    else
    {
      v25 = PCSErrorCreate(152, @"Current persona does not match chosen dsid", v15, v16, v17, v18, v19, v20, log);
      completeValidateIdentities(v4, 2, 1uLL, v12, v25);
    }
  }

  else
  {
    v14 = PCSErrorCreate(121, @"Missing DSID in parameters", v6, v7, v8, v9, v10, v11, log);
    completeValidateIdentities(v4, 2, 1uLL, v12, v14);
  }

LABEL_101:

  _Block_object_dispose(&v243, 8);
  _Block_object_dispose(&v247, 8);
}

void sub_1B22E1E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose((v66 - 256), 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v66 - 208), 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  CFRelease(v65);
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x370], 8);
  _Unwind_Resume(a1);
}

void __PCSGuitarfishRepairIdentities_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = v8;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) = a3;
  v10 = *(*(*(a1 + 48) + 8) + 24);
  if ((v10 & 0x400) == 0)
  {
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    *(*(*(a1 + 56) + 8) + 24) |= 0x800uLL;
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  *(*(*(a1 + 56) + 8) + 24) |= 0x400uLL;
  if ((*(*(*(a1 + 48) + 8) + 24) & 0x800) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_7:
  v11 = pcsLogObjForScope("Guitarfish");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&dword_1B229C000, v11, OS_LOG_TYPE_DEFAULT, "Encountered error retrieving existing health status: %@", &v12, 0xCu);
  }

LABEL_10:
  dispatch_semaphore_signal(*(a1 + 32));
}

void __PCSGuitarfishRepairIdentities_block_invoke_204(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v15)
  {
    v16 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_1B229C000, v16, OS_LOG_TYPE_DEFAULT, "unable to decode primary record, needs rpd", v29, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) |= 2uLL;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a6);
  }

  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v11;
  v19 = v11;

  v20 = *(*(a1 + 64) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v12;
  v22 = v12;

  v23 = *(*(a1 + 72) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v13;
  v25 = v13;

  v26 = *(*(a1 + 80) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v14;
  v28 = v14;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __PCSGuitarfishRepairIdentities_block_invoke_205(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6 || v7)
  {
    v10 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1B229C000, v10, OS_LOG_TYPE_DEFAULT, "unable to recover wrapping key from keychain: %@", &v11, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) |= 0x20uLL;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v9 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = [v6 length];
      _os_log_impl(&dword_1B229C000, v9, OS_LOG_TYPE_DEFAULT, "recovered wrapping key from keychain of length: %lu", &v11, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __PCSGuitarfishRepairIdentities_block_invoke_207(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a6;
  if (v8)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a6);
    v8 = v9;
  }
}

void __PCSGuitarfishRepairIdentities_block_invoke_209(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v15 = a4;
  if (v15)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
  v11 = v8;

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v7;
  v14 = v7;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __PCSGuitarfishRepairIdentities_block_invoke_220(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a6);
    v14 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v13;
      _os_log_impl(&dword_1B229C000, v14, OS_LOG_TYPE_DEFAULT, "Error decoding inner record: %@", &v23, 0xCu);
    }
  }

  v15 = *(a1[5] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v10;
  v17 = v10;

  v18 = *(a1[6] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v11;
  v20 = v11;

  v21 = *(a1[7] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v12;
}

void __PCSGuitarfishRepairIdentities_block_invoke_221(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = pcsLogObjForScope("Guitarfish");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "unable to save wrapping key to keychain: %@", &v8, 0xCu);
    }

    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 24) | 0x20;
  }

  else
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "saved wrapping key to keychain successfully", &v8, 2u);
    }

    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFDFLL;
  }

  *(v6 + 24) = v7;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __PCSGuitarfishRepairIdentities_block_invoke_222(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = pcsLogObjForScope("Guitarfish");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "unable to save recoveryToken key to keychain: %@", &v8, 0xCu);
    }

    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 24) | 0x20;
  }

  else
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "saved recoveryToken key to keychain successfully", &v8, 2u);
    }

    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFDFLL;
  }

  *(v6 + 24) = v7;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __PCSGuitarfishRepairIdentities_block_invoke_223(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_1B229C000, v3, OS_LOG_TYPE_DEFAULT, "Failed to delete recovery token from keychain: %@", &v4, 0xCu);
    }
  }
}

id getAKAccountManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAKAccountManagerClass_softClass_1;
  v7 = getAKAccountManagerClass_softClass_1;
  if (!getAKAccountManagerClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAKAccountManagerClass_block_invoke_1;
    v3[3] = &unk_1E7B18A90;
    v3[4] = &v4;
    __getAKAccountManagerClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B22E29E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PCSGuitarfishCreateSetupParameters_block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;
  v17 = v8;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v7;
  v14 = v7;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

void __PCSGuitarfishCreateSetupParameters_block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = pcsLogObjForScope("Guitarfish");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "unable to save wrapping key to keychain: %@", &v8, 0xCu);
    }

    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 24) | 0x20;
  }

  else
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "saved wrapping key to keychain successfully", &v8, 2u);
    }

    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFDFLL;
  }

  *(v6 + 24) = v7;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __PCSGuitarfishCreateSetupParameters_block_invoke_245(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = pcsLogObjForScope("Guitarfish");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "unable to save wrapping key to keychain: %@", &v8, 0xCu);
    }

    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 24) | 0x20;
  }

  else
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "saved wrapping key to keychain successfully", &v8, 2u);
    }

    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFDFLL;
  }

  *(v6 + 24) = v7;
  dispatch_semaphore_signal(*(a1 + 32));
}

void PCSGuitarfishSetupIdentities(void *a1, void *a2)
{
  v90[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = pcsLogObjForScope("Guitarfish");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1B229C000, v5, OS_LOG_TYPE_DEFAULT, "PCSGuitarfishSetupIdentities entered", &buf, 2u);
  }

  if (v3)
  {
    v12 = [v3 objectForKeyedSubscript:kPCSSetupDSID[0]];
    v13 = v12;
    if (v12)
    {
      v83 = 0;
      v89 = kPCSSetupDSID[0];
      v90[0] = v12;
      v14 = __PCSCopyStingrayInfo(1, 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:&v89 count:1], &v83);
      v15 = v14;
      if (v83)
      {
        _PCSError(&v83, 231, @"Unable to get the current primary record state, can't setupIdentities!");
        v16 = v83;
        v4[2](v4, 2, 1, 0, v83);
LABEL_53:

        goto LABEL_54;
      }

      v17 = *MEMORY[0x1E6994F70];
      v18 = [v14 objectForKeyedSubscript:*MEMORY[0x1E6994F70]];

      if (!v18)
      {
LABEL_28:
        v40 = pcsLogObjForScope("Guitarfish");
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 67109120;
          DWORD1(buf) = v18 == 0;
          _os_log_impl(&dword_1B229C000, v40, OS_LOG_TYPE_DEFAULT, "Create Identities from scratch: %d", &buf, 8u);
        }

        if (!v18)
        {
          v41 = pcsLogObjForScope("Guitarfish");
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_1B229C000, v41, OS_LOG_TYPE_DEFAULT, "No existing Guitarfish state detected, ok to enroll", &buf, 2u);
          }

          v73 = 0;
          v48 = __PCSDeleteFromKeychainICDPForRPD(v13, &v73, v42, v43, v44, v45, v46, v47);
          if (v73)
          {
            v49 = 0;
          }

          else
          {
            v49 = v48;
          }

          if ((v49 & 1) == 0)
          {
            v50 = pcsLogObjForScope("Guitarfish");
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v51 = v73;
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v73;
              _os_log_impl(&dword_1B229C000, v50, OS_LOG_TYPE_DEFAULT, "Error deleting previous icloud keychain stash: %@", &buf, 0xCu);
            }
          }
        }

        v67 = 0;
        v52 = [PCSAccountsModel adpEnabledForDSID:v13 error:&v67];
        v53 = v67;
        v16 = v53;
        if (v52)
        {
          v54 = pcsLogObjForScope("Guitarfish");
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            v55 = "OTAccountSettings indicate that ADP is enabled, setting up without recovery token";
            v56 = v54;
            v57 = 2;
LABEL_46:
            _os_log_impl(&dword_1B229C000, v56, OS_LOG_TYPE_DEFAULT, v55, &buf, v57);
          }
        }

        else
        {
          if (!v53)
          {
            goto LABEL_48;
          }

          v54 = pcsLogObjForScope("Guitarfish");
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v16;
            v55 = "Unable to determine ADP state: %@";
            v56 = v54;
            v57 = 12;
            goto LABEL_46;
          }
        }

LABEL_48:
        v66 = 0;
        v58 = PCSGuitarfishCreateSetupParameters(v3, v18 == 0, !v52, &v66);
        v59 = v66;
        v60 = v59;
        if (!v58 || v59)
        {
          v4[2](v4, 2, 1, 0, v59);
        }

        else
        {
          v61 = connectionPCSKeySyncing(0);
          v62 = [v61 remoteObjectProxyWithErrorHandler:&__block_literal_global_263];
          [v62 setupIdentitiesWithParameters:v58 complete:v4];
        }

        goto LABEL_53;
      }

      v19 = pcsLogObjForScope("Guitarfish");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B229C000, v19, OS_LOG_TYPE_DEFAULT, "Previous record exists, don't create new identities", &buf, 2u);
      }

      v20 = [v15 objectForKeyedSubscript:v17];
      v16 = [v20 objectForKeyedSubscript:*MEMORY[0x1E6994E48]];

      v21 = [v16 objectForKeyedSubscript:kPCSSecureBackupCFiCloudDataProtectionKey[0]];
      v22 = [v21 objectForKeyedSubscript:@"SecureBackupWrappedKeys"];

      if (!v22)
      {
LABEL_27:

        goto LABEL_28;
      }

      v23 = [v21 objectForKeyedSubscript:@"DerivedDBRSeedAESPID"];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = [@"invalid_record" dataUsingEncoding:4];
      }

      v26 = v25;

      v27 = pcsLogObjForScope("Guitarfish");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v26;
        _os_log_impl(&dword_1B229C000, v27, OS_LOG_TYPE_DEFAULT, "Attempting recovery first since Guitarfish record already exists with pid: %@", &buf, 0xCu);
      }

      v65 = v26;
      *&buf = 0;
      *(&buf + 1) = &buf;
      v85 = 0x3032000000;
      v86 = __Block_byref_object_copy__5;
      v87 = __Block_byref_object_dispose__5;
      v88 = dispatch_semaphore_create(0);
      v79 = 0;
      v80 = &v79;
      v81 = 0x2020000000;
      v82 = 2;
      v73 = 0;
      v74 = &v73;
      v75 = 0x3032000000;
      v76 = __Block_byref_object_copy__5;
      v77 = __Block_byref_object_dispose__5;
      v78 = 0;
      v69 = 0;
      v70 = &v69;
      v71 = 0x2020000000;
      v72 = 0;
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __PCSGuitarfishSetupIdentities_block_invoke;
      v68[3] = &unk_1E7B19EE0;
      v68[4] = &v79;
      v68[5] = &v73;
      v68[6] = &v69;
      v68[7] = &buf;
      PCSGuitarfishRepairIdentities(v3, v68);
      dispatch_semaphore_wait(*(*(&buf + 1) + 40), 0xFFFFFFFFFFFFFFFFLL);
      v28 = v74;
      if (v80[3] || v74[5])
      {
        v29 = v70[3] | 0x400000;
        v70[3] = v29;
        v30 = v28[5];
        v31 = v30;
        if (!v30)
        {
          v64 = [v65 base64EncodedStringWithOptions:0];
          v31 = PCSErrorCreate(231, @"primary record already exists in EP (PID:%@), and was unrecoverable, account may need another repair or RPD before SetupIdentities will continue", v32, v33, v34, v35, v36, v37, v64);
        }

        v4[2](v4, 2, v29, 0, v31);
        if (!v30)
        {

          v39 = v65;
          v38 = 0;
          goto LABEL_26;
        }

        v38 = 0;
      }

      else
      {
        v38 = 1;
      }

      v39 = v65;
LABEL_26:
      _Block_object_dispose(&v69, 8);
      _Block_object_dispose(&v73, 8);

      _Block_object_dispose(&v79, 8);
      _Block_object_dispose(&buf, 8);

      if (!v38)
      {

        goto LABEL_53;
      }

      goto LABEL_27;
    }
  }

  v13 = PCSErrorCreate(121, @"Missing DSID in parameters", v6, v7, v8, v9, v10, v11, v63);
  v4[2](v4, 2, 1, 0, v13);
LABEL_54:
}

void sub_1B22E3514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 192), 8);
  _Unwind_Resume(a1);
}

void __PCSGuitarfishSetupIdentities_block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a4;
  *(*(a1[4] + 8) + 24) = a2;
  objc_storeStrong((*(a1[5] + 8) + 40), a4);
  *(*(a1[6] + 8) + 24) = a3;
  v9 = pcsLogObjForScope("Guitarfish");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218498;
    v11 = a2;
    v12 = 2048;
    v13 = a3;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1B229C000, v9, OS_LOG_TYPE_DEFAULT, "Attempted repair during SetupIdentities with status: %lu, flags: %lu, and error: %@", &v10, 0x20u);
  }

  dispatch_semaphore_signal(*(*(a1[7] + 8) + 40));
}

void completeValidateIdentities(void *a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v12 = [MEMORY[0x1E696AD98] numberWithLong:a3];
  [v10 setObject:v12 forKeyedSubscript:@"flags"];

  v13 = [MEMORY[0x1E696AD98] numberWithLong:a2];
  [v10 setObject:v13 forKeyedSubscript:@"status"];

  v14 = _PCSGuitarfishPopulateFlagNamesToTelemetryArray(a3, 0);
  [v10 setObject:v14 forKeyedSubscript:@"flags_dict"];

  v15 = pcsLogObjForScope("Guitarfish");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v10;
    _os_log_impl(&dword_1B229C000, v15, OS_LOG_TYPE_DEFAULT, "PCSGuitarfishValidateIdentities Complete: Status: %@", &v16, 0xCu);
  }

  v9[2](v9, a2, a3, v10, v11);
}

void __PCSGuitarfishValidateIdentities_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v23 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  *(*(*(a1 + 40) + 8) + 24) |= a3;
  if (v13)
  {
    v14 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v13;
      _os_log_impl(&dword_1B229C000, v14, OS_LOG_TYPE_DEFAULT, "error while attempting to fetch recovery token info: %@", &v21, 0xCu);
    }
  }

  if (a2 == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v12;
  v17 = v12;

  v18 = *(*(a1 + 64) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v11;
  v20 = v11;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __PCSGuitarfishValidateIdentities_block_invoke_268(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v14 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v7;
      _os_log_impl(&dword_1B229C000, v14, OS_LOG_TYPE_DEFAULT, "unable to recover token from keychain: %@", &v15, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) |= 0x10uLL;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
    v9 = [v8 componentsSeparatedByString:@" "];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(*(*(a1 + 40) + 8) + 40) count];
      v15 = 134217984;
      v16 = v13;
      _os_log_impl(&dword_1B229C000, v12, OS_LOG_TYPE_DEFAULT, "recovered token from keychain of length: %lu", &v15, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __PCSGuitarfishValidateIdentities_block_invoke_269(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6 || v7)
  {
    v10 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1B229C000, v10, OS_LOG_TYPE_DEFAULT, "unable to recover wrapping key from keychain: %@", &v11, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) |= 0x20uLL;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v9 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = [v6 length];
      _os_log_impl(&dword_1B229C000, v9, OS_LOG_TYPE_DEFAULT, "recovered wrapping key from keychain of length: %lu", &v11, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __PCSGuitarfishValidateIdentities_block_invoke_276(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a6;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a6);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __PCSGuitarfishValidateIdentities_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a6;
  if (v8)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a6);
    v8 = v9;
  }
}

void __PCSGuitarfishValidateIdentities_block_invoke_280(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "Failed to delete wrapping key from keychain: %@", buf, 0xCu);
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __PCSGuitarfishValidateIdentities_block_invoke_281;
  v6[3] = &unk_1E7B19F58;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  _PCSGuitarfishDeleteKeychainItem(@"RecoveryToken", v5, v6);
}

void __PCSGuitarfishValidateIdentities_block_invoke_281(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "Failed to delete recovery token from keychain: %@", &v5, 0xCu);
    }
  }

  completeValidateIdentities(*(a1 + 32), 1, *(*(*(a1 + 40) + 8) + 24), 0, *(*(*(a1 + 48) + 8) + 40));
}

void __PCSGuitarfishValidateIdentities_block_invoke_288(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v10 = a4;
  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
  v9 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __PCSGuitarfishValidateIdentities_block_invoke_289(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "Failed to delete recovery token from keychain: %@", &v5, 0xCu);
    }
  }

  completeValidateIdentities(*(a1 + 32), 1, *(*(*(a1 + 40) + 8) + 24), 0, *(*(*(a1 + 48) + 8) + 40));
}

void *__getCKAcceptableValueClassesSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CloudKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CloudKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B19FC8;
    v7 = 0;
    CloudKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = CloudKitLibraryCore_frameworkLibrary;
    if (CloudKitLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = CloudKitLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "CKAcceptableValueClasses");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCKAcceptableValueClassesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CloudKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CloudKitLibraryCore_frameworkLibrary = result;
  return result;
}

void __connectionPCSKeySyncing_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F29A0580];
  _PCSSyncingSetupInterface(v0);
  v1 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.protectedcloudstorage.protectedcloudkeysyncing" options:4096];
  v2 = connectionPCSKeySyncing_connection;
  connectionPCSKeySyncing_connection = v1;

  if (connectionPCSKeySyncing_connection)
  {
    [connectionPCSKeySyncing_connection setRemoteObjectInterface:v0];
    [connectionPCSKeySyncing_connection setInvalidationHandler:&__block_literal_global_357];
    [connectionPCSKeySyncing_connection resume];
    [connectionPCSKeySyncing_connection setInterruptionHandler:&__block_literal_global_360];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "no server connection", v3, 2u);
  }
}

void __connectionPCSKeySyncing_block_invoke_355()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "pcs xpc connection handle invalid", v0, 2u);
  }
}

void __connectionPCSKeySyncing_block_invoke_358()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "server connection rejected us", v0, 2u);
  }
}

Class __getAKAccountManagerClass_block_invoke_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AuthKitLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AuthKitLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B19FE0;
    v6 = 0;
    AuthKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v4[0];
    if (AuthKitLibraryCore_frameworkLibrary_1)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AKAccountManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAKAccountManagerClass_block_invoke_cold_1();
  }

  getAKAccountManagerClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AuthKitLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  AuthKitLibraryCore_frameworkLibrary_1 = result;
  return result;
}

uint64_t PCSSupportGetClientInfo(uint64_t a1, uint64_t a2)
{
  if (PCSSupportGetClientInfo_onceToken != -1)
  {
    PCSSupportGetClientInfo_cold_1();
  }

  return PCSSupportGetClientInfo_clientInfo;
}

void sub_1B22E4CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B22E69BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __operationQueueForService_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("PCSCKKS.operationQueueForService", v0);
  v2 = operationQueueForService_queue;
  operationQueueForService_queue = v1;

  operationQueueForService_serviceQueueMap = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:5 capacity:0];

  return MEMORY[0x1EEE66BB8]();
}

void __operationQueueForService_block_invoke_2(uint64_t a1)
{
  v2 = [operationQueueForService_serviceQueueMap objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 40) + 8) + 40) setMaxConcurrentOperationCount:1];
    v8 = operationQueueForService_serviceQueueMap;
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);

    [v8 setObject:v10 forKey:v9];
  }
}

void *_PCSMostRecentlyCreatedItem(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = *MEMORY[0x1E697ACD0];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x1E697ACD0]];
  v7 = [v4 objectForKeyedSubscript:v5];
  objc_opt_class();
  v8 = v4;
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v8 = v3;
    if (objc_opt_isKindOfClass())
    {
      if ([v6 compare:v7] == -1)
      {
        v8 = v4;
      }

      else
      {
        v8 = v3;
      }
    }
  }

  v9 = v8;

  return v8;
}

void PCSGetBoundaryKey(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __PCSGetBoundaryKey_block_invoke;
  v8[3] = &unk_1E7B1A118;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, v8);
}

void __PCSGetBoundaryKey_block_invoke(uint64_t a1)
{
  v1 = a1;
  v119[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v2 = [*(a1 + 32) objectForKeyedSubscript:kPCSSetupDSID[0]];
  v3 = v2;
  if (!v2)
  {
    v34 = *(v1 + 40);
    v35 = MEMORY[0x1E696ABC0];
    v36 = kPCSErrorDomain;
    v118 = *MEMORY[0x1E695E620];
    v119[0] = @"dsid not available";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v119 forKeys:&v118 count:1];
    v37 = v35;
    v38 = v36;
    v39 = 121;
LABEL_29:
    v42 = [v37 errorWithDomain:v38 code:v39 userInfo:v11];
    (*(v34 + 16))(v34, 0, v42);

    goto LABEL_30;
  }

  if (!PCSCurrentPersonaMatchesDSID(v2))
  {
    v34 = *(v1 + 40);
    v40 = MEMORY[0x1E696ABC0];
    v41 = kPCSErrorDomain;
    v116 = *MEMORY[0x1E696A578];
    v117 = @"Current persona does not match chosen dsid";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
    v37 = v40;
    v38 = v41;
    v39 = 152;
    goto LABEL_29;
  }

  v4 = *MEMORY[0x1E697B018];
  v5 = *MEMORY[0x1E697AC30];
  v83 = *MEMORY[0x1E697AFF8];
  v114[0] = *MEMORY[0x1E697AFF8];
  v114[1] = v5;
  v85 = v5;
  v84 = v4;
  v115[0] = v4;
  v115[1] = kPCSAccountBoundaryKey[0];
  v6 = *MEMORY[0x1E695E4D0];
  v7 = *MEMORY[0x1E697AE80];
  v86 = *MEMORY[0x1E697AEB0];
  v114[2] = *MEMORY[0x1E697AEB0];
  v114[3] = v7;
  v115[2] = v6;
  v115[3] = v3;
  v8 = *MEMORY[0x1E697B318];
  v87 = *MEMORY[0x1E697ABD0];
  v114[4] = *MEMORY[0x1E697ABD0];
  v114[5] = v8;
  v115[4] = kPCSDefaultKeychainGroup[0];
  v115[5] = v6;
  v9 = *MEMORY[0x1E697B260];
  v114[6] = *MEMORY[0x1E697B310];
  v114[7] = v9;
  v10 = *MEMORY[0x1E697B268];
  v115[6] = v6;
  v115[7] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v115 forKeys:v114 count:8];
  v12 = PCSMeasureRelativeNanoTime();
  ++qword_1ED6F2630;
  v13 = _PCSKeychainForwardTable(v11, &cf);
  qword_1ED6F2638 += PCSMeasureRelativeNanoTime() - v12;
  if (v13 != -25300)
  {
    if (!v13)
    {
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      obj = cf;
      v14 = [obj countByEnumeratingWithState:&v93 objects:v113 count:16];
      if (v14)
      {
        v15 = v14;
        v81 = v7;
        v78 = v6;
        v79 = v1;
        v80 = v11;
        v16 = 0;
        v90 = 0;
        v91 = 0;
        v89 = 0;
        v17 = *v94;
        v18 = *MEMORY[0x1E697ABD8];
        v19 = *MEMORY[0x1E697AC20];
        v20 = *MEMORY[0x1E697AEA8];
        v88 = *MEMORY[0x1E697AF18];
        do
        {
          v21 = 0;
          v22 = v16;
          do
          {
            if (*v94 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v93 + 1) + 8 * v21);

            v23 = [v16 objectForKeyedSubscript:v18];
            v24 = [v23 isEqualToString:v19];

            if (v24)
            {
              v25 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1B229C000, v25, OS_LOG_TYPE_DEFAULT, "Item needs upgrading", buf, 2u);
              }

              v89 = 1;
            }

            v26 = [v16 objectForKeyedSubscript:v20];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v26 isEqualToString:v88])
              {
                v27 = v90;
                v90 = _PCSMostRecentlyCreatedItem(v90, v16);
              }

              else
              {
                v27 = v91;
                v91 = _PCSMostRecentlyCreatedItem(v91, v16);
              }
            }

            ++v21;
            v22 = v16;
          }

          while (v15 != v21);
          v15 = [obj countByEnumeratingWithState:&v93 objects:v113 count:16];
        }

        while (v15);

        if (v89)
        {
          v111[0] = v83;
          v111[1] = v85;
          v112[0] = v84;
          v112[1] = kPCSAccountBoundaryKey[0];
          v111[2] = v86;
          v111[3] = v18;
          v112[2] = v78;
          v112[3] = v19;
          v111[4] = v81;
          v111[5] = v87;
          v112[4] = v3;
          v112[5] = kPCSDefaultKeychainGroup[0];
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v112 forKeys:v111 count:6];
          v109 = v18;
          v110 = *MEMORY[0x1E697ABE0];
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
          v30 = qword_1ED6F2358(v28, v29);
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v106 = v30;
            _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Item upgrade resulted in: %d", buf, 8u);
          }
        }

        if (v90)
        {
          v31 = v90;
          v32 = v31;
          v1 = v79;
          v11 = v80;
          v33 = v91;
          goto LABEL_38;
        }

        v1 = v79;
        v11 = v80;
        v56 = v91;
        v57 = v88;
      }

      else
      {
        v56 = 0;
        v57 = *MEMORY[0x1E697AF18];
        v20 = *MEMORY[0x1E697AEA8];
      }

      v31 = v56;
      v58 = [v31 mutableCopy];
      [v58 setObject:v57 forKeyedSubscript:v20];
      (*(&_PCSKeychainForwardTable + 1))(v58, 0);

      v32 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v33 = v31;
      if (!v31)
      {
LABEL_41:
        (*(*(v1 + 40) + 16))();
        CFRelease(cf);

        goto LABEL_30;
      }

LABEL_38:
      v61 = [v31 objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v61 = 0;
      }

      v59 = v31;
      v60 = v33;
      goto LABEL_41;
    }

    goto LABEL_32;
  }

  v43 = [*(v1 + 32) objectForKeyedSubscript:kPCSSetupBoundaryNoCreate[0]];
  v44 = [v43 BOOLValue];

  if (v44)
  {
LABEL_32:
    v45 = *(v1 + 40);
    v46 = MEMORY[0x1E696ABC0];
    v47 = kPCSErrorDomain;
    v107 = *MEMORY[0x1E696A578];
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Boundary key not available: %d", v13];
    v108 = v48;
    v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
    v50 = [v46 errorWithDomain:v47 code:91 userInfo:v49];
    (*(v45 + 16))(v45, 0, v50);

    goto LABEL_30;
  }

  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x20uLL, buf))
  {
    v51 = *(v1 + 40);
    v52 = MEMORY[0x1E696ABC0];
    v53 = kPCSErrorDomain;
    v102 = *MEMORY[0x1E696A578];
    v103 = @"out of random";
    v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
    v55 = [v52 errorWithDomain:v53 code:92 userInfo:v54];
    (*(v51 + 16))(v51, 0, v55);
  }

  else
  {
    ccsha256_di();
    ccdigest();
    [MEMORY[0x1E695DEF0] dataWithBytes:buf length:32];
    v54 = v82 = v7;
    v62 = [MEMORY[0x1E695DEF0] dataWithBytes:v104 length:32];
    v55 = [v62 base64EncodedStringWithOptions:0];

    v63 = *MEMORY[0x1E697AE70];
    v100[0] = v83;
    v100[1] = v63;
    v101[0] = v84;
    v101[1] = v55;
    v64 = *MEMORY[0x1E697AEA8];
    v100[2] = v85;
    v100[3] = v64;
    v65 = *MEMORY[0x1E697AF18];
    v101[2] = kPCSAccountBoundaryKey[0];
    v101[3] = v65;
    v66 = *MEMORY[0x1E697ABD8];
    v100[4] = v86;
    v100[5] = v66;
    v67 = *MEMORY[0x1E697ABE0];
    v101[4] = v6;
    v101[5] = v67;
    v100[6] = v82;
    v100[7] = v87;
    v101[6] = v3;
    v101[7] = kPCSDefaultKeychainGroup[0];
    v100[8] = *MEMORY[0x1E697B3C0];
    v101[8] = v54;
    v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:9];
    v69 = [v68 mutableCopy];

    v70 = (*(&_PCSKeychainForwardTable + 1))(v69, 0);
    if (v70)
    {
      v71 = *(v1 + 40);
      v72 = MEMORY[0x1E696ABC0];
      v73 = kPCSErrorDomain;
      v98 = *MEMORY[0x1E696A578];
      v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to write into keychain: %d", v70];
      v99 = v74;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
      v76 = v75 = v3;
      v77 = [v72 errorWithDomain:v73 code:4 userInfo:v76];
      (*(v71 + 16))(v71, 0, v77);

      v3 = v75;
    }

    else
    {
      [v69 setObject:*MEMORY[0x1E697AF30] forKeyedSubscript:v64];
      (*(&_PCSKeychainForwardTable + 1))(v69, 0);
      (*(*(v1 + 40) + 16))();
    }
  }

LABEL_30:
}

void PCSGetAppBoundaryKey(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PCSGetAppBoundaryKey_block_invoke;
  block[3] = &unk_1E7B1A140;
  v14 = v5;
  v15 = v7;
  v13 = v6;
  v9 = v5;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

void __PCSGetAppBoundaryKey_block_invoke(uint64_t a1)
{
  v1 = a1;
  v114[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v2 = [*(a1 + 32) objectForKeyedSubscript:kPCSSetupDSID[0]];
  v3 = v2;
  if (!v2)
  {
    v36 = *(v1 + 48);
    v37 = MEMORY[0x1E696ABC0];
    v38 = kPCSErrorDomain;
    v113 = *MEMORY[0x1E695E620];
    v114[0] = @"dsid not available";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:&v113 count:1];
    v39 = v37;
    v40 = v38;
    v41 = 121;
LABEL_27:
    v11 = [v39 errorWithDomain:v40 code:v41 userInfo:v4];
    (*(v36 + 16))(v36, 0, v11);
    goto LABEL_28;
  }

  if (!PCSCurrentPersonaMatchesDSID(v2))
  {
    v36 = *(v1 + 48);
    v42 = MEMORY[0x1E696ABC0];
    v43 = kPCSErrorDomain;
    v111 = *MEMORY[0x1E696A578];
    v112 = @"Current persona does not match chosen dsid";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
    v39 = v42;
    v40 = v43;
    v41 = 152;
    goto LABEL_27;
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", kPCSAccountBoundaryKey[0], *(v1 + 40)];
  v5 = *MEMORY[0x1E697B018];
  v79 = *MEMORY[0x1E697AFF8];
  v80 = *MEMORY[0x1E697AC30];
  v109[0] = *MEMORY[0x1E697AFF8];
  v109[1] = v80;
  v81 = v5;
  v110[0] = v5;
  v110[1] = v4;
  v6 = *MEMORY[0x1E695E4D0];
  v83 = *MEMORY[0x1E697AEB0];
  v84 = *MEMORY[0x1E697AE80];
  v109[2] = *MEMORY[0x1E697AEB0];
  v109[3] = v84;
  v110[2] = v6;
  v110[3] = v3;
  v7 = *(v1 + 40);
  v8 = *MEMORY[0x1E697B318];
  v82 = *MEMORY[0x1E697ABD0];
  v109[4] = *MEMORY[0x1E697ABD0];
  v109[5] = v8;
  v110[4] = v7;
  v110[5] = v6;
  v9 = *MEMORY[0x1E697B260];
  v109[6] = *MEMORY[0x1E697B310];
  v109[7] = v9;
  v10 = *MEMORY[0x1E697B268];
  v110[6] = v6;
  v110[7] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:8];
  v12 = PCSMeasureRelativeNanoTime();
  ++qword_1ED6F2630;
  v13 = _PCSKeychainForwardTable(v11, &cf);
  qword_1ED6F2638 += PCSMeasureRelativeNanoTime() - v12;
  if (v13 != -25300)
  {
    if (!v13)
    {
      v76 = v6;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      obj = cf;
      v14 = [obj countByEnumeratingWithState:&v88 objects:v108 count:16];
      if (v14)
      {
        v15 = v14;
        v73 = v1;
        v74 = v11;
        v77 = v4;
        v75 = v3;
        v16 = 0;
        v17 = 0;
        v85 = 0;
        v18 = *v89;
        v19 = *MEMORY[0x1E697ABD8];
        v20 = *MEMORY[0x1E697AC20];
        v21 = *MEMORY[0x1E697AEA8];
        do
        {
          v22 = 0;
          v23 = v16;
          do
          {
            if (*v89 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v88 + 1) + 8 * v22);

            v24 = [v16 objectForKeyedSubscript:v19];
            v25 = [v24 isEqualToString:v20];

            if (v25)
            {
              v26 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1B229C000, v26, OS_LOG_TYPE_DEFAULT, "Item needs upgrading", buf, 2u);
              }

              v85 = 1;
            }

            v27 = [v16 objectForKeyedSubscript:v21];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = _PCSMostRecentlyCreatedItem(v17, v16);

              v17 = v28;
            }

            ++v22;
            v23 = v16;
          }

          while (v15 != v22);
          v15 = [obj countByEnumeratingWithState:&v88 objects:v108 count:16];
        }

        while (v15);

        v3 = v75;
        v1 = v73;
        if (v85)
        {
          v106[0] = v79;
          v106[1] = v80;
          v107[0] = v81;
          v107[1] = v77;
          v106[2] = v83;
          v106[3] = v19;
          v107[2] = v76;
          v107[3] = v20;
          v106[4] = v84;
          v106[5] = v82;
          v29 = *(v73 + 40);
          v107[4] = v75;
          v107[5] = v29;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:v106 count:6];
          v104 = v19;
          v105 = *MEMORY[0x1E697ABE0];
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
          v32 = qword_1ED6F2358(v30, v31);
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v101 = v32;
            _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Item upgrade resulted in: %d", buf, 8u);
          }
        }

        v33 = v17;
        v34 = v33;
        if (!v33)
        {
          v35 = 0;
          v4 = v77;
          v11 = v74;
          goto LABEL_36;
        }

        v35 = [v33 objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
        objc_opt_class();
        v4 = v77;
        v11 = v74;
        if (objc_opt_isKindOfClass())
        {
LABEL_36:
          (*(*(v1 + 48) + 16))();
          CFRelease(cf);

          goto LABEL_28;
        }
      }

      else
      {
        v34 = 0;
      }

      v35 = 0;
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  v44 = [*(v1 + 32) objectForKeyedSubscript:kPCSSetupBoundaryNoCreate[0]];
  v45 = [v44 BOOLValue];

  if (v45)
  {
LABEL_30:
    v46 = *(v1 + 48);
    v47 = MEMORY[0x1E696ABC0];
    v48 = kPCSErrorDomain;
    v102 = *MEMORY[0x1E696A578];
    v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Boundary key not available: %d", v13];
    v103 = v49;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
    v51 = [v47 errorWithDomain:v48 code:91 userInfo:v50];
    (*(v46 + 16))(v46, 0, v51);

    goto LABEL_28;
  }

  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x20uLL, buf))
  {
    v52 = *(v1 + 48);
    v53 = MEMORY[0x1E696ABC0];
    v54 = kPCSErrorDomain;
    v97 = *MEMORY[0x1E696A578];
    v98 = @"out of random";
    v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
    v56 = [v53 errorWithDomain:v54 code:92 userInfo:v55];
    (*(v52 + 16))(v52, 0, v56);
  }

  else
  {
    ccsha256_di();
    ccdigest();
    v55 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:32];
    v57 = [MEMORY[0x1E695DEF0] dataWithBytes:v99 length:32];
    v56 = [v57 base64EncodedStringWithOptions:0];

    v58 = *MEMORY[0x1E697AE70];
    v95[0] = v79;
    v95[1] = v58;
    v96[0] = v81;
    v96[1] = v56;
    v59 = *MEMORY[0x1E697AEA8];
    v95[2] = v80;
    v95[3] = v59;
    v60 = *MEMORY[0x1E697AF18];
    v96[2] = v4;
    v96[3] = v60;
    v61 = *MEMORY[0x1E697ABD8];
    v95[4] = v83;
    v95[5] = v61;
    v62 = *MEMORY[0x1E697ABE0];
    v96[4] = v6;
    v96[5] = v62;
    v95[6] = v84;
    v95[7] = v82;
    v63 = *(v1 + 40);
    v96[6] = v3;
    v96[7] = v63;
    v95[8] = *MEMORY[0x1E697B3C0];
    v96[8] = v55;
    v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:9];
    v65 = [v64 mutableCopy];

    v66 = (*(&_PCSKeychainForwardTable + 1))(v65, 0);
    v67 = *(v1 + 48);
    if (v66)
    {
      obja = MEMORY[0x1E696ABC0];
      v68 = kPCSErrorDomain;
      v93 = *MEMORY[0x1E696A578];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to write into keychain: %d", v66];
      v69 = v78 = v4;
      v94 = v69;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
      v71 = v70 = v11;
      v72 = [obja errorWithDomain:v68 code:4 userInfo:v71];
      (*(v67 + 16))(v67, 0, v72);

      v11 = v70;
      v4 = v78;
    }

    else
    {
      (*(v67 + 16))(*(v1 + 48), v55, 0);
    }
  }

LABEL_28:
}

void PCSDeleteBoundaryKey(void *a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v1 = [a1 objectForKeyedSubscript:kPCSSetupDSID[0]];
  if (PCSCurrentPersonaMatchesDSID(v1))
  {
    v2 = MEMORY[0x1E695DF90];
    v3 = *MEMORY[0x1E697B018];
    v4 = *MEMORY[0x1E697AC30];
    v8[0] = *MEMORY[0x1E697AFF8];
    v8[1] = v4;
    v9[0] = v3;
    v9[1] = kPCSAccountBoundaryKey[0];
    v5 = *MEMORY[0x1E697ABD0];
    v8[2] = *MEMORY[0x1E697AEB0];
    v8[3] = v5;
    v9[2] = *MEMORY[0x1E695E4D0];
    v9[3] = kPCSDefaultKeychainGroup[0];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];
    v7 = [v2 dictionaryWithDictionary:v6];

    if (v1)
    {
      [v7 setObject:v1 forKeyedSubscript:*MEMORY[0x1E697AE80]];
    }

    off_1ED6F2360(v7);
  }
}

void PCSDeleteAppBoundaryKey(void *a1, void *a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 objectForKeyedSubscript:kPCSSetupDSID[0]];
  if (PCSCurrentPersonaMatchesDSID(v4))
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", kPCSAccountBoundaryKey[0], v3];
    v6 = MEMORY[0x1E695DF90];
    v7 = *MEMORY[0x1E697B018];
    v8 = *MEMORY[0x1E697AC30];
    v12[0] = *MEMORY[0x1E697AFF8];
    v12[1] = v8;
    v9 = *MEMORY[0x1E697ABD0];
    v12[2] = *MEMORY[0x1E697AEB0];
    v12[3] = v9;
    v13[0] = v7;
    v13[1] = v5;
    v13[2] = *MEMORY[0x1E695E4D0];
    v13[3] = v3;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
    v11 = [v6 dictionaryWithDictionary:v10];

    if (v4)
    {
      [v11 setObject:v4 forKeyedSubscript:*MEMORY[0x1E697AE80]];
    }

    off_1ED6F2360(v11);
  }
}

CFIndex _PCSErrorContext(uint64_t a1, const void **a2, CFIndex a3, CFStringRef format, ...)
{
  va_start(va, format);
  _PCSErrorVA(a1, a2, a3, 0, format, va);
  return a3;
}

CFIndex _PCSErrorUserInfo(uint64_t a1, const void **a2, CFIndex a3, const __CFDictionary *a4, const __CFString *a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _PCSErrorVA(a1, a2, a3, a4, a5, va);
  return a3;
}

uint64_t _PCSErrorASN1(const void **a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  _PCSError(a1, a3, @"Failed to %s: %d", a2, a3);
  return v3;
}

id PCSErrorCreate(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E696AEC0];
  v11 = a2;
  v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  if (do_error_as_log == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v12;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PCSErrorCreate: %@", buf, 0xCu);
  }

  v17 = *MEMORY[0x1E696A578];
  v18 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v14 = objc_alloc(MEMORY[0x1E696ABC0]);
  v15 = [v14 initWithDomain:kPCSErrorDomain code:a1 userInfo:v13];

  return v15;
}

uint64_t _PCSNSErrorVA(uint64_t a1, id *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v26 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = MEMORY[0x1E696AEC0];
  v13 = a5;
  v14 = [[v12 alloc] initWithFormat:v13 arguments:a6];

  if (a3 == 21 || a3 == 73)
  {
    v16 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v16 = OS_LOG_TYPE_DEFAULT;
  }

  if (do_error_as_log == 1)
  {
    v17 = PCSLogGetOSLog(a1);
    if (os_log_type_enabled(v17, v16))
    {
      v23[0] = 67109378;
      v23[1] = a3;
      v24 = 2114;
      v25 = v14;
      _os_log_impl(&dword_1B229C000, v17, v16, "PCSError: %d : %{public}@", v23, 0x12u);
    }
  }

  if (a2)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = v18;
    v20 = *MEMORY[0x1E695E620];
    if (v11)
    {
      [v18 setObject:v11 forKeyedSubscript:*MEMORY[0x1E695E620]];
    }

    [v19 setObject:v14 forKeyedSubscript:v20];
    v21 = *a2;
    if (v21)
    {
      [v19 setObject:v21 forKeyedSubscript:*MEMORY[0x1E695E670]];
    }

    *a2 = [MEMORY[0x1E696ABC0] errorWithDomain:kPCSErrorDomain code:a3 userInfo:v19];
  }

  return a3;
}

BOOL PCSSecError(int a1, CFErrorRef *a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (a1 && a2)
  {
    v5 = *a2;
    *a2 = 0;
    PCSSecCFCreateErrorWithFormatAndArguments(a1, *MEMORY[0x1E695E638], v5, a2, 0, format, va);
  }

  return a1 == 0;
}

uint64_t PCSSecCFCreateErrorWithFormatAndArguments(CFIndex a1, const __CFString *a2, const __CFString *a3, CFErrorRef *a4, CFDictionaryRef formatOptions, CFStringRef format, va_list arguments)
{
  userInfoKeys[2] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (*a4)
    {
      if (a3 && *a4 != a3)
      {
        v9 = a3;
LABEL_11:
        CFRelease(v9);
      }
    }

    else
    {
      v12 = CFStringCreateWithFormatAndArguments(0, formatOptions, format, arguments);
      v13 = *MEMORY[0x1E695E670];
      userInfoKeys[0] = *MEMORY[0x1E695E620];
      userInfoKeys[1] = v13;
      userInfoValues[0] = v12;
      userInfoValues[1] = a3;
      if (a3)
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      *a4 = CFErrorCreateWithUserInfoKeysAndValues(*MEMORY[0x1E695E480], a2, a1, userInfoKeys, userInfoValues, v14);
      if (v12)
      {
        v9 = v12;
        goto LABEL_11;
      }
    }
  }

  return 0;
}

void PCSRestoreCKBackup()
{
  v0 = dispatch_semaphore_create(0);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __PCSRestoreCKBackup_block_invoke;
  v2[3] = &unk_1E7B1A190;
  v3 = v0;
  v1 = v0;
  PCSRestoreCKBackupWithCompletion(0, v2);
  dispatch_semaphore_wait(v1, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t PCSRestoreCKBackupWithCompletion(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PCSRestoreCKBackupWithCompletion", buf, 2u);
  }

  *buf = 0;
  v12 = buf;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __PCSRestoreCKBackupWithCompletion_block_invoke;
  v7[3] = &unk_1E7B1A1B8;
  v10 = a1;
  v9 = buf;
  v4 = v3;
  v8 = v4;
  PCSBackupRestoreMobileBackup(a1, v7);
  v5 = v12[24];

  _Block_object_dispose(buf, 8);
  return v5;
}

void __PCSRestoreCKBackup_block_invoke(uint64_t a1, int a2, int a3, int a4, void *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = a5;
  if (v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109890;
    v10[1] = a2;
    v11 = 1024;
    v12 = a3;
    v13 = 1024;
    v14 = a4;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PCSRestoreCKBackupWithCompletion returned recoverIssue %u missing %u present %u error: %@", v10, 0x1Eu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __PCSRestoreCKBackupWithCompletion_block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v16 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = *(a1 + 48);
  v13 = [v16 unsignedIntValue];
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  if ((v12 & 1) == 0 && !v13)
  {
    if ([v9 unsignedIntValue])
    {
      v14 = 1;
    }

    else
    {
      v14 = [v10 unsignedIntValue] != 0;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = v14;
  v15 = *(a1 + 32);
  if (v15)
  {
    (*(v15 + 16))(v15, [v16 unsignedIntValue], objc_msgSend(v9, "unsignedIntValue"), objc_msgSend(v10, "unsignedIntValue"), v11);
  }
}

uint64_t PCSMobileBackupStatus(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PCSMobileBackupStatus", buf, 2u);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __PCSMobileBackupStatus_block_invoke;
  v6[3] = &unk_1E7B1A1E0;
  v8 = &v11;
  v9 = a1;
  v3 = v2;
  v7 = v3;
  PCSMobileBackupStatusXPC(v6);
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v4 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v4;
}

void __PCSMobileBackupStatus_block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"OFF";
    if (a2)
    {
      v6 = @"ON";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PCSMobileBackupStatus %@ error %@", &v7, 0x16u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (v5 && *(a1 + 48))
  {
    **(a1 + 48) = v5;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1B22EBE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AuthKitLibraryCore(uint64_t a1)
{
  if (!AuthKitLibraryCore_frameworkLibrary_2)
  {
    AuthKitLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  return AuthKitLibraryCore_frameworkLibrary_2;
}

uint64_t __AuthKitLibraryCore_block_invoke_2(uint64_t a1)
{
  result = _sl_dlopen();
  AuthKitLibraryCore_frameworkLibrary_2 = result;
  return result;
}

Class __getAKAccountManagerClass_block_invoke_2(uint64_t a1)
{
  v7 = 0;
  v2 = AuthKitLibraryCore(&v7);
  v3 = v7;
  if (v2)
  {
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = abort_report_np("%s", v7);
  }

  free(v3);
LABEL_3:
  result = objc_getClass("AKAccountManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAKAccountManagerClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v5 = __getAKAccountManagerClass_block_invoke_cold_1();
    return PCSCopyWrappedKey(v5, v6);
  }

  return result;
}

__CFData *PCSCopyWrappedKey(const __CFData *a1, const __CFData *a2)
{
  ccaes_ecb_encrypt_mode();
  v4 = ccecb_context_size();
  MEMORY[0x1EEE9AC00](v4);
  Length = CFDataGetLength(a1);
  if (Length != 32 && Length != 16)
  {
    goto LABEL_7;
  }

  CFDataGetBytePtr(a1);
  ccecb_init();
  CFDataGetLength(a2);
  v6 = ccwrap_wrapped_size();
  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, v6);
  if (a1)
  {
    CFDataGetBytePtr(a2);
    CFDataGetMutableBytePtr(Mutable);
    if (ccwrap_auth_encrypt())
    {
      if (Mutable)
      {
        CFRelease(Mutable);
LABEL_7:
        Mutable = 0;
      }
    }

    else if (CFDataGetLength(Mutable))
    {
      PCSCopyWrappedKey_cold_1();
    }
  }

  ccecb_context_size();
  cc_clear();
  return Mutable;
}

__CFData *PCSCopyUnwrappedKey(const __CFData *a1, const __CFData *a2)
{
  ccaes_ecb_decrypt_mode();
  v4 = ccecb_context_size();
  MEMORY[0x1EEE9AC00](v4);
  Length = CFDataGetLength(a1);
  if (CFDataGetLength(a2) < 8 || Length != 32 && Length != 16)
  {
    goto LABEL_7;
  }

  CFDataGetLength(a1);
  CFDataGetBytePtr(a1);
  ccecb_init();
  CFDataGetLength(a2);
  v6 = ccwrap_unwrapped_size();
  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, v6);
  if (Mutable)
  {
    CFDataGetLength(a2);
    CFDataGetBytePtr(a2);
    CFDataGetMutableBytePtr(Mutable);
    if (ccwrap_auth_decrypt())
    {
      CFRelease(Mutable);
LABEL_7:
      Mutable = 0;
      goto LABEL_9;
    }

    if (CFDataGetLength(Mutable))
    {
      PCSCopyUnwrappedKey_cold_1();
    }
  }

LABEL_9:
  ccecb_context_size();
  cc_clear();
  return Mutable;
}

BOOL PCSMMCSGetDerivedSIVKey(const __CFData *a1, char *a2, uint64_t a3)
{
  Length = CFDataGetLength(a1);
  if (Length == 16)
  {
    v6 = 3;
    goto LABEL_5;
  }

  if (Length == 32)
  {
    v6 = 4;
LABEL_5:
    *a2 = v6;
    ccsha256_di();
    CFDataGetLength(a1);
    CFDataGetBytePtr(a1);
    return cchkdf() == 0;
  }

  return 0;
}

uint64_t PCSKeyEnvelopeGetTypeID()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PCSKeyEnvelopeGetTypeID_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &PCSKeyEnvelopeGetTypeID_sPCSKeyEnvelopeGetTypeIDSingleton;
  if (PCSKeyEnvelopeGetTypeID_sPCSKeyEnvelopeGetTypeIDOnce != -1)
  {
    dispatch_once(&PCSKeyEnvelopeGetTypeID_sPCSKeyEnvelopeGetTypeIDOnce, block);
  }

  return PCSKeyEnvelopeGetTypeID_sPCSKeyEnvelopeGetTypeIDSingleton;
}

uint64_t __PCSKeyEnvelopeGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

void PCSKeyEnvelopeDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      *(a1 + 16) = 0;
      CFRelease(v2);
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      *(a1 + 24) = 0;

      CFRelease(v3);
    }
  }
}

CFStringRef PCSKeyEnvelopeCopyDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"KE@%p", a1);
  v4 = CFStringCreateWithFormat(v2, 0, @"<%@: [envelope: %@] [associatedData: %@]", v3, *(a1 + 16), *(a1 + 24));
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

void *PCSKeyEnvelopeCreateWithValues(uint64_t a1, const __CFData *a2, const __CFData *a3, const void **a4)
{
  PCSKeyEnvelopeGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  Instance[3] = CFDataCreateCopy(0, a2);
  Copy = CFDataCreateCopy(0, a3);
  Instance[2] = Copy;
  if (Instance[3])
  {
    v15 = Copy == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    _PCSError(a4, 150, @"%s: could not create the key envelope", "PCSKeyEnvelopeRef  _Nonnull PCSKeyEnvelopeCreateWithValues(PCSShareProtectionRef _Nonnull, CFDataRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)");
    CFRelease(Instance);
    v21 = _PCSKEExtractSeed(a1, 0, a4, v16, v17, v18, v19, v20);
    Instance = 0;
    if (!v21)
    {
      return Instance;
    }
  }

  else
  {
    v21 = _PCSKEExtractSeed(a1, Instance, a4, v10, v11, v12, v13, v14);
    if (!v21)
    {
      v22 = 0;
      goto LABEL_11;
    }
  }

  v22 = Instance;
  Instance = v21;
LABEL_11:
  CFRelease(Instance);
  return v22;
}

uint64_t _PCSKEExtractSeed(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  if (!a1)
  {
    _PCSError(a3, 128, @"%s: sp argument NULL", a4, a5, a6, a7, a8, "CFDataRef _PCSKEExtractSeed(PCSShareProtectionRef, PCSKeyEnvelopeRef, CFErrorRef *)");
LABEL_34:
    v21 = 0;
    goto LABEL_27;
  }

  if (*(a1 + 216) != 1192348414)
  {
    PCSAbort("PCSShareProtectionObject no longer alive (overrelease):(sp)->alive == pcsfpTruelyAlive", a2, a3, a4, a5, a6, a7, a8);
  }

  if (!*(a1 + 72))
  {
    _PCSError(a3, 25, @"%s: cannot decrypt envelope without master key", a4, a5, a6, a7, a8, "CFDataRef _PCSKEExtractSeed(PCSShareProtectionRef, PCSKeyEnvelopeRef, CFErrorRef *)");
    goto LABEL_34;
  }

  v11 = *(a2 + 24);
  if (!v11 || (v12 = CFGetTypeID(v11), v12 != CFDataGetTypeID()))
  {
    v34 = @"%s: keyEnvelope->context argument not CFData";
LABEL_33:
    _PCSError(a3, 126, v34, a4, a5, a6, a7, a8, "CFDataRef _PCSKEExtractSeed(PCSShareProtectionRef, PCSKeyEnvelopeRef, CFErrorRef *)");
    goto LABEL_34;
  }

  v13 = *(a2 + 16);
  if (!v13 || (v14 = CFGetTypeID(v13), v14 != CFDataGetTypeID()))
  {
    v34 = @"%s: keyEnvelope->envelope argument not CFData";
    goto LABEL_33;
  }

  v15 = *(a2 + 16);
  v16 = [PCSEnvelopedKeyMaterial alloc];
  v17 = [MEMORY[0x1E695DEF0] dataWithData:v15];
  v18 = [(PCSEnvelopedKeyMaterial *)v16 initWithData:v17];

  if (v18)
  {
    if ([(PCSEnvelopedKeyMaterial *)v18 version]== 1)
    {
      v19 = [(PCSEnvelopedKeyMaterial *)v18 encryptedSeed];
      v20 = [v19 length];

      if (v20 == 48)
      {
        v21 = v18;
        goto LABEL_16;
      }

      _PCSError(a3, 13, @"%s: invalid ciphertext length", "PCSEnvelopedKeyMaterial *_PCSKEDeserializeEnvelope(CFDataRef, CFErrorRef *)");
    }

    else
    {
      _PCSError(a3, 13, @"%s: invalid version", "PCSEnvelopedKeyMaterial *_PCSKEDeserializeEnvelope(CFDataRef, CFErrorRef *)");
    }
  }

  else
  {
    _PCSError(a3, 13, @"%s: could not initWithData", "PCSEnvelopedKeyMaterial *_PCSKEDeserializeEnvelope(CFDataRef, CFErrorRef *)");
  }

  v21 = 0;
LABEL_16:

  if (v21)
  {
    v22 = [(PCSEnvelopedKeyMaterial *)v21 encryptedSeed];
    v23 = [v22 bytes];
    v24 = [(PCSEnvelopedKeyMaterial *)v21 encryptedSeed];
    v25 = [v24 length];
    v26 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v23, v25, *MEMORY[0x1E695E498]);

    if (v26)
    {
      v27 = *(a1 + 72);
      v28 = [(PCSEnvelopedKeyMaterial *)v21 version];
      if (v28)
      {
        if (v28 == 1)
        {
          v29 = @"HKDF_SIV_GCM_HMAC_256";
        }

        else
        {
          v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v28];
        }
      }

      else
      {
        v29 = @"UNKNOWN";
      }

      v30 = _PCSKEExtractSeedWithMasterKey(v27, v26, v29, *(a2 + 24), a3);
      v42[3] = v30;

      if (!v42[3] && [(PCSEnvelopedKeyMaterial *)v21 hasMasterKeyId])
      {
        v31 = *(a1 + 112);
        context[0] = MEMORY[0x1E69E9820];
        context[1] = 3221225472;
        context[2] = ___PCSKEExtractSeed_block_invoke;
        context[3] = &unk_1E7B1A270;
        v37 = &v41;
        v36 = v21;
        v38 = a3;
        v39 = v26;
        v40 = a2;
        CFDictionaryApplyFunction(v31, apply_block_2_5, context);
      }

      CFRelease(v26);
    }

    else
    {
      _PCSError(a3, 150, @"%s: could not allocate the encrypted seed", "CFDataRef _PCSKEExtractSeed(PCSShareProtectionRef, PCSKeyEnvelopeRef, CFErrorRef *)");
    }
  }

LABEL_27:
  v32 = v42[3];

  _Block_object_dispose(&v41, 8);
  return v32;
}

void sub_1B22ED334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *PCSKeyEnvelopeCreate(uint64_t a1, CFTypeRef cf, const void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _PCSError(a3, 128, @"%s: sp argument NULL", "PCSKeyEnvelopeRef  _Nullable PCSKeyEnvelopeCreate(PCSShareProtectionRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)");
    return 0;
  }

  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(a1, cf, a3, a4, a5, a6, a7, a8);
  }

  if (!*(a1 + 72))
  {
    _PCSError(a3, 25, @"%s: cannot generate envelope without master key", "PCSKeyEnvelopeRef  _Nullable PCSKeyEnvelopeCreate(PCSShareProtectionRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)");
    return 0;
  }

  if (!cf || (v11 = CFGetTypeID(cf), v11 != CFDataGetTypeID()))
  {
    _PCSError(a3, 126, @"%s: keykeyEnvelopeAssociatedData argument not CFData", "PCSKeyEnvelopeRef  _Nullable PCSKeyEnvelopeCreate(PCSShareProtectionRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)");
    return 0;
  }

  v12 = _PCSKEAesSivKeyFromMasterKey(*(a1 + 72), @"HKDF_SIV_GCM_HMAC_256", cf, a3);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, 32);
  if (Mutable)
  {
    Length = CFDataGetLength(Mutable);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    _PCSRandomData(Length, MutableBytePtr);
    ccaes_siv_encrypt_mode();
    CFDataGetLength(Mutable);
    v17 = ccsiv_ciphertext_size();
    v18 = CFDataCreateMutable(0, 0);
    CFDataSetLength(v18, v17);
    if (v18)
    {
      v28 = a3;
      CFDataGetLength(v13);
      v27 = v13;
      CFDataGetBytePtr(v13);
      CFDataGetLength(cf);
      CFDataGetBytePtr(cf);
      CFDataGetLength(Mutable);
      BytePtr = CFDataGetBytePtr(Mutable);
      v26 = CFDataGetMutableBytePtr(v18);
      if (ccsiv_one_shot())
      {
        CFRelease(v18);
        _PCSError(a3, 12, @"%s: Wrapping with AES-SIV failed", "PCSKeyEnvelopeRef  _Nullable PCSKeyEnvelopeCreate(PCSShareProtectionRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)", v26);
        v23 = 0;
      }

      else
      {
        v19 = objc_opt_new();
        if ([@"HKDF_SIV_GCM_HMAC_256" isEqualToString:{@"UNKNOWN", BytePtr, v26}])
        {
          v20 = 0;
        }

        else
        {
          v20 = [@"HKDF_SIV_GCM_HMAC_256" isEqualToString:@"HKDF_SIV_GCM_HMAC_256"];
        }

        [v19 setVersion:v20];
        v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:CFDataGetBytePtr(*(a1 + 80)) length:4];
        [v19 setMasterKeyId:v21];

        [v19 setEncryptedSeed:v18];
        v22 = [v19 data];
        v23 = PCSKeyEnvelopeCreateWithValues(a1, cf, v22, v28);
      }

      v13 = v27;
    }

    else
    {
      _PCSError(a3, 150, @"%s: could not allocate the encrypted seed", "PCSKeyEnvelopeRef  _Nullable PCSKeyEnvelopeCreate(PCSShareProtectionRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)");
      v23 = 0;
    }

    CFRelease(Mutable);
  }

  else
  {
    _PCSError(a3, 150, @"%s: could not allocate the seed", "PCSKeyEnvelopeRef  _Nullable PCSKeyEnvelopeCreate(PCSShareProtectionRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)");
    v23 = 0;
  }

  CFRelease(v13);
  return v23;
}

__CFData *_PCSKEAesSivKeyFromMasterKey(const __CFData *a1, void *a2, const __CFData *a3, const void **a4)
{
  v7 = [a2 dataUsingEncoding:4];
  v8 = [v7 length];
  v9 = v8 + CFDataGetLength(a3);
  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, v9 + 69);
  if (Mutable)
  {
    qmemcpy(CFDataGetMutableBytePtr(Mutable), "com.apple.ProtectedCloudStorage.PCSKeyEnvelope.AesSivKeyFromMasterKey", 69);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    memcpy(MutableBytePtr + 69, [v7 bytes], objc_msgSend(v7, "length"));
    v12 = CFDataGetMutableBytePtr(Mutable);
    v13 = &v12[[v7 length]];
    BytePtr = CFDataGetBytePtr(a3);
    Length = CFDataGetLength(a3);
    memcpy(v13 + 69, BytePtr, Length);
    v16 = CFDataCreateMutable(0, 0);
    CFDataSetLength(v16, 64);
    if (v16)
    {
      ccsha256_di();
      CFDataGetLength(a1);
      CFDataGetBytePtr(a1);
      CFDataGetLength(Mutable);
      CFDataGetBytePtr(Mutable);
      CFDataGetLength(v16);
      CFDataGetMutableBytePtr(v16);
      if (cchkdf())
      {
        CFRelease(v16);
        _PCSError(a4, 147, @"%s: HKDF failed", "CFMutableDataRef _PCSKEAesSivKeyFromMasterKey(CFDataRef, const NSString *__strong, CFDataRef, CFErrorRef *)");
        v16 = 0;
      }
    }

    else
    {
      _PCSError(a4, 150, @"%s: could not allocate the key", "CFMutableDataRef _PCSKEAesSivKeyFromMasterKey(CFDataRef, const NSString *__strong, CFDataRef, CFErrorRef *)");
    }

    CFRelease(Mutable);
  }

  else
  {
    _PCSError(a4, 150, @"%s: could not allocate the context", "CFMutableDataRef _PCSKEAesSivKeyFromMasterKey(CFDataRef, const NSString *__strong, CFDataRef, CFErrorRef *)");
    v16 = 0;
  }

  return v16;
}

__CFData *_PCSKEKeyFromSeed(const __CFData *a1, uint64_t a2, uint64_t a3, const void **a4)
{
  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, 32);
  if (Mutable)
  {
    Length = CFDataGetLength(Mutable);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    if (!_PCSCreateDerivedKey(a1, a2, a3, Length, MutableBytePtr, a4))
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  else
  {
    _PCSError(a4, 150, @"%s: could not allocate the key", "CFDataRef _PCSKEKeyFromSeed(CFDataRef, CFIndex, size_t, const char *const, CFErrorRef *)");
  }

  return Mutable;
}

__CFData *_PCSKEExtractSeedWithMasterKey(const __CFData *a1, const __CFData *a2, void *a3, const __CFData *a4, const void **a5)
{
  v9 = a3;
  ccaes_siv_decrypt_mode();
  v10 = _PCSKEAesSivKeyFromMasterKey(a1, v9, a4, a5);

  if (!v10)
  {
    _PCSError(a5, 150, @"%s: could not allocate the decryption key", "CFDataRef _PCSKEExtractSeedWithMasterKey(CFDataRef, CFDataRef, const NSString *__strong, CFDataRef, CFErrorRef *)");
    return 0;
  }

  CFDataGetLength(a2);
  if (ccsiv_plaintext_size() != 32)
  {
    _PCSError(a5, 20, @"%s: ciphertext is too short to recover the key material", "CFDataRef _PCSKEExtractSeedWithMasterKey(CFDataRef, CFDataRef, const NSString *__strong, CFDataRef, CFErrorRef *)");
LABEL_11:
    Mutable = 0;
    goto LABEL_5;
  }

  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, 32);
  if (!Mutable)
  {
    _PCSError(a5, 150, @"%s: could not allocate the seed", "CFDataRef _PCSKEExtractSeedWithMasterKey(CFDataRef, CFDataRef, const NSString *__strong, CFDataRef, CFErrorRef *)");
    goto LABEL_5;
  }

  CFDataGetLength(v10);
  CFDataGetBytePtr(v10);
  CFDataGetLength(a4);
  CFDataGetBytePtr(a4);
  CFDataGetLength(a2);
  CFDataGetBytePtr(a2);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  if (ccsiv_one_shot())
  {
    CFRelease(Mutable);
    _PCSError(a5, 13, @"%s: Unwrapping with AES-SIV failed", "CFDataRef _PCSKEExtractSeedWithMasterKey(CFDataRef, CFDataRef, const NSString *__strong, CFDataRef, CFErrorRef *)", MutableBytePtr);
    goto LABEL_11;
  }

LABEL_5:
  CFRelease(v10);
  return Mutable;
}

uint64_t PCSManateeShareInvitationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___PCSManateeShareInvitation__shareePublicKeyData;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___PCSManateeShareInvitation__exportedPCSData;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCSManateePrivateKeyReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___PCSManateePrivateKey__publicKeyInfo;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___PCSManateePrivateKey__privateKey;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t add_PCSAttributes(unsigned int *a1, uint64_t a2)
{
  v3 = malloc_type_realloc(*(a1 + 1), 24 * *a1 + 24, 0xE41EEFE5uLL);
  if (!v3)
  {
    return 12;
  }

  *(a1 + 1) = v3;
  result = _asn1_copy_top();
  if (!result)
  {
    ++*a1;
  }

  return result;
}

uint64_t add_PCSPrivateKeys(unsigned int *a1, uint64_t a2)
{
  v3 = malloc_type_realloc(*(a1 + 1), 24 * *a1 + 24, 0xBA7EE958uLL);
  if (!v3)
  {
    return 12;
  }

  *(a1 + 1) = v3;
  result = _asn1_copy_top();
  if (!result)
  {
    ++*a1;
  }

  return result;
}

uint64_t add_PCSSPKeyList(unsigned int *a1, uint64_t a2)
{
  v3 = malloc_type_realloc(*(a1 + 1), 32 * *a1 + 32, 0x58A9B1E6uLL);
  if (!v3)
  {
    return 12;
  }

  *(a1 + 1) = v3;
  result = _asn1_copy_top();
  if (!result)
  {
    ++*a1;
  }

  return result;
}

uint64_t get_aks_client_connection()
{
  if (get_aks_client_dispatch_queue_onceToken != -1)
  {
    get_aks_client_connection_cold_1();
  }

  dispatch_sync(get_aks_client_dispatch_queue_connection_queue, &__block_literal_global_153);
  return get_aks_client_connection_connection;
}

void __get_aks_client_connection_block_invoke()
{
  if (!get_aks_client_connection_connection)
  {
    get_aks_client_connection_connection = _copy_aks_client_connection("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

dispatch_queue_t __get_aks_client_dispatch_queue_block_invoke()
{
  result = dispatch_queue_create("aks-client-queue", 0);
  get_aks_client_dispatch_queue_connection_queue = result;
  return result;
}

uint64_t _copy_aks_client_connection(char *path, const char *a2)
{
  connect = 0;
  v3 = *MEMORY[0x1E696CD68];
  v4 = IORegistryEntryFromPath(*MEMORY[0x1E696CD68], path);
  v5 = MEMORY[0x1E69E9A60];
  if (!v4 || (v6 = v4, v7 = IOServiceOpen(v4, *MEMORY[0x1E69E9A60], 0, &connect), IOObjectRelease(v6), v7))
  {
    v8 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(v3, v8);
    if (MatchingService)
    {
      v10 = MatchingService;
      IOServiceOpen(MatchingService, *v5, 0, &connect);
      IOObjectRelease(v10);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

uint64_t aks_assert_hold(int a1, unsigned int a2, uint64_t a3)
{
  input[3] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a3;
  input[2] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x1Au, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  aks_assert_hold_cold_1();
  return 3758097084;
}

uint64_t aks_assert_drop(int a1, unsigned int a2)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x1Bu, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  aks_assert_drop_cold_1();
  return 3758097084;
}

void PEMStateInData_cold_1(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }

  abort();
}

uint64_t PCSIdentityRollIdentity(uint64_t a1, void *cf1, const void **a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (CFEqual(cf1, kPCSServiceMaster))
  {
    v6 = _PCSIdentitySetCopyCurrentIdentityInternal(a1, kPCSServiceMaster, a3);
    if (v6)
    {
      v7 = v6;
      Master = PCSIdentityCreateMaster(v6, a3);
      if (Master)
      {
        v9 = Master;
        if ((PCSIdentitySetAddIdentity(a1, Master) & 1) == 0)
        {
LABEL_32:
          v10 = 0;
          goto LABEL_7;
        }

        goto LABEL_5;
      }

      goto LABEL_36;
    }

    return 0;
  }

  if (!CFEqual(cf1, kPCSServiceEscrow) && !CFEqual(cf1, kPCSServiceFDE))
  {
    v14 = _PCSIdentitySetCopyCurrentIdentityInternal(a1, kPCSServiceMaster, a3);
    if (v14)
    {
      v7 = v14;
      IsManatee = PCSServiceItemTypeIsManatee(cf1);
      v16 = pcsLogObjForScope("keyRoll");
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (IsManatee)
      {
        if (v17)
        {
          OUTLINED_FUNCTION_0();
          OUTLINED_FUNCTION_1(&dword_1B229C000, v16, v18, "Asked to roll key for Manatee Service Identity %@", v27);
        }

        v19 = 5;
      }

      else
      {
        if (v17)
        {
          OUTLINED_FUNCTION_0();
          OUTLINED_FUNCTION_1(&dword_1B229C000, v16, v20, "Asked to roll key for Non-Manatee Service Identity %@", v27);
        }

        v19 = 1;
      }

      Service = PCSIdentityCreateService(v7, v19, cf1, a3);
      if (Service)
      {
        v9 = Service;
        if ((PCSIdentitySetAddIdentityWithError(a1, Service, a3) & 1) == 0)
        {
          v22 = pcsLogObjForScope("keyRoll");
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
LABEL_31:

            goto LABEL_32;
          }

          OUTLINED_FUNCTION_0();
          v24 = "Failed to add new key for Service Identity %@";
LABEL_30:
          OUTLINED_FUNCTION_1(&dword_1B229C000, v22, v23, v24, v27);
          goto LABEL_31;
        }

LABEL_5:
        if (PCSIdentitySetSetCurrentIdentity(a1, v9))
        {
          v10 = 1;
LABEL_7:
          CFRelease(v9);
LABEL_8:
          CFRelease(v7);
          return v10;
        }

        v22 = pcsLogObjForScope("keyRoll");
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_0();
        v24 = "Failed to set new key as current for Service Identity %@";
        goto LABEL_30;
      }

      v25 = pcsLogObjForScope("keyRoll");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_1(&dword_1B229C000, v25, v26, "Failed to create key for Service Identity %@", v27);
      }

LABEL_36:
      v10 = 0;
      goto LABEL_8;
    }

    return 0;
  }

  v11 = pcsLogObjForScope("keyRoll");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_1B229C000, v11, v12, "Skipping Rolling Service Identity for %@", v27);
  }

  return 1;
}

__CFData *_PCSStingrayCopyEncryptedData(const __CFData *a1, const __CFData *a2)
{
  v4 = ccaes_gcm_encrypt_mode();
  MEMORY[0x1EEE9AC00](v4);
  CFDataGetLength(a1);
  CFDataGetBytePtr(a1);
  OUTLINED_FUNCTION_0_0();
  ccgcm_init();
  Length = CFDataGetLength(a2);
  Mutable = CFDataCreateMutable(0, Length + 32);
  v7 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, Length + 32);
    MutableBytePtr = CFDataGetMutableBytePtr(v7);
    if (!MutableBytePtr || SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x10uLL, MutableBytePtr))
    {
      CFRelease(v7);
      v7 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_0_0();
      ccgcm_set_iv();
      CFDataGetLength(a2);
      CFDataGetBytePtr(a2);
      OUTLINED_FUNCTION_0_0();
      ccgcm_update();
      CFDataGetLength(a2);
      OUTLINED_FUNCTION_0_0();
      ccgcm_finalize();
    }
  }

  ccgcm_context_size();
  cc_clear();
  return v7;
}

void __PCSCopyHSMData_cold_1(const void *a1, const void **a2, const __CFData **a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 != CFDictionaryGetTypeID())
  {
    v8 = 0;
    goto LABEL_6;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x1E6994FB0]);
  v8 = Value;
  if (!Value)
  {
LABEL_9:
    _PCSError(a2, 44, @"SecureBackup didn't return data key");
    goto LABEL_6;
  }

  v9 = CFGetTypeID(Value);
  if (v9 != CFDataGetTypeID())
  {
    v8 = 0;
    goto LABEL_9;
  }

  Copy = CFDataCreateCopy(0, v8);
  v8 = Copy;
  if (!Copy)
  {
    goto LABEL_9;
  }

  v11 = CFGetTypeID(Copy);
  if (v11 != CFDataGetTypeID())
  {
    goto LABEL_9;
  }

LABEL_6:
  *a3 = v8;
  CFRelease(a1);
}

uint64_t PCSFPCopyPublicObjectSigningKey(const __CFData *a1, const void **a2)
{
  v11 = 0;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (decode_PCSShareProtection(BytePtr, Length, v19, &v11))
  {
    goto LABEL_10;
  }

  v6 = v11;
  if (v6 != CFDataGetLength(a1))
  {
    _PCSError(a2, 16, @"Did not parse all exported PCS object");
LABEL_10:
    PublicWithData = 0;
    goto LABEL_8;
  }

  if (!*(&v20 + 1))
  {
    goto LABEL_10;
  }

  if (decode_PCSObjectSignature(*(*(&v20 + 1) + 24), *(*(&v20 + 1) + 16), &v12, &v11))
  {
    goto LABEL_10;
  }

  if (v11 != *(*(&v20 + 1) + 16))
  {
    goto LABEL_10;
  }

  v7 = CFDataCreate(0, v14, *(&v13 + 1));
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  PublicWithData = PCSKeyCreatePublicWithData(v7, a2);
  CFRelease(v8);
LABEL_8:
  free_PCSShareProtection(v19);
  free_PCSObjectSignature(&v12);
  return PublicWithData;
}

__CFData *_PCSKeyCopyExportedPrivateKey(uint64_t a1)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 2) != 0)
  {
    v6 = (cczp_bitlen() + 7) >> 2;
    v7 = OUTLINED_FUNCTION_0_1();
    Mutable = CFDataCreateMutable(v7, v8);
    CFDataSetLength(Mutable, v6 & 0x3FFFFFFFFFFFFFFELL);
    if (Mutable)
    {
      CFDataGetMutableBytePtr(Mutable);
      ccec_compact_export();
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
    v1 = ccec_der_export_priv_size();
    if (!v1)
    {
      return 0;
    }

    v2 = v1;
    v3 = OUTLINED_FUNCTION_0_1();
    Mutable = CFDataCreateMutable(v3, v4);
    CFDataSetLength(Mutable, v2);
    CFDataGetMutableBytePtr(Mutable);
    OUTLINED_FUNCTION_7();
    if (ccec_der_export_priv() && Mutable)
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

void PCSIdentityCreateDiversifiedIdentityOptions()
{
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 16);
  if (v4 && (*(v4 + 32) & 1) != 0)
  {
    v5 = v2;
    v6 = v1;
    v7 = v0;
    if (v1)
    {
      v8 = CFGetTypeID(v1);
      if (v8 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v6, kPCSKeyDiversifiedCompact);
        if (Value)
        {
          v10 = Value;
          v11 = CFGetTypeID(Value);
          if (v11 == CFBooleanGetTypeID())
          {
            CFBooleanGetValue(v10);
          }
        }
      }
    }

    v12 = **(v4 + 40);
    TypeID = PCSKeyGetTypeID();
    v14 = OUTLINED_FUNCTION_2(TypeID);
    if (!v14)
    {
      goto LABEL_20;
    }

    v15 = v14;
    OUTLINED_FUNCTION_6();
    if (!v19)
    {
      v18 = 6;
    }

    *(v16 + 32) = v17 | v18;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    v20 = MEMORY[0x1B2744AF0](v12);
    v21 = malloc_type_malloc(v20, 0x770DC380uLL);
    if (!v21 || (ccsha256_di(), CFDataGetLength(v7), CFDataGetBytePtr(v7), cchkdf()) || !_PCSKeyAllocateDiversizedKey(v12, v15) || (ccDRBGGetRngState(), ccec_diversify_pub()))
    {
      v22 = 0;
    }

    else
    {
      v22 = CFRetain(v15);
    }

    CFRelease(v15);
    free(v21);
    if (v22)
    {
      _PCSPublicIdentityCreateWithKey(v22, v5);
      OUTLINED_FUNCTION_11();
    }

    else
    {
LABEL_20:
      _PCSErrorOOM(v5);
    }
  }

  OUTLINED_FUNCTION_10();
}

void PCSIdentityCreateDiversifiedIdentityFromPublicIdentityOptions()
{
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 24);
  if (v4)
  {
    v5 = v2;
    v6 = *(v4 + 40);
    if (!v6)
    {
      goto LABEL_29;
    }

    v7 = v1;
    v8 = v0;
    v9 = *(v4 + 32);
    if (v1)
    {
      v10 = CFGetTypeID(v1);
      if (v10 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v7, kPCSKeyDiversifiedCompact);
        if (Value)
        {
          v12 = Value;
          v13 = CFGetTypeID(Value);
          if (v13 == CFBooleanGetTypeID())
          {
            CFBooleanGetValue(v12);
          }
        }
      }
    }

    v14 = *v6;
    if (!*v6)
    {
      goto LABEL_29;
    }

    v15 = MEMORY[0x1B2744AF0](*v6);
    TypeID = PCSKeyGetTypeID();
    v17 = OUTLINED_FUNCTION_2(TypeID);
    if (!v17)
    {
      goto LABEL_29;
    }

    v18 = v17;
    OUTLINED_FUNCTION_6();
    if (!v22)
    {
      v21 = 6;
    }

    *(v19 + 32) = v20 | v21;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    v23 = malloc_type_malloc(v15, 0x5ACBECA8uLL);
    if (!v23)
    {
      CFRelease(v18);
      goto LABEL_29;
    }

    v24 = v23;
    ccsha256_di();
    CFDataGetLength(v8);
    CFDataGetBytePtr(v8);
    if (cchkdf())
    {
      v25 = 0;
      v27 = 0;
    }

    else
    {
      if (!_PCSKeyAllocateDiversizedKey(v14, v18))
      {
        goto LABEL_26;
      }

      ccDRBGGetRngState();
      if (ccec_diversify_pub())
      {
        goto LABEL_26;
      }

      if ((v9 & 4) == 0)
      {
        v25 = 0;
LABEL_21:
        v27 = CFRetain(v18);
        goto LABEL_22;
      }

      free(v18[6]);
      v18[6] = 0;
      v26 = OUTLINED_FUNCTION_5_0();
      v18[6] = v26;
      if (v26)
      {
        v25 = OUTLINED_FUNCTION_5_0();
        if (v25)
        {
          ccDRBGGetRngState();
          if (!ccec_diversify_pub())
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
LABEL_26:
        v25 = 0;
      }

      v27 = 0;
    }

LABEL_22:
    CFRelease(v18);
    memset_s(v24, v15, 0, v15);
    free(v24);
    if (v25)
    {
      cc_clear();
    }

    free(v25);
    if (v27)
    {
      _PCSPublicIdentityCreateWithKey(v27, v5);
      CFRelease(v27);
      goto LABEL_30;
    }

LABEL_29:
    _PCSErrorOOM(v5);
  }

LABEL_30:
  OUTLINED_FUNCTION_10();
}

CFDataRef PCSPublicIdentityCopyExportedPublicKey(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return PCSKeyCopyExportedPublicKey(result);
  }

  return result;
}

void *PCSPublicIdentityCreateWithPublicKeyInfo(const __CFData *a1, const void **a2)
{
  v11 = 0;
  memset(v12, 0, sizeof(v12));
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v6 = decode_PCSPublicKeyInfo(BytePtr, Length, v12, &v11);
  if (v6)
  {
    _PCSErrorASN1(a2, "PCSPublicKeyInfo", v6);
LABEL_7:
    v8 = 0;
    goto LABEL_4;
  }

  TypeID = PCSPublicIdentityGetTypeID();
  v8 = OUTLINED_FUNCTION_4(TypeID);
  if (v8)
  {
    v9 = PCSKeyCreateWithPKI(v12, a2);
    v8[3] = v9;
    if (!v9)
    {
      CFRelease(v8);
      goto LABEL_7;
    }
  }

LABEL_4:
  free_PCSPublicKeyInfo(v12);
  return v8;
}

BOOL _PCSValidatePCSKey(uint64_t a1, const void *a2, _BYTE *a3, __CFString *a4)
{
  if (a3)
  {
    *a3 = 0;
  }

  v8 = _PCSKeyCopyExportedPublicKey(a1);
  if (!v8)
  {
    v21 = 0;
    LOBYTE(v10) = 0;
    if (!a3)
    {
      return v21;
    }

    goto LABEL_20;
  }

  v9 = v8;
  if (!a2 || CFEqual(v8, a2))
  {
    goto LABEL_6;
  }

  OptionallyAppend(a4, @"\tWARNING: public key and private does doesn't agree on what the public key is\n");
  v32 = 0;
  BytePtr = CFDataGetBytePtr(v9);
  Length = CFDataGetLength(v9);
  v25 = CopyPublicKeyFromData(BytePtr, Length, &v32 + 1, 0);
  if (!v25)
  {
    OptionallyAppend(a4, @"\tWARNING: public key is not a public key\n");
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v26 = v25;
  v27 = CFDataGetBytePtr(a2);
  v28 = CFDataGetLength(a2);
  v29 = CopyPublicKeyFromData(v27, v28, &v32, 0);
  if (v29)
  {
    v30 = v29;
    if (HIBYTE(v32) != v32)
    {
      OptionallyAppend(a4, @"\tWARNING: public keys are of different compact-ness\n");
    }

    if (**v26 == **v30)
    {
      v31 = ccn_cmp();
      v10 = v31 != 0;
      if (v31)
      {
        OptionallyAppend(a4, @"\tERROR: public keys are just different, all is lost\n");
      }

      else
      {
        OptionallyAppend(a4, @"\tGOOD: public keys have same X, will probably work anyway\n");
      }
    }

    else
    {
      v10 = 0;
      OptionallyAppend(a4, @"\tWARNING: public keys are of differnt N\n");
    }

    free(v26);
    free(v30);
  }

  else
  {
    OptionallyAppend(a4, @"\tWARNING: key data is not a public key\n");
    free(v26);
    v10 = 1;
  }

LABEL_7:
  v11 = OUTLINED_FUNCTION_0_1();
  Mutable = CFDataCreateMutable(v11, v12);
  CFDataSetLength(Mutable, 16);
  v14 = *MEMORY[0x1E697B308];
  v15 = CFDataGetLength(Mutable);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  if (!SecRandomCopyBytes(v14, v15, MutableBytePtr))
  {
    v17 = _PCSKeyCopyWrappedKey(a1, Mutable, 0);
    if (v17)
    {
      v18 = v17;
      v19 = _PCSKeyCopyUnwrappedData(a1, v17, 0);
      if (v19)
      {
        v20 = v19;
        if (!CFEqual(v19, Mutable))
        {
          OptionallyAppend(a4, @"\tERROR: failed to unwrap with private key");
          v10 = 1;
        }

        CFRelease(v20);
      }

      else
      {
        OptionallyAppend(a4, @"\tERROR: failed to unwrap with private key");
        v10 = 1;
      }

      CFRelease(v18);
      if (!Mutable)
      {
        goto LABEL_18;
      }
    }

    else
    {
      OptionallyAppend(a4, @"\tERROR: failed to wrap with private key");
      v10 = 1;
      if (!Mutable)
      {
        goto LABEL_18;
      }
    }

    CFRelease(Mutable);
LABEL_18:
    v21 = !v10;
    goto LABEL_19;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v21 = 0;
LABEL_19:
  CFRelease(v9);
  if (a3)
  {
LABEL_20:
    *a3 = v10;
  }

  return v21;
}

void *_PCSIdentityCreateFromRawWithPublic(const __CFData *a1, const __CFData *a2, int a3, const void **a4)
{
  Empty = _PCSIdentityCreateEmpty(0);
  if (Empty)
  {
    v17 = 0;
    v18[1] = CFDataGetBytePtr(a1);
    v18[0] = CFDataGetLength(a1);
    TypeID = PCSKeyGetTypeID();
    v10 = OUTLINED_FUNCTION_2(TypeID);
    if (v10)
    {
      v11 = v10;
      *(v10 + 32) = *(v10 + 32) & 0xFA | 1;
      v12 = CopyPrivKeyFromOctetString(v18, a3, &v17);
      *(v11 + 40) = v12;
      if (v12)
      {
        *(v11 + 32) = *(v11 + 32) & 0xFD | (2 * v17);
        if (a2)
        {
          *(v11 + 16) = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040698877B7uLL);
          v16 = 0;
          BytePtr = CFDataGetBytePtr(a2);
          Length = CFDataGetLength(a2);
          if (decode_PCSPublicKeyInfo(BytePtr, Length, *(v11 + 16), &v16))
          {
            free(*(v11 + 16));
            *(v11 + 16) = 0;
          }
        }

        if (SetKeyID(v11))
        {
          Empty[2] = v11;
          return Empty;
        }
      }

      _PCSErrorOOM(a4);
      CFRelease(v11);
    }

    else
    {
      _PCSErrorOOM(a4);
    }

    Empty[2] = 0;
    CFRelease(Empty);
    return 0;
  }

  return Empty;
}

void *PCSIdentityCreateRandomCompactRaw(const void **a1)
{
  Empty = _PCSIdentityCreateEmpty(a1);
  if (Empty)
  {
    RandomFullKey = PCSKeyCreateRandomFullKey(1);
    Empty[2] = RandomFullKey;
    if (!RandomFullKey)
    {
      _PCSErrorOOM(a1);
      CFRelease(Empty);
      return 0;
    }
  }

  return Empty;
}

BOOL PCSIdentityCheckWrappable(uint64_t a1, const void **a2)
{
  v4 = OUTLINED_FUNCTION_0_1();
  Mutable = CFDataCreateMutable(v4, v5);
  CFDataSetLength(Mutable, 16);
  v7 = *MEMORY[0x1E697B308];
  Length = CFDataGetLength(Mutable);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  if (SecRandomCopyBytes(v7, Length, MutableBytePtr) || (v10 = *(a1 + 16)) == 0)
  {
    v13 = 0;
    v11 = 0;
    goto LABEL_10;
  }

  v11 = _PCSKeyCopyWrappedKey(v10, Mutable, a2);
  if (!v11 || (v12 = *(a1 + 16)) == 0)
  {
    v13 = 0;
LABEL_10:
    v16 = 0;
    if (!Mutable)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v13 = _PCSKeyCopyUnwrappedData(v12, v11, a2);
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = OUTLINED_FUNCTION_8();
  v16 = CFEqual(v14, v15) != 0;
  if (Mutable)
  {
LABEL_11:
    CFRelease(Mutable);
  }

LABEL_12:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v16;
}

void *PCSPublicIdentityCreateFromKeyData()
{
  TypeID = PCSPublicIdentityGetTypeID();
  v1 = OUTLINED_FUNCTION_4(TypeID);
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_8();
    PublicWithData = PCSKeyCreatePublicWithData(v2, v3);
    v1[3] = PublicWithData;
    if (!PublicWithData)
    {
      CFRelease(v1);
      return 0;
    }
  }

  return v1;
}

uint64_t _PCSExportRandomPCSSPKey(uint64_t a1)
{
  RandomFullKey = PCSKeyCreateRandomFullKey(0);
  v3 = PCSKeyCopyExportedPublicKey(RandomFullKey);
  *a1 = 3;
  *(a1 + 8) = 0;
  if (!_PCSFillOctetString((a1 + 16), v3))
  {
    PCSAbort("failed to allocate keydata:_PCSFillOctetString(&data->keyData, keydata)", v4, v5, v6, v7, v8, v9, v10);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (RandomFullKey)
  {
    CFRelease(RandomFullKey);
  }

  return 1;
}

uint64_t PCSIdentityIsNewManatee(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 24);
  if (!v3)
  {
    return 0;
  }

  v4 = *v3;
  if (!v4)
  {
    return 0;
  }

  for (i = (*(v3 + 1) + 8); *(i - 2) != 3 || !*i; i += 3)
  {
    if (!--v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _PCSIdentityIsShareableManatee(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  if (!_PCSIdentityGetManateeFlags(a1, v3))
  {
    return 0;
  }

  v1 = v3[0] & 1;
  free_PCSManateeFlags(v3);
  return v1;
}

__CFData *PCSIdentityCopyExportedPrivateKey(uint64_t a1, const void **a2)
{
  if (!_PCSIdentityIsShareableManatee(a1))
  {
    v37 = 0;
    v38 = 0;
    v5 = *(a1 + 16);
    v39 = *(v5 + 16);
    if ((CopyOctetStringFromPrivKey((*(v5 + 32) >> 1) & 1, 0, *(v5 + 40), &v37) & 1) == 0)
    {
      _PCSError(a2, 42, @"failed to export full key");
      return 0;
    }

    v36 = 0;
    v6 = length_PCSPrivateKey(&v37);
    Mutable = CFDataCreateMutable(0, v6);
    if (Mutable)
    {
      v8 = Mutable;
      CFDataSetLength(Mutable, v6);
      MutableBytePtr = CFDataGetMutableBytePtr(v8);
      if (!encode_PCSPrivateKey(&MutableBytePtr[v6 - 1], v6, &v37, &v36))
      {
        if (v6 == v36)
        {
          free(v38);
          return v8;
        }

        goto LABEL_34;
      }

      CFRelease(v8);
    }

    free(v38);
    return 0;
  }

  SigningIdentity = _PCSIdentityGetSigningIdentity(a1);
  if (!SigningIdentity)
  {
    _PCSError(a2, 144, @"identity has no signing identity");
    return 0;
  }

  v11 = SigningIdentity;
  v12 = objc_opt_new();
  v13 = _PCSKeyCopyExportedPrivateKey(*(a1 + 16));
  [v12 setPrivateKey:v13];

  v14 = *(a1 + 16);
  if (v14 && (v15 = *(v14 + 16)) != 0)
  {
    v16 = PCSCreateExportedPublicKeyInfo(v15);
  }

  else
  {
    v16 = 0;
  }

  [v12 setPublicKeyInfo:v16];

  v17 = objc_opt_new();
  v18 = _PCSKeyCopyExportedPrivateKey(v11[2]);
  [v17 setPrivateKey:v18];

  v19 = v11[2];
  if (v19 && (v20 = *(v19 + 16)) != 0)
  {
    v21 = PCSCreateExportedPublicKeyInfo(v20);
  }

  else
  {
    v21 = 0;
  }

  [v17 setPublicKeyInfo:v21];

  v22 = objc_alloc_init(PCSManateeShareableIdentity);
  [(PCSManateeShareableIdentity *)v22 setEncryptionPrivateKey:v12];
  [(PCSManateeShareableIdentity *)v22 setSigningPrivateKey:v17];
  v23 = [(PCSManateeShareableIdentity *)v22 encryptionPrivateKey];
  if (!v23 || (v24 = v23, [(PCSManateeShareableIdentity *)v22 signingPrivateKey], v25 = objc_claimAutoreleasedReturnValue(), v25, v24, !v25))
  {
    _PCSError(a2, 143, @"failed to create PCSManateeShareableIdentity data");
LABEL_30:
    v8 = 0;
LABEL_31:

    return v8;
  }

  v37 = 0;
  v38 = 0;
  v26 = [(PCSManateeShareableIdentity *)v22 data];
  _PCSFillOctetString(&v37, v26);

  v36 = 0;
  v27 = length_PCSPrivateKeyProtoBuf(&v37);
  v28 = CFDataCreateMutable(0, v27);
  if (!v28)
  {
    v31 = 12;
    goto LABEL_29;
  }

  v8 = v28;
  CFDataSetLength(v28, v27);
  v29 = CFDataGetMutableBytePtr(v8);
  v30 = encode_PCSPrivateKeyProtoBuf(&v29[v27 - 1], v27, &v37, &v36);
  if (v30)
  {
    v31 = v30;
    CFRelease(v8);
LABEL_29:
    free(v38);
    _PCSErrorASN1(a2, "Failed to encode PCSPrivateKeyProtoBuf", v31);
    goto LABEL_30;
  }

  if (v27 == v36)
  {
    free(v38);
    goto LABEL_31;
  }

LABEL_34:
  v32 = asn1_abort();
  return PCSIdentityGetService(v32, v33, v34, v35);
}

const __CFDictionary *PCSIdentityGetService(uint64_t a1, const __CFNumber *key, void *a3, const void **a4)
{
  if (a3)
  {
    v5 = *(a1 + 72);

    return CFDictionaryGetValue(v5, a3);
  }

  else
  {
    IndexByName = PCSServiceItemGetIndexByName(key);
    if (IndexByName)
    {

      return _PCSIdentityGetServiceWithID(a1, IndexByName, a4);
    }

    else
    {
      return 0;
    }
  }
}

const __CFDictionary *_PCSIdentityGetServiceWithID(uint64_t a1, int a2, const void **a3)
{
  NumberByIndex = PCSServiceItemGetNumberByIndex(a2);
  if (!NumberByIndex)
  {
    _PCSError(a3, 30, @"Service ID 0 not acceptable");
    return 0;
  }

  v7 = NumberByIndex;
  result = *(a1 + 64);
  if (result)
  {
    result = CFDictionaryGetValue(result, v7);
    if (!result)
    {
      _PCSError(a3, 2, @"No such service identity %lu", a2);
      return 0;
    }
  }

  return result;
}

CFDataRef PCSIdentityCopySignatureKeyID(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && (v2 = *(v1 + 16)) != 0 && (v3 = *(v2 + 32)) != 0)
  {
    return CFDataCreate(0, *(v3 + 8), *v3);
  }

  else
  {
    return 0;
  }
}

CFDataRef PCSIdentityMasterCopyParentKeyID(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  if (*(v3 + 4) != 1)
  {
    return 0;
  }

  v4 = *(v3 + 24);
  if (!v4)
  {
    return 0;
  }

  v6 = *v4;
  if (!v6)
  {
LABEL_9:
    v8 = OUTLINED_FUNCTION_0_1();
    result = CFDataCreate(v8, v9, 0);
    if (result)
    {
      return result;
    }

    goto LABEL_14;
  }

  v7 = (*(v4 + 1) + 16);
  while (*(v7 - 4) != 2)
  {
    v7 += 3;
    if (!--v6)
    {
      goto LABEL_9;
    }
  }

  v11 = CFDataCreateWithBytesNoCopy(0, *v7, *(v7 - 1), *MEMORY[0x1E695E498]);
  if (!v11)
  {
LABEL_14:
    _PCSErrorOOM(a2);
    return 0;
  }

  PCSSignatureCopyKeyID(v11, 0, a2);
  OUTLINED_FUNCTION_11();
  return a2;
}

CFTypeRef CreateIdentityFromSet(uint64_t a1, const void **a2)
{
  if ((PCSCurrentPersonaMatchesDSIDFromSet(a1) & 1) == 0)
  {
    _PCSError(a2, 152, @"Current persona does not match chosen dsid");
    return 0;
  }

  v4 = _PCSIdentitySetCopyCurrentIdentityInternal(a1, kPCSServiceMaster, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = OUTLINED_FUNCTION_0_1();
  Mutable = CFDictionaryCreateMutable(v6, v7, v8, v9);
  v5[9] = Mutable;
  if (Mutable && (v11 = OUTLINED_FUNCTION_0_1(), v15 = CFDictionaryCreateMutable(v11, v12, v13, v14), (v5[8] = v15) != 0) && PCSIdentitySetCopyIdentities(a1, 0))
  {
    OUTLINED_FUNCTION_3();
    v19[1] = 3221225472;
    v19[2] = __CreateIdentityFromSet_block_invoke;
    v19[3] = &__block_descriptor_48_e15_v24__0r_v8r_v16l;
    v19[4] = a1;
    v19[5] = v5;
    CFDictionaryApplyFunction(v16, apply_block_2_0, v19);
    v17 = CFRetain(v5);
  }

  else
  {
    v17 = 0;
  }

  CFRelease(v5);
  return v17;
}

uint64_t _PCSValidateSignature(uint64_t *a1, void *a2, const __CFData *a3, const void **a4)
{
  v8 = _PCSSignAlgToDI(*(a2 + 4), a4);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if (a1)
  {
    PublicWithData = 0;
    goto LABEL_9;
  }

  if ((*(a2 + 18) & 1) == 0)
  {
    _PCSError(a4, 27, @"No signer and signature doesn't use public key");
    return 0;
  }

  v12 = CFDataCreate(0, a2[1], *a2);
  if (!v12)
  {
    _PCSErrorOOM(a4);
    return 0;
  }

  v13 = v12;
  PublicWithData = PCSKeyCreatePublicWithData(v12, a4);
  CFRelease(v13);
  a1 = PublicWithData;
  if (!PublicWithData)
  {
    return 0;
  }

LABEL_9:
  v14 = CFGetTypeID(a1);
  if (v14 == PCSKeyGetTypeID())
  {
    if ((a1[4] & 4) == 0)
    {
      v15 = a1[5];
      if ((*(a2 + 18) & 1) == 0)
      {
        v16 = a1[3];
LABEL_21:
        v20 = CFRetain(v16);
        goto LABEL_22;
      }

      v18 = a1;
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  v17 = CFGetTypeID(a1);
  if (v17 == PCSIdentityGetTypeID())
  {
    v18 = a1[2];
    v15 = v18[5];
    if (*(a2 + 18))
    {
LABEL_42:
      v20 = _PCSKeyCopyExportedPublicKey(v18);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v19 = CFGetTypeID(a1);
  if (v19 != PCSPublicIdentityGetTypeID())
  {
    v33 = CFGetTypeID(a1);
    _PCSError(a4, 30, @"Unsupported signer: %@ (ID: %lu)", a1, v33);
    goto LABEL_39;
  }

  v18 = a1[3];
  if (!v18 || (v18[4] & 4) != 0)
  {
LABEL_45:
    _PCSError(a4, 30, @"Unsupported signer: %@"), a1);
LABEL_39:
    v11 = 0;
    if (!PublicWithData)
    {
      return v11;
    }

    goto LABEL_36;
  }

  v15 = v18[5];
  if ((*(a2 + 18) & 1) == 0)
  {
LABEL_20:
    v16 = v18[3];
    goto LABEL_21;
  }

  v20 = PCSKeyCopyExportedPublicKey(v18);
LABEL_22:
  v21 = v20;
  if (CFDataGetLength(v20) != *a2)
  {
    Length = CFDataGetLength(v21);
    _PCSError(a4, 155, @"Unsupported length of signerID %d vs %d", Length, *a2);
    goto LABEL_28;
  }

  v22 = a2[1];
  BytePtr = CFDataGetBytePtr(v21);
  v24 = *a2;
  if (memcmp(v22, BytePtr, *a2))
  {
    v25 = _PCSCreateBase64(a2[1], v24, 0);
    v26 = CFDataGetBytePtr(v21);
    v27 = CFDataGetLength(v21);
    v28 = _PCSCreateBase64(v26, v27, 0);
    _PCSError(a4, 154, @"signerID of signature %@ doesn't match signer: %@", v25, v28);
    if (v28)
    {
      CFRelease(v28);
    }

    if (v25)
    {
      CFRelease(v25);
    }

LABEL_28:
    v11 = 0;
    if (!v21)
    {
      goto LABEL_35;
    }

LABEL_34:
    CFRelease(v21);
    goto LABEL_35;
  }

  v29 = malloc_type_calloc(1uLL, v9[1] + v9[2] + 12, 0x100004052888210uLL);
  if (!v29)
  {
    _PCSErrorOOM(a4);
    goto LABEL_28;
  }

  v30 = v29;
  ccdigest_init();
  CFDataGetLength(a3);
  CFDataGetBytePtr(a3);
  ccdigest_update();
  if (*(a2 + 4) >= 0x10000u)
  {
    ccdigest_update();
  }

  v11 = ccec_verify_di(v15, v9, v30, a2[3], a2[4], a4);
  free(v30);
  if (v21)
  {
    goto LABEL_34;
  }

LABEL_35:
  if (PublicWithData)
  {
LABEL_36:
    CFRelease(PublicWithData);
  }

  return v11;
}

CFDictionaryRef PCSIdentitySetCopyPublishableIdentities(uint64_t a1, CFDictionaryRef Copy, const void **a3)
{
  if ((PCSCurrentPersonaMatchesDSIDFromSet(a1) & 1) == 0)
  {
    _PCSError(a3, 152, @"Current persona does not match chosen dsid");
    return 0;
  }

  if (!Copy)
  {
    return Copy;
  }

  v6 = PCSIdentitySetCopyOrderedIdentities(a1, Copy);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = CFGetTypeID(v6);
  if (v8 != CFArrayGetTypeID() || !CFArrayGetCount(v7) || (v9 = OUTLINED_FUNCTION_0_1(), (Mutable = CFDictionaryCreateMutable(v9, v10, v11, v12)) == 0))
  {
    CFRelease(v7);
    return 0;
  }

  v14 = Mutable;
  v15 = OUTLINED_FUNCTION_0_1();
  v18 = CFArrayCreateMutable(v15, v16, v17);
  if (v18)
  {
    OUTLINED_FUNCTION_3();
    CFArrayGetCount(v7);
    v19 = OUTLINED_FUNCTION_7();
    CFArrayApplyFunction(v19, v23, v20, v21);
    CFDictionarySetValue(v14, kPCSSecureBackupCFKeyRegistryPublicIdentities[0], v18);
    Copy = CFDictionaryCreateCopy(0, v14);
  }

  else
  {
    Copy = 0;
  }

  CFRelease(v7);
  CFRelease(v14);
  if (v18)
  {
    CFRelease(v18);
  }

  return Copy;
}

BOOL generate_publickey(void *a1, int a2, void **a3)
{
  cczp_bitlen();
  v4 = OUTLINED_FUNCTION_7();
  v5 = MEMORY[0x1B2744970](v4);
  v6 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  ccn_write_uint_padded();
  if (ccder_encode_eckey())
  {
    v7 = ccec_der_import_priv();
    v8 = v7 == 0;
    if (!v7 && a2)
    {
      ccec_compact_transform_key();
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  cc_clear();
  cc_clear();
  return v8;
}

void *_PCSPublicIdentityCreateFromPKI(uint64_t a1)
{
  TypeID = PCSPublicIdentityGetTypeID();
  v3 = OUTLINED_FUNCTION_4(TypeID);
  if (v3)
  {
    v4 = PCSKeyCreateWithPKI(a1, 0);
    v3[3] = v4;
    if (v4)
    {
      if (*(*(v4 + 16) + 4) == 1)
      {
        v5 = MEMORY[0x1E695E9D8];
        v6 = MEMORY[0x1E695E9E8];
        v7 = OUTLINED_FUNCTION_0_1();
        v3[5] = CFDictionaryCreateMutable(v7, v8, v5, v6);
        v9 = OUTLINED_FUNCTION_0_1();
        v3[4] = CFDictionaryCreateMutable(v9, v10, v5, v6);
      }
    }

    else
    {
      CFRelease(v3);
      return 0;
    }
  }

  return v3;
}

void _PCSIdentityGetSigningIdentity_cold_1(uint64_t *a1, CFTypeRef *a2)
{
  v3 = _PCSKeyCopyExportedPrivateKey(*a1);
  v4 = CFDataCreateWithBytesNoCopy(0, "SyntheticManateeSharing", 23, *MEMORY[0x1E695E498]);
  *a2 = PCSDeriveIdentity(v3, 0, v4);
  if (v3)
  {
    CFRelease(v3);
  }

  CFRelease(v4);
}

uint64_t _PCSPublicIdentityExportPCSSPKey_cold_1(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = PCSKeyCopyExportedPublicKey(a1);
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = *a2;
  if (*a2)
  {
    v8 = *(v7 + 32);
    if ((v8 & 2) != 0)
    {
      v9 = 8;
    }

    else
    {
      v9 = 7;
    }

    if (v8)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    if ((v8 & 4) != 0)
    {
      LODWORD(v7) = v9;
    }

    else
    {
      LODWORD(v7) = v10;
    }
  }

  *a3 = v7;
  *(a3 + 8) = 0;
  if (!_PCSFillOctetString((a3 + 16), v5))
  {
    PCSAbort("failed to allocate keydata:_PCSFillOctetString(&data->keyData, keydata)", v11, v12, v13, v14, v15, v16, v17);
  }

  CFRelease(v6);
  return 0;
}

void PCSPublicIdentityCreatePEMParser_cold_3()
{
  OUTLINED_FUNCTION_9();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = CopyPublicKeyFromData(*(v6 + 16), *(v6 + 8), 0, 0);
  if (!v7)
  {
    CFRelease(v5);
LABEL_14:
    OUTLINED_FUNCTION_10();
    return;
  }

  v8 = v7;
  v9 = *(*v3 + 8);
  if (!v9)
  {
    _PCSError(0, 28, @"self asserted signature missing");
    goto LABEL_8;
  }

  v10 = _PCSSignAlgToDI(*(v9 + 16), 0);
  if (!v10)
  {
LABEL_8:
    v15 = 0;
LABEL_12:
    free(v8);
    CFRelease(v5);
    if (v15)
    {
      CFRelease(v15);
    }

    goto LABEL_14;
  }

  v11 = v10;
  v12 = *v3;
  *(v12 + 8) = 0;
  *v1 = 0;
  v13 = length_SignedAttributes(v12);
  Mutable = CFDataCreateMutable(0, v13);
  if (!Mutable)
  {
LABEL_7:
    *(*v3 + 8) = v9;
    _PCSError(0, 7, @"Self signed attributes encode failure: %d");
    goto LABEL_8;
  }

  v15 = Mutable;
  CFDataSetLength(Mutable, v13);
  MutableBytePtr = CFDataGetMutableBytePtr(v15);
  if (encode_SignedAttributes(&MutableBytePtr[v13 - 1], v13, *v3, v1))
  {
    CFRelease(v15);
    goto LABEL_7;
  }

  if (v13 == *v1)
  {
    *(*v3 + 8) = v9;
    Length = CFDataGetLength(v15);
    BytePtr = CFDataGetBytePtr(v15);
    if (ccec_digest_and_verify(v8, v11, Length, BytePtr, *(v9 + 24), *(v9 + 32)))
    {
      CFRelease(v15);
      v15 = 0;
    }

    goto LABEL_12;
  }

  asn1_abort();
  PCSPublicIdentityCreatePEMParser_cold_4();
}

__CFData *PCSCloudKitShareTokenCopyEncryptedData(const __CFData *a1, const __CFData *a2)
{
  v4 = ccaes_gcm_encrypt_mode();
  MEMORY[0x1EEE9AC00](v4);
  CFDataGetLength(a1);
  CFDataGetBytePtr(a1);
  OUTLINED_FUNCTION_0_0();
  ccgcm_init();
  Length = CFDataGetLength(a2);
  Mutable = CFDataCreateMutable(0, Length + 32);
  v7 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, Length + 32);
    MutableBytePtr = CFDataGetMutableBytePtr(v7);
    if (!MutableBytePtr || SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x10uLL, MutableBytePtr))
    {
      CFRelease(v7);
      v7 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_0_0();
      ccgcm_set_iv();
      CFDataGetLength(a2);
      CFDataGetBytePtr(a2);
      OUTLINED_FUNCTION_0_0();
      ccgcm_update();
      CFDataGetLength(a2);
      OUTLINED_FUNCTION_0_0();
      ccgcm_finalize();
    }
  }

  ccgcm_context_size();
  cc_clear();
  return v7;
}

CFTypeRef __PCSCopyFromKeychain(int a1, const __CFString *a2, const __CFString *a3, const void **a4, int a5, int a6, int a7, int a8)
{
  result = 0;
  if (a1)
  {
    return 0;
  }

  v60 = *MEMORY[0x1E697B270];
  v58 = *MEMORY[0x1E695E4D0];
  v59 = *MEMORY[0x1E697B260];
  v56 = *MEMORY[0x1E695E4D0];
  v57 = *MEMORY[0x1E697B320];
  v54 = *MEMORY[0x1E695E4D0];
  v55 = *MEMORY[0x1E697B310];
  v52 = kPCSAccount[0];
  v53 = *MEMORY[0x1E697B318];
  v50 = kPCSServiceName[0];
  v51 = *MEMORY[0x1E697AC30];
  v49 = *MEMORY[0x1E697AE88];
  MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(*MEMORY[0x1E697B260], *MEMORY[0x1E697B270], a3, a4, a5, a6, a7, a8, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
  if (!MutableForCFTypesWith)
  {
    _PCSErrorOOM(a4);
    goto LABEL_28;
  }

  v13 = MutableForCFTypesWith;
  v14 = PCSMeasureRelativeNanoTime();
  ++qword_1ED6F2630;
  v15 = SecItemCopyMatching(v13, &result);
  qword_1ED6F2638 += PCSMeasureRelativeNanoTime() - v14;
  if (!v15)
  {
    CFRelease(v13);
    if (!result)
    {
      return 0;
    }

    v16 = CFGetTypeID(result);
    if (v16 != CFDictionaryGetTypeID())
    {
      goto LABEL_28;
    }

    Value = CFDictionaryGetValue(result, *MEMORY[0x1E697B3C0]);
    if (!Value)
    {
      goto LABEL_28;
    }

    v18 = Value;
    v19 = CFGetTypeID(Value);
    if (v19 != CFDataGetTypeID())
    {
      goto LABEL_28;
    }

    v20 = *MEMORY[0x1E697ACF0];
    v21 = CFDictionaryGetValue(result, *MEMORY[0x1E697ACF0]);
    if (v21)
    {
      v22 = v21;
      v23 = CFGetTypeID(v21);
      if (v23 == CFDataGetTypeID())
      {
        v24 = CFStringCreateFromExternalRepresentation(0, v22, 0x8000100u);
        if (!v24)
        {
          goto LABEL_28;
        }

LABEL_15:
        v26 = v24;
        if (CFStringFind(v24, @"@", 0).location == -1)
        {
          if (a3 && CFStringCompare(a3, v26, 0))
          {
            PCSSecError(0, a4, @"The item we where looking for %@ was not found, instead we found %@", a3, v22);
LABEL_27:
            CFRelease(v26);
LABEL_28:
            v8 = 0;
            goto LABEL_33;
          }
        }

        else if (a2)
        {
          v27 = CFGetTypeID(a2);
          if (v27 == CFStringGetTypeID())
          {
            v28 = CFStringCompare(v26, a2, 0);
            v13 = 0;
            if (!a3 || v28)
            {
              goto LABEL_30;
            }

            key = *MEMORY[0x1E697B3C8];
            v30 = CFDictionaryGetValue(result, *MEMORY[0x1E697B3C8]);
            if (v30)
            {
              v13 = CFDictionaryCreateMutableForCFTypesWith(v30, v31, v32, v33, v34, v35, v36, v37, key, v30);
              v45 = CFDictionaryCreateForCFTypes(v13, v38, v39, v40, v41, v42, v43, v44, v20, a3);
              if (!v45)
              {
                _PCSErrorOOM(a4);
                v8 = 0;
LABEL_31:
                CFRelease(v26);
                if (!v13)
                {
                  goto LABEL_33;
                }

                goto LABEL_32;
              }

              v46 = v45;
              SecItemUpdate(v13, v45);
              CFRelease(v46);
LABEL_30:
              v8 = CFRetain(v18);
              goto LABEL_31;
            }

            goto LABEL_27;
          }
        }

        v13 = 0;
        goto LABEL_30;
      }

      v25 = CFGetTypeID(v22);
      if (v25 == CFStringGetTypeID())
      {
        v24 = CFRetain(v22);
        if (v24)
        {
          goto LABEL_15;
        }
      }
    }

    v8 = CFRetain(v18);
    goto LABEL_33;
  }

  PCSSecError(v15, a4, @"SecItem failed to %@ %@", @"fetch", kPCSServiceName[0], v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, 0);
  v8 = 0;
LABEL_32:
  CFRelease(v13);
LABEL_33:
  v47 = result;
  if (result)
  {
    result = 0;
    CFRelease(v47);
  }

  return v8;
}

BOOL __PCSDeleteFromKeychainICDP(const void *a1, CFErrorRef *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = 0;
  v10 = 0;
  v23[3] = *MEMORY[0x1E69E9840];
  v23[0] = kPCSServiceName[0];
  v23[1] = kPCSiCloudServiceMarkerName[0];
  v23[2] = kPCSiCloudServiceName[0];
  v22 = *MEMORY[0x1E697AFF8];
  v21 = *MEMORY[0x1E697B018];
  v11 = *MEMORY[0x1E695E4D0];
  key = *MEMORY[0x1E697AE80];
  v18 = *MEMORY[0x1E697AEB0];
  do
  {
    v12 = v23[v9];
    MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(a1, a2, a3, a4, a5, a6, a7, a8, v22, v21);
    if (!MutableForCFTypesWith)
    {
      break;
    }

    v14 = MutableForCFTypesWith;
    if (a1)
    {
      CFDictionarySetValue(MutableForCFTypesWith, key, a1);
    }

    if (PCSUseSyncKeychain == 1)
    {
      CFDictionarySetValue(v14, v18, v11);
    }

    v15 = _PCSSecItemDeleteIfPresent(v14);
    v16 = PCSSecError(v15, a2, @"SecItem failed to delete iCDP %@ domain", v12);
    CFRelease(v14);
    if (!v16)
    {
      break;
    }

    v10 = v9++ > 1;
  }

  while (v9 != 3);
  return v10;
}

__CFDictionary *__PCSDeleteFromKeychainICDPForRPD(const void *a1, CFErrorRef *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = kPCSiCloudServiceGuitarfishName[0];
  v11 = *MEMORY[0x1E695E4D0];
  result = CFDictionaryCreateMutableForCFTypesWith(a1, a2, a3, a4, a5, a6, a7, a8, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
  if (result)
  {
    v13 = result;
    if (a1)
    {
      CFDictionarySetValue(result, *MEMORY[0x1E697AE80], a1);
    }

    if (PCSUseSyncKeychain == 1)
    {
      CFDictionarySetValue(v13, *MEMORY[0x1E697AEB0], v11);
    }

    v14 = _PCSSecItemDeleteIfPresent(v13);
    v15 = PCSSecError(v14, a2, @"SecItem failed to delete iCDP %@ domain", v10);
    CFRelease(v13);
    return v15;
  }

  return result;
}

CFTypeRef PCSFPCreate(void *a1, void *a2, const void **a3)
{
  v5 = a1;
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (Empty = __PCSShareProtectionCreateEmpty(a3)) == 0)
  {
    v17 = 0;
    goto LABEL_13;
  }

  v8 = Empty;
  RandomKey = CreateRandomKey();
  if (!RandomKey)
  {
    v17 = 0;
    goto LABEL_12;
  }

  v10 = RandomKey;
  *(v8 + 208) = 1;
  if ([v5 isEqualToString:kPCSFPTypeClassic])
  {
    *(v8 + 204) = 2;
    v20 = CFRetain(v10);
    *(v8 + 72) = v20;
    generateObjectKey(v8, v20, 0);
  }

  else if ([v5 isEqualToString:kPCSFPTypeShare])
  {
    *(v8 + 204) = 3;
    *(v8 + 209) = 0;
    *(v8 + 213) = 0;
    generateOtherKeysFromRWMasterKey(v8, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    if (![v5 isEqualToString:kPCSFPTypeLight])
    {
      v17 = 0;
      goto LABEL_10;
    }

    *(v8 + 204) = 0;
    generateObjectKey(v8, v10, 0);
    *(v8 + 72) = CFRetain(v10);
  }

  *(v8 + 176) = PCFPOptionCopyIdentity(v6);
  v21 = PCFPOptionCopyIdentity(v6);
  if (v21)
  {
    v23 = v21;
    SigningIdentity = _PCSIdentityGetSigningIdentity(v21);
    v22 = SigningIdentity;
    if (SigningIdentity)
    {
      CFRetain(SigningIdentity);
    }

    CFRelease(v23);
  }

  else
  {
    v22 = 0;
  }

  *(v8 + 184) = v22;
  v25 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [v25 objectForKeyedSubscript:kPCSFPService];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = PCSServiceItemRequireAuthorship(v26);
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  *(v8 + 214) = v27;
  v28 = [v25 objectForKeyedSubscript:kPCSFPZoneObject];

  if (v28)
  {
    v29 = v28[50];
    if (v29)
    {
      *(v8 + 200) = v29;
    }
  }

  KeyIDFromKey = CreateKeyIDFromKey(*(v8 + 72));
  *(v8 + 80) = KeyIDFromKey;
  if (!KeyIDFromKey)
  {
    v17 = 0;
    v18 = v8;
    v8 = v10;
    goto LABEL_11;
  }

  v17 = CFRetain(v8);
LABEL_10:
  v18 = v10;
LABEL_11:
  CFRelease(v18);
LABEL_12:
  CFRelease(v8);
LABEL_13:

  return v17;
}

void *PCFPOptionCopyIdentity(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  v2 = [v1 objectForKeyedSubscript:kPCSFPIdentity];

  if (v2)
  {
    v3 = CFGetTypeID(v2);
    if (v3 == PCSIdentityGetTypeID())
    {
      v4 = CFRetain(v2);
LABEL_18:
      v9 = v4;
      goto LABEL_20;
    }
  }

  v5 = [v1 objectForKeyedSubscript:kPCSFPIdentitySet];

  if (!v5 || (v6 = CFGetTypeID(v5), v6 != PCSIdentitySetGetTypeID()))
  {
    v9 = [v1 objectForKeyedSubscript:kPCSFPZoneObject];

    if (!v9)
    {
      goto LABEL_20;
    }

    v11 = CFGetTypeID(v9);
    if (v11 == PCSShareProtectionGetTypeID())
    {
      v12 = v9[2];
      if (v12)
      {
        v4 = PCSIdentitySetCopyCurrentIdentityWithError(v12, kPCSServiceRaw, 0);
        goto LABEL_18;
      }
    }

LABEL_19:
    v9 = 0;
    goto LABEL_20;
  }

  v7 = [v1 objectForKeyedSubscript:kPCSFPService];

  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = CFGetTypeID(v7);
  if (v8 != CFStringGetTypeID())
  {
    goto LABEL_19;
  }

  cf = 0;
  v9 = PCSIdentitySetCopyCurrentIdentityWithError(v5, v7, &cf);
  if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = cf;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PCFPOptionCopyIdentity(kPCSFPIdentitySet) but failed to find identity: %@", buf, 0xCu);
  }

  v10 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v10);
  }

LABEL_20:

  return v9;
}

uint64_t MarkForCounterSigning(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = *(a2 + 16);
      if (result)
      {
        result = PCSIdentitySetCopyCurrentIdentityWithError(result, kPCSServiceRaw, 0);
        if (result)
        {
          v5 = result;
          v6 = *(a1 + 176);
          if (v6)
          {
            *(a1 + 176) = 0;
            CFRelease(v6);
          }

          v7 = *(a1 + 184);
          if (v7)
          {
            *(a1 + 184) = 0;
            CFRelease(v7);
          }

          *(a1 + 176) = v5;
          SigningIdentity = _PCSIdentityGetSigningIdentity(v5);
          v9 = SigningIdentity;
          if (SigningIdentity)
          {
            CFRetain(SigningIdentity);
          }

          *(a1 + 184) = v9;
          result = 1;
          *(a1 + 214) = 1;
          v10 = *(a2 + 200);
          if (v10)
          {
            *(a1 + 200) = v10;
          }
        }
      }
    }
  }

  return result;
}

const void *PCSFPCopyCurrentPrivateKey(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0)
  {
    return PCSIdentitySetCopyCurrentIdentityWithError(v1, kPCSServiceRaw, 0);
  }

  else
  {
    return OUTLINED_FUNCTION_3_0();
  }
}

_DWORD *PCSFPCreateWithExported(void *a1, uint64_t a2, const void **a3)
{
  if (!a2)
  {
    _PCSError(a3, 27, @"PCSFPCreateWithExported need an identity");
    return 0;
  }

  Mutable = PCSIdentitySetCreateMutable(a3);
  if (!Mutable)
  {
    return 0;
  }

  v7 = Mutable;
  if (PCSIdentitySetAddIdentity(Mutable, a2))
  {
    v8 = CreateWithExportedInternal(a1, v7, 0, 0, 0, 0, 0, a3);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v7);
  return v8;
}