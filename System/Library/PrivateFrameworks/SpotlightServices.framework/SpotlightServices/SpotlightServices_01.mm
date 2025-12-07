uint64_t jscon_scan_string(char **a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = *a1;
  if (v4 - *a1 >= 1)
  {
    *a1 = ++v5;
  }

  *(a2 + 8) = v5;
  *a2 = 4;
  v6 = memchr(v5, 34, v4 - v5);
  if (!v6)
  {
    v8 = v5;
LABEL_25:
    *a2 = 0;
    *(a2 + 8) = v8;
    v11 = (a2 + 16);
    goto LABEL_26;
  }

  v7 = v6;
  while (1)
  {
    v8 = (v7 + 1);
    *a1 = (v7 + 1);
    if (*(v7 - 1) != 92)
    {
      break;
    }

    *a2 = 5;
    if (*(v7 - 2) == 92)
    {
      v9 = 0;
      do
      {
        v10 = v7[v9-- - 3];
      }

      while (v10 == 92);
      if (v9)
      {
        break;
      }
    }

    v7 = memchr(v7 + 1, 34, v4 - v8);
    if (!v7)
    {
      goto LABEL_25;
    }
  }

  *(a2 + 16) = v7 - v5;
  v11 = (a2 + 16);
  v12 = memchr(v5, 92, v7 - v5);
  v13 = 1;
  if (!v12 || v12 >= v7)
  {
    return v13;
  }

  while (1)
  {
    *a2 = 5;
    v14 = v12 + 2;
    v15 = json_char_table[v12[1]];
    if ((v15 & 0x1E0) != 0)
    {
      goto LABEL_21;
    }

    if ((v15 & 0x10000) == 0 || v7 - v14 < 4)
    {
      goto LABEL_31;
    }

    if ((json_char_table[v12[2]] & 0x1A) == 0)
    {
      v14 = v12 + 3;
      goto LABEL_31;
    }

    if ((json_char_table[v12[3]] & 0x1A) == 0)
    {
      v14 = v12 + 4;
      goto LABEL_31;
    }

    if ((json_char_table[v12[4]] & 0x1A) == 0)
    {
      break;
    }

    v14 = v12 + 6;
    if ((json_char_table[v12[5]] & 0x1A) == 0)
    {
      goto LABEL_31;
    }

LABEL_21:
    v12 = memchr(v14, 92, v7 - v14);
    v13 = 1;
    if (!v12 || v12 >= v7)
    {
      return v13;
    }
  }

  v14 = v12 + 5;
LABEL_31:
  *a2 = 0;
  *(a2 + 8) = v14 - 1;
LABEL_26:
  v13 = 0;
  *v11 = 0;
  return v13;
}

id extractStringFromArray(void *a1, unint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (!a2 && (isKindOfClass & 1) != 0)
    {
      v5 = v3;
LABEL_5:
      v6 = v5;
      goto LABEL_11;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_count(v3) > a2)
    {
      v7 = [v3 objectAtIndexedSubscript:a2];
      objc_opt_class();
      v8 = objc_opt_isKindOfClass();

      if (v8)
      {
        v5 = [v3 objectAtIndexedSubscript:a2];
        goto LABEL_5;
      }
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
}

void sub_1DA016BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float timeDecay(void *a1, float a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0.0;
  if (a2 >= 0.0)
  {
    v6 = a2 / 1440.0;
    if ((a2 / 1440.0) < 1.0)
    {
      v7 = [v3 objectAtIndexedSubscript:0];
      [v7 floatValue];
      v5 = 1.0 - (v6 * (1.0 - v8));
LABEL_18:

      goto LABEL_19;
    }

    if (v6 < 3.0)
    {
      v7 = [v3 objectAtIndexedSubscript:0];
      [v7 floatValue];
      v10 = v9;
      v11 = [v4 objectAtIndexedSubscript:0];
      [v11 floatValue];
      v13 = v12;
      v14 = [v4 objectAtIndexedSubscript:1];
      [v14 floatValue];
      v16 = v13 - v15;
      v17 = v6 + -1.0;
      v18 = -0.5;
LABEL_8:
      v23 = v16 * v18;
LABEL_17:
      v5 = v10 + (v23 * v17);

      goto LABEL_18;
    }

    if (v6 < 7.0)
    {
      v7 = [v3 objectAtIndexedSubscript:1];
      [v7 floatValue];
      v10 = v19;
      v11 = [v4 objectAtIndexedSubscript:1];
      [v11 floatValue];
      v21 = v20;
      v14 = [v4 objectAtIndexedSubscript:2];
      [v14 floatValue];
      v16 = v21 - v22;
      v17 = v6 + -3.0;
      v18 = -0.25;
      goto LABEL_8;
    }

    if (v6 >= 30.0)
    {
      if (v6 >= 90.0)
      {
        if (v6 < 365.0)
        {
          v7 = [v3 objectAtIndexedSubscript:4];
          [v7 floatValue];
          v10 = v35;
          v11 = [v4 objectAtIndexedSubscript:4];
          [v11 floatValue];
          v37 = v36;
          v14 = [v4 objectAtIndexedSubscript:5];
          [v14 floatValue];
          v28 = v37 - v38;
          v17 = v6 + -90.0;
          v29 = -275.0;
          goto LABEL_16;
        }

        if (v6 >= 540.0)
        {
          if (v6 >= 1095.0)
          {
            goto LABEL_19;
          }

          v7 = [v3 objectAtIndexedSubscript:6];
          [v7 floatValue];
          v5 = ((1095.0 - v6) * v44) / 555.0;
          goto LABEL_18;
        }

        v7 = [v3 objectAtIndexedSubscript:5];
        [v7 floatValue];
        v10 = v40;
        v11 = [v4 objectAtIndexedSubscript:5];
        [v11 floatValue];
        v42 = v41;
        v14 = [v4 objectAtIndexedSubscript:6];
        [v14 floatValue];
        v28 = v42 - v43;
        v17 = v6 + -365.0;
        *&v34 = -175.0;
      }

      else
      {
        v7 = [v3 objectAtIndexedSubscript:3];
        [v7 floatValue];
        v10 = v30;
        v11 = [v4 objectAtIndexedSubscript:3];
        [v11 floatValue];
        v32 = v31;
        v14 = [v4 objectAtIndexedSubscript:4];
        [v14 floatValue];
        v28 = v32 - v33;
        v17 = v6 + -30.0;
        *&v34 = -60.0;
      }

      v29 = *&v34;
    }

    else
    {
      v7 = [v3 objectAtIndexedSubscript:2];
      [v7 floatValue];
      v10 = v24;
      v11 = [v4 objectAtIndexedSubscript:2];
      [v11 floatValue];
      v26 = v25;
      v14 = [v4 objectAtIndexedSubscript:3];
      [v14 floatValue];
      v28 = v26 - v27;
      v17 = v6 + -7.0;
      v29 = -23.0;
    }

LABEL_16:
    v23 = v28 / v29;
    goto LABEL_17;
  }

LABEL_19:

  return v5;
}

void sub_1DA01C594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 200), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA01CB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA01D3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA01D740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA01E2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v35 - 200), 8);
  _Unwind_Resume(a1);
}

void sub_1DA01E8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA01EDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1DA01F130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA01F464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA01FA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t chooseTopicality(uint64_t a1, uint64_t a2, int a3)
{
  v3 = _os_feature_enabled_impl() & a3;
  if (!_os_feature_enabled_impl() || !v3 || (result = _os_feature_enabled_impl(), !result))
  {
    result = _os_feature_enabled_impl();
    if ((result & v3) != 1)
    {
      return _os_feature_enabled_impl();
    }
  }

  return result;
}

void sub_1DA021F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA0305A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id rankingAttributeNameArray(uint64_t a1)
{
  if (rankingAttributeNameArray_onceToken != -1)
  {
    rankingAttributeNameArray_cold_1();
  }

  v2 = rankingAttributeNameArray_rankingAttributeNames;

  return v2;
}

