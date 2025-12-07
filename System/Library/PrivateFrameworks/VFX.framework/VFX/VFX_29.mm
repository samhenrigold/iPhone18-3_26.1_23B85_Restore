id sub_1AF3699F4(void *a1, const char *a2, uint64_t a3)
{
  v7 = objc_msgSend_mutableCopy(a1, a2, a3);
  switch(a3)
  {
    case 4:
      v34 = objc_msgSend_bytes(a1, v5, v6);
      v37 = objc_msgSend_bytes(v7, v35, v36);
      v38 = *v34;
      *v37 = *v34;
      v41 = objc_msgSend_length(a1, v39, v40);
      if (v41 >= 8)
      {
        v42 = (v41 >> 2) - 1;
        v43 = v37 + 1;
        v44 = (v34 + 1);
        do
        {
          v45 = *v44++;
          v46 = v38 - v45;
          *v43++ = v38 - v45;
          if (v38 - v45 > v38)
          {
            v38 = v46;
          }

          --v42;
        }

        while (v42);
      }

      break;
    case 2:
      v21 = objc_msgSend_bytes(a1, v5, v6);
      v24 = objc_msgSend_bytes(v7, v22, v23);
      v25 = *v21;
      *v24 = *v21;
      v28 = objc_msgSend_length(a1, v26, v27);
      if (v28 >= 4)
      {
        v29 = (v28 >> 1) - 1;
        v30 = v24 + 1;
        v31 = (v21 + 1);
        do
        {
          v32 = *v31++;
          v33 = (v25 - v32);
          *v30++ = v25 - v32;
          if (v33 > v25)
          {
            v25 = v33;
          }

          --v29;
        }

        while (v29);
      }

      break;
    case 1:
      v8 = objc_msgSend_bytes(a1, v5, v6);
      v11 = objc_msgSend_bytes(v7, v9, v10);
      v12 = *v8;
      *v11 = *v8;
      v15 = objc_msgSend_length(a1, v13, v14);
      if (v15 >= 2)
      {
        v16 = v15 - 1;
        v17 = v11 + 1;
        v18 = (v8 + 1);
        do
        {
          v19 = *v18++;
          v20 = (v12 - v19);
          *v17++ = v12 - v19;
          if (v20 > v12)
          {
            v12 = v20;
          }

          --v16;
        }

        while (v16);
      }

      break;
  }

  return v7;
}

id sub_1AF369B84(void *a1, const char *a2, uint64_t a3)
{
  v7 = objc_msgSend_mutableCopy(a1, a2, a3);
  switch(a3)
  {
    case 4:
      v28 = objc_msgSend_bytes(a1, v5, v6);
      v31 = objc_msgSend_bytes(v7, v29, v30);
      *v31 = *v28;
      v34 = objc_msgSend_length(a1, v32, v33);
      if (v34 >= 8)
      {
        v35 = (v34 >> 2) - 1;
        v36 = v31 + 1;
        v37 = v28 + 1;
        do
        {
          *v36++ = *v37 - *(v37 - 1);
          ++v37;
          --v35;
        }

        while (v35);
      }

      break;
    case 2:
      v18 = objc_msgSend_bytes(a1, v5, v6);
      v21 = objc_msgSend_bytes(v7, v19, v20);
      *v21 = *v18;
      v24 = objc_msgSend_length(a1, v22, v23);
      if (v24 >= 4)
      {
        v25 = (v24 >> 1) - 1;
        v26 = v21 + 1;
        v27 = v18 + 1;
        do
        {
          *v26++ = *v27 - *(v27 - 1);
          ++v27;
          --v25;
        }

        while (v25);
      }

      break;
    case 1:
      v8 = objc_msgSend_bytes(a1, v5, v6);
      v11 = objc_msgSend_bytes(v7, v9, v10);
      *v11 = *v8;
      v14 = objc_msgSend_length(a1, v12, v13);
      if (v14 >= 2)
      {
        v15 = v14 - 1;
        v16 = v11 + 1;
        v17 = v8 + 1;
        do
        {
          *v16++ = *v17 - *(v17 - 1);
          ++v17;
          --v15;
        }

        while (v15);
      }

      break;
  }

  return v7;
}

id sub_1AF369CF8(void *a1, const char *a2, uint64_t a3)
{
  v7 = objc_msgSend_mutableCopy(a1, a2, a3);
  switch(a3)
  {
    case 4:
      v34 = objc_msgSend_bytes(a1, v5, v6);
      v37 = objc_msgSend_bytes(v7, v35, v36);
      *v37 = *v34;
      v40 = objc_msgSend_length(a1, v38, v39);
      if (v40 >= 8)
      {
        v43 = *v37;
        v42 = v37 + 1;
        v41 = v43;
        v44 = (v40 >> 2) - 1;
        v45 = v34 + 1;
        do
        {
          v46 = *v45++;
          v41 += v46;
          *v42++ = v41;
          --v44;
        }

        while (v44);
      }

      break;
    case 2:
      v21 = objc_msgSend_bytes(a1, v5, v6);
      v24 = objc_msgSend_bytes(v7, v22, v23);
      *v24 = *v21;
      v27 = objc_msgSend_length(a1, v25, v26);
      if (v27 >= 4)
      {
        v30 = *v24;
        v29 = v24 + 1;
        v28 = v30;
        v31 = (v27 >> 1) - 1;
        v32 = v21 + 1;
        do
        {
          v33 = *v32++;
          v28 += v33;
          *v29++ = v28;
          --v31;
        }

        while (v31);
      }

      break;
    case 1:
      v8 = objc_msgSend_bytes(a1, v5, v6);
      v11 = objc_msgSend_bytes(v7, v9, v10);
      *v11 = *v8;
      v14 = objc_msgSend_length(a1, v12, v13);
      if (v14 >= 2)
      {
        v17 = *v11;
        v16 = v11 + 1;
        v15 = v17;
        v18 = v14 - 1;
        v19 = v8 + 1;
        do
        {
          v20 = *v19++;
          v15 += v20;
          *v16++ = v15;
          --v18;
        }

        while (v18);
      }

      break;
  }

  return v7;
}

uint64_t sub_1AF369E58(void *a1, const char *a2, unint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_bytes(a1, a2, a3);
  v8 = objc_msgSend_length(a1, v6, v7);
  v9 = v8 / a3;
  v10 = malloc_type_malloc(v8 / a3 * a3, 0x100004077774924uLL);
  v12 = v10;
  v13 = v10;
  if (v8 >= a3)
  {
    v14 = 0;
    v13 = v10;
    do
    {
      v15 = v14 + 3;
      v16 = v14 * a3;
      if (v14 + 3 >= v9)
      {
        goto LABEL_18;
      }

      v17 = (v5 + v16);
      switch(a3)
      {
        case 4uLL:
          v18 = *v17;
          v11 = *(v17 + 1);
          HIDWORD(v45) = *v17;
          LODWORD(v46) = v11;
          v19 = *(v17 + 2);
          break;
        case 2uLL:
          v18 = *v17;
          v11 = v17[1];
          HIDWORD(v45) = v18;
          LODWORD(v46) = v11;
          v19 = v17[2];
          break;
        case 1uLL:
          v18 = *v17;
          v11 = *(v17 + 1);
          HIDWORD(v45) = v18;
          LODWORD(v46) = v11;
          v19 = *(v17 + 2);
          break;
        default:
          goto LABEL_18;
      }

      HIDWORD(v46) = v19;
      if (v18 != v11 && v19 != v18 && v11 != v19)
      {
        v25 = (v5 + v15 * a3);
        if (a3 == 4)
        {
          v44 = *v25;
          v27 = *(v25 + 2);
        }

        else if (a3 == 2)
        {
          v28 = v25[1];
          LODWORD(v44) = *v25;
          HIDWORD(v44) = v28;
          v27 = v25[2];
        }

        else
        {
          v26 = *(v25 + 1);
          LODWORD(v44) = *v25;
          HIDWORD(v44) = v26;
          v27 = *(v25 + 2);
        }

        v29 = 0;
        LODWORD(v45) = v27;
        v30 = 1;
LABEL_29:
        v31 = 0;
        v32 = v29;
        v11 = *(&v45 + ++v29);
        if (v29 == 3)
        {
          v33 = 0;
        }

        else
        {
          v33 = v32 + 1;
        }

        v34 = *(&v45 + v33 + 1);
        while (1)
        {
          v35 = v31 + 1;
          if (*(&v44 + v31) == v34)
          {
            v36 = v31 == 2 ? 0 : v31 + 1;
            if (*(&v44 + v36) == v11)
            {
              break;
            }
          }

          ++v31;
          if (v35 == 3)
          {
            v30 = v32 < 2;
            if (v29 != 3)
            {
              goto LABEL_29;
            }

            goto LABEL_18;
          }
        }

        v37 = (v32 - 1);
        if (!v32)
        {
          v37 = 2;
        }

        v38 = *(&v45 + v37 + 1);
        if (v31)
        {
          v39 = (v31 - 1);
        }

        else
        {
          v39 = 2;
        }

        v40 = *(&v44 + v39);
        if (v11 >= v34)
        {
          if (a3 == 4)
          {
            *v13 = v34;
            *(v13 + 1) = v11;
            *(v13 + 2) = v40;
            *(v13 + 3) = v38;
            if (!v30)
            {
              goto LABEL_60;
            }
          }

          else if (a3 == 2)
          {
            *v13 = v34;
            *(v13 + 1) = v11;
            *(v13 + 2) = v40;
            *(v13 + 3) = v38;
            if (!v30)
            {
              goto LABEL_58;
            }
          }

          else
          {
            *v13 = v34;
            v13[1] = v11;
            v13[2] = v40;
            v13[3] = v38;
            if (!v30)
            {
              goto LABEL_21;
            }
          }
        }

        else if (a3 == 4)
        {
          *v13 = v11;
          *(v13 + 1) = v34;
          *(v13 + 2) = v38;
          *(v13 + 3) = v40;
          if (!v30)
          {
            goto LABEL_60;
          }
        }

        else if (a3 == 2)
        {
          *v13 = v11;
          *(v13 + 1) = v34;
          *(v13 + 2) = v38;
          *(v13 + 3) = v40;
          if (!v30)
          {
            goto LABEL_58;
          }
        }

        else
        {
          *v13 = v11;
          v13[1] = v34;
          v13[2] = v38;
          v13[3] = v40;
          if (!v30)
          {
            goto LABEL_21;
          }
        }

        v15 = v14 + 6;
        v41 = 4 * a3;
        goto LABEL_82;
      }

LABEL_18:
      v17 = (v5 + v16);
      switch(a3)
      {
        case 4uLL:
LABEL_60:
          v22 = *v17;
          v23 = *(v17 + 1);
          v24 = *(v17 + 2);
          break;
        case 2uLL:
LABEL_58:
          v22 = *v17;
          v23 = v17[1];
          v24 = v17[2];
          break;
        case 1uLL:
LABEL_21:
          v22 = *v17;
          v23 = *(v17 + 1);
          v24 = *(v17 + 2);
          break;
        default:
          v24 = 0;
          v22 = 0;
          v23 = 0;
LABEL_66:
          switch(a3)
          {
            case 4uLL:
              *v13 = v22;
              *(v13 + 1) = v23;
              v41 = 12;
              *(v13 + 2) = v24;
              break;
            case 2uLL:
              *v13 = v22;
              *(v13 + 1) = v23;
              v41 = 6;
              *(v13 + 2) = v24;
              break;
            case 1uLL:
              *v13 = v22;
              v13[1] = v23;
              v41 = 3;
              v13[2] = v24;
              break;
            default:
              v41 = 3 * a3;
              break;
          }

          goto LABEL_82;
      }

      if (v22 >= v23)
      {
        goto LABEL_66;
      }

      if (v23 >= v24)
      {
        if (a3 == 4)
        {
          *v13 = v23;
          *(v13 + 1) = v24;
          v41 = 12;
          *(v13 + 2) = v22;
        }

        else if (a3 == 2)
        {
          *v13 = v23;
          *(v13 + 1) = v24;
          v41 = 6;
          *(v13 + 2) = v22;
        }

        else
        {
          *v13 = v23;
          v13[1] = v24;
          v41 = 3;
          v13[2] = v22;
        }
      }

      else if (a3 == 4)
      {
        *v13 = v24;
        *(v13 + 1) = v22;
        v41 = 12;
        *(v13 + 2) = v23;
      }

      else if (a3 == 2)
      {
        *v13 = v24;
        *(v13 + 1) = v22;
        v41 = 6;
        *(v13 + 2) = v23;
      }

      else
      {
        *v13 = v24;
        v13[1] = v22;
        v41 = 3;
        v13[2] = v23;
      }

LABEL_82:
      v13 += v41;
      v14 = v15;
    }

    while (v15 < v9);
  }

  v42 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v11, v12, v13 - v12, v44, v45, v46);
  free(v12);
  return v42;
}

uint64_t sub_1AF36A2C4(void *a1, const char *a2, unint64_t a3)
{
  v5 = objc_msgSend_bytes(a1, a2, a3);
  v8 = objc_msgSend_length(a1, v6, v7);
  v9 = malloc_type_malloc((((3 * (v8 / a3)) >> 1) & 0x3FFFFFFFFFFFFFFFLL) * a3, 0x100004077774924uLL);
  v11 = v9;
  v12 = v9;
  if (v8 >= a3)
  {
    v13 = 0;
    v14 = 3 * a3;
    v12 = v9;
    do
    {
      v15 = (v5 + v13 * a3);
      switch(a3)
      {
        case 1uLL:
          v16 = *v15;
          v18 = v15[1];
          v20 = v15[2];
          *v12 = v16;
          v12[1] = v18;
          v12[2] = v20;
          break;
        case 2uLL:
          v16 = *v15;
          v18 = *(v15 + 1);
          v19 = *(v15 + 2);
          *v12 = v16;
          *(v12 + 1) = v18;
          *(v12 + 2) = v19;
          break;
        case 4uLL:
          v16 = *v15;
          v17 = *(v15 + 4);
          *v12 = *v15;
          *(v12 + 4) = v17;
          v18 = v17;
          break;
        default:
          v21 = v13 + 3;
LABEL_17:
          v12 += v14;
          goto LABEL_18;
      }

      v21 = v13 + 3;
      v12 += v14;
      if (v16 < v18)
      {
        v22 = v21 * a3;
        if (a3 == 4)
        {
          v25 = *(v5 + v22);
          *v12 = v16;
          *(v12 + 1) = v25;
          *(v12 + 2) = v18;
        }

        else if (a3 == 2)
        {
          v24 = *(v5 + v22);
          *v12 = v16;
          *(v12 + 1) = v24;
          *(v12 + 2) = v18;
        }

        else
        {
          v23 = *(v5 + v22);
          *v12 = v16;
          v12[1] = v23;
          v12[2] = v18;
        }

        v21 = v13 + 4;
        goto LABEL_17;
      }

LABEL_18:
      v13 = v21;
    }

    while (v21 < v8 / a3);
  }

  v26 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v10, v9, v12 - v9);
  free(v11);
  return v26;
}

void sub_1AF36A4CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __CFString *a12, __CFString *a13, uint64_t a14, uint64_t a15, uint64_t a16, __CFString *a17)
{
  if (a2)
  {
    v19 = objc_begin_catch(exception_object);
    v22 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A250];
    if (a2 == 2)
    {
      v24 = v19;
      a14 = *MEMORY[0x1E696A578];
      a16 = objc_msgSend_name(v19, v20, v21);
      a15 = *MEMORY[0x1E696A588];
      v27 = objc_msgSend_reason(v24, v25, v26);
      v29 = &stru_1F2575650;
      if (v27)
      {
        v29 = v27;
      }

      a17 = v29;
      v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v28, &a16, &a14, 2);
      *v17 = objc_msgSend_errorWithDomain_code_userInfo_(v22, v31, v23, 3328, v30);
      objc_end_catch();
    }

    else
    {
      v32 = *MEMORY[0x1E696A588];
      a10 = *MEMORY[0x1E696A578];
      a11 = v32;
      a12 = @"Unknown";
      a13 = @"Unknown";
      v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v20, &a12, &a10, 2);
      *v17 = objc_msgSend_errorWithDomain_code_userInfo_(v22, v34, v23, 3328, v33);
      objc_end_catch();
    }

    JUMPOUT(0x1AF36A498);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF36A604(uint64_t a1, const char *a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E696A250];
  v4 = *MEMORY[0x1E696A588];
  v8[0] = *MEMORY[0x1E696A578];
  v8[1] = v4;
  v9[0] = @"Test";
  v9[1] = @"Test";
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v9, v8, 2);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v2, v6, v3, 3328, v5);
  objc_exception_throw(v7);
}

uint64_t sub_1AF36A694(void *a1, const char *a2, void *a3, void *a4)
{
  v72 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_count(a3, a2, a3);
  if (v7 != objc_msgSend_count(a4, v8, v9))
  {
    NSLog(&cfstr_ErrorRangesAnd.isa);
    return 0;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v10, &v65, v71, 16);
  if (v11)
  {
    v14 = v11;
    v15 = 0;
    v16 = 0;
    v17 = *v66;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v66 != v17)
        {
          objc_enumerationMutation(a3);
        }

        v19 = objc_msgSend_rangeValue(*(*(&v65 + 1) + 8 * i), v12, v13);
        if (v19 < v15)
        {
          NSLog(&cfstr_ErrorRangesMus.isa);
          return 0;
        }

        v15 = &v12[v19];
        v16 += v12;
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v12, &v65, v71, 16);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(a4, v12, &v61, v70, 16);
  if (v21)
  {
    v24 = v21;
    v25 = 0;
    v26 = *v62;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v62 != v26)
        {
          objc_enumerationMutation(a4);
        }

        v25 += objc_msgSend_length(*(*(&v61 + 1) + 8 * j), v22, v23);
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(a4, v22, &v61, v70, 16);
    }

    while (v24);
  }

  else
  {
    v25 = 0;
  }

  v29 = v25 - v16 + objc_msgSend_length(a1, v22, v23);
  if (v29 <= 0)
  {
    NSLog(&cfstr_ErrorIncorrect.isa);
    return 0;
  }

  v55 = a1;
  v30 = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v28, v29);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v31, &v57, v69, 16);
  if (v32)
  {
    v35 = v32;
    obj = a3;
    v36 = 0;
    v37 = 0;
    v38 = *v58;
    do
    {
      v39 = 0;
      v40 = v36;
      do
      {
        if (*v58 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v42 = objc_msgSend_rangeValue(*(*(&v57 + 1) + 8 * v39), v33, v34);
        v43 = v41;
        v44 = v42 - v37;
        if (v42 > v37)
        {
          v45 = objc_msgSend_substringWithRange_(v55, v41, v37, v44);
          objc_msgSend_appendString_(v30, v46, v45);
        }

        v36 = v40 + 1;
        v47 = objc_msgSend_objectAtIndexedSubscript_(a4, v41, v40, v44);
        objc_msgSend_appendString_(v30, v48, v47);
        v37 = &v43[v42];
        ++v39;
        ++v40;
      }

      while (v35 != v39);
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v57, v69, 16);
    }

    while (v35);
  }

  else
  {
    v37 = 0;
  }

  if (v37 < objc_msgSend_length(v55, v33, v34))
  {
    v51 = objc_msgSend_length(v55, v49, v50);
    v53 = objc_msgSend_substringWithRange_(v55, v52, v37, v51 - v37);
    objc_msgSend_appendString_(v30, v54, v53);
  }

  return objc_msgSend_stringWithString_(MEMORY[0x1E696AEC0], v49, v30);
}

uint64_t sub_1AF36D7D8(uint64_t a1, uint64_t a2)
{
  if (sub_1AF1B7348(a2, a2))
  {
    return 1;
  }

  if (!sub_1AF1B7DB8(a2, v4))
  {
    v7 = sub_1AF1B75A0(a2, v6);
    if (v7)
    {
      if (sub_1AF1C39FC(v7, 0, &v10))
      {
        v9 = sub_1AF1B9B04(a2, v8);
        sub_1AF1DA304(&v10, v9, &v10);
        sub_1AF1DA274(*(a1 + 32), *(a1 + 32), &v10);
      }
    }
  }

  return 0;
}

__n128 sub_1AF36F308(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF36F3A0;
  block[3] = &unk_1E7A7F918;
  v2 = *(a1 + 40);
  v3 = *(a1 + 88);
  v12 = *(a1 + 104);
  v4 = *(a1 + 72);
  v11 = v3;
  v10 = v4;
  v5 = *(a1 + 56);
  v8 = v2;
  v9 = v5;
  dispatch_async(v1, block);
  return result;
}

uint64_t sub_1AF36F3A0(uint64_t a1, const char *a2, uint64_t a3)
{
  if ((objc_msgSend_isReadyForMoreMediaData(*(*(a1 + 32) + 376), a2, a3) & 1) == 0)
  {
    do
    {
      usleep(0x3E8u);
    }

    while (!objc_msgSend_isReadyForMoreMediaData(*(*(a1 + 32) + 376), v5, v6));
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v13 = *(a1 + 80);
  v14 = *(a1 + 96);
  appended = objc_msgSend_appendPixelBuffer_withPresentationTime_(v7, v4, v8, &v13);
  if ((appended & 1) == 0)
  {
    v11 = sub_1AF0D5194(appended, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFAD8C();
    }
  }

  CFRelease(*(a1 + 56));
  CFRelease(*(a1 + 64));
  CVMetalTextureCacheFlush(*(a1 + 72), 0);
  return (*(*(a1 + 48) + 16))();
}

void sub_1AF36F7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1AF36F81C(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_isCancelled(*(a1 + 32), a2, a3))
  {
    objc_msgSend_setCanceled_(*(a1 + 40), v4, 1);
  }

  if ((objc_msgSend_canceled(*(a1 + 40), v4, v5) & 1) != 0 || (*(*(*(a1 + 64) + 8) + 24) + (*(a1 + 96) * -0.5)) > *(a1 + 100))
  {
    if (!*(*(*(a1 + 72) + 8) + 24))
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = sub_1AF36FB08;
      v36[3] = &unk_1E7A7E198;
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      v36[4] = *(a1 + 40);
      v36[5] = v7;
      dispatch_async(v6, v36);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    if (*(a1 + 108) == 1)
    {
      ++*(*(*(a1 + 72) + 8) + 24);
      v11 = *(a1 + 88);
      v12 = 1000 * *(*(*(a1 + 80) + 8) + 24);
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = (1000.0 / *(v13 + 400));
      v16 = *(v13 + 384);
      v40 = 0;
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = sub_1AF36FAF0;
      v41[3] = &unk_1E7A7F968;
      v41[4] = *(a1 + 72);
      v37 = v12;
      v38 = v15;
      v39 = 1;
      objc_msgSend_renderAndAppendWithPresentationTime_usingAdaptor_metalTextureCache_cvQueue_completionBlock_(v13, v8, &v37, v16, v11, v14, v41);
    }

    else
    {
      v20 = *(a1 + 40);
      objc_msgSend_size(v20, v8, v9);
      v23 = objc_msgSend__copySnapshot_(v20, v21, v22);
      if (v23)
      {
        v24 = v23;
        if ((objc_msgSend_isReadyForMoreMediaData(*(*(a1 + 40) + 376), v17, v18) & 1) == 0)
        {
          do
          {
            usleep(0x3E8u);
          }

          while (!objc_msgSend_isReadyForMoreMediaData(*(*(a1 + 40) + 376), v26, v27));
        }

        v28 = *(a1 + 40);
        v29 = 1000.0 / *(v28 + 400);
        v30 = *(v28 + 384);
        v37 = 1000 * *(*(*(a1 + 80) + 8) + 24);
        v38 = v29;
        v39 = 1;
        v40 = 0;
        objc_msgSend_appendImage_withPresentationTime_usingAdaptor_(v28, v25, v24, &v37, v30);
        CGImageRelease(v24);
      }
    }

    *(*(*(a1 + 64) + 8) + 24) = *(a1 + 96) + *(*(*(a1 + 64) + 8) + 24);
    ++*(*(*(a1 + 80) + 8) + 24);
    *&v19 = (*(*(*(a1 + 64) + 8) + 24) - *(a1 + 104)) / (*(a1 + 100) - *(a1 + 104));
    objc_msgSend_setProgress_(*(a1 + 40), v17, v18, v19);
    v31 = *(a1 + 32);
    v34 = objc_msgSend_completedUnitCount(v31, v32, v33);
    objc_msgSend_setCompletedUnitCount_(v31, v35, v34 + 1);
    objc_autoreleasePoolPop(v10);
  }
}

intptr_t sub_1AF36FB08(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_markAsFinished(*(*(a1 + 32) + 376), a2, a3);
  v4 = *(a1 + 40);

  return dispatch_semaphore_signal(v4);
}

const void *sub_1AF36FB58(void *a1, uint64_t a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = objc_msgSend_CGImage(a1, v3, v4);
  v6 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  return v6;
}

void *VFXGetResourceBundle(uint64_t a1, const char *a2, uint64_t a3)
{
  result = qword_1EB658E78;
  if (!qword_1EB658E78)
  {
    return objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3);
  }

  return result;
}

uint64_t sub_1AF36FBF4(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E696AAE8];
  v4 = objc_opt_class();

  return objc_msgSend_bundleForClass_(v2, v3, v4);
}

id VFXSetExternalTextureSource(id result)
{
  if (qword_1EB658E80 != result)
  {
    v1 = result;

    result = v1;
    qword_1EB658E80 = result;
  }

  return result;
}

id sub_1AF36FC84(id result, const char *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    objc_msgSend_getControlPointAtIndex_values_(result, a2, 1, v4);
    objc_msgSend_getControlPointAtIndex_values_(v2, v3, 2, v5);
    return sub_1AF120C80(v4[0], v4[1], v5[0], v5[1]);
  }

  return result;
}

uint64_t sub_1AF36FD0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF120CF4(a1, a2);
  LODWORD(v5) = *v2;
  LODWORD(v6) = v2[1];
  LODWORD(v7) = v2[2];
  LODWORD(v8) = v2[3];
  v9 = MEMORY[0x1E69793D0];

  return objc_msgSend_functionWithControlPoints__::(v9, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1AF36FD48(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  components[4] = *MEMORY[0x1E69E9840];
  components[0] = a3;
  components[1] = a4;
  components[2] = a5;
  components[3] = a6;
  v6 = sub_1AF164458(a1, a2);
  v7 = CGColorCreate(v6, components);
  v9 = objc_msgSend_colorWithCGColor_(MEMORY[0x1E69DC888], v8, v7);
  CGColorRelease(v7);
  return v9;
}

uint64_t sub_1AF36FDD0(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  components[4] = *MEMORY[0x1E69E9840];
  components[0] = a3;
  components[1] = a4;
  components[2] = a5;
  components[3] = a6;
  v6 = sub_1AF164540(a1, a2);
  v7 = CGColorCreate(v6, components);
  v9 = objc_msgSend_colorWithCGColor_(MEMORY[0x1E69DC888], v8, v7);
  CGColorRelease(v7);
  return v9;
}

double sub_1AF36FE5C(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_CGColor(a1, a2, a3);

  return sub_1AF164578(v3);
}

uint64_t sub_1AF36FE84(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = sub_1AF1648C8(*a3, a3[1]);
  v5 = objc_msgSend_colorWithCGColor_(MEMORY[0x1E69DC888], v4, v3);
  CGColorRelease(v3);
  return v5;
}

uint64_t sub_1AF36FED8(void *a1, const char *a2, float32x2_t *a3, char a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (!a3)
    {
      return 0;
    }

    v4 = vcvtq_f64_f32(a3[1]);
    v10 = vcvtq_f64_f32(*a3);
    v11 = v4;
    v5 = sub_1AF1642C0(a1, a2);
    v6 = CGColorCreate(v5, v10.f64);
    v8 = objc_msgSend_colorWithCGColor_(MEMORY[0x1E69DC888], v7, v6, *&v10, *&v11);
    CGColorRelease(v6);
    return v8;
  }

  else
  {

    return objc_msgSend_vfx_colorWithCFXColor_(a1, a2, a3);
  }
}

CGColor *sub_1AF36FFB0(void *a1, const char *a2, uint64_t a3, BOOL *a4)
{
  result = objc_msgSend_CGColor(a1, a2, a3);
  v7 = result;
  if (result)
  {
    result = sub_1AF1645F0(result, a3);
    if (!a4)
    {
      return result;
    }
  }

  else if (!a4)
  {
    return result;
  }

  *a4 = v7 != 0;
  return result;
}

uint64_t sub_1AF370010(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E695DF70];
  v6 = objc_msgSend_count(a1, a2, a3);
  v8 = objc_msgSend_arrayWithCapacity_(v5, v7, v6);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1AF3700B8;
  v11[3] = &unk_1E7A7F9B8;
  v11[4] = v8;
  v11[5] = a3;
  objc_msgSend_enumerateObjectsUsingBlock_(a1, v9, v11);
  return v8;
}

void *sub_1AF3700B8(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 32);

    return objc_msgSend_addObject_(v5, v3, v4);
  }

  return result;
}

double sub_1AF370110(void *a1, const char *a2)
{
  v3 = objc_msgSend_valueForKey_(a1, a2, @"x");
  objc_msgSend_floatValue(v3, v4, v5);
  v18 = v6;
  v8 = objc_msgSend_valueForKey_(a1, v7, @"y");
  objc_msgSend_floatValue(v8, v9, v10);
  v17 = v11;
  v13 = objc_msgSend_valueForKey_(a1, v12, @"z");
  objc_msgSend_floatValue(v13, v14, v15);
  return COERCE_DOUBLE(__PAIR64__(v17, v18));
}

double sub_1AF370188(void *a1, const char *a2)
{
  v3 = objc_msgSend_valueForKey_(a1, a2, @"x");
  objc_msgSend_floatValue(v3, v4, v5);
  v22 = v6;
  v8 = objc_msgSend_valueForKey_(a1, v7, @"y");
  objc_msgSend_floatValue(v8, v9, v10);
  v21 = v11;
  v13 = objc_msgSend_valueForKey_(a1, v12, @"z");
  objc_msgSend_floatValue(v13, v14, v15);
  v17 = objc_msgSend_valueForKey_(a1, v16, @"w");
  objc_msgSend_floatValue(v17, v18, v19);
  return COERCE_DOUBLE(__PAIR64__(v21, v22));
}

__n128 sub_1AF370220(void *a1, const char *a2)
{
  v3 = objc_msgSend_valueForKey_(a1, a2, @"m11");
  objc_msgSend_floatValue(v3, v4, v5);
  v74 = v6;
  v8 = objc_msgSend_valueForKey_(a1, v7, @"m12");
  objc_msgSend_floatValue(v8, v9, v10);
  v73 = v11;
  v13 = objc_msgSend_valueForKey_(a1, v12, @"m13");
  objc_msgSend_floatValue(v13, v14, v15);
  v72 = v16;
  v18 = objc_msgSend_valueForKey_(a1, v17, @"m14");
  objc_msgSend_floatValue(v18, v19, v20);
  *&v21 = __PAIR64__(v73, v74);
  *(&v21 + 1) = __PAIR64__(v22, v72);
  v75 = v21;
  v24 = objc_msgSend_valueForKey_(a1, v23, @"m21");
  objc_msgSend_floatValue(v24, v25, v26);
  v28 = objc_msgSend_valueForKey_(a1, v27, @"m22");
  objc_msgSend_floatValue(v28, v29, v30);
  v32 = objc_msgSend_valueForKey_(a1, v31, @"m23");
  objc_msgSend_floatValue(v32, v33, v34);
  v36 = objc_msgSend_valueForKey_(a1, v35, @"m24");
  objc_msgSend_floatValue(v36, v37, v38);
  v40 = objc_msgSend_valueForKey_(a1, v39, @"m31");
  objc_msgSend_floatValue(v40, v41, v42);
  v44 = objc_msgSend_valueForKey_(a1, v43, @"m32");
  objc_msgSend_floatValue(v44, v45, v46);
  v48 = objc_msgSend_valueForKey_(a1, v47, @"m33");
  objc_msgSend_floatValue(v48, v49, v50);
  v52 = objc_msgSend_valueForKey_(a1, v51, @"m34");
  objc_msgSend_floatValue(v52, v53, v54);
  v56 = objc_msgSend_valueForKey_(a1, v55, @"m41");
  objc_msgSend_floatValue(v56, v57, v58);
  v60 = objc_msgSend_valueForKey_(a1, v59, @"m42");
  objc_msgSend_floatValue(v60, v61, v62);
  v64 = objc_msgSend_valueForKey_(a1, v63, @"m43");
  objc_msgSend_floatValue(v64, v65, v66);
  v68 = objc_msgSend_valueForKey_(a1, v67, @"m44");
  objc_msgSend_floatValue(v68, v69, v70);
  return v75;
}

uint64_t sub_1AF370418(double a1, double a2, uint64_t a3, const char *a4)
{
  *v5 = a1;
  *&v5[1] = a2;
  return objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], a4, v5, "{CGPoint=dd}");
}

double sub_1AF370450(void *a1, const char *a2)
{
  v3[0] = 0;
  v3[1] = 0;
  objc_msgSend_getValue_size_(a1, a2, v3, 16);
  return *v3;
}

float32x2_t sub_1AF3704BC(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_objCType(a1, a2, a3);
  if (!strcmp(v4, "{?=ff}"))
  {
    v11.f64[0] = 0.0;
    objc_msgSend_getValue_size_(a1, v5, &v11, 8);
    return *&v11.f64[0];
  }

  else
  {
    v7 = objc_msgSend_objCType(a1, v5, v6);
    v8 = strcmp(v7, "{CGPoint=dd}");
    result = 0;
    if (!v8)
    {
      v11 = 0uLL;
      objc_msgSend_getValue_size_(a1, v9, &v11, 16, 0.0);
      return vcvt_f32_f64(v11);
    }
  }

  return result;
}

double sub_1AF370574(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_objCType(a1, a2, a3);
  if (!strcmp(v4, "{?=fff}"))
  {
    LODWORD(v12.f64[1]) = 0;
    v12.f64[0] = 0.0;
    objc_msgSend_getValue_size_(a1, v5, &v12, 12);
    *&v10 = v12.f64[0];
  }

  else
  {
    v7 = objc_msgSend_objCType(a1, v5, v6);
    v8 = strcmp(v7, "{CGRect={CGPoint=dd}{CGSize=dd}}");
    v10 = 0uLL;
    if (!v8)
    {
      v12 = 0uLL;
      v13 = 0uLL;
      objc_msgSend_getValue_size_(a1, v9, &v12, 32);
      *&v10 = vcvt_f32_f64(v12);
    }
  }

  return *&v10;
}

float64_t sub_1AF370640(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_objCType(a1, a2, a3);
  if (!strcmp(v4, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    v11 = 0u;
    v12 = 0u;
    objc_msgSend_getValue_size_(a1, v5, &v11, 32);
    *&result = vcvt_hight_f32_f64(vcvt_f32_f64(v11), v12).u64[0];
  }

  else
  {
    v7 = objc_msgSend_objCType(a1, v5, v6);
    v8 = strcmp(v7, "{?=ffff}");
    result = 0.0;
    if (!v8)
    {
      v11 = 0uLL;
      objc_msgSend_getValue_size_(a1, v9, &v11, 16, 0.0);
      return v11.f64[0];
    }
  }

  return result;
}

uint64_t sub_1AF3706D8(void *a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, const char *a6)
{
  v7[0] = vcvtq_f64_f32(*a2.f32);
  v7[1] = vcvt_hight_f64_f32(a2);
  v7[2] = vcvtq_f64_f32(*a3.f32);
  v7[3] = vcvt_hight_f64_f32(a3);
  v7[4] = vcvtq_f64_f32(*a4.f32);
  v7[5] = vcvt_hight_f64_f32(a4);
  v7[6] = vcvtq_f64_f32(*a5.f32);
  v7[7] = vcvt_hight_f64_f32(a5);
  return objc_msgSend_valueWithCATransform3D_(a1, a6, v7);
}

double sub_1AF37072C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_objCType(a1, a2, a3);
  if (strcmp(v4, "{CATransform3D=dddddddddddddddd}"))
  {
    return *&VFXMatrix4Identity;
  }

  result = 0.0;
  if (a1)
  {
    objc_msgSend_CATransform3DValue(a1, v5, v6);
    *&result = vcvt_hight_f32_f64(vcvt_f32_f64(0), 0).u64[0];
  }

  return result;
}

__CFString *sub_1AF3707E0(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_floatValue(a1, v3, v4);
    return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, @"%.2f", v5);
  }

  v8 = objc_msgSend_objCType(a1, v3, v4);
  if (!strcmp(v8, "{?=ff}"))
  {
    *&v84 = 0;
    objc_msgSend_getValue_size_(a1, v9, &v84, 8);
    return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v20, @"%.2f %.2f", *&v84, *(&v84 + 1));
  }

  v11 = objc_msgSend_objCType(a1, v9, v10);
  if (!strcmp(v11, "{?=fff}"))
  {
    DWORD2(v84) = 0;
    *&v84 = 0;
    objc_msgSend_getValue_size_(a1, v12, &v84, 12);
    return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21, @"%.2f %.2f %.2f", *&v84, *(&v84 + 1), *(&v84 + 2));
  }

  v14 = objc_msgSend_objCType(a1, v12, v13);
  if (!strcmp(v14, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    v84 = 0u;
    v85 = 0u;
    objc_msgSend_getValue_size_(a1, v15, &v84, 32);
    return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v22, @"%.2f %.2f %.2f %.2f", v84, v85);
  }

  v17 = objc_msgSend_objCType(a1, v15, v16);
  if (strcmp(v17, "{CATransform3D=dddddddddddddddd}"))
  {

    return objc_msgSend_description(a1, v18, v19);
  }

  objc_msgSend_VFXMatrix4Value(a1, v18, v19);
  v29 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v25)), v26, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL));
  v30 = vmulq_f32(v24, vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL));
  v73 = (v30.f32[2] + vaddv_f32(*v30.f32)) < 0.0;
  v31 = 1.0;
  if (v73)
  {
    v31 = -1.0;
  }

  v32 = vmulq_f32(v24, v24);
  v33 = vmulq_f32(v25, v25);
  v34 = vadd_f32(vzip1_s32(*v32.i8, *v33.i8), vzip2_s32(*v32.i8, *v33.i8));
  v35 = vextq_s8(v32, v32, 8uLL);
  *v35.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v35.f32, *&vextq_s8(v33, v33, 8uLL)), v34));
  v36 = vmulq_f32(v26, v26);
  v35.i32[2] = sqrtf(v36.f32[2] + vaddv_f32(*v36.f32));
  v37 = vmulq_n_f32(v35, v31);
  v38 = vcltzq_f32(v37);
  v39 = vmvnq_s8(vorrq_s8(v38, vcgezq_f32(v37)));
  v39.i32[3] = v39.i32[2];
  v39.i32[0] = vmaxvq_u32(v39);
  v38.i32[0] = -1;
  v40 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v39, v38), 0), v37, 0);
  v41 = vceqzq_f32(v40);
  v41.i32[3] = v41.i32[2];
  if ((vmaxvq_u32(v41) & 0x80000000) != 0)
  {
    return @"non-affine matrix";
  }

  v42 = vdivq_f32(v24, vdupq_lane_s32(*v40.f32, 0));
  v43 = vdivq_f32(v25, vdupq_lane_s32(*v40.f32, 1));
  v44 = vdivq_f32(v26, vdupq_laneq_s32(v40, 2));
  v45 = vmulq_f32(v42, v42);
  v46 = vmulq_f32(v43, v43);
  v47 = vmulq_f32(v44, v44);
  v48 = vzip2q_s32(v45, v47);
  v49 = vzip1q_s32(vzip1q_s32(v45, v47), v46);
  v50 = vtrn2q_s32(v45, v46);
  v50.i32[2] = v47.i32[1];
  v51 = vaddq_f32(vzip1q_s32(v48, vdupq_laneq_s32(v46, 2)), vaddq_f32(v49, v50));
  v50.i64[0] = 0x80000000800000;
  v50.i64[1] = 0x80000000800000;
  v52 = vcgeq_f32(v50, v51);
  v51.i32[3] = 0;
  v53 = vrsqrteq_f32(v51);
  v54 = vmulq_f32(v53, vrsqrtsq_f32(v51, vmulq_f32(v53, v53)));
  v55 = v52;
  v55.i32[3] = 0;
  v56 = vbslq_s8(vcltzq_s32(v55), v51, vmulq_f32(v54, vrsqrtsq_f32(v51, vmulq_f32(v54, v54))));
  v57 = vmulq_n_f32(v42, v56.f32[0]);
  v58 = vmulq_lane_f32(v43, *v56.f32, 1);
  v59 = vmulq_laneq_f32(v44, v56, 2);
  v60 = vuzp1q_s32(v59, v59);
  v61 = vuzp1q_s32(v58, v58);
  v62 = v57;
  if (v52.i32[0])
  {
    v63 = vmlaq_f32(vmulq_f32(vextq_s8(v60, v59, 0xCuLL), vnegq_f32(v58)), v59, vextq_s8(v61, v58, 0xCuLL));
    v62 = vextq_s8(vuzp1q_s32(v63, v63), v63, 0xCuLL);
  }

  v64 = vuzp1q_s32(v57, v57);
  v65 = v58;
  if (v52.i32[1])
  {
    v66 = vmlaq_f32(vmulq_f32(vextq_s8(v64, v57, 0xCuLL), vnegq_f32(v59)), v57, vextq_s8(v60, v59, 0xCuLL));
    v65 = vextq_s8(vuzp1q_s32(v66, v66), v66, 0xCuLL);
  }

  if (v52.i32[2])
  {
    v67 = vmlaq_f32(vmulq_f32(vextq_s8(v61, v58, 0xCuLL), vnegq_f32(v57)), v58, vextq_s8(v64, v57, 0xCuLL));
    v59 = vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL);
  }

  v68 = (*v62.i32 + *&v65.i32[1]) + v59.f32[2];
  if (v68 <= 0.0)
  {
    v73 = *v62.i32 < *&v65.i32[1] || *v62.i32 < v59.f32[2];
    if (v73)
    {
      if (*&v65.i32[1] <= v59.f32[2])
      {
        v80 = vzip2q_s32(v62, v65).u64[0];
        v81 = __PAIR64__(v62.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v59.f32[2] + 1.0) - *v62.i32) - *&v65.i32[1])));
        v82 = vdup_lane_s32(*v65.i8, 0);
        v83 = vsub_f32(*v62.i8, v82);
        v82.i32[0] = v81.i32[0];
        v82.i32[0] = vmul_f32(v81, v82).u32[0];
        v82.i32[1] = v83.i32[1];
        *v70.f32 = vadd_f32(v80, *v59.f32);
        *&v70.u32[2] = v82;
        v71 = 0.5 / v81.f32[0];
        goto LABEL_25;
      }

      v75 = sqrtf(((*&v65.i32[1] + 1.0) - *v62.i32) - v59.f32[2]);
      v79.f32[0] = *&v62.i32[1] + *v65.i32;
      v74 = vzip2q_s32(v62, v65).u64[0];
      v79.f32[1] = v75 * v75;
      *&v79.u32[2] = vext_s8(vadd_f32(*v59.f32, v74), vsub_f32(*v59.f32, v74), 4uLL);
    }

    else
    {
      v75 = sqrtf(((*v62.i32 + 1.0) - *&v65.i32[1]) - v59.f32[2]);
      v79.f32[0] = v75 * v75;
      v76 = *&v62.i32[1] + *v65.i32;
      v77 = vzip2q_s32(v62, v65).u64[0];
      LODWORD(v78) = vadd_f32(v77, *v59.f32).u32[0];
      HIDWORD(v78) = vsub_f32(v77, *&v59).i32[1];
      v79.f32[1] = v76;
      v79.i64[1] = v78;
    }

    v72 = vmulq_n_f32(v79, 0.5 / v75);
    goto LABEL_35;
  }

  v69 = sqrtf(v68 + 1.0);
  *v70.f32 = vsub_f32(*&vzip2q_s32(v65, vuzp1q_s32(v65, v59)), *&vtrn2q_s32(v59, vzip2q_s32(v59, v62)));
  v70.f32[2] = *&v62.i32[1] - *v65.i32;
  v70.f32[3] = v69 * v69;
  v71 = 0.5 / v69;
LABEL_25:
  v72 = vmulq_n_f32(v70, v71);
LABEL_35:
  result = @"non-affine matrix";
  if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(v72, v72))) & 0x80000000) == 0 && (v39.i32[0] & 0x80000000) == 0)
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v23, @"p[%.2f %.2f %.2f] q[%.2f %.2f %.2f %.2f] s[%.2f %.2f %.2f]", *&v27, *(&v27 + 1), v28, v72.f32[0], v72.f32[1], v72.f32[2], v72.f32[3], v40.f32[0], v40.f32[1], v40.f32[2]);
  }

  return result;
}

uint64_t sub_1AF370D38(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  v6 = objc_msgSend_objCType(a1, v3, v4);
  if (!strcmp(v6, "{CGPoint=dd}"))
  {
    return 2;
  }

  v9 = objc_msgSend_objCType(a1, v7, v8);
  if (!strcmp(v9, "{?=ff}"))
  {
    return 2;
  }

  v12 = objc_msgSend_objCType(a1, v10, v11);
  if (!strcmp(v12, "{?=fff}"))
  {
    return 3;
  }

  v15 = objc_msgSend_objCType(a1, v13, v14);
  if (!strcmp(v15, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    return 4;
  }

  v18 = objc_msgSend_objCType(a1, v16, v17);
  if (!strcmp(v18, "{?=ffff}"))
  {
    return 4;
  }

  v21 = objc_msgSend_objCType(a1, v19, v20);
  return 16 * (strcmp(v21, "{CATransform3D=dddddddddddddddd}") == 0);
}

id sub_1AF370E2C(void *a1, const char *a2, void *a3)
{
  v5 = objc_msgSend_length(a3, a2, a3);
  if (v5 == 3)
  {
    v26 = objc_msgSend_objCType(a1, v6, v7);
    if (!strcmp(v26, "{CATransform3D=dddddddddddddddd}"))
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      if (a1)
      {
        objc_msgSend_CATransform3DValue(a1, v27, v28);
      }

      v30 = objc_msgSend_characterAtIndex_(a3, v27, 1);
      v32 = objc_msgSend_characterAtIndex_(a3, v31, 2);
      if ((v30 - 53) >= 0xFFFFFFFC && (v32 - 53) > 0xFFFFFFFB)
      {
        return objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v33, v34, *(&v42 + (v32 + 4 * v30 - 245)));
      }
    }

    goto LABEL_13;
  }

  if (v5 != 1 || (v8 = objc_msgSend_characterAtIndex_(a3, v6, 0), (v8 & 0xFFFC) != 0x78))
  {
LABEL_13:
    v41.receiver = a1;
    v41.super_class = &off_1F2613378;
    return objc_msgSendSuper2(&v41, sel_valueForUndefinedKey_, a3);
  }

  v9 = v8;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = objc_msgSend_objCType(a1, v10, v11);
    if (!strcmp(v12, "{?=ff}"))
    {
      *&v42 = 0;
      objc_msgSend_getValue_size_(a1, v13, &v42, 8);
      v38 = MEMORY[0x1E696AD98];
      v39 = &v42 + 4;
      if (v9 == 120)
      {
        v39 = &v42;
      }
    }

    else
    {
      v15 = objc_msgSend_objCType(a1, v13, v14);
      if (!strcmp(v15, "{CGPoint=dd}"))
      {
        v42 = 0uLL;
        objc_msgSend_getValue_size_(a1, v16, &v42, 16);
        v38 = MEMORY[0x1E696AD98];
        if (v9 == 120)
        {
          v40 = &v42;
        }

        else
        {
          v40 = &v42 + 1;
        }

        v37 = *v40;
        *&v37 = *v40;
        return objc_msgSend_numberWithFloat_(v38, v35, v36, v37);
      }

      v18 = objc_msgSend_objCType(a1, v16, v17);
      if (strcmp(v18, "{?=fff}"))
      {
        v21 = objc_msgSend_objCType(a1, v19, v20);
        if (!strcmp(v21, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
        {
          v42 = 0u;
          v43 = 0u;
          objc_msgSend_getValue_size_(a1, v22, &v42, 32);
          if (v9 > 121)
          {
            if (v9 == 122)
            {
              return objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v23, v24, *&v43);
            }

            else
            {
              return objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v23, v24, *(&v43 + 1));
            }
          }

          else if (v9 == 120)
          {
            return objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v23, v24, *&v42);
          }

          else
          {
            return objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v23, v24, *(&v42 + 1));
          }
        }

        goto LABEL_13;
      }

      DWORD2(v42) = 0;
      *&v42 = 0;
      objc_msgSend_getValue_size_(a1, v19, &v42, 12);
      v38 = MEMORY[0x1E696AD98];
      if (v9 == 120)
      {
        LODWORD(v37) = v42;
        return objc_msgSend_numberWithFloat_(v38, v35, v36, v37);
      }

      v39 = &v42 + 4;
      if (v9 != 122)
      {
        v39 = &v42 + 8;
      }
    }

    LODWORD(v37) = *v39;
    return objc_msgSend_numberWithFloat_(v38, v35, v36, v37);
  }

  return a1;
}

CFTypeRef sub_1AF3710D4(CFTypeRef cf)
{
  if (!cf)
  {
    return cf;
  }

  v2 = CFGetTypeID(cf);
  if (v2 != CGColorGetTypeID())
  {
    return cf;
  }

  v4 = MEMORY[0x1E69DC888];

  return objc_msgSend_colorWithCGColor_(v4, v3, cf);
}

double sub_1AF37113C(void *a1, const char *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = objc_msgSend_stringByResolvingSymlinksInPath(a1, a2, a3);
  v14 = 0;
  v6 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v4, v5);
  v8 = objc_msgSend_attributesOfItemAtPath_error_(v6, v7, v3, &v14);
  v10 = objc_msgSend_objectForKey_(v8, v9, *MEMORY[0x1E696A350]);
  if (!v10)
  {
    return 0.0;
  }

  objc_msgSend_timeIntervalSinceReferenceDate(v10, v11, v12);
  return result;
}

uint64_t sub_1AF3711B4(void *a1, uint64_t a2, unsigned int a3)
{
  v6 = a3;
  v7 = sub_1AF288070(a2, a2) + a3;
  v8 = malloc_type_malloc(v7, 0xA909A235uLL);
  v9 = v8;
  if (a3)
  {
    *v8 = a2;
  }

  sub_1AF376368(a1, &v8[v6], a2);
  v11 = MEMORY[0x1E695DEF0];

  return objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v11, v10, v9, v7, 1);
}

uint64_t VFXDataFromValue(void *a1, const char *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  v5 = objc_msgSend_objCType(a1, a2, a3);
  v6 = sub_1AF376144(v5);
  if (!v6)
  {
    return 0;
  }

  return sub_1AF3711B4(a1, v6, v3);
}

void *sub_1AF3712AC(void *result, const char *a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = objc_msgSend_bytes(result, a2, a3);
    v9 = objc_msgSend_length(v5, v7, v8);
    v11 = sub_1AF288070(a2, v10);
    if (v11 + a3 <= v9)
    {
      sub_1AF288070(a2, v12);
      __memcpy_chk();
      return sub_1AF376790((v6 + a3), a2, v14);
    }

    else
    {
      if ((byte_1EB658E88 & 1) == 0)
      {
        byte_1EB658E88 = 1;
        v13 = sub_1AF0D5194(v11, v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDFAF10();
        }
      }

      return 0;
    }
  }

  return result;
}

void *VFXValueFromData(void *result, const char *a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    v4 = *objc_msgSend_bytes(result, a2, a3);

    return sub_1AF3712AC(v3, v4, 1);
  }

  return result;
}

void *VFXDataFromArrayOfValues(void *a1, const char *a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  result = objc_msgSend_count(a1, a2, a3);
  if (result)
  {
    v6 = objc_msgSend_objectAtIndexedSubscript_(a1, v5, 0);
    v9 = sub_1AF37673C(v6, v7, v8);
    v11 = sub_1AF1CDAAC(v9, v10);
    if (v11)
    {
      v13 = v11;
      v14 = sub_1AF1CDB3C(v9, v12);
      CFRelease(v9);
      v17 = objc_msgSend_count(a1, v15, v16) * v14 + 6;
      v18 = malloc_type_malloc(v17, 0x2C9D45A8uLL);
      *v18 = objc_msgSend_count(a1, v19, v20);
      v18[2] = v13;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v21, &v30, v34, 16);
      if (v22)
      {
        v24 = v22;
        v25 = (v18 + 3);
        v26 = *v31;
        do
        {
          v27 = 0;
          do
          {
            if (*v31 != v26)
            {
              objc_enumerationMutation(a1);
            }

            sub_1AF376368(*(*(&v30 + 1) + 8 * v27), v25, v13);
            v25 += v14;
            ++v27;
          }

          while (v24 != v27);
          v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v28, &v30, v34, 16);
        }

        while (v24);
      }

      return objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v23, v18, v17, 1);
    }

    else
    {
      v29 = sub_1AF0D5194(v11, v12);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDFAF44();
      }

      CFRelease(v9);
      return 0;
    }
  }

  return result;
}

void *VFXArrayOfValueFromData(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_bytes(a1, a2, a3);
  v6 = *(v4 + 2);
  if (!*(v4 + 2))
  {
    v19 = sub_1AF0D5194(v4, v5);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFAFAC();
    }

    return 0;
  }

  v7 = v4;
  v8 = *v4;
  v9 = sub_1AF288070(*(v4 + 2), v5);
  v12 = objc_msgSend_length(a1, v10, v11);
  if (v9 * v8 + 6 != v12)
  {
    v20 = sub_1AF0D5194(v12, v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFAF78();
    }

    return 0;
  }

  v14 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v13, v8);
  if (v8)
  {
    v15 = v7 + 6;
    do
    {
      memset(v22, 0, sizeof(v22));
      __memcpy_chk();
      v17 = sub_1AF376790(v22, v6, v16);
      v15 += v9;
      objc_msgSend_addObject_(v14, v18, v17);
      LODWORD(v8) = v8 - 1;
    }

    while (v8);
  }

  return v14;
}

BOOL sub_1AF3716AC(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = objc_msgSend_rangeOfString_(a1, a2, @".");
  v8 = v7;
  if (v7 == 1)
  {
    v9 = v6;
    *a2 = objc_msgSend_substringWithRange_(a1, 1, 0, v6);
    v12 = objc_msgSend_length(a1, v10, v11);
    v14 = objc_msgSend_substringWithRange_(a1, v13, v9 + 1, v12 + ~v9);
  }

  else
  {
    v14 = 0;
    *a2 = a1;
  }

  *a3 = v14;
  return v8 == 1;
}

const void *sub_1AF37174C(void *a1, uint64_t a2)
{
  v4 = sub_1AF1C4990(a1, a2);
  v5 = sub_1AF1C4A5C(v4, a1, 1, a2);
  v6 = v5;
  if (v5)
  {
    CFAutorelease(v5);
  }

  return v6;
}

uint64_t sub_1AF371798(const void *a1, uint64_t a2)
{
  v3 = sub_1AF3710D4(a1);

  return objc_msgSend_vfx_CFXColorIgnoringColorSpace_success_(v3, v4, a2, 0);
}

double CFXColorGetLinearExtendedSRGBComponents(const void *a1)
{
  v1 = sub_1AF3710D4(a1);
  v4 = objc_msgSend_CGColor(v1, v2, v3);
  if (!v4)
  {
    return 0.0;
  }

  return sub_1AF1644C8(v4, v5);
}

uint64_t sub_1AF371824(void *a1, const char *a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, @"directional"))
  {
    return 2;
  }

  if (objc_msgSend_isEqualToString_(a1, v4, @"spot"))
  {
    return 3;
  }

  if (objc_msgSend_isEqualToString_(a1, v6, @"omni"))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(a1, v7, @"ambient"))
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(a1, v8, @"area"))
  {
    return 5;
  }

  if (objc_msgSend_isEqualToString_(a1, v9, @"ies"))
  {
    return 6;
  }

  isEqualToString = objc_msgSend_isEqualToString_(a1, v10, @"probe");
  if ((isEqualToString & 1) == 0)
  {
    v13 = sub_1AF0D5194(isEqualToString, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFAFE0(a1, v13);
    }

    return 2;
  }

  return 4;
}

uint64_t sub_1AF371924(void *a1, CFTypeRef cf, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = sub_1AF3710D4(cf);
  v8 = objc_msgSend_CGColor(v5, v6, v7);
  if (v8)
  {
    *&v10 = sub_1AF1644C8(v8, v9);
  }

  else
  {
    v10 = xmmword_1AFE201A0;
  }

  v12 = v10;
  return objc_msgSend_encodeBytes_length_forKey_(a1, v9, &v12, 16, a3);
}

uint64_t sub_1AF3719B4(void *a1, const char *a2)
{
  v10 = 0;
  v2 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, a2, a2, &v10);
  v4 = 0uLL;
  if (v10 == 16)
  {
    v4 = *v2;
  }

  v5 = sub_1AF16484C(v2, v3, v4);
  if (!v5)
  {
    return 0;
  }

  v7 = v5;
  v8 = objc_msgSend_colorWithCGColor_(MEMORY[0x1E69DC888], v6, v5);
  CFRelease(v7);
  return v8;
}

uint64_t sub_1AF371A30(void *a1, const char *a2, double a3)
{
  v4[1] = *MEMORY[0x1E69E9840];
  *v4 = a3;
  return objc_msgSend_encodeBytes_length_forKey_(a1, a2, v4, 8, a2);
}

uint64_t sub_1AF371A8C(void *a1, const char *a2, __n128 a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = a3.n128_u64[0];
  v5 = a3.n128_u32[2];
  return objc_msgSend_encodeBytes_length_forKey_(a1, a2, &v4, 12, a2);
}

uint64_t sub_1AF371AF4(void *a1, const char *a2, __n128 a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a3;
  return objc_msgSend_encodeBytes_length_forKey_(a1, a2, &v4, 16, a2);
}

uint64_t sub_1AF371B50(void *a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7[0] = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  return objc_msgSend_encodeBytes_length_forKey_(a1, a2, v7, 64, a2);
}

double sub_1AF371B84(void *a1, const char *a2)
{
  v4 = 0;
  v2 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, a2, a2, &v4);
  result = 0.0;
  if (v4 == 8)
  {
    return *v2;
  }

  return result;
}

double sub_1AF371BC4(void *a1, const char *a2)
{
  v4 = 0;
  v2 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, a2, a2, &v4);
  result = 0.0;
  if (v4 == 12)
  {
    return *v2;
  }

  return result;
}

__n128 sub_1AF371C0C(void *a1, const char *a2)
{
  v4 = 0;
  v2 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, a2, a2, &v4);
  result.n128_u64[0] = 0;
  if (v4 == 16)
  {
    return *v2;
  }

  return result;
}

__n128 sub_1AF371C4C(void *a1, const char *a2)
{
  v5 = 0;
  v2 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, a2, a2, &v5);
  if (v5 == 64)
  {
    v3 = v2;
  }

  else
  {
    v3 = &VFXMatrix4Identity;
  }

  return *v3;
}

uint64_t sub_1AF371C94(void *a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3);
  v6 = *a2;
  v8 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v7, *a2);
  objc_msgSend_setValue_forKey_(v5, v9, v8, @"type");
  v10 = *(a2 + 1);
  v13 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12);
  v16 = v13;
  if (v6 > 1)
  {
    switch(v6)
    {
      case 2:
        v19 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696B098], v14, v15, *v10, v10[1]);
        objc_msgSend_addObject_(v16, v20, v19);
        v17 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696B098], v21, v22, v10[2], v10[3]);
        break;
      case 3:
        v23 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696B098], v14, v15, *v10, v10[1]);
        objc_msgSend_addObject_(v16, v24, v23);
        v27 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696B098], v25, v26, v10[2], v10[3]);
        objc_msgSend_addObject_(v16, v28, v27);
        v17 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696B098], v29, v30, v10[4], v10[5]);
        break;
      case 4:
        goto LABEL_11;
      default:
        goto LABEL_12;
    }

LABEL_10:
    objc_msgSend_addObject_(v16, v18, v17);
    goto LABEL_11;
  }

  if (v6 <= 1)
  {
    v17 = objc_msgSend_VFX_valueWithCGPoint_(MEMORY[0x1E696B098], v14, v15, *v10, v10[1]);
    goto LABEL_10;
  }

LABEL_12:
  v33 = sub_1AF0D5194(v13, v14);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 0;
    _os_log_impl(&dword_1AF0CE000, v33, OS_LOG_TYPE_DEFAULT, "Warning: CGPath archiving: unknown path element type", v34, 2u);
  }

LABEL_11:
  objc_msgSend_setValue_forKey_(v5, v14, v16, @"points");
  return objc_msgSend_addObject_(a1, v31, v5);
}

CGPath *sub_1AF371E30(void *a1)
{
  v67 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  Mutable = CGPathCreateMutable();
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v3, &v62, v66, 16);
  if (v4)
  {
    v6 = v4;
    v7 = *v63;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v63 != v7)
        {
          objc_enumerationMutation(a1);
        }

        v9 = *(*(&v62 + 1) + 8 * i);
        v10 = objc_msgSend_objectForKey_(v9, v5, @"type");
        v13 = objc_msgSend_intValue(v10, v11, v12);
        v15 = objc_msgSend_objectForKey_(v9, v14, @"points");
        v16 = v15;
        if (v13 <= 1)
        {
          if (v13)
          {
            if (v13 == 1)
            {
              v17 = objc_msgSend_objectAtIndex_(v15, v5, 0);
              objc_msgSend_VFX_CGPointValue(v17, v18, v19);
              CGPathAddLineToPoint(Mutable, 0, v20, v21);
            }
          }

          else
          {
            v56 = objc_msgSend_objectAtIndex_(v15, v5, 0);
            objc_msgSend_VFX_CGPointValue(v56, v57, v58);
            CGPathMoveToPoint(Mutable, 0, v59, v60);
          }
        }

        else
        {
          switch(v13)
          {
            case 2:
              v22 = objc_msgSend_objectAtIndex_(v15, v5, 0);
              objc_msgSend_VFX_CGPointValue(v22, v23, v24);
              v26 = v25;
              v28 = v27;
              v30 = objc_msgSend_objectAtIndex_(v16, v29, 1);
              objc_msgSend_VFX_CGPointValue(v30, v31, v32);
              CGPathAddQuadCurveToPoint(Mutable, 0, v26, v28, v33, v34);
              break;
            case 3:
              v35 = objc_msgSend_objectAtIndex_(v15, v5, 0);
              objc_msgSend_VFX_CGPointValue(v35, v36, v37);
              v39 = v38;
              v41 = v40;
              v43 = objc_msgSend_objectAtIndex_(v16, v42, 1);
              objc_msgSend_VFX_CGPointValue(v43, v44, v45);
              v47 = v46;
              v49 = v48;
              v51 = objc_msgSend_objectAtIndex_(v16, v50, 2);
              objc_msgSend_VFX_CGPointValue(v51, v52, v53);
              CGPathAddCurveToPoint(Mutable, 0, v39, v41, v47, v49, v54, v55);
              break;
            case 4:
              CGPathCloseSubpath(Mutable);
              break;
          }
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v5, &v62, v66, 16);
    }

    while (v6);
  }

  return Mutable;
}

void *sub_1AF3720AC(void *result, const CGPath *a2, _DWORD *a3, uint64_t a4)
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v7 = result;
    v8 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3);
    CGPathApply(a2, v8, sub_1AF371C94);
    if (a3)
    {
      v15[1] = @"flatness";
      v16[0] = v8;
      v15[0] = @"path";
      LODWORD(v11) = *a3;
      v16[1] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v9, v10, v11);
      v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v16, v15, 2);
      return objc_msgSend_encodeObject_forKey_(v7, v14, v13, a4);
    }

    else
    {

      return objc_msgSend_encodeObject_forKey_(v7, v9, v8, a4);
    }
  }

  return result;
}

void *sub_1AF3721F0(void *a1, void *a2, uint64_t a3)
{
  objc_msgSend_flatness(a2, a2, a3);
  *&v6 = v6;
  v11 = LODWORD(v6);
  v9 = objc_msgSend_CGPath(a2, v7, v8);
  return sub_1AF3720AC(a1, v9, &v11, a3);
}

CGPath *sub_1AF372254(void *a1, uint64_t a2)
{
  result = sub_1AF37228C(a1, a2, 0);
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

CGPath *sub_1AF37228C(void *a1, uint64_t a2, _DWORD *a3)
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v12 = objc_msgSend_setWithObjects_(v6, v11, v7, v8, v9, v10, 0);
  v14 = objc_msgSend_decodeObjectOfClasses_forKey_(a1, v13, v12, a2);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a3)
      {
        v16 = objc_msgSend_valueForKey_(v14, v15, @"flatness");
        objc_msgSend_floatValue(v16, v17, v18);
        *a3 = v19;
      }

      v14 = objc_msgSend_valueForKey_(v14, v15, @"path");
    }

    else
    {
      v14 = 0;
    }
  }

  return sub_1AF371E30(v14);
}

void *sub_1AF3723C4(void *a1, uint64_t a2)
{
  v9 = -1.0;
  v2 = sub_1AF37228C(a1, a2, &v9);
  if (!v2)
  {
    return 0;
  }

  v4 = v2;
  v5 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x1E69DC728], v3, v2);
  CFRelease(v4);
  if (v9 >= 0.0)
  {
    objc_msgSend_setFlatness_(v5, v6, v7, v9);
  }

  return v5;
}

void *sub_1AF372440(void *a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(a2, a2, a3);
  result = sub_1AF16CCC0(v4, v5);
  if (result)
  {

    return objc_msgSend_encodeObject_forKey_(a1, v7, result, @"entityID");
  }

  return result;
}

CFTypeRef sub_1AF37249C(void *a1, void *a2)
{
  v4 = objc_opt_class();
  result = objc_msgSend_decodeObjectOfClass_forKey_(a1, v5, v4, @"entityID");
  if (result)
  {
    v9 = result;
    v10 = objc_msgSend___CFObject(a2, v7, v8);

    return sub_1AF16CD6C(v10, v9);
  }

  return result;
}

void sub_1AF372510(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v10 = objc_msgSend_textureType(a2, a2, a3);
  if (v5 && objc_msgSend_mipmapLevelCount(a2, v8, v9) > 1 || VFXMTLTextureTypeIsCube(v10) || VFXMTLTextureTypeIsArray(v10))
  {
    v14 = sub_1AF1F3328(a2, v5);
    if (v14)
    {
      objc_msgSend_encodeObject_forKey_(a1, v13, v14, a4);
    }
  }

  else
  {
    v15 = sub_1AF1F2C7C(a2, v11, v12);
    Mutable = CFDataCreateMutable(0, 0);
    v19 = objc_msgSend_identifier(*MEMORY[0x1E6982E00], v17, v18);
    v20 = CGImageDestinationCreateWithData(Mutable, v19, 1uLL, 0);
    CGImageDestinationAddImage(v20, v15, 0);
    CGImageDestinationFinalize(v20);
    CFRelease(v20);
    objc_msgSend_encodeObject_forKey_(a1, v21, Mutable, a4);
    CFRelease(Mutable);
    CFRelease(v15);
  }
}

void sub_1AF372628(_Unwind_Exception *a1, int a2)
{
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  objc_begin_catch(a1);

  objc_end_catch();
}

void *sub_1AF37266C(void *a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], a2, a2, 1, 0);
  if (result)
  {
    return objc_msgSend_encodeObject_forKey_(a1, v6, result, a3);
  }

  return result;
}

uint64_t sub_1AF3726E8(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (a3)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_setByAddingObject_(v3, v7, v6);
  }

  else
  {
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v8 = objc_msgSend_setWithObject_(v10, v12, v11);
  }

  v13 = objc_msgSend_decodeObjectOfClasses_forKey_(a1, v9, v8, a2);
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (objc_msgSend_requiresSecureCoding(a1, v14, v15))
      {
        v17 = objc_alloc(MEMORY[0x1E696ACD0]);
        v20 = objc_msgSend_initForReadingFromData_error_(v17, v18, v13, 0);
        if (!v3)
        {
          if (qword_1ED737C38 != -1)
          {
            sub_1AFDFB058();
          }

          v3 = qword_1ED737C30;
        }

        v13 = objc_msgSend_vfx_decodeObjectOfClasses_forKey_(v20, v19, v3, *MEMORY[0x1E696A508]);
        objc_msgSend_finishDecoding(v20, v21, v22);
      }

      else
      {
        return objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x1E696ACD0], v16, v3, v13, 0);
      }
    }
  }

  return v13;
}

void sub_1AF372820(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v5 = sub_1AF0D5194(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFB06C(v2, v5);
    }

    objc_end_catch();
    JUMPOUT(0x1AF372800);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF37287C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED737C38 != -1)
  {
    sub_1AFDFB058();
  }

  return qword_1ED737C30;
}

void *sub_1AF3728B4(void *a1, void *a2, uint64_t a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_animationKeys(a2, a2, a3);
  if (v4)
  {
    v7 = v4;
    if (objc_msgSend_count(v4, v5, v6))
    {
      v8 = MEMORY[0x1E695DF70];
      v9 = objc_msgSend_count(v7, v5, v6);
      v11 = objc_msgSend_arrayWithCapacity_(v8, v10, v9);
      v12 = MEMORY[0x1E695DF70];
      v15 = objc_msgSend_count(v7, v13, v14);
      v17 = objc_msgSend_arrayWithCapacity_(v12, v16, v15);
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v18, &v60, v67, 16);
      if (v19)
      {
        v22 = v19;
        v23 = *v61;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v61 != v23)
            {
              objc_enumerationMutation(v7);
            }

            v25 = *(*(&v60 + 1) + 8 * i);
            v26 = objc_msgSend_animationPlayerForKey_(a2, v20, v25);
            objc_msgSend_addObject_(v17, v27, v25);
            objc_msgSend_addObject_(v11, v28, v26);
          }

          v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v20, &v60, v67, 16);
        }

        while (v22);
      }

      if (objc_msgSend_count(v17, v20, v21))
      {
        objc_msgSend_encodeObject_forKey_(a1, v5, v11, @"animation-players");
        objc_msgSend_encodeObject_forKey_(a1, v29, v17, @"animation-keys");
      }
    }
  }

  result = objc_msgSend__vfxBindings(a2, v5, v6);
  if (result)
  {
    v33 = result;
    v34 = MEMORY[0x1E695DF70];
    v35 = objc_msgSend_count(result, v31, v32);
    v37 = objc_msgSend_arrayWithCapacity_(v34, v36, v35);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v38, &v56, v66, 16);
    if (v39)
    {
      v41 = v39;
      v42 = *v57;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v57 != v42)
          {
            objc_enumerationMutation(v33);
          }

          v44 = objc_msgSend_valueForKey_(v33, v40, *(*(&v56 + 1) + 8 * j));
          if (objc_msgSend_sourceObject(v44, v45, v46))
          {
            v64[0] = @"sourceObject";
            v65[0] = objc_msgSend_sourceObject(v44, v40, v47);
            v64[1] = @"keyPathSrc";
            v65[1] = objc_msgSend_keyPathSrc(v44, v48, v49);
            v64[2] = @"keyPathDst";
            v65[2] = objc_msgSend_keyPathDst(v44, v50, v51);
            v53 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v52, v65, v64, 3);
            objc_msgSend_addObject_(v37, v54, v53);
          }
        }

        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v40, &v56, v66, 16);
      }

      while (v41);
    }

    return objc_msgSend_encodeObject_forKey_(a1, v40, v37, @"bindings");
  }

  return result;
}

void *sub_1AF372B94(void *a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v6 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(a1, v5, v4, @"animation-keys");
  v7 = objc_opt_class();
  v9 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(a1, v8, v7, @"animation-players");
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v10, &v37, v42, 16);
  if (v11)
  {
    v13 = v11;
    v14 = 0;
    v15 = *v38;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v6);
        }

        v17 = *(*(&v37 + 1) + 8 * i);
        v18 = objc_msgSend_objectAtIndex_(v9, v12, v14);
        if (v18)
        {
          objc_msgSend_addAnimationPlayer_forKey_(a2, v12, v18, v17);
        }

        ++v14;
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v12, &v37, v42, 16);
    }

    while (v13);
  }

  if (qword_1ED737C38 != -1)
  {
    sub_1AFDFB0E4();
  }

  result = objc_msgSend_vfx_decodeArrayOfObjectsOfClasses_containingNestedContainersForKey_(a1, v12, qword_1ED737C30, @"bindings");
  obj = result;
  if (result)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    result = objc_msgSend_countByEnumeratingWithState_objects_count_(result, v20, &v33, v41, 16);
    if (result)
    {
      v22 = result;
      v23 = *v34;
      do
      {
        v24 = 0;
        do
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v33 + 1) + 8 * v24);
          v26 = objc_msgSend_objectForKeyedSubscript_(v25, v21, @"sourceObject");
          v28 = objc_msgSend_objectForKeyedSubscript_(v25, v27, @"keyPathSrc");
          v30 = objc_msgSend_objectForKeyedSubscript_(v25, v29, @"keyPathDst");
          objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(a2, v31, v30, v26, v28, 0);
          v24 = v24 + 1;
        }

        while (v22 != v24);
        result = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v33, v41, 16);
        v22 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t sub_1AF372E08(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_path(a1, a2, a3);
  v6 = objc_msgSend_rangeOfString_(v4, v5, @".app/Contents/");
  if (!v7 || (v9 = objc_msgSend_substringFromIndex_(v4, v7, &v7[v6])) == 0)
  {
    v9 = objc_msgSend_path(a1, v7, v8);
    if (!v9)
    {
      return 0;
    }
  }

  v10 = v9;
  v11 = objc_msgSend_pathComponents(v9, v7, v8);
  v14 = objc_msgSend_count(v11, v12, v13);
  if (!v14)
  {
    return 0;
  }

  v17 = v14;
  v50 = a1;
  v18 = VFXGetResourceBundle(v14, v15, v16);
  PathComponent = objc_msgSend_lastPathComponent(v10, v19, v20);
  v24 = objc_msgSend_stringByDeletingPathExtension(PathComponent, v22, v23);
  v27 = objc_msgSend_pathExtension(v10, v25, v26);
  v30 = v17 - 1;
  if (v17 == 1)
  {
LABEL_12:
    v40 = MEMORY[0x1E69DCAB8];
    v41 = objc_msgSend_lastPathComponent(v50, v28, v29);
    v43 = objc_msgSend_imageNamed_(v40, v42, v41);
  }

  else
  {
    v31 = v27;
    v32 = 0;
    while (1)
    {
      v34 = objc_msgSend_count(v11, v28, v29) - 1;
      v35 = &stru_1F2575650;
      if (v34 > v32)
      {
        v36 = v32;
        v35 = &stru_1F2575650;
        do
        {
          v37 = objc_msgSend_objectAtIndex_(v11, v33, v36);
          v35 = objc_msgSend_stringByAppendingPathComponent_(v35, v38, v37);
          ++v36;
        }

        while (v34 != v36);
      }

      v39 = objc_msgSend_pathForResource_ofType_inDirectory_(v18, v33, v24, v31, v35);
      if (v39)
      {
        break;
      }

      if (++v32 == v30)
      {
        goto LABEL_12;
      }
    }

    v47 = v39;
    v48 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v43 = objc_msgSend_initWithContentsOfFile_(v48, v49, v47);
  }

  return objc_msgSend_CGImage(v43, v44, v45);
}

void *VFXResolveImageContents(void *a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = a1;
    a1 = 0;
    v7 = objc_msgSend_scheme(v6, v4, v5);
  }

  else
  {
    objc_opt_class();
    v6 = 0;
    v11 = 0;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return v11;
    }

    v7 = objc_msgSend_scheme(0, v9, v10);
  }

  if (objc_msgSend_isEqualToString_(v7, v8, @"imageNamed"))
  {
    v14 = objc_msgSend_absoluteString(v6, v12, v13);
  }

  else
  {
    if (a1)
    {
      goto LABEL_10;
    }

    if (!objc_msgSend_isFileURL(v6, v12, v13) || objc_msgSend_query(v6, v12, v15))
    {
      goto LABEL_22;
    }

    v14 = objc_msgSend_path(v6, v12, v15);
  }

  a1 = v14;
  if (!v14)
  {
LABEL_22:
    a1 = 0;
    if (!v6)
    {
      return 0;
    }

    v40 = 0;
    goto LABEL_24;
  }

LABEL_10:
  if (objc_msgSend_hasPrefix_(a1, v12, @"imageNamed://"))
  {
    v17 = objc_msgSend_substringFromIndex_(a1, v16, 13);
    v19 = objc_msgSend_imageNamed_(MEMORY[0x1E69DCAB8], v18, v17);
    if (v19)
    {
      return v19;
    }

    else
    {
      return v17;
    }
  }

  v20 = objc_msgSend_rangeOfString_(a1, v16, @".app/Contents/");
  if (v21)
  {
    v20 = objc_msgSend_substringFromIndex_(a1, v21, &v21[v20]);
    if (v20)
    {
      v23 = v20;
      v24 = VFXGetResourceBundle(v20, v21, v22);
      v27 = objc_msgSend_stringByDeletingPathExtension(v23, v25, v26);
      v30 = objc_msgSend_pathExtension(v23, v28, v29);
      v20 = objc_msgSend_URLForResource_withExtension_(v24, v31, v27, v30);
      if (v20)
      {
        return v20;
      }
    }
  }

  v32 = VFXGetResourceBundle(v20, v21, v22);
  v35 = objc_msgSend_stringByDeletingPathExtension(a1, v33, v34);
  v38 = objc_msgSend_pathExtension(a1, v36, v37);
  v20 = objc_msgSend_URLForResource_withExtension_(v32, v39, v35, v38);
  if (v20)
  {
    return v20;
  }

  if (v6)
  {
    v40 = 1;
LABEL_24:
    if (!objc_msgSend_isFileURL(v6, v12, v15))
    {
      return v6;
    }

    v43 = objc_msgSend_query(v6, v41, v42);
    if (v43)
    {
      return v6;
    }

    v46 = 0;
    v11 = v6;
    goto LABEL_31;
  }

  v43 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v12, a1);
  v11 = v43;
  v46 = 1;
  v40 = 1;
LABEL_31:
  v47 = VFXGetResourceBundle(v43, v44, v45);
  PathComponent = objc_msgSend_lastPathComponent(v11, v48, v49);
  v53 = objc_msgSend_pathExtension(v11, v51, v52);
  v20 = objc_msgSend_URLForResource_withExtension_(v47, v54, PathComponent, v53);
  if (v20)
  {
    return v20;
  }

  if ((objc_msgSend_checkResourceIsReachableAndReturnError_(v11, v55, 0) & 1) == 0)
  {
    v58 = v40 ^ 1;
    if (!a2)
    {
      v58 = 1;
    }

    if ((v58 & 1) != 0 || ((v59 = objc_msgSend_URLByAppendingPathComponent_(a2, v57, a1), v62 = objc_msgSend_URLByStandardizingPath(v59, v60, v61), v62 == v59) || (v11 = v62, (objc_msgSend_checkResourceIsReachableAndReturnError_(v62, v63, 0) & 1) == 0)) && (v11 = v59, (objc_msgSend_checkResourceIsReachableAndReturnError_(v59, v63, 0) & 1) == 0) && ((v66 = objc_msgSend_lastPathComponent(a1, v64, v65), v68 = objc_msgSend_URLByAppendingPathComponent_(a2, v67, v66), v71 = objc_msgSend_URLByStandardizingPath(v68, v69, v70), v71 == v68) || (v11 = v71, (objc_msgSend_checkResourceIsReachableAndReturnError_(v71, v72, 0) & 1) == 0)) && (v11 = v68, (objc_msgSend_checkResourceIsReachableAndReturnError_(v68, v72, 0) & 1) == 0))
    {
      if (v46)
      {
        return a1;
      }

      else
      {
        return v6;
      }
    }
  }

  return v11;
}

id sub_1AF3732A8(id result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v5 = objc_msgSend_valueForKey_(v2, v4, @"type");
      if (objc_msgSend_isEqualToString_(v5, v6, @"MDLSkyCubeTexture"))
      {
        v8 = objc_alloc(MEMORY[0x1E6974BC0]);
        v10 = objc_msgSend_objectForKeyedSubscript_(v2, v9, @"name");
        v12 = objc_msgSend_objectForKeyedSubscript_(v2, v11, @"channelEncoding");
        v15 = objc_msgSend_integerValue(v12, v13, v14);
        v17 = objc_msgSend_objectForKeyedSubscript_(v2, v16, @"dimensions.x");
        objc_msgSend_floatValue(v17, v18, v19);
        v118 = v20;
        v22 = objc_msgSend_objectForKeyedSubscript_(v2, v21, @"dimensions.x");
        objc_msgSend_floatValue(v22, v23, v24);
        v26 = COERCE_DOUBLE(vcvt_s32_f32(__PAIR64__(v25, v118)));
        v28 = objc_msgSend_objectForKeyedSubscript_(v2, v27, @"turbidity");
        objc_msgSend_floatValue(v28, v29, v30);
        v32 = v31;
        v34 = objc_msgSend_objectForKeyedSubscript_(v2, v33, @"sunElevation");
        objc_msgSend_floatValue(v34, v35, v36);
        v38 = v37;
        v40 = objc_msgSend_objectForKeyedSubscript_(v2, v39, @"upperAtmosphereScattering");
        objc_msgSend_floatValue(v40, v41, v42);
        v44 = v43;
        v46 = objc_msgSend_objectForKeyedSubscript_(v2, v45, @"groundAlbedo");
        objc_msgSend_floatValue(v46, v47, v48);
        LODWORD(v50) = v49;
        LODWORD(v51) = v32;
        LODWORD(v52) = v38;
        LODWORD(v53) = v44;
        v55 = objc_msgSend_initWithName_channelEncoding_textureDimensions_turbidity_sunElevation_upperAtmosphereScattering_groundAlbedo_(v8, v54, v10, v15, v26, v51, v52, v53, v50);
        v57 = objc_msgSend_objectForKeyedSubscript_(v2, v56, @"horizonElevation");
        objc_msgSend_floatValue(v57, v58, v59);
        objc_msgSend_setHorizonElevation_(v55, v60, v61);
        v63 = objc_msgSend_objectForKeyedSubscript_(v2, v62, @"gamma");
        objc_msgSend_floatValue(v63, v64, v65);
        objc_msgSend_setGamma_(v55, v66, v67);
        v69 = objc_msgSend_objectForKeyedSubscript_(v2, v68, @"exposure");
        objc_msgSend_floatValue(v69, v70, v71);
        objc_msgSend_setExposure_(v55, v72, v73);
        v75 = objc_msgSend_objectForKeyedSubscript_(v2, v74, @"brightness");
        objc_msgSend_floatValue(v75, v76, v77);
        objc_msgSend_setBrightness_(v55, v78, v79);
        v81 = objc_msgSend_objectForKeyedSubscript_(v2, v80, @"contrast");
        objc_msgSend_floatValue(v81, v82, v83);
        objc_msgSend_setContrast_(v55, v84, v85);
        v87 = objc_msgSend_objectForKeyedSubscript_(v2, v86, @"saturation");
        objc_msgSend_floatValue(v87, v88, v89);
        objc_msgSend_setSaturation_(v55, v90, v91);
        v93 = objc_msgSend_objectForKeyedSubscript_(v2, v92, @"groundColor");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v95 = MEMORY[0x1E696ACD0];
          v96 = objc_opt_class();
          v98 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v95, v97, v96, v93, 0);
          if (v98)
          {
            v100 = objc_msgSend_CGColor(v98, v94, v99);
            objc_msgSend_setGroundColor_(v55, v101, v100);
          }
        }

        v102 = objc_msgSend_objectForKeyedSubscript_(v2, v94, @"highDynamicRangeCompression.x");
        objc_msgSend_floatValue(v102, v103, v104);
        v119 = v105;
        v107 = objc_msgSend_objectForKeyedSubscript_(v2, v106, @"highDynamicRangeCompression.y");
        objc_msgSend_floatValue(v107, v108, v109);
        objc_msgSend_setHighDynamicRangeCompression_(v55, v110, v111, COERCE_DOUBLE(__PAIR64__(v112, v119)));
        objc_msgSend_updateTexture(v55, v113, v114);

        return v55;
      }

      else
      {
        result = objc_msgSend_valueForKey_(v2, v7, @"data");
        if (!result)
        {
          result = objc_msgSend_valueForKey_(v2, v116, @"path");
          if (!result)
          {

            return objc_msgSend_valueForKey_(v2, v117, @"URL");
          }
        }
      }
    }

    else
    {
      v115 = sub_1AF0D5194(isKindOfClass, v4);
      if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDFB10C(v115);
      }

      return 0;
    }
  }

  return result;
}

id sub_1AF373644(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObject_(v4, v6, v5);
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v14 = objc_msgSend_setWithObjects_(v8, v13, v9, v10, v11, v12, 0);
  v16 = objc_msgSend_vfx_decodeDictionaryWithKeysOfClasses_objectsOfClasses_forKey_(a1, v15, v7, v14, a2);

  return sub_1AF3732A8(v16, v17);
}

void *sub_1AF373720(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_options(a1, v4, v5);
    v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"VFXWorldExportEmbedImages");
    v11 = objc_msgSend_BOOLValue(v8, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1AF195E98(a2, v4);
  if (v12)
  {
    v15 = v12;
    v16 = objc_msgSend_query(v12, v13, v14);
    v19 = (objc_msgSend_length(v16, v17, v18) != 0) | v11;
    v23 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v20, v21);
    if ((v19 & 1) == 0)
    {
      objc_msgSend_setObject_forKey_(v23, v22, v15, @"URL");
      return v23;
    }
  }

  else
  {
    v23 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v13, v14);
  }

  v24 = sub_1AF197458(a2, v22);
  if (v24)
  {
    v26 = v24;
LABEL_10:
    objc_msgSend_setObject_forKey_(v23, v25, v26, @"data");
    return v23;
  }

  v28 = sub_1AF196A24(a2, v25);
  if (v28)
  {
    v30 = v28;
    v31 = objc_msgSend_imageWithCGImage_(MEMORY[0x1E69DCAB8], v29, v28);
    v26 = UIImagePNGRepresentation(v31);
    CGImageRelease(v30);
    if (v26)
    {
      goto LABEL_10;
    }
  }

  return v23;
}

uint64_t sub_1AF373844(uint64_t a1, uint64_t a2)
{
  if (qword_1ED737C48 != -1)
  {
    sub_1AFDFB150();
  }

  return qword_1ED737C40;
}

void *sub_1AF37387C()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  result = objc_msgSend_initWithObjects_(v0, v9, v1, v2, v3, v4, v5, v6, v7, v8, 0);
  qword_1ED737C40 = result;
  return result;
}

uint64_t sub_1AF373968(uint64_t a1, uint64_t a2)
{
  if (qword_1ED737C28 != -1)
  {
    sub_1AFDFB164();
  }

  return qword_1ED737C20;
}

void *sub_1AF3739A0()
{
  v27 = objc_alloc(MEMORY[0x1E695DFD8]);
  v26 = objc_opt_class();
  v25 = objc_opt_class();
  v24 = objc_opt_class();
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = sub_1AF2DCBEC();
  if (!v2)
  {
    v2 = objc_opt_class();
  }

  v3 = sub_1AF2DCBF8();
  if (!v3)
  {
    v3 = objc_opt_class();
  }

  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  result = objc_msgSend_initWithObjects_(v27, v11, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, 0);
  qword_1ED737C20 = result;
  return result;
}

id sub_1AF373C20(uint64_t a1, uint64_t a2)
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (qword_1ED737C28 != -1)
  {
    sub_1AFDFB164();
  }

  v2 = qword_1ED737C20;
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v3, v7, 2);
  result = objc_msgSend_setByAddingObjectsFromArray_(v2, v5, v4);
  qword_1ED737C30 = result;
  return result;
}

void sub_1AF373CD8(void *a1, void *a2, uint64_t a3)
{
  v125[18] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_msgSend_options(a1, v6, v7);
    v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"VFXWorldExportEmbedImages");
    v13 = objc_msgSend_BOOLValue(v10, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v13 & 1) == 0)
  {
    v16 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v14, v15);
    objc_msgSend_setObject_forKey_(v16, v17, a2, @"path");
LABEL_7:

    objc_msgSend_encodeObject_forKey_(a1, v18, v16, a3);
    return;
  }

  objc_opt_class();
  if (!(v13 & 1 | ((objc_opt_isKindOfClass() & 1) == 0)))
  {
    v21 = objc_msgSend_query(a2, v19, v20);
    if (!objc_msgSend_length(v21, v22, v23))
    {
      v16 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v24, v25);
      objc_msgSend_setObject_forKey_(v16, v40, a2, @"URL");
      goto LABEL_7;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (objc_msgSend_groundColor(a2, v26, v27))
    {
      v30 = MEMORY[0x1E69DC888];
      v31 = objc_msgSend_groundColor(a2, v28, v29);
      v33 = objc_msgSend_colorWithCGColor_(v30, v32, v31);
      v35 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v34, v33, 1, 0);
    }

    else
    {
      v35 = 0;
    }

    v125[0] = @"MDLSkyCubeTexture";
    v124[0] = @"type";
    v124[1] = @"name";
    v41 = objc_msgSend_name(a2, v28, v29);
    if (v41)
    {
      v44 = v41;
    }

    else
    {
      v44 = &stru_1F2575650;
    }

    v125[1] = v44;
    v124[2] = @"turbidity";
    v45 = MEMORY[0x1E696AD98];
    objc_msgSend_turbidity(a2, v42, v43);
    v125[2] = objc_msgSend_numberWithFloat_(v45, v46, v47);
    v124[3] = @"sunElevation";
    v48 = MEMORY[0x1E696AD98];
    objc_msgSend_sunElevation(a2, v49, v50);
    v125[3] = objc_msgSend_numberWithFloat_(v48, v51, v52);
    v124[4] = @"upperAtmosphereScattering";
    v53 = MEMORY[0x1E696AD98];
    objc_msgSend_upperAtmosphereScattering(a2, v54, v55);
    v125[4] = objc_msgSend_numberWithFloat_(v53, v56, v57);
    v124[5] = @"groundAlbedo";
    v58 = MEMORY[0x1E696AD98];
    objc_msgSend_groundAlbedo(a2, v59, v60);
    v125[5] = objc_msgSend_numberWithFloat_(v58, v61, v62);
    v124[6] = @"horizonElevation";
    v63 = MEMORY[0x1E696AD98];
    objc_msgSend_horizonElevation(a2, v64, v65);
    v125[6] = objc_msgSend_numberWithFloat_(v63, v66, v67);
    v124[7] = @"gamma";
    v68 = MEMORY[0x1E696AD98];
    objc_msgSend_gamma(a2, v69, v70);
    v125[7] = objc_msgSend_numberWithFloat_(v68, v71, v72);
    v124[8] = @"exposure";
    v73 = MEMORY[0x1E696AD98];
    objc_msgSend_exposure(a2, v74, v75);
    v125[8] = objc_msgSend_numberWithFloat_(v73, v76, v77);
    v124[9] = @"brightness";
    v78 = MEMORY[0x1E696AD98];
    objc_msgSend_brightness(a2, v79, v80);
    v125[9] = objc_msgSend_numberWithFloat_(v78, v81, v82);
    v124[10] = @"contrast";
    v83 = MEMORY[0x1E696AD98];
    objc_msgSend_contrast(a2, v84, v85);
    v125[10] = objc_msgSend_numberWithFloat_(v83, v86, v87);
    v124[11] = @"saturation";
    v88 = MEMORY[0x1E696AD98];
    objc_msgSend_saturation(a2, v89, v90);
    v125[11] = objc_msgSend_numberWithFloat_(v88, v91, v92);
    v124[12] = @"channelEncoding";
    v93 = MEMORY[0x1E696AD98];
    v96 = objc_msgSend_channelEncoding(a2, v94, v95);
    v125[12] = objc_msgSend_numberWithInteger_(v93, v97, v96);
    v124[13] = @"dimensions.x";
    v98 = MEMORY[0x1E696AD98];
    objc_msgSend_dimensions(a2, v99, v100);
    v125[13] = objc_msgSend_numberWithInt_(v98, v102, v101);
    v124[14] = @"dimensions.y";
    v103 = MEMORY[0x1E696AD98];
    objc_msgSend_dimensions(a2, v104, v105);
    v125[14] = objc_msgSend_numberWithInt_(v103, v107, v106);
    v124[15] = @"highDynamicRangeCompression.x";
    v108 = MEMORY[0x1E696AD98];
    objc_msgSend_highDynamicRangeCompression(a2, v109, v110);
    v125[15] = objc_msgSend_numberWithFloat_(v108, v111, v112);
    v124[16] = @"highDynamicRangeCompression.y";
    v113 = MEMORY[0x1E696AD98];
    objc_msgSend_highDynamicRangeCompression(a2, v114, v115);
    LODWORD(v116) = HIDWORD(v116);
    v119 = objc_msgSend_numberWithFloat_(v113, v117, v118, v116);
    v124[17] = @"groundColor";
    if (v35)
    {
      v121 = v35;
    }

    else
    {
      v121 = &stru_1F2575650;
    }

    v125[16] = v119;
    v125[17] = v121;
    v122 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v120, v125, v124, 18);
    objc_msgSend_encodeObject_forKey_(a1, v123, v122, a3);
  }

  else
  {
    v36 = objc_msgSend_copyCFXImageFromImage_(VFXMaterialProperty, v26, a2);
    if (v36)
    {
      v37 = v36;
      v38 = sub_1AF373720(a1, v36);
      objc_msgSend_encodeObject_forKey_(a1, v39, v38, a3);

      CFRelease(v37);
    }
  }
}

uint64_t sub_1AF3741F8(void *a1, char *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v7, &v18, v22, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(a2);
        }

        v13 = objc_msgSend_copyCFXImageFromImage_(VFXMaterialProperty, v9, *(*(&v18 + 1) + 8 * v12));
        if (v13)
        {
          v14 = v13;
          v15 = sub_1AF373720(a1, v13);
          objc_msgSend_addObject_(v6, v16, v15);
          CFRelease(v14);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v9, &v18, v22, 16);
    }

    while (v10);
  }

  return objc_msgSend_encodeObject_forKey_(a1, v9, v6, a3);
}

void *sub_1AF374344(void *a1, const char *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (qword_1ED737C48 != -1)
  {
    sub_1AFDFB150();
  }

  v4 = objc_msgSend_decodeObjectOfClasses_forKey_(a1, a2, qword_1ED737C40, a2);
  if (!v4)
  {
    return 0;
  }

  v7 = v4;
  v8 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v17, v21, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = sub_1AF3732A8(*(*(&v17 + 1) + 8 * i), v11);
        if (v15)
        {
          objc_msgSend_addObject_(v8, v11, v15);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v11, &v17, v21, 16);
    }

    while (v12);
  }

  return v8;
}

void sub_1AF37448C(void *a1, void *a2, uint64_t a3)
{
  v6 = CFXMTLCreateSystemDefaultDevice();
  v8 = objc_msgSend_newTextureForDevice_(a2, v7, v6);
  v11 = objc_msgSend_newCommandQueue(v6, v9, v10);
  v14 = objc_msgSend_commandBuffer(v11, v12, v13);
  v32 = 0;
  v33 = &v32;
  v34 = 0x3052000000;
  v35 = sub_1AF374720;
  v36 = sub_1AF374730;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = sub_1AF374720;
  v30 = sub_1AF374730;
  v31 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1AF37473C;
  v25[3] = &unk_1E7A7F9E8;
  v25[5] = &v26;
  v25[6] = &v32;
  v25[4] = v14;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1AF3747D4;
  v24[3] = &unk_1E7A7FA10;
  v24[5] = &v32;
  v24[6] = &v26;
  v24[4] = v14;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1AF37486C;
  v23[3] = &unk_1E7A7E160;
  v23[4] = v14;
  v15 = sub_1AFDF3774([_VFXCoderMaterialPropertyTextureProviderHelper alloc], v6, v11);
  objc_msgSend_renderToTexture_computeCommandHandler_blitCommandHandler_completionHandler_helper_(a2, v16, v8, v25, v24, v23, v15);
  v19 = v27[5];
  if (v19)
  {
    objc_msgSend_endEncoding(v19, v17, v18);
    v27[5] = 0;
  }

  v20 = v33[5];
  if (v20)
  {
    objc_msgSend_endEncoding(v20, v17, v18);
    v33[5] = 0;
  }

  objc_msgSend_commit(v14, v17, v18);
  objc_msgSend_waitUntilCompleted(v14, v21, v22);

  sub_1AF372510(a1, v8, 0, a3);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
}

void sub_1AF3746FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF37473C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = result;
    v5 = *(*(*(result + 40) + 8) + 40);
    if (v5)
    {
      objc_msgSend_endEncoding(v5, a2, a3);
      *(*(*(v4 + 40) + 8) + 40) = 0;
    }

    v6 = *(*(*(v4 + 48) + 8) + 40);
    if (!v6)
    {
      *(*(*(v4 + 48) + 8) + 40) = objc_msgSend_computeCommandEncoder(*(v4 + 32), 0, a3);
      v6 = *(*(*(v4 + 48) + 8) + 40);
    }

    v7 = *(a2 + 16);

    return v7(a2, v6);
  }

  return result;
}

uint64_t sub_1AF3747D4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = result;
    v5 = *(*(*(result + 40) + 8) + 40);
    if (v5)
    {
      objc_msgSend_endEncoding(v5, a2, a3);
      *(*(*(v4 + 40) + 8) + 40) = 0;
    }

    v6 = *(*(*(v4 + 48) + 8) + 40);
    if (!v6)
    {
      *(*(*(v4 + 48) + 8) + 40) = objc_msgSend_blitCommandEncoder(*(v4 + 32), 0, a3);
      v6 = *(*(*(v4 + 48) + 8) + 40);
    }

    v7 = *(a2 + 16);

    return v7(a2, v6);
  }

  return result;
}

id *sub_1AF37486C(id *result, const char *a2)
{
  if (a2)
  {
    return objc_msgSend_addCompletedHandler_(result[4], a2, a2);
  }

  return result;
}

void *sub_1AF374880(void *a1, const char *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_mutableCopy(a1, a2, a3);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v5, &v17, v21, 16);
  if (v6)
  {
    v7 = v6;
    LODWORD(v8) = 0;
    v9 = *v18;
    do
    {
      v10 = 0;
      v8 = v8;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(a1);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          v14 = objc_msgSend_VFXMutableDeepCopy(v11, v12, v13);
          objc_msgSend_replaceObjectAtIndex_withObject_(v4, v15, v8, v14);
        }

        ++v8;
        ++v10;
      }

      while (v7 != v10);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v12, &v17, v21, 16);
    }

    while (v7);
  }

  return v4;
}

void *sub_1AF3749C0(void *a1, const char *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_mutableCopy(a1, a2, a3);
  v6 = objc_msgSend_allKeys(v3, v4, v5);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v19, v23, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = objc_msgSend_objectForKeyedSubscript_(v3, v9, v13);
        if (objc_opt_respondsToSelector())
        {
          v16 = objc_msgSend_VFXMutableDeepCopy(v14, v9, v15);
          objc_msgSend_setObject_forKeyedSubscript_(v3, v17, v16, v13);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v19, v23, 16);
    }

    while (v10);
  }

  return v3;
}

CFStringRef sub_1AF375358(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = sub_1AF3753A8(a1);
  return CFStringCreateWithFormat(v2, 0, @"<%s %p>", v3, a1);
}

const char *sub_1AF3753A8(const void *a1)
{
  if (!a1)
  {
    return "<null>";
  }

  v2 = CFGetTypeID(a1);
  if (MEMORY[0x1B271C3B0](v2, a1))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);

    return objc_msgSend_cStringUsingEncoding_(v5, v6, 1);
  }

  else
  {

    return sub_1AF375434(v2, v3);
  }
}

const char *sub_1AF375434(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFB178(v2);
    }
  }

  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (ClassWithTypeID)
  {
    return *(ClassWithTypeID + 8);
  }

  else
  {
    return "<null>";
  }
}

uint64_t sub_1AF37610C(void *a1, void *a2, void *a3)
{
  v3 = a1[2];
  v4 = *a1 + a1[1];
  v5 = *(v4 + v3 * *a2);
  v6 = *(v4 + v3 * *a3);
  if (v6 > v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  if (v6 == v5)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1AF376144(char *__s1)
{
  v2 = *__s1;
  if (v2 > 0x62)
  {
    if (*__s1 <= 0x68u)
    {
      if (v2 != 99)
      {
        if (v2 == 100)
        {
          if (!__s1[1])
          {
            return 6;
          }
        }

        else if (v2 == 102 && !__s1[1])
        {
          return 1;
        }

        goto LABEL_29;
      }

LABEL_20:
      if (!__s1[1])
      {
        return 4;
      }

      goto LABEL_29;
    }

    if (v2 != 105)
    {
      if (v2 != 113)
      {
        if (v2 != 115)
        {
          goto LABEL_29;
        }

        goto LABEL_16;
      }

      goto LABEL_22;
    }

    goto LABEL_24;
  }

  if (*__s1 > 0x48u)
  {
    if (v2 != 73)
    {
      if (v2 != 81)
      {
        if (v2 != 83)
        {
          goto LABEL_29;
        }

LABEL_16:
        if (!__s1[1])
        {
          return 13;
        }

        goto LABEL_29;
      }

LABEL_22:
      if (!__s1[1])
      {
        return 45;
      }

      goto LABEL_29;
    }

LABEL_24:
    if (!__s1[1])
    {
      return 2;
    }

    goto LABEL_29;
  }

  if (v2 == 66)
  {
    if (!__s1[1])
    {
      return 3;
    }

    goto LABEL_29;
  }

  if (v2 == 67)
  {
    goto LABEL_20;
  }

LABEL_29:
  if (!strcmp(__s1, "{CATransform3D=dddddddddddddddd}"))
  {
    return 10;
  }

  if (!strcmp(__s1, "{CGPoint=dd}"))
  {
    return 7;
  }

  if (!strcmp(__s1, "{?=ffff}") || !strcmp(__s1, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    return 9;
  }

  if (!strcmp(__s1, "{?=fff}"))
  {
    return 8;
  }

  if (v2 == 64)
  {
    return 5;
  }

  return 0;
}

const void *sub_1AF3762E4(void *a1, uint64_t a2)
{
  v4 = sub_1AF1CD954(a2, a2);
  v6 = sub_1AF1CDA60(v4, v5);
  v7 = sub_1AF376368(a1, v6, a2);
  if ((v7 & 1) == 0)
  {
    v9 = sub_1AF0D5194(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFB45C(a1, v9);
    }

    CFRelease(v4);
    return 0;
  }

  return v4;
}

uint64_t sub_1AF376368(void *a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  switch(a3)
  {
    case 1:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }
      }

      objc_msgSend_floatValue(a1, v18, v19);
      *a2 = v20;
      return 1;
    case 2:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }
      }

      *a2 = objc_msgSend_intValue(a1, v30, v31);
      return 1;
    case 3:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }
      }

      v23 = objc_msgSend_BOOLValue(a1, v26, v27);
      goto LABEL_28;
    case 4:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }

      v23 = objc_msgSend_charValue(a1, v21, v22);
      goto LABEL_28;
    case 5:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }

      v15 = objc_msgSend_pointerValue(a1, v28, v29);
      goto LABEL_39;
    case 6:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }
      }

      objc_msgSend_doubleValue(a1, v34, v35);
      *a2 = v36;
      return 1;
    case 7:
    case 17:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = 0uLL;
        sub_1AF1CDDFC(a1, &v45, 2u);
        goto LABEL_35;
      }

      objc_msgSend_CGPointValue(a1, v6, v7);
      *&v24 = v24;
      *&v25 = v25;
      *a2 = LODWORD(v24);
      *(a2 + 4) = LODWORD(v25);
      return 1;
    case 8:
    case 18:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = 0uLL;
        sub_1AF1CDC80(a1, &v45, 3u);
        *a2 = v45;
        *(a2 + 8) = DWORD2(v45);
      }

      else
      {
        objc_msgSend_VFXFloat3Value(a1, v8, v9);
        *a2 = v16;
        *(a2 + 8) = v17;
      }

      return 1;
    case 9:
    case 19:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_34;
    case 10:
      objc_msgSend_VFXMatrix4Value(a1, a2, a3);
      *a2 = v37;
      *(a2 + 16) = v38;
      *(a2 + 32) = v39;
      *(a2 + 48) = v40;
      return 1;
    case 11:
    case 13:
    case 14:
    case 16:
      return result;
    case 12:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_34:
        v45 = 0uLL;
        sub_1AF1CDC80(a1, &v45, 4u);
LABEL_35:
        v12 = v45;
        goto LABEL_36;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = objc_msgSend_vfx_CFXColorIgnoringColorSpace_success_(a1, v41, 0, 0);
        *(a2 + 8) = v42;
LABEL_39:
        *a2 = v15;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
LABEL_7:
          objc_msgSend_VFXFloat4Value(a1, v10, v11);
LABEL_36:
          *a2 = v12;
        }
      }

      return 1;
    case 15:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }

      v23 = objc_msgSend_unsignedCharValue(a1, v32, v33);
LABEL_28:
      *a2 = v23;
      return 1;
    default:
      if (a3 != 45)
      {
        return result;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = objc_msgSend_longValue(a1, v13, v14);
        goto LABEL_39;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *a2 = objc_msgSend_intValue(a1, v43, v44);
        return 1;
      }

      return 0;
  }
}

const void *sub_1AF37673C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_objCType(a1, a2, a3);
  v5 = sub_1AF376144(v4);
  if (!v5)
  {
    return 0;
  }

  return sub_1AF3762E4(a1, v5);
}

uint64_t sub_1AF376790(double *a1, const char *a2, double a3)
{
  if (a2 <= 6)
  {
    if (a2 <= 3)
    {
      switch(a2)
      {
        case 1:
          LODWORD(a3) = *a1;
          return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], a2, a1, a3);
        case 2:
          return objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, *a1, a3);
        case 3:
          return objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, *a1, a3);
      }

      return 0;
    }

    if (a2 == 4)
    {
      return MEMORY[0x1EEE66B58](MEMORY[0x1E696AD98], sel_numberWithChar_, *a1);
    }

    else if (a2 == 5)
    {
      return objc_msgSend_valueWithPointer_(MEMORY[0x1E696B098], a2, *a1, a3);
    }

    else
    {
      return objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a1, *a1);
    }
  }

  else
  {
    if (a2 > 9)
    {
      if (a2 > 14)
      {
        if (a2 == 15)
        {
          return objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], a2, *a1, a3);
        }

        if (a2 == 45)
        {
          return objc_msgSend_numberWithLong_(MEMORY[0x1E696AD98], a2, *a1, a3);
        }
      }

      else
      {
        if (a2 == 10)
        {
          return objc_msgSend_valueWithVFXMatrix4_(MEMORY[0x1E696B098], a2, a1, *a1, a1[2], a1[4], a1[6]);
        }

        if (a2 == 12)
        {
          return objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], a2, a1, a3);
        }
      }

      return 0;
    }

    if (a2 == 7)
    {
      return objc_msgSend_valueWithCGPoint_(MEMORY[0x1E696B098], a2, a1, *a1, *(a1 + 1));
    }

    else if (a2 == 8)
    {
      return objc_msgSend_valueWithVFXFloat3_(MEMORY[0x1E696B098], a2, a1, *a1);
    }

    else
    {
      return objc_msgSend_valueWithVFXFloat4_(MEMORY[0x1E696B098], a2, a1, *a1);
    }
  }
}

void *sub_1AF376904(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  v19 = *MEMORY[0x1E69E9840];
  switch(a1)
  {
    case 1:
    case 14:
      v8 = MEMORY[0x1E696AD98];

      result = objc_msgSend_numberWithFloat_(v8, a2, a3, 0.0);
      break;
    case 2:
      v15 = MEMORY[0x1E696AD98];

      result = objc_msgSend_numberWithInteger_(v15, a2, 0);
      break;
    case 3:
      v13 = MEMORY[0x1E696AD98];

      result = objc_msgSend_numberWithBool_(v13, a2, 0);
      break;
    case 4:
    case 15:
    case 20:
    case 21:
      v4 = MEMORY[0x1E696AD98];

      result = objc_msgSend_numberWithUnsignedChar_(v4, a2, 0);
      break;
    case 5:
      v14 = MEMORY[0x1E696AD98];

      result = objc_msgSend_numberWithUnsignedLong_(v14, a2, 0);
      break;
    case 6:
      v17 = MEMORY[0x1E696AD98];

      result = objc_msgSend_numberWithDouble_(v17, a2, a3, 0.0);
      break;
    case 7:
    case 17:
      v9 = MEMORY[0x1E696B098];

      result = objc_msgSend_valueWithCGPoint_(v9, a2, a3, 0.0, 0.0);
      break;
    case 8:
    case 18:
      v10 = MEMORY[0x1E696B098];

      result = objc_msgSend_valueWithVFXFloat3_(v10, a2, a3, 0.0);
      break;
    case 9:
    case 12:
    case 19:
      v6 = MEMORY[0x1E696B098];

      result = objc_msgSend_valueWithVFXFloat4_(v6, a2, a3, 0.0);
      break;
    case 10:
    case 11:
      v7 = MEMORY[0x1E696B098];

      result = objc_msgSend_valueWithVFXMatrix4_(v7, a2, a3, *&VFXMatrix4Identity, 0.0078125, 0.0, 0.0);
      break;
    case 13:
    case 16:
      v11 = MEMORY[0x1E696AD98];

      result = objc_msgSend_numberWithUnsignedShort_(v11, a2, 0);
      break;
    case 45:
      v16 = MEMORY[0x1E696AD98];

      result = objc_msgSend_numberWithLong_(v16, a2, 0);
      break;
    default:
      v12 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18[0] = 67109120;
        v18[1] = v3;
        _os_log_impl(&dword_1AF0CE000, v12, OS_LOG_TYPE_DEFAULT, "Warning: VFXDefaultValueWithBaseType - unknwon base type %d", v18, 8u);
      }

      result = 0;
      break;
  }

  return result;
}

objc_property *sub_1AF376D10(objc_class *a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_UTF8String(a2, a2, a3);
  result = class_getProperty(a1, v4);
  if (result)
  {
    Attributes = property_getAttributes(result);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, Attributes);
    v10 = objc_msgSend_componentsSeparatedByString_(v8, v9, @",");
    v12 = objc_msgSend_objectAtIndex_(v10, v11, 0);
    v14 = objc_msgSend_substringFromIndex_(v12, v13, 1);
    v17 = objc_msgSend_UTF8String(v14, v15, v16);

    return sub_1AF376144(v17);
  }

  return result;
}

const void *sub_1AF376D98(void *a1, void *a2)
{
  v4 = objc_opt_class();
  v6 = sub_1AF376D10(v4, a2, v5);
  if (!v6)
  {
    return 0;
  }

  v8 = v6;
  v9 = objc_msgSend_valueForKey_(a1, v7, a2);
  if (v9)
  {
    v11 = v9;
    v12 = sub_1AF1CD954(v8, v10);
    v14 = sub_1AF1CDA60(v12, v13);
    v15 = sub_1AF376368(v11, v14, v8);
    if (v15)
    {
      return v12;
    }

    v17 = sub_1AF0D5194(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFB4D4(a2, a1, v17);
    }

    CFRelease(v12);
    return 0;
  }

  return sub_1AF1CD9FC(v8, v10);
}

uint64_t sub_1AF378310()
{
  result = CGImageGetImageProvider();
  if (result)
  {

    return MEMORY[0x1EEDBA1B8]();
  }

  return result;
}

void sub_1AF378348()
{
  v0 = 0;
  v4[1] = *MEMORY[0x1E69E9840];
  do
  {
    v1 = 0;
    v2 = 0;
    do
    {
      if ((v0 >> v1))
      {
        v3 = v2;
      }

      else
      {
        v3 = 0x80;
      }

      *(v4 + v1) = v3;
      v2 += (v0 >> v1++) & 1;
    }

    while (v1 != 8);
    qword_1ED739AE8[v0] = v4[0];
    byte_1ED73A2E8[v0++] = v2;
  }

  while (v0 != 256);
}

__n64 compute_fog_parameters(float a1, float a2)
{
  v2 = fmaxf(a1, 0.0);
  v3 = fmaxf(a2, 0.0);
  result.n64_u64[0] = 0;
  if (v2 != v3)
  {
    result.n64_f32[0] = 1.0 / (v3 - v2);
    result.n64_f32[1] = -(v2 * result.n64_f32[0]);
  }

  return result;
}

float32x4_t *moveSystem(float32x4_t *result, float32x4_t *a2, unsigned int a3, int32x2_t a4)
{
  if (a3)
  {
    v4 = vdupq_lane_s32(a4, 0);
    v5 = a3;
    __asm { FMOV            V1.4S, #10.0 }

    do
    {
      v11 = vmlaq_f32(*result, v4, *a2);
      v12 = vcgtq_f32(vabsq_f32(v11), _Q1);
      v13 = v12;
      v13.i32[3] = v12.i32[2];
      if ((vmaxvq_u32(v13) & 0x80000000) != 0)
      {
        v12.i32[3] = 0;
        v14 = vbslq_s8(vcltzq_s32(v12), vnegq_f32(*a2), *a2);
        v14.i32[3] = HIDWORD(*a2);
        *a2 = v14;
      }

      else
      {
        v11.i32[3] = HIDWORD(*result);
        *result = v11;
      }

      ++result;
      ++a2;
      --v5;
    }

    while (v5);
  }

  return result;
}

float32x4_t globalClamp(float32x4_t *a1, int8x16_t *a2, float32x4_t a3)
{
  v3.i64[0] = 0x8000000080000000;
  v3.i64[1] = 0x8000000080000000;
  *a2 = veorq_s8(vandq_s8(vcgtq_f32(*a1, a3), v3), *a2);
  result = vmaxnmq_f32(vnegq_f32(a3), vminnmq_f32(*a1, a3));
  *a1 = result;
  return result;
}

float srdnoise3(_OWORD *a1, float a2, float a3, float a4, float a5)
{
  v10 = __sincosf_stret(a5);
  v11 = ((a2 + a3) + a4) * 0.33333;
  v12 = floorf(v11 + a2);
  v13 = floorf(v11 + a3);
  v14 = floorf(v11 + a4);
  v15 = (v14 + (v12 + v13)) * 0.16667;
  v16 = v13 - v15;
  v17 = v14 - v15;
  v18 = a2 - (v12 - v15);
  v19 = a3 - v16;
  v20 = a4 - v17;
  if (v18 >= v19)
  {
    if (v19 >= v20)
    {
      v24 = 0;
      v26 = 0;
      v22 = 0;
      v25 = 1;
      v21 = 1;
      v23 = 1;
    }

    else
    {
      v25 = 0;
      v22 = 0;
      v26 = v18 < v20;
      v23 = v18 >= v20;
      v24 = 1;
      v21 = 1;
    }
  }

  else if (v19 >= v20)
  {
    v26 = 0;
    v23 = 0;
    v24 = v18 < v20;
    v21 = v18 >= v20;
    v25 = 1;
    v22 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 1;
    v25 = 1;
    v26 = 1;
  }

  v27 = (v18 - v23) + 0.16667;
  v28 = (v19 - v22) + 0.16667;
  v29 = (v20 - v26) + 0.16667;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  v33 = ((0.6 - (v18 * v18)) - (v19 * v19)) - (v20 * v20);
  v34 = 0.0;
  v35 = 0.0;
  v36 = 0.0;
  v37 = 0.0;
  v38 = 0.0;
  v39 = 0.0;
  v40 = 0.0;
  v41 = 0.0;
  if (v33 >= 0.0)
  {
    v42 = (&unk_1AFE47EB0 + 12 * (byte_1AFE48030[byte_1AFE48030[byte_1AFE48030[v32] + v31] + v12] & 0xF));
    v43 = (&unk_1AFE47F70 + 12 * (byte_1AFE48030[byte_1AFE48030[byte_1AFE48030[v32] + v31] + v12] & 0xF));
    v35 = (v10.__sinval * *v43) + (v10.__cosval * *v42);
    v36 = (v10.__sinval * v43[1]) + (v10.__cosval * v42[1]);
    v37 = (v10.__sinval * v43[2]) + (v10.__cosval * v42[2]);
    v39 = v33 * v33;
    v40 = v39 * v39;
    v41 = (v39 * v39) * (((v19 * v36) + (v35 * v18)) + (v37 * v20));
    v38 = ((0.6 - (v18 * v18)) - (v19 * v19)) - (v20 * v20);
  }

  v93 = v38;
  v94 = v35;
  v95 = v36;
  v96 = v37;
  v101 = v41;
  v44 = (v18 - v21) + 0.33333;
  v45 = (v19 - v25) + 0.33333;
  v46 = (v20 - v24) + 0.33333;
  v47 = ((0.6 - (v27 * v27)) - (v28 * v28)) - (v29 * v29);
  v48 = 0.0;
  v49 = 0.0;
  v50 = 0.0;
  v51 = 0.0;
  v52 = 0.0;
  v53 = 0.0;
  if (v47 >= 0.0)
  {
    v54 = 3 * (byte_1AFE48030[(v23 + v30) + byte_1AFE48030[v22 + v31 + byte_1AFE48030[v26 + v32]]] & 0xF);
    v55 = (&unk_1AFE47EB0 + 4 * v54);
    v56 = (&unk_1AFE47F70 + 4 * v54);
    v34 = (v10.__sinval * *v56) + (v10.__cosval * *v55);
    v48 = (v10.__sinval * v56[1]) + (v10.__cosval * v55[1]);
    v49 = (v10.__sinval * v56[2]) + (v10.__cosval * v55[2]);
    v51 = v47 * v47;
    v52 = v51 * v51;
    v53 = (v51 * v51) * (((v28 * v48) + (v34 * v27)) + (v49 * v29));
    v50 = ((0.6 - (v27 * v27)) - (v28 * v28)) - (v29 * v29);
  }

  v92 = v49;
  v99 = (v18 - v23) + 0.16667;
  v100 = v53;
  v97 = v29;
  v98 = v28;
  v57 = (v18 + -1.0) + 0.5;
  v58 = (v19 + -1.0) + 0.5;
  v59 = (v20 + -1.0) + 0.5;
  v60 = ((0.6 - (v44 * v44)) - (v45 * v45)) - (v46 * v46);
  v61 = 0.0;
  v62 = 0.0;
  v63 = 0.0;
  v64 = 0.0;
  v65 = 0.0;
  v66 = 0.0;
  v67 = 0.0;
  v68 = 0.0;
  if (v60 >= 0.0)
  {
    v69 = 3 * (byte_1AFE48030[(v21 + v30) + byte_1AFE48030[v25 + v31 + byte_1AFE48030[v24 + v32]]] & 0xF);
    v70 = (&unk_1AFE47EB0 + 4 * v69);
    v71 = (&unk_1AFE47F70 + 4 * v69);
    v62 = (v10.__sinval * *v71) + (v10.__cosval * *v70);
    v63 = (v10.__sinval * v71[1]) + (v10.__cosval * v70[1]);
    v64 = (v10.__sinval * v71[2]) + (v10.__cosval * v70[2]);
    v66 = v60 * v60;
    v67 = v66 * v66;
    v68 = (v66 * v66) * (((v45 * v63) + (v62 * v44)) + (v64 * v46));
    v65 = ((0.6 - (v44 * v44)) - (v45 * v45)) - (v46 * v46);
  }

  v91 = v62;
  v72 = ((0.6 - (v57 * v57)) - (v58 * v58)) - (v59 * v59);
  v73 = 0.0;
  v74 = 0.0;
  v75 = 0.0;
  v76 = 0.0;
  v77 = 0.0;
  v78 = 0.0;
  if (v72 >= 0.0)
  {
    v79 = (&unk_1AFE47EB0 + 12 * (byte_1AFE48030[(v30 + 1) + byte_1AFE48030[v31 + 1 + byte_1AFE48030[v32 + 1]]] & 0xF));
    v80 = (&unk_1AFE47F70 + 12 * (byte_1AFE48030[(v30 + 1) + byte_1AFE48030[v31 + 1 + byte_1AFE48030[v32 + 1]]] & 0xF));
    v61 = (v10.__sinval * *v80) + (v10.__cosval * *v79);
    v73 = (v10.__sinval * v80[1]) + (v10.__cosval * v79[1]);
    v74 = (v10.__sinval * v80[2]) + (v10.__cosval * v79[2]);
    v76 = v72 * v72;
    v77 = v76 * v76;
    v78 = (v76 * v76) * (((v58 * v73) + (v61 * v57)) + (v74 * v59));
    v75 = ((0.6 - (v57 * v57)) - (v58 * v58)) - (v59 * v59);
  }

  if (a1)
  {
    v81 = (((v19 * v95) + (v94 * v18)) + (v96 * v20)) * (v93 * v39);
    *&v9 = (((v98 * v48) + (v34 * v99)) + (v92 * v97)) * (v50 * v51);
    v82 = (v18 * v81) + (*&v9 * v99);
    v83 = (v19 * v81) + (*&v9 * v98);
    v84 = (v20 * v81) + (*&v9 * v97);
    *&v9 = (((v45 * v63) + (v91 * v44)) + (v64 * v46)) * (v65 * v66);
    v85 = v82 + (*&v9 * v44);
    v86 = v83 + (*&v9 * v45);
    v87 = v84 + (*&v9 * v46);
    *&v9 = (((v58 * v73) + (v61 * v57)) + (v74 * v59)) * (v75 * v76);
    v88 = v86 + (*&v9 * v58);
    v89 = (v87 + (*&v9 * v59)) * 8.0;
    *&v9 = (((((v34 * v52) + (v40 * v94)) + (v67 * v91)) + (v77 * v61)) - ((v85 + (*&v9 * v57)) * 8.0)) * 28.0;
    *(&v9 + 1) = (((((v48 * v52) + (v40 * v95)) + (v67 * v63)) + (v77 * v73)) - (v88 * 8.0)) * 28.0;
    *(&v9 + 2) = (((((v92 * v52) + (v40 * v96)) + (v67 * v64)) + (v77 * v74)) - v89) * 28.0;
    *a1 = v9;
  }

  return (((v101 + v100) + v68) + v78) * 28.0;
}

double noised(float32x4_t a1)
{
  v1 = a1;
  v1.i32[3] = 0;
  v2 = vrndmq_f32(v1);
  v3 = vsubq_f32(a1, v2);
  v4 = v2;
  v133 = v2;
  v3.i32[3] = 0;
  v5 = vminnmq_f32(v3, xmmword_1AFE47E30);
  __asm
  {
    FMOV            V1.4S, #6.0
    FMOV            V2.4S, #-15.0
  }

  v12 = vmlaq_f32(_Q2, _Q1, v5);
  __asm { FMOV            V1.4S, #10.0 }

  v128 = v5;
  v129 = vmulq_f32(vmulq_f32(v5, vmulq_f32(v5, v5)), vmlaq_f32(_Q1, v12, v5));
  __asm { FMOV            V0.4S, #30.0 }

  _Q1.i64[0] = 0xC0000000C0000000;
  _Q1.i64[1] = 0xC0000000C0000000;
  __asm { FMOV            V2.4S, #1.0 }

  v127 = _Q2;
  v130 = vmulq_f32(vmulq_f32(v5, vmulq_f32(v5, _Q0)), vmlaq_f32(_Q2, vaddq_f32(v5, _Q1), v5));
  v16 = vaddq_f32(v4, 0);
  v17 = vmulq_f32(v16, xmmword_1AFE47E00);
  v18 = vmulq_f32(v16, xmmword_1AFE47E10);
  *v17.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v17, v17, 8uLL), *&vextq_s8(v18, v18, 8uLL)), vadd_f32(vzip1_s32(*v17.f32, *v18.i8), vzip2_s32(*v17.f32, *v18.i8)));
  v19 = vmulq_f32(v16, xmmword_1AFE47E20);
  v17.f32[2] = v19.f32[2] + vaddv_f32(*v19.f32);
  v17.i32[3] = 0;
  v132 = vdupq_n_s32(0x472AEE8Cu);
  v20 = vmulq_f32(_simd_sin_f4(v17), v132);
  v21 = v20;
  v21.i32[3] = 0;
  v22 = vsubq_f32(v20, vrndmq_f32(v21));
  v22.i32[3] = 0;
  v23.i64[0] = 0x4000000040000000;
  v23.i64[1] = 0x4000000040000000;
  __asm { FMOV            V1.4S, #-1.0 }

  v131 = _Q1;
  v126 = vmlaq_f32(_Q1, v23, vminnmq_f32(v22, xmmword_1AFE47E30));
  v25 = vaddq_f32(v133, xmmword_1AFE20150);
  v26 = vmulq_f32(v25, xmmword_1AFE47E00);
  v27 = vmulq_f32(v25, xmmword_1AFE47E10);
  *v26.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v26, v26, 8uLL), *&vextq_s8(v27, v27, 8uLL)), vadd_f32(vzip1_s32(*v26.f32, *v27.i8), vzip2_s32(*v26.f32, *v27.i8)));
  v28 = vmulq_f32(v25, xmmword_1AFE47E20);
  v26.f32[2] = v28.f32[2] + vaddv_f32(*v28.f32);
  v26.i32[3] = 0;
  v29 = vmulq_f32(_simd_sin_f4(v26), v132);
  v30 = v29;
  v30.i32[3] = 0;
  v31 = vsubq_f32(v29, vrndmq_f32(v30));
  v31.i32[3] = 0;
  v32.i64[0] = 0x4000000040000000;
  v32.i64[1] = 0x4000000040000000;
  v125 = vmlaq_f32(v131, v32, vminnmq_f32(v31, xmmword_1AFE47E30));
  v33 = vaddq_f32(v133, xmmword_1AFE20160);
  v34 = vmulq_f32(v33, xmmword_1AFE47E00);
  v35 = vmulq_f32(v33, xmmword_1AFE47E10);
  *v34.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v34, v34, 8uLL), *&vextq_s8(v35, v35, 8uLL)), vadd_f32(vzip1_s32(*v34.f32, *v35.i8), vzip2_s32(*v34.f32, *v35.i8)));
  v36 = vmulq_f32(v33, xmmword_1AFE47E20);
  v34.f32[2] = v36.f32[2] + vaddv_f32(*v36.f32);
  v34.i32[3] = 0;
  v37 = vmulq_f32(_simd_sin_f4(v34), v132);
  v38 = v37;
  v38.i32[3] = 0;
  v39 = vsubq_f32(v37, vrndmq_f32(v38));
  v39.i32[3] = 0;
  v40.i64[0] = 0x4000000040000000;
  v40.i64[1] = 0x4000000040000000;
  v124 = vmlaq_f32(v131, v40, vminnmq_f32(v39, xmmword_1AFE47E30));
  v41 = vaddq_f32(v133, xmmword_1AFE20670);
  v42 = vmulq_f32(v41, xmmword_1AFE47E00);
  v43 = vmulq_f32(v41, xmmword_1AFE47E10);
  *v42.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v42, v42, 8uLL), *&vextq_s8(v43, v43, 8uLL)), vadd_f32(vzip1_s32(*v42.f32, *v43.i8), vzip2_s32(*v42.f32, *v43.i8)));
  v44 = vmulq_f32(v41, xmmword_1AFE47E20);
  v42.f32[2] = v44.f32[2] + vaddv_f32(*v44.f32);
  v42.i32[3] = 0;
  v45 = vmulq_f32(_simd_sin_f4(v42), v132);
  v46 = v45;
  v46.i32[3] = 0;
  v47 = vsubq_f32(v45, vrndmq_f32(v46));
  v47.i32[3] = 0;
  v48.i64[0] = 0x4000000040000000;
  v48.i64[1] = 0x4000000040000000;
  v123 = vmlaq_f32(v131, v48, vminnmq_f32(v47, xmmword_1AFE47E30));
  v49 = vaddq_f32(v133, xmmword_1AFE20180);
  v50 = vmulq_f32(v49, xmmword_1AFE47E00);
  v51 = vmulq_f32(v49, xmmword_1AFE47E10);
  *v50.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v50, v50, 8uLL), *&vextq_s8(v51, v51, 8uLL)), vadd_f32(vzip1_s32(*v50.f32, *v51.i8), vzip2_s32(*v50.f32, *v51.i8)));
  v52 = vmulq_f32(v49, xmmword_1AFE47E20);
  v50.f32[2] = v52.f32[2] + vaddv_f32(*v52.f32);
  v50.i32[3] = 0;
  v53 = vmulq_f32(_simd_sin_f4(v50), v132);
  v54 = v53;
  v54.i32[3] = 0;
  v55 = vsubq_f32(v53, vrndmq_f32(v54));
  v55.i32[3] = 0;
  v54.i64[0] = 0x4000000040000000;
  v54.i64[1] = 0x4000000040000000;
  v122 = vmlaq_f32(v131, v54, vminnmq_f32(v55, xmmword_1AFE47E30));
  v56 = vaddq_f32(v133, xmmword_1AFE47E40);
  v57 = vmulq_f32(v56, xmmword_1AFE47E00);
  v58 = vmulq_f32(v56, xmmword_1AFE47E10);
  *v57.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v57, v57, 8uLL), *&vextq_s8(v58, v58, 8uLL)), vadd_f32(vzip1_s32(*v57.f32, *v58.i8), vzip2_s32(*v57.f32, *v58.i8)));
  v59 = vmulq_f32(v56, xmmword_1AFE47E20);
  v57.f32[2] = v59.f32[2] + vaddv_f32(*v59.f32);
  v57.i32[3] = 0;
  v60 = vmulq_f32(_simd_sin_f4(v57), v132);
  v61 = v60;
  v61.i32[3] = 0;
  v62 = vsubq_f32(v60, vrndmq_f32(v61));
  v62.i32[3] = 0;
  v61.i64[0] = 0x4000000040000000;
  v61.i64[1] = 0x4000000040000000;
  v121 = vmlaq_f32(v131, v61, vminnmq_f32(v62, xmmword_1AFE47E30));
  v63 = vaddq_f32(v133, xmmword_1AFE47E50);
  v64 = vmulq_f32(v63, xmmword_1AFE47E00);
  v65 = vmulq_f32(v63, xmmword_1AFE47E10);
  *v64.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v64, v64, 8uLL), *&vextq_s8(v65, v65, 8uLL)), vadd_f32(vzip1_s32(*v64.f32, *v65.i8), vzip2_s32(*v64.f32, *v65.i8)));
  v66 = vmulq_f32(v63, xmmword_1AFE47E20);
  v64.f32[2] = v66.f32[2] + vaddv_f32(*v66.f32);
  v64.i32[3] = 0;
  v67 = vmulq_f32(_simd_sin_f4(v64), v132);
  v68 = v67;
  v68.i32[3] = 0;
  v69 = vsubq_f32(v67, vrndmq_f32(v68));
  v69.i32[3] = 0;
  v68.i64[0] = 0x4000000040000000;
  v68.i64[1] = 0x4000000040000000;
  v120 = vmlaq_f32(v131, v68, vminnmq_f32(v69, xmmword_1AFE47E30));
  v70 = vaddq_f32(v133, v127);
  v71 = vmulq_f32(v70, xmmword_1AFE47E00);
  v72 = vmulq_f32(v70, xmmword_1AFE47E10);
  *v71.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v71, v71, 8uLL), *&vextq_s8(v72, v72, 8uLL)), vadd_f32(vzip1_s32(*v71.f32, *v72.i8), vzip2_s32(*v71.f32, *v72.i8)));
  v73 = vmulq_f32(v70, xmmword_1AFE47E20);
  v71.f32[2] = v73.f32[2] + vaddv_f32(*v73.f32);
  v71.i32[3] = 0;
  v74 = vmulq_f32(_simd_sin_f4(v71), v132);
  v75 = v74;
  v75.i32[3] = 0;
  v76 = vsubq_f32(v74, vrndmq_f32(v75));
  v76.i32[3] = 0;
  v77.i64[0] = 0x4000000040000000;
  v77.i64[1] = 0x4000000040000000;
  v78 = vmlaq_f32(v131, v77, vminnmq_f32(v76, xmmword_1AFE47E30));
  v79 = vmulq_f32(v128, v126);
  v80 = vmulq_f32(vaddq_f32(v128, xmmword_1AFE213A0), v125);
  v81 = vadd_f32(vzip1_s32(*v79.i8, *v80.i8), vzip2_s32(*v79.i8, *v80.i8));
  v82 = vextq_s8(v80, v80, 8uLL);
  v83 = vadd_f32(vzip1_s32(*&vextq_s8(v79, v79, 8uLL), *v82.i8), v81);
  v84 = vmulq_f32(vaddq_f32(v128, xmmword_1AFE213C0), v124);
  v85 = v84.f32[2] + vaddv_f32(*v84.f32);
  v86 = vmulq_f32(vaddq_f32(v128, xmmword_1AFE47E60), v123);
  v87 = v86.f32[2] + vaddv_f32(*v86.f32);
  v88 = vmulq_f32(vaddq_f32(v128, xmmword_1AFE213B0), v122);
  v89 = v88.f32[2] + vaddv_f32(*v88.f32);
  v90 = vmulq_f32(vaddq_f32(v128, xmmword_1AFE47E70), v121);
  v91 = v90.f32[2] + vaddv_f32(*v90.f32);
  v92 = vmulq_f32(vaddq_f32(v128, xmmword_1AFE47E80), v120);
  v93 = v92.f32[2] + vaddv_f32(*v92.f32);
  v94 = vmulq_f32(vaddq_f32(v128, v131), v78);
  v95 = v94.f32[2] + vaddv_f32(*v94.f32);
  v94.f32[0] = v83.f32[1] - v83.f32[0];
  _Q26 = v129;
  _S21 = v129.i32[1];
  _S16 = v85 - v83.f32[0];
  __asm { FMLA            S4, S16, V26.S[1] }

  _S7 = v89 - v83.f32[0];
  __asm { FMLA            S4, S7, V26.S[2] }

  v102 = vmuls_lane_f32(_Q26.f32[0], *_Q26.f32, 1);
  v103 = v83.f32[0] - v83.f32[1];
  *v82.i32 = ((v83.f32[0] - v83.f32[1]) - v85) + v87;
  v104 = vmuls_lane_f32(v129.f32[1], v129, 2);
  v83.f32[0] = ((v83.f32[0] - v85) - v89) + v93;
  v105 = (_S4 + (v102 * *v82.i32)) + (v104 * v83.f32[0]);
  v106 = vmuls_lane_f32(_Q26.f32[0], _Q26, 2);
  v107.f32[0] = (v103 - v89) + v91;
  v108 = v105 + (v106 * v107.f32[0]);
  v109 = vmuls_lane_f32(v102, v129, 2);
  v110 = (((((v94.f32[0] + v85) - v87) + v89) - v91) - v93) + v95;
  *v111.i32 = v108 + (v109 * v110);
  v112 = vsubq_f32(v125, v126);
  v113 = vsubq_f32(v126, v125);
  v94.f32[1] = _S16;
  v114 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmlaq_n_f32(v126, v112, v129.f32[0]), vsubq_f32(v124, v126), *v129.f32, 1), vsubq_f32(v122, v126), v129, 2), vaddq_f32(vsubq_f32(v113, v124), v123), v102), vaddq_f32(vsubq_f32(vsubq_f32(v126, v124), v122), v120), v104), vaddq_f32(vsubq_f32(v113, v122), v121), v106), vaddq_f32(vsubq_f32(vsubq_f32(vaddq_f32(vsubq_f32(vaddq_f32(v112, v124), v123), v122), v121), v120), v78), v109);
  v94.f32[2] = _S7;
  v115 = vextq_s8(vextq_s8(_Q26, _Q26, 0xCuLL), v129, 8uLL);
  v116 = v82;
  v116.i32[1] = v83.i32[0];
  v116.i32[2] = v107.i32[0];
  v117 = vmlaq_f32(v94, v116, v115);
  v118 = vextq_s8(vuzp1q_s32(_Q26, _Q26), v129, 0xCuLL);
  v107.i32[1] = v82.i32[0];
  v107.i32[2] = v83.i32[0];
  *&result = vextq_s8(vextq_s8(v111, v111, 4uLL), vmlaq_f32(v114, vmlaq_n_f32(vmlaq_f32(v117, v107, v118), vmulq_f32(v115, v118), v110), v130), 0xCuLL).u64[0];
  return result;
}

uint64_t kcluster_update(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v4 = 0;
    v5 = *result;
    v6 = *(result + 8);
    v7 = *(result + 16);
    v8 = a4;
    v9 = *result + 16;
    v10.i64[0] = 0x400000004;
    v10.i64[1] = 0x400000004;
    do
    {
      v11 = *(a2 + 16 * v4);
      v12 = vdupq_lane_s32(*v11.i8, 0);
      v13 = vdupq_lane_s32(*v11.i8, 1);
      v14 = vdupq_laneq_s32(v11, 2);
      v15 = vsubq_f32(v12, *v5);
      v16 = vsubq_f32(v13, *v6);
      v17 = vsubq_f32(v14, *v7);
      v18 = vmlaq_f32(vmlaq_f32(vmulq_f32(v16, v16), v15, v15), v17, v17);
      v19 = *(result + 24);
      if (v19 < 5)
      {
        v24 = xmmword_1AFE202E0;
      }

      else
      {
        v20 = v7 + 1;
        v21 = v6 + 1;
        v22 = v9;
        v23 = 4;
        v24 = xmmword_1AFE202E0;
        v25 = xmmword_1AFE202D0;
        do
        {
          v26 = *v22++;
          v27 = v26;
          v28 = *v21++;
          v29 = v28;
          v30 = *v20++;
          v31 = vsubq_f32(v12, v27);
          v32 = vsubq_f32(v13, v29);
          v33 = vsubq_f32(v14, v30);
          v34 = vmlaq_f32(vmlaq_f32(vmulq_f32(v32, v32), v31, v31), v33, v33);
          v35 = vcgtq_f32(v18, v34);
          v18 = vminnmq_f32(v34, v18);
          v24 = vbslq_s8(v35, v25, v24);
          v23 += 4;
          v25 = vaddq_s32(v25, v10);
        }

        while (v23 < v19);
      }

      v36 = vextq_s8(v18, v18, 8uLL);
      v37 = vminnmq_f32(v18, v36).u64[0];
      v38 = vbslq_s8(vcgtq_f32(v18, v36), vdupq_laneq_s64(v24, 1), v24).u64[0];
      v39 = HIDWORD(v38);
      if (*&v37 < *(&v37 + 1))
      {
        v39 = v38;
      }

      *(a3 + 4 * v4++) = v39;
    }

    while (v4 != v8);
  }

  return result;
}

uint64_t kcluster_update_compare(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  if (!a4)
  {
    return 0;
  }

  v5 = 0;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = a5;
  v10 = a4;
  v11 = *a1 + 16;
  LOBYTE(v12) = 1;
  v13.i64[0] = 0x400000004;
  v13.i64[1] = 0x400000004;
  do
  {
    v14 = *(a2 + 16 * v5);
    v15 = vdupq_lane_s32(*v14.i8, 0);
    v16 = vdupq_lane_s32(*v14.i8, 1);
    v17 = vdupq_laneq_s32(v14, 2);
    v18 = vsubq_f32(v15, *v6);
    v19 = vsubq_f32(v16, *v7);
    v20 = vsubq_f32(v17, *v8);
    v21 = vmlaq_f32(vmlaq_f32(vmulq_f32(v19, v19), v18, v18), v20, v20);
    v22 = *(a1 + 24);
    if (v22 < 5)
    {
      v27 = xmmword_1AFE202E0;
    }

    else
    {
      v23 = v8 + 1;
      v24 = v7 + 1;
      v25 = v11;
      v26 = 4;
      v27 = xmmword_1AFE202E0;
      v28 = xmmword_1AFE202D0;
      do
      {
        v29 = *v25++;
        v30 = v29;
        v31 = *v24++;
        v32 = v31;
        v33 = *v23++;
        v34 = vsubq_f32(v15, v30);
        v35 = vsubq_f32(v16, v32);
        v36 = vsubq_f32(v17, v33);
        v37 = vmlaq_f32(vmlaq_f32(vmulq_f32(v35, v35), v34, v34), v36, v36);
        v38 = vcgtq_f32(v21, v37);
        v21 = vminnmq_f32(v37, v21);
        v27 = vbslq_s8(v38, v28, v27);
        v26 += 4;
        v28 = vaddq_s32(v28, v13);
      }

      while (v26 < v22);
    }

    v39 = vextq_s8(v21, v21, 8uLL);
    v40 = vminnmq_f32(v21, v39).u64[0];
    v41 = vbslq_s8(vcgtq_f32(v21, v39), vdupq_laneq_s64(v27, 1), v27).u64[0];
    v42 = HIDWORD(v41);
    if (*&v40 < *(&v40 + 1))
    {
      v42 = v41;
    }

    *(a3 + 4 * v5) = v42;
    v12 = v12 & (v42 == v9);
    ++v5;
  }

  while (v5 != v10);
  return v12 ^ 1u;
}

float noise(float32x4_t a1)
{
  v1 = a1;
  v1.i32[3] = 0;
  v2 = vrndmq_f32(v1);
  v3 = vmulq_f32(v2, xmmword_1AFE47E90);
  v3.f32[0] = v3.f32[2] + vaddv_f32(*v3.f32);
  v22 = vaddq_f32(vdupq_lane_s32(*v3.f32, 0), xmmword_1AFE47EA0);
  v4 = vmulq_n_f32(vsubq_f32(a1, v2), acosf(-1.0));
  v4.i32[3] = 0;
  v5 = _simd_cos_f4(v4);
  v6.i64[0] = 0xBF000000BF000000;
  v6.i64[1] = 0xBF000000BF000000;
  v7.i64[0] = 0x3F0000003F000000;
  v7.i64[1] = 0x3F0000003F000000;
  v21 = vmlaq_f32(v7, v6, v5);
  v8 = _simd_cos_f4(v22);
  v20 = _simd_sin_f4(vmulq_f32(v22, v8));
  __asm { FMOV            V0.4S, #1.0 }

  v23 = vaddq_f32(v22, _Q0);
  v14 = _simd_cos_f4(v23);
  v15 = vmlaq_n_f32(v20, vsubq_f32(_simd_sin_f4(vmulq_f32(v23, v14)), v20), v21.f32[0]);
  v16 = vextq_s8(v15, v15, 8uLL).u64[0];
  v17 = vzip1_s32(*v15.i8, v16);
  v18 = vmla_lane_f32(v17, vsub_f32(vzip2_s32(*v15.i8, v16), v17), *v21.f32, 1);
  return v18.f32[0] + (v21.f32[2] * vsub_f32(vdup_lane_s32(v18, 1), v18).f32[0]);
}

float32x4_t *voxel_draw_points(float32x4_t *result, uint64_t a2, int a3, float a4)
{
  if (a3)
  {
    v5 = 0;
    v6 = result[1];
    v7 = result[2];
    v8 = result->i32[2];
    v9 = vmulq_n_f32(v7, 2.0 / v8);
    v9.i32[3] = 1.0;
    v10.i32[0] = 1;
    v10.i32[1] = v8;
    v10.i64[1] = (v8 * v8);
    v11 = vsubq_f32(v7, v6);
    __asm { FMOV            V6.4S, #1.0 }

    v17 = vdivq_f32(_Q6, v9);
    *v4.i32 = (v8 - 1);
    v18 = vdupq_lane_s32(v4, 0);
    v18.i32[3] = 0;
    v19 = result->i64[0];
    v20 = vdupq_n_s32(0x3F7FFFFFu);
    v21.i64[0] = 0xBF000000BF000000;
    v21.i64[1] = 0xBF000000BF000000;
    v22.i64[0] = 0x8000000080000000;
    v22.i64[1] = 0x8000000080000000;
    do
    {
      v23 = *(a2 + 16 * v5);
      if ((vminvq_u32(vcgeq_f32(v7, vabdq_f32(v23, v6))) & 0x80000000) != 0)
      {
        v24 = 0;
        v25 = vmulq_f32(v17, vaddq_f32(v11, v23));
        v26 = vaddq_f32(vminnmq_f32(vsubq_f32(v25, vrndmq_f32(v25)), v20), v21);
        v27 = vandq_s8(vorrq_s8(vandq_s8(v26, v22), _Q6), vorrq_s8(vcltzq_f32(v26), vcgtzq_f32(v26)));
        v28 = vabsq_f32(v26);
        do
        {
          v29 = xmmword_1AFE48230[v24];
          v30 = vaddvq_s32(vmulq_s32(v10, vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v25, v29, v27), 0), v18))));
          v31 = vsubq_f32(v29, v28);
          v32 = vmulq_f32(v31, v31);
          *(v19 + 4 * v30) = *(v19 + 4 * v30) + (((0.1 * v17.f32[0]) * fmaxf(1.0 - sqrtf(v32.f32[2] + vaddv_f32(*v32.f32)), 0.0)) * a4);
          ++v24;
        }

        while (v24 != 8);
      }

      ++v5;
    }

    while (v5 != a3);
  }

  return result;
}

float32x4_t *voxel_draw_colored_points(float32x4_t *result, uint64_t a2, uint64_t a3, int a4, float a5)
{
  if (a4)
  {
    v6 = 0;
    v7 = result[2];
    v8 = result->i32[2];
    v9 = vmulq_n_f32(v7, 2.0 / v8);
    v9.i32[3] = 1.0;
    v10 = result[1];
    v11.i32[0] = 1;
    v11.i32[1] = v8;
    v11.i64[1] = (v8 * v8);
    v12 = vsubq_f32(v7, v10);
    __asm { FMOV            V6.4S, #1.0 }

    v18 = vdivq_f32(_Q6, v9);
    *v5.i32 = (v8 - 1);
    v19 = vdupq_lane_s32(v5, 0);
    v19.i32[3] = 0;
    v20 = result->i64[0];
    v21 = vmulq_n_f32(xmmword_1AFE208C0, 0.1 * v18.f32[0]);
    v22 = vmulq_n_f32(xmmword_1AFE21390, 0.1 * v18.f32[0]);
    v23 = vdupq_n_s32(0x3F7FFFFFu);
    v24.i64[0] = 0xBF000000BF000000;
    v24.i64[1] = 0xBF000000BF000000;
    v25.i64[0] = 0x8000000080000000;
    v25.i64[1] = 0x8000000080000000;
    do
    {
      v26 = xmmword_1AFE201A0;
      if (a3)
      {
        v26 = vmaxnmq_f32(vmlaq_f32(v22, v21, *(a3 + 16 * v6)), 0);
      }

      v27 = *(a2 + 16 * v6);
      if ((vminvq_u32(vcgeq_f32(v7, vabdq_f32(v27, v10))) & 0x80000000) != 0)
      {
        v28 = 0;
        v26.i32[3] = vmuls_lane_f32(a5, v26, 3);
        v29 = vmulq_f32(v18, vaddq_f32(v12, v27));
        v30 = vaddq_f32(vminnmq_f32(vsubq_f32(v29, vrndmq_f32(v29)), v23), v24);
        v31 = vandq_s8(vorrq_s8(vandq_s8(v30, v25), _Q6), vorrq_s8(vcltzq_f32(v30), vcgtzq_f32(v30)));
        v32 = vabsq_f32(v30);
        v33 = vextq_s8(v26, v26, 0xCuLL);
        do
        {
          v34 = xmmword_1AFE48230[v28];
          v35 = vaddvq_s32(vmulq_s32(v11, vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v29, v34, v31), 0), v19))));
          v36 = vsubq_f32(v34, v32);
          v37 = vmulq_f32(v36, v36);
          *(v20 + 16 * v35) = vmlaq_n_f32(*(v20 + 16 * v35), v33, fmaxf(1.0 - sqrtf(v37.f32[2] + vaddv_f32(*v37.f32)), 0.0));
          ++v28;
        }

        while (v28 != 8);
      }

      ++v6;
    }

    while (v6 != a4);
  }

  return result;
}

void voxel_draw_spheres(float32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, float a5)
{
  if (a4)
  {
    v7 = 0;
    v8 = a1[1];
    v9 = a1[2];
    v10 = a1->i32[2];
    v11 = vmulq_n_f32(v9, 2.0 / v10);
    v11.i32[3] = 1.0;
    v12.i32[0] = 1;
    v12.i32[1] = v10;
    v12.i64[1] = (v10 * v10);
    v13 = vsubq_f32(v9, v8);
    __asm { FMOV            V1.4S, #1.0 }

    v8.f32[0] = (v10 - 1);
    v19 = vdupq_lane_s32(*v8.f32, 0);
    v63 = _Q1;
    v64 = v13;
    v19.i32[3] = 0;
    v20 = a1->i64[0];
    v21 = a4;
    v61 = vdupq_n_s32(0x3F7FFFFFu);
    v62 = vdivq_f32(_Q1, v11);
    v22 = 0uLL;
    v69 = v19;
    v70 = v12;
    do
    {
      v23 = vmulq_f32(v62, vaddq_f32(v64, *(a2 + 16 * v7)));
      v24 = (v62.f32[0] * *(a3 + 4 * v7));
      v25.i64[0] = 0xBF000000BF000000;
      v25.i64[1] = 0xBF000000BF000000;
      v26 = vaddq_f32(vminnmq_f32(vsubq_f32(v23, vrndmq_f32(v23)), v61), v25);
      v25.i64[0] = 0x8000000080000000;
      v25.i64[1] = 0x8000000080000000;
      v27 = vandq_s8(vorrq_s8(vandq_s8(v26, v25), v63), vorrq_s8(vcltzq_f32(v26), vcgtzq_f32(v26)));
      v28 = vabsq_f32(v26);
      if (v24 <= 0)
      {
        for (i = 0; i != 8; ++i)
        {
          v57 = xmmword_1AFE48230[i];
          v58 = vaddvq_s32(vmulq_s32(v12, vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v23, v57, v27), v22), v19))));
          v59 = vsubq_f32(v57, v28);
          v60 = vmulq_f32(v59, v59);
          *(v20 + 4 * v58) = *(v20 + 4 * v58) + (fmaxf(1.0 - sqrtf(v60.f32[2] + vaddv_f32(*v60.f32)), 0.0) * a5);
        }
      }

      else
      {
        v29 = 0;
        v67 = v27;
        v68 = v23;
        v66 = v28;
        do
        {
          v30 = xmmword_1AFE48230[v29];
          v31 = vmlaq_f32(v23, v30, v27);
          v32 = vsubq_f32(v30, v28);
          v33 = vmulq_f32(v32, v32);
          v34 = fmaxf(1.0 - sqrtf(v33.f32[2] + vaddv_f32(*v33.f32)), 0.0) * a5;
          v35 = -v24;
          v71 = v31;
          do
          {
            v72 = v35;
            v36 = cos((v35 / v24) * 3.14159265 * 0.5);
            v22 = 0uLL;
            v19 = v69;
            v12 = v70;
            v37 = 0;
            v38 = v36 * v24;
            v39 = -v38;
            v40 = 2 - 2 * v38;
            do
            {
              v41.f32[0] = -v39;
              v42 = v41.u32[0];
              v42.f32[1] = v37;
              v42.f32[2] = v35;
              v41.f32[1] = -v37;
              v41.i64[1] = LODWORD(v72);
              v43 = vaddvq_s32(vmulq_s32(v70, vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vaddq_f32(v71, v42), 0), v69))));
              v44 = vaddvq_s32(vmulq_s32(v70, vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vaddq_f32(v71, v41), 0), v69))));
              v45.f32[0] = v39;
              v46 = COERCE_UNSIGNED_INT(v39);
              *(v20 + 4 * v43) = v34 + *(v20 + 4 * v43);
              v46.f32[1] = v41.f32[1];
              v46.f32[2] = v35;
              *(v20 + 4 * v44) = v34 + *(v20 + 4 * v44);
              v47 = vaddvq_s32(vmulq_s32(v70, vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vaddq_f32(v71, v46), 0), v69))));
              v45.f32[1] = v37;
              v45.i64[1] = LODWORD(v72);
              *(v20 + 4 * v47) = v34 + *(v20 + 4 * v47);
              v48 = vaddvq_s32(vmulq_s32(v70, vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vaddq_f32(v71, v45), 0), v69))));
              v49 = 2 * (v37 + 1);
              if (v40 > v37)
              {
                v50 = 0;
              }

              else
              {
                ++v37;
                v50 = v49 + 1;
              }

              v51 = v50 + v40;
              v53 = v40 > v39 || v51 > v37;
              *(v20 + 4 * v48) = v34 + *(v20 + 4 * v48);
              v54 = 2 * (v39 + 1);
              if (v53)
              {
                ++v39;
                v55 = v54 + 1;
              }

              else
              {
                v55 = 0;
              }

              v40 = v55 + v51;
            }

            while (v39 < 1);
          }

          while (v35++ != v24);
          ++v29;
          v27 = v67;
          v23 = v68;
          v28 = v66;
        }

        while (v29 != 8);
      }

      ++v7;
    }

    while (v7 != v21);
  }
}

float32x4_t *voxel_draw_colored_spheres(float32x4_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, float a6, double a7, double a8, double a9, double a10, double a11)
{
  if (a5)
  {
    v11 = 0;
    v12 = result[2];
    v13 = result->i32[2];
    v14 = vmulq_n_f32(v12, 2.0 / v13);
    v14.i32[3] = 1.0;
    v15.i32[0] = 1;
    v15.i32[1] = v13;
    v15.i64[1] = (v13 * v13);
    v16 = vsubq_f32(v12, result[1]);
    __asm { FMOV            V4.4S, #1.0 }

    *&a11 = (v13 - 1);
    v22 = vdupq_lane_s32(*&a11, 0);
    v22.i32[3] = 0;
    v23 = vdivq_f32(_Q4, v14);
    v24 = result->i64[0];
    v25 = vdupq_n_s32(0x3F7FFFFFu);
    v26.i64[0] = 0xBF000000BF000000;
    v26.i64[1] = 0xBF000000BF000000;
    v27.i64[0] = 0x8000000080000000;
    v27.i64[1] = 0x8000000080000000;
    do
    {
      v28 = xmmword_1AFE201A0;
      if (a4)
      {
        v28 = vmaxnmq_f32(vmlaq_f32(vmulq_n_f32(xmmword_1AFE21390, v23.f32[0] * *(a3 + 4 * v11)), vmulq_n_f32(xmmword_1AFE208C0, v23.f32[0] * *(a3 + 4 * v11)), *(a4 + 16 * v11)), 0);
      }

      v29 = 0;
      v30 = vmulq_f32(v23, vaddq_f32(v16, *(a2 + 16 * v11)));
      v28.i32[3] = vmuls_lane_f32(a6, v28, 3);
      v31 = vaddq_f32(vminnmq_f32(vsubq_f32(v30, vrndmq_f32(v30)), v25), v26);
      v32 = vandq_s8(vorrq_s8(vandq_s8(v31, v27), _Q4), vorrq_s8(vcltzq_f32(v31), vcgtzq_f32(v31)));
      v33 = vabsq_f32(v31);
      v34 = vextq_s8(v28, v28, 0xCuLL);
      do
      {
        v35 = xmmword_1AFE48230[v29];
        v36 = vaddvq_s32(vmulq_s32(v15, vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v30, v35, v32), 0), v22))));
        v37 = vsubq_f32(v35, v33);
        v38 = vmulq_f32(v37, v37);
        *(v24 + 16 * v36) = vaddq_f32(*(v24 + 16 * v36), vmulq_n_f32(v34, fmaxf(1.0 - sqrtf(v38.f32[2] + vaddv_f32(*v38.f32)), 0.0)));
        ++v29;
      }

      while (v29 != 8);
      ++v11;
    }

    while (v11 != a5);
  }

  return result;
}

uint64_t voxel_opacity_color_clamp(uint64_t result)
{
  v1 = (*(result + 8) * *(result + 8) * *(result + 8));
  if (v1)
  {
    v2 = *result;
    __asm { FMOV            V0.4S, #1.0 }

    do
    {
      *v2 = vminnmq_f32(*v2, _Q0);
      ++v2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t voxel_opacity_clamp(uint64_t result)
{
  v1 = (*(result + 8) * *(result + 8) * *(result + 8));
  if (v1)
  {
    v2 = *result;
    do
    {
      *v2 = fminf(*v2, 1.0);
      ++v2;
      --v1;
    }

    while (v1);
  }

  return result;
}

float32x4_t merge_aabb(float32x4_t *a1, float32x4_t *a2, float32x4_t a3)
{
  v3 = vminq_f32(vsubq_f32(*a1, *a2), a3);
  v4 = vmaxq_f32(vaddq_f32(*a1, *a2), a3);
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  *a1 = vmulq_f32(vaddq_f32(v3, v4), v5);
  result = vmulq_f32(vsubq_f32(v4, v3), v5);
  *a2 = result;
  return result;
}

__n64 sub_1AF379DB4(double a1, double a2, double a3, float a4, int8x16_t a5, int8x16_t a6)
{
  *a6.i32 = (((*&a3 * -1.5) + (a4 * 0.5)) + (*&a2 * 1.5)) + (*&a1 * -0.5);
  *&a2 = (((*&a3 + *&a3) + (a4 * -0.5)) + (*&a2 * -2.5)) + *&a1;
  *&a1 = (*&a1 * -0.5) + (*&a3 * 0.5);
  *&a3 = *a5.i32 * *a5.i32;
  *&a2 = (*&a2 + *&a2) * *a5.i32;
  v6 = vaddq_f32(vdupq_lane_s32(*&a1, 0), vmlaq_n_f32(vdupq_lane_s32(*&a2, 0), vdupq_lane_s32(*&a3, 0), *a6.i32 * 3.0));
  v7 = vmulq_f32(v6, v6);
  *&v8 = *&v7.i32[2] + vaddv_f32(*v7.i8);
  *v7.i8 = vrsqrte_f32(v8);
  *v7.i8 = vmul_f32(*v7.i8, vrsqrts_f32(v8, vmul_f32(*v7.i8, *v7.i8)));
  v9 = vmulq_n_f32(v6, vmul_f32(*v7.i8, vrsqrts_f32(v8, vmul_f32(*v7.i8, *v7.i8))).f32[0]);
  a5.i32[0] = v9.i32[2];
  a6.i32[0] = 1.0;
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  v10 = *vbslq_s8(v7, a6, a5).i32;
  v6.f32[0] = v9.f32[1] / (fabsf(v9.f32[2]) + 1.0);
  *v7.i32 = -(v9.f32[0] * v6.f32[0]);
  result.n64_f32[0] = v9.f32[2] + (v10 * vmuls_lane_f32(v6.f32[0], *v9.f32, 1));
  result.n64_f32[1] = v10 * *v7.i32;
  return result;
}

double catmull_rom_spline_basis_quat(double a1, double a2, double a3, float a4, int8x16_t a5, int8x16_t a6)
{
  *v6.i8 = sub_1AF379DB4(a1, a2, a3, a4, a5, a6);
  *v11.i32 = v9 + (*v6.i32 + *&v7.i32[1]);
  if (*v11.i32 >= 0.0)
  {
    v19 = sqrtf(*v11.i32 + 1.0);
    v20 = vrecpe_f32(COERCE_UNSIGNED_INT(v19 + v19));
    v21 = vmul_f32(v20, vrecps_f32(COERCE_UNSIGNED_INT(v19 + v19), v20));
    *v10.i8 = vrecps_f32(COERCE_UNSIGNED_INT(v19 + v19), v21);
    v21.f32[0] = vmul_f32(v21, *v10.i8).f32[0];
    *v10.i32 = (*&v7.i32[2] - v8.n64_f32[1]) * v21.f32[0];
    v8.n64_u32[1] = v6.u32[1];
    *v11.i8 = vmul_n_f32(vsub_f32(v8.n64_u64[0], *&vzip2q_s32(v6, vuzp1q_s32(v6, v7))), v21.f32[0]);
  }

  else if (*v6.i32 < *&v7.i32[1] || *v6.i32 < v9)
  {
    v13 = 1.0 - *v6.i32;
    if (*&v7.i32[1] >= v9)
    {
      v26 = sqrtf(*&v7.i32[1] + (v13 - v9));
      v27.f32[0] = v26 + v26;
      v28 = vrecpe_f32(COERCE_UNSIGNED_INT(v26 + v26));
      v29 = vmul_f32(v28, vrecps_f32(COERCE_UNSIGNED_INT(v26 + v26), v28));
      *v10.i8 = vrecps_f32(COERCE_UNSIGNED_INT(v26 + v26), v29);
      v29.f32[0] = vmul_f32(v29, *v10.i8).f32[0];
      *v10.i32 = (*&v6.i32[1] + *v7.i32) * v29.f32[0];
      v27.f32[1] = *&v7.i32[2] + v8.n64_f32[1];
      __asm { FMOV            V1.2S, #0.25 }

      _D1.i32[1] = v29.i32[0];
      *v11.i8 = vmul_f32(v27, _D1);
    }

    else
    {
      v14 = sqrtf(v9 + (v13 - *&v7.i32[1]));
      v15 = v14 + v14;
      v16 = vrecpe_f32(COERCE_UNSIGNED_INT(v14 + v14));
      v17 = vmul_f32(v16, vrecps_f32(COERCE_UNSIGNED_INT(v14 + v14), v16));
      *v10.i8 = vrecps_f32(COERCE_UNSIGNED_INT(v14 + v14), v17);
      v17.f32[0] = vmul_f32(v17, *v10.i8).f32[0];
      *v10.i32 = (*&v6.i32[2] + v8.n64_f32[0]) * v17.f32[0];
      v18.f32[1] = v15;
      v17.i32[1] = 0.25;
      v18.f32[0] = *&v7.i32[2] + v8.n64_f32[1];
      *v11.i8 = vmul_f32(v18, v17);
    }
  }

  else
  {
    v22 = sqrtf(*v6.i32 + ((1.0 - *&v7.i32[1]) - v9));
    *&v23 = v22 + v22;
    v24 = vrecpe_f32(v23);
    v25 = vmul_f32(v24, vrecps_f32(v23, v24));
    v25.f32[0] = vmul_f32(v25, vrecps_f32(v23, v25)).f32[0];
    *v10.i32 = *&v23 * 0.25;
    *v11.i8 = vmul_n_f32(vadd_f32(*&vextq_s8(v6, v6, 4uLL), vzip1_s32(*v7.i8, v8.n64_u64[0])), v25.f32[0]);
  }

  *&result = vextq_s8(vextq_s8(v10, v10, 4uLL), v11, 0xCuLL).u64[0];
  return result;
}

float catmull_rom_spline_arclength(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float a5, float a6)
{
  v6 = 0;
  v7 = (a6 - a5) * 0.5;
  v8 = (a5 + a6) * 0.5;
  __asm { FMOV            V5.4S, #-1.5 }

  v14.i64[0] = 0x3F0000003F000000;
  v14.i64[1] = 0x3F0000003F000000;
  __asm { FMOV            V16.4S, #1.5 }

  v16 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(a3, _Q5), v14, a4), _Q16, a2), v14, a1);
  v17 = vmlsq_f32(vaddq_f32(a3, a3), v14, a4);
  __asm { FMOV            V3.4S, #-2.5 }

  v19 = vaddq_f32(a1, vmlaq_f32(v17, _Q3, a2));
  v20.i64[0] = 0xBF000000BF000000;
  v20.i64[1] = 0xBF000000BF000000;
  v21 = vmlaq_f32(vmulq_f32(a1, v20), v14, a3);
  __asm { FMOV            V1.4S, #3.0 }

  v23 = vmulq_f32(v16, _Q1);
  v24 = vaddq_f32(v19, v19);
  v25 = 0.0;
  do
  {
    v26 = vaddq_f32(v21, vmlaq_n_f32(vmulq_n_f32(v24, v8 + (v7 * *&dword_1AFE482B0[v6])), v23, (v8 + (v7 * *&dword_1AFE482B0[v6])) * (v8 + (v7 * *&dword_1AFE482B0[v6]))));
    v27 = vmulq_f32(v26, v26);
    v25 = v25 + (*&dword_1AFE482E4[v6++] * sqrtf(v27.f32[2] + vaddv_f32(*v27.f32)));
  }

  while (v6 != 13);
  return v7 * v25;
}

float sample_curve(uint64_t a1, float a2)
{
  v2 = *(a1 + 144) + (fminf(fmaxf(a2, 0.0), 1.0) * *(a1 + 140));
  v3 = vcvtms_s32_f32(v2);
  v4 = v2 - floorf(v2);
  v5 = (a1 + 4 * v3);
  return ((*v5 + *v5) + (((v5[1] - *(v5 - 1)) + ((((((v5[1] * 4.0) + (*(v5 - 1) * 2.0)) + (*v5 * -5.0)) - v5[2]) + (((v5[2] + ((*v5 - v5[1]) * 3.0)) - *(v5 - 1)) * v4)) * v4)) * v4)) * 0.5;
}

void computeTangents(unsigned int a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, float32x4_t *a9, uint64_t a10, int a11)
{
  v15 = a4;
  v17 = a9;
  if (a3 == 4)
  {
    v18 = a4;
    v15 = 0;
  }

  else
  {
    if (a3 != 2)
    {
      printf("ComputeTangents : Unsupported index size (%zu)", a3);
      return;
    }

    v18 = 0;
  }

  v19 = malloc_type_calloc(16 * a2, 1uLL, 0x1000040451B5BE8uLL);
  if (a1)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v20.i32[3] = 0;
    do
    {
      if (v15)
      {
        v25 = *(v15 + 2 * v24);
        v26 = *(v15 + 2 * (v24 + 1));
        v27 = *(v15 + 2 * (v24 + 2));
      }

      else if (v18)
      {
        v25 = *(v18 + 4 * v24);
        v26 = *(v18 + 4 * (v24 + 1));
        v27 = *(v18 + 4 * (v24 + 2));
      }

      v28 = *(a10 + (v25 * a11));
      v29 = vsub_f32(*(a10 + (v26 * a11)), v28);
      v30 = vsub_f32(*(a10 + (v27 * a11)), v28);
      v31 = (-v29.f32[1] * v30.f32[0]) + (v29.f32[0] * v30.f32[1]);
      if (v31 == 0.0)
      {
        v30 = vadd_f32(v30, COERCE_FLOAT32X2_T(-3.18618444e-58));
        v29 = vadd_f32(v29, 0xB4000000B4000000);
        v31 = (-v29.f32[1] * v30.f32[0]) + (v29.f32[0] * v30.f32[1]);
      }

      v32 = a5 + (v25 * a6);
      v21.i64[0] = *v32;
      v21.i32[2] = *(v32 + 8);
      v33 = a5 + (v26 * a6);
      v22.i64[0] = *v33;
      v22.i32[2] = *(v33 + 8);
      v34 = a5 + (v27 * a6);
      v23.i64[0] = *v34;
      v23.i32[2] = *(v34 + 8);
      v22 = vsubq_f32(v22, v21);
      v21 = vsubq_f32(v23, v21);
      v35 = v31;
      v36 = vrecpe_f32(LODWORD(v31));
      v37 = vmul_f32(v36, vrecps_f32(LODWORD(v35), v36));
      v37.i32[0] = vmul_f32(v37, vrecps_f32(LODWORD(v35), v37)).u32[0];
      v23 = vmulq_n_f32(vmlaq_lane_f32(vmulq_lane_f32(vnegq_f32(v21), v29, 1), v22, v30, 1), v37.f32[0]);
      v23.i32[3] = 0;
      a9[v25] = vaddq_f32(a9[v25], v23);
      a9[v26] = vaddq_f32(a9[v26], v23);
      a9[v27] = vaddq_f32(a9[v27], v23);
      v38 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v22, vnegq_f32(vdupq_lane_s32(v30, 0))), v21, v29.f32[0]), v37.f32[0]);
      v38.i32[3] = v20.i32[3];
      v19[v25] = vaddq_f32(v38, v19[v25]);
      v19[v26] = vaddq_f32(v38, v19[v26]);
      v19[v27] = vaddq_f32(v38, v19[v27]);
      v24 += 3;
      v20.i64[1] = v38.i64[1];
    }

    while (3 * a1 != v24);
  }

  if (a2)
  {
    v39 = 0;
    v40 = a2;
    v41 = v19;
    do
    {
      v42 = a7 + v39;
      v20.i64[0] = *v42;
      v43 = v20;
      v43.i32[2] = *(v42 + 8);
      v20.i32[2] = v43.i32[2];
      v44 = vmulq_f32(*v17, v20);
      v44.f32[0] = v44.f32[2] + vaddv_f32(*v44.f32);
      v45 = vmlsq_lane_f32(*v17, v43, *v44.f32, 0);
      v46 = vmulq_f32(v45, v45);
      *&v47 = v46.f32[2] + vaddv_f32(*v46.f32);
      *v46.f32 = vrsqrte_f32(v47);
      v20 = vmulq_n_f32(v45, vmul_f32(*v46.f32, vrsqrts_f32(v47, vmul_f32(*v46.f32, *v46.f32))).f32[0]);
      v48 = *v41++;
      v49 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), vnegq_f32(v43)), v20, vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL));
      v50 = vmulq_f32(v48, vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL));
      if ((v50.f32[2] + vaddv_f32(*v50.f32)) < 0.0)
      {
        v51 = -1.0;
      }

      else
      {
        v51 = 1.0;
      }

      v20.f32[3] = v51;
      *v17++ = v20;
      v39 += a8;
      --v40;
    }

    while (v40);
  }

  free(v19);
}

uint64_t matrix_multiply_batch(uint64_t result, uint64_t a2, unint64_t a3, double a4, double a5, __n128 a6, __n128 a7)
{
  v9[2] = a6;
  v9[3] = a7;
  if (a3)
  {
    v7 = 0;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        *(result + i * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(*(a2 + (v7 << 6) + 16), *&v9[i], 1), *(a2 + (v7 << 6)), COERCE_FLOAT(v9[i])), *(a2 + (v7 << 6) + 32), v9[i], 2), *(a2 + (v7 << 6) + 48), v9[i], 3);
      }

      ++v7;
      result += 64;
    }

    while (a3 > v7);
  }

  return result;
}

uint64_t matrix_multiply_constant_batch(uint64_t result, uint64_t a2, unint64_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  if (a3)
  {
    v7 = 0;
    do
    {
      for (i = 0; i != 64; i += 16)
      {
        *(result + i) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a5, *(a2 + i), 1), a4, COERCE_FLOAT(*(a2 + i))), a6, *(a2 + i), 2), a7, *(a2 + i), 3);
      }

      ++v7;
      a2 += 64;
      result += 64;
    }

    while (a3 > v7);
  }

  return result;
}

int32x4_t matrix_transpose_batch(uint64_t a1, int32x4_t *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = a2 + 2;
    v4 = (a1 + 32);
    v5 = 1;
    do
    {
      v6 = v3[-2];
      v7 = v3[-1];
      v8 = *v3;
      v9 = v3[1];
      v3 += 4;
      v10 = vzip1q_s32(v6, v8);
      v15.val[0] = vzip2q_s32(v6, v8).u64[0];
      v11 = vzip1q_s32(v7, v9);
      v15.val[1] = vzip2q_s32(v7, v9).u64[0];
      result = vzip2q_s32(v10, v11);
      v13 = v4 - 8;
      vst2_f32(v13, v10);
      *(v4 - 1) = result;
      v14 = v5;
      vst2_f32(v4, v15);
      ++v5;
      v4 += 12;
    }

    while (v14 < a3);
  }

  return result;
}

void sph_compute_pressures_and_densitites_2d(__int128 *a1, uint64_t a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = a3[3];
  v7 = a3[4];
  v23 = a1[1];
  v41 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 9);
  v10 = *(a1 + 10);
  v11 = *(a1 + 60);
  v42 = *(a1 + 44);
  v43 = v11;
  v44 = *(a1 + 19);
  v12.i64[0] = 0x80000000800000;
  v12.i64[1] = 0x80000000800000;
  v13 = a5 - a4;
  if (a5 <= a4)
  {
    v24 = vnegq_f32(v12);
  }

  else
  {
    v15 = v9 * (v9 * (v9 * vmuls_lane_f32(v10, v23, 3)));
    v16 = MEMORY[0x1E69E9820];
    v17 = a4;
    v24 = vnegq_f32(v12);
    do
    {
      v18 = *(v5 + 8 * v17);
      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      v40 = v15;
      v25[0] = v16;
      v25[1] = 3221225472;
      v25[2] = sub_1AF37A834;
      v25[3] = &unk_1E7A7FA38;
      v36 = v18;
      v26 = v41;
      v27 = v23;
      v28 = v8;
      v29 = v9;
      v30 = v10;
      v33 = v44;
      v32 = v43;
      v31 = v42;
      v34 = &v37;
      v35 = v5;
      vfx_uniform_grid_apply(a2, v17, v25);
      v19 = v38[6];
      *(v6 + 4 * v17) = v19;
      v20.i64[1] = v23.i64[1];
      v21 = v23.f32[1] * (v19 - v23.f32[0]);
      *(v7 + 4 * v17) = v21;
      v20.i32[0] = *(v6 + 4 * v17);
      v20.f32[1] = v21;
      v20.i64[1] = vnegq_f32(v20).u64[0];
      v24 = vminnmq_f32(v24, v20);
      _Block_object_dispose(&v37, 8);
      ++v17;
      --v13;
    }

    while (v13);
  }

  *(a1 + 15) = v24.i32[1];
  *(a1 + 13) = v24.i32[0];
  *(a1 + 14) = -v24.f32[2];
  *(a1 + 16) = -v24.f32[3];
}

void sub_1AF37A81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float32x2_t *sub_1AF37A834(float32x2_t *result, unsigned int *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = result[15];
    v4 = a3;
    do
    {
      v5 = *a2++;
      v6 = vsub_f32(*(*&v3 + 8 * v5), result[16]);
      v7 = vaddv_f32(vmul_f32(v6, v6));
      v8 = result[8].f32[1];
      if (v8 > v7)
      {
        *(*(*&result[14] + 8) + 24) = *(*(*&result[14] + 8) + 24) + (((v8 - v7) * ((v8 - v7) * (result[7].f32[1] * result[9].f32[0]))) * (v8 - v7));
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

void sph_compute_forces_2d(__int128 *a1, uint64_t a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v56 = *MEMORY[0x1E69E9840];
  v23 = a3[1];
  v24 = *a3;
  v5 = a3[2];
  v21 = a3[4];
  v22 = a3[3];
  v6 = *a1;
  v7 = *(a1 + 28);
  v8 = *(a1 + 60);
  v53 = *(a1 + 44);
  v54 = v8;
  v55 = *(a1 + 19);
  v51 = *(a1 + 12);
  v52 = v7;
  if (a4 < a5)
  {
    v9 = 0;
    v18 = v24 + 8 * a4;
    v17 = MEMORY[0x1E69E9820];
    v10 = v23 + 8 * a4;
    v11 = v22 + 4 * a4;
    v12 = v5 + 8 * a4;
    v13 = a4 - a5;
    v14 = v21 + 4 * a4;
    v26 = v6;
    do
    {
      v15 = *(v10 + 8 * v9);
      v25 = *(v11 + 4 * v9);
      v16 = *(v14 + 4 * v9);
      v37 = *(v18 + 8 * v9);
      v30 = v52;
      v31 = v53;
      v32 = v54;
      v47 = 0;
      v48 = &v47;
      v49 = 0x2020000000;
      v50 = 0;
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v46 = 0;
      v27[0] = v17;
      v27[1] = 3221225472;
      v27[2] = sub_1AF37AAF8;
      v27[3] = &unk_1E7A7FA60;
      v28 = DWORD2(v6);
      v35 = &v43;
      v36 = v24;
      v27[4] = v6;
      v33 = v55;
      v29 = v51;
      v38 = v23;
      v39 = v22;
      v40 = v21;
      v42 = v16;
      v34 = &v47;
      v41 = v15;
      vfx_uniform_grid_apply(a2, a4 + v9, v27);
      *(v12 + 8 * v9) = vadd_f32(vmul_n_f32(*&v26, v25), vadd_f32(v48[3], v44[3]));
      _Block_object_dispose(&v43, 8);
      _Block_object_dispose(&v47, 8);
      ++v9;
      v6 = v26;
    }

    while (v13 + v9);
  }
}

void sub_1AF37AAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v44 - 240), 8);
  _Unwind_Resume(a1);
}

float32x2_t *sub_1AF37AAF8(float32x2_t *result, unsigned int *a2, unsigned int a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (a3)
  {
    v9 = a3;
    do
    {
      v11 = *a2++;
      v10 = v11;
      v12 = vsub_f32(*(*&result[16] + 8 * v11), result[17]);
      *&a9 = sqrtf(vaddv_f32(vmul_f32(v12, v12))) + 0.0000001;
      v13 = result[7].f32[0] - *&a9;
      if (v13 > 0.0)
      {
        v14 = *(*&result[18] + 8 * v10);
        v15 = 1.0 / *(*&result[19] + 4 * v10);
        *&a9 = (v13 * (v13 * result[9].f32[1])) * ((result[7].f32[1] / *&a9) * (v15 * ((*(*&result[20] + 4 * v10) + result[22].f32[0]) * 0.5)));
        *(*(*&result[14] + 8) + 24) = vmls_lane_f32(*(*(*&result[14] + 8) + 24), v12, *&a9, 0);
        v16 = *(*&result[15] + 8);
        a9 = COERCE_DOUBLE(vmla_n_f32(v16[3], vsub_f32(v14, result[21]), (v13 * v15) * ((result[10].f32[0] * result[8].f32[0]) * result[7].f32[1])));
        *&v16[3] = a9;
      }

      --v9;
    }

    while (v9);
  }

  return result;
}

void sph_compute_pressures_and_densitites_3d(__int128 *a1, uint64_t a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = a3[3];
  v7 = a3[4];
  v23 = a1[1];
  v41 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 9);
  v10 = *(a1 + 10);
  v11 = *(a1 + 60);
  v42 = *(a1 + 44);
  v43 = v11;
  v44 = *(a1 + 19);
  v12.i64[0] = 0x80000000800000;
  v12.i64[1] = 0x80000000800000;
  v13 = a5 - a4;
  if (a5 <= a4)
  {
    v24 = vnegq_f32(v12);
  }

  else
  {
    v15 = v9 * (v9 * (v9 * vmuls_lane_f32(v10, v23, 3)));
    v16 = MEMORY[0x1E69E9820];
    v17 = a4;
    v24 = vnegq_f32(v12);
    do
    {
      v18 = *(v5 + 16 * v17);
      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      v40 = v15;
      v25[0] = v16;
      v25[1] = 3221225472;
      v25[2] = sub_1AF37AE1C;
      v25[3] = &unk_1E7A7FA88;
      v27 = v41;
      v26 = v18;
      v28 = v23;
      v29 = v8;
      v30 = v9;
      v31 = v10;
      v34 = v44;
      v33 = v43;
      v32 = v42;
      v35 = &v37;
      v36 = v5;
      vfx_uniform_grid_apply(a2, v17, v25);
      v19 = v38[6];
      *(v6 + 4 * v17) = v19;
      v20.i64[1] = v23.i64[1];
      v21 = v23.f32[1] * (v19 - v23.f32[0]);
      *(v7 + 4 * v17) = v21;
      v20.i32[0] = *(v6 + 4 * v17);
      v20.f32[1] = v21;
      v20.i64[1] = vnegq_f32(v20).u64[0];
      v24 = vminnmq_f32(v24, v20);
      _Block_object_dispose(&v37, 8);
      ++v17;
      --v13;
    }

    while (v13);
  }

  *(a1 + 15) = v24.i32[1];
  *(a1 + 13) = v24.i32[0];
  *(a1 + 14) = -v24.f32[2];
  *(a1 + 16) = -v24.f32[3];
}

void sub_1AF37AE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float32x4_t *sub_1AF37AE1C(float32x4_t *result, unsigned int *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = result[8].i64[1];
    v4 = a3;
    do
    {
      v5 = *a2++;
      v6 = vsubq_f32(*(v3 + 16 * v5), result[2]);
      v7 = vmulq_f32(v6, v6);
      v8 = v7.f32[2] + vaddv_f32(*v7.f32);
      v9 = result[5].f32[1];
      if (v9 > v8)
      {
        *(*(result[8].i64[0] + 8) + 24) = *(*(result[8].i64[0] + 8) + 24) + (((v9 - v8) * ((v9 - v8) * (result[4].f32[3] * result[5].f32[2]))) * (v9 - v8));
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

void sph_compute_forces_3d(float32x4_t *a1, uint64_t a2, __int128 *a3, unsigned int a4, unsigned int a5)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 2);
  v23 = *(a3 + 24);
  v24 = *a3;
  v6 = *a1;
  v7 = a1[2];
  v8 = a1[3];
  v50 = a1[1];
  v51 = v7;
  v9 = a1[4];
  v52 = v8;
  v53 = v9;
  if (a4 < a5)
  {
    v10 = 0;
    v21 = MEMORY[0x1E69E9820];
    v11 = v24 + 16 * a4;
    v12 = *(&v24 + 1) + 16 * a4;
    v13 = v23 + 4 * a4;
    v14 = *(&v23 + 1) + 4 * a4;
    v15 = v5 + 16 * a4;
    v16 = a4 - a5;
    v26 = v6;
    do
    {
      v17 = *(v11 + 16 * v10);
      v18 = *(v12 + 16 * v10);
      v25 = *(v13 + 4 * v10);
      v19 = *(v14 + 4 * v10);
      v45 = 0;
      v46 = &v45;
      v47 = 0x3020000000;
      v48 = 0;
      v49 = 0;
      v40 = 0;
      v41 = &v40;
      v42 = 0x3020000000;
      v43 = 0;
      v44 = 0;
      v27[0] = v21;
      v27[1] = 3221225472;
      v27[2] = sub_1AF37B0AC;
      v27[3] = &unk_1E7A7FAB0;
      v28 = v17;
      v29 = v6;
      v30 = v50;
      v31 = v51;
      v32 = v52;
      v33 = v53;
      v37 = v24;
      v38 = v23;
      v39 = v19;
      v35 = &v45;
      v36 = &v40;
      v34 = v18;
      vfx_uniform_grid_apply(a2, a4 + v10, v27);
      *(v15 + 16 * v10) = vaddq_f32(vmulq_n_f32(v26, v25), vaddq_f32(v46[2], v41[2]));
      _Block_object_dispose(&v40, 8);
      _Block_object_dispose(&v45, 8);
      ++v10;
      v6 = v26;
    }

    while (v16 + v10);
  }
}

void sub_1AF37B088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v46 - 224), 8);
  _Unwind_Resume(a1);
}

float32x4_t *sub_1AF37B0AC(float32x4_t *result, unsigned int *a2, unsigned int a3, double a4, double a5, double a6, double a7, double a8, float32x4_t a9)
{
  if (a3)
  {
    v9 = a3;
    do
    {
      v11 = *a2++;
      v10 = v11;
      v12 = vsubq_f32(*(result[10].i64[0] + 16 * v11), result[2]);
      v13 = vmulq_f32(v12, v12);
      a9.f32[0] = sqrtf(v13.f32[2] + vaddv_f32(*v13.f32)) + 0.0000001;
      v14 = result[4].f32[2] - a9.f32[0];
      if (v14 > 0.0)
      {
        v15 = *(result[10].i64[1] + 16 * v10);
        v16 = 1.0 / *(result[11].i64[0] + 4 * v10);
        a9.f32[0] = (v14 * (v14 * result[5].f32[3])) * ((result[4].f32[3] / a9.f32[0]) * (v16 * ((*(result[11].i64[1] + 4 * v10) + result[12].f32[0]) * 0.5)));
        *(*(result[9].i64[0] + 8) + 32) = vmlsq_lane_f32(*(*(result[9].i64[0] + 8) + 32), v12, *a9.f32, 0);
        v17 = *(result[9].i64[1] + 8);
        a9 = vmlaq_n_f32(v17[2], vsubq_f32(v15, result[8]), (v14 * v16) * ((result[6].f32[0] * result[5].f32[0]) * result[4].f32[3]));
        v17[2] = a9;
      }

      --v9;
    }

    while (v9);
  }

  return result;
}

double sub_1AF37B198(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(a2, _Q1), vcltzq_f32(a2))) & 0x80000000) != 0)
  {
    v6.i64[0] = 0;
  }

  else
  {
    v6 = vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, a2)), *(a1 + 16)));
    v7 = *(*(a1 + 64) + vaddvq_s32(v6));
    v8 = (v7 >> 10) & 0x1F;
    if (v8 == 31)
    {
      v9 = 2139095040;
    }

    else
    {
      v9 = (v7 >> 10) & 0x1F;
    }

    if (v8)
    {
      _ZF = v8 == 31;
    }

    else
    {
      _ZF = 1;
    }

    if (_ZF)
    {
      v11 = v9;
    }

    else
    {
      v11 = (v8 << 23) + 939524096;
    }

    v6.i32[0] = v11 | (v7 << 16) & 0x80000000 | (v7 >> 7) & 7 | (8 * (v7 & 0x3FF)) & 0x1FFF | ((v7 & 0x3FF) << 13);
    v6.i64[0] = vdupq_lane_s32(*v6.i8, 0).u64[0];
  }

  return *v6.i64;
}

double sub_1AF37B238(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(a2, _Q1), vcltzq_f32(a2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v7 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, a2)), *(a1 + 16)))));
  *&result = vld1q_dup_f32(v7).u64[0];
  return result;
}

double sub_1AF37B290(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(a2, _Q1), vcltzq_f32(a2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v7 = *(*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, a2)), *(a1 + 16)))));
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v9 = vandq_s8(vmovl_s16(v7), v8);
  v10 = vshll_n_u16(v7, 0xDuLL);
  v11 = vorrq_s8(vandq_s8(v10, vdupq_n_s32(0xF800000u)), vorrq_s8(v9, vandq_s8(v10, vdupq_n_s32(0x7FE000u))));
  v9.i64[0] = 0x3800000038000000;
  v9.i64[1] = 0x3800000038000000;
  *&result = vaddq_s32(v11, v9).u64[0];
  return result;
}

double sub_1AF37B31C(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(a2, _Q1), vcltzq_f32(a2))) & 0x80000000) != 0)
  {
    *&v7 = 0;
  }

  else
  {
    v7 = *(*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, a2)), *(a1 + 16)))));
  }

  return *&v7;
}

double sub_1AF37B370(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(a2, _Q1), vcltzq_f32(a2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v7 = vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, a2)), *(a1 + 16)));
  v7.i32[0] = vaddvq_s32(v7);
  v7.i8[0] = *(*(a1 + 64) + v7.i32[0]);
  *v7.i32 = v7.u32[0] * 0.0039216;
  *&result = vdupq_lane_s32(*v7.i8, 0).u64[0];
  return result;
}

double sub_1AF37B3D8(float32x4_t *a1, float32x4_t a2, double a3, double a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(a2, _Q1), vcltzq_f32(a2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v14 = a1[1];
  v15 = a1[2];
  v16 = vmulq_s32(v15, vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, a2)), v14));
  v16.i32[0] = vaddvq_s32(v16);
  v16.i8[0] = *(a1[4].i64[0] + v16.i32[0]);
  v15.f32[0] = v16.u32[0] * 0.0039216;
  v16.f32[0] = v15.f32[0] * v15.f32[0];
  v14.f32[0] = v16.f32[0] * v16.f32[0];
  a5.i32[0] = 1033798545;
  a6.i32[0] = 1024588407;
  a7.i32[0] = 979221581;
  v17 = vmlaq_f32(a7, a6, v15);
  a6.i32[0] = 1063398495;
  a8.i32[0] = 1056330697;
  v18 = vmlaq_f32(a8, a6, v15);
  v19 = vmlaq_f32(v17, v16, v18);
  a6.i32[0] = 1064027478;
  v18.i32[0] = -1083773218;
  v20 = vmlaq_f32(v18, a6, v15);
  a6.i32[0] = 1042024814;
  a9.i32[0] = -1089305042;
  v21 = vdupq_lane_s32(*&vmlaq_f32(v19, v14, vmlaq_f32(v20, v16, vmlaq_f32(a9, a6, v15))), 0);
  v22 = vmovl_s16(vdup_lane_s16(vmovn_s32(vcgeq_f32(v15, vdupq_n_s32(0x3D25AEE6u))), 0));
  v22.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v22), v21, vdupq_lane_s32(*&vmulq_f32(v15, a5), 0)).u64[0];
  return result;
}

double sub_1AF37B4E0(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(a2, _Q1), vcltzq_f32(a2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v7 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, a2)), *(a1 + 16)))));
  v8 = vld1q_dup_f32(v7);
  v9.i64[0] = 0xFF000000FFLL;
  v9.i64[1] = 0xFF000000FFLL;
  *&result = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v8, xmmword_1AFE42AA0), v9)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double sub_1AF37B560(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(a2, _Q1), vcltzq_f32(a2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v7 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, a2)), *(a1 + 16)))));
  v8 = vld1q_dup_f32(v7);
  v9.i64[0] = 0xFF000000FFLL;
  v9.i64[1] = 0xFF000000FFLL;
  v10 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v8, xmmword_1AFE42AA0), v9));
  v11 = vmulq_f32(v10, vdupq_n_s32(0x3B808081u));
  v12 = vmulq_f32(v11, v11);
  v13 = vmulq_f32(v10, vdupq_n_s32(0x399F22B4u));
  v14 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v10), v12, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v10)), vmulq_f32(v12, v12), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v10), v12, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v10)));
  v15 = vcgeq_f32(v11, vdupq_n_s32(0x3D25AEE6u));
  v15.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v15), v14, v13).u64[0];
  return result;
}

double sub_1AF37B694(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(a2, _Q1), vcltzq_f32(a2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v7 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, a2)), *(a1 + 16)))));
  v8 = vld1q_dup_f32(v7);
  v9.i64[0] = 0xFF000000FFLL;
  v9.i64[1] = 0xFF000000FFLL;
  v10 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v8, xmmword_1AFE42AA0), v9)), vdupq_n_s32(0x3B808081u)));
  *&result = vextq_s8(v10, v10, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37B71C(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(a2, _Q1), vcltzq_f32(a2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v7 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, a2)), *(a1 + 16)))));
  v8 = vld1q_dup_f32(v7);
  v9.i64[0] = 0xFF000000FFLL;
  v9.i64[1] = 0xFF000000FFLL;
  v10 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v8, xmmword_1AFE42AA0), v9));
  v11 = vmulq_f32(v10, vdupq_n_s32(0x3B808081u));
  v12 = vmulq_f32(v11, v11);
  v13 = vmulq_f32(v10, vdupq_n_s32(0x399F22B4u));
  v14 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v10), v12, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v10)), vmulq_f32(v12, v12), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v10), v12, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v10)));
  v15 = vcgeq_f32(v11, vdupq_n_s32(0x3D25AEE6u));
  v15.i32[3] = 0;
  v16 = vbslq_s8(vcltzq_s32(v15), v14, v13);
  v16.i32[3] = v11.i32[3];
  v17 = vrev64q_s32(v16);
  *&result = vextq_s8(v17, v17, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37B858(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v6 = vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(a2, 0), _Q1))), *(a1 + 16)));
  v7 = *(*(a1 + 64) + vaddvq_s32(v6));
  v8 = (v7 >> 10) & 0x1F;
  if (v8 == 31)
  {
    v9 = 2139095040;
  }

  else
  {
    v9 = (v7 >> 10) & 0x1F;
  }

  if (v8)
  {
    _ZF = v8 == 31;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v11 = v9;
  }

  else
  {
    v11 = (v8 << 23) + 939524096;
  }

  v6.i32[0] = v11 | (v7 << 16) & 0x80000000 | (v7 >> 7) & 7 | (8 * (v7 & 0x3FF)) & 0x1FFF | ((v7 & 0x3FF) << 13);
  v6.i64[0] = vdupq_lane_s32(*v6.i8, 0).u64[0];
  return *v6.i64;
}

double sub_1AF37B8E4(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v7 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(a2, 0), _Q1))), *(a1 + 16)))));
  *&result = vld1q_dup_f32(v7).u64[0];
  return result;
}

double sub_1AF37B928(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v7 = *(*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(a2, 0), _Q1))), *(a1 + 16)))));
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v9 = vandq_s8(vmovl_s16(v7), v8);
  v10 = vshll_n_u16(v7, 0xDuLL);
  v11 = vorrq_s8(vandq_s8(v10, vdupq_n_s32(0xF800000u)), vorrq_s8(v9, vandq_s8(v10, vdupq_n_s32(0x7FE000u))));
  v9.i64[0] = 0x3800000038000000;
  v9.i64[1] = 0x3800000038000000;
  *&result = vaddq_s32(v11, v9).u64[0];
  return result;
}

__n128 sub_1AF37B9A0(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  return *(*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(a2, 0), _Q1))), *(a1 + 16)))));
}

double sub_1AF37B9E0(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v7 = vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(a2, 0), _Q1))), *(a1 + 16)));
  v7.i32[0] = vaddvq_s32(v7);
  v7.i8[0] = *(*(a1 + 64) + v7.i32[0]);
  *v7.i32 = v7.u32[0] * 0.0039216;
  *&result = vdupq_lane_s32(*v7.i8, 0).u64[0];
  return result;
}

double sub_1AF37BA34(float32x4_t *a1, float32x4_t a2, double a3, double a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v14 = a1[1];
  v15 = vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(a2, 0), _Q1))), v14);
  v16 = a1[2];
  v17 = vmulq_s32(v16, v15);
  v17.i32[0] = vaddvq_s32(v17);
  v17.i8[0] = *(a1[4].i64[0] + v17.i32[0]);
  v16.f32[0] = v17.u32[0] * 0.0039216;
  v17.f32[0] = v16.f32[0] * v16.f32[0];
  v14.i32[0] = 1033798545;
  a5.f32[0] = v17.f32[0] * v17.f32[0];
  a6.i32[0] = 1024588407;
  a7.i32[0] = 979221581;
  v18 = vmlaq_f32(a7, a6, v16);
  a6.i32[0] = 1063398495;
  a8.i32[0] = 1056330697;
  v19 = vmlaq_f32(a8, a6, v16);
  v20 = vmlaq_f32(v18, v17, v19);
  a6.i32[0] = 1064027478;
  v19.i32[0] = -1083773218;
  v21 = vmlaq_f32(v19, a6, v16);
  a6.i32[0] = 1042024814;
  a9.i32[0] = -1089305042;
  v22 = vdupq_lane_s32(*&vmlaq_f32(v20, a5, vmlaq_f32(v21, v17, vmlaq_f32(a9, a6, v16))), 0);
  v23 = vmovl_s16(vdup_lane_s16(vmovn_s32(vcgeq_f32(v16, vdupq_n_s32(0x3D25AEE6u))), 0));
  v23.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v23), v22, vdupq_lane_s32(*&vmulq_f32(v16, v14), 0)).u64[0];
  return result;
}

double sub_1AF37BB28(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v7 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(a2, 0), _Q1))), *(a1 + 16)))));
  v8 = vld1q_dup_f32(v7);
  _Q1.i64[0] = 0xFF000000FFLL;
  _Q1.i64[1] = 0xFF000000FFLL;
  *&result = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v8, xmmword_1AFE42AA0), _Q1)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double sub_1AF37BB94(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v7 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(a2, 0), _Q1))), *(a1 + 16)))));
  v8 = vld1q_dup_f32(v7);
  _Q1.i64[0] = 0xFF000000FFLL;
  _Q1.i64[1] = 0xFF000000FFLL;
  v9 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v8, xmmword_1AFE42AA0), _Q1));
  v10 = vmulq_f32(v9, vdupq_n_s32(0x3B808081u));
  v11 = vmulq_f32(v10, v10);
  v12 = vmulq_f32(v9, vdupq_n_s32(0x399F22B4u));
  v13 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v9), v11, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v9));
  v14 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v9), v11, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v9));
  v15 = vcgeq_f32(v10, vdupq_n_s32(0x3D25AEE6u));
  v15.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v15), vmlaq_f32(v13, vmulq_f32(v11, v11), v14), v12).u64[0];
  return result;
}

double sub_1AF37BCB4(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v7 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(a2, 0), _Q1))), *(a1 + 16)))));
  v8 = vld1q_dup_f32(v7);
  _Q1.i64[0] = 0xFF000000FFLL;
  _Q1.i64[1] = 0xFF000000FFLL;
  v9 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v8, xmmword_1AFE42AA0), _Q1)), vdupq_n_s32(0x3B808081u)));
  *&result = vextq_s8(v9, v9, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37BD28(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v7 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(a2, 0), _Q1))), *(a1 + 16)))));
  v8 = vld1q_dup_f32(v7);
  _Q1.i64[0] = 0xFF000000FFLL;
  _Q1.i64[1] = 0xFF000000FFLL;
  v9 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v8, xmmword_1AFE42AA0), _Q1));
  v10 = vmulq_f32(v9, vdupq_n_s32(0x3B808081u));
  v11 = vmulq_f32(v10, v10);
  v12 = vmulq_f32(v9, vdupq_n_s32(0x399F22B4u));
  v13 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v9), v11, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v9)), vmulq_f32(v11, v11), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v9), v11, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v9)));
  v14 = vcgeq_f32(v10, vdupq_n_s32(0x3D25AEE6u));
  v14.i32[3] = 0;
  v15 = vbslq_s8(vcltzq_s32(v14), v13, v12);
  v15.i32[3] = v10.i32[3];
  v16 = vrev64q_s32(v15);
  *&result = vextq_s8(v16, v16, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37BE50(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2 = vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vsubq_f32(a2, vrndmq_f32(a2)), vdupq_n_s32(0x3F7FFFFFu)))), *(a1 + 16)));
  v3 = *(*(a1 + 64) + vaddvq_s32(v2));
  v4 = (v3 >> 10) & 0x1F;
  if (v4 == 31)
  {
    v5 = 2139095040;
  }

  else
  {
    v5 = (v3 >> 10) & 0x1F;
  }

  if (v4)
  {
    v6 = v4 == 31;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = (v4 << 23) + 939524096;
  }

  v2.i32[0] = v7 | (v3 << 16) & 0x80000000 | (v3 >> 7) & 7 | (8 * (v3 & 0x3FF)) & 0x1FFF | ((v3 & 0x3FF) << 13);
  v2.i64[0] = vdupq_lane_s32(*v2.i8, 0).u64[0];
  return *v2.i64;
}

double sub_1AF37BEE0(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vsubq_f32(a2, vrndmq_f32(a2)), vdupq_n_s32(0x3F7FFFFFu)))), *(a1 + 16)))));
  *&result = vld1q_dup_f32(v2).u64[0];
  return result;
}

double sub_1AF37BF28(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2 = *(*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vsubq_f32(a2, vrndmq_f32(a2)), vdupq_n_s32(0x3F7FFFFFu)))), *(a1 + 16)))));
  v3.i64[0] = 0x8000000080000000;
  v3.i64[1] = 0x8000000080000000;
  v4 = vandq_s8(vmovl_s16(v2), v3);
  v5 = vshll_n_u16(v2, 0xDuLL);
  v6 = vorrq_s8(vandq_s8(v5, vdupq_n_s32(0xF800000u)), vorrq_s8(v4, vandq_s8(v5, vdupq_n_s32(0x7FE000u))));
  v4.i64[0] = 0x3800000038000000;
  v4.i64[1] = 0x3800000038000000;
  *&result = vaddq_s32(v6, v4).u64[0];
  return result;
}

double sub_1AF37BFE8(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2 = vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vsubq_f32(a2, vrndmq_f32(a2)), vdupq_n_s32(0x3F7FFFFFu)))), *(a1 + 16)));
  v2.i32[0] = vaddvq_s32(v2);
  v2.i8[0] = *(*(a1 + 64) + v2.i32[0]);
  *v2.i32 = v2.u32[0] * 0.0039216;
  *&result = vdupq_lane_s32(*v2.i8, 0).u64[0];
  return result;
}

double sub_1AF37C040(float32x4_t *a1, float32x4_t a2, double a3, double a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  a2.i32[3] = 0;
  v9 = a1[1];
  v10 = a1[2];
  v11 = vmulq_s32(v10, vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vsubq_f32(a2, vrndmq_f32(a2)), vdupq_n_s32(0x3F7FFFFFu)))), v9));
  v11.i32[0] = vaddvq_s32(v11);
  v11.i8[0] = *(a1[4].i64[0] + v11.i32[0]);
  v10.f32[0] = v11.u32[0] * 0.0039216;
  v11.f32[0] = v10.f32[0] * v10.f32[0];
  v9.i32[0] = 1033798545;
  a5.f32[0] = v11.f32[0] * v11.f32[0];
  a6.i32[0] = 1024588407;
  a7.i32[0] = 979221581;
  v12 = vmlaq_f32(a7, a6, v10);
  a6.i32[0] = 1063398495;
  a8.i32[0] = 1056330697;
  v13 = vmlaq_f32(a8, a6, v10);
  v14 = vmlaq_f32(v12, v11, v13);
  a6.i32[0] = 1064027478;
  v13.i32[0] = -1083773218;
  v15 = vmlaq_f32(v13, a6, v10);
  a6.i32[0] = 1042024814;
  a9.i32[0] = -1089305042;
  v16 = vdupq_lane_s32(*&vmlaq_f32(v14, a5, vmlaq_f32(v15, v11, vmlaq_f32(a9, a6, v10))), 0);
  v17 = vmovl_s16(vdup_lane_s16(vmovn_s32(vcgeq_f32(v10, vdupq_n_s32(0x3D25AEE6u))), 0));
  v17.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v17), v16, vdupq_lane_s32(*&vmulq_f32(v10, v9), 0)).u64[0];
  return result;
}

double sub_1AF37C138(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vsubq_f32(a2, vrndmq_f32(a2)), vdupq_n_s32(0x3F7FFFFFu)))), *(a1 + 16)))));
  v3 = vld1q_dup_f32(v2);
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  *&result = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v3, xmmword_1AFE42AA0), v4)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double sub_1AF37C1A8(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vsubq_f32(a2, vrndmq_f32(a2)), vdupq_n_s32(0x3F7FFFFFu)))), *(a1 + 16)))));
  v3 = vld1q_dup_f32(v2);
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  v5 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v3, xmmword_1AFE42AA0), v4));
  v6 = vmulq_f32(v5, vdupq_n_s32(0x3B808081u));
  v7 = vmulq_f32(v6, v6);
  v8 = vmulq_f32(v5, vdupq_n_s32(0x399F22B4u));
  v9 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v5), v7, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v5));
  v10 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v5), v7, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v5));
  v11 = vcgeq_f32(v6, vdupq_n_s32(0x3D25AEE6u));
  v11.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v11), vmlaq_f32(v9, vmulq_f32(v7, v7), v10), v8).u64[0];
  return result;
}

double sub_1AF37C2CC(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vsubq_f32(a2, vrndmq_f32(a2)), vdupq_n_s32(0x3F7FFFFFu)))), *(a1 + 16)))));
  v3 = vld1q_dup_f32(v2);
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  v5 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v3, xmmword_1AFE42AA0), v4)), vdupq_n_s32(0x3B808081u)));
  *&result = vextq_s8(v5, v5, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37C344(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vminnmq_f32(vsubq_f32(a2, vrndmq_f32(a2)), vdupq_n_s32(0x3F7FFFFFu)))), *(a1 + 16)))));
  v3 = vld1q_dup_f32(v2);
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  v5 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v3, xmmword_1AFE42AA0), v4));
  v6 = vmulq_f32(v5, vdupq_n_s32(0x3B808081u));
  v7 = vmulq_f32(v6, v6);
  v8 = vmulq_f32(v5, vdupq_n_s32(0x399F22B4u));
  v9 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v5), v7, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v5)), vmulq_f32(v7, v7), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v5), v7, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v5)));
  v10 = vcgeq_f32(v6, vdupq_n_s32(0x3D25AEE6u));
  v10.i32[3] = 0;
  v11 = vbslq_s8(vcltzq_s32(v10), v9, v8);
  v11.i32[3] = v6.i32[3];
  v12 = vrev64q_s32(v11);
  *&result = vextq_s8(v12, v12, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37C470(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4 = vmlaq_f32(v3, v3, a2);
  v5 = vabdq_f32(v2, vminnmq_f32(vsubq_f32(v4, vrndmq_f32(v4)), vdupq_n_s32(0x3F7FFFFFu)));
  v6 = vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vaddq_f32(v5, v5))), *(a1 + 16)));
  v7 = *(*(a1 + 64) + vaddvq_s32(v6));
  v8 = (v7 >> 10) & 0x1F;
  if (v8 == 31)
  {
    v9 = 2139095040;
  }

  else
  {
    v9 = (v7 >> 10) & 0x1F;
  }

  if (v8)
  {
    v10 = v8 == 31;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = (v8 << 23) + 939524096;
  }

  v6.i32[0] = v11 | (v7 << 16) & 0x80000000 | (v7 >> 7) & 7 | (8 * (v7 & 0x3FF)) & 0x1FFF | ((v7 & 0x3FF) << 13);
  v6.i64[0] = vdupq_lane_s32(*v6.i8, 0).u64[0];
  return *v6.i64;
}

double sub_1AF37C514(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v3 = vmlaq_f32(v2, v2, a2);
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  v5 = vabdq_f32(v4, vminnmq_f32(vsubq_f32(v3, vrndmq_f32(v3)), vdupq_n_s32(0x3F7FFFFFu)));
  v6 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vaddq_f32(v5, v5))), *(a1 + 16)))));
  *&result = vld1q_dup_f32(v6).u64[0];
  return result;
}

double sub_1AF37C570(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4 = vmlaq_f32(v3, v3, a2);
  v5 = vabdq_f32(v2, vminnmq_f32(vsubq_f32(v4, vrndmq_f32(v4)), vdupq_n_s32(0x3F7FFFFFu)));
  v5.i64[0] = *(*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vaddq_f32(v5, v5))), *(a1 + 16)))));
  v4.i64[0] = 0x8000000080000000;
  v4.i64[1] = 0x8000000080000000;
  v6 = vandq_s8(vmovl_s16(*v5.f32), v4);
  v7 = vshll_n_u16(*v5.f32, 0xDuLL);
  v8 = vorrq_s8(vandq_s8(v7, vdupq_n_s32(0xF800000u)), vorrq_s8(v6, vandq_s8(v7, vdupq_n_s32(0x7FE000u))));
  v6.i64[0] = 0x3800000038000000;
  v6.i64[1] = 0x3800000038000000;
  *&result = vaddq_s32(v8, v6).u64[0];
  return result;
}

__n128 sub_1AF37C600(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4 = vmlaq_f32(v3, v3, a2);
  v5 = vabdq_f32(v2, vminnmq_f32(vsubq_f32(v4, vrndmq_f32(v4)), vdupq_n_s32(0x3F7FFFFFu)));
  return *(*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vaddq_f32(v5, v5))), *(a1 + 16)))));
}

double sub_1AF37C658(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4 = vmlaq_f32(v3, v3, a2);
  v5 = vabdq_f32(v2, vminnmq_f32(vsubq_f32(v4, vrndmq_f32(v4)), vdupq_n_s32(0x3F7FFFFFu)));
  v6 = vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vaddq_f32(v5, v5))), *(a1 + 16)));
  v6.i32[0] = vaddvq_s32(v6);
  v6.i8[0] = *(*(a1 + 64) + v6.i32[0]);
  *v6.i32 = v6.u32[0] * 0.0039216;
  *&result = vdupq_lane_s32(*v6.i8, 0).u64[0];
  return result;
}

double sub_1AF37C6C4(float32x4_t *a1, float32x4_t a2, double a3, double a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  a2.i32[3] = 0;
  v9.i64[0] = 0x3F0000003F000000;
  v9.i64[1] = 0x3F0000003F000000;
  v10.i64[0] = 0x3F0000003F000000;
  v10.i64[1] = 0x3F0000003F000000;
  v11 = vmlaq_f32(v10, v10, a2);
  v12 = vabdq_f32(v9, vminnmq_f32(vsubq_f32(v11, vrndmq_f32(v11)), vdupq_n_s32(0x3F7FFFFFu)));
  v13 = a1[1];
  v14 = a1[2];
  v15 = vmulq_s32(v14, vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vaddq_f32(v12, v12))), v13));
  v15.i32[0] = vaddvq_s32(v15);
  v15.i8[0] = *(a1[4].i64[0] + v15.i32[0]);
  v14.f32[0] = v15.u32[0] * 0.0039216;
  v15.f32[0] = v14.f32[0] * v14.f32[0];
  v13.i32[0] = 1033798545;
  a5.f32[0] = v15.f32[0] * v15.f32[0];
  a6.i32[0] = 1024588407;
  a7.i32[0] = 979221581;
  v16 = vmlaq_f32(a7, a6, v14);
  a6.i32[0] = 1063398495;
  a8.i32[0] = 1056330697;
  v17 = vmlaq_f32(a8, a6, v14);
  v18 = vmlaq_f32(v16, v15, v17);
  a6.i32[0] = 1064027478;
  v17.i32[0] = -1083773218;
  v19 = vmlaq_f32(v17, a6, v14);
  a6.i32[0] = 1042024814;
  a9.i32[0] = -1089305042;
  v20 = vdupq_lane_s32(*&vmlaq_f32(v18, a5, vmlaq_f32(v19, v15, vmlaq_f32(a9, a6, v14))), 0);
  v21 = vmovl_s16(vdup_lane_s16(vmovn_s32(vcgeq_f32(v14, vdupq_n_s32(0x3D25AEE6u))), 0));
  v21.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v21), v20, vdupq_lane_s32(*&vmulq_f32(v14, v13), 0)).u64[0];
  return result;
}

double sub_1AF37C7D0(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4 = vmlaq_f32(v3, v3, a2);
  v5 = vabdq_f32(v2, vminnmq_f32(vsubq_f32(v4, vrndmq_f32(v4)), vdupq_n_s32(0x3F7FFFFFu)));
  v6 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vaddq_f32(v5, v5))), *(a1 + 16)))));
  v7 = vld1q_dup_f32(v6);
  v2.i64[0] = 0xFF000000FFLL;
  v2.i64[1] = 0xFF000000FFLL;
  *&result = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v7, xmmword_1AFE42AA0), v2)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double sub_1AF37C854(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4 = vmlaq_f32(v3, v3, a2);
  v5 = vabdq_f32(v2, vminnmq_f32(vsubq_f32(v4, vrndmq_f32(v4)), vdupq_n_s32(0x3F7FFFFFu)));
  v6 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vaddq_f32(v5, v5))), *(a1 + 16)))));
  v7 = vld1q_dup_f32(v6);
  v2.i64[0] = 0xFF000000FFLL;
  v2.i64[1] = 0xFF000000FFLL;
  v8 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v7, xmmword_1AFE42AA0), v2));
  v9 = vmulq_f32(v8, vdupq_n_s32(0x3B808081u));
  v10 = vmulq_f32(v9, v9);
  v11 = vmulq_f32(v8, vdupq_n_s32(0x399F22B4u));
  v12 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v8), v10, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v8));
  v13 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v8), v10, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v8));
  v14 = vcgeq_f32(v9, vdupq_n_s32(0x3D25AEE6u));
  v14.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v14), vmlaq_f32(v12, vmulq_f32(v10, v10), v13), v11).u64[0];
  return result;
}

double sub_1AF37C98C(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v3 = vmlaq_f32(v2, v2, a2);
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  v5 = vabdq_f32(v4, vminnmq_f32(vsubq_f32(v3, vrndmq_f32(v3)), vdupq_n_s32(0x3F7FFFFFu)));
  v6 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vaddq_f32(v5, v5))), *(a1 + 16)))));
  v7 = vld1q_dup_f32(v6);
  v3.i64[0] = 0xFF000000FFLL;
  v3.i64[1] = 0xFF000000FFLL;
  v8 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v7, xmmword_1AFE42AA0), v3)), vdupq_n_s32(0x3B808081u)));
  *&result = vextq_s8(v8, v8, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37CA18(uint64_t a1, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4 = vmlaq_f32(v3, v3, a2);
  v5 = vabdq_f32(v2, vminnmq_f32(vsubq_f32(v4, vrndmq_f32(v4)), vdupq_n_s32(0x3F7FFFFFu)));
  v6 = (*(a1 + 64) + vaddvq_s32(vmulq_s32(*(a1 + 32), vminq_s32(vcvtq_s32_f32(vmulq_f32(*a1, vaddq_f32(v5, v5))), *(a1 + 16)))));
  v7 = vld1q_dup_f32(v6);
  v2.i64[0] = 0xFF000000FFLL;
  v2.i64[1] = 0xFF000000FFLL;
  v8 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v7, xmmword_1AFE42AA0), v2));
  v9 = vmulq_f32(v8, vdupq_n_s32(0x3B808081u));
  v10 = vmulq_f32(v9, v9);
  v11 = vmulq_f32(v8, vdupq_n_s32(0x399F22B4u));
  v12 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v8), v10, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v8)), vmulq_f32(v10, v10), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v8), v10, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v8)));
  v13 = vcgeq_f32(v9, vdupq_n_s32(0x3D25AEE6u));
  v13.i32[3] = 0;
  v14 = vbslq_s8(vcltzq_s32(v13), v12, v11);
  v14.i32[3] = v9.i32[3];
  v15 = vrev64q_s32(v14);
  *&result = vextq_s8(v15, v15, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37CB58(uint64_t a1, float32x4_t a2, double a3, double a4, double a5, double a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v10 = vsubq_f32(a2, *(a1 + 80));
  v10.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(v10, _Q1), vcltzq_f32(v10))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v15 = *(a1 + 16);
  v16 = vmulq_f32(*a1, v10);
  v17 = vminq_s32(vcvtq_s32_f32(v16), v15);
  v18 = *(a1 + 64);
  v19 = *(a1 + 32);
  v20 = vmulq_s32(v19, v17);
  v20.i32[0] = vaddvq_s32(v20);
  v21 = vandq_s8(v19, vcgtq_s32(v15, v17));
  v22 = v21.i32[0] + v20.i32[0];
  v23 = v21.i32[1] + v20.i32[0];
  v24 = v23 + v21.i32[0];
  v25 = (v18 + v20.i32[0]);
  v26 = *v25;
  v27 = (v26 >> 10) & 0x1F;
  if (v27 == 31)
  {
    v28 = 2139095040;
  }

  else
  {
    v28 = (v26 >> 10) & 0x1F;
  }

  if (v27)
  {
    _ZF = v27 == 31;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v30 = v28;
  }

  else
  {
    v30 = (v27 << 23) + 939524096;
  }

  v20.i32[0] = v30 | (v26 << 16) & 0x80000000 | (v26 >> 7) & 7 | (8 * (v26 & 0x3FF)) & 0x1FFF | ((v26 & 0x3FF) << 13);
  v31 = (v18 + v22);
  v32 = *v31;
  v33 = (v32 >> 10) & 0x1F;
  if (v33 == 31)
  {
    v34 = 2139095040;
  }

  else
  {
    v34 = (v32 >> 10) & 0x1F;
  }

  if (v33)
  {
    v35 = v33 == 31;
  }

  else
  {
    v35 = 1;
  }

  if (v35)
  {
    v36 = v34;
  }

  else
  {
    v36 = (v33 << 23) + 939524096;
  }

  v21.i32[0] = v36 | (v32 << 16) & 0x80000000 | (v32 >> 7) & 7 | (8 * (v32 & 0x3FF)) & 0x1FFF | ((v32 & 0x3FF) << 13);
  v37 = v18 + v23;
  v38 = *(v18 + v23);
  v39 = (v38 >> 10) & 0x1F;
  if (v39 == 31)
  {
    v40 = 2139095040;
  }

  else
  {
    v40 = (v38 >> 10) & 0x1F;
  }

  if (v39)
  {
    v41 = v39 == 31;
  }

  else
  {
    v41 = 1;
  }

  if (v41)
  {
    v42 = v40;
  }

  else
  {
    v42 = (v39 << 23) + 939524096;
  }

  v17.i32[0] = v42 | (v38 << 16) & 0x80000000 | (v38 >> 7) & 7 | (8 * (v38 & 0x3FF)) & 0x1FFF | ((v38 & 0x3FF) << 13);
  v43 = (v18 + v24);
  v44 = *v43;
  v45 = (v44 >> 10) & 0x1F;
  if (v45 == 31)
  {
    v46 = 2139095040;
  }

  else
  {
    v46 = (v44 >> 10) & 0x1F;
  }

  if (v45)
  {
    v47 = v45 == 31;
  }

  else
  {
    v47 = 1;
  }

  if (v47)
  {
    v48 = v46;
  }

  else
  {
    v48 = (v45 << 23) + 939524096;
  }

  v19.i32[0] = v48 | (v44 << 16) & 0x80000000 | (v44 >> 7) & 7 | (8 * (v44 & 0x3FF)) & 0x1FFF | ((v44 & 0x3FF) << 13);
  v49 = *(v25 + v21.i32[2]);
  v50 = (v49 >> 10) & 0x1F;
  if (v50 == 31)
  {
    v51 = 2139095040;
  }

  else
  {
    v51 = (v49 >> 10) & 0x1F;
  }

  if (v50)
  {
    v52 = v50 == 31;
  }

  else
  {
    v52 = 1;
  }

  if (v52)
  {
    v53 = v51;
  }

  else
  {
    v53 = (v50 << 23) + 939524096;
  }

  a7.i32[0] = v53 | (v49 << 16) & 0x80000000 | (v49 >> 7) & 7 | (8 * (v49 & 0x3FF)) & 0x1FFF | ((v49 & 0x3FF) << 13);
  v54 = *(v31 + v21.i32[2]);
  v55 = (v54 >> 10) & 0x1F;
  if (v55 == 31)
  {
    v56 = 2139095040;
  }

  else
  {
    v56 = (v54 >> 10) & 0x1F;
  }

  if (v55)
  {
    v57 = v55 == 31;
  }

  else
  {
    v57 = 1;
  }

  if (v57)
  {
    v58 = v56;
  }

  else
  {
    v58 = (v55 << 23) + 939524096;
  }

  a8.i32[0] = v58 | (v54 << 16) & 0x80000000 | (v54 >> 7) & 7 | (8 * (v54 & 0x3FF)) & 0x1FFF | ((v54 & 0x3FF) << 13);
  v59 = *(v37 + v21.i32[2]);
  v60 = (v59 >> 10) & 0x1F;
  if (v60 == 31)
  {
    v61 = 2139095040;
  }

  else
  {
    v61 = (v59 >> 10) & 0x1F;
  }

  if (v60)
  {
    v62 = v60 == 31;
  }

  else
  {
    v62 = 1;
  }

  if (v62)
  {
    v63 = v61;
  }

  else
  {
    v63 = (v60 << 23) + 939524096;
  }

  a9.i32[0] = v63 | (v59 << 16) & 0x80000000 | (v59 >> 7) & 7 | (8 * (v59 & 0x3FF)) & 0x1FFF | ((v59 & 0x3FF) << 13);
  v64 = *(v43 + v21.i32[2]);
  v65 = (v64 >> 10) & 0x1F;
  if (v65 == 31)
  {
    v66 = 2139095040;
  }

  else
  {
    v66 = (v64 >> 10) & 0x1F;
  }

  if (v65)
  {
    v67 = v65 == 31;
  }

  else
  {
    v67 = 1;
  }

  if (v67)
  {
    v68 = v66;
  }

  else
  {
    v68 = (v65 << 23) + 939524096;
  }

  v9.i32[0] = v68 | (v64 << 16) & 0x80000000 | (v64 >> 7) & 7 | (8 * (v64 & 0x3FF)) & 0x1FFF | ((v64 & 0x3FF) << 13);
  v69 = vsubq_f32(v16, vrndq_f32(v16));
  v70 = vmlaq_f32(v20, v69, vsubq_f32(v21, v20));
  v71 = vmlaq_f32(a7, v69, vsubq_f32(a8, a7));
  v72 = vsubq_f32(v9, a9);
  v73 = vdupq_lane_s32(*v69.f32, 1);
  v74 = vmlaq_n_f32(vdupq_lane_s32(*v70.f32, 0), v73, vmlaq_f32(vsubq_f32(v17, v70), v69, vsubq_f32(v19, v17)).f32[0]);
  *&result = vmlaq_laneq_f32(v74, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v71.f32, 0), v74), v73, vmlaq_f32(vsubq_f32(a9, v71), v69, v72).f32[0]), v69, 2).u64[0];
  return result;
}

double sub_1AF37CE60(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v9 = vsubq_f32(a2, a1[5]);
  v9.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(v9, _Q1), vcltzq_f32(v9))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v15 = a1[1];
  v16 = vmulq_f32(*a1, v9);
  v17 = vminq_s32(vcvtq_s32_f32(v16), v15);
  v18 = a1[2];
  v19 = vmulq_s32(v18, v17);
  v19.i32[0] = vaddvq_s32(v19);
  v20 = vandq_s8(v18, vcgtq_s32(v15, v17));
  v21 = v20.i32[1] + v19.i32[0];
  v22 = v21 + v20.i32[0];
  v23 = a1[4].i64[0];
  v24 = v20.i32[0] + v19.i32[0];
  v25 = (v23 + v19.i32[0]);
  v20.i32[0] = *v25;
  v26 = (v23 + v24);
  v27 = (v23 + v21);
  v18.i32[0] = *v27;
  v28 = (v23 + v22);
  a7.i32[0] = *(v25 + v20.i32[2]);
  a8.f32[0] = *(v26 + v20.i32[2]);
  a9.i32[0] = *(v27 + v20.i32[2]);
  v29 = *(v28 + v20.i32[2]);
  v30 = vsubq_f32(v16, vrndq_f32(v16));
  v16.f32[0] = *v26 - *v25;
  v31 = vmlaq_f32(v20, v30, v16);
  v15.f32[0] = a8.f32[0] - a7.f32[0];
  v32 = vmlaq_f32(a7, v30, v15);
  v19.f32[0] = *v28 - *v27;
  a8.f32[0] = v29 - a9.f32[0];
  v33 = vdupq_lane_s32(*v30.f32, 1);
  v34 = vmlaq_n_f32(vdupq_lane_s32(*v31.f32, 0), v33, vmlaq_f32(vsubq_f32(v18, v31), v30, v19).f32[0]);
  *&result = vmlaq_laneq_f32(v34, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v32.f32, 0), v34), v33, vmlaq_f32(vsubq_f32(a9, v32), v30, a8).f32[0]), v30, 2).u64[0];
  return result;
}

double sub_1AF37CF5C(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(v2, _Q1), vcltzq_f32(v2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, v2);
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 32);
  v12 = vaddvq_s32(vmulq_s32(v11, v10));
  v13 = vandq_s8(v11, vcgtq_s32(v8, v10));
  v14 = v13.i32[2];
  v15 = v13.i32[1] + v12;
  v16 = v15 + v13.i32[0];
  v17 = vdupq_n_s32(0x7FE000u);
  v18 = vdupq_n_s32(0xF800000u);
  v19 = *(a1 + 64);
  v20 = v13.i32[0] + v12;
  v21 = (v19 + v12);
  v22.i64[0] = 0x8000000080000000;
  v22.i64[1] = 0x8000000080000000;
  v23 = vshll_n_u16(*v21, 0xDuLL);
  v24.i64[0] = 0x3800000038000000;
  v24.i64[1] = 0x3800000038000000;
  v25 = vaddq_s32(vorrq_s8(vandq_s8(v23, v18), vorrq_s8(vandq_s8(vmovl_s16(*v21), v22), vandq_s8(v23, v17))), v24);
  v26 = (v19 + v20);
  v27 = vshll_n_u16(*v26, 0xDuLL);
  v28 = vaddq_s32(vorrq_s8(vandq_s8(v27, v18), vorrq_s8(vandq_s8(vmovl_s16(*v26), v22), vandq_s8(v27, v17))), v24);
  v29 = (v19 + v15);
  v30 = vshll_n_u16(*v29, 0xDuLL);
  v31 = vaddq_s32(vorrq_s8(vandq_s8(v30, v18), vorrq_s8(vandq_s8(vmovl_s16(*v29), v22), vandq_s8(v30, v17))), v24);
  v32 = (v19 + v16);
  v33 = vshll_n_u16(*v32, 0xDuLL);
  v34 = vaddq_s32(vorrq_s8(vandq_s8(v33, v18), vorrq_s8(vandq_s8(vmovl_s16(*v32), v22), vandq_s8(v33, v17))), v24);
  v35 = *(v21 + v14);
  v36 = vandq_s8(vmovl_s16(v35), v22);
  v37 = vshll_n_u16(v35, 0xDuLL);
  v38 = vaddq_s32(vorrq_s8(vandq_s8(v37, v18), vorrq_s8(v36, vandq_s8(v37, v17))), v24);
  *v36.i8 = *(v26 + v14);
  v39 = vandq_s8(vmovl_s16(*v36.i8), v22);
  v40 = vshll_n_u16(*v36.i8, 0xDuLL);
  v41 = vaddq_s32(vorrq_s8(vandq_s8(v40, v18), vorrq_s8(v39, vandq_s8(v40, v17))), v24);
  *v39.i8 = *(v29 + v14);
  v42 = vandq_s8(vmovl_s16(*v39.i8), v22);
  v43 = vshll_n_u16(*v39.i8, 0xDuLL);
  v44 = vaddq_s32(vorrq_s8(vandq_s8(v43, v18), vorrq_s8(v42, vandq_s8(v43, v17))), v24);
  *v42.i8 = *(v32 + v14);
  v45 = vandq_s8(vmovl_s16(*v42.i8), v22);
  v46 = vshll_n_u16(*v42.i8, 0xDuLL);
  v47 = vsubq_f32(v9, vrndq_f32(v9));
  v48 = vmlaq_n_f32(v25, vsubq_f32(v28, v25), v47.f32[0]);
  v49 = vmlaq_n_f32(v38, vsubq_f32(v41, v38), v47.f32[0]);
  v50 = vmlaq_lane_f32(v48, vmlaq_n_f32(vsubq_f32(v31, v48), vsubq_f32(v34, v31), v47.f32[0]), *v47.f32, 1);
  *&result = vmlaq_laneq_f32(v50, vmlaq_lane_f32(vsubq_f32(v49, v50), vmlaq_n_f32(vsubq_f32(v44, v49), vsubq_f32(vaddq_s32(vorrq_s8(vandq_s8(v46, v18), vorrq_s8(v45, vandq_s8(v46, v17))), v24), v44), v47.f32[0]), *v47.f32, 1), v47, 2).u64[0];
  return result;
}

double sub_1AF37D164(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(v2, _Q1), vcltzq_f32(v2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, v2);
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 32);
  v12 = vaddvq_s32(vmulq_s32(v11, v10));
  v13 = vandq_s8(v11, vcgtq_s32(v8, v10));
  v14 = v13.i32[1] + v12;
  v15 = v14 + v13.i32[0];
  v16 = *(a1 + 64);
  v17 = (v16 + v12);
  v18 = (v16 + v13.i32[0] + v12);
  v19 = (v16 + v14);
  v20 = (v16 + v15);
  v21 = *(v17 + v13.i32[2]);
  v22 = *(v18 + v13.i32[2]);
  v23 = *(v19 + v13.i32[2]);
  v24 = *(v20 + v13.i32[2]);
  v25 = vsubq_f32(v9, vrndq_f32(v9));
  v26 = vmlaq_n_f32(*v17, vsubq_f32(*v18, *v17), v25.f32[0]);
  v27 = vmlaq_n_f32(v21, vsubq_f32(v22, v21), v25.f32[0]);
  v28 = vmlaq_lane_f32(v26, vmlaq_n_f32(vsubq_f32(*v19, v26), vsubq_f32(*v20, *v19), v25.f32[0]), *v25.f32, 1);
  *&result = vmlaq_laneq_f32(v28, vmlaq_lane_f32(vsubq_f32(v27, v28), vmlaq_n_f32(vsubq_f32(v23, v27), vsubq_f32(v24, v23), v25.f32[0]), *v25.f32, 1), v25, 2).u64[0];
  return result;
}

double sub_1AF37D254(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, float32x4_t a7, float32x4_t a8, float a9)
{
  v11 = vsubq_f32(a2, a1[5]);
  v11.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(v11, _Q1), vcltzq_f32(v11))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v17 = a1[1];
  v18 = vmulq_f32(*a1, v11);
  v19 = vminq_s32(vcvtq_s32_f32(v18), v17);
  v20 = a1[2];
  v21 = vmulq_s32(v20, v19);
  v21.i32[0] = vaddvq_s32(v21);
  v22 = vandq_s8(v20, vcgtq_s32(v17, v19));
  v23 = v22.i32[1] + v21.i32[0];
  v24 = v23 + v22.i32[0];
  v25 = a1[4].i64[0];
  v26 = (v25 + v21.i32[0]);
  v17.i8[0] = *v26;
  v17.f32[0] = v17.u32[0] * 0.0039216;
  v27 = (v25 + v22.i32[0] + v21.i32[0]);
  v20.i8[0] = *v27;
  v28 = (v25 + v23);
  v21.i8[0] = *v28;
  v21.f32[0] = v21.u32[0] * 0.0039216;
  v29 = (v25 + v24);
  a7.i8[0] = *v29;
  a8.i8[0] = v26[v22.i32[2]];
  a8.f32[0] = a8.u32[0] * 0.0039216;
  LOBYTE(a9) = v27[v22.i32[2]];
  v9.i8[0] = v28[v22.i32[2]];
  LOBYTE(v10) = v29[v22.i32[2]];
  v9.f32[0] = v9.u32[0] * 0.0039216;
  v30 = vsubq_f32(v18, vrndq_f32(v18));
  v18.f32[0] = -(v17.f32[0] - (v20.u32[0] * 0.0039216));
  v31 = vmlaq_f32(v17, v30, v18);
  v20.f32[0] = -(a8.f32[0] - (LODWORD(a9) * 0.0039216));
  v32 = vmlaq_f32(a8, v30, v20);
  a7.f32[0] = -(v21.f32[0] - (a7.u32[0] * 0.0039216));
  v22.f32[0] = -(v9.f32[0] - (v10 * 0.0039216));
  v33 = vdupq_lane_s32(*v30.f32, 1);
  v34 = vmlaq_n_f32(vdupq_lane_s32(*v31.f32, 0), v33, vmlaq_f32(vsubq_f32(v21, v31), v30, a7).f32[0]);
  *&result = vmlaq_laneq_f32(v34, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v32.f32, 0), v34), v33, vmlaq_f32(vsubq_f32(v9, v32), v30, v22).f32[0]), v30, 2).u64[0];
  return result;
}

double sub_1AF37D388(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v11 = vsubq_f32(a2, a1[5]);
  v11.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(v11, _Q1), vcltzq_f32(v11))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v17 = a1[1];
  v18 = vmulq_f32(*a1, v11);
  v19 = vminq_s32(vcvtq_s32_f32(v18), v17);
  v20 = a1[2];
  v21 = vmulq_s32(v20, v19);
  v21.i32[0] = vaddvq_s32(v21);
  v22 = vandq_s8(v20, vcgtq_s32(v17, v19));
  v23 = v22.i32[1] + v21.i32[0];
  v24 = v23 + v22.i32[0];
  v25 = a1[4].i64[0];
  v26 = v22.i32[0] + v21.i32[0];
  v27 = (v25 + v21.i32[0]);
  v22.i8[0] = *v27;
  v22.f32[0] = v22.u32[0];
  v20.f32[0] = v22.f32[0] * 0.0039216;
  v28 = (v25 + v26);
  v22.i8[0] = *v28;
  v29 = (v25 + v23);
  v21.i8[0] = *v29;
  v21.f32[0] = v21.u32[0] * 0.0039216;
  v30 = (v25 + v24);
  a7.i8[0] = *v30;
  a8.i8[0] = v27[v22.i32[2]];
  a9.i8[0] = v28[v22.i32[2]];
  a8.f32[0] = a8.u32[0] * 0.0039216;
  v9.i8[0] = v29[v22.i32[2]];
  v9.f32[0] = v9.u32[0] * 0.0039216;
  LOBYTE(v10) = v30[v22.i32[2]];
  v31 = vsubq_f32(v18, vrndq_f32(v18));
  v22.f32[0] = -(v20.f32[0] - (v22.u32[0] * 0.0039216));
  v32 = vmlaq_f32(v20, v31, v22);
  a7.f32[0] = -(v21.f32[0] - (a7.u32[0] * 0.0039216));
  a9.f32[0] = -(a8.f32[0] - (a9.u32[0] * 0.0039216));
  v33 = vmlaq_f32(a8, v31, a9);
  v17.f32[0] = -(v9.f32[0] - (v10 * 0.0039216));
  v34 = vdupq_lane_s32(*v31.f32, 1);
  v35 = vmlaq_n_f32(vdupq_lane_s32(*v32.f32, 0), v34, vmlaq_f32(vsubq_f32(v21, v32), v31, a7).f32[0]);
  v36 = vmlaq_laneq_f32(v35, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v33.f32, 0), v35), v34, vmlaq_f32(vsubq_f32(v9, v33), v31, v17).f32[0]), v31, 2);
  v37 = vmulq_f32(v36, v36);
  v38 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v36), v37, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v36)), vmulq_f32(v37, v37), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v36), v37, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v36)));
  v39 = vcgeq_f32(v36, vdupq_n_s32(0x3D25AEE6u));
  v39.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v39), v38, vmulq_f32(v36, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF37D570(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(v2, _Q1), vcltzq_f32(v2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, v2);
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = vaddvq_s32(vmulq_s32(v12, v10));
  v14 = vandq_s8(v12, vcgtq_s32(v8, v10));
  v15 = v14.i32[2];
  v16 = v14.i32[0] + v13;
  v17 = v14.i32[1] + v13;
  v18 = v17 + v14.i32[0];
  v19 = (v11 + v13);
  v21 = vld1q_dup_f32(v19);
  v20 = (v19 + v15);
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v22 = vdupq_n_s32(0x3B808081u);
  v23 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v21, xmmword_1AFE42AA0), v12)), v22);
  v24 = (v11 + v16);
  v26 = vld1q_dup_f32(v24);
  v25 = (v24 + v15);
  v27 = (v11 + v17);
  v29 = vld1q_dup_f32(v27);
  v28 = (v27 + v15);
  v30 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v29, xmmword_1AFE42AA0), v12)), v22);
  v31 = (v11 + v18);
  v33 = vld1q_dup_f32(v31);
  v32 = (v31 + v15);
  v34 = vld1q_dup_f32(v20);
  v35 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v34, xmmword_1AFE42AA0), v12)), v22);
  v36 = vld1q_dup_f32(v25);
  v37 = vld1q_dup_f32(v28);
  v38 = vld1q_dup_f32(v32);
  v39 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v37, xmmword_1AFE42AA0), v12)), v22);
  v40 = vsubq_f32(v9, vrndq_f32(v9));
  v41 = vmlaq_n_f32(v23, vmlaq_f32(vnegq_f32(v23), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v26, xmmword_1AFE42AA0), v12))), v40.f32[0]);
  v42 = vmlaq_n_f32(v35, vmlaq_f32(vnegq_f32(v35), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v36, xmmword_1AFE42AA0), v12))), v40.f32[0]);
  v43 = vmlaq_lane_f32(v41, vmlaq_n_f32(vsubq_f32(v30, v41), vmlaq_f32(vnegq_f32(v30), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v33, xmmword_1AFE42AA0), v12))), v40.f32[0]), *v40.f32, 1);
  *&result = vmlaq_laneq_f32(v43, vmlaq_lane_f32(vsubq_f32(v42, v43), vmlaq_n_f32(vsubq_f32(v39, v42), vmlaq_f32(vnegq_f32(v39), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v38, xmmword_1AFE42AA0), v12))), v40.f32[0]), *v40.f32, 1), v40, 2).u64[0];
  return result;
}

double sub_1AF37D6F8(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(v2, _Q1), vcltzq_f32(v2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, v2);
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = vaddvq_s32(vmulq_s32(v12, v10));
  v14 = vandq_s8(v12, vcgtq_s32(v8, v10));
  v15 = v14.i32[2];
  v16 = v14.i32[0] + v13;
  v17 = v14.i32[1] + v13;
  v18 = v17 + v14.i32[0];
  v19 = (v11 + v13);
  v21 = vld1q_dup_f32(v19);
  v20 = (v19 + v15);
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v22 = vdupq_n_s32(0x3B808081u);
  v23 = (v11 + v16);
  v25 = vld1q_dup_f32(v23);
  v24 = (v23 + v15);
  v26 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v21, xmmword_1AFE42AA0), v12)), v22);
  v27 = (v11 + v17);
  v29 = vld1q_dup_f32(v27);
  v28 = (v27 + v15);
  v30 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v29, xmmword_1AFE42AA0), v12)), v22);
  v31 = (v11 + v18);
  v33 = vld1q_dup_f32(v31);
  v32 = (v31 + v15);
  v34 = vld1q_dup_f32(v20);
  v35 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v34, xmmword_1AFE42AA0), v12)), v22);
  v36 = vld1q_dup_f32(v24);
  v37 = vld1q_dup_f32(v28);
  v38 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v37, xmmword_1AFE42AA0), v12)), v22);
  v39 = vld1q_dup_f32(v32);
  v40 = vsubq_f32(v9, vrndq_f32(v9));
  v41 = vmlaq_n_f32(v26, vmlaq_f32(vnegq_f32(v26), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v25, xmmword_1AFE42AA0), v12))), v40.f32[0]);
  v42 = vmlaq_n_f32(v35, vmlaq_f32(vnegq_f32(v35), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v36, xmmword_1AFE42AA0), v12))), v40.f32[0]);
  v43 = vmlaq_lane_f32(v41, vmlaq_n_f32(vsubq_f32(v30, v41), vmlaq_f32(vnegq_f32(v30), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v33, xmmword_1AFE42AA0), v12))), v40.f32[0]), *v40.f32, 1);
  v44 = vmlaq_laneq_f32(v43, vmlaq_lane_f32(vsubq_f32(v42, v43), vmlaq_n_f32(vsubq_f32(v38, v42), vmlaq_f32(vnegq_f32(v38), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v39, xmmword_1AFE42AA0), v12))), v40.f32[0]), *v40.f32, 1), v40, 2);
  v45 = vmulq_f32(v44, v44);
  v46 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v44), v45, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v44)), vmulq_f32(v45, v45), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v44), v45, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v44)));
  v47 = vcgeq_f32(v44, vdupq_n_s32(0x3D25AEE6u));
  v47.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v47), v46, vmulq_f32(v44, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF37D934(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(v2, _Q1), vcltzq_f32(v2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, v2);
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = vaddvq_s32(vmulq_s32(v12, v10));
  v14 = vandq_s8(v12, vcgtq_s32(v8, v10));
  v15 = v14.i32[2];
  v16 = v14.i32[0];
  v17 = v14.i32[0] + v13;
  v18 = v14.i32[1] + v13;
  v19 = (v11 + v13);
  v21 = vld1q_dup_f32(v19);
  v20 = (v19 + v15);
  v22 = v18 + v16;
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v23 = vdupq_n_s32(0x3B808081u);
  v24 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v21, xmmword_1AFE42AA0), v12)), v23);
  v25 = (v11 + v17);
  v27 = vld1q_dup_f32(v25);
  v26 = (v25 + v15);
  v28 = (v11 + v18);
  v30 = vld1q_dup_f32(v28);
  v29 = (v28 + v15);
  v31 = (v11 + v22);
  v33 = vld1q_dup_f32(v31);
  v32 = (v31 + v15);
  v34 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v30, xmmword_1AFE42AA0), v12)), v23);
  v35 = vld1q_dup_f32(v20);
  v36 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v35, xmmword_1AFE42AA0), v12)), v23);
  v37 = vld1q_dup_f32(v26);
  v38 = vld1q_dup_f32(v29);
  v39 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v38, xmmword_1AFE42AA0), v12)), v23);
  v40 = vld1q_dup_f32(v32);
  v41 = vsubq_f32(v9, vrndq_f32(v9));
  v42 = vmlaq_n_f32(v24, vmlaq_f32(vnegq_f32(v24), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v27, xmmword_1AFE42AA0), v12))), v41.f32[0]);
  v43 = vmlaq_n_f32(v36, vmlaq_f32(vnegq_f32(v36), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v37, xmmword_1AFE42AA0), v12))), v41.f32[0]);
  v44 = vmlaq_lane_f32(v42, vmlaq_n_f32(vsubq_f32(v34, v42), vmlaq_f32(vnegq_f32(v34), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v33, xmmword_1AFE42AA0), v12))), v41.f32[0]), *v41.f32, 1);
  v45 = vrev64q_s32(vmlaq_laneq_f32(v44, vmlaq_lane_f32(vsubq_f32(v43, v44), vmlaq_n_f32(vsubq_f32(v39, v43), vmlaq_f32(vnegq_f32(v39), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v40, xmmword_1AFE42AA0), v12))), v41.f32[0]), *v41.f32, 1), v41, 2));
  *&result = vextq_s8(v45, v45, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37DAC4(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  if ((vmaxvq_u32(vorrq_s8(vcgeq_f32(v2, _Q1), vcltzq_f32(v2))) & 0x80000000) != 0)
  {
    return 0.0;
  }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, v2);
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = vaddvq_s32(vmulq_s32(v12, v10));
  v14 = vandq_s8(v12, vcgtq_s32(v8, v10));
  v15 = v14.i32[2];
  v16 = v14.i32[0] + v13;
  v17 = v14.i32[1] + v13;
  v18 = v17 + v14.i32[0];
  v19 = (v11 + v13);
  v21 = vld1q_dup_f32(v19);
  v20 = (v19 + v15);
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v22 = vdupq_n_s32(0x3B808081u);
  v23 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v21, xmmword_1AFE42AA0), v12)), v22);
  v24 = (v11 + v16);
  v26 = vld1q_dup_f32(v24);
  v25 = (v24 + v15);
  v27 = (v11 + v17);
  v29 = vld1q_dup_f32(v27);
  v28 = (v27 + v15);
  v30 = (v11 + v18);
  v32 = vld1q_dup_f32(v30);
  v31 = (v30 + v15);
  v33 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v29, xmmword_1AFE42AA0), v12)), v22);
  v34 = vld1q_dup_f32(v20);
  v35 = vld1q_dup_f32(v25);
  v36 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v34, xmmword_1AFE42AA0), v12)), v22);
  v37 = vld1q_dup_f32(v28);
  v38 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v37, xmmword_1AFE42AA0), v12)), v22);
  v39 = vld1q_dup_f32(v31);
  v40 = vsubq_f32(v9, vrndq_f32(v9));
  v41 = vmlaq_n_f32(v23, vmlaq_f32(vnegq_f32(v23), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v26, xmmword_1AFE42AA0), v12))), v40.f32[0]);
  v42 = vmlaq_n_f32(v36, vmlaq_f32(vnegq_f32(v36), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v35, xmmword_1AFE42AA0), v12))), v40.f32[0]);
  v43 = vmlaq_lane_f32(v41, vmlaq_n_f32(vsubq_f32(v33, v41), vmlaq_f32(vnegq_f32(v33), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v32, xmmword_1AFE42AA0), v12))), v40.f32[0]), *v40.f32, 1);
  v44 = vmlaq_laneq_f32(v43, vmlaq_lane_f32(vsubq_f32(v42, v43), vmlaq_n_f32(vsubq_f32(v38, v42), vmlaq_f32(vnegq_f32(v38), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v39, xmmword_1AFE42AA0), v12))), v40.f32[0]), *v40.f32, 1), v40, 2);
  v45 = vmulq_f32(v44, v44);
  v46 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v44), v45, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v44)), vmulq_f32(v45, v45), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v44), v45, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v44)));
  v47 = vcgeq_f32(v44, vdupq_n_s32(0x3D25AEE6u));
  v47.i32[3] = 0;
  v48 = vbslq_s8(vcltzq_s32(v47), v46, vmulq_f32(v44, vdupq_n_s32(0x3D9E8391u)));
  v48.i32[3] = v44.i32[3];
  v49 = vrev64q_s32(v48);
  *&result = vextq_s8(v49, v49, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37DD08(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v9 = vsubq_f32(a2, a1[5]);
  v9.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v14 = a1[1];
  v15 = vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(v9, 0), _Q1));
  v16 = vminq_s32(vcvtq_s32_f32(v15), v14);
  v17 = a1[4].i64[0];
  v18 = a1[2];
  v19 = vmulq_s32(v18, v16);
  v19.i32[0] = vaddvq_s32(v19);
  v20 = vandq_s8(v18, vcgtq_s32(v14, v16));
  v21 = v20.i32[0] + v19.i32[0];
  v22 = v20.i32[1] + v19.i32[0];
  v23 = v22 + v20.i32[0];
  v24 = (v17 + v19.i32[0]);
  v25 = *v24;
  v26 = (v25 >> 10) & 0x1F;
  if (v26 == 31)
  {
    v27 = 2139095040;
  }

  else
  {
    v27 = (v25 >> 10) & 0x1F;
  }

  if (v26)
  {
    _ZF = v26 == 31;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v29 = v27;
  }

  else
  {
    v29 = (v26 << 23) + 939524096;
  }

  v30 = v17 + v21;
  v31 = *(v17 + v21);
  v32 = (v31 >> 10) & 0x1F;
  if (v32 == 31)
  {
    v33 = 2139095040;
  }

  else
  {
    v33 = (v31 >> 10) & 0x1F;
  }

  if (v32)
  {
    v34 = v32 == 31;
  }

  else
  {
    v34 = 1;
  }

  if (v34)
  {
    v35 = v33;
  }

  else
  {
    v35 = (v32 << 23) + 939524096;
  }

  v36 = v17 + v22;
  v37 = *(v17 + v22);
  v38 = (v37 >> 10) & 0x1F;
  if (v38 == 31)
  {
    v39 = 2139095040;
  }

  else
  {
    v39 = (v37 >> 10) & 0x1F;
  }

  if (v38)
  {
    v40 = v38 == 31;
  }

  else
  {
    v40 = 1;
  }

  if (v40)
  {
    v41 = v39;
  }

  else
  {
    v41 = (v38 << 23) + 939524096;
  }

  v42 = (v17 + v23);
  v43 = *v42;
  v44 = (v43 >> 10) & 0x1F;
  if (v44 == 31)
  {
    v45 = 2139095040;
  }

  else
  {
    v45 = (v43 >> 10) & 0x1F;
  }

  if (v44)
  {
    v46 = v44 == 31;
  }

  else
  {
    v46 = 1;
  }

  if (v46)
  {
    v47 = v45;
  }

  else
  {
    v47 = (v44 << 23) + 939524096;
  }

  v48 = *(v24 + v20.i32[2]);
  v49 = (v48 >> 10) & 0x1F;
  if (v49 == 31)
  {
    v50 = 2139095040;
  }

  else
  {
    v50 = (v48 >> 10) & 0x1F;
  }

  if (v49)
  {
    v51 = v49 == 31;
  }

  else
  {
    v51 = 1;
  }

  if (v51)
  {
    v52 = v50;
  }

  else
  {
    v52 = (v49 << 23) + 939524096;
  }

  v53 = *(v30 + v20.i32[2]);
  v54 = (v53 >> 10) & 0x1F;
  if (v54 == 31)
  {
    v55 = 2139095040;
  }

  else
  {
    v55 = (v53 >> 10) & 0x1F;
  }

  if (v54)
  {
    v56 = v54 == 31;
  }

  else
  {
    v56 = 1;
  }

  if (v56)
  {
    v57 = v55;
  }

  else
  {
    v57 = (v54 << 23) + 939524096;
  }

  v58 = *(v36 + v20.i32[2]);
  v59 = (v58 >> 10) & 0x1F;
  if (v59 == 31)
  {
    v60 = 2139095040;
  }

  else
  {
    v60 = (v58 >> 10) & 0x1F;
  }

  if (v59)
  {
    v61 = v59 == 31;
  }

  else
  {
    v61 = 1;
  }

  if (v61)
  {
    v62 = v60;
  }

  else
  {
    v62 = (v59 << 23) + 939524096;
  }

  v63 = *(v42 + v20.i32[2]);
  v64 = (v63 >> 10) & 0x1F;
  if (v64 == 31)
  {
    v65 = 2139095040;
  }

  else
  {
    v65 = (v63 >> 10) & 0x1F;
  }

  if (v64)
  {
    v66 = v64 == 31;
  }

  else
  {
    v66 = 1;
  }

  if (v66)
  {
    v67 = v65;
  }

  else
  {
    v67 = (v64 << 23) + 939524096;
  }

  v20.i32[0] = v62 | (v58 << 16) & 0x80000000 | (v58 >> 7) & 7 | (8 * (v58 & 0x3FF)) & 0x1FFF | ((v58 & 0x3FF) << 13);
  v14.i32[0] = v57 | (v53 << 16) & 0x80000000 | (v53 >> 7) & 7 | (8 * (v53 & 0x3FF)) & 0x1FFF | ((v53 & 0x3FF) << 13);
  v18.i32[0] = v52 | (v48 << 16) & 0x80000000 | (v48 >> 7) & 7 | (8 * (v48 & 0x3FF)) & 0x1FFF | ((v48 & 0x3FF) << 13);
  v19.i32[0] = v47 | (v43 << 16) & 0x80000000 | (v43 >> 7) & 7 | (8 * (v43 & 0x3FF)) & 0x1FFF | ((v43 & 0x3FF) << 13);
  a7.i32[0] = v41 | (v37 << 16) & 0x80000000 | (v37 >> 7) & 7 | (8 * (v37 & 0x3FF)) & 0x1FFF | ((v37 & 0x3FF) << 13);
  a8.i32[0] = v35 | (v31 << 16) & 0x80000000 | (v31 >> 7) & 7 | (8 * (v31 & 0x3FF)) & 0x1FFF | ((v31 & 0x3FF) << 13);
  a9.i32[0] = v29 | (v25 << 16) & 0x80000000 | (v25 >> 7) & 7 | (8 * (v25 & 0x3FF)) & 0x1FFF | ((v25 & 0x3FF) << 13);
  v68 = vsubq_f32(v15, vrndq_f32(v15));
  v69 = vmlaq_f32(a9, v68, vsubq_f32(a8, a9));
  a8.i32[0] = v67 | (v63 << 16) & 0x80000000 | (v63 >> 7) & 7 | (8 * (v63 & 0x3FF)) & 0x1FFF | ((v63 & 0x3FF) << 13);
  v70 = vmlaq_f32(v18, v68, vsubq_f32(v14, v18));
  v71 = vdupq_lane_s32(*v68.f32, 1);
  v72 = vmlaq_n_f32(vdupq_lane_s32(*v69.f32, 0), v71, vmlaq_f32(vsubq_f32(a7, v69), v68, vsubq_f32(v19, a7)).f32[0]);
  *&result = vmlaq_laneq_f32(v72, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v70.f32, 0), v72), v71, vmlaq_f32(vsubq_f32(v20, v70), v68, vsubq_f32(a8, v20)).f32[0]), v68, 2).u64[0];
  return result;
}

double sub_1AF37E004(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v9 = vsubq_f32(a2, a1[5]);
  v9.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v15 = a1[1];
  v16 = vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(v9, 0), _Q1));
  v17 = vminq_s32(vcvtq_s32_f32(v16), v15);
  v18 = a1[2];
  v19 = vmulq_s32(v18, v17);
  v19.i32[0] = vaddvq_s32(v19);
  v20 = vandq_s8(v18, vcgtq_s32(v15, v17));
  v21 = v20.i32[1] + v19.i32[0];
  v22 = v21 + v20.i32[0];
  v23 = a1[4].i64[0];
  v24 = v20.i32[0] + v19.i32[0];
  v25 = (v23 + v19.i32[0]);
  v20.i32[0] = *v25;
  v26 = (v23 + v24);
  v27 = (v23 + v21);
  v18.i32[0] = *v27;
  v28 = (v23 + v22);
  v19.i32[0] = *(v25 + v20.i32[2]);
  a7.f32[0] = *(v26 + v20.i32[2]);
  a8.i32[0] = *(v27 + v20.i32[2]);
  a9.f32[0] = *(v28 + v20.i32[2]);
  v29 = vsubq_f32(v16, vrndq_f32(v16));
  v16.f32[0] = *v26 - *v25;
  v30 = vmlaq_f32(v20, v29, v16);
  v15.f32[0] = *v28 - *v27;
  a7.f32[0] = a7.f32[0] - v19.f32[0];
  v31 = vmlaq_f32(v19, v29, a7);
  a9.f32[0] = a9.f32[0] - a8.f32[0];
  v32 = vdupq_lane_s32(*v29.f32, 1);
  v33 = vmlaq_n_f32(vdupq_lane_s32(*v30.f32, 0), v32, vmlaq_f32(vsubq_f32(v18, v30), v29, v15).f32[0]);
  *&result = vmlaq_laneq_f32(v33, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v31.f32, 0), v33), v32, vmlaq_f32(vsubq_f32(a8, v31), v29, a9).f32[0]), v29, 2).u64[0];
  return result;
}

double sub_1AF37E0EC(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(v2, 0), _Q1));
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 32);
  v12 = vaddvq_s32(vmulq_s32(v11, v10));
  v13 = vandq_s8(v11, vcgtq_s32(v8, v10));
  v14 = v13.i32[2];
  v15 = v13.i32[1] + v12;
  v16 = vdupq_n_s32(0x7FE000u);
  v17 = vdupq_n_s32(0xF800000u);
  v18 = v15 + v13.i32[0];
  v19 = *(a1 + 64);
  v20 = v13.i32[0] + v12;
  v21 = (v19 + v12);
  v22.i64[0] = 0x8000000080000000;
  v22.i64[1] = 0x8000000080000000;
  v23 = vshll_n_u16(*v21, 0xDuLL);
  v24.i64[0] = 0x3800000038000000;
  v24.i64[1] = 0x3800000038000000;
  v25 = vaddq_s32(vorrq_s8(vandq_s8(v23, v17), vorrq_s8(vandq_s8(vmovl_s16(*v21), v22), vandq_s8(v23, v16))), v24);
  v26 = (v19 + v20);
  v27 = vshll_n_u16(*v26, 0xDuLL);
  v28 = vaddq_s32(vorrq_s8(vandq_s8(v27, v17), vorrq_s8(vandq_s8(vmovl_s16(*v26), v22), vandq_s8(v27, v16))), v24);
  v29 = (v19 + v15);
  v30 = vshll_n_u16(*v29, 0xDuLL);
  v31 = vaddq_s32(vorrq_s8(vandq_s8(v30, v17), vorrq_s8(vandq_s8(vmovl_s16(*v29), v22), vandq_s8(v30, v16))), v24);
  v32 = (v19 + v18);
  v33 = vshll_n_u16(*v32, 0xDuLL);
  v34 = vaddq_s32(vorrq_s8(vandq_s8(v33, v17), vorrq_s8(vandq_s8(vmovl_s16(*v32), v22), vandq_s8(v33, v16))), v24);
  v35 = *(v21 + v14);
  v36 = vandq_s8(vmovl_s16(v35), v22);
  v37 = vshll_n_u16(v35, 0xDuLL);
  v38 = vaddq_s32(vorrq_s8(vandq_s8(v37, v17), vorrq_s8(v36, vandq_s8(v37, v16))), v24);
  *v36.i8 = *(v26 + v14);
  v39 = vandq_s8(vmovl_s16(*v36.i8), v22);
  v40 = vshll_n_u16(*v36.i8, 0xDuLL);
  v41 = vorrq_s8(vandq_s8(v40, v17), vorrq_s8(v39, vandq_s8(v40, v16)));
  *v39.i8 = *(v29 + v14);
  v42 = vandq_s8(vmovl_s16(*v39.i8), v22);
  v43 = vshll_n_u16(*v39.i8, 0xDuLL);
  v44 = vaddq_s32(vorrq_s8(vandq_s8(v43, v17), vorrq_s8(v42, vandq_s8(v43, v16))), v24);
  *v42.i8 = *(v32 + v14);
  v45 = vandq_s8(vmovl_s16(*v42.i8), v22);
  v46 = vshll_n_u16(*v42.i8, 0xDuLL);
  v47 = vsubq_f32(v9, vrndq_f32(v9));
  v48 = vmlaq_n_f32(v25, vsubq_f32(v28, v25), v47.f32[0]);
  v49 = vmlaq_n_f32(v38, vsubq_f32(vaddq_s32(v41, v24), v38), v47.f32[0]);
  v50 = vmlaq_lane_f32(v48, vmlaq_n_f32(vsubq_f32(v31, v48), vsubq_f32(v34, v31), v47.f32[0]), *v47.f32, 1);
  *&result = vmlaq_laneq_f32(v50, vmlaq_lane_f32(vsubq_f32(v49, v50), vmlaq_n_f32(vsubq_f32(v44, v49), vsubq_f32(vaddq_s32(vorrq_s8(vandq_s8(v46, v17), vorrq_s8(v45, vandq_s8(v46, v16))), v24), v44), v47.f32[0]), *v47.f32, 1), v47, 2).u64[0];
  return result;
}

double sub_1AF37E2E0(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(v2, 0), _Q1));
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 32);
  v12 = vaddvq_s32(vmulq_s32(v11, v10));
  v13 = vandq_s8(v11, vcgtq_s32(v8, v10));
  v14 = v13.i32[2];
  v15 = v13.i32[1] + v12;
  v16 = v15 + v13.i32[0];
  v17 = *(a1 + 64);
  v18 = (v17 + v12);
  v19 = (v17 + v13.i32[0] + v12);
  v20 = (v17 + v15);
  v21 = (v17 + v16);
  v22 = *(v18 + v13.i32[2]);
  v23 = *(v20 + v13.i32[2]);
  v24 = *(v21 + v13.i32[2]);
  v25 = vsubq_f32(v9, vrndq_f32(v9));
  v26 = vmlaq_n_f32(*v18, vsubq_f32(*v19, *v18), v25.f32[0]);
  v27 = vmlaq_n_f32(v22, vsubq_f32(*(v19 + v14), v22), v25.f32[0]);
  v28 = vmlaq_lane_f32(v26, vmlaq_n_f32(vsubq_f32(*v20, v26), vsubq_f32(*v21, *v20), v25.f32[0]), *v25.f32, 1);
  *&result = vmlaq_laneq_f32(v28, vmlaq_lane_f32(vsubq_f32(v27, v28), vmlaq_n_f32(vsubq_f32(v23, v27), vsubq_f32(v24, v23), v25.f32[0]), *v25.f32, 1), v25, 2).u64[0];
  return result;
}

double sub_1AF37E3BC(uint64_t a1, float32x4_t a2, double a3, double a4, double a5, double a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v11 = vsubq_f32(a2, *(a1 + 80));
  v11.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v17 = *(a1 + 16);
  v18 = vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(v11, 0), _Q1));
  v19 = vminq_s32(vcvtq_s32_f32(v18), v17);
  v20 = *(a1 + 32);
  v21 = vmulq_s32(v20, v19);
  v21.i32[0] = vaddvq_s32(v21);
  v22 = vandq_s8(v20, vcgtq_s32(v17, v19));
  v23 = v22.i32[1] + v21.i32[0];
  v24 = v23 + v22.i32[0];
  v25 = *(a1 + 64);
  v26 = (v25 + v21.i32[0]);
  v17.i8[0] = *v26;
  v17.f32[0] = v17.u32[0] * 0.0039216;
  v27 = (v25 + v22.i32[0] + v21.i32[0]);
  v20.i8[0] = *v27;
  v28 = (v25 + v23);
  v21.i8[0] = *v28;
  v21.f32[0] = v21.u32[0] * 0.0039216;
  v29 = (v25 + v24);
  a7.i8[0] = *v29;
  a8.i8[0] = v26[v22.i32[2]];
  a8.f32[0] = a8.u32[0] * 0.0039216;
  a9.i8[0] = v27[v22.i32[2]];
  v9.i8[0] = v28[v22.i32[2]];
  v9.f32[0] = v9.u32[0] * 0.0039216;
  LOBYTE(v10) = v29[v22.i32[2]];
  v30 = vsubq_f32(v18, vrndq_f32(v18));
  v18.f32[0] = -(v17.f32[0] - (v20.u32[0] * 0.0039216));
  v31 = vmlaq_f32(v17, v30, v18);
  a7.f32[0] = -(v21.f32[0] - (a7.u32[0] * 0.0039216));
  a9.f32[0] = -(a8.f32[0] - (a9.u32[0] * 0.0039216));
  v32 = vmlaq_f32(a8, v30, a9);
  v22.f32[0] = -(v9.f32[0] - (v10 * 0.0039216));
  v33 = vdupq_lane_s32(*v30.f32, 1);
  v34 = vmlaq_n_f32(vdupq_lane_s32(*v31.f32, 0), v33, vmlaq_f32(vsubq_f32(v21, v31), v30, a7).f32[0]);
  *&result = vmlaq_laneq_f32(v34, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v32.f32, 0), v34), v33, vmlaq_f32(vsubq_f32(v9, v32), v30, v22).f32[0]), v30, 2).u64[0];
  return result;
}

double sub_1AF37E4DC(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v11 = vsubq_f32(a2, a1[5]);
  v11.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v17 = a1[1];
  v18 = vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(v11, 0), _Q1));
  v19 = vminq_s32(vcvtq_s32_f32(v18), v17);
  v20 = a1[2];
  v21 = vmulq_s32(v20, v19);
  v21.i32[0] = vaddvq_s32(v21);
  v22 = vandq_s8(v20, vcgtq_s32(v17, v19));
  v23 = v22.i32[1] + v21.i32[0];
  v24 = v23 + v22.i32[0];
  v25 = a1[4].i64[0];
  v26 = v22.i32[0] + v21.i32[0];
  v27 = (v25 + v21.i32[0]);
  v22.i8[0] = *v27;
  v22.f32[0] = v22.u32[0];
  v20.f32[0] = v22.f32[0] * 0.0039216;
  v28 = (v25 + v26);
  v22.i8[0] = *v28;
  v29 = (v25 + v23);
  v21.i8[0] = *v29;
  v21.f32[0] = v21.u32[0] * 0.0039216;
  v30 = (v25 + v24);
  a7.i8[0] = *v30;
  a8.i8[0] = v27[v22.i32[2]];
  a8.f32[0] = a8.u32[0] * 0.0039216;
  a9.i8[0] = v28[v22.i32[2]];
  v9.i8[0] = v29[v22.i32[2]];
  LOBYTE(v10) = v30[v22.i32[2]];
  v9.f32[0] = v9.u32[0] * 0.0039216;
  v31 = vsubq_f32(v18, vrndq_f32(v18));
  v22.f32[0] = -(v20.f32[0] - (v22.u32[0] * 0.0039216));
  v32 = vmlaq_f32(v20, v31, v22);
  a9.f32[0] = -(a8.f32[0] - (a9.u32[0] * 0.0039216));
  v33 = vmlaq_f32(a8, v31, a9);
  a7.f32[0] = -(v21.f32[0] - (a7.u32[0] * 0.0039216));
  v17.f32[0] = -(v9.f32[0] - (v10 * 0.0039216));
  v34 = vdupq_lane_s32(*v31.f32, 1);
  v35 = vmlaq_n_f32(vdupq_lane_s32(*v32.f32, 0), v34, vmlaq_f32(vsubq_f32(v21, v32), v31, a7).f32[0]);
  v36 = vmlaq_laneq_f32(v35, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v33.f32, 0), v35), v34, vmlaq_f32(vsubq_f32(v9, v33), v31, v17).f32[0]), v31, 2);
  v37 = vmulq_f32(v36, v36);
  v38 = vmulq_f32(v37, v37);
  v39 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v36), v37, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v36));
  v40 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v36), v37, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v36));
  v41 = vcgeq_f32(v36, vdupq_n_s32(0x3D25AEE6u));
  v41.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v41), vmlaq_f32(v39, v38, v40), vmulq_f32(v36, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF37E6B0(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(v2, 0), _Q1));
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = vaddvq_s32(vmulq_s32(v12, v10));
  v14 = vandq_s8(v12, vcgtq_s32(v8, v10));
  v15 = v14.i32[2];
  v16 = v14.i32[0] + v13;
  v17 = v14.i32[1] + v13;
  v18 = v17 + v14.i32[0];
  v19 = (v11 + v13);
  v21 = vld1q_dup_f32(v19);
  v20 = (v19 + v15);
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v22 = vdupq_n_s32(0x3B808081u);
  v23 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v21, xmmword_1AFE42AA0), v12)), v22);
  v24 = (v11 + v16);
  v26 = vld1q_dup_f32(v24);
  v25 = (v24 + v15);
  v27 = (v11 + v17);
  v29 = vld1q_dup_f32(v27);
  v28 = (v27 + v15);
  v30 = (v11 + v18);
  v32 = vld1q_dup_f32(v30);
  v31 = (v30 + v15);
  v33 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v29, xmmword_1AFE42AA0), v12)), v22);
  v34 = vld1q_dup_f32(v20);
  v35 = vld1q_dup_f32(v25);
  v36 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v34, xmmword_1AFE42AA0), v12)), v22);
  v37 = vld1q_dup_f32(v28);
  v38 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v37, xmmword_1AFE42AA0), v12)), v22);
  v39 = vld1q_dup_f32(v31);
  v40 = vsubq_f32(v9, vrndq_f32(v9));
  v41 = vmlaq_n_f32(v23, vmlaq_f32(vnegq_f32(v23), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v26, xmmword_1AFE42AA0), v12))), v40.f32[0]);
  v42 = vmlaq_n_f32(v36, vmlaq_f32(vnegq_f32(v36), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v35, xmmword_1AFE42AA0), v12))), v40.f32[0]);
  v43 = vmlaq_lane_f32(v41, vmlaq_n_f32(vsubq_f32(v33, v41), vmlaq_f32(vnegq_f32(v33), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v32, xmmword_1AFE42AA0), v12))), v40.f32[0]), *v40.f32, 1);
  *&result = vmlaq_laneq_f32(v43, vmlaq_lane_f32(vsubq_f32(v42, v43), vmlaq_n_f32(vsubq_f32(v38, v42), vmlaq_f32(vnegq_f32(v38), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v39, xmmword_1AFE42AA0), v12))), v40.f32[0]), *v40.f32, 1), v40, 2).u64[0];
  return result;
}

double sub_1AF37E824(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(v2, 0), _Q1));
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = vaddvq_s32(vmulq_s32(v12, v10));
  v14 = vandq_s8(v12, vcgtq_s32(v8, v10));
  v15 = v14.i32[2];
  v16 = v14.i32[0] + v13;
  v17 = v14.i32[1] + v13;
  v18 = v17 + v14.i32[0];
  v19 = (v11 + v13);
  v21 = vld1q_dup_f32(v19);
  v20 = (v19 + v15);
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v22 = vdupq_n_s32(0x3B808081u);
  v23 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v21, xmmword_1AFE42AA0), v12)), v22);
  v24 = (v11 + v16);
  v26 = vld1q_dup_f32(v24);
  v25 = (v24 + v15);
  v27 = (v11 + v17);
  v29 = vld1q_dup_f32(v27);
  v28 = (v27 + v15);
  v30 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v29, xmmword_1AFE42AA0), v12)), v22);
  v31 = (v11 + v18);
  v33 = vld1q_dup_f32(v31);
  v32 = (v31 + v15);
  v34 = vld1q_dup_f32(v20);
  v35 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v34, xmmword_1AFE42AA0), v12)), v22);
  v36 = vld1q_dup_f32(v25);
  v37 = vld1q_dup_f32(v28);
  v38 = vld1q_dup_f32(v32);
  v39 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v37, xmmword_1AFE42AA0), v12)), v22);
  v40 = vsubq_f32(v9, vrndq_f32(v9));
  v41 = vmlaq_n_f32(v23, vmlaq_f32(vnegq_f32(v23), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v26, xmmword_1AFE42AA0), v12))), v40.f32[0]);
  v42 = vmlaq_n_f32(v35, vmlaq_f32(vnegq_f32(v35), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v36, xmmword_1AFE42AA0), v12))), v40.f32[0]);
  v43 = vmlaq_lane_f32(v41, vmlaq_n_f32(vsubq_f32(v30, v41), vmlaq_f32(vnegq_f32(v30), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v33, xmmword_1AFE42AA0), v12))), v40.f32[0]), *v40.f32, 1);
  v44 = vmlaq_laneq_f32(v43, vmlaq_lane_f32(vsubq_f32(v42, v43), vmlaq_n_f32(vsubq_f32(v39, v42), vmlaq_f32(vnegq_f32(v39), v22, vcvtq_f32_u32(vandq_s8(vshlq_u32(v38, xmmword_1AFE42AA0), v12))), v40.f32[0]), *v40.f32, 1), v40, 2);
  v45 = vmulq_f32(v44, v44);
  v46 = vmulq_f32(v45, v45);
  v47 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v44), v45, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v44));
  v48 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v44), v45, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v44));
  v49 = vcgeq_f32(v44, vdupq_n_s32(0x3D25AEE6u));
  v49.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v49), vmlaq_f32(v47, v46, v48), vmulq_f32(v44, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF37EA4C(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(v2, 0), _Q1));
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = vaddvq_s32(vmulq_s32(v12, v10));
  v14 = vandq_s8(v12, vcgtq_s32(v8, v10));
  v15 = v14.i32[2];
  v16 = v14.i32[0];
  v17 = v14.i32[0] + v13;
  v18 = v14.i32[1] + v13;
  v19 = (v11 + v13);
  v21 = vld1q_dup_f32(v19);
  v20 = (v19 + v15);
  v22 = v18 + v16;
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v23 = vdupq_n_s32(0x3B808081u);
  v24 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v21, xmmword_1AFE42AA0), v12)), v23);
  v25 = (v11 + v17);
  v27 = vld1q_dup_f32(v25);
  v26 = (v25 + v15);
  v28 = (v11 + v18);
  v30 = vld1q_dup_f32(v28);
  v29 = (v28 + v15);
  v31 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v30, xmmword_1AFE42AA0), v12)), v23);
  v32 = (v11 + v22);
  v34 = vld1q_dup_f32(v32);
  v33 = (v32 + v15);
  v35 = vld1q_dup_f32(v20);
  v36 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v35, xmmword_1AFE42AA0), v12)), v23);
  v37 = vld1q_dup_f32(v26);
  v38 = vld1q_dup_f32(v29);
  v39 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v38, xmmword_1AFE42AA0), v12)), v23);
  v40 = vld1q_dup_f32(v33);
  v41 = vsubq_f32(v9, vrndq_f32(v9));
  v42 = vmlaq_n_f32(v24, vmlaq_f32(vnegq_f32(v24), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v27, xmmword_1AFE42AA0), v12))), v41.f32[0]);
  v43 = vmlaq_n_f32(v36, vmlaq_f32(vnegq_f32(v36), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v37, xmmword_1AFE42AA0), v12))), v41.f32[0]);
  v44 = vmlaq_lane_f32(v42, vmlaq_n_f32(vsubq_f32(v31, v42), vmlaq_f32(vnegq_f32(v31), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v34, xmmword_1AFE42AA0), v12))), v41.f32[0]), *v41.f32, 1);
  v45 = vrev64q_s32(vmlaq_laneq_f32(v44, vmlaq_lane_f32(vsubq_f32(v43, v44), vmlaq_n_f32(vsubq_f32(v39, v43), vmlaq_f32(vnegq_f32(v39), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v40, xmmword_1AFE42AA0), v12))), v41.f32[0]), *v41.f32, 1), v41, 2));
  *&result = vextq_s8(v45, v45, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37EBC8(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  v8 = *(a1 + 16);
  v9 = vmulq_f32(*a1, vminnmq_f32(vmaxnmq_f32(v2, 0), _Q1));
  v10 = vminq_s32(vcvtq_s32_f32(v9), v8);
  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = vaddvq_s32(vmulq_s32(v12, v10));
  v14 = vandq_s8(v12, vcgtq_s32(v8, v10));
  v15 = v14.i32[2];
  v16 = v14.i32[0];
  v17 = v14.i32[0] + v13;
  v18 = v14.i32[1] + v13;
  v19 = (v11 + v13);
  v21 = vld1q_dup_f32(v19);
  v20 = (v19 + v15);
  v22 = v18 + v16;
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v23 = vdupq_n_s32(0x3B808081u);
  v24 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v21, xmmword_1AFE42AA0), v12)), v23);
  v25 = (v11 + v17);
  v27 = vld1q_dup_f32(v25);
  v26 = (v25 + v15);
  v28 = (v11 + v18);
  v30 = vld1q_dup_f32(v28);
  v29 = (v28 + v15);
  v31 = (v11 + v22);
  v33 = vld1q_dup_f32(v31);
  v32 = (v31 + v15);
  v34 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v30, xmmword_1AFE42AA0), v12)), v23);
  v35 = vld1q_dup_f32(v20);
  v36 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v35, xmmword_1AFE42AA0), v12)), v23);
  v37 = vld1q_dup_f32(v26);
  v38 = vld1q_dup_f32(v29);
  v39 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v38, xmmword_1AFE42AA0), v12)), v23);
  v40 = vld1q_dup_f32(v32);
  v41 = vsubq_f32(v9, vrndq_f32(v9));
  v42 = vmlaq_n_f32(v24, vmlaq_f32(vnegq_f32(v24), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v27, xmmword_1AFE42AA0), v12))), v41.f32[0]);
  v43 = vmlaq_n_f32(v36, vmlaq_f32(vnegq_f32(v36), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v37, xmmword_1AFE42AA0), v12))), v41.f32[0]);
  v44 = vmlaq_lane_f32(v42, vmlaq_n_f32(vsubq_f32(v34, v42), vmlaq_f32(vnegq_f32(v34), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v33, xmmword_1AFE42AA0), v12))), v41.f32[0]), *v41.f32, 1);
  v45 = vmlaq_laneq_f32(v44, vmlaq_lane_f32(vsubq_f32(v43, v44), vmlaq_n_f32(vsubq_f32(v39, v43), vmlaq_f32(vnegq_f32(v39), v23, vcvtq_f32_u32(vandq_s8(vshlq_u32(v40, xmmword_1AFE42AA0), v12))), v41.f32[0]), *v41.f32, 1), v41, 2);
  v46 = vmulq_f32(v45, v45);
  v47 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v45), v46, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v45)), vmulq_f32(v46, v46), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v45), v46, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v45)));
  v48 = vcgeq_f32(v45, vdupq_n_s32(0x3D25AEE6u));
  v48.i32[3] = 0;
  v49 = vbslq_s8(vcltzq_s32(v48), v47, vmulq_f32(v45, vdupq_n_s32(0x3D9E8391u)));
  v49.i32[3] = v45.i32[3];
  v50 = vrev64q_s32(v49);
  *&result = vextq_s8(v50, v50, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37EDF8(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8, float32x4_t a9)
{
  v9 = vsubq_f32(a2, a1[5]);
  v9.i32[3] = 0;
  v10 = a1[1];
  v11 = vmulq_f32(*a1, vminnmq_f32(vsubq_f32(v9, vrndmq_f32(v9)), vdupq_n_s32(0x3F7FFFFFu)));
  v12 = vminq_s32(vcvtq_s32_f32(v11), v10);
  v13 = a1[4].i64[0];
  v15 = a1[2];
  v14 = a1[3];
  v16 = vmulq_s32(v15, v12);
  v16.i32[0] = vaddvq_s32(v16);
  v17 = vbslq_s8(vcgtq_s32(v10, v12), v15, v14);
  v18 = v17.i32[0] + v16.i32[0];
  v19 = v17.i32[1] + v16.i32[0];
  v20 = v19 + v17.i32[0];
  v21 = (v13 + v16.i32[0]);
  v22 = *v21;
  v23 = (v22 >> 10) & 0x1F;
  if (v23 == 31)
  {
    v24 = 2139095040;
  }

  else
  {
    v24 = (v22 >> 10) & 0x1F;
  }

  if (v23)
  {
    v25 = v23 == 31;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = (v23 << 23) + 939524096;
  }

  v27 = v13 + v18;
  v28 = *(v13 + v18);
  v29 = (v28 >> 10) & 0x1F;
  if (v29 == 31)
  {
    v30 = 2139095040;
  }

  else
  {
    v30 = (v28 >> 10) & 0x1F;
  }

  if (v29)
  {
    v31 = v29 == 31;
  }

  else
  {
    v31 = 1;
  }

  if (v31)
  {
    v32 = v30;
  }

  else
  {
    v32 = (v29 << 23) + 939524096;
  }

  v33 = v13 + v19;
  v34 = *(v13 + v19);
  v35 = (v34 >> 10) & 0x1F;
  if (v35 == 31)
  {
    v36 = 2139095040;
  }

  else
  {
    v36 = (v34 >> 10) & 0x1F;
  }

  if (v35)
  {
    v37 = v35 == 31;
  }

  else
  {
    v37 = 1;
  }

  if (v37)
  {
    v38 = v36;
  }

  else
  {
    v38 = (v35 << 23) + 939524096;
  }

  v39 = (v13 + v20);
  v40 = *v39;
  v41 = (v40 >> 10) & 0x1F;
  if (v41 == 31)
  {
    v42 = 2139095040;
  }

  else
  {
    v42 = (v40 >> 10) & 0x1F;
  }

  if (v41)
  {
    v43 = v41 == 31;
  }

  else
  {
    v43 = 1;
  }

  if (v43)
  {
    v44 = v42;
  }

  else
  {
    v44 = (v41 << 23) + 939524096;
  }

  v45 = *(v21 + v17.i32[2]);
  v46 = (v45 >> 10) & 0x1F;
  if (v46 == 31)
  {
    v47 = 2139095040;
  }

  else
  {
    v47 = (v45 >> 10) & 0x1F;
  }

  if (v46)
  {
    v48 = v46 == 31;
  }

  else
  {
    v48 = 1;
  }

  if (v48)
  {
    v49 = v47;
  }

  else
  {
    v49 = (v46 << 23) + 939524096;
  }

  v50 = *(v27 + v17.i32[2]);
  v51 = (v50 >> 10) & 0x1F;
  if (v51 == 31)
  {
    v52 = 2139095040;
  }

  else
  {
    v52 = (v50 >> 10) & 0x1F;
  }

  if (v51)
  {
    v53 = v51 == 31;
  }

  else
  {
    v53 = 1;
  }

  if (v53)
  {
    v54 = v52;
  }

  else
  {
    v54 = (v51 << 23) + 939524096;
  }

  v55 = *(v33 + v17.i32[2]);
  v56 = (v55 >> 10) & 0x1F;
  if (v56 == 31)
  {
    v57 = 2139095040;
  }

  else
  {
    v57 = (v55 >> 10) & 0x1F;
  }

  if (v56)
  {
    v58 = v56 == 31;
  }

  else
  {
    v58 = 1;
  }

  if (v58)
  {
    v59 = v57;
  }

  else
  {
    v59 = (v56 << 23) + 939524096;
  }

  v60 = *(v39 + v17.i32[2]);
  v61 = (v60 >> 10) & 0x1F;
  if (v61 == 31)
  {
    v62 = 2139095040;
  }

  else
  {
    v62 = (v60 >> 10) & 0x1F;
  }

  if (v61)
  {
    v63 = v61 == 31;
  }

  else
  {
    v63 = 1;
  }

  if (v63)
  {
    v64 = v62;
  }

  else
  {
    v64 = (v61 << 23) + 939524096;
  }

  v17.i32[0] = v59 | (v55 << 16) & 0x80000000 | (v55 >> 7) & 7 | (8 * (v55 & 0x3FF)) & 0x1FFF | ((v55 & 0x3FF) << 13);
  v10.i32[0] = v54 | (v50 << 16) & 0x80000000 | (v50 >> 7) & 7 | (8 * (v50 & 0x3FF)) & 0x1FFF | ((v50 & 0x3FF) << 13);
  v14.i32[0] = v49 | (v45 << 16) & 0x80000000 | (v45 >> 7) & 7 | (8 * (v45 & 0x3FF)) & 0x1FFF | ((v45 & 0x3FF) << 13);
  v15.i32[0] = v44 | (v40 << 16) & 0x80000000 | (v40 >> 7) & 7 | (8 * (v40 & 0x3FF)) & 0x1FFF | ((v40 & 0x3FF) << 13);
  v16.i32[0] = v38 | (v34 << 16) & 0x80000000 | (v34 >> 7) & 7 | (8 * (v34 & 0x3FF)) & 0x1FFF | ((v34 & 0x3FF) << 13);
  a8.i32[0] = v32 | (v28 << 16) & 0x80000000 | (v28 >> 7) & 7 | (8 * (v28 & 0x3FF)) & 0x1FFF | ((v28 & 0x3FF) << 13);
  a9.i32[0] = v26 | (v22 << 16) & 0x80000000 | (v22 >> 7) & 7 | (8 * (v22 & 0x3FF)) & 0x1FFF | ((v22 & 0x3FF) << 13);
  v65 = vsubq_f32(v11, vrndq_f32(v11));
  v66 = vmlaq_f32(a9, v65, vsubq_f32(a8, a9));
  a8.i32[0] = v64 | (v60 << 16) & 0x80000000 | (v60 >> 7) & 7 | (8 * (v60 & 0x3FF)) & 0x1FFF | ((v60 & 0x3FF) << 13);
  v67 = vmlaq_f32(v14, v65, vsubq_f32(v10, v14));
  v68 = vdupq_lane_s32(*v65.f32, 1);
  v69 = vmlaq_n_f32(vdupq_lane_s32(*v66.f32, 0), v68, vmlaq_f32(vsubq_f32(v16, v66), v65, vsubq_f32(v15, v16)).f32[0]);
  *&result = vmlaq_laneq_f32(v69, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v67.f32, 0), v69), v68, vmlaq_f32(vsubq_f32(v17, v67), v65, vsubq_f32(a8, v17)).f32[0]), v65, 2).u64[0];
  return result;
}

double sub_1AF37F0F8(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8, float32x4_t a9)
{
  v9 = vsubq_f32(a2, a1[5]);
  v9.i32[3] = 0;
  v10 = a1[1];
  v11 = vmulq_f32(*a1, vminnmq_f32(vsubq_f32(v9, vrndmq_f32(v9)), vdupq_n_s32(0x3F7FFFFFu)));
  v12 = vminq_s32(vcvtq_s32_f32(v11), v10);
  v14 = a1[2];
  v13 = a1[3];
  v15 = vmulq_s32(v14, v12);
  v15.i32[0] = vaddvq_s32(v15);
  v16 = vbslq_s8(vcgtq_s32(v10, v12), v14, v13);
  v17 = v16.i32[1] + v15.i32[0];
  v18 = v17 + v16.i32[0];
  v19 = a1[4].i64[0];
  v20 = v16.i32[0] + v15.i32[0];
  v21 = (v19 + v15.i32[0]);
  v16.i32[0] = *v21;
  v22 = (v19 + v20);
  v23 = (v19 + v17);
  v13.i32[0] = *v23;
  v24 = (v19 + v18);
  v14.i32[0] = *(v21 + v16.i32[2]);
  v15.f32[0] = *(v22 + v16.i32[2]);
  a8.i32[0] = *(v23 + v16.i32[2]);
  a9.f32[0] = *(v24 + v16.i32[2]);
  v25 = vsubq_f32(v11, vrndq_f32(v11));
  v11.f32[0] = *v22 - *v21;
  v26 = vmlaq_f32(v16, v25, v11);
  v10.f32[0] = *v24 - *v23;
  v15.f32[0] = v15.f32[0] - v14.f32[0];
  v27 = vmlaq_f32(v14, v25, v15);
  a9.f32[0] = a9.f32[0] - a8.f32[0];
  v28 = vdupq_lane_s32(*v25.f32, 1);
  v29 = vmlaq_n_f32(vdupq_lane_s32(*v26.f32, 0), v28, vmlaq_f32(vsubq_f32(v13, v26), v25, v10).f32[0]);
  *&result = vmlaq_laneq_f32(v29, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v27.f32, 0), v29), v28, vmlaq_f32(vsubq_f32(a8, v27), v25, a9).f32[0]), v25, 2).u64[0];
  return result;
}

double sub_1AF37F1E4(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  v3 = *(a1 + 16);
  v4 = vmulq_f32(*a1, vminnmq_f32(vsubq_f32(v2, vrndmq_f32(v2)), vdupq_n_s32(0x3F7FFFFFu)));
  v5 = vminq_s32(vcvtq_s32_f32(v4), v3);
  v6 = *(a1 + 32);
  v7 = vaddvq_s32(vmulq_s32(v6, v5));
  v8 = vbslq_s8(vcgtq_s32(v3, v5), v6, *(a1 + 48));
  v9 = v8.i32[2];
  v10 = v8.i32[1] + v7;
  v11 = vdupq_n_s32(0x7FE000u);
  v12 = vdupq_n_s32(0xF800000u);
  v13 = v10 + v8.i32[0];
  v14 = *(a1 + 64);
  v15 = v8.i32[0] + v7;
  v16 = (v14 + v7);
  v6.i64[0] = 0x8000000080000000;
  v6.i64[1] = 0x8000000080000000;
  v17 = vshll_n_u16(*v16, 0xDuLL);
  v18.i64[0] = 0x3800000038000000;
  v18.i64[1] = 0x3800000038000000;
  v19 = vaddq_s32(vorrq_s8(vandq_s8(v17, v12), vorrq_s8(vandq_s8(vmovl_s16(*v16), v6), vandq_s8(v17, v11))), v18);
  v20 = (v14 + v15);
  v21 = vshll_n_u16(*v20, 0xDuLL);
  v22 = vaddq_s32(vorrq_s8(vandq_s8(v21, v12), vorrq_s8(vandq_s8(vmovl_s16(*v20), v6), vandq_s8(v21, v11))), v18);
  v23 = (v14 + v10);
  v24 = vshll_n_u16(*v23, 0xDuLL);
  v25 = vaddq_s32(vorrq_s8(vandq_s8(v24, v12), vorrq_s8(vandq_s8(vmovl_s16(*v23), v6), vandq_s8(v24, v11))), v18);
  v26 = (v14 + v13);
  v27 = vshll_n_u16(*v26, 0xDuLL);
  v28 = vaddq_s32(vorrq_s8(vandq_s8(v27, v12), vorrq_s8(vandq_s8(vmovl_s16(*v26), v6), vandq_s8(v27, v11))), v18);
  v29 = *(v16 + v9);
  v30 = vandq_s8(vmovl_s16(v29), v6);
  v31 = vshll_n_u16(v29, 0xDuLL);
  v32 = vaddq_s32(vorrq_s8(vandq_s8(v31, v12), vorrq_s8(v30, vandq_s8(v31, v11))), v18);
  *v30.i8 = *(v20 + v9);
  v33 = vandq_s8(vmovl_s16(*v30.i8), v6);
  v34 = vshll_n_u16(*v30.i8, 0xDuLL);
  v35 = vorrq_s8(vandq_s8(v34, v12), vorrq_s8(v33, vandq_s8(v34, v11)));
  *v33.i8 = *(v23 + v9);
  v36 = vandq_s8(vmovl_s16(*v33.i8), v6);
  v37 = vshll_n_u16(*v33.i8, 0xDuLL);
  v38 = vaddq_s32(vorrq_s8(vandq_s8(v37, v12), vorrq_s8(v36, vandq_s8(v37, v11))), v18);
  *v36.i8 = *(v26 + v9);
  v39 = vandq_s8(vmovl_s16(*v36.i8), v6);
  v40 = vshll_n_u16(*v36.i8, 0xDuLL);
  v41 = vsubq_f32(v4, vrndq_f32(v4));
  v42 = vmlaq_n_f32(v19, vsubq_f32(v22, v19), v41.f32[0]);
  v43 = vmlaq_n_f32(v32, vsubq_f32(vaddq_s32(v35, v18), v32), v41.f32[0]);
  v44 = vmlaq_lane_f32(v42, vmlaq_n_f32(vsubq_f32(v25, v42), vsubq_f32(v28, v25), v41.f32[0]), *v41.f32, 1);
  *&result = vmlaq_laneq_f32(v44, vmlaq_lane_f32(vsubq_f32(v43, v44), vmlaq_n_f32(vsubq_f32(v38, v43), vsubq_f32(vaddq_s32(vorrq_s8(vandq_s8(v40, v12), vorrq_s8(v39, vandq_s8(v40, v11))), v18), v38), v41.f32[0]), *v41.f32, 1), v41, 2).u64[0];
  return result;
}

double sub_1AF37F3DC(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  v3 = *(a1 + 16);
  v4 = vmulq_f32(*a1, vminnmq_f32(vsubq_f32(v2, vrndmq_f32(v2)), vdupq_n_s32(0x3F7FFFFFu)));
  v5 = vminq_s32(vcvtq_s32_f32(v4), v3);
  v6 = *(a1 + 32);
  v7 = vaddvq_s32(vmulq_s32(v6, v5));
  v8 = vbslq_s8(vcgtq_s32(v3, v5), v6, *(a1 + 48));
  v9 = v8.i32[2];
  v10 = v8.i32[1] + v7;
  v11 = v10 + v8.i32[0];
  v12 = *(a1 + 64);
  v13 = (v12 + v7);
  v14 = (v12 + v8.i32[0] + v7);
  v15 = (v12 + v10);
  v16 = (v12 + v11);
  v17 = *(v13 + v8.i32[2]);
  v18 = *(v15 + v8.i32[2]);
  v19 = *(v16 + v8.i32[2]);
  v20 = vsubq_f32(v4, vrndq_f32(v4));
  v21 = vmlaq_n_f32(*v13, vsubq_f32(*v14, *v13), v20.f32[0]);
  v22 = vmlaq_n_f32(v17, vsubq_f32(*(v14 + v9), v17), v20.f32[0]);
  v23 = vmlaq_lane_f32(v21, vmlaq_n_f32(vsubq_f32(*v15, v21), vsubq_f32(*v16, *v15), v20.f32[0]), *v20.f32, 1);
  *&result = vmlaq_laneq_f32(v23, vmlaq_lane_f32(vsubq_f32(v22, v23), vmlaq_n_f32(vsubq_f32(v18, v22), vsubq_f32(v19, v18), v20.f32[0]), *v20.f32, 1), v20, 2).u64[0];
  return result;
}

double sub_1AF37F4BC(uint64_t a1, float32x4_t a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8, float32x4_t a9)
{
  v11 = vsubq_f32(a2, *(a1 + 80));
  v11.i32[3] = 0;
  v12 = *(a1 + 16);
  v13 = vmulq_f32(*a1, vminnmq_f32(vsubq_f32(v11, vrndmq_f32(v11)), vdupq_n_s32(0x3F7FFFFFu)));
  v14 = vminq_s32(vcvtq_s32_f32(v13), v12);
  v16 = *(a1 + 32);
  v15 = *(a1 + 48);
  v17 = vmulq_s32(v16, v14);
  v17.i32[0] = vaddvq_s32(v17);
  v18 = vbslq_s8(vcgtq_s32(v12, v14), v16, v15);
  v19 = v18.i32[1] + v17.i32[0];
  v20 = v19 + v18.i32[0];
  v21 = *(a1 + 64);
  v22 = (v21 + v17.i32[0]);
  v12.i8[0] = *v22;
  v12.f32[0] = v12.u32[0] * 0.0039216;
  v23 = (v21 + v18.i32[0] + v17.i32[0]);
  v15.i8[0] = *v23;
  v24 = (v21 + v19);
  v16.i8[0] = *v24;
  v16.f32[0] = v16.u32[0] * 0.0039216;
  v25 = (v21 + v20);
  v17.i8[0] = *v25;
  a8.i8[0] = v22[v18.i32[2]];
  a8.f32[0] = a8.u32[0] * 0.0039216;
  a9.i8[0] = v23[v18.i32[2]];
  v9.i8[0] = v24[v18.i32[2]];
  v9.f32[0] = v9.u32[0] * 0.0039216;
  LOBYTE(v10) = v25[v18.i32[2]];
  v26 = vsubq_f32(v13, vrndq_f32(v13));
  v13.f32[0] = -(v12.f32[0] - (v15.u32[0] * 0.0039216));
  v27 = vmlaq_f32(v12, v26, v13);
  v17.f32[0] = -(v16.f32[0] - (v17.u32[0] * 0.0039216));
  a9.f32[0] = -(a8.f32[0] - (a9.u32[0] * 0.0039216));
  v28 = vmlaq_f32(a8, v26, a9);
  v18.f32[0] = -(v9.f32[0] - (v10 * 0.0039216));
  v29 = vdupq_lane_s32(*v26.f32, 1);
  v30 = vmlaq_n_f32(vdupq_lane_s32(*v27.f32, 0), v29, vmlaq_f32(vsubq_f32(v16, v27), v26, v17).f32[0]);
  *&result = vmlaq_laneq_f32(v30, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v28.f32, 0), v30), v29, vmlaq_f32(vsubq_f32(v9, v28), v26, v18).f32[0]), v26, 2).u64[0];
  return result;
}

double sub_1AF37F5E0(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8, float32x4_t a9)
{
  v11 = vsubq_f32(a2, a1[5]);
  v11.i32[3] = 0;
  v12 = a1[1];
  v13 = vmulq_f32(*a1, vminnmq_f32(vsubq_f32(v11, vrndmq_f32(v11)), vdupq_n_s32(0x3F7FFFFFu)));
  v14 = vminq_s32(vcvtq_s32_f32(v13), v12);
  v16 = a1[2];
  v15 = a1[3];
  v17 = vmulq_s32(v16, v14);
  v17.i32[0] = vaddvq_s32(v17);
  v18 = vbslq_s8(vcgtq_s32(v12, v14), v16, v15);
  v19 = v18.i32[1] + v17.i32[0];
  v20 = v19 + v18.i32[0];
  v21 = a1[4].i64[0];
  v22 = v18.i32[0] + v17.i32[0];
  v23 = (v21 + v17.i32[0]);
  v18.i8[0] = *v23;
  v18.f32[0] = v18.u32[0];
  v15.f32[0] = v18.f32[0] * 0.0039216;
  v24 = (v21 + v22);
  v18.i8[0] = *v24;
  v25 = (v21 + v19);
  v16.i8[0] = *v25;
  v16.f32[0] = v16.u32[0] * 0.0039216;
  v26 = (v21 + v20);
  v17.i8[0] = *v26;
  a8.i8[0] = v23[v18.i32[2]];
  a8.f32[0] = a8.u32[0] * 0.0039216;
  a9.i8[0] = v24[v18.i32[2]];
  v9.i8[0] = v25[v18.i32[2]];
  LOBYTE(v10) = v26[v18.i32[2]];
  v9.f32[0] = v9.u32[0] * 0.0039216;
  v27 = vsubq_f32(v13, vrndq_f32(v13));
  v18.f32[0] = -(v15.f32[0] - (v18.u32[0] * 0.0039216));
  v28 = vmlaq_f32(v15, v27, v18);
  a9.f32[0] = -(a8.f32[0] - (a9.u32[0] * 0.0039216));
  v29 = vmlaq_f32(a8, v27, a9);
  v17.f32[0] = -(v16.f32[0] - (v17.u32[0] * 0.0039216));
  v12.f32[0] = -(v9.f32[0] - (v10 * 0.0039216));
  v30 = vdupq_lane_s32(*v27.f32, 1);
  v31 = vmlaq_n_f32(vdupq_lane_s32(*v28.f32, 0), v30, vmlaq_f32(vsubq_f32(v16, v28), v27, v17).f32[0]);
  v32 = vmlaq_laneq_f32(v31, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v29.f32, 0), v31), v30, vmlaq_f32(vsubq_f32(v9, v29), v27, v12).f32[0]), v27, 2);
  v33 = vmulq_f32(v32, v32);
  v34 = vmulq_f32(v33, v33);
  v35 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v32), v33, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v32));
  v36 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v32), v33, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v32));
  v37 = vcgeq_f32(v32, vdupq_n_s32(0x3D25AEE6u));
  v37.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v37), vmlaq_f32(v35, v34, v36), vmulq_f32(v32, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF37F7B8(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  v3 = *(a1 + 16);
  v4 = vmulq_f32(*a1, vminnmq_f32(vsubq_f32(v2, vrndmq_f32(v2)), vdupq_n_s32(0x3F7FFFFFu)));
  v5 = vminq_s32(vcvtq_s32_f32(v4), v3);
  v6 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = vaddvq_s32(vmulq_s32(v7, v5));
  v9 = vbslq_s8(vcgtq_s32(v3, v5), v7, *(a1 + 48));
  v10 = v9.i32[2];
  v11 = v9.i32[0] + v8;
  v12 = v9.i32[1] + v8;
  v13 = v12 + v9.i32[0];
  v14 = (v6 + v8);
  v16 = vld1q_dup_f32(v14);
  v15 = (v14 + v10);
  v17.i64[0] = 0xFF000000FFLL;
  v17.i64[1] = 0xFF000000FFLL;
  v18 = vdupq_n_s32(0x3B808081u);
  v19 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v16, xmmword_1AFE42AA0), v17)), v18);
  v20 = (v6 + v11);
  v22 = vld1q_dup_f32(v20);
  v21 = (v20 + v10);
  v23 = (v6 + v12);
  v25 = vld1q_dup_f32(v23);
  v24 = (v23 + v10);
  v26 = (v6 + v13);
  v28 = vld1q_dup_f32(v26);
  v27 = (v26 + v10);
  v29 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v25, xmmword_1AFE42AA0), v17)), v18);
  v30 = vld1q_dup_f32(v15);
  v31 = vld1q_dup_f32(v21);
  v32 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v30, xmmword_1AFE42AA0), v17)), v18);
  v33 = vld1q_dup_f32(v24);
  v34 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v33, xmmword_1AFE42AA0), v17)), v18);
  v35 = vld1q_dup_f32(v27);
  v36 = vsubq_f32(v4, vrndq_f32(v4));
  v37 = vmlaq_n_f32(v19, vmlaq_f32(vnegq_f32(v19), v18, vcvtq_f32_u32(vandq_s8(vshlq_u32(v22, xmmword_1AFE42AA0), v17))), v36.f32[0]);
  v38 = vmlaq_n_f32(v32, vmlaq_f32(vnegq_f32(v32), v18, vcvtq_f32_u32(vandq_s8(vshlq_u32(v31, xmmword_1AFE42AA0), v17))), v36.f32[0]);
  v39 = vmlaq_lane_f32(v37, vmlaq_n_f32(vsubq_f32(v29, v37), vmlaq_f32(vnegq_f32(v29), v18, vcvtq_f32_u32(vandq_s8(vshlq_u32(v28, xmmword_1AFE42AA0), v17))), v36.f32[0]), *v36.f32, 1);
  *&result = vmlaq_laneq_f32(v39, vmlaq_lane_f32(vsubq_f32(v38, v39), vmlaq_n_f32(vsubq_f32(v34, v38), vmlaq_f32(vnegq_f32(v34), v18, vcvtq_f32_u32(vandq_s8(vshlq_u32(v35, xmmword_1AFE42AA0), v17))), v36.f32[0]), *v36.f32, 1), v36, 2).u64[0];
  return result;
}

double sub_1AF37F930(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  v3 = *(a1 + 16);
  v4 = vmulq_f32(*a1, vminnmq_f32(vsubq_f32(v2, vrndmq_f32(v2)), vdupq_n_s32(0x3F7FFFFFu)));
  v5 = vminq_s32(vcvtq_s32_f32(v4), v3);
  v6 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = vaddvq_s32(vmulq_s32(v7, v5));
  v9 = vbslq_s8(vcgtq_s32(v3, v5), v7, *(a1 + 48));
  v10 = v9.i32[2];
  v11 = v9.i32[0] + v8;
  v12 = v9.i32[1] + v8;
  v13 = v12 + v9.i32[0];
  v14 = (v6 + v8);
  v16 = vld1q_dup_f32(v14);
  v15 = (v14 + v10);
  v17.i64[0] = 0xFF000000FFLL;
  v17.i64[1] = 0xFF000000FFLL;
  v18 = vdupq_n_s32(0x3B808081u);
  v19 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v16, xmmword_1AFE42AA0), v17)), v18);
  v20 = (v6 + v11);
  v22 = vld1q_dup_f32(v20);
  v21 = (v20 + v10);
  v23 = (v6 + v12);
  v25 = vld1q_dup_f32(v23);
  v24 = (v23 + v10);
  v26 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v25, xmmword_1AFE42AA0), v17)), v18);
  v27 = (v6 + v13);
  v29 = vld1q_dup_f32(v27);
  v28 = (v27 + v10);
  v30 = vld1q_dup_f32(v15);
  v31 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v30, xmmword_1AFE42AA0), v17)), v18);
  v32 = vld1q_dup_f32(v21);
  v33 = vld1q_dup_f32(v24);
  v34 = vld1q_dup_f32(v28);
  v35 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v33, xmmword_1AFE42AA0), v17)), v18);
  v36 = vsubq_f32(v4, vrndq_f32(v4));
  v37 = vmlaq_n_f32(v19, vmlaq_f32(vnegq_f32(v19), v18, vcvtq_f32_u32(vandq_s8(vshlq_u32(v22, xmmword_1AFE42AA0), v17))), v36.f32[0]);
  v38 = vmlaq_n_f32(v31, vmlaq_f32(vnegq_f32(v31), v18, vcvtq_f32_u32(vandq_s8(vshlq_u32(v32, xmmword_1AFE42AA0), v17))), v36.f32[0]);
  v39 = vmlaq_lane_f32(v37, vmlaq_n_f32(vsubq_f32(v26, v37), vmlaq_f32(vnegq_f32(v26), v18, vcvtq_f32_u32(vandq_s8(vshlq_u32(v29, xmmword_1AFE42AA0), v17))), v36.f32[0]), *v36.f32, 1);
  v40 = vmlaq_laneq_f32(v39, vmlaq_lane_f32(vsubq_f32(v38, v39), vmlaq_n_f32(vsubq_f32(v35, v38), vmlaq_f32(vnegq_f32(v35), v18, vcvtq_f32_u32(vandq_s8(vshlq_u32(v34, xmmword_1AFE42AA0), v17))), v36.f32[0]), *v36.f32, 1), v36, 2);
  v41 = vmulq_f32(v40, v40);
  v42 = vmulq_f32(v41, v41);
  v43 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v40), v41, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v40));
  v44 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v40), v41, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v40));
  v45 = vcgeq_f32(v40, vdupq_n_s32(0x3D25AEE6u));
  v45.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v45), vmlaq_f32(v43, v42, v44), vmulq_f32(v40, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF37FB5C(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  v3 = *(a1 + 16);
  v4 = vmulq_f32(*a1, vminnmq_f32(vsubq_f32(v2, vrndmq_f32(v2)), vdupq_n_s32(0x3F7FFFFFu)));
  v5 = vminq_s32(vcvtq_s32_f32(v4), v3);
  v6 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = vaddvq_s32(vmulq_s32(v7, v5));
  v9 = vbslq_s8(vcgtq_s32(v3, v5), v7, *(a1 + 48));
  v10 = v9.i32[2];
  v11 = v9.i32[0];
  v12 = v9.i32[0] + v8;
  v13 = v9.i32[1] + v8;
  v14 = (v6 + v8);
  v16 = vld1q_dup_f32(v14);
  v15 = (v14 + v10);
  v17 = v13 + v11;
  v18.i64[0] = 0xFF000000FFLL;
  v18.i64[1] = 0xFF000000FFLL;
  v19 = vdupq_n_s32(0x3B808081u);
  v20 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v16, xmmword_1AFE42AA0), v18)), v19);
  v21 = (v6 + v12);
  v23 = vld1q_dup_f32(v21);
  v22 = (v21 + v10);
  v24 = (v6 + v13);
  v26 = vld1q_dup_f32(v24);
  v25 = (v24 + v10);
  v27 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v26, xmmword_1AFE42AA0), v18)), v19);
  v28 = (v6 + v17);
  v30 = vld1q_dup_f32(v28);
  v29 = (v28 + v10);
  v31 = vld1q_dup_f32(v15);
  v32 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v31, xmmword_1AFE42AA0), v18)), v19);
  v33 = vld1q_dup_f32(v22);
  v34 = vld1q_dup_f32(v25);
  v35 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v34, xmmword_1AFE42AA0), v18)), v19);
  v36 = vld1q_dup_f32(v29);
  v37 = vsubq_f32(v4, vrndq_f32(v4));
  v38 = vmlaq_n_f32(v20, vmlaq_f32(vnegq_f32(v20), v19, vcvtq_f32_u32(vandq_s8(vshlq_u32(v23, xmmword_1AFE42AA0), v18))), v37.f32[0]);
  v39 = vmlaq_n_f32(v32, vmlaq_f32(vnegq_f32(v32), v19, vcvtq_f32_u32(vandq_s8(vshlq_u32(v33, xmmword_1AFE42AA0), v18))), v37.f32[0]);
  v40 = vmlaq_lane_f32(v38, vmlaq_n_f32(vsubq_f32(v27, v38), vmlaq_f32(vnegq_f32(v27), v19, vcvtq_f32_u32(vandq_s8(vshlq_u32(v30, xmmword_1AFE42AA0), v18))), v37.f32[0]), *v37.f32, 1);
  v41 = vrev64q_s32(vmlaq_laneq_f32(v40, vmlaq_lane_f32(vsubq_f32(v39, v40), vmlaq_n_f32(vsubq_f32(v35, v39), vmlaq_f32(vnegq_f32(v35), v19, vcvtq_f32_u32(vandq_s8(vshlq_u32(v36, xmmword_1AFE42AA0), v18))), v37.f32[0]), *v37.f32, 1), v37, 2));
  *&result = vextq_s8(v41, v41, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37FCDC(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  v3 = *(a1 + 16);
  v4 = vmulq_f32(*a1, vminnmq_f32(vsubq_f32(v2, vrndmq_f32(v2)), vdupq_n_s32(0x3F7FFFFFu)));
  v5 = vminq_s32(vcvtq_s32_f32(v4), v3);
  v6 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = vaddvq_s32(vmulq_s32(v7, v5));
  v9 = vbslq_s8(vcgtq_s32(v3, v5), v7, *(a1 + 48));
  v10 = v9.i32[2];
  v11 = v9.i32[0];
  v12 = v9.i32[0] + v8;
  v13 = v9.i32[1] + v8;
  v14 = (v6 + v8);
  v16 = vld1q_dup_f32(v14);
  v15 = (v14 + v10);
  v17 = v13 + v11;
  v18.i64[0] = 0xFF000000FFLL;
  v18.i64[1] = 0xFF000000FFLL;
  v19 = vdupq_n_s32(0x3B808081u);
  v20 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v16, xmmword_1AFE42AA0), v18)), v19);
  v21 = (v6 + v12);
  v23 = vld1q_dup_f32(v21);
  v22 = (v21 + v10);
  v24 = (v6 + v13);
  v26 = vld1q_dup_f32(v24);
  v25 = (v24 + v10);
  v27 = (v6 + v17);
  v29 = vld1q_dup_f32(v27);
  v28 = (v27 + v10);
  v30 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v26, xmmword_1AFE42AA0), v18)), v19);
  v31 = vld1q_dup_f32(v15);
  v32 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v31, xmmword_1AFE42AA0), v18)), v19);
  v33 = vld1q_dup_f32(v22);
  v34 = vld1q_dup_f32(v25);
  v35 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v34, xmmword_1AFE42AA0), v18)), v19);
  v36 = vld1q_dup_f32(v28);
  v37 = vsubq_f32(v4, vrndq_f32(v4));
  v38 = vmlaq_n_f32(v20, vmlaq_f32(vnegq_f32(v20), v19, vcvtq_f32_u32(vandq_s8(vshlq_u32(v23, xmmword_1AFE42AA0), v18))), v37.f32[0]);
  v39 = vmlaq_n_f32(v32, vmlaq_f32(vnegq_f32(v32), v19, vcvtq_f32_u32(vandq_s8(vshlq_u32(v33, xmmword_1AFE42AA0), v18))), v37.f32[0]);
  v40 = vmlaq_lane_f32(v38, vmlaq_n_f32(vsubq_f32(v30, v38), vmlaq_f32(vnegq_f32(v30), v19, vcvtq_f32_u32(vandq_s8(vshlq_u32(v29, xmmword_1AFE42AA0), v18))), v37.f32[0]), *v37.f32, 1);
  v41 = vmlaq_laneq_f32(v40, vmlaq_lane_f32(vsubq_f32(v39, v40), vmlaq_n_f32(vsubq_f32(v35, v39), vmlaq_f32(vnegq_f32(v35), v19, vcvtq_f32_u32(vandq_s8(vshlq_u32(v36, xmmword_1AFE42AA0), v18))), v37.f32[0]), *v37.f32, 1), v37, 2);
  v42 = vmulq_f32(v41, v41);
  v43 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v41), v42, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v41)), vmulq_f32(v42, v42), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v41), v42, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v41)));
  v44 = vcgeq_f32(v41, vdupq_n_s32(0x3D25AEE6u));
  v44.i32[3] = 0;
  v45 = vbslq_s8(vcltzq_s32(v44), v43, vmulq_f32(v41, vdupq_n_s32(0x3D9E8391u)));
  v45.i32[3] = v41.i32[3];
  v46 = vrev64q_s32(v45);
  *&result = vextq_s8(v46, v46, 0xCuLL).u64[0];
  return result;
}

double sub_1AF37FF10(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8, float32x4_t a9)
{
  v9 = vsubq_f32(a2, a1[5]);
  v9.i32[3] = 0;
  v10.i64[0] = 0x3F0000003F000000;
  v10.i64[1] = 0x3F0000003F000000;
  v11.i64[0] = 0x3F0000003F000000;
  v11.i64[1] = 0x3F0000003F000000;
  v12 = vmlaq_f32(v11, v11, v9);
  v13 = vabdq_f32(v10, vminnmq_f32(vsubq_f32(v12, vrndmq_f32(v12)), vdupq_n_s32(0x3F7FFFFFu)));
  v14 = a1[1];
  v15 = vmulq_f32(v13, vaddq_f32(*a1, *a1));
  v16 = vminq_s32(vcvtq_s32_f32(v15), v14);
  v17 = a1[4].i64[0];
  v19 = a1[2];
  v18 = a1[3];
  v20 = vmulq_s32(v19, v16);
  v20.i32[0] = vaddvq_s32(v20);
  v21 = vbslq_s8(vcgtq_s32(v14, v16), v19, v18);
  v22 = v21.i32[0] + v20.i32[0];
  v23 = v21.i32[1] + v20.i32[0];
  v24 = v23 + v21.i32[0];
  v25 = (v17 + v20.i32[0]);
  v26 = *v25;
  v27 = (v26 >> 10) & 0x1F;
  if (v27 == 31)
  {
    v28 = 2139095040;
  }

  else
  {
    v28 = (v26 >> 10) & 0x1F;
  }

  if (v27)
  {
    v29 = v27 == 31;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = (v27 << 23) + 939524096;
  }

  v31 = v17 + v22;
  v32 = *(v17 + v22);
  v33 = (v32 >> 10) & 0x1F;
  if (v33 == 31)
  {
    v34 = 2139095040;
  }

  else
  {
    v34 = (v32 >> 10) & 0x1F;
  }

  if (v33)
  {
    v35 = v33 == 31;
  }

  else
  {
    v35 = 1;
  }

  if (v35)
  {
    v36 = v34;
  }

  else
  {
    v36 = (v33 << 23) + 939524096;
  }

  v37 = v17 + v23;
  v38 = *(v17 + v23);
  v39 = (v38 >> 10) & 0x1F;
  if (v39 == 31)
  {
    v40 = 2139095040;
  }

  else
  {
    v40 = (v38 >> 10) & 0x1F;
  }

  if (v39)
  {
    v41 = v39 == 31;
  }

  else
  {
    v41 = 1;
  }

  if (v41)
  {
    v42 = v40;
  }

  else
  {
    v42 = (v39 << 23) + 939524096;
  }

  v43 = (v17 + v24);
  v44 = *v43;
  v45 = (v44 >> 10) & 0x1F;
  if (v45 == 31)
  {
    v46 = 2139095040;
  }

  else
  {
    v46 = (v44 >> 10) & 0x1F;
  }

  if (v45)
  {
    v47 = v45 == 31;
  }

  else
  {
    v47 = 1;
  }

  if (v47)
  {
    v48 = v46;
  }

  else
  {
    v48 = (v45 << 23) + 939524096;
  }

  v49 = *(v25 + v21.i32[2]);
  v50 = (v49 >> 10) & 0x1F;
  if (v50 == 31)
  {
    v51 = 2139095040;
  }

  else
  {
    v51 = (v49 >> 10) & 0x1F;
  }

  if (v50)
  {
    v52 = v50 == 31;
  }

  else
  {
    v52 = 1;
  }

  if (v52)
  {
    v53 = v51;
  }

  else
  {
    v53 = (v50 << 23) + 939524096;
  }

  v54 = *(v31 + v21.i32[2]);
  v55 = (v54 >> 10) & 0x1F;
  if (v55 == 31)
  {
    v56 = 2139095040;
  }

  else
  {
    v56 = (v54 >> 10) & 0x1F;
  }

  if (v55)
  {
    v57 = v55 == 31;
  }

  else
  {
    v57 = 1;
  }

  if (v57)
  {
    v58 = v56;
  }

  else
  {
    v58 = (v55 << 23) + 939524096;
  }

  v59 = *(v37 + v21.i32[2]);
  v60 = (v59 >> 10) & 0x1F;
  if (v60 == 31)
  {
    v61 = 2139095040;
  }

  else
  {
    v61 = (v59 >> 10) & 0x1F;
  }

  if (v60)
  {
    v62 = v60 == 31;
  }

  else
  {
    v62 = 1;
  }

  if (v62)
  {
    v63 = v61;
  }

  else
  {
    v63 = (v60 << 23) + 939524096;
  }

  v64 = *(v43 + v21.i32[2]);
  v65 = (v64 >> 10) & 0x1F;
  if (v65 == 31)
  {
    v66 = 2139095040;
  }

  else
  {
    v66 = (v64 >> 10) & 0x1F;
  }

  if (v65)
  {
    v67 = v65 == 31;
  }

  else
  {
    v67 = 1;
  }

  if (v67)
  {
    v68 = v66;
  }

  else
  {
    v68 = (v65 << 23) + 939524096;
  }

  v21.i32[0] = v63 | (v59 << 16) & 0x80000000 | (v59 >> 7) & 7 | (8 * (v59 & 0x3FF)) & 0x1FFF | ((v59 & 0x3FF) << 13);
  v14.i32[0] = v58 | (v54 << 16) & 0x80000000 | (v54 >> 7) & 7 | (8 * (v54 & 0x3FF)) & 0x1FFF | ((v54 & 0x3FF) << 13);
  v18.i32[0] = v53 | (v49 << 16) & 0x80000000 | (v49 >> 7) & 7 | (8 * (v49 & 0x3FF)) & 0x1FFF | ((v49 & 0x3FF) << 13);
  v19.i32[0] = v48 | (v44 << 16) & 0x80000000 | (v44 >> 7) & 7 | (8 * (v44 & 0x3FF)) & 0x1FFF | ((v44 & 0x3FF) << 13);
  v20.i32[0] = v42 | (v38 << 16) & 0x80000000 | (v38 >> 7) & 7 | (8 * (v38 & 0x3FF)) & 0x1FFF | ((v38 & 0x3FF) << 13);
  a8.i32[0] = v36 | (v32 << 16) & 0x80000000 | (v32 >> 7) & 7 | (8 * (v32 & 0x3FF)) & 0x1FFF | ((v32 & 0x3FF) << 13);
  a9.i32[0] = v30 | (v26 << 16) & 0x80000000 | (v26 >> 7) & 7 | (8 * (v26 & 0x3FF)) & 0x1FFF | ((v26 & 0x3FF) << 13);
  v69 = vsubq_f32(v15, vrndq_f32(v15));
  v70 = vmlaq_f32(a9, v69, vsubq_f32(a8, a9));
  a8.i32[0] = v68 | (v64 << 16) & 0x80000000 | (v64 >> 7) & 7 | (8 * (v64 & 0x3FF)) & 0x1FFF | ((v64 & 0x3FF) << 13);
  v71 = vmlaq_f32(v18, v69, vsubq_f32(v14, v18));
  v72 = vdupq_lane_s32(*v69.f32, 1);
  v73 = vmlaq_n_f32(vdupq_lane_s32(*v70.f32, 0), v72, vmlaq_f32(vsubq_f32(v20, v70), v69, vsubq_f32(v19, v20)).f32[0]);
  *&result = vmlaq_laneq_f32(v73, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v71.f32, 0), v73), v72, vmlaq_f32(vsubq_f32(v21, v71), v69, vsubq_f32(a8, v21)).f32[0]), v69, 2).u64[0];
  return result;
}

double sub_1AF380224(float32x4_t *a1, float32x4_t a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8, float32x4_t a9)
{
  v9 = vsubq_f32(a2, a1[5]);
  v9.i32[3] = 0;
  v10.i64[0] = 0x3F0000003F000000;
  v10.i64[1] = 0x3F0000003F000000;
  v11.i64[0] = 0x3F0000003F000000;
  v11.i64[1] = 0x3F0000003F000000;
  v12 = vmlaq_f32(v11, v11, v9);
  v13 = vabdq_f32(v10, vminnmq_f32(vsubq_f32(v12, vrndmq_f32(v12)), vdupq_n_s32(0x3F7FFFFFu)));
  v14 = a1[1];
  v15 = vmulq_f32(v13, vaddq_f32(*a1, *a1));
  v16 = vminq_s32(vcvtq_s32_f32(v15), v14);
  v18 = a1[2];
  v17 = a1[3];
  v19 = vmulq_s32(v18, v16);
  v19.i32[0] = vaddvq_s32(v19);
  v20 = vbslq_s8(vcgtq_s32(v14, v16), v18, v17);
  v21 = v20.i32[1] + v19.i32[0];
  v22 = v21 + v20.i32[0];
  v23 = a1[4].i64[0];
  v24 = v20.i32[0] + v19.i32[0];
  v25 = (v23 + v19.i32[0]);
  v20.i32[0] = *v25;
  v26 = (v23 + v24);
  v27 = (v23 + v21);
  v17.i32[0] = *v27;
  v28 = (v23 + v22);
  v18.i32[0] = *(v25 + v20.i32[2]);
  v19.f32[0] = *(v26 + v20.i32[2]);
  a8.i32[0] = *(v27 + v20.i32[2]);
  a9.f32[0] = *(v28 + v20.i32[2]);
  v29 = vsubq_f32(v15, vrndq_f32(v15));
  v15.f32[0] = *v26 - *v25;
  v30 = vmlaq_f32(v20, v29, v15);
  v14.f32[0] = *v28 - *v27;
  v19.f32[0] = v19.f32[0] - v18.f32[0];
  v31 = vmlaq_f32(v18, v29, v19);
  a9.f32[0] = a9.f32[0] - a8.f32[0];
  v32 = vdupq_lane_s32(*v29.f32, 1);
  v33 = vmlaq_n_f32(vdupq_lane_s32(*v30.f32, 0), v32, vmlaq_f32(vsubq_f32(v17, v30), v29, v14).f32[0]);
  *&result = vmlaq_laneq_f32(v33, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*v31.f32, 0), v33), v32, vmlaq_f32(vsubq_f32(a8, v31), v29, a9).f32[0]), v29, 2).u64[0];
  return result;
}

double sub_1AF380324(uint64_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, *(a1 + 80));
  v2.i32[3] = 0;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  v5 = vmlaq_f32(v4, v4, v2);
  v6 = vabdq_f32(v3, vminnmq_f32(vsubq_f32(v5, vrndmq_f32(v5)), vdupq_n_s32(0x3F7FFFFFu)));
  v7 = *(a1 + 16);
  v8 = vmulq_f32(v6, vaddq_f32(*a1, *a1));
  v9 = vminq_s32(vcvtq_s32_f32(v8), v7);
  v10 = *(a1 + 32);
  v11 = vaddvq_s32(vmulq_s32(v10, v9));
  v12 = vbslq_s8(vcgtq_s32(v7, v9), v10, *(a1 + 48));
  v13 = v12.i32[2];
  v14 = v12.i32[1] + v11;
  v15 = vdupq_n_s32(0x7FE000u);
  v16 = vdupq_n_s32(0xF800000u);
  v17 = v14 + v12.i32[0];
  v18 = *(a1 + 64);
  v19 = v12.i32[0] + v11;
  v20 = (v18 + v11);
  v10.i64[0] = 0x8000000080000000;
  v10.i64[1] = 0x8000000080000000;
  v21 = vshll_n_u16(*v20, 0xDuLL);
  v22.i64[0] = 0x3800000038000000;
  v22.i64[1] = 0x3800000038000000;
  v23 = vaddq_s32(vorrq_s8(vandq_s8(v21, v16), vorrq_s8(vandq_s8(vmovl_s16(*v20), v10), vandq_s8(v21, v15))), v22);
  v24 = (v18 + v19);
  v25 = vshll_n_u16(*v24, 0xDuLL);
  v26 = vaddq_s32(vorrq_s8(vandq_s8(v25, v16), vorrq_s8(vandq_s8(vmovl_s16(*v24), v10), vandq_s8(v25, v15))), v22);
  v27 = (v18 + v14);
  v28 = vshll_n_u16(*v27, 0xDuLL);
  v29 = vaddq_s32(vorrq_s8(vandq_s8(v28, v16), vorrq_s8(vandq_s8(vmovl_s16(*v27), v10), vandq_s8(v28, v15))), v22);
  v30 = (v18 + v17);
  v31 = vshll_n_u16(*v30, 0xDuLL);
  v32 = vaddq_s32(vorrq_s8(vandq_s8(v31, v16), vorrq_s8(vandq_s8(vmovl_s16(*v30), v10), vandq_s8(v31, v15))), v22);
  v33 = *(v20 + v13);
  v34 = vandq_s8(vmovl_s16(v33), v10);
  v35 = vshll_n_u16(v33, 0xDuLL);
  v36 = vaddq_s32(vorrq_s8(vandq_s8(v35, v16), vorrq_s8(v34, vandq_s8(v35, v15))), v22);
  *v34.i8 = *(v24 + v13);
  v37 = vandq_s8(vmovl_s16(*v34.i8), v10);
  v38 = vshll_n_u16(*v34.i8, 0xDuLL);
  v39 = vorrq_s8(vandq_s8(v38, v16), vorrq_s8(v37, vandq_s8(v38, v15)));
  *v37.i8 = *(v27 + v13);
  v40 = vandq_s8(vmovl_s16(*v37.i8), v10);
  v41 = vshll_n_u16(*v37.i8, 0xDuLL);
  v42 = vaddq_s32(vorrq_s8(vandq_s8(v41, v16), vorrq_s8(v40, vandq_s8(v41, v15))), v22);
  *v40.i8 = *(v30 + v13);
  v43 = vandq_s8(vmovl_s16(*v40.i8), v10);
  v44 = vshll_n_u16(*v40.i8, 0xDuLL);
  v45 = vsubq_f32(v8, vrndq_f32(v8));
  v46 = vmlaq_n_f32(v23, vsubq_f32(v26, v23), v45.f32[0]);
  v47 = vmlaq_n_f32(v36, vsubq_f32(vaddq_s32(v39, v22), v36), v45.f32[0]);
  v48 = vmlaq_lane_f32(v46, vmlaq_n_f32(vsubq_f32(v29, v46), vsubq_f32(v32, v29), v45.f32[0]), *v45.f32, 1);
  *&result = vmlaq_laneq_f32(v48, vmlaq_lane_f32(vsubq_f32(v47, v48), vmlaq_n_f32(vsubq_f32(v42, v47), vsubq_f32(vaddq_s32(vorrq_s8(vandq_s8(v44, v16), vorrq_s8(v43, vandq_s8(v44, v15))), v22), v42), v45.f32[0]), *v45.f32, 1), v45, 2).u64[0];
  return result;
}