void __rankingAttributeNameArray_block_invoke()
{
  v34[399] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6964440];
  v34[0] = *MEMORY[0x1E6963EA0];
  v34[1] = v0;
  v1 = *MEMORY[0x1E6963E60];
  v34[2] = *MEMORY[0x1E6964C48];
  v34[3] = v1;
  v2 = *MEMORY[0x1E6963D18];
  v34[4] = *MEMORY[0x1E6964B58];
  v34[5] = v2;
  v3 = *MEMORY[0x1E6963F48];
  v34[6] = *MEMORY[0x1E6963E98];
  v34[7] = v3;
  v4 = *MEMORY[0x1E6964548];
  v34[8] = *MEMORY[0x1E6964DA0];
  v34[9] = v4;
  v5 = *MEMORY[0x1E6964C88];
  v34[10] = *MEMORY[0x1E6963D40];
  v34[11] = v5;
  v6 = *MEMORY[0x1E6963EB0];
  v34[12] = *MEMORY[0x1E6964C28];
  v34[13] = v6;
  v7 = *MEMORY[0x1E6964A30];
  v34[14] = *MEMORY[0x1E6964C80];
  v34[15] = v7;
  v8 = *MEMORY[0x1E6964B30];
  v34[16] = *MEMORY[0x1E6964B28];
  v34[17] = v8;
  v9 = *MEMORY[0x1E6963FA0];
  v34[18] = *MEMORY[0x1E6963FE8];
  v34[19] = v9;
  v10 = *MEMORY[0x1E6964C70];
  v34[20] = *MEMORY[0x1E6964600];
  v34[21] = v10;
  v11 = *MEMORY[0x1E6964C08];
  v34[22] = *MEMORY[0x1E6964C78];
  v34[23] = v11;
  v12 = *MEMORY[0x1E6963E88];
  v34[24] = *MEMORY[0x1E6963F08];
  v34[25] = v12;
  v13 = *MEMORY[0x1E6963EA8];
  v34[26] = *MEMORY[0x1E6963BF8];
  v34[27] = v13;
  v14 = *MEMORY[0x1E6963F98];
  v34[28] = *MEMORY[0x1E6963E30];
  v34[29] = v14;
  v15 = *MEMORY[0x1E6963F28];
  v34[30] = *MEMORY[0x1E6963BA8];
  v34[31] = v15;
  v16 = *MEMORY[0x1E6963CB0];
  v34[32] = *MEMORY[0x1E6963E78];
  v34[33] = v16;
  v17 = *MEMORY[0x1E6963D00];
  v34[34] = *MEMORY[0x1E6964BF8];
  v34[35] = v17;
  v18 = *MEMORY[0x1E6963C90];
  v34[36] = *MEMORY[0x1E6964290];
  v34[37] = v18;
  v19 = *MEMORY[0x1E6964720];
  v34[38] = *MEMORY[0x1E6963BC8];
  v34[39] = v19;
  v20 = *MEMORY[0x1E6964B88];
  v34[40] = *MEMORY[0x1E6963FC8];
  v34[41] = v20;
  v21 = *MEMORY[0x1E6964598];
  v34[42] = *MEMORY[0x1E6964550];
  v34[43] = v21;
  v22 = *MEMORY[0x1E6963BC0];
  v34[44] = *MEMORY[0x1E6964B80];
  v34[45] = v22;
  v23 = *MEMORY[0x1E6963CF8];
  v34[46] = *MEMORY[0x1E6964AE8];
  v34[47] = v23;
  v24 = *MEMORY[0x1E69644B0];
  v34[48] = *MEMORY[0x1E69649E8];
  v34[49] = v24;
  v25 = *MEMORY[0x1E6964320];
  v34[50] = *MEMORY[0x1E6963F88];
  v34[51] = v25;
  v26 = *MEMORY[0x1E6964348];
  v34[52] = *MEMORY[0x1E69646A8];
  v34[53] = v26;
  v27 = *MEMORY[0x1E6964990];
  v34[54] = *MEMORY[0x1E6963F50];
  v34[55] = v27;
  v28 = *MEMORY[0x1E6964340];
  v34[56] = *MEMORY[0x1E6964628];
  v34[57] = v28;
  v29 = *MEMORY[0x1E6963C08];
  v34[58] = *MEMORY[0x1E6964558];
  v34[59] = v29;
  v30 = *MEMORY[0x1E6963C00];
  v34[60] = *MEMORY[0x1E6964C60];
  v34[61] = v30;
  v31 = *MEMORY[0x1E6964520];
  v34[62] = *MEMORY[0x1E6963C10];
  v34[63] = v31;
  v34[64] = *MEMORY[0x1E6964CD0];
  v34[65] = *MEMORY[0x1E6964C58];
  v34[66] = *MEMORY[0x1E6963CE8];
  v34[67] = *MEMORY[0x1E6964980];
  v34[68] = *MEMORY[0x1E6964988];
  v34[69] = *MEMORY[0x1E6963D68];
  v34[70] = *MEMORY[0x1E6963D60];
  v34[71] = *MEMORY[0x1E6964528];
  v34[72] = *MEMORY[0x1E6964A20];
  v34[73] = *MEMORY[0x1E6964630];
  v34[74] = *MEMORY[0x1E6964488];
  v34[75] = *MEMORY[0x1E6964680];
  v34[76] = *MEMORY[0x1E6964458];
  v34[77] = *MEMORY[0x1E6964D90];
  v34[78] = *MEMORY[0x1E6964650];
  v34[79] = *MEMORY[0x1E6964930];
  v34[80] = *MEMORY[0x1E6964938];
  v34[81] = *MEMORY[0x1E6964D00];
  v34[82] = *MEMORY[0x1E6964AF0];
  v34[83] = *MEMORY[0x1E6964338];
  v34[84] = *MEMORY[0x1E6964330];
  v34[85] = *MEMORY[0x1E6963F10];
  v34[86] = *MEMORY[0x1E6964328];
  v34[87] = *MEMORY[0x1E6963E10];
  v34[88] = *MEMORY[0x1E6964A48];
  v34[89] = *MEMORY[0x1E6963FF8];
  v34[90] = *MEMORY[0x1E6963D28];
  v34[91] = *MEMORY[0x1E6964950];
  v34[92] = *MEMORY[0x1E6963E58];
  v34[93] = *MEMORY[0x1E6964BC8];
  v34[94] = *MEMORY[0x1E69646F0];
  v34[95] = *MEMORY[0x1E69646F8];
  v34[96] = *MEMORY[0x1E6964700];
  v34[97] = *MEMORY[0x1E6963E40];
  v34[98] = *MEMORY[0x1E69648B0];
  v34[99] = *MEMORY[0x1E69648B8];
  v34[100] = *MEMORY[0x1E69648D0];
  v34[101] = *MEMORY[0x1E6964C38];
  v34[102] = *MEMORY[0x1E69645D0];
  v34[103] = *MEMORY[0x1E6964B98];
  v34[104] = @"kMDQueryResultTextContentDistances";
  v34[105] = *MEMORY[0x1E6964D78];
  v34[106] = *MEMORY[0x1E6964DB0];
  v34[107] = *MEMORY[0x1E6964BB8];
  v34[108] = *MEMORY[0x1E6964DC8];
  v34[109] = *MEMORY[0x1E69649B0];
  v34[110] = *MEMORY[0x1E69649C0];
  v34[111] = *MEMORY[0x1E69649D0];
  v34[112] = *MEMORY[0x1E69649B8];
  v34[113] = *MEMORY[0x1E69649C8];
  v34[114] = *MEMORY[0x1E69649D8];
  v34[115] = *MEMORY[0x1E6964998];
  v34[116] = *MEMORY[0x1E69649A0];
  v34[117] = *MEMORY[0x1E69649A8];
  v34[118] = *MEMORY[0x1E69648A0];
  v34[119] = *MEMORY[0x1E69644E0];
  v34[120] = *MEMORY[0x1E6964408];
  v34[121] = *MEMORY[0x1E6964798];
  v34[122] = *MEMORY[0x1E69647E8];
  v34[123] = *MEMORY[0x1E6964750];
  v34[124] = *MEMORY[0x1E6964748];
  v34[125] = *MEMORY[0x1E69647E0];
  v34[126] = *MEMORY[0x1E6964780];
  v34[127] = *MEMORY[0x1E6964778];
  v34[128] = *MEMORY[0x1E6964788];
  v34[129] = *MEMORY[0x1E6964800];
  v34[130] = *MEMORY[0x1E6964848];
  v34[131] = *MEMORY[0x1E6964840];
  v34[132] = *MEMORY[0x1E6964870];
  v34[133] = *MEMORY[0x1E6964838];
  v34[134] = *MEMORY[0x1E6964858];
  v34[135] = *MEMORY[0x1E6964878];
  v34[136] = *MEMORY[0x1E69647A0];
  v34[137] = *MEMORY[0x1E69647C8];
  v34[138] = *MEMORY[0x1E69647A8];
  v34[139] = *MEMORY[0x1E69647B8];
  v34[140] = *MEMORY[0x1E6964880];
  v34[141] = *MEMORY[0x1E6964768];
  v34[142] = *MEMORY[0x1E6964820];
  v34[143] = *MEMORY[0x1E6963BB0];
  v34[144] = *MEMORY[0x1E6963BB8];
  v34[145] = *MEMORY[0x1E6963EF0];
  v34[146] = *MEMORY[0x1E6963BF0];
  v34[147] = *MEMORY[0x1E69648C0];
  v34[148] = *MEMORY[0x1E69648C8];
  v34[149] = *MEMORY[0x1E6964D60];
  v34[150] = *MEMORY[0x1E6964A28];
  v34[151] = *MEMORY[0x1E6963C68];
  v34[152] = *MEMORY[0x1E6963CF0];
  v34[153] = *MEMORY[0x1E6963C70];
  v34[154] = *MEMORY[0x1E6963C60];
  v34[155] = *MEMORY[0x1E6963C88];
  v34[156] = *MEMORY[0x1E6964B60];
  v34[157] = *MEMORY[0x1E6963E48];
  v34[158] = *MEMORY[0x1E6963CA8];
  v34[159] = *MEMORY[0x1E6963CA0];
  v34[160] = *MEMORY[0x1E6964928];
  v34[161] = *MEMORY[0x1E6964DB8];
  v34[162] = *MEMORY[0x1E6964818];
  v34[163] = *MEMORY[0x1E6964A90];
  v34[164] = *MEMORY[0x1E6964A70];
  v34[165] = *MEMORY[0x1E6964A98];
  v34[166] = *MEMORY[0x1E6964AA8];
  v34[167] = *MEMORY[0x1E6964AB0];
  v34[168] = *MEMORY[0x1E6964A80];
  v34[169] = *MEMORY[0x1E6964AA0];
  v34[170] = *MEMORY[0x1E6964A78];
  v34[171] = *MEMORY[0x1E6964AB8];
  v34[172] = *MEMORY[0x1E6964AD0];
  v34[173] = *MEMORY[0x1E6964AC8];
  v34[174] = *MEMORY[0x1E6964A88];
  v34[175] = *MEMORY[0x1E6964AC0];
  v34[176] = *MEMORY[0x1E6964AF8];
  v34[177] = *MEMORY[0x1E6964770];
  v34[178] = *MEMORY[0x1E6964BE0];
  v34[179] = *MEMORY[0x1E6964BE8];
  v34[180] = *MEMORY[0x1E6964500];
  v34[181] = *MEMORY[0x1E6963D20];
  v34[182] = *MEMORY[0x1E6964C00];
  v34[183] = *MEMORY[0x1E6963D58];
  v34[184] = *MEMORY[0x1E6964830];
  v34[185] = *MEMORY[0x1E6964860];
  v34[186] = *MEMORY[0x1E6964810];
  v34[187] = *MEMORY[0x1E6964850];
  v34[188] = *MEMORY[0x1E6964868];
  v34[189] = *MEMORY[0x1E6963F78];
  v34[190] = *MEMORY[0x1E6963F80];
  v34[191] = *MEMORY[0x1E6963F70];
  v34[192] = *MEMORY[0x1E6963F60];
  v34[193] = *MEMORY[0x1E6963F68];
  v34[194] = *MEMORY[0x1E6963F58];
  v34[195] = *MEMORY[0x1E6964C68];
  v34[196] = *MEMORY[0x1E6964410];
  v34[197] = *MEMORY[0x1E6963E28];
  v34[198] = *MEMORY[0x1E6964A38];
  v34[199] = *MEMORY[0x1E6964A40];
  v34[200] = *MEMORY[0x1E69647B0];
  v34[201] = *MEMORY[0x1E69647C0];
  v34[202] = *MEMORY[0x1E6964620];
  v34[203] = *MEMORY[0x1E6964618];
  v34[204] = *MEMORY[0x1E6964610];
  v34[205] = *MEMORY[0x1E6964608];
  v34[206] = *MEMORY[0x1E6964710];
  v34[207] = *MEMORY[0x1E6964708];
  v34[208] = *MEMORY[0x1E6964718];
  v34[209] = *MEMORY[0x1E6964140];
  v34[210] = *MEMORY[0x1E6964178];
  v34[211] = *MEMORY[0x1E6963BE0];
  v34[212] = *MEMORY[0x1E6963E08];
  v34[213] = *MEMORY[0x1E6963ED8];
  v34[214] = *MEMORY[0x1E6963EE8];
  v34[215] = *MEMORY[0x1E6964450];
  v34[216] = *MEMORY[0x1E6964370];
  v34[217] = *MEMORY[0x1E69643F0];
  v34[218] = *MEMORY[0x1E6964498];
  v34[219] = *MEMORY[0x1E69647F0];
  v34[220] = *MEMORY[0x1E69648E0];
  v34[221] = *MEMORY[0x1E6964900];
  v34[222] = *MEMORY[0x1E69649E0];
  v34[223] = *MEMORY[0x1E69649F0];
  v34[224] = *MEMORY[0x1E6964B40];
  v34[225] = *MEMORY[0x1E6964BB0];
  v34[226] = *MEMORY[0x1E69645D8];
  v34[227] = *MEMORY[0x1E69644A8];
  v34[228] = *MEMORY[0x1E69646C0];
  v34[229] = *MEMORY[0x1E69646C8];
  v34[230] = *MEMORY[0x1E6964D48];
  v34[231] = *MEMORY[0x1E6964D40];
  v34[232] = *MEMORY[0x1E6964278];
  v34[233] = *MEMORY[0x1E6964118];
  v34[234] = *MEMORY[0x1E6964120];
  v34[235] = *MEMORY[0x1E69640B0];
  v34[236] = *MEMORY[0x1E6964098];
  v34[237] = *MEMORY[0x1E69640A0];
  v34[238] = *MEMORY[0x1E69640A8];
  v34[239] = *MEMORY[0x1E6964088];
  v34[240] = *MEMORY[0x1E6964110];
  v34[241] = *MEMORY[0x1E6964040];
  v34[242] = *MEMORY[0x1E6964058];
  v34[243] = *MEMORY[0x1E69640C8];
  v34[244] = *MEMORY[0x1E69640E0];
  v34[245] = *MEMORY[0x1E69640B8];
  v34[246] = *MEMORY[0x1E6964008];
  v34[247] = *MEMORY[0x1E6964228];
  v34[248] = *MEMORY[0x1E6964080];
  v34[249] = *MEMORY[0x1E6964108];
  v34[250] = *MEMORY[0x1E6964038];
  v34[251] = *MEMORY[0x1E6964050];
  v34[252] = *MEMORY[0x1E6964068];
  v34[253] = *MEMORY[0x1E6964048];
  v34[254] = *MEMORY[0x1E69640C0];
  v34[255] = *MEMORY[0x1E69640D8];
  v34[256] = *MEMORY[0x1E69640F0];
  v34[257] = *MEMORY[0x1E69640D0];
  v34[258] = *MEMORY[0x1E69641B8];
  v34[259] = *MEMORY[0x1E69641C8];
  v34[260] = *MEMORY[0x1E69641C0];
  v34[261] = *MEMORY[0x1E6964168];
  v34[262] = *MEMORY[0x1E69641A0];
  v34[263] = *MEMORY[0x1E69641B0];
  v34[264] = *MEMORY[0x1E6964208];
  v34[265] = *MEMORY[0x1E69641E8];
  v34[266] = *MEMORY[0x1E6964218];
  v34[267] = *MEMORY[0x1E6964250];
  v34[268] = *MEMORY[0x1E6964248];
  v34[269] = *MEMORY[0x1E6964020];
  v34[270] = *MEMORY[0x1E6964018];
  v34[271] = *MEMORY[0x1E69645A8];
  v34[272] = *MEMORY[0x1E6963C28];
  v34[273] = *MEMORY[0x1E6963C40];
  v34[274] = *MEMORY[0x1E6963C38];
  v34[275] = *MEMORY[0x1E6963C30];
  v34[276] = *MEMORY[0x1E6964AD8];
  v34[277] = *MEMORY[0x1E6964BA8];
  v34[278] = *MEMORY[0x1E6964908];
  v34[279] = *MEMORY[0x1E69641E0];
  v34[280] = *MEMORY[0x1E69642C0];
  v34[281] = *MEMORY[0x1E6964260];
  v34[282] = *MEMORY[0x1E6964268];
  v34[283] = *MEMORY[0x1E6964288];
  v34[284] = *MEMORY[0x1E6963DE8];
  v34[285] = *MEMORY[0x1E6963DF0];
  v34[286] = *MEMORY[0x1E6963D78];
  v34[287] = *MEMORY[0x1E6963E50];
  v34[288] = *MEMORY[0x1E6964580];
  v34[289] = *MEMORY[0x1E6964578];
  v34[290] = *MEMORY[0x1E6964570];
  v34[291] = *MEMORY[0x1E6964B38];
  v34[292] = *MEMORY[0x1E6963FF0];
  v34[293] = *MEMORY[0x1E6964C10];
  v34[294] = *MEMORY[0x1E6964230];
  v34[295] = *MEMORY[0x1E6963F30];
  v34[296] = *MEMORY[0x1E6964090];
  v34[297] = *MEMORY[0x1E69641F8];
  v34[298] = *MEMORY[0x1E6964010];
  v34[299] = *MEMORY[0x1E6964220];
  v34[300] = *MEMORY[0x1E69641F0];
  v34[301] = *MEMORY[0x1E6964200];
  v34[302] = *MEMORY[0x1E6964270];
  v34[303] = *MEMORY[0x1E6964280];
  v34[304] = *MEMORY[0x1E6964258];
  v34[305] = *MEMORY[0x1E6964028];
  v34[306] = *MEMORY[0x1E6964588];
  v34[307] = *MEMORY[0x1E6963D30];
  v34[308] = *MEMORY[0x1E6963BE8];
  v34[309] = *MEMORY[0x1E6963D50];
  v34[310] = *MEMORY[0x1E6963DD0];
  v34[311] = *MEMORY[0x1E6963DF8];
  v34[312] = *MEMORY[0x1E6963DC0];
  v34[313] = *MEMORY[0x1E6963DA0];
  v34[314] = *MEMORY[0x1E6963DB0];
  v34[315] = *MEMORY[0x1E6963D90];
  v34[316] = *MEMORY[0x1E6963DB8];
  v34[317] = *MEMORY[0x1E6963DD8];
  v34[318] = *MEMORY[0x1E6963D88];
  v34[319] = *MEMORY[0x1E6963D80];
  v34[320] = *MEMORY[0x1E6963ED0];
  v34[321] = *MEMORY[0x1E6963EC8];
  v34[322] = *MEMORY[0x1E6963EF8];
  v34[323] = *MEMORY[0x1E6964000];
  v34[324] = *MEMORY[0x1E69648A8];
  v34[325] = *MEMORY[0x1E6964C40];
  v34[326] = *MEMORY[0x1E6964A00];
  v34[327] = *MEMORY[0x1E69642D8];
  v34[328] = *MEMORY[0x1E69642F8];
  v34[329] = *MEMORY[0x1E69642E0];
  v34[330] = *MEMORY[0x1E6964308];
  v34[331] = *MEMORY[0x1E6964300];
  v34[332] = *MEMORY[0x1E69642C8];
  v34[333] = *MEMORY[0x1E69642E8];
  v34[334] = *MEMORY[0x1E69642F0];
  v34[335] = *MEMORY[0x1E69642D0];
  v34[336] = *MEMORY[0x1E6964310];
  v34[337] = *MEMORY[0x1E6964210];
  v34[338] = *MEMORY[0x1E69646B8];
  v34[339] = *MEMORY[0x1E69646D8];
  v34[340] = *MEMORY[0x1E69646D0];
  v34[341] = *MEMORY[0x1E6964BF0];
  v34[342] = *MEMORY[0x1E6963C48];
  v34[343] = *MEMORY[0x1E69644B8];
  v34[344] = *MEMORY[0x1E6964D70];
  v34[345] = *MEMORY[0x1E6964D68];
  v34[346] = *MEMORY[0x1E6963F00];
  v34[347] = *MEMORY[0x1E69649F8];
  v34[348] = *MEMORY[0x1E6963E38];
  v34[349] = *MEMORY[0x1E6964490];
  v34[350] = *MEMORY[0x1E69643E0];
  v34[351] = *MEMORY[0x1E69645F8];
  v34[352] = *MEMORY[0x1E6964960];
  v34[353] = *MEMORY[0x1E6964970];
  v34[354] = *MEMORY[0x1E6964968];
  v34[355] = *MEMORY[0x1E6964978];
  v34[356] = *MEMORY[0x1E6964468];
  v34[357] = *MEMORY[0x1E6964660];
  v34[358] = *MEMORY[0x1E6963E90];
  v34[359] = *MEMORY[0x1E6964CA0];
  v34[360] = *MEMORY[0x1E6964C90];
  v34[361] = *MEMORY[0x1E6964C98];
  v34[362] = *MEMORY[0x1E6964958];
  v34[363] = *MEMORY[0x1E6964A18];
  v34[364] = *MEMORY[0x1E6963C50];
  v34[365] = *MEMORY[0x1E6964D10];
  v34[366] = *MEMORY[0x1E6964D08];
  v34[367] = *MEMORY[0x1E69645B0];
  v34[368] = *MEMORY[0x1E6964D20];
  v34[369] = *MEMORY[0x1E6964D50];
  v34[370] = *MEMORY[0x1E6964D58];
  v34[371] = *MEMORY[0x1E6964A10];
  v34[372] = *MEMORY[0x1E6963C98];
  v34[373] = *MEMORY[0x1E69648E8];
  v34[374] = *MEMORY[0x1E6963BD0];
  v34[375] = *MEMORY[0x1E6964420];
  v34[376] = *MEMORY[0x1E6964CF8];
  v34[377] = *MEMORY[0x1E6964D38];
  v34[378] = *MEMORY[0x1E6964D30];
  v34[379] = *MEMORY[0x1E6964D28];
  v34[380] = *MEMORY[0x1E6964DD0];
  v34[381] = *MEMORY[0x1E6964478];
  v34[382] = *MEMORY[0x1E6964670];
  v34[383] = *MEMORY[0x1E6964480];
  v34[384] = *MEMORY[0x1E6964678];
  v34[385] = *MEMORY[0x1E6964460];
  v34[386] = *MEMORY[0x1E6964658];
  v34[387] = *MEMORY[0x1E6964470];
  v34[388] = *MEMORY[0x1E6964668];
  v34[389] = *MEMORY[0x1E6964CB8];
  v34[390] = *MEMORY[0x1E6963F18];
  v34[391] = *MEMORY[0x1E6963E80];
  v34[392] = *MEMORY[0x1E6964BC0];
  v34[393] = *MEMORY[0x1E6964CA8];
  v34[394] = *MEMORY[0x1E6964CB0];
  v34[395] = *MEMORY[0x1E6964400];
  v34[396] = *MEMORY[0x1E6964530];
  v34[397] = *MEMORY[0x1E69643E8];
  v34[398] = *MEMORY[0x1E6964B90];
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:399];
  v33 = rankingAttributeNameArray_rankingAttributeNames;
  rankingAttributeNameArray_rankingAttributeNames = v32;
}

id rankingPrefetchedAttributesArray(uint64_t a1)
{
  if (rankingPrefetchedAttributesArray_onceToken != -1)
  {
    rankingPrefetchedAttributesArray_cold_1();
  }

  v2 = rankingPrefetchedAttributesArray_prefetchedAttributeNames;

  return v2;
}

void __rankingPrefetchedAttributesArray_block_invoke(uint64_t a1)
{
  v3 = rankingAttributeNameArray(a1);
  v1 = [v3 subarrayWithRange:{0, 347}];
  v2 = rankingPrefetchedAttributesArray_prefetchedAttributeNames;
  rankingPrefetchedAttributesArray_prefetchedAttributeNames = v1;
}

id rankingExtraPrefetchedAttributesArray(uint64_t a1)
{
  if (rankingExtraPrefetchedAttributesArray_onceToken != -1)
  {
    rankingExtraPrefetchedAttributesArray_cold_1();
  }

  v2 = rankingExtraPrefetchedAttributesArray_extraPrefetchedAttributeNames;

  return v2;
}

void __rankingExtraPrefetchedAttributesArray_block_invoke()
{
  v50[399] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6964440];
  v49[0] = *MEMORY[0x1E6963EA0];
  v49[1] = v0;
  v50[0] = &unk_1F55B44E8;
  v50[1] = &unk_1F55B44E8;
  v1 = *MEMORY[0x1E6963E60];
  v49[2] = *MEMORY[0x1E6964C48];
  v49[3] = v1;
  v50[2] = &unk_1F55B44E8;
  v50[3] = &unk_1F55B44E8;
  v2 = *MEMORY[0x1E6963D18];
  v49[4] = *MEMORY[0x1E6964B58];
  v49[5] = v2;
  v50[4] = &unk_1F55B44E8;
  v50[5] = &unk_1F55B44E8;
  v3 = *MEMORY[0x1E6963F48];
  v49[6] = *MEMORY[0x1E6963E98];
  v49[7] = v3;
  v50[6] = &unk_1F55B44E8;
  v50[7] = &unk_1F55B44E8;
  v4 = *MEMORY[0x1E6964548];
  v49[8] = *MEMORY[0x1E6964DA0];
  v49[9] = v4;
  v50[8] = &unk_1F55B44E8;
  v50[9] = &unk_1F55B44E8;
  v5 = *MEMORY[0x1E6964C88];
  v49[10] = *MEMORY[0x1E6963D40];
  v49[11] = v5;
  v50[10] = &unk_1F55B44E8;
  v50[11] = &unk_1F55B44E8;
  v6 = *MEMORY[0x1E6963EB0];
  v49[12] = *MEMORY[0x1E6964C28];
  v49[13] = v6;
  v50[12] = &unk_1F55B44E8;
  v50[13] = &unk_1F55B44E8;
  v7 = *MEMORY[0x1E6964A30];
  v49[14] = *MEMORY[0x1E6964C80];
  v49[15] = v7;
  v50[14] = &unk_1F55B44E8;
  v50[15] = &unk_1F55B44E8;
  v8 = *MEMORY[0x1E6964B30];
  v49[16] = *MEMORY[0x1E6964B28];
  v49[17] = v8;
  v50[16] = &unk_1F55B44E8;
  v50[17] = &unk_1F55B44E8;
  v9 = *MEMORY[0x1E6963FA0];
  v49[18] = *MEMORY[0x1E6963FE8];
  v49[19] = v9;
  v50[18] = &unk_1F55B44E8;
  v50[19] = &unk_1F55B44E8;
  v10 = *MEMORY[0x1E6964C70];
  v49[20] = *MEMORY[0x1E6964600];
  v49[21] = v10;
  v50[20] = &unk_1F55B44E8;
  v50[21] = &unk_1F55B44E8;
  v11 = *MEMORY[0x1E6964C08];
  v49[22] = *MEMORY[0x1E6964C78];
  v49[23] = v11;
  v50[22] = &unk_1F55B44E8;
  v50[23] = &unk_1F55B44E8;
  v12 = *MEMORY[0x1E6963E88];
  v49[24] = *MEMORY[0x1E6963F08];
  v49[25] = v12;
  v50[24] = &unk_1F55B44E8;
  v50[25] = &unk_1F55B44E8;
  v13 = *MEMORY[0x1E6963EA8];
  v49[26] = *MEMORY[0x1E6963BF8];
  v49[27] = v13;
  v50[26] = &unk_1F55B44E8;
  v50[27] = &unk_1F55B44E8;
  v14 = *MEMORY[0x1E6963F98];
  v49[28] = *MEMORY[0x1E6963E30];
  v49[29] = v14;
  v50[28] = &unk_1F55B44E8;
  v50[29] = &unk_1F55B44E8;
  v15 = *MEMORY[0x1E6963F28];
  v49[30] = *MEMORY[0x1E6963BA8];
  v49[31] = v15;
  v50[30] = &unk_1F55B44E8;
  v50[31] = &unk_1F55B44E8;
  v16 = *MEMORY[0x1E6963CB0];
  v49[32] = *MEMORY[0x1E6963E78];
  v49[33] = v16;
  v50[32] = &unk_1F55B44E8;
  v50[33] = &unk_1F55B44E8;
  v17 = *MEMORY[0x1E6963D00];
  v49[34] = *MEMORY[0x1E6964BF8];
  v49[35] = v17;
  v50[34] = &unk_1F55B44E8;
  v50[35] = &unk_1F55B44E8;
  v18 = *MEMORY[0x1E6963C90];
  v49[36] = *MEMORY[0x1E6964290];
  v49[37] = v18;
  v50[36] = &unk_1F55B44E8;
  v50[37] = &unk_1F55B44E8;
  v19 = *MEMORY[0x1E6964720];
  v49[38] = *MEMORY[0x1E6963BC8];
  v49[39] = v19;
  v50[38] = &unk_1F55B44E8;
  v50[39] = &unk_1F55B44E8;
  v20 = *MEMORY[0x1E6964B88];
  v49[40] = *MEMORY[0x1E6963FC8];
  v49[41] = v20;
  v50[40] = &unk_1F55B44E8;
  v50[41] = &unk_1F55B44E8;
  v21 = *MEMORY[0x1E6964598];
  v49[42] = *MEMORY[0x1E6964550];
  v49[43] = v21;
  v50[42] = &unk_1F55B44E8;
  v50[43] = &unk_1F55B44E8;
  v22 = *MEMORY[0x1E6963BC0];
  v49[44] = *MEMORY[0x1E6964B80];
  v49[45] = v22;
  v50[44] = &unk_1F55B44E8;
  v50[45] = &unk_1F55B44E8;
  v23 = *MEMORY[0x1E6963CF8];
  v49[46] = *MEMORY[0x1E6964AE8];
  v49[47] = v23;
  v50[46] = &unk_1F55B44E8;
  v50[47] = &unk_1F55B44E8;
  v24 = *MEMORY[0x1E69644B0];
  v49[48] = *MEMORY[0x1E69649E8];
  v49[49] = v24;
  v50[48] = &unk_1F55B44E8;
  v50[49] = &unk_1F55B44E8;
  v25 = *MEMORY[0x1E6964320];
  v49[50] = *MEMORY[0x1E6963F88];
  v49[51] = v25;
  v50[50] = &unk_1F55B44E8;
  v50[51] = &unk_1F55B44E8;
  v26 = *MEMORY[0x1E6964348];
  v49[52] = *MEMORY[0x1E69646A8];
  v49[53] = v26;
  v50[52] = &unk_1F55B44E8;
  v50[53] = &unk_1F55B44E8;
  v27 = *MEMORY[0x1E6964990];
  v49[54] = *MEMORY[0x1E6963F50];
  v49[55] = v27;
  v50[54] = &unk_1F55B44E8;
  v50[55] = &unk_1F55B44E8;
  v28 = *MEMORY[0x1E6964340];
  v49[56] = *MEMORY[0x1E6964628];
  v49[57] = v28;
  v50[56] = &unk_1F55B44E8;
  v50[57] = &unk_1F55B44E8;
  v29 = *MEMORY[0x1E6963C08];
  v49[58] = *MEMORY[0x1E6964558];
  v49[59] = v29;
  v50[58] = &unk_1F55B44E8;
  v50[59] = &unk_1F55B44E8;
  v30 = *MEMORY[0x1E6963C00];
  v49[60] = *MEMORY[0x1E6964C60];
  v49[61] = v30;
  v50[60] = &unk_1F55B44E8;
  v50[61] = &unk_1F55B44E8;
  v31 = *MEMORY[0x1E6964520];
  v49[62] = *MEMORY[0x1E6963C10];
  v49[63] = v31;
  v50[62] = &unk_1F55B44E8;
  v50[63] = &unk_1F55B44E8;
  v49[64] = *MEMORY[0x1E6964CD0];
  v50[64] = &unk_1F55B44E8;
  v49[65] = *MEMORY[0x1E6964C58];
  v50[65] = &unk_1F55B44E8;
  v49[66] = *MEMORY[0x1E6963CE8];
  v50[66] = &unk_1F55B44E8;
  v49[67] = *MEMORY[0x1E6964980];
  v50[67] = &unk_1F55B44E8;
  v49[68] = *MEMORY[0x1E6964988];
  v50[68] = &unk_1F55B44E8;
  v49[69] = *MEMORY[0x1E6963D68];
  v50[69] = &unk_1F55B44E8;
  v49[70] = *MEMORY[0x1E6963D60];
  v50[70] = &unk_1F55B44E8;
  v49[71] = *MEMORY[0x1E6964528];
  v50[71] = &unk_1F55B44E8;
  v49[72] = *MEMORY[0x1E6964A20];
  v50[72] = &unk_1F55B44E8;
  v49[73] = *MEMORY[0x1E6964630];
  v50[73] = &unk_1F55B44E8;
  v49[74] = *MEMORY[0x1E6964488];
  v50[74] = &unk_1F55B44E8;
  v49[75] = *MEMORY[0x1E6964680];
  v50[75] = &unk_1F55B44E8;
  v49[76] = *MEMORY[0x1E6964458];
  v49[77] = *MEMORY[0x1E6964D90];
  v49[78] = *MEMORY[0x1E6964650];
  v49[79] = *MEMORY[0x1E6964930];
  v49[80] = *MEMORY[0x1E6964938];
  v49[81] = *MEMORY[0x1E6964D00];
  v49[82] = *MEMORY[0x1E6964AF0];
  v49[83] = *MEMORY[0x1E6964338];
  v49[84] = *MEMORY[0x1E6964330];
  v49[85] = *MEMORY[0x1E6963F10];
  v49[86] = *MEMORY[0x1E6964328];
  v49[87] = *MEMORY[0x1E6963E10];
  v49[88] = *MEMORY[0x1E6964A48];
  v49[89] = *MEMORY[0x1E6963FF8];
  v49[90] = *MEMORY[0x1E6963D28];
  v49[91] = *MEMORY[0x1E6964950];
  v49[92] = *MEMORY[0x1E6963E58];
  v49[93] = *MEMORY[0x1E6964BC8];
  v49[94] = *MEMORY[0x1E69646F0];
  v49[95] = *MEMORY[0x1E69646F8];
  v49[96] = *MEMORY[0x1E6964700];
  v49[97] = *MEMORY[0x1E6963E40];
  v49[98] = *MEMORY[0x1E69648B0];
  v49[99] = *MEMORY[0x1E69648B8];
  v49[100] = *MEMORY[0x1E69648D0];
  v49[101] = *MEMORY[0x1E6964C38];
  v50[76] = &unk_1F55B44E8;
  v49[102] = *MEMORY[0x1E69645D0];
  v49[103] = *MEMORY[0x1E6964B98];
  v49[104] = @"kMDQueryResultTextContentDistances";
  v49[105] = *MEMORY[0x1E6964D78];
  v49[106] = *MEMORY[0x1E6964DB0];
  v49[107] = *MEMORY[0x1E6964BB8];
  v49[108] = *MEMORY[0x1E6964DC8];
  v49[109] = *MEMORY[0x1E69649B0];
  v49[110] = *MEMORY[0x1E69649C0];
  v49[111] = *MEMORY[0x1E69649D0];
  v49[112] = *MEMORY[0x1E69649B8];
  v49[113] = *MEMORY[0x1E69649C8];
  v49[114] = *MEMORY[0x1E69649D8];
  v49[115] = *MEMORY[0x1E6964998];
  v49[116] = *MEMORY[0x1E69649A0];
  v49[117] = *MEMORY[0x1E69649A8];
  v49[118] = *MEMORY[0x1E69648A0];
  v49[119] = *MEMORY[0x1E69644E0];
  v49[120] = *MEMORY[0x1E6964408];
  v49[121] = *MEMORY[0x1E6964798];
  v49[122] = *MEMORY[0x1E69647E8];
  v49[123] = *MEMORY[0x1E6964750];
  v49[124] = *MEMORY[0x1E6964748];
  v49[125] = *MEMORY[0x1E69647E0];
  v49[127] = *MEMORY[0x1E6964778];
  v49[130] = *MEMORY[0x1E6964848];
  v49[133] = *MEMORY[0x1E6964838];
  v49[136] = *MEMORY[0x1E69647A0];
  v49[139] = *MEMORY[0x1E69647B8];
  v49[142] = *MEMORY[0x1E6964820];
  v49[145] = *MEMORY[0x1E6963EF0];
  v49[148] = *MEMORY[0x1E69648C8];
  v49[151] = *MEMORY[0x1E6963C68];
  v49[154] = *MEMORY[0x1E6963C60];
  v49[157] = *MEMORY[0x1E6963E48];
  v49[160] = *MEMORY[0x1E6964928];
  v49[163] = *MEMORY[0x1E6964A90];
  v49[166] = *MEMORY[0x1E6964AA8];
  v49[169] = *MEMORY[0x1E6964AA0];
  v49[172] = *MEMORY[0x1E6964AD0];
  v49[175] = *MEMORY[0x1E6964AC0];
  v49[178] = *MEMORY[0x1E6964BE0];
  v49[181] = *MEMORY[0x1E6963D20];
  v49[184] = *MEMORY[0x1E6964830];
  v49[187] = *MEMORY[0x1E6964850];
  v49[190] = *MEMORY[0x1E6963F80];
  v49[193] = *MEMORY[0x1E6963F68];
  v49[196] = *MEMORY[0x1E6964410];
  v49[199] = *MEMORY[0x1E6964A40];
  v49[202] = *MEMORY[0x1E6964620];
  v49[205] = *MEMORY[0x1E6964608];
  v49[208] = *MEMORY[0x1E6964718];
  v49[211] = *MEMORY[0x1E6963BE0];
  v49[214] = *MEMORY[0x1E6963EE8];
  v49[217] = *MEMORY[0x1E69643F0];
  v49[220] = *MEMORY[0x1E69648E0];
  v49[223] = *MEMORY[0x1E69649F0];
  v49[226] = *MEMORY[0x1E69645D8];
  v49[229] = *MEMORY[0x1E69646C8];
  v49[232] = *MEMORY[0x1E6964278];
  v49[235] = *MEMORY[0x1E69640B0];
  v49[238] = *MEMORY[0x1E69640A8];
  v49[241] = *MEMORY[0x1E6964040];
  v49[244] = *MEMORY[0x1E69640E0];
  v49[247] = *MEMORY[0x1E6964228];
  v49[250] = *MEMORY[0x1E6964038];
  v49[253] = *MEMORY[0x1E6964048];
  v49[256] = *MEMORY[0x1E69640F0];
  v49[259] = *MEMORY[0x1E69641C8];
  v49[262] = *MEMORY[0x1E69641A0];
  v49[265] = *MEMORY[0x1E69641E8];
  v49[268] = *MEMORY[0x1E6964248];
  v50[77] = &unk_1F55B44E8;
  v49[270] = *MEMORY[0x1E6964018];
  v50[269] = &unk_1F55B44E8;
  v50[78] = &unk_1F55B44E8;
  v49[269] = *MEMORY[0x1E6964020];
  v50[268] = &unk_1F55B44E8;
  v49[267] = *MEMORY[0x1E6964250];
  v50[266] = &unk_1F55B44E8;
  v50[267] = &unk_1F55B44E8;
  v50[79] = &unk_1F55B44E8;
  v49[266] = *MEMORY[0x1E6964218];
  v50[265] = &unk_1F55B44E8;
  v49[264] = *MEMORY[0x1E6964208];
  v50[263] = &unk_1F55B44E8;
  v50[264] = &unk_1F55B44E8;
  v50[80] = &unk_1F55B44E8;
  v49[263] = *MEMORY[0x1E69641B0];
  v50[262] = &unk_1F55B44E8;
  v49[261] = *MEMORY[0x1E6964168];
  v50[260] = &unk_1F55B44E8;
  v50[261] = &unk_1F55B44E8;
  v50[81] = &unk_1F55B44E8;
  v49[260] = *MEMORY[0x1E69641C0];
  v50[259] = &unk_1F55B44E8;
  v49[258] = *MEMORY[0x1E69641B8];
  v50[257] = &unk_1F55B44E8;
  v50[258] = &unk_1F55B44E8;
  v50[82] = &unk_1F55B44E8;
  v49[257] = *MEMORY[0x1E69640D0];
  v50[256] = &unk_1F55B44E8;
  v49[255] = *MEMORY[0x1E69640D8];
  v50[254] = &unk_1F55B44E8;
  v50[255] = &unk_1F55B44E8;
  v50[83] = &unk_1F55B44E8;
  v49[254] = *MEMORY[0x1E69640C0];
  v50[253] = &unk_1F55B44E8;
  v49[252] = *MEMORY[0x1E6964068];
  v50[251] = &unk_1F55B44E8;
  v50[252] = &unk_1F55B44E8;
  v50[84] = &unk_1F55B44E8;
  v49[251] = *MEMORY[0x1E6964050];
  v50[250] = &unk_1F55B44E8;
  v49[249] = *MEMORY[0x1E6964108];
  v50[248] = &unk_1F55B44E8;
  v50[249] = &unk_1F55B44E8;
  v50[85] = &unk_1F55B44E8;
  v49[248] = *MEMORY[0x1E6964080];
  v50[247] = &unk_1F55B44E8;
  v49[246] = *MEMORY[0x1E6964008];
  v50[245] = &unk_1F55B44E8;
  v50[246] = &unk_1F55B44E8;
  v50[86] = &unk_1F55B44E8;
  v49[245] = *MEMORY[0x1E69640B8];
  v50[244] = &unk_1F55B44E8;
  v49[243] = *MEMORY[0x1E69640C8];
  v50[242] = &unk_1F55B44E8;
  v50[243] = &unk_1F55B44E8;
  v50[87] = &unk_1F55B44E8;
  v49[242] = *MEMORY[0x1E6964058];
  v50[241] = &unk_1F55B44E8;
  v49[240] = *MEMORY[0x1E6964110];
  v50[239] = &unk_1F55B44E8;
  v50[240] = &unk_1F55B44E8;
  v50[88] = &unk_1F55B44E8;
  v49[239] = *MEMORY[0x1E6964088];
  v50[238] = &unk_1F55B44E8;
  v49[237] = *MEMORY[0x1E69640A0];
  v50[236] = &unk_1F55B44E8;
  v50[237] = &unk_1F55B44E8;
  v50[89] = &unk_1F55B44E8;
  v49[236] = *MEMORY[0x1E6964098];
  v50[235] = &unk_1F55B44E8;
  v49[234] = *MEMORY[0x1E6964120];
  v50[233] = &unk_1F55B44E8;
  v50[234] = &unk_1F55B44E8;
  v50[90] = &unk_1F55B44E8;
  v49[233] = *MEMORY[0x1E6964118];
  v50[232] = &unk_1F55B44E8;
  v49[231] = *MEMORY[0x1E6964D40];
  v50[230] = &unk_1F55B44E8;
  v50[231] = &unk_1F55B44E8;
  v50[91] = &unk_1F55B44E8;
  v49[230] = *MEMORY[0x1E6964D48];
  v50[229] = &unk_1F55B44E8;
  v49[228] = *MEMORY[0x1E69646C0];
  v50[227] = &unk_1F55B44E8;
  v50[228] = &unk_1F55B44E8;
  v50[92] = &unk_1F55B44E8;
  v49[227] = *MEMORY[0x1E69644A8];
  v50[226] = &unk_1F55B44E8;
  v49[225] = *MEMORY[0x1E6964BB0];
  v50[224] = &unk_1F55B44E8;
  v50[225] = &unk_1F55B44E8;
  v50[93] = &unk_1F55B44E8;
  v49[224] = *MEMORY[0x1E6964B40];
  v50[223] = &unk_1F55B44E8;
  v49[222] = *MEMORY[0x1E69649E0];
  v50[221] = &unk_1F55B44E8;
  v50[222] = &unk_1F55B44E8;
  v50[94] = &unk_1F55B44E8;
  v49[221] = *MEMORY[0x1E6964900];
  v50[220] = &unk_1F55B44E8;
  v49[219] = *MEMORY[0x1E69647F0];
  v50[218] = &unk_1F55B44E8;
  v50[219] = &unk_1F55B44E8;
  v50[95] = &unk_1F55B44E8;
  v49[218] = *MEMORY[0x1E6964498];
  v50[217] = &unk_1F55B44E8;
  v49[216] = *MEMORY[0x1E6964370];
  v50[215] = &unk_1F55B44E8;
  v50[216] = &unk_1F55B44E8;
  v50[96] = &unk_1F55B44E8;
  v49[215] = *MEMORY[0x1E6964450];
  v50[214] = &unk_1F55B44E8;
  v49[213] = *MEMORY[0x1E6963ED8];
  v50[212] = &unk_1F55B44E8;
  v50[213] = &unk_1F55B44E8;
  v50[97] = &unk_1F55B44E8;
  v49[212] = *MEMORY[0x1E6963E08];
  v50[211] = &unk_1F55B44E8;
  v49[210] = *MEMORY[0x1E6964178];
  v50[209] = &unk_1F55B44E8;
  v50[210] = &unk_1F55B44E8;
  v50[98] = &unk_1F55B44E8;
  v49[209] = *MEMORY[0x1E6964140];
  v50[208] = &unk_1F55B44E8;
  v49[207] = *MEMORY[0x1E6964708];
  v50[206] = &unk_1F55B44E8;
  v50[207] = &unk_1F55B44E8;
  v50[99] = &unk_1F55B44E8;
  v49[206] = *MEMORY[0x1E6964710];
  v50[205] = &unk_1F55B44E8;
  v49[204] = *MEMORY[0x1E6964610];
  v50[203] = &unk_1F55B44E8;
  v50[204] = &unk_1F55B44E8;
  v50[100] = &unk_1F55B44E8;
  v49[203] = *MEMORY[0x1E6964618];
  v50[202] = &unk_1F55B44E8;
  v49[201] = *MEMORY[0x1E69647C0];
  v50[200] = &unk_1F55B44E8;
  v50[201] = &unk_1F55B44E8;
  v50[101] = &unk_1F55B44E8;
  v49[200] = *MEMORY[0x1E69647B0];
  v50[199] = &unk_1F55B44E8;
  v49[198] = *MEMORY[0x1E6964A38];
  v50[197] = &unk_1F55B44E8;
  v50[198] = &unk_1F55B44E8;
  v50[102] = &unk_1F55B44E8;
  v49[197] = *MEMORY[0x1E6963E28];
  v50[196] = &unk_1F55B44E8;
  v49[195] = *MEMORY[0x1E6964C68];
  v50[194] = &unk_1F55B44E8;
  v50[195] = &unk_1F55B44E8;
  v50[103] = &unk_1F55B44E8;
  v49[194] = *MEMORY[0x1E6963F58];
  v50[193] = &unk_1F55B44E8;
  v49[192] = *MEMORY[0x1E6963F60];
  v50[191] = &unk_1F55B44E8;
  v50[192] = &unk_1F55B44E8;
  v50[104] = &unk_1F55B44E8;
  v49[191] = *MEMORY[0x1E6963F70];
  v50[190] = &unk_1F55B44E8;
  v49[189] = *MEMORY[0x1E6963F78];
  v50[188] = &unk_1F55B44E8;
  v50[189] = &unk_1F55B44E8;
  v50[105] = &unk_1F55B44E8;
  v49[188] = *MEMORY[0x1E6964868];
  v50[187] = &unk_1F55B44E8;
  v49[186] = *MEMORY[0x1E6964810];
  v50[185] = &unk_1F55B44E8;
  v50[186] = &unk_1F55B44E8;
  v50[106] = &unk_1F55B44E8;
  v49[185] = *MEMORY[0x1E6964860];
  v50[184] = &unk_1F55B44E8;
  v49[183] = *MEMORY[0x1E6963D58];
  v50[182] = &unk_1F55B44E8;
  v50[183] = &unk_1F55B44E8;
  v50[107] = &unk_1F55B44E8;
  v49[182] = *MEMORY[0x1E6964C00];
  v50[181] = &unk_1F55B44E8;
  v49[180] = *MEMORY[0x1E6964500];
  v50[179] = &unk_1F55B44E8;
  v50[180] = &unk_1F55B44E8;
  v50[108] = &unk_1F55B44E8;
  v49[179] = *MEMORY[0x1E6964BE8];
  v50[178] = &unk_1F55B44E8;
  v49[177] = *MEMORY[0x1E6964770];
  v50[176] = &unk_1F55B44E8;
  v50[177] = &unk_1F55B44E8;
  v50[109] = &unk_1F55B44E8;
  v49[176] = *MEMORY[0x1E6964AF8];
  v50[175] = &unk_1F55B44E8;
  v49[174] = *MEMORY[0x1E6964A88];
  v50[173] = &unk_1F55B44E8;
  v50[174] = &unk_1F55B44E8;
  v50[110] = &unk_1F55B44E8;
  v49[173] = *MEMORY[0x1E6964AC8];
  v50[172] = &unk_1F55B44E8;
  v49[171] = *MEMORY[0x1E6964AB8];
  v50[170] = &unk_1F55B44E8;
  v50[171] = &unk_1F55B44E8;
  v50[111] = &unk_1F55B44E8;
  v49[170] = *MEMORY[0x1E6964A78];
  v50[169] = &unk_1F55B44E8;
  v49[168] = *MEMORY[0x1E6964A80];
  v50[167] = &unk_1F55B44E8;
  v50[168] = &unk_1F55B44E8;
  v50[112] = &unk_1F55B44E8;
  v49[167] = *MEMORY[0x1E6964AB0];
  v50[166] = &unk_1F55B44E8;
  v49[165] = *MEMORY[0x1E6964A98];
  v50[164] = &unk_1F55B44E8;
  v50[165] = &unk_1F55B44E8;
  v50[113] = &unk_1F55B44E8;
  v49[164] = *MEMORY[0x1E6964A70];
  v50[163] = &unk_1F55B44E8;
  v49[162] = *MEMORY[0x1E6964818];
  v50[161] = &unk_1F55B44E8;
  v50[162] = &unk_1F55B44E8;
  v50[114] = &unk_1F55B44E8;
  v49[161] = *MEMORY[0x1E6964DB8];
  v50[160] = &unk_1F55B44E8;
  v49[159] = *MEMORY[0x1E6963CA0];
  v50[158] = &unk_1F55B44E8;
  v50[159] = &unk_1F55B44E8;
  v50[115] = &unk_1F55B44E8;
  v49[158] = *MEMORY[0x1E6963CA8];
  v50[157] = &unk_1F55B44E8;
  v49[156] = *MEMORY[0x1E6964B60];
  v50[155] = &unk_1F55B44E8;
  v50[156] = &unk_1F55B44E8;
  v50[116] = &unk_1F55B44E8;
  v49[155] = *MEMORY[0x1E6963C88];
  v50[154] = &unk_1F55B44E8;
  v49[153] = *MEMORY[0x1E6963C70];
  v50[152] = &unk_1F55B44E8;
  v50[153] = &unk_1F55B44E8;
  v50[117] = &unk_1F55B44E8;
  v49[152] = *MEMORY[0x1E6963CF0];
  v50[151] = &unk_1F55B44E8;
  v49[150] = *MEMORY[0x1E6964A28];
  v50[149] = &unk_1F55B44E8;
  v50[150] = &unk_1F55B44E8;
  v50[118] = &unk_1F55B44E8;
  v49[149] = *MEMORY[0x1E6964D60];
  v50[148] = &unk_1F55B44E8;
  v49[147] = *MEMORY[0x1E69648C0];
  v50[146] = &unk_1F55B44E8;
  v50[147] = &unk_1F55B44E8;
  v50[119] = &unk_1F55B44E8;
  v49[146] = *MEMORY[0x1E6963BF0];
  v50[145] = &unk_1F55B44E8;
  v49[144] = *MEMORY[0x1E6963BB8];
  v50[143] = &unk_1F55B44E8;
  v50[144] = &unk_1F55B44E8;
  v50[120] = &unk_1F55B44E8;
  v49[143] = *MEMORY[0x1E6963BB0];
  v50[142] = &unk_1F55B44E8;
  v49[141] = *MEMORY[0x1E6964768];
  v50[140] = &unk_1F55B44E8;
  v50[141] = &unk_1F55B44E8;
  v50[121] = &unk_1F55B44E8;
  v49[140] = *MEMORY[0x1E6964880];
  v50[139] = &unk_1F55B44E8;
  v49[138] = *MEMORY[0x1E69647A8];
  v50[137] = &unk_1F55B44E8;
  v50[138] = &unk_1F55B44E8;
  v50[122] = &unk_1F55B44E8;
  v49[137] = *MEMORY[0x1E69647C8];
  v50[136] = &unk_1F55B44E8;
  v49[135] = *MEMORY[0x1E6964878];
  v50[134] = &unk_1F55B44E8;
  v50[135] = &unk_1F55B44E8;
  v50[123] = &unk_1F55B44E8;
  v49[134] = *MEMORY[0x1E6964858];
  v50[133] = &unk_1F55B44E8;
  v49[132] = *MEMORY[0x1E6964870];
  v50[131] = &unk_1F55B44E8;
  v50[132] = &unk_1F55B44E8;
  v50[124] = &unk_1F55B44E8;
  v49[131] = *MEMORY[0x1E6964840];
  v50[130] = &unk_1F55B44E8;
  v49[129] = *MEMORY[0x1E6964800];
  v50[128] = &unk_1F55B44E8;
  v50[129] = &unk_1F55B44E8;
  v50[125] = &unk_1F55B44E8;
  v49[128] = *MEMORY[0x1E6964788];
  v50[127] = &unk_1F55B44E8;
  v49[126] = *MEMORY[0x1E6964780];
  v50[126] = &unk_1F55B44E8;
  v50[270] = &unk_1F55B44E8;
  v49[271] = *MEMORY[0x1E69645A8];
  v50[271] = &unk_1F55B44E8;
  v49[272] = *MEMORY[0x1E6963C28];
  v50[272] = &unk_1F55B44E8;
  v49[273] = *MEMORY[0x1E6963C40];
  v50[273] = &unk_1F55B44E8;
  v49[274] = *MEMORY[0x1E6963C38];
  v50[274] = &unk_1F55B44E8;
  v49[275] = *MEMORY[0x1E6963C30];
  v50[275] = &unk_1F55B44E8;
  v49[276] = *MEMORY[0x1E6964AD8];
  v50[276] = &unk_1F55B44E8;
  v49[277] = *MEMORY[0x1E6964BA8];
  v50[277] = &unk_1F55B44E8;
  v49[278] = *MEMORY[0x1E6964908];
  v50[278] = &unk_1F55B44E8;
  v49[279] = *MEMORY[0x1E69641E0];
  v50[279] = &unk_1F55B44E8;
  v49[280] = *MEMORY[0x1E69642C0];
  v50[280] = &unk_1F55B44E8;
  v49[281] = *MEMORY[0x1E6964260];
  v50[281] = &unk_1F55B44E8;
  v49[282] = *MEMORY[0x1E6964268];
  v50[282] = &unk_1F55B44E8;
  v49[283] = *MEMORY[0x1E6964288];
  v50[283] = &unk_1F55B44E8;
  v49[284] = *MEMORY[0x1E6963DE8];
  v50[284] = &unk_1F55B44E8;
  v49[285] = *MEMORY[0x1E6963DF0];
  v50[285] = &unk_1F55B44E8;
  v49[286] = *MEMORY[0x1E6963D78];
  v50[286] = &unk_1F55B44E8;
  v49[287] = *MEMORY[0x1E6963E50];
  v50[287] = &unk_1F55B44E8;
  v49[288] = *MEMORY[0x1E6964580];
  v50[288] = &unk_1F55B44E8;
  v49[289] = *MEMORY[0x1E6964578];
  v50[289] = &unk_1F55B44E8;
  v49[290] = *MEMORY[0x1E6964570];
  v50[290] = &unk_1F55B44E8;
  v49[291] = *MEMORY[0x1E6964B38];
  v50[291] = &unk_1F55B44E8;
  v49[292] = *MEMORY[0x1E6963FF0];
  v50[292] = &unk_1F55B44E8;
  v49[293] = *MEMORY[0x1E6964C10];
  v50[293] = &unk_1F55B44E8;
  v49[294] = *MEMORY[0x1E6964230];
  v50[294] = &unk_1F55B44E8;
  v49[295] = *MEMORY[0x1E6963F30];
  v50[295] = &unk_1F55B44E8;
  v49[296] = *MEMORY[0x1E6964090];
  v50[296] = &unk_1F55B44E8;
  v49[297] = *MEMORY[0x1E69641F8];
  v50[297] = &unk_1F55B44E8;
  v49[298] = *MEMORY[0x1E6964010];
  v50[298] = &unk_1F55B44E8;
  v49[299] = *MEMORY[0x1E6964220];
  v50[299] = &unk_1F55B44E8;
  v49[300] = *MEMORY[0x1E69641F0];
  v50[300] = &unk_1F55B44E8;
  v49[301] = *MEMORY[0x1E6964200];
  v50[301] = &unk_1F55B44E8;
  v49[302] = *MEMORY[0x1E6964270];
  v50[302] = &unk_1F55B44E8;
  v49[303] = *MEMORY[0x1E6964280];
  v50[303] = &unk_1F55B44E8;
  v49[304] = *MEMORY[0x1E6964258];
  v50[304] = &unk_1F55B44E8;
  v49[305] = *MEMORY[0x1E6964028];
  v50[305] = &unk_1F55B44E8;
  v49[306] = *MEMORY[0x1E6964588];
  v50[306] = &unk_1F55B44E8;
  v49[307] = *MEMORY[0x1E6963D30];
  v50[307] = &unk_1F55B44E8;
  v49[308] = *MEMORY[0x1E6963BE8];
  v50[308] = &unk_1F55B44E8;
  v49[309] = *MEMORY[0x1E6963D50];
  v50[309] = &unk_1F55B44E8;
  v49[310] = *MEMORY[0x1E6963DD0];
  v50[310] = &unk_1F55B44E8;
  v49[311] = *MEMORY[0x1E6963DF8];
  v50[311] = &unk_1F55B44E8;
  v49[312] = *MEMORY[0x1E6963DC0];
  v50[312] = &unk_1F55B44E8;
  v49[313] = *MEMORY[0x1E6963DA0];
  v50[313] = &unk_1F55B44E8;
  v49[314] = *MEMORY[0x1E6963DB0];
  v50[314] = &unk_1F55B44E8;
  v49[315] = *MEMORY[0x1E6963D90];
  v50[315] = &unk_1F55B44E8;
  v49[316] = *MEMORY[0x1E6963DB8];
  v50[316] = &unk_1F55B44E8;
  v49[317] = *MEMORY[0x1E6963DD8];
  v50[317] = &unk_1F55B44E8;
  v49[318] = *MEMORY[0x1E6963D88];
  v50[318] = &unk_1F55B44E8;
  v49[319] = *MEMORY[0x1E6963D80];
  v50[319] = &unk_1F55B44E8;
  v49[320] = *MEMORY[0x1E6963ED0];
  v50[320] = &unk_1F55B44E8;
  v49[321] = *MEMORY[0x1E6963EC8];
  v50[321] = &unk_1F55B44E8;
  v49[322] = *MEMORY[0x1E6963EF8];
  v50[322] = &unk_1F55B44E8;
  v49[323] = *MEMORY[0x1E6964000];
  v50[323] = &unk_1F55B44E8;
  v49[324] = *MEMORY[0x1E69648A8];
  v50[324] = &unk_1F55B44E8;
  v49[325] = *MEMORY[0x1E6964C40];
  v50[325] = &unk_1F55B44E8;
  v49[326] = *MEMORY[0x1E6964A00];
  v50[326] = &unk_1F55B44E8;
  v49[327] = *MEMORY[0x1E69642D8];
  v50[327] = &unk_1F55B44E8;
  v49[328] = *MEMORY[0x1E69642F8];
  v50[328] = &unk_1F55B44E8;
  v49[329] = *MEMORY[0x1E69642E0];
  v50[329] = &unk_1F55B44E8;
  v49[330] = *MEMORY[0x1E6964308];
  v50[330] = &unk_1F55B44E8;
  v49[331] = *MEMORY[0x1E6964300];
  v50[331] = &unk_1F55B44E8;
  v49[332] = *MEMORY[0x1E69642C8];
  v50[332] = &unk_1F55B44E8;
  v49[333] = *MEMORY[0x1E69642E8];
  v50[333] = &unk_1F55B44E8;
  v49[334] = *MEMORY[0x1E69642F0];
  v50[334] = &unk_1F55B44E8;
  v49[335] = *MEMORY[0x1E69642D0];
  v50[335] = &unk_1F55B44E8;
  v49[336] = *MEMORY[0x1E6964310];
  v50[336] = &unk_1F55B44E8;
  v49[337] = *MEMORY[0x1E6964210];
  v50[337] = &unk_1F55B44E8;
  v49[338] = *MEMORY[0x1E69646B8];
  v50[338] = &unk_1F55B44E8;
  v49[339] = *MEMORY[0x1E69646D8];
  v50[339] = &unk_1F55B44E8;
  v49[340] = *MEMORY[0x1E69646D0];
  v50[340] = &unk_1F55B44E8;
  v49[341] = *MEMORY[0x1E6964BF0];
  v50[341] = &unk_1F55B44E8;
  v49[342] = *MEMORY[0x1E6963C48];
  v50[342] = &unk_1F55B44E8;
  v49[343] = *MEMORY[0x1E69644B8];
  v50[343] = &unk_1F55B44E8;
  v49[344] = *MEMORY[0x1E6964D70];
  v50[344] = &unk_1F55B44E8;
  v49[345] = *MEMORY[0x1E6964D68];
  v49[346] = *MEMORY[0x1E6963F00];
  v50[345] = &unk_1F55B44E8;
  v50[346] = &unk_1F55B4500;
  v49[347] = *MEMORY[0x1E69649F8];
  v50[347] = &unk_1F55B44E8;
  v49[348] = *MEMORY[0x1E6963E38];
  v50[348] = &unk_1F55B44E8;
  v49[349] = *MEMORY[0x1E6964490];
  v50[349] = &unk_1F55B44E8;
  v49[350] = *MEMORY[0x1E69643E0];
  v50[350] = &unk_1F55B44E8;
  v49[351] = *MEMORY[0x1E69645F8];
  v50[351] = &unk_1F55B44E8;
  v49[352] = *MEMORY[0x1E6964960];
  v50[352] = &unk_1F55B44E8;
  v49[353] = *MEMORY[0x1E6964970];
  v50[353] = &unk_1F55B44E8;
  v49[354] = *MEMORY[0x1E6964968];
  v50[354] = &unk_1F55B44E8;
  v49[355] = *MEMORY[0x1E6964978];
  v50[355] = &unk_1F55B44E8;
  v49[356] = *MEMORY[0x1E6964468];
  v50[356] = &unk_1F55B44E8;
  v49[357] = *MEMORY[0x1E6964660];
  v50[357] = &unk_1F55B44E8;
  v49[358] = *MEMORY[0x1E6963E90];
  v50[358] = &unk_1F55B44E8;
  v49[359] = *MEMORY[0x1E6964CA0];
  v50[359] = &unk_1F55B44E8;
  v49[360] = *MEMORY[0x1E6964C90];
  v50[360] = &unk_1F55B44E8;
  v49[361] = *MEMORY[0x1E6964C98];
  v50[361] = &unk_1F55B44E8;
  v49[362] = *MEMORY[0x1E6964958];
  v50[362] = &unk_1F55B44E8;
  v49[363] = *MEMORY[0x1E6964A18];
  v50[363] = &unk_1F55B44E8;
  v49[364] = *MEMORY[0x1E6963C50];
  v50[364] = &unk_1F55B44E8;
  v49[365] = *MEMORY[0x1E6964D10];
  v50[365] = &unk_1F55B44E8;
  v49[366] = *MEMORY[0x1E6964D08];
  v50[366] = &unk_1F55B44E8;
  v49[367] = *MEMORY[0x1E69645B0];
  v50[367] = &unk_1F55B44E8;
  v49[368] = *MEMORY[0x1E6964D20];
  v50[368] = &unk_1F55B44E8;
  v49[369] = *MEMORY[0x1E6964D50];
  v50[369] = &unk_1F55B44E8;
  v49[370] = *MEMORY[0x1E6964D58];
  v50[370] = &unk_1F55B44E8;
  v49[371] = *MEMORY[0x1E6964A10];
  v50[371] = &unk_1F55B44E8;
  v49[372] = *MEMORY[0x1E6963C98];
  v50[372] = &unk_1F55B44E8;
  v49[373] = *MEMORY[0x1E69648E8];
  v50[373] = &unk_1F55B44E8;
  v49[374] = *MEMORY[0x1E6963BD0];
  v50[374] = &unk_1F55B44E8;
  v49[375] = *MEMORY[0x1E6964420];
  v50[375] = &unk_1F55B44E8;
  v49[376] = *MEMORY[0x1E6964CF8];
  v50[376] = &unk_1F55B44E8;
  v49[377] = *MEMORY[0x1E6964D38];
  v50[377] = &unk_1F55B44E8;
  v49[378] = *MEMORY[0x1E6964D30];
  v50[378] = &unk_1F55B44E8;
  v49[379] = *MEMORY[0x1E6964D28];
  v50[379] = &unk_1F55B44E8;
  v49[380] = *MEMORY[0x1E6964DD0];
  v50[380] = &unk_1F55B44E8;
  v49[381] = *MEMORY[0x1E6964478];
  v50[381] = &unk_1F55B44E8;
  v49[382] = *MEMORY[0x1E6964670];
  v50[382] = &unk_1F55B44E8;
  v49[383] = *MEMORY[0x1E6964480];
  v50[383] = &unk_1F55B44E8;
  v49[384] = *MEMORY[0x1E6964678];
  v50[384] = &unk_1F55B44E8;
  v49[385] = *MEMORY[0x1E6964460];
  v50[385] = &unk_1F55B44E8;
  v49[386] = *MEMORY[0x1E6964658];
  v50[386] = &unk_1F55B44E8;
  v49[387] = *MEMORY[0x1E6964470];
  v50[387] = &unk_1F55B44E8;
  v49[388] = *MEMORY[0x1E6964668];
  v50[388] = &unk_1F55B44E8;
  v49[389] = *MEMORY[0x1E6964CB8];
  v50[389] = &unk_1F55B44E8;
  v49[390] = *MEMORY[0x1E6963F18];
  v50[390] = &unk_1F55B44E8;
  v49[391] = *MEMORY[0x1E6963E80];
  v50[391] = &unk_1F55B44E8;
  v49[392] = *MEMORY[0x1E6964BC0];
  v50[392] = &unk_1F55B44E8;
  v49[393] = *MEMORY[0x1E6964CA8];
  v49[394] = *MEMORY[0x1E6964CB0];
  v49[395] = *MEMORY[0x1E6964400];
  v49[396] = *MEMORY[0x1E6964530];
  v49[397] = *MEMORY[0x1E69643E8];
  v49[398] = *MEMORY[0x1E6964B90];
  v50[393] = &unk_1F55B44E8;
  v50[394] = &unk_1F55B44E8;
  v50[395] = &unk_1F55B44E8;
  v50[396] = &unk_1F55B44E8;
  v50[397] = &unk_1F55B44E8;
  v50[398] = &unk_1F55B44E8;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:399];
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = rankingExtraPrefetchedAttributesArray_extraPrefetchedAttributeNames;
  rankingExtraPrefetchedAttributesArray_extraPrefetchedAttributeNames = v33;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v36 = rankingAttributeNameArray(v35);
  v37 = [v36 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v45;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v45 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v44 + 1) + 8 * i);
        v42 = [v32 objectForKeyedSubscript:{v41, v44}];
        v43 = v42;
        if (v42 && [v42 intValue] == 2)
        {
          [rankingExtraPrefetchedAttributesArray_extraPrefetchedAttributeNames addObject:v41];
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v38);
  }
}

uint64_t rankingAttributeIndexForName(void *a1)
{
  v1 = a1;
  if (rankingAttributeIndexForName_onceToken != -1)
  {
    rankingAttributeIndexForName_cold_1();
  }

  v2 = [rankingAttributeIndexForName_attributeToRankingIndexMap objectForKeyedSubscript:v1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

void __rankingAttributeIndexForName_block_invoke()
{
  v51[399] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6964440];
  v50[0] = *MEMORY[0x1E6963EA0];
  v50[1] = v0;
  v51[0] = &unk_1F55B4518;
  v51[1] = &unk_1F55B4530;
  v1 = *MEMORY[0x1E6963E60];
  v50[2] = *MEMORY[0x1E6964C48];
  v50[3] = v1;
  v51[2] = &unk_1F55B4548;
  v51[3] = &unk_1F55B4560;
  v2 = *MEMORY[0x1E6963D18];
  v50[4] = *MEMORY[0x1E6964B58];
  v50[5] = v2;
  v51[4] = &unk_1F55B4578;
  v51[5] = &unk_1F55B4590;
  v3 = *MEMORY[0x1E6963F48];
  v50[6] = *MEMORY[0x1E6963E98];
  v50[7] = v3;
  v51[6] = &unk_1F55B45A8;
  v51[7] = &unk_1F55B45C0;
  v4 = *MEMORY[0x1E6964548];
  v50[8] = *MEMORY[0x1E6964DA0];
  v50[9] = v4;
  v51[8] = &unk_1F55B45D8;
  v51[9] = &unk_1F55B45F0;
  v5 = *MEMORY[0x1E6964C88];
  v50[10] = *MEMORY[0x1E6963D40];
  v50[11] = v5;
  v51[10] = &unk_1F55B4608;
  v51[11] = &unk_1F55B4620;
  v6 = *MEMORY[0x1E6963EB0];
  v50[12] = *MEMORY[0x1E6964C28];
  v50[13] = v6;
  v51[12] = &unk_1F55B4638;
  v51[13] = &unk_1F55B4650;
  v7 = *MEMORY[0x1E6964A30];
  v50[14] = *MEMORY[0x1E6964C80];
  v50[15] = v7;
  v51[14] = &unk_1F55B4668;
  v51[15] = &unk_1F55B4680;
  v8 = *MEMORY[0x1E6964B30];
  v50[16] = *MEMORY[0x1E6964B28];
  v50[17] = v8;
  v51[16] = &unk_1F55B4698;
  v51[17] = &unk_1F55B46B0;
  v9 = *MEMORY[0x1E6963FA0];
  v50[18] = *MEMORY[0x1E6963FE8];
  v50[19] = v9;
  v51[18] = &unk_1F55B46C8;
  v51[19] = &unk_1F55B46E0;
  v10 = *MEMORY[0x1E6964C70];
  v50[20] = *MEMORY[0x1E6964600];
  v50[21] = v10;
  v51[20] = &unk_1F55B46F8;
  v51[21] = &unk_1F55B4710;
  v11 = *MEMORY[0x1E6964C08];
  v50[22] = *MEMORY[0x1E6964C78];
  v50[23] = v11;
  v51[22] = &unk_1F55B4728;
  v51[23] = &unk_1F55B4740;
  v12 = *MEMORY[0x1E6963E88];
  v50[24] = *MEMORY[0x1E6963F08];
  v50[25] = v12;
  v51[24] = &unk_1F55B4758;
  v51[25] = &unk_1F55B4770;
  v13 = *MEMORY[0x1E6963EA8];
  v50[26] = *MEMORY[0x1E6963BF8];
  v50[27] = v13;
  v51[26] = &unk_1F55B4788;
  v51[27] = &unk_1F55B47A0;
  v14 = *MEMORY[0x1E6963F98];
  v50[28] = *MEMORY[0x1E6963E30];
  v50[29] = v14;
  v51[28] = &unk_1F55B47B8;
  v51[29] = &unk_1F55B47D0;
  v15 = *MEMORY[0x1E6963F28];
  v50[30] = *MEMORY[0x1E6963BA8];
  v50[31] = v15;
  v51[30] = &unk_1F55B47E8;
  v51[31] = &unk_1F55B4800;
  v16 = *MEMORY[0x1E6963CB0];
  v50[32] = *MEMORY[0x1E6963E78];
  v50[33] = v16;
  v51[32] = &unk_1F55B4818;
  v51[33] = &unk_1F55B4830;
  v17 = *MEMORY[0x1E6963D00];
  v50[34] = *MEMORY[0x1E6964BF8];
  v50[35] = v17;
  v51[34] = &unk_1F55B4848;
  v51[35] = &unk_1F55B4860;
  v18 = *MEMORY[0x1E6963C90];
  v50[36] = *MEMORY[0x1E6964290];
  v50[37] = v18;
  v51[36] = &unk_1F55B4878;
  v51[37] = &unk_1F55B4890;
  v19 = *MEMORY[0x1E6964720];
  v50[38] = *MEMORY[0x1E6963BC8];
  v50[39] = v19;
  v51[38] = &unk_1F55B48A8;
  v51[39] = &unk_1F55B48C0;
  v20 = *MEMORY[0x1E6964B88];
  v50[40] = *MEMORY[0x1E6963FC8];
  v50[41] = v20;
  v51[40] = &unk_1F55B48D8;
  v51[41] = &unk_1F55B48F0;
  v21 = *MEMORY[0x1E6964598];
  v50[42] = *MEMORY[0x1E6964550];
  v50[43] = v21;
  v51[42] = &unk_1F55B4908;
  v51[43] = &unk_1F55B4920;
  v22 = *MEMORY[0x1E6963BC0];
  v50[44] = *MEMORY[0x1E6964B80];
  v50[45] = v22;
  v51[44] = &unk_1F55B4938;
  v51[45] = &unk_1F55B4950;
  v23 = *MEMORY[0x1E6963CF8];
  v50[46] = *MEMORY[0x1E6964AE8];
  v50[47] = v23;
  v51[46] = &unk_1F55B4968;
  v51[47] = &unk_1F55B4980;
  v24 = *MEMORY[0x1E69644B0];
  v50[48] = *MEMORY[0x1E69649E8];
  v50[49] = v24;
  v51[48] = &unk_1F55B4998;
  v51[49] = &unk_1F55B49B0;
  v25 = *MEMORY[0x1E6964320];
  v50[50] = *MEMORY[0x1E6963F88];
  v50[51] = v25;
  v51[50] = &unk_1F55B49C8;
  v51[51] = &unk_1F55B49E0;
  v26 = *MEMORY[0x1E6964348];
  v50[52] = *MEMORY[0x1E69646A8];
  v50[53] = v26;
  v51[52] = &unk_1F55B49F8;
  v51[53] = &unk_1F55B4A10;
  v27 = *MEMORY[0x1E6964990];
  v50[54] = *MEMORY[0x1E6963F50];
  v50[55] = v27;
  v51[54] = &unk_1F55B4A28;
  v51[55] = &unk_1F55B4A40;
  v28 = *MEMORY[0x1E6964340];
  v50[56] = *MEMORY[0x1E6964628];
  v50[57] = v28;
  v51[56] = &unk_1F55B4A58;
  v51[57] = &unk_1F55B4A70;
  v29 = *MEMORY[0x1E6963C08];
  v50[58] = *MEMORY[0x1E6964558];
  v50[59] = v29;
  v51[58] = &unk_1F55B4A88;
  v51[59] = &unk_1F55B4AA0;
  v30 = *MEMORY[0x1E6963C00];
  v50[60] = *MEMORY[0x1E6964C60];
  v50[61] = v30;
  v51[60] = &unk_1F55B4AB8;
  v51[61] = &unk_1F55B4AD0;
  v31 = *MEMORY[0x1E6964520];
  v50[62] = *MEMORY[0x1E6963C10];
  v50[63] = v31;
  v51[62] = &unk_1F55B4AE8;
  v51[63] = &unk_1F55B4B00;
  v50[64] = *MEMORY[0x1E6964CD0];
  v51[64] = &unk_1F55B4B18;
  v50[65] = *MEMORY[0x1E6964C58];
  v51[65] = &unk_1F55B4B30;
  v50[66] = *MEMORY[0x1E6963CE8];
  v51[66] = &unk_1F55B4B48;
  v50[67] = *MEMORY[0x1E6964980];
  v51[67] = &unk_1F55B4B60;
  v50[68] = *MEMORY[0x1E6964988];
  v51[68] = &unk_1F55B4B78;
  v50[69] = *MEMORY[0x1E6963D68];
  v51[69] = &unk_1F55B4B90;
  v50[70] = *MEMORY[0x1E6963D60];
  v51[70] = &unk_1F55B4BA8;
  v50[71] = *MEMORY[0x1E6964528];
  v51[71] = &unk_1F55B4BC0;
  v50[72] = *MEMORY[0x1E6964A20];
  v51[72] = &unk_1F55B4BD8;
  v50[73] = *MEMORY[0x1E6964630];
  v51[73] = &unk_1F55B4BF0;
  v50[74] = *MEMORY[0x1E6964488];
  v51[74] = &unk_1F55B4C08;
  v50[75] = *MEMORY[0x1E6964680];
  v51[75] = &unk_1F55B4C20;
  v50[76] = *MEMORY[0x1E6964458];
  v51[76] = &unk_1F55B4C38;
  v50[77] = *MEMORY[0x1E6964D90];
  v51[77] = &unk_1F55B4C50;
  v50[78] = *MEMORY[0x1E6964650];
  v51[78] = &unk_1F55B4C68;
  v50[79] = *MEMORY[0x1E6964930];
  v51[79] = &unk_1F55B4C80;
  v50[80] = *MEMORY[0x1E6964938];
  v51[80] = &unk_1F55B4C98;
  v50[81] = *MEMORY[0x1E6964D00];
  v51[81] = &unk_1F55B4CB0;
  v50[82] = *MEMORY[0x1E6964AF0];
  v51[82] = &unk_1F55B4CC8;
  v50[83] = *MEMORY[0x1E6964338];
  v51[83] = &unk_1F55B4CE0;
  v50[84] = *MEMORY[0x1E6964330];
  v51[84] = &unk_1F55B4CF8;
  v50[85] = *MEMORY[0x1E6963F10];
  v51[85] = &unk_1F55B4D10;
  v50[86] = *MEMORY[0x1E6964328];
  v51[86] = &unk_1F55B4D28;
  v50[87] = *MEMORY[0x1E6963E10];
  v51[87] = &unk_1F55B4D40;
  v50[88] = *MEMORY[0x1E6964A48];
  v51[88] = &unk_1F55B4D58;
  v50[89] = *MEMORY[0x1E6963FF8];
  v51[89] = &unk_1F55B4D70;
  v50[90] = *MEMORY[0x1E6963D28];
  v51[90] = &unk_1F55B4D88;
  v50[91] = *MEMORY[0x1E6964950];
  v51[91] = &unk_1F55B4DA0;
  v50[92] = *MEMORY[0x1E6963E58];
  v51[92] = &unk_1F55B4DB8;
  v50[93] = *MEMORY[0x1E6964BC8];
  v51[93] = &unk_1F55B4DD0;
  v50[94] = *MEMORY[0x1E69646F0];
  v51[94] = &unk_1F55B4DE8;
  v50[95] = *MEMORY[0x1E69646F8];
  v51[95] = &unk_1F55B4E00;
  v50[96] = *MEMORY[0x1E6964700];
  v51[96] = &unk_1F55B4E18;
  v50[97] = *MEMORY[0x1E6963E40];
  v51[97] = &unk_1F55B4E30;
  v50[98] = *MEMORY[0x1E69648B0];
  v51[98] = &unk_1F55B4E48;
  v50[99] = *MEMORY[0x1E69648B8];
  v51[99] = &unk_1F55B4E60;
  v50[100] = *MEMORY[0x1E69648D0];
  v51[100] = &unk_1F55B4E78;
  v50[101] = *MEMORY[0x1E6964C38];
  v51[101] = &unk_1F55B4E90;
  v50[102] = *MEMORY[0x1E69645D0];
  v51[102] = &unk_1F55B4EA8;
  v50[103] = *MEMORY[0x1E6964B98];
  v51[103] = &unk_1F55B4EC0;
  v50[104] = @"kMDQueryResultTextContentDistances";
  v51[104] = &unk_1F55B4ED8;
  v50[105] = *MEMORY[0x1E6964D78];
  v51[105] = &unk_1F55B4EF0;
  v50[106] = *MEMORY[0x1E6964DB0];
  v51[106] = &unk_1F55B4F08;
  v50[107] = *MEMORY[0x1E6964BB8];
  v51[107] = &unk_1F55B4F20;
  v50[108] = *MEMORY[0x1E6964DC8];
  v51[108] = &unk_1F55B4F38;
  v50[109] = *MEMORY[0x1E69649B0];
  v51[109] = &unk_1F55B4F50;
  v50[110] = *MEMORY[0x1E69649C0];
  v51[110] = &unk_1F55B4F68;
  v50[265] = *MEMORY[0x1E69641E8];
  v51[269] = &unk_1F55B5E50;
  v50[270] = *MEMORY[0x1E6964018];
  v50[269] = *MEMORY[0x1E6964020];
  v50[267] = *MEMORY[0x1E6964250];
  v50[268] = *MEMORY[0x1E6964248];
  v51[268] = &unk_1F55B5E38;
  v51[267] = &unk_1F55B5E20;
  v50[266] = *MEMORY[0x1E6964218];
  v51[266] = &unk_1F55B5E08;
  v51[265] = &unk_1F55B5DF0;
  v50[259] = *MEMORY[0x1E69641C8];
  v51[264] = &unk_1F55B5DD8;
  v51[263] = &unk_1F55B5DC0;
  v50[264] = *MEMORY[0x1E6964208];
  v50[263] = *MEMORY[0x1E69641B0];
  v50[261] = *MEMORY[0x1E6964168];
  v50[262] = *MEMORY[0x1E69641A0];
  v51[262] = &unk_1F55B5DA8;
  v51[261] = &unk_1F55B5D90;
  v50[260] = *MEMORY[0x1E69641C0];
  v51[260] = &unk_1F55B5D78;
  v51[259] = &unk_1F55B5D60;
  v50[253] = *MEMORY[0x1E6964048];
  v51[258] = &unk_1F55B5D48;
  v51[257] = &unk_1F55B5D30;
  v50[258] = *MEMORY[0x1E69641B8];
  v50[257] = *MEMORY[0x1E69640D0];
  v50[255] = *MEMORY[0x1E69640D8];
  v50[256] = *MEMORY[0x1E69640F0];
  v51[256] = &unk_1F55B5D18;
  v51[255] = &unk_1F55B5D00;
  v50[254] = *MEMORY[0x1E69640C0];
  v51[254] = &unk_1F55B5CE8;
  v51[253] = &unk_1F55B5CD0;
  v50[247] = *MEMORY[0x1E6964228];
  v51[252] = &unk_1F55B5CB8;
  v51[251] = &unk_1F55B5CA0;
  v50[252] = *MEMORY[0x1E6964068];
  v50[251] = *MEMORY[0x1E6964050];
  v50[249] = *MEMORY[0x1E6964108];
  v50[250] = *MEMORY[0x1E6964038];
  v51[250] = &unk_1F55B5C88;
  v51[249] = &unk_1F55B5C70;
  v50[248] = *MEMORY[0x1E6964080];
  v51[248] = &unk_1F55B5C58;
  v51[247] = &unk_1F55B5C40;
  v50[241] = *MEMORY[0x1E6964040];
  v51[246] = &unk_1F55B5C28;
  v51[245] = &unk_1F55B5C10;
  v50[246] = *MEMORY[0x1E6964008];
  v50[245] = *MEMORY[0x1E69640B8];
  v50[243] = *MEMORY[0x1E69640C8];
  v50[244] = *MEMORY[0x1E69640E0];
  v51[244] = &unk_1F55B5BF8;
  v51[243] = &unk_1F55B5BE0;
  v50[242] = *MEMORY[0x1E6964058];
  v51[242] = &unk_1F55B5BC8;
  v51[241] = &unk_1F55B5BB0;
  v50[235] = *MEMORY[0x1E69640B0];
  v51[240] = &unk_1F55B5B98;
  v51[239] = &unk_1F55B5B80;
  v50[240] = *MEMORY[0x1E6964110];
  v50[239] = *MEMORY[0x1E6964088];
  v50[237] = *MEMORY[0x1E69640A0];
  v50[238] = *MEMORY[0x1E69640A8];
  v51[238] = &unk_1F55B5B68;
  v51[237] = &unk_1F55B5B50;
  v50[236] = *MEMORY[0x1E6964098];
  v51[236] = &unk_1F55B5B38;
  v51[235] = &unk_1F55B5B20;
  v50[229] = *MEMORY[0x1E69646C8];
  v51[234] = &unk_1F55B5B08;
  v51[233] = &unk_1F55B5AF0;
  v50[234] = *MEMORY[0x1E6964120];
  v50[233] = *MEMORY[0x1E6964118];
  v50[231] = *MEMORY[0x1E6964D40];
  v50[232] = *MEMORY[0x1E6964278];
  v51[232] = &unk_1F55B5AD8;
  v51[231] = &unk_1F55B5AC0;
  v50[230] = *MEMORY[0x1E6964D48];
  v51[230] = &unk_1F55B5AA8;
  v51[229] = &unk_1F55B5A90;
  v50[223] = *MEMORY[0x1E69649F0];
  v51[228] = &unk_1F55B5A78;
  v51[227] = &unk_1F55B5A60;
  v50[228] = *MEMORY[0x1E69646C0];
  v50[227] = *MEMORY[0x1E69644A8];
  v50[225] = *MEMORY[0x1E6964BB0];
  v50[226] = *MEMORY[0x1E69645D8];
  v51[226] = &unk_1F55B5A48;
  v51[225] = &unk_1F55B5A30;
  v50[224] = *MEMORY[0x1E6964B40];
  v51[224] = &unk_1F55B5A18;
  v51[223] = &unk_1F55B5A00;
  v50[217] = *MEMORY[0x1E69643F0];
  v51[222] = &unk_1F55B59E8;
  v51[221] = &unk_1F55B59D0;
  v50[222] = *MEMORY[0x1E69649E0];
  v50[221] = *MEMORY[0x1E6964900];
  v50[219] = *MEMORY[0x1E69647F0];
  v50[220] = *MEMORY[0x1E69648E0];
  v51[220] = &unk_1F55B59B8;
  v51[219] = &unk_1F55B59A0;
  v50[218] = *MEMORY[0x1E6964498];
  v51[218] = &unk_1F55B5988;
  v51[217] = &unk_1F55B5970;
  v50[211] = *MEMORY[0x1E6963BE0];
  v51[216] = &unk_1F55B5958;
  v51[215] = &unk_1F55B5940;
  v50[216] = *MEMORY[0x1E6964370];
  v50[215] = *MEMORY[0x1E6964450];
  v50[213] = *MEMORY[0x1E6963ED8];
  v50[214] = *MEMORY[0x1E6963EE8];
  v51[214] = &unk_1F55B5928;
  v51[213] = &unk_1F55B5910;
  v50[212] = *MEMORY[0x1E6963E08];
  v51[212] = &unk_1F55B58F8;
  v51[211] = &unk_1F55B58E0;
  v50[205] = *MEMORY[0x1E6964608];
  v51[210] = &unk_1F55B58C8;
  v51[209] = &unk_1F55B58B0;
  v50[210] = *MEMORY[0x1E6964178];
  v50[209] = *MEMORY[0x1E6964140];
  v50[207] = *MEMORY[0x1E6964708];
  v50[208] = *MEMORY[0x1E6964718];
  v51[208] = &unk_1F55B5898;
  v51[207] = &unk_1F55B5880;
  v50[206] = *MEMORY[0x1E6964710];
  v51[206] = &unk_1F55B5868;
  v51[205] = &unk_1F55B5850;
  v50[199] = *MEMORY[0x1E6964A40];
  v51[204] = &unk_1F55B5838;
  v51[203] = &unk_1F55B5820;
  v50[204] = *MEMORY[0x1E6964610];
  v50[203] = *MEMORY[0x1E6964618];
  v50[201] = *MEMORY[0x1E69647C0];
  v50[202] = *MEMORY[0x1E6964620];
  v51[202] = &unk_1F55B5808;
  v51[201] = &unk_1F55B57F0;
  v50[200] = *MEMORY[0x1E69647B0];
  v51[200] = &unk_1F55B57D8;
  v51[199] = &unk_1F55B57C0;
  v50[193] = *MEMORY[0x1E6963F68];
  v51[198] = &unk_1F55B57A8;
  v51[197] = &unk_1F55B5790;
  v50[198] = *MEMORY[0x1E6964A38];
  v50[197] = *MEMORY[0x1E6963E28];
  v50[195] = *MEMORY[0x1E6964C68];
  v50[196] = *MEMORY[0x1E6964410];
  v51[196] = &unk_1F55B5778;
  v51[195] = &unk_1F55B5760;
  v50[194] = *MEMORY[0x1E6963F58];
  v51[194] = &unk_1F55B5748;
  v51[193] = &unk_1F55B5730;
  v50[187] = *MEMORY[0x1E6964850];
  v51[192] = &unk_1F55B5718;
  v51[191] = &unk_1F55B5700;
  v50[192] = *MEMORY[0x1E6963F60];
  v50[191] = *MEMORY[0x1E6963F70];
  v50[189] = *MEMORY[0x1E6963F78];
  v50[190] = *MEMORY[0x1E6963F80];
  v51[190] = &unk_1F55B56E8;
  v51[189] = &unk_1F55B56D0;
  v50[188] = *MEMORY[0x1E6964868];
  v51[188] = &unk_1F55B56B8;
  v51[187] = &unk_1F55B56A0;
  v50[181] = *MEMORY[0x1E6963D20];
  v51[186] = &unk_1F55B5688;
  v51[185] = &unk_1F55B5670;
  v50[186] = *MEMORY[0x1E6964810];
  v50[185] = *MEMORY[0x1E6964860];
  v50[183] = *MEMORY[0x1E6963D58];
  v50[184] = *MEMORY[0x1E6964830];
  v51[184] = &unk_1F55B5658;
  v51[183] = &unk_1F55B5640;
  v50[182] = *MEMORY[0x1E6964C00];
  v51[182] = &unk_1F55B5628;
  v51[181] = &unk_1F55B5610;
  v50[175] = *MEMORY[0x1E6964AC0];
  v51[180] = &unk_1F55B55F8;
  v51[179] = &unk_1F55B55E0;
  v50[180] = *MEMORY[0x1E6964500];
  v50[179] = *MEMORY[0x1E6964BE8];
  v50[177] = *MEMORY[0x1E6964770];
  v50[178] = *MEMORY[0x1E6964BE0];
  v51[178] = &unk_1F55B55C8;
  v51[177] = &unk_1F55B55B0;
  v50[176] = *MEMORY[0x1E6964AF8];
  v51[176] = &unk_1F55B5598;
  v32 = *MEMORY[0x1E69649D0];
  v51[175] = &unk_1F55B5580;
  v50[111] = v32;
  v51[174] = &unk_1F55B5568;
  v51[172] = &unk_1F55B5538;
  v51[173] = &unk_1F55B5550;
  v50[174] = *MEMORY[0x1E6964A88];
  v50[173] = *MEMORY[0x1E6964AC8];
  v50[172] = *MEMORY[0x1E6964AD0];
  v51[111] = &unk_1F55B4F80;
  v50[171] = *MEMORY[0x1E6964AB8];
  v51[171] = &unk_1F55B5520;
  v33 = *MEMORY[0x1E69649B8];
  v51[170] = &unk_1F55B5508;
  v50[112] = v33;
  v51[169] = &unk_1F55B54F0;
  v50[170] = *MEMORY[0x1E6964A78];
  v50[169] = *MEMORY[0x1E6964AA0];
  v51[112] = &unk_1F55B4F98;
  v50[168] = *MEMORY[0x1E6964A80];
  v51[168] = &unk_1F55B54D8;
  v34 = *MEMORY[0x1E69649C8];
  v51[167] = &unk_1F55B54C0;
  v50[113] = v34;
  v51[166] = &unk_1F55B54A8;
  v50[167] = *MEMORY[0x1E6964AB0];
  v50[166] = *MEMORY[0x1E6964AA8];
  v51[113] = &unk_1F55B4FB0;
  v50[165] = *MEMORY[0x1E6964A98];
  v51[165] = &unk_1F55B5490;
  v35 = *MEMORY[0x1E69649D8];
  v51[164] = &unk_1F55B5478;
  v50[114] = v35;
  v51[163] = &unk_1F55B5460;
  v50[164] = *MEMORY[0x1E6964A70];
  v50[163] = *MEMORY[0x1E6964A90];
  v51[114] = &unk_1F55B4FC8;
  v50[162] = *MEMORY[0x1E6964818];
  v51[162] = &unk_1F55B5448;
  v36 = *MEMORY[0x1E6964998];
  v51[161] = &unk_1F55B5430;
  v50[115] = v36;
  v51[160] = &unk_1F55B5418;
  v50[161] = *MEMORY[0x1E6964DB8];
  v50[160] = *MEMORY[0x1E6964928];
  v51[115] = &unk_1F55B4FE0;
  v50[159] = *MEMORY[0x1E6963CA0];
  v51[159] = &unk_1F55B5400;
  v37 = *MEMORY[0x1E69649A0];
  v51[158] = &unk_1F55B53E8;
  v50[116] = v37;
  v51[157] = &unk_1F55B53D0;
  v50[158] = *MEMORY[0x1E6963CA8];
  v50[157] = *MEMORY[0x1E6963E48];
  v51[116] = &unk_1F55B4FF8;
  v50[156] = *MEMORY[0x1E6964B60];
  v51[156] = &unk_1F55B53B8;
  v38 = *MEMORY[0x1E69649A8];
  v51[155] = &unk_1F55B53A0;
  v50[117] = v38;
  v51[154] = &unk_1F55B5388;
  v50[155] = *MEMORY[0x1E6963C88];
  v50[154] = *MEMORY[0x1E6963C60];
  v51[117] = &unk_1F55B5010;
  v50[153] = *MEMORY[0x1E6963C70];
  v51[153] = &unk_1F55B5370;
  v39 = *MEMORY[0x1E69648A0];
  v51[152] = &unk_1F55B5358;
  v50[118] = v39;
  v51[151] = &unk_1F55B5340;
  v50[152] = *MEMORY[0x1E6963CF0];
  v50[151] = *MEMORY[0x1E6963C68];
  v51[118] = &unk_1F55B5028;
  v50[150] = *MEMORY[0x1E6964A28];
  v51[150] = &unk_1F55B5328;
  v40 = *MEMORY[0x1E69644E0];
  v51[149] = &unk_1F55B5310;
  v50[119] = v40;
  v51[148] = &unk_1F55B52F8;
  v50[149] = *MEMORY[0x1E6964D60];
  v50[148] = *MEMORY[0x1E69648C8];
  v51[119] = &unk_1F55B5040;
  v50[147] = *MEMORY[0x1E69648C0];
  v51[147] = &unk_1F55B52E0;
  v41 = *MEMORY[0x1E6964408];
  v51[146] = &unk_1F55B52C8;
  v50[120] = v41;
  v51[145] = &unk_1F55B52B0;
  v50[146] = *MEMORY[0x1E6963BF0];
  v50[145] = *MEMORY[0x1E6963EF0];
  v51[120] = &unk_1F55B5058;
  v50[144] = *MEMORY[0x1E6963BB8];
  v51[144] = &unk_1F55B5298;
  v42 = *MEMORY[0x1E6964798];
  v51[143] = &unk_1F55B5280;
  v50[121] = v42;
  v51[142] = &unk_1F55B5268;
  v50[143] = *MEMORY[0x1E6963BB0];
  v50[142] = *MEMORY[0x1E6964820];
  v51[121] = &unk_1F55B5070;
  v50[141] = *MEMORY[0x1E6964768];
  v51[141] = &unk_1F55B5250;
  v43 = *MEMORY[0x1E69647E8];
  v51[140] = &unk_1F55B5238;
  v50[122] = v43;
  v51[139] = &unk_1F55B5220;
  v50[140] = *MEMORY[0x1E6964880];
  v50[139] = *MEMORY[0x1E69647B8];
  v51[122] = &unk_1F55B5088;
  v50[138] = *MEMORY[0x1E69647A8];
  v51[138] = &unk_1F55B5208;
  v44 = *MEMORY[0x1E6964750];
  v51[137] = &unk_1F55B51F0;
  v50[123] = v44;
  v51[136] = &unk_1F55B51D8;
  v50[137] = *MEMORY[0x1E69647C8];
  v50[136] = *MEMORY[0x1E69647A0];
  v51[123] = &unk_1F55B50A0;
  v50[135] = *MEMORY[0x1E6964878];
  v51[135] = &unk_1F55B51C0;
  v45 = *MEMORY[0x1E6964748];
  v51[134] = &unk_1F55B51A8;
  v50[124] = v45;
  v51[133] = &unk_1F55B5190;
  v50[134] = *MEMORY[0x1E6964858];
  v50[133] = *MEMORY[0x1E6964838];
  v51[124] = &unk_1F55B50B8;
  v50[132] = *MEMORY[0x1E6964870];
  v51[132] = &unk_1F55B5178;
  v46 = *MEMORY[0x1E69647E0];
  v51[131] = &unk_1F55B5160;
  v50[125] = v46;
  v51[130] = &unk_1F55B5148;
  v50[131] = *MEMORY[0x1E6964840];
  v50[130] = *MEMORY[0x1E6964848];
  v51[125] = &unk_1F55B50D0;
  v50[129] = *MEMORY[0x1E6964800];
  v51[129] = &unk_1F55B5130;
  v47 = *MEMORY[0x1E6964780];
  v51[128] = &unk_1F55B5118;
  v50[126] = v47;
  v51[127] = &unk_1F55B5100;
  v50[128] = *MEMORY[0x1E6964788];
  v50[127] = *MEMORY[0x1E6964778];
  v51[126] = &unk_1F55B50E8;
  v51[270] = &unk_1F55B5E68;
  v50[271] = *MEMORY[0x1E69645A8];
  v51[271] = &unk_1F55B5E80;
  v50[272] = *MEMORY[0x1E6963C28];
  v51[272] = &unk_1F55B5E98;
  v50[273] = *MEMORY[0x1E6963C40];
  v51[273] = &unk_1F55B5EB0;
  v50[274] = *MEMORY[0x1E6963C38];
  v51[274] = &unk_1F55B5EC8;
  v50[275] = *MEMORY[0x1E6963C30];
  v51[275] = &unk_1F55B5EE0;
  v50[276] = *MEMORY[0x1E6964AD8];
  v51[276] = &unk_1F55B5EF8;
  v50[277] = *MEMORY[0x1E6964BA8];
  v51[277] = &unk_1F55B5F10;
  v50[278] = *MEMORY[0x1E6964908];
  v51[278] = &unk_1F55B5F28;
  v50[279] = *MEMORY[0x1E69641E0];
  v51[279] = &unk_1F55B5F40;
  v50[280] = *MEMORY[0x1E69642C0];
  v51[280] = &unk_1F55B5F58;
  v50[281] = *MEMORY[0x1E6964260];
  v51[281] = &unk_1F55B5F70;
  v50[282] = *MEMORY[0x1E6964268];
  v51[282] = &unk_1F55B5F88;
  v50[283] = *MEMORY[0x1E6964288];
  v51[283] = &unk_1F55B5FA0;
  v50[284] = *MEMORY[0x1E6963DE8];
  v51[284] = &unk_1F55B5FB8;
  v50[285] = *MEMORY[0x1E6963DF0];
  v51[285] = &unk_1F55B5FD0;
  v50[286] = *MEMORY[0x1E6963D78];
  v51[286] = &unk_1F55B5FE8;
  v50[287] = *MEMORY[0x1E6963E50];
  v51[287] = &unk_1F55B6000;
  v50[288] = *MEMORY[0x1E6964580];
  v51[288] = &unk_1F55B6018;
  v50[289] = *MEMORY[0x1E6964578];
  v51[289] = &unk_1F55B6030;
  v50[290] = *MEMORY[0x1E6964570];
  v51[290] = &unk_1F55B6048;
  v50[291] = *MEMORY[0x1E6964B38];
  v51[291] = &unk_1F55B6060;
  v50[292] = *MEMORY[0x1E6963FF0];
  v51[292] = &unk_1F55B6078;
  v50[293] = *MEMORY[0x1E6964C10];
  v51[293] = &unk_1F55B6090;
  v50[294] = *MEMORY[0x1E6964230];
  v51[294] = &unk_1F55B60A8;
  v50[295] = *MEMORY[0x1E6963F30];
  v51[295] = &unk_1F55B60C0;
  v50[296] = *MEMORY[0x1E6964090];
  v51[296] = &unk_1F55B60D8;
  v50[297] = *MEMORY[0x1E69641F8];
  v51[297] = &unk_1F55B60F0;
  v50[298] = *MEMORY[0x1E6964010];
  v51[298] = &unk_1F55B6108;
  v50[299] = *MEMORY[0x1E6964220];
  v51[299] = &unk_1F55B6120;
  v50[300] = *MEMORY[0x1E69641F0];
  v51[300] = &unk_1F55B6138;
  v50[301] = *MEMORY[0x1E6964200];
  v51[301] = &unk_1F55B6150;
  v50[302] = *MEMORY[0x1E6964270];
  v51[302] = &unk_1F55B6168;
  v50[303] = *MEMORY[0x1E6964280];
  v51[303] = &unk_1F55B6180;
  v50[304] = *MEMORY[0x1E6964258];
  v51[304] = &unk_1F55B6198;
  v50[305] = *MEMORY[0x1E6964028];
  v51[305] = &unk_1F55B61B0;
  v50[306] = *MEMORY[0x1E6964588];
  v51[306] = &unk_1F55B61C8;
  v50[307] = *MEMORY[0x1E6963D30];
  v51[307] = &unk_1F55B61E0;
  v50[308] = *MEMORY[0x1E6963BE8];
  v51[308] = &unk_1F55B61F8;
  v50[309] = *MEMORY[0x1E6963D50];
  v51[309] = &unk_1F55B6210;
  v50[310] = *MEMORY[0x1E6963DD0];
  v51[310] = &unk_1F55B6228;
  v50[311] = *MEMORY[0x1E6963DF8];
  v51[311] = &unk_1F55B6240;
  v50[312] = *MEMORY[0x1E6963DC0];
  v51[312] = &unk_1F55B6258;
  v50[313] = *MEMORY[0x1E6963DA0];
  v51[313] = &unk_1F55B6270;
  v50[314] = *MEMORY[0x1E6963DB0];
  v51[314] = &unk_1F55B6288;
  v50[315] = *MEMORY[0x1E6963D90];
  v51[315] = &unk_1F55B62A0;
  v50[316] = *MEMORY[0x1E6963DB8];
  v51[316] = &unk_1F55B62B8;
  v50[317] = *MEMORY[0x1E6963DD8];
  v51[317] = &unk_1F55B62D0;
  v50[318] = *MEMORY[0x1E6963D88];
  v51[318] = &unk_1F55B62E8;
  v50[319] = *MEMORY[0x1E6963D80];
  v51[319] = &unk_1F55B6300;
  v50[320] = *MEMORY[0x1E6963ED0];
  v51[320] = &unk_1F55B6318;
  v50[321] = *MEMORY[0x1E6963EC8];
  v51[321] = &unk_1F55B6330;
  v50[322] = *MEMORY[0x1E6963EF8];
  v51[322] = &unk_1F55B6348;
  v50[323] = *MEMORY[0x1E6964000];
  v51[323] = &unk_1F55B6360;
  v50[324] = *MEMORY[0x1E69648A8];
  v51[324] = &unk_1F55B6378;
  v50[325] = *MEMORY[0x1E6964C40];
  v51[325] = &unk_1F55B6390;
  v50[326] = *MEMORY[0x1E6964A00];
  v51[326] = &unk_1F55B63A8;
  v50[327] = *MEMORY[0x1E69642D8];
  v51[327] = &unk_1F55B63C0;
  v50[328] = *MEMORY[0x1E69642F8];
  v51[328] = &unk_1F55B63D8;
  v50[329] = *MEMORY[0x1E69642E0];
  v51[329] = &unk_1F55B63F0;
  v50[330] = *MEMORY[0x1E6964308];
  v51[330] = &unk_1F55B6408;
  v50[331] = *MEMORY[0x1E6964300];
  v51[331] = &unk_1F55B6420;
  v50[332] = *MEMORY[0x1E69642C8];
  v51[332] = &unk_1F55B6438;
  v50[333] = *MEMORY[0x1E69642E8];
  v51[333] = &unk_1F55B6450;
  v50[334] = *MEMORY[0x1E69642F0];
  v51[334] = &unk_1F55B6468;
  v50[335] = *MEMORY[0x1E69642D0];
  v51[335] = &unk_1F55B6480;
  v50[336] = *MEMORY[0x1E6964310];
  v51[336] = &unk_1F55B6498;
  v50[337] = *MEMORY[0x1E6964210];
  v51[337] = &unk_1F55B64B0;
  v50[338] = *MEMORY[0x1E69646B8];
  v51[338] = &unk_1F55B64C8;
  v50[339] = *MEMORY[0x1E69646D8];
  v51[339] = &unk_1F55B64E0;
  v50[340] = *MEMORY[0x1E69646D0];
  v51[340] = &unk_1F55B64F8;
  v50[341] = *MEMORY[0x1E6964BF0];
  v51[341] = &unk_1F55B6510;
  v50[342] = *MEMORY[0x1E6963C48];
  v51[342] = &unk_1F55B6528;
  v50[343] = *MEMORY[0x1E69644B8];
  v51[343] = &unk_1F55B6540;
  v50[344] = *MEMORY[0x1E6964D70];
  v51[344] = &unk_1F55B6558;
  v50[345] = *MEMORY[0x1E6964D68];
  v51[345] = &unk_1F55B6570;
  v50[346] = *MEMORY[0x1E6963F00];
  v51[346] = &unk_1F55B6588;
  v50[347] = *MEMORY[0x1E69649F8];
  v51[347] = &unk_1F55B65A0;
  v50[348] = *MEMORY[0x1E6963E38];
  v51[348] = &unk_1F55B65B8;
  v50[349] = *MEMORY[0x1E6964490];
  v51[349] = &unk_1F55B65D0;
  v50[350] = *MEMORY[0x1E69643E0];
  v51[350] = &unk_1F55B65E8;
  v50[351] = *MEMORY[0x1E69645F8];
  v51[351] = &unk_1F55B6600;
  v50[352] = *MEMORY[0x1E6964960];
  v51[352] = &unk_1F55B6618;
  v50[353] = *MEMORY[0x1E6964970];
  v51[353] = &unk_1F55B6630;
  v50[354] = *MEMORY[0x1E6964968];
  v51[354] = &unk_1F55B6648;
  v50[355] = *MEMORY[0x1E6964978];
  v51[355] = &unk_1F55B6660;
  v50[356] = *MEMORY[0x1E6964468];
  v51[356] = &unk_1F55B6678;
  v50[357] = *MEMORY[0x1E6964660];
  v51[357] = &unk_1F55B6690;
  v50[358] = *MEMORY[0x1E6963E90];
  v51[358] = &unk_1F55B66A8;
  v50[359] = *MEMORY[0x1E6964CA0];
  v51[359] = &unk_1F55B66C0;
  v50[360] = *MEMORY[0x1E6964C90];
  v51[360] = &unk_1F55B66D8;
  v50[361] = *MEMORY[0x1E6964C98];
  v51[361] = &unk_1F55B66F0;
  v50[362] = *MEMORY[0x1E6964958];
  v51[362] = &unk_1F55B6708;
  v50[363] = *MEMORY[0x1E6964A18];
  v51[363] = &unk_1F55B6720;
  v50[364] = *MEMORY[0x1E6963C50];
  v51[364] = &unk_1F55B6738;
  v50[365] = *MEMORY[0x1E6964D10];
  v51[365] = &unk_1F55B6750;
  v50[366] = *MEMORY[0x1E6964D08];
  v51[366] = &unk_1F55B6768;
  v50[367] = *MEMORY[0x1E69645B0];
  v51[367] = &unk_1F55B6780;
  v50[368] = *MEMORY[0x1E6964D20];
  v51[368] = &unk_1F55B6798;
  v50[369] = *MEMORY[0x1E6964D50];
  v51[369] = &unk_1F55B67B0;
  v50[370] = *MEMORY[0x1E6964D58];
  v51[370] = &unk_1F55B67C8;
  v50[371] = *MEMORY[0x1E6964A10];
  v51[371] = &unk_1F55B67E0;
  v50[372] = *MEMORY[0x1E6963C98];
  v51[372] = &unk_1F55B67F8;
  v50[373] = *MEMORY[0x1E69648E8];
  v51[373] = &unk_1F55B6810;
  v50[374] = *MEMORY[0x1E6963BD0];
  v51[374] = &unk_1F55B6828;
  v50[375] = *MEMORY[0x1E6964420];
  v51[375] = &unk_1F55B6840;
  v50[376] = *MEMORY[0x1E6964CF8];
  v51[376] = &unk_1F55B6858;
  v50[377] = *MEMORY[0x1E6964D38];
  v51[377] = &unk_1F55B6870;
  v50[378] = *MEMORY[0x1E6964D30];
  v51[378] = &unk_1F55B6888;
  v50[379] = *MEMORY[0x1E6964D28];
  v51[379] = &unk_1F55B68A0;
  v50[380] = *MEMORY[0x1E6964DD0];
  v51[380] = &unk_1F55B68B8;
  v50[381] = *MEMORY[0x1E6964478];
  v51[381] = &unk_1F55B68D0;
  v50[382] = *MEMORY[0x1E6964670];
  v51[382] = &unk_1F55B68E8;
  v50[383] = *MEMORY[0x1E6964480];
  v51[383] = &unk_1F55B6900;
  v50[384] = *MEMORY[0x1E6964678];
  v51[384] = &unk_1F55B6918;
  v50[385] = *MEMORY[0x1E6964460];
  v51[385] = &unk_1F55B6930;
  v50[386] = *MEMORY[0x1E6964658];
  v51[386] = &unk_1F55B6948;
  v50[387] = *MEMORY[0x1E6964470];
  v51[387] = &unk_1F55B6960;
  v50[388] = *MEMORY[0x1E6964668];
  v51[388] = &unk_1F55B6978;
  v50[389] = *MEMORY[0x1E6964CB8];
  v51[389] = &unk_1F55B6990;
  v50[390] = *MEMORY[0x1E6963F18];
  v51[390] = &unk_1F55B69A8;
  v50[391] = *MEMORY[0x1E6963E80];
  v51[391] = &unk_1F55B69C0;
  v50[392] = *MEMORY[0x1E6964BC0];
  v51[392] = &unk_1F55B69D8;
  v50[393] = *MEMORY[0x1E6964CA8];
  v51[393] = &unk_1F55B69F0;
  v50[394] = *MEMORY[0x1E6964CB0];
  v51[394] = &unk_1F55B6A08;
  v50[395] = *MEMORY[0x1E6964400];
  v51[395] = &unk_1F55B6A20;
  v50[396] = *MEMORY[0x1E6964530];
  v51[396] = &unk_1F55B6A38;
  v50[397] = *MEMORY[0x1E69643E8];
  v51[397] = &unk_1F55B6A50;
  v50[398] = *MEMORY[0x1E6964B90];
  v51[398] = &unk_1F55B6A68;
  v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:399];
  v49 = rankingAttributeIndexForName_attributeToRankingIndexMap;
  rankingAttributeIndexForName_attributeToRankingIndexMap = v48;
}

void *SSCompactRankingAttrsAlloc(uint64_t a1)
{
  result = malloc_type_calloc(1uLL, 8 * a1 + 176, 0x1000040C3A7E6FCuLL);
  *result = -1;
  return result;
}

void SSCompactRankingAttrsDealloc(char *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = 0;
  v3 = a1 + 8;
  v4 = a1 + 64;
  v5 = a1 + 176;
  v14 = a1 + 120;
  do
  {
    v6 = 1 << v2;
    if (v2 < 0x40)
    {
      v7 = *v3;
      if ((*v3 & v6) == 0)
      {
        goto LABEL_25;
      }

      v8 = 0;
      v9 = 0;
      goto LABEL_20;
    }

    if (v2 < 0x180)
    {
      v8 = 5;
    }

    else
    {
      v8 = 6;
    }

    if (v2 < 0x140)
    {
      v8 = 4;
    }

    if (v2 < 0x100)
    {
      v8 = 3;
    }

    if (v2 < 0xC0)
    {
      v8 = 2;
    }

    if (v2 < 0x80)
    {
      v8 = 1;
    }

    v7 = *&v3[8 * v8];
    if ((v7 & v6) != 0)
    {
      v10 = 0;
      v9 = 0;
      do
      {
        v11 = vcnt_s8(*&v3[8 * v10]);
        v11.i16[0] = vaddlv_u8(v11);
        v9 += v11.u32[0];
        ++v10;
      }

      while (v8 != v10);
LABEL_20:
      v12 = vcnt_s8((v7 & (v6 - 1)));
      v12.i16[0] = vaddlv_u8(v12);
      v13 = v12.u32[0] + v9;
      if (v13 >= 0)
      {
        if ((*&v4[8 * v8] & v6) != 0)
        {
          free(*&v5[8 * v13]);
        }

        else if ((*&v14[8 * v8] & v6) != 0)
        {
          CFRelease(*&v5[8 * v13]);
        }
      }
    }

LABEL_25:
    ++v2;
  }

  while (v2 != 448);

  free(a1);
}

char *SSCompactRankingAttrsCopy(char *result)
{
  if (result)
  {
    v1 = result;
    v2 = vcnt_s8(*(result + 40));
    v2.i16[0] = vaddlv_u8(v2);
    v3 = 8 * (vaddvq_s64(vpadalq_u32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(result + 8))))), vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(result + 24)))))) + v2.u32[0] + vaddvq_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(result + 3)))))));
    v4 = malloc_type_calloc(1uLL, v3 + 176, 0x1000040C3A7E6FCuLL);
    *v4 = -1;
    v5 = v4 + 22;
    memcpy(v4, v1, v3 + 176);
    v6 = 0;
    v31 = v4;
    v7 = v4 + 1;
    v8 = v1 + 64;
    v9 = v1 + 176;
    v10 = v1 + 120;
    v32 = v10;
    while (1)
    {
      v11 = 1 << v6;
      if (v6 >= 0x40)
      {
        break;
      }

      v12 = *v7;
      if ((*v7 & v11) != 0)
      {
        v13 = 0;
        v14 = 0;
LABEL_20:
        v17 = vcnt_s8((v12 & (v11 - 1)));
        v17.i16[0] = vaddlv_u8(v17);
        v18 = v17.u32[0] + v14;
        if (v18 >= 0)
        {
          if ((*&v8[8 * v13] & v11) != 0)
          {
            v19 = _SpotlightDefineRankingTypes_[v6];
            if (v19 != 16)
            {
              if (v19 == 32)
              {
                v24 = *&v9[8 * v18];
                v25 = *v24;
                v26 = 8 * *v24;
                v27 = v8;
                v28 = v9;
                v29 = v5;
                v30 = malloc_type_malloc(v26 + 8, 0x100004000313F17uLL);
                *v30 = v25;
                v10 = v32;
                memcpy(v30 + 1, v24 + 1, v26);
                v29[v18] = v30;
                v5 = v29;
                v9 = v28;
                v8 = v27;
              }

              else
              {
                if (v19 != 64)
                {
                  SSCompactRankingAttrsCopy_cold_1();
                }

                v20 = *&v9[8 * v18];
                v21 = *v20;
                v22 = v20[1];
                v23 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
                *v23 = v21;
                v23[1] = v22;
                v5[v18] = v23;
              }
            }
          }

          else if ((*&v10[8 * v13] & v11) != 0)
          {
            CFRetain(*&v9[8 * v18]);
          }
        }
      }

LABEL_29:
      if (++v6 == 448)
      {
        return v31;
      }
    }

    if (v6 < 0x180)
    {
      v13 = 5;
    }

    else
    {
      v13 = 6;
    }

    if (v6 < 0x140)
    {
      v13 = 4;
    }

    if (v6 < 0x100)
    {
      v13 = 3;
    }

    if (v6 < 0xC0)
    {
      v13 = 2;
    }

    if (v6 < 0x80)
    {
      v13 = 1;
    }

    v12 = v7[v13];
    if ((v12 & v11) == 0)
    {
      goto LABEL_29;
    }

    v15 = 0;
    v14 = 0;
    do
    {
      v16 = vcnt_s8(v7[v15]);
      v16.i16[0] = vaddlv_u8(v16);
      v14 += v16.u32[0];
      ++v15;
    }

    while (v13 != v15);
    goto LABEL_20;
  }

  return result;
}

uint64_t SSCompactRankingAttrsAddFloat(int8x8_t *a1, unint64_t a2, float a3)
{
  if ((_SpotlightDefineRankingTypes_[a2] & 0x10) == 0)
  {
    SSCompactRankingAttrsAddFloat_cold_1();
  }

  result = _SSCompactRankingAttrsDataIndexForInsert(a1, a2, 0, 0);
  if (result != -1)
  {
    *a1[result + 22].i32 = a3;
  }

  return result;
}

uint64_t SSCompactRankingAttrsAddInt64Array(int8x8_t *a1, unint64_t a2, const void *a3, uint64_t a4)
{
  if ((_SpotlightDefineRankingTypes_[a2] & 0x20) == 0)
  {
    SSCompactRankingAttrsAddInt64Array_cold_2();
  }

  return SSCompactRankingAttrsAddInt64Array_cold_1(a4, a3, a1, a2);
}

void SSCompactRankingAttrsAddInt64ArrayFromNSArray(int8x8_t *a1, unint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((_SpotlightDefineRankingTypes_[a2] & 0x20) == 0)
  {
    SSCompactRankingAttrsAddInt64ArrayFromNSArray_cold_1();
  }

  v6 = v5;
  v7 = objc_msgSend_count(v5);
  v8 = malloc_type_malloc(8 * v7 + 8, 0x100004000313F17uLL);
  *v8 = v7;
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
    LODWORD(v13) = 1;
    do
    {
      v14 = 0;
      v13 = v13;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v8[v13++] = [*(*(&v16 + 1) + 8 * v14++) integerValue];
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = _SSCompactRankingAttrsDataIndexForInsert(a1, a2, 1, 0);
  if (v15 != -1)
  {
    a1[v15 + 22] = v8;
  }
}

uint64_t SSCompactRankingAttrsAddInt128(int8x8_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((_SpotlightDefineRankingTypes_[a2] & 0x40) == 0)
  {
    SSCompactRankingAttrsAddInt128_cold_2();
  }

  return SSCompactRankingAttrsAddInt128_cold_1(a3, a4, a1, a2);
}

int8x8_t *SSCompactRankingAttrsUpdateFloat(int8x8_t *result, unint64_t a2, float a3)
{
  if ((_SpotlightDefineRankingTypes_[a2] & 0x10) == 0)
  {
    SSCompactRankingAttrsUpdateFloat_cold_1();
  }

  if (result)
  {
    v3 = 1 << a2;
    if (a2 < 64)
    {
      v4 = result[1];
      if ((*&v4 & v3) == 0)
      {
        return result;
      }

      v5 = 0;
      goto LABEL_20;
    }

    v6 = 2;
    v7 = 3;
    v8 = 4;
    v9 = 5;
    if (a2 >= 0x180)
    {
      v9 = 6;
    }

    if (a2 >= 0x140)
    {
      v8 = v9;
    }

    if (a2 >= 0x100)
    {
      v7 = v8;
    }

    if (a2 >= 0xC0)
    {
      v6 = v7;
    }

    if (a2 >= 0x80)
    {
      v10 = v6;
    }

    else
    {
      v10 = 1;
    }

    v11 = result + 1;
    v4 = result[v10 + 1];
    if ((*&v4 & v3) != 0)
    {
      v5 = 0;
      do
      {
        v12 = *v11++;
        v13 = vcnt_s8(v12);
        v13.i16[0] = vaddlv_u8(v13);
        v5 += v13.u32[0];
        --v10;
      }

      while (v10);
LABEL_20:
      v14 = vcnt_s8((*&v4 & (v3 - 1)));
      v14.i16[0] = vaddlv_u8(v14);
      v15 = v14.u32[0] + v5;
      if (v15 != -1)
      {
        *result[v15 + 22].i32 = a3;
      }
    }
  }

  return result;
}

void SSCompactRankingAttrsUpdateInt64Array(int8x8_t *a1, unint64_t a2, const void *a3, int a4)
{
  if ((_SpotlightDefineRankingTypes_[a2] & 0x20) == 0)
  {
    SSCompactRankingAttrsUpdateInt64Array_cold_1();
  }

  if (a1)
  {
    v7 = 1 << a2;
    if (a2 < 64)
    {
      v8 = a1[1];
      if ((*&v8 & v7) == 0)
      {
        return;
      }

      v9 = 0;
      goto LABEL_20;
    }

    v10 = 2;
    v11 = 3;
    v12 = 4;
    v13 = 5;
    if (a2 >= 0x180)
    {
      v13 = 6;
    }

    if (a2 >= 0x140)
    {
      v12 = v13;
    }

    if (a2 >= 0x100)
    {
      v11 = v12;
    }

    if (a2 >= 0xC0)
    {
      v10 = v11;
    }

    if (a2 >= 0x80)
    {
      v14 = v10;
    }

    else
    {
      v14 = 1;
    }

    v15 = a1 + 1;
    v8 = a1[v14 + 1];
    if ((*&v8 & v7) != 0)
    {
      v9 = 0;
      do
      {
        v16 = *v15++;
        v17 = vcnt_s8(v16);
        v17.i16[0] = vaddlv_u8(v17);
        v9 += v17.u32[0];
        --v14;
      }

      while (v14);
LABEL_20:
      v18 = vcnt_s8((*&v8 & (v7 - 1)));
      v18.i16[0] = vaddlv_u8(v18);
      v19 = v18.u32[0] + v9;
      if (v19 != -1)
      {
        v20 = malloc_type_malloc(8 * a4 + 8, 0x100004000313F17uLL);
        *v20 = a4;
        memcpy(v20 + 1, a3, 8 * a4);
        v21 = &a1[v19];
        free(*&v21[22]);
        v21[22] = v20;
      }
    }
  }
}

void SSCompactRankingAttrsUpdateInt64ArrayFromNSArray(int8x8_t *a1, unint64_t a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((_SpotlightDefineRankingTypes_[a2] & 0x20) == 0)
  {
    SSCompactRankingAttrsUpdateInt64ArrayFromNSArray_cold_1();
  }

  v6 = v5;
  if (a1)
  {
    v7 = 1 << a2;
    if (a2 < 64)
    {
      v8 = a1[1];
      if ((*&v8 & v7) == 0)
      {
        goto LABEL_29;
      }

      v9 = 0;
      goto LABEL_20;
    }

    v10 = 2;
    v11 = 3;
    v12 = 4;
    v13 = 5;
    if (a2 >= 0x180)
    {
      v13 = 6;
    }

    if (a2 >= 0x140)
    {
      v12 = v13;
    }

    if (a2 >= 0x100)
    {
      v11 = v12;
    }

    if (a2 >= 0xC0)
    {
      v10 = v11;
    }

    if (a2 >= 0x80)
    {
      v14 = v10;
    }

    else
    {
      v14 = 1;
    }

    v15 = a1 + 1;
    v8 = a1[v14 + 1];
    if ((*&v8 & v7) != 0)
    {
      v9 = 0;
      do
      {
        v16 = *v15++;
        v17 = vcnt_s8(v16);
        v17.i16[0] = vaddlv_u8(v17);
        v9 += v17.u32[0];
        --v14;
      }

      while (v14);
LABEL_20:
      v18 = vcnt_s8((*&v8 & (v7 - 1)));
      v18.i16[0] = vaddlv_u8(v18);
      v19 = v18.u32[0] + v9;
      if (v19 != -1)
      {
        v20 = objc_msgSend_count(v5);
        v21 = malloc_type_malloc(8 * v20 + 8, 0x100004000313F17uLL);
        *v21 = v20;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v22 = v6;
        v23 = [v22 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v30;
          LODWORD(v26) = 1;
          do
          {
            v27 = 0;
            v26 = v26;
            do
            {
              if (*v30 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v21[v26++] = [*(*(&v29 + 1) + 8 * v27++) integerValue];
            }

            while (v24 != v27);
            v24 = [v22 countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v24);
        }

        v28 = &a1[v19];
        free(*&v28[22]);
        v28[22] = v21;
      }
    }
  }

LABEL_29:
}

void SSCompactRankingAttrsUpdateInt128(int8x8_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((_SpotlightDefineRankingTypes_[a2] & 0x40) == 0)
  {
    SSCompactRankingAttrsUpdateInt128_cold_1();
  }

  if (a1)
  {
    v7 = 1 << a2;
    if (a2 < 64)
    {
      v8 = a1[1];
      if ((*&v8 & v7) == 0)
      {
        return;
      }

      v9 = 0;
      goto LABEL_20;
    }

    v10 = 2;
    v11 = 3;
    v12 = 4;
    v13 = 5;
    if (a2 >= 0x180)
    {
      v13 = 6;
    }

    if (a2 >= 0x140)
    {
      v12 = v13;
    }

    if (a2 >= 0x100)
    {
      v11 = v12;
    }

    if (a2 >= 0xC0)
    {
      v10 = v11;
    }

    if (a2 >= 0x80)
    {
      v14 = v10;
    }

    else
    {
      v14 = 1;
    }

    v15 = a1 + 1;
    v8 = a1[v14 + 1];
    if ((*&v8 & v7) != 0)
    {
      v9 = 0;
      do
      {
        v16 = *v15++;
        v17 = vcnt_s8(v16);
        v17.i16[0] = vaddlv_u8(v17);
        v9 += v17.u32[0];
        --v14;
      }

      while (v14);
LABEL_20:
      v18 = vcnt_s8((*&v8 & (v7 - 1)));
      v18.i16[0] = vaddlv_u8(v18);
      v19 = v18.u32[0] + v9;
      if (v19 != -1)
      {
        v20 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
        *v20 = a3;
        v20[1] = a4;
        v21 = &a1[v19];
        free(*&v21[22]);
        v21[22] = v20;
      }
    }
  }
}

int8x8_t *SSCompactRankingAttrsDoesItemExist(int8x8_t *result, unint64_t a2)
{
  if (result)
  {
    v2 = 1 << a2;
    if (a2 >= 64)
    {
      v5 = 2;
      v6 = 3;
      v7 = 4;
      v8 = 5;
      if (a2 >= 0x180)
      {
        v8 = 6;
      }

      if (a2 >= 0x140)
      {
        v7 = v8;
      }

      if (a2 >= 0x100)
      {
        v6 = v7;
      }

      if (a2 >= 0xC0)
      {
        v5 = v6;
      }

      if (a2 >= 0x80)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      v10 = result + 1;
      v3 = result[v9 + 1];
      if ((*&v3 & v2) != 0)
      {
        v4 = 0;
        do
        {
          v11 = *v10++;
          v12 = vcnt_s8(v11);
          v12.i16[0] = vaddlv_u8(v12);
          v4 += v12.u32[0];
          --v9;
        }

        while (v9);
        goto LABEL_19;
      }
    }

    else
    {
      v3 = result[1];
      if ((*&v3 & v2) != 0)
      {
        v4 = 0;
LABEL_19:
        v13 = vcnt_s8((*&v3 & (v2 - 1)));
        v13.i16[0] = vaddlv_u8(v13);
        return (v13.u32[0] + v4 >= 0);
      }
    }

    return 0;
  }

  return result;
}

int8x8_t *SSCompactRankingAttrsGetValue(int8x8_t *a1, unint64_t a2)
{
  if (!a1)
  {
    return a1;
  }

  v2 = 1 << a2;
  if (a2 >= 64)
  {
    v5 = 2;
    v6 = 3;
    v7 = 4;
    v8 = 5;
    if (a2 >= 0x180)
    {
      v8 = 6;
    }

    if (a2 >= 0x140)
    {
      v7 = v8;
    }

    if (a2 >= 0x100)
    {
      v6 = v7;
    }

    if (a2 >= 0xC0)
    {
      v5 = v6;
    }

    if (a2 >= 0x80)
    {
      v9 = v5;
    }

    else
    {
      v9 = 1;
    }

    v10 = a1 + 1;
    v3 = a1[v9 + 1];
    if ((*&v3 & v2) == 0)
    {
      return 0;
    }

    v4 = 0;
    do
    {
      v11 = *v10++;
      v12 = vcnt_s8(v11);
      v12.i16[0] = vaddlv_u8(v12);
      v4 += v12.u32[0];
      --v9;
    }

    while (v9);
  }

  else
  {
    v3 = a1[1];
    if ((*&v3 & v2) == 0)
    {
      return 0;
    }

    v4 = 0;
  }

  v13 = vcnt_s8((*&v3 & (v2 - 1)));
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] + v4 >= 0)
  {
    a1 = a1[v13.u32[0] + 22 + v4];
    return a1;
  }

  return 0;
}

uint64_t SSCompactRankingAttrsGetFloat(uint64_t result, unint64_t a2, _DWORD *a3)
{
  if ((_SpotlightDefineRankingTypes_[a2] & 0x10) == 0)
  {
    SSCompactRankingAttrsGetFloat_cold_1();
  }

  if (result)
  {
    v3 = 1 << a2;
    if (a2 >= 64)
    {
      v6 = 2;
      v7 = 3;
      v8 = 4;
      v9 = 5;
      if (a2 >= 0x180)
      {
        v9 = 6;
      }

      if (a2 >= 0x140)
      {
        v8 = v9;
      }

      if (a2 >= 0x100)
      {
        v7 = v8;
      }

      if (a2 >= 0xC0)
      {
        v6 = v7;
      }

      if (a2 >= 0x80)
      {
        v10 = v6;
      }

      else
      {
        v10 = 1;
      }

      v11 = (result + 8);
      v4 = *(result + 8 + 8 * v10);
      if ((v4 & v3) != 0)
      {
        v5 = 0;
        do
        {
          v12 = *v11++;
          v13 = vcnt_s8(v12);
          v13.i16[0] = vaddlv_u8(v13);
          v5 += v13.u32[0];
          --v10;
        }

        while (v10);
LABEL_20:
        v14 = vcnt_s8((v4 & (v3 - 1)));
        v14.i16[0] = vaddlv_u8(v14);
        if (v14.u32[0] + v5 >= 0)
        {
          *a3 = *(result + 8 * (v14.u32[0] + v5) + 176);
          return 1;
        }
      }
    }

    else
    {
      v4 = *(result + 8);
      if ((v4 & v3) != 0)
      {
        v5 = 0;
        goto LABEL_20;
      }
    }

    return 0;
  }

  return result;
}

uint64_t SSCompactRankingAttrsGetInt128(uint64_t result, unint64_t a2, void *a3)
{
  if ((_SpotlightDefineRankingTypes_[a2] & 0x40) == 0)
  {
    SSCompactRankingAttrsGetInt128_cold_1();
  }

  if (result)
  {
    v3 = 1 << a2;
    if (a2 >= 64)
    {
      v6 = 2;
      v7 = 3;
      v8 = 4;
      v9 = 5;
      if (a2 >= 0x180)
      {
        v9 = 6;
      }

      if (a2 >= 0x140)
      {
        v8 = v9;
      }

      if (a2 >= 0x100)
      {
        v7 = v8;
      }

      if (a2 >= 0xC0)
      {
        v6 = v7;
      }

      if (a2 >= 0x80)
      {
        v10 = v6;
      }

      else
      {
        v10 = 1;
      }

      v11 = (result + 8);
      v4 = *(result + 8 + 8 * v10);
      if ((v4 & v3) != 0)
      {
        v5 = 0;
        do
        {
          v12 = *v11++;
          v13 = vcnt_s8(v12);
          v13.i16[0] = vaddlv_u8(v13);
          v5 += v13.u32[0];
          --v10;
        }

        while (v10);
LABEL_20:
        v14 = vcnt_s8((v4 & (v3 - 1)));
        v14.i16[0] = vaddlv_u8(v14);
        v15 = v14.u32[0] + v5;
        if (v15 >= 0)
        {
          v16 = *(*(result + 8 * v15 + 176) + 8);
          *a3 = **(result + 8 * v15 + 176);
          a3[1] = v16;
          return 1;
        }
      }
    }

    else
    {
      v4 = *(result + 8);
      if ((v4 & v3) != 0)
      {
        v5 = 0;
        goto LABEL_20;
      }
    }

    return 0;
  }

  return result;
}

uint64_t SSCompactRankingAttrsGetArrayInt64(uint64_t result, unint64_t a2, void *__dst, int a4)
{
  if ((_SpotlightDefineRankingTypes_[a2] & 0x20) == 0)
  {
    SSCompactRankingAttrsGetArrayInt64_cold_1();
  }

  if (result)
  {
    v4 = 1 << a2;
    if (a2 >= 64)
    {
      v7 = 2;
      v8 = 3;
      v9 = 4;
      v10 = 5;
      if (a2 >= 0x180)
      {
        v10 = 6;
      }

      if (a2 >= 0x140)
      {
        v9 = v10;
      }

      if (a2 >= 0x100)
      {
        v8 = v9;
      }

      if (a2 >= 0xC0)
      {
        v7 = v8;
      }

      if (a2 >= 0x80)
      {
        v11 = v7;
      }

      else
      {
        v11 = 1;
      }

      v12 = (result + 8);
      v5 = *(result + 8 + 8 * v11);
      if ((v5 & v4) != 0)
      {
        v6 = 0;
        do
        {
          v13 = *v12++;
          v14 = vcnt_s8(v13);
          v14.i16[0] = vaddlv_u8(v14);
          v6 += v14.u32[0];
          --v11;
        }

        while (v11);
LABEL_20:
        v15 = vcnt_s8((v5 & (v4 - 1)));
        v15.i16[0] = vaddlv_u8(v15);
        if (v15.u32[0] + v6 >= 0)
        {
          v16 = *(result + 8 * (v15.u32[0] + v6) + 176);
          if (*v16 == a4)
          {
            memcpy(__dst, v16 + 1, 8 * *v16);
            return 1;
          }
        }
      }
    }

    else
    {
      v5 = *(result + 8);
      if ((v5 & v4) != 0)
      {
        v6 = 0;
        goto LABEL_20;
      }
    }

    return 0;
  }

  return result;
}

uint64_t SSCompactRankingAttrsGetCount(uint64_t result)
{
  if (result)
  {
    v1 = 0;
    v2 = 0uLL;
    do
    {
      v2 = vpadalq_u32(v2, vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(result + 8 + v1)))));
      v1 += 16;
    }

    while (v1 != 32);
    return vaddvq_s64(v2);
  }

  return result;
}

void SSCompactRankingAttrsInsertValue(int8x8_t *a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = _SpotlightDefineRankingTypes_[a2];
  if (v7 <= 31)
  {
    if (v7 == 16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 floatValue];
        SSCompactRankingAttrsAddFloat(a1, a2, v8);
      }
    }

    else if ((v7 - 8) < 6)
    {
      SSCompactRankingAttrsAddValue(a1, a2, v5);
    }
  }

  else if (v7 == 32)
  {
    v9 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_count(v9) && ([v9 objectAtIndexedSubscript:0], v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass))
    {
      SSCompactRankingAttrsAddInt64ArrayFromNSArray(a1, a2, v9);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v9;
        v13 = v9;
        v14 = [v13 bytes];
        v15 = [v13 length];

        SSCompactRankingAttrsAddInt64Array(a1, a2, v14, v15 >> 3);
      }
    }
  }

  else if (v7 == 64)
  {
    v16 = 0;
    v17 = 0;
    ranking_index_score_init(&v16, v5);
    SSCompactRankingAttrsAddInt128(a1, a2, v16, v17);
  }
}

BOOL getBoolFromFlaggedFeature(int a1, int a2, int a3)
{
  if (a1 == 1965)
  {
    v3 = 4;
  }

  else
  {
    v3 = a1 == 1931;
  }

  if (a1 == 1966)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if (a1 == 1854)
  {
    v5 = 32;
  }

  else
  {
    v5 = 0;
  }

  if (a1 == 1853)
  {
    v6 = 8;
  }

  else
  {
    v6 = v5;
  }

  if (a1 == 1852)
  {
    v7 = 16;
  }

  else
  {
    v7 = v6;
  }

  if (a1 <= 1930)
  {
    v4 = v7;
  }

  return (a3 & (v4 >> 1)) != 0 && (v4 & a2) != 0;
}

void decodeRankingScores(unsigned __int8 *a1, int a2, char *__dst)
{
  memcpy(__dst, sDefaultScores, 0x328CuLL);
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = a1;
    do
    {
      v10 = *v8++;
      v9 = v10;
      v11 = v10 & 0xC0;
      v12 = v10 & 0x3F;
      if (v11 == 64)
      {
        v13 = v12;
        if (v12 == 63)
        {
          v13 = 2147500000.0;
        }

        *&__dst[4 * v7] = v13;
        goto LABEL_16;
      }

      if (v12)
      {
        v14 = v9 & 0x1F;
        if ((v9 & 0x20) != 0)
        {
          v8 = a1 + 2;
          v14 = a1[1] | (v14 << 8);
        }

        if (v11)
        {
LABEL_11:
          if (v9 >= 0xC0)
          {
            bzero(&__dst[4 * v6], 4 * v14 + 4);
          }

          goto LABEL_15;
        }
      }

      else
      {
        v14 = 0;
        if (v11)
        {
          goto LABEL_11;
        }
      }

      memcpy(&__dst[4 * v7], v8, 4 * v14 + 4);
      v8 += 4 * v14 + 4;
LABEL_15:
      v7 += v14;
LABEL_16:
      v6 = ++v7;
      a1 = v8;
    }

    while (v7 < 0xCA3u);
  }
}

id operatorCharacterSet(uint64_t a1)
{
  if (operatorCharacterSet_onceToken != -1)
  {
    operatorCharacterSet_cold_1();
  }

  v2 = operatorCharacterSet_operatorCharSet;

  return v2;
}