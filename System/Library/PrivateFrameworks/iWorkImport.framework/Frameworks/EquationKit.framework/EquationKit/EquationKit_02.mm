void sub_275CA4A50(void *a1, void *a2, double *a3, double *a4)
{
  v8 = a1[37];
  if (v8)
  {
    v9 = (*(a1[33] + 8 * ((v8 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v8 + a1[36] - 1) % 0x1AuLL));
  }

  else
  {
    v9 = (a1 + 7);
  }

  v10 = [a2 operatorUnicharOrNul];
  if (v10)
  {
    v11 = v10;
    v12 = sub_275CAB718(a1, a2);
    if ((v9[15] & 2) != 0)
    {
      v13 = v9[17];
    }

    else
    {
      v13 = sub_275CB80E8(v9);
    }

    v17 = (*(**(v9 + 11) + 136))(*(v9 + 11), v11, v9 + 1);
    v18 = v14;
    v19 = v15;
    v20 = v16;
    v21 = *a3 + *a4;
    if (v21 == 0.0)
    {
      v22 = v17;
      *a3 = -CGRectGetMinY(*(&v14 - 1));
      v38.origin.x = v17;
      v38.origin.y = v18;
      v38.size.width = v19;
      v38.size.height = v20;
      MaxY = CGRectGetMaxY(v38);
      *a4 = MaxY;
      v21 = MaxY + *a3;
    }

    LODWORD(v35) = 1;
    *(&v35 + 1) = 0;
    v36 = a2;
    v24 = a1[77];
    v37 = 41;
    if (sub_275CAF228(v24, v24 + 32, &v36, &v35))
    {
      v39.origin.x = v17;
      v39.origin.y = v18;
      v39.size.width = v19;
      v39.size.height = v20;
      v25.n128_f64[0] = CGRectGetHeight(v39);
      v26 = sub_275CBB0A0(&v35, v9, v25);
      if (v26 < v21)
      {
        if (v12)
        {
          *a3 = v13 + v26 * 0.5;
          v27 = v26 * 0.5 - v13;
        }

        else if (v21 == 0.0)
        {
          v27 = v26 * 0.5;
          *a3 = v26 * 0.5;
        }

        else
        {
          *a3 = v26 / v21 * *a3;
          v27 = v26 / v21 * *a4;
        }

        *a4 = v27;
        v21 = v26;
      }
    }

    LODWORD(v34) = 1;
    *(&v34 + 1) = 0;
    v28 = a1[77];
    v36 = a2;
    v37 = 40;
    if (sub_275CAF228(v28, v28 + 32, &v36, &v34))
    {
      v40.origin.x = v17;
      v40.origin.y = v18;
      v40.size.width = v19;
      v40.size.height = v20;
      v29.n128_f64[0] = CGRectGetHeight(v40);
      v30 = sub_275CBB0A0(&v34, v9, v29);
      if (v30 > v21)
      {
        if (v12)
        {
          v31 = v30 * 0.5;
          *a3 = v13 + v31;
          v32 = v31 - v13;
        }

        else if (v21 == 0.0)
        {
          v32 = v30 * 0.5;
          *a3 = v32;
        }

        else
        {
          v33 = v30 / v21;
          *a3 = v33 * *a3;
          v32 = v33 * *a4;
        }

        *a4 = v32;
      }
    }
  }
}

void *sub_275CA4D18(void *a1, void *a2, char a3, double a4)
{
  v18 = a2;
  v7 = sub_275CAFE50(a1 + 59, &v18);
  if ((a3 & 1) != 0 || !v7 || (v8 = v7 + 2, *(v7 + 8) == 1) && *(v7 + 7) < a4)
  {
    v9 = v18;
    v10 = sub_275CA4DE8(a1, v18, a4);
    sub_275CB6328(v16, v9, 1, 0.0, 0.0, v10);
    v11 = sub_275CAFF3C(a1 + 59, &v18, &v18, v16);
    if ((v12 & 1) == 0)
    {
      v13 = v17;
      v14 = v16[1];
      *(v11 + 3) = v16[0];
      *(v11 + 5) = v14;
      v11[7] = v13;
    }

    v8 = v11 + 2;
  }

  return v8 + 1;
}

double sub_275CA4DE8(void *a1, void *a2, double a3)
{
  v6 = a1[37];
  if (v6)
  {
    v7 = (*(a1[33] + 8 * ((v6 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v6 + a1[36] - 1) % 0x1AuLL));
  }

  else
  {
    v7 = a1 + 7;
  }

  v8 = [a2 operatorUnicharOrNul];
  if (v8)
  {
    v9 = a1[37];
    if (v9)
    {
      v10 = (*(a1[33] + 8 * ((v9 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v9 + a1[36] - 1) % 0x1AuLL));
    }

    else
    {
      v10 = a1 + 7;
    }

    v11 = (*(*v7[11] + 136))(v7[11], v8, v10 + 1);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    LODWORD(v26) = 1;
    *(&v26 + 1) = 0;
    v27 = a2;
    v18 = a1[77];
    v28 = 41;
    if (sub_275CAF228(v18, v18 + 32, &v27, &v26))
    {
      v29.origin.x = v11;
      v29.origin.y = v13;
      v29.size.width = v15;
      v29.size.height = v17;
      v19.n128_f64[0] = CGRectGetWidth(v29);
      v20 = sub_275CBB0A0(&v26, v7, v19);
      if (v20 < a3)
      {
        a3 = v20;
      }
    }

    LODWORD(v25) = 1;
    *(&v25 + 1) = 0;
    v21 = a1[77];
    v27 = a2;
    v28 = 40;
    if (sub_275CAF228(v21, v21 + 32, &v27, &v25))
    {
      v30.origin.x = v11;
      v30.origin.y = v13;
      v30.size.width = v15;
      v30.size.height = v17;
      v22.n128_f64[0] = CGRectGetWidth(v30);
      v23 = sub_275CBB0A0(&v25, v7, v22);
      if (v23 > a3)
      {
        return v23;
      }
    }
  }

  return a3;
}

void sub_275CA4FB8(id *a1@<X1>, int a2@<W2>, int a3@<W3>, id *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  sub_275C93F58(a4, a1);
  if (a2 == 2)
  {
    v14 = *a1;
    if (a3)
    {
      [v14 erasableBounds];
      v12 = 0.0 - CGRectGetMidX(v24) + a6;
    }

    else
    {
      [v14 width];
      v12 = (a5 - v15) * 0.5;
    }
  }

  else
  {
    v12 = 0.0;
    if (a2 == 3)
    {
      [*a1 width];
      v12 = a5 - v13;
    }
  }

  [*a1 width];
  v17 = a5 - (v12 + v16);
  if (v12 != 0.0 || v17 != 0.0)
  {
    if (*a1)
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (v12 != 0.0)
      {
        v19 = [[EQKitHSpace alloc] initWithWidth:v12];
        [v18 addObject:v19];
      }

      [v18 addObject:*a1];
      if (v17 != 0.0)
      {
        v20 = [[EQKitHSpace alloc] initWithWidth:v17];
        [v18 addObject:v20];
      }

      v21 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v18];
      sub_275C9404C(a4, v21);
    }

    else
    {
      v22 = [[EQKitHSpace alloc] initWithWidth:v12 + v17];
      sub_275C93F10(v23, v22);
      sub_275C93FE8(a4, v23);
      sub_275C93FE4(v23);
    }
  }
}

void sub_275CA5174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_275C93FE4(va);
  sub_275C93FE4(v3);
  _Unwind_Resume(a1);
}

BOOL sub_275CA51B0(void *a1)
{
  v1 = a1[49] + a1[48] - 1;
  if (*(*(a1[45] + 8 * (v1 / 0x19)) + 160 * (v1 % 0x19) + 152) != 1)
  {
    for (i = a1[51]; i != a1[50]; i -= 8)
    {
      v5 = *(i - 8);
      v6 = [v5 isOperatorPaddingRequired];
      if (v6)
      {
        return v6 == 2;
      }
    }
  }

  return 0;
}

uint64_t sub_275CA524C(void *a1, void *a2)
{
  result = [a2 isEmbellishedOperator];
  if (result)
  {
    v5 = a1[58];
    if (v5)
    {
      v6 = [*(*(a1[54] + (((v5 + a1[57] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v5 + a1[57] - 1) & 0x1FF)) operatorCore];
      return v6 != [a2 operatorCore];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_275CA52C8@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_275CC6C88(a3);
  v7 = *a2;
  v8 = *(a2 + 2);
  if (v8 == 1)
  {
    result = sub_275CA5B38(a1, *a2);
    if (result)
    {
      if (v7)
      {
        objc_msgSend_stretchyLayoutSchemata(v7);
      }

      else
      {
        memset(v9, 0, sizeof(v9));
      }

      sub_275CC6CB0(a3, v9);
    }

    else
    {
      if (!v7)
      {
        return result;
      }

      objc_msgSend_layoutSchemata(v7);
      sub_275CC6CB0(a3, v9);
    }

    return sub_275CC6C4C(v9);
  }

  if (v8 == 2)
  {
    return sub_275CA5C1C(a1, *a2, a3);
  }

  if (v7)
  {
    objc_msgSend_layoutSchemata(*a2);
    sub_275CC6CB0(a3, v9);
    return sub_275CC6C4C(v9);
  }

  return result;
}

void sub_275CA53B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_275CC6C4C(&a9);
  sub_275CC6C4C(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_275CA53F0(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  sub_275C93F10(v32, 0);
  v8 = *(a2 + 8);
  if (a4)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  if (((v8 - 5) & 0xFFFFFFFD) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 == 1)
  {
    v11 = sub_275CA31A0(a1, [a4 operatorCore]);
    sub_275CA471C(a1, v11);
    v8 = *(a2 + 8);
  }

  switch(v8)
  {
    case 1:
      v12 = sub_275CC7700(a2);
      sub_275CA43AC(a1, v12, 0);
      break;
    case 2:
      sub_275CA6348(a1, a2, v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 3:
      v13 = [sub_275CC75EC(a2) schemataChild];
      sub_275CA3EF0(a1, v13, 0, v31);
      v14 = [EQKitHVSpace alloc];
      [v31[0] width];
      v16 = v15;
      [v31[0] height];
      v18 = v17;
      [v31[0] depth];
      v20 = [(EQKitHVSpace *)v14 initWithWidth:v16 height:v18 depth:v19];
      sub_275C93F10(v30, v20);
      sub_275C93FE8(v32, v30);
      sub_275C93FE4(v30);

      goto LABEL_39;
    case 4:
      sub_275CA70C8(a1, a2, v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 5:
      sub_275CA76F8(a1, a2, v5, a4, v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 6:
      sub_275CA9794(a1, a2, v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 7:
      sub_275CA66F4(a1, a2, v5, a4, v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 8:
      sub_275CA7470(a1, a2, v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 9:
      sub_275CA75A4(a1, a2, v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 10:
      sub_275CA7148(a1, a2, v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 11:
      v30[0] = [sub_275CC7608(a2) schemataOperator];
      v21 = sub_275CAFE50(a1 + 59, v30);
      v22 = v21;
      if (v21)
      {
        sub_275CAB1F8(a1, (v21 + 3), v31);
        sub_275C93FE8(v32, v31);
        sub_275C93FE4(v31);
        sub_275CB0BDC(a1 + 59, v22);
      }

      break;
    case 12:
      sub_275CA8E90(a1, a2, v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 13:
      sub_275CA8F60(a1, a2, v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 14:
      sub_275CA9034(a1, a2, v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 15:
      sub_275CA9108(a1, a2, v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 16:
      sub_275CA91DC(a1, a2, v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 17:
      sub_275CA92B0(a1, a2, v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 18:
      sub_275CA9384(a1, a2, v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 19:
      sub_275CA8C74(a1, a2, v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 20:
      sub_275CA8DB0(a1, a2, v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 21:
      sub_275CAA2BC(v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 22:
      sub_275CA5CD8(a1, a2, v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 23:
      sub_275CAA314(a1, a2, v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 24:
      sub_275CAA6DC(a1, v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 25:
      sub_275CAA7FC(a1, a2, v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 26:
      sub_275CAB0A4(a1);
      break;
    case 27:
      sub_275CAB160(v31);
      sub_275C93FE8(v32, v31);
      goto LABEL_39;
    case 28:
      sub_275CAAE38(a1, a2, v31);
      sub_275C93FE8(v32, v31);
LABEL_39:
      sub_275C93FE4(v31);
      break;
    default:
      break;
  }

  if (v32[0])
  {
    sub_275CA3B14(a1, 0, 1);
    sub_275C93F58(v29, v32);
    v23 = a1[51];
    if (a1[50] == v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = *(v23 - 1);
    }

    sub_275CA45F8(a1, v29, v24);
    sub_275C93FE4(v29);
    sub_275CA3D74(a1, v28);
    sub_275C93FE4(v28);
  }

  if (v10)
  {
    v25 = sub_275CA3514(a1, [a4 operatorCore]);
    sub_275CA4850(a1, v25);
  }

  else if (!a4)
  {
    if (v5)
    {
      v26 = a1[49];
      if (v26)
      {
        *(*(a1[45] + (a1[48] + v26 - 1) / 0x19) + 160 * ((a1[48] + v26 - 1) % 0x19) + 144) = 0;
      }
    }
  }

  return sub_275C93FE4(v32);
}

uint64_t sub_275CA5B38(uint64_t a1, void *a2)
{
  if (![a2 operatorUnicharOrNul])
  {
    return 0;
  }

  v4 = *(*sub_275C9B058([*(a1 + 608) fontManager]) + 104);

  return v4();
}

uint64_t sub_275CA5C1C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_275CA5B38(a1, a2);
  if (v5)
  {
    if (a2)
    {
      objc_msgSend_stretchyLayoutSchemata(a2);
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }
  }

  else if (a2)
  {
    objc_msgSend_layoutSchemata(a2);
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  sub_275CC6CB0(a3, &v7);
  sub_275CC6C4C(&v7);
  return v5;
}

void *sub_275CA5CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = sub_275CC7548(a2);
  if (v4)
  {
    v5 = v4;
    sub_275CA3B14(a1, 0, 1);
    v6 = *(a1 + 296);
    if (v6)
    {
      v7 = *(*(a1 + 264) + 8 * ((v6 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v6 + *(a1 + 288) - 1) % 0x1AuLL);
    }

    else
    {
      v7 = a1 + 56;
    }

    v43 = sub_275CB7F0C(v7);
    v41 = [v5 schemataIsQuoted];
    if (v41)
    {
      sub_275CA6274(__p, "");
      v8 = *(a1 + 616);
      v9 = *(a1 + 408);
      if (*(a1 + 400) == v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = *(v9 - 8);
      }

      v53 = v10;
      v54 = 12;
      sub_275CAE8C8(v8, v8 + 80, &v53, __p);
      v12 = objc_alloc(MEMORY[0x277CCAB68]);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0].__r_.__value_.__r.__words[0];
      }

      v11 = [v12 initWithUTF8String:v13];
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v11 = 0;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = [v5 schemataChildren];
    v14 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v14)
    {
      v15 = *v50;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v50 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v49 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v11)
            {
              [v11 appendString:v17];
            }

            else
            {
              v11 = [v17 mutableCopy];
            }
          }

          else if (objc_opt_respondsToSelector())
          {
            if (v11)
            {
              v18 = sub_275C9B058([*(a1 + 608) fontManager]);
              v19 = (*(*v18 + 144))(v18, v11, v43);
              v20 = [EQKitStringBox alloc];
              v21 = *(a1 + 296);
              v22 = a1 + 56;
              if (v21)
              {
                v22 = *(*(a1 + 264) + 8 * ((v21 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v21 + *(a1 + 288) - 1) % 0x1AuLL);
              }

              v23 = [(EQKitStringBox *)v20 initWithAttributedString:v19 cgColor:*(v22 + 112)];
              sub_275C93F10(__p, v23);
              sub_275C940CC(__p, 5);
              sub_275C93F58(v47, __p);
              v24 = *(a1 + 408);
              if (*(a1 + 400) == v24)
              {
                v25 = 0;
              }

              else
              {
                v25 = *(v24 - 8);
              }

              sub_275CA45F8(a1, v47, v25);
              sub_275C93FE4(v47);

              sub_275C93FE4(__p);
            }

            sub_275CA43AC(a1, v17, 0);
            v11 = 0;
          }
        }

        v14 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v14);
    }

    if (!v41)
    {
      goto LABEL_45;
    }

    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x277CCAB68]);
    }

    sub_275CA6274(__p, "");
    v26 = *(a1 + 616);
    v27 = *(a1 + 408);
    v28 = *(a1 + 400) == v27 ? 0 : *(v27 - 8);
    v53 = v28;
    v54 = 13;
    sub_275CAE8C8(v26, v26 + 80, &v53, __p);
    v29 = objc_alloc(MEMORY[0x277CCAB68]);
    v30 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
    v31 = [v29 initWithUTF8String:v30];
    [v11 appendString:v31];

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
      if (v11)
      {
        goto LABEL_46;
      }
    }

    else
    {
LABEL_45:
      if (v11)
      {
LABEL_46:
        v32 = sub_275C9B058([*(a1 + 608) fontManager]);
        v33 = (*(*v32 + 144))(v32, v11, v43);
        v34 = [EQKitStringBox alloc];
        v35 = *(a1 + 296);
        if (v35)
        {
          v36 = *(*(a1 + 264) + 8 * ((v35 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v35 + *(a1 + 288) - 1) % 0x1AuLL);
        }

        else
        {
          v36 = a1 + 56;
        }

        v37 = [(EQKitStringBox *)v34 initWithAttributedString:v33 cgColor:*(v36 + 112)];
        sub_275C93F10(v46, v37);
        v38 = *(a1 + 408);
        if (*(a1 + 400) == v38)
        {
          v39 = 0;
        }

        else
        {
          v39 = *(v38 - 8);
        }

        sub_275CA45F8(a1, v46, v39);
        sub_275C93FE4(v46);
      }
    }

    sub_275CA3D74(a1, v45);
    sub_275C93FE4(v45);
  }

  return sub_275C93F10(a3, 0);
}

void sub_275CA621C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_275CA6274(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_275C8EE7C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

uint64_t sub_275CA632C(uint64_t a1)
{
  v1 = *(a1 + 408);
  if (*(a1 + 400) == v1)
  {
    return 0;
  }

  else
  {
    return *(v1 - 8);
  }
}

void sub_275CA6348(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = sub_275CC776C(a2);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = *v29;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        if ([v8 isEmbellishedOperator] && (sub_275CABF64(a1, objc_msgSend(v8, "operatorCore")) & 1) != 0)
        {
          v9 = 1;
          goto LABEL_12;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_12:
  v10 = sub_275CC5BA0(v4);
  v12 = [v10 count] == 1 && (v21[0] = objc_msgSend(objc_msgSend(v10, "firstObject"), "operatorCore")) != 0 && (v11 = sub_275CB01C0(a1 + 59, v21)) != 0 && *(v11 + 8) == 1;
  if (((v9 | v12) & 1) != 0 && (v13 = a1[48] + a1[49] - 1, sub_275CD2A44((*(a1[45] + v13 / 0x19) + 160 * (v13 % 0x19)))))
  {
    sub_275CA3B14(a1, 1, 1);
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v14)
  {
    v15 = *v25;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v4);
        }

        v17 = *(*(&v24 + 1) + 8 * j);
        if (v9 && [*(*(&v24 + 1) + 8 * j) isEmbellishedOperator] && sub_275CABF64(a1, objc_msgSend(v17, "operatorCore")))
        {
          sub_275C93F10(v23, 0);
          sub_275CA45F8(a1, v23, v17);
          v18 = v23;
LABEL_33:
          sub_275C93FE4(v18);
          continue;
        }

        if (v12 && [v17 isEmbellishedOperator])
        {
          sub_275C93F10(v22, 0);
          sub_275CA45F8(a1, v22, v17);
          v18 = v22;
          goto LABEL_33;
        }

        sub_275CAC0B0(a1, v17, v10);
        sub_275CA43AC(a1, v17, 0);
        sub_275CAC148(a1, v17);
      }

      v14 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v14);
  }

  sub_275C93F10(a3, 0);
  if ((v9 | v12))
  {
    sub_275CAC1A4(a1, v10);
    if (v19)
    {
      sub_275CA3D74(a1, v21);
      sub_275C93FE8(a3, v21);
      sub_275C93FE4(v21);
    }
  }
}

void sub_275CA66AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_275C93FE4(va);
  sub_275C93FE4(a7);
  _Unwind_Resume(a1);
}

uint64_t sub_275CA66F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 296);
  if (v9)
  {
    v10 = *(*(a1 + 264) + 8 * ((v9 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v9 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v10 = a1 + 56;
  }

  v11 = sub_275CC7628(a2);
  sub_275CA3F54(a1, [v11 schemataNumerator], *(v10 + 16) ^ 1, 0, 0, 0, 0, v91);
  sub_275CA3F54(a1, [v11 schemataDenominator], *(v10 + 16) ^ 1, 0, 0, 1, 0, v89);
  if (*(v10 + 120))
  {
    v12 = *(v10 + 128);
  }

  else
  {
    v12 = sub_275CB80C0(v10);
  }

  v13 = *(a1 + 408);
  if (*(a1 + 400) == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v13 - 8);
  }

  v15 = sub_275CA3458(a1, 36, v14, v12);
  v16 = 0.0;
  if (v15 >= 0.0)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0.0;
  }

  if (v17 > 0.0)
  {
    v18 = sub_275C9B058([*(a1 + 608) fontManager]);
    v19 = *(a1 + 296);
    if (v19)
    {
      v20 = *(*(a1 + 264) + 8 * ((v19 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v19 + *(a1 + 288) - 1) % 0x1AuLL);
    }

    else
    {
      v20 = a1 + 56;
    }

    v16 = (*(*v18 + 40))(v18, 25, v20 + 8, v12);
  }

  v21 = v91[0];
  v22 = v89[0];
  [v91[0] width];
  v24 = v23;
  [v22 width];
  v26 = v25.n128_f64[0];
  if (v24 > v25.n128_f64[0])
  {
    v25.n128_f64[0] = v24;
  }

  v80 = v25.n128_f64[0];
  v27 = *(v10 + 88);
  if (*(v10 + 120))
  {
    v25.n128_u64[0] = *(v10 + 128);
  }

  else
  {
    v25.n128_f64[0] = sub_275CB80C0(v10);
  }

  v29 = (*(*v27 + 40))(v27, 3, v10 + 8, v25);
  v30 = *(v10 + 88);
  if (*(v10 + 120))
  {
    v28.n128_u64[0] = *(v10 + 128);
  }

  else
  {
    v28.n128_f64[0] = sub_275CB80C0(v10);
  }

  v32 = (*(*v30 + 40))(v30, 4, v10 + 8, v28);
  v33 = *(v10 + 120);
  if ((v33 & 2) != 0)
  {
    v81 = *(v10 + 136);
  }

  else
  {
    v81 = sub_275CB80E8(v10);
    v33 = *(v10 + 120);
  }

  v34 = *(v10 + 88);
  if (v33)
  {
    v31.n128_u64[0] = *(v10 + 128);
  }

  else
  {
    v31.n128_f64[0] = sub_275CB80C0(v10);
  }

  v35 = (*(*v34 + 40))(v34, 2, v10 + 8, v31);
  [v21 depth];
  v36 = v29 - v81;
  v37 = v17 * 0.5;
  v38 = v36 - v17 * 0.5;
  v40 = v35;
  if (v35 <= v38 - v39)
  {
    [v21 depth];
    v40 = v38 - v41;
  }

  [v22 height];
  v42 = v32 + v81 - v37;
  if (v35 <= v42 - v43)
  {
    [v22 height];
    v35 = v42 - v44;
  }

  v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v88 = 2;
  v46 = *(a1 + 616);
  v47 = *(a1 + 408);
  if (*(a1 + 400) == v47)
  {
    v48 = 0;
  }

  else
  {
    v48 = *(v47 - 8);
  }

  v84 = v48;
  v85 = 24;
  sub_275C8D3A8(v46, v46 + 128, &v84, &v88);
  v87 = 2;
  v49 = *(a1 + 616);
  v50 = *(a1 + 408);
  if (*(a1 + 400) == v50)
  {
    v51 = 0;
  }

  else
  {
    v51 = *(v50 - 8);
  }

  v84 = v51;
  v85 = 25;
  sub_275C8D3A8(v49, v49 + 128, &v84, &v87);
  v52 = v80 + v16 * 2.0;
  if (v88 == 3)
  {
    v53 = v52 - v24;
  }

  else
  {
    v53 = 0.0;
    if (v88 == 2)
    {
      v53 = (v52 - v24) * 0.5;
    }
  }

  if (v87 == 3)
  {
    v54 = v52 - v26;
  }

  else
  {
    v54 = 0.0;
    if (v87 == 2)
    {
      v54 = (v52 - v26) * 0.5;
    }
  }

  if (v53 == 0.0)
  {
    [v45 addObject:v21];
  }

  else
  {
    sub_275CA3B14(a1, 1, 0);
    sub_275CA452C(a1, v53);
    sub_275C93F10(v86, v21);
    sub_275CA45F8(a1, v86, 0);
    sub_275C93FE4(v86);
    sub_275CA3D74(a1, &v84);
    if (v84)
    {
      [v45 addObject:?];
    }

    sub_275C93FE4(&v84);
  }

  v55 = [[EQKitVSpace alloc] initWithHeight:v40 depth:0.0];
  [v45 addObject:v55];

  v56 = [EQKitRule alloc];
  v57 = *(a1 + 296);
  if (v57)
  {
    v58 = *(*(a1 + 264) + 8 * ((v57 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v57 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v58 = a1 + 56;
  }

  v59 = [(EQKitRule *)v56 initWithHeight:*(v58 + 112) depth:v37 width:v37 cgColor:v52];
  [v45 addObject:v59];

  v60 = [[EQKitVSpace alloc] initWithHeight:v35 depth:0.0];
  [v45 addObject:v60];

  if (v54 == 0.0)
  {
    [v45 addObject:v22];
  }

  else
  {
    sub_275CA3B14(a1, 1, 0);
    sub_275CA452C(a1, v54);
    sub_275C93F10(v83, v22);
    sub_275CA45F8(a1, v83, 0);
    sub_275C93FE4(v83);
    sub_275CA3D74(a1, &v84);
    if (v84)
    {
      [v45 addObject:?];
    }

    sub_275C93FE4(&v84);
  }

  v61 = [[EQKitOffsetVBox alloc] initWithChildBoxes:v45 pivotIndex:2 offset:v81];
  sub_275C93F10(a5, v61);

  *(a5 + 32) = *(a5 + 32) & 0xFFF0 | 0xA;
  sub_275C9422C(a5, v91);
  sub_275C9422C(a5, v89);
  sub_275C941E0(a5, 1);

  v62 = *(a1 + 296);
  if (v62)
  {
    v63 = *(*(a1 + 264) + 8 * ((v62 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v62 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v63 = a1 + 56;
  }

  if (*(v63 + 16))
  {
    goto LABEL_72;
  }

  if ((v92 & 0x1C00u) <= 0x1000 || (v90 & 0x1C00u) <= 0x1000)
  {
    if ((v92 & 0x1000) != 0)
    {
      if ((v90 & 0x1000) != 0)
      {
        v65 = 3;
      }

      else
      {
        v65 = 1;
      }

      goto LABEL_80;
    }

LABEL_72:
    v65 = 1;
    goto LABEL_80;
  }

  if (v62)
  {
    v64 = *(*(a1 + 264) + 8 * ((v62 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v62 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v64 = a1 + 56;
  }

  if (*(v64 + 8) <= 0)
  {
    v65 = 3;
  }

  else
  {
    v65 = 4;
  }

LABEL_80:
  sub_275C940CC(a5, v65);
  if (a3)
  {
    v66 = sub_275C9B058([*(a1 + 608) fontManager]);
    v68 = *(a1 + 296);
    if (v68)
    {
      v69 = *(*(a1 + 264) + 8 * ((v68 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v68 + *(a1 + 288) - 1) % 0x1AuLL);
      v70 = v69 + 8;
    }

    else
    {
      v70 = a1 + 64;
      v69 = a1 + 56;
    }

    if (*(v69 + 120))
    {
      v67.n128_u64[0] = *(v69 + 128);
    }

    else
    {
      v67.n128_f64[0] = sub_275CB80C0(v69);
    }

    v71 = (*(*v66 + 40))(v66, 26, v70, v67);
    v72 = [a4 operatorCore];
    if (v72)
    {
      v73 = sub_275CA31A0(a1, v72);
      v74 = sub_275CA3514(a1, v72);
      if (v71 <= v73)
      {
        v75 = v73;
      }

      else
      {
        v75 = v71;
      }

      if (v71 <= v74)
      {
        v76 = v74;
      }

      else
      {
        v76 = v71;
      }

      v71 = v75;
    }

    else
    {
      v76 = v71;
    }

    sub_275CA471C(a1, v71);
    sub_275C93F58(v82, a5);
    v77 = *(a1 + 408);
    if (*(a1 + 400) == v77)
    {
      v78 = 0;
    }

    else
    {
      v78 = *(v77 - 8);
    }

    sub_275CA45F8(a1, v82, v78);
    sub_275C93FE4(v82);
    sub_275CA4850(a1, v76);
    sub_275C93F10(&v84, 0);
    sub_275C93FE8(a5, &v84);
    sub_275C93FE4(&v84);
  }

  sub_275C93FE4(v89);
  return sub_275C93FE4(v91);
}

void sub_275CA6FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  sub_275C93FE4(v40);
  sub_275C93FE4(va);
  sub_275C93FE4(v41 - 200);
  _Unwind_Resume(a1);
}

void sub_275CA70C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_275CC7468(a2);
  v6 = [v5 schemataKernel];
  v7 = [v5 schemataSubscript];
  v8 = [v5 schemataSuperscript];

  sub_275CAC5E0(a1, v6, v7, v8, a3);
}

uint64_t sub_275CA7148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 296);
  if (v5)
  {
    v6 = *(*(a1 + 264) + 8 * ((v5 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v5 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v6 = a1 + 56;
  }

  v7 = sub_275CC75B8(a2);
  v8 = (*(**(v6 + 88) + 72))(*(v6 + 88), [v7 schemataTokenString], v6 + 8);
  v9 = [[EQKitStringBox alloc] initWithAttributedString:v8 cgColor:*(v6 + 112)];
  v10 = [v7 schemataUnicharOrNul];
  v11 = 0.0;
  if (v10)
  {
    v12 = *(a1 + 408);
    v13 = *(a1 + 400) == v12 ? 0 : *(v12 - 8);
    if (sub_275CAB718(a1, [v13 operatorCore]) && ((*(**(v6 + 88) + 128))(*(v6 + 88), v10, v6 + 8) & 1) == 0)
    {
      [(EQKitStringBox *)v9 depth];
      v15 = v14;
      [(EQKitStringBox *)v9 height];
      v17 = v16;
      [(EQKitStringBox *)v9 depth];
      v19 = v15 + (v17 + v18) * -0.5;
      if ((*(v6 + 120) & 2) != 0)
      {
        v20 = *(v6 + 136);
      }

      else
      {
        v20 = sub_275CB80E8(v6);
      }

      v11 = v19 + v20;
    }
  }

  v21 = v11 + sub_275CAB7D4(a1, 3, v10, 0.0);
  if (v21 == 0.0)
  {
    v22 = v9;
  }

  else
  {
    v22 = [[EQKitVShift alloc] initWithBox:v9 offset:v21];
  }

  sub_275C93F10(a3, v22);
  v23 = *(a1 + 408);
  if (*(a1 + 400) == v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(v23 - 8);
  }

  v25 = [v24 operatorCore];
  v26 = [*(a1 + 608) operatorDictionary];
  v27 = [v25 operatorId];
  v28 = sub_275CA3338(a1, v25);
  v29 = sub_275CC8220(v26, v27, v28);
  if (v29 && (v29[6] & 0x40) != 0)
  {
    [(EQKitVShift *)v22 width];
    sub_275C93D90(v33, v22, v30 * 0.5);
    sub_275C94168(a3, 1, v33);
    sub_275C93E08(v33);
  }

  if ((*(**(v6 + 88) + 112))(*(v6 + 88), v10, v6 + 8))
  {
    v31 = 5;
  }

  else
  {
    v31 = 2;
  }

  return sub_275C940CC(a3, v31);
}

void sub_275CA7444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  sub_275C93E08(&a9);
  sub_275C93FE4(v9);
  _Unwind_Resume(a1);
}

void sub_275CA7470(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[37];
  if (v4)
  {
    v5 = (*(a1[33] + 8 * ((v4 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v4 + a1[36] - 1) % 0x1AuLL));
  }

  else
  {
    v5 = a1 + 7;
  }

  v6 = v5[11];
  v7 = [sub_275CC75B8(a2) schemataTokenString];
  v8 = (*(*v6 + 72))(v6, v7, v5 + 1);
  v9 = [[EQKitStringBox alloc] initWithAttributedString:v8 cgColor:v5[14]];
  v10 = sub_275C93F10(a3, v9);
  sub_275C940CC(v10, 5);
  v11 = *(v5 + 5);
  v12 = v11 > 0xD;
  v13 = (1 << v11) & 0x3018;
  if (!v12 && v13 != 0)
  {
    *(a3 + 32) = *(a3 + 32) & 0xFF3F | 0x80;
  }
}

void sub_275CA75A4(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a1[37];
  if (v5)
  {
    v6 = (*(a1[33] + 8 * ((v5 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v5 + a1[36] - 1) % 0x1AuLL));
  }

  else
  {
    v6 = a1 + 7;
  }

  v7 = v6[11];
  v8 = [sub_275CC75B8(a2) schemataTokenString];
  v9 = (*(*v7 + 72))(v7, v8, v6 + 1);
  v10 = [[EQKitStringBox alloc] initWithAttributedString:v9 cgColor:v6[14]];
  v11 = sub_275C93F10(a3, v10);
  sub_275C940CC(v11, 5);
  sub_275CAB9AC(a1, v10);
  sub_275C93D90(v13, v10, v12);
  sub_275C94168(a3, 2, v13);
  sub_275C93E08(v13);
}

void sub_275CA76D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  sub_275C93E08(&a9);
  sub_275C93FE4(v9);
  _Unwind_Resume(a1);
}

void sub_275CA76F8(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, id *a5@<X8>)
{
  v7 = sub_275CC7484(a2);
  v8 = [v7 schemataBase];
  v9 = [v7 schemataUnder];
  v10 = [v7 schemataOver];
  v11 = *(a1 + 296);
  if (v11)
  {
    v12 = *(*(a1 + 264) + 8 * ((v11 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v11 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v12 = a1 + 56;
  }

  sub_275C93F10(a5, 0);
  if ((*(v12 + 16) & 1) == 0 && sub_275CABD5C(a1, v8))
  {
    sub_275CAC5E0(a1, v8, v9, v10, &v144);
    sub_275C93FE8(a5, &v144);
    sub_275C93FE4(&v144);
    v13 = 0.0;
    goto LABEL_186;
  }

  LODWORD(v142[0]) = 0;
  LODWORD(v141[0]) = 0;
  if (v9)
  {
    v14 = *(a1 + 616);
    v144 = v9;
    LODWORD(v145) = 5;
    if ((sub_275C8D3A8(v14, v14 + 8, &v144, v142) & 1) == 0)
    {
      v15 = *(a1 + 616);
      v16 = *(a1 + 408);
      if (*(a1 + 400) == v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(v16 - 8);
      }

      v144 = v17;
      LODWORD(v145) = 6;
      sub_275C8D3A8(v15, v15 + 8, &v144, v142);
    }
  }

  if (v10)
  {
    v18 = *(a1 + 616);
    v144 = v10;
    LODWORD(v145) = 5;
    if ((sub_275C8D3A8(v18, v18 + 8, &v144, v141) & 1) == 0)
    {
      v19 = *(a1 + 616);
      v20 = *(a1 + 408);
      if (*(a1 + 400) == v20)
      {
        v21 = 0;
      }

      else
      {
        v21 = *(v20 - 8);
      }

      v144 = v21;
      LODWORD(v145) = 5;
      sub_275C8D3A8(v19, v19 + 8, &v144, v141);
    }
  }

  if (LODWORD(v142[0]))
  {
    v112 = LODWORD(v142[0]) == 2;
  }

  else
  {
    v112 = sub_275CABE24(a1, v9);
  }

  if (LODWORD(v141[0]))
  {
    v22 = LODWORD(v141[0]) == 2;
  }

  else
  {
    v22 = sub_275CABE24(a1, v10);
  }

  v165[0] = 2;
  v23 = *(a1 + 616);
  v24 = *(a1 + 408);
  if (*(a1 + 400) == v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v24 - 8);
  }

  v144 = v25;
  LODWORD(v145) = 1;
  sub_275C8D3A8(v23, v23 + 128, &v144, v165);
  if ([v8 isEmbellishedOperator])
  {
    v26 = sub_275CABEA8(a1, [v8 operatorCore]);
  }

  else
  {
    v26 = 0;
  }

  if ([v9 isEmbellishedOperator])
  {
    v27 = sub_275CABEA8(a1, [v9 operatorCore]);
  }

  else
  {
    v27 = 0;
  }

  if ([v10 isEmbellishedOperator])
  {
    v28 = sub_275CABEA8(a1, [v10 operatorCore]);
    if (!v26)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v28 = 0;
    if (!v26)
    {
      goto LABEL_42;
    }
  }

  v144 = v8;
  v26 = !v8 || (v29 = sub_275CB01C0((a1 + 472), &v144)) == 0 || *(v29 + 8) != 2;
LABEL_42:
  v161 = 0;
  v162 = &v161;
  v163 = 0x2020000000;
  v164 = 0;
  v157 = 0;
  v158 = &v157;
  v159 = 0x2020000000;
  v160 = 0;
  v144 = 0;
  v145 = &v144;
  v146 = 0x5812000000;
  v147 = sub_275CADBF8;
  v148 = sub_275CADC04;
  v149 = "";
  v150 = 0;
  v151 = 1;
  v152 = 0;
  v153 = 1;
  v154 = 0x4028000000000000;
  v155 = 0;
  v156 = 0;
  sub_275C93F10(v142, 0);
  if (v8)
  {
    v30 = v26;
  }

  else
  {
    v30 = 1;
  }

  v31 = 0.0;
  if ((v30 & 1) == 0)
  {
    v140[0] = MEMORY[0x277D85DD0];
    v140[1] = 3221225472;
    v140[2] = sub_275CADC0C;
    v140[3] = &unk_27A677438;
    v140[8] = a1;
    v140[4] = v8;
    v140[5] = &v161;
    v140[6] = &v144;
    v140[7] = &v157;
    sub_275CA3EF0(a1, v8, v140, v141);
    sub_275C93FE8(v142, v141);
    sub_275C93FE4(v141);
    [v142[0] width];
    if (v32 >= 0.0)
    {
      [v142[0] width];
      v31 = v33;
    }
  }

  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v139 = 0;
  sub_275C93F10(v141, 0);
  if (!((v9 == 0) | v27 & 1))
  {
    v133[0] = MEMORY[0x277D85DD0];
    v133[1] = 3221225472;
    v133[2] = sub_275CADD60;
    v133[3] = &unk_27A677460;
    v134 = v112;
    v133[4] = v9;
    v133[5] = &v136;
    sub_275CA3F54(a1, v9, v112 ^ 1, 0, 2, 0, v133, v135);
    sub_275C93FE8(v141, v135);
    sub_275C93FE4(v135);
    [v141[0] width];
    if (v31 <= v34)
    {
      [v141[0] width];
      v31 = v35;
    }
  }

  v129 = 0;
  v130 = &v129;
  v131 = 0x2020000000;
  v132 = 0;
  v125 = 0;
  v126 = &v125;
  v127 = 0x2020000000;
  v128 = 0;
  sub_275C93F10(v135, 0);
  if (!((v10 == 0) | v28 & 1))
  {
    v122[0] = MEMORY[0x277D85DD0];
    v122[1] = 3221225472;
    v122[2] = sub_275CADDB8;
    v122[3] = &unk_27A677488;
    v123 = v22;
    v122[4] = v10;
    v122[5] = &v129;
    v122[6] = &v125;
    v122[7] = a1;
    sub_275CA3F54(a1, v10, v22 ^ 1, 0, 2, 0, v122, v124);
    sub_275C93FE8(v135, v124);
    sub_275C93FE4(v124);
    [v135[0] width];
    if (v31 <= v36)
    {
      [v135[0] width];
      v31 = v37;
    }
  }

  if (v26)
  {
    sub_275CA4D18(a1, [v8 operatorCore], 0, v31);
    v121[0] = MEMORY[0x277D85DD0];
    v121[1] = 3221225472;
    v121[2] = sub_275CADE74;
    v121[3] = &unk_27A677438;
    v121[4] = v8;
    v121[5] = &v161;
    v121[6] = &v144;
    v121[7] = &v157;
    v121[8] = a1;
    sub_275CA3EF0(a1, v8, v121, v124);
    sub_275C93FE8(v142, v124);
    sub_275C93FE4(v124);
  }

  if (v27)
  {
    sub_275CA4D18(a1, [v9 operatorCore], 0, v31);
    v119[0] = MEMORY[0x277D85DD0];
    v119[1] = 3221225472;
    v119[2] = sub_275CADF4C;
    v119[3] = &unk_27A677460;
    v120 = v112;
    v119[4] = v9;
    v119[5] = &v136;
    sub_275CA3F54(a1, v9, v112 ^ 1, 0, 2, 0, v119, v124);
    sub_275C93FE8(v141, v124);
    sub_275C93FE4(v124);
  }

  if (v28)
  {
    if (![objc_msgSend(v10 "operatorCore")])
    {
      v31 = v31 + *(a1 + 8) / -12.0;
    }

    sub_275CA4D18(a1, [v10 operatorCore], 0, v31);
    v117[0] = MEMORY[0x277D85DD0];
    v117[1] = 3221225472;
    v117[2] = sub_275CADFA4;
    v117[3] = &unk_27A677488;
    v118 = v22;
    v117[4] = v10;
    v117[5] = &v129;
    v117[6] = &v125;
    v117[7] = a1;
    sub_275CA3F54(a1, v10, v22 ^ 1, 0, 2, 0, v117, v124);
    sub_275C93FE8(v135, v124);
    sub_275C93FE4(v124);
  }

  [v142[0] width];
  v39 = v38;
  if (v135[0])
  {
    [v135[0] width];
    if (v40 <= v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = v40;
    }

    if (v22)
    {
      v42 = v39;
    }

    else
    {
      v42 = v41;
    }
  }

  else
  {
    v42 = v38;
    v41 = v38;
  }

  if (v141[0])
  {
    [v141[0] width];
    if (v43 > v41)
    {
      v41 = v43;
    }

    if (v43 <= v42)
    {
      v43 = v42;
    }

    if (!v112)
    {
      v42 = v43;
    }
  }

  v13 = 0.0;
  if (v39 < v42)
  {
    v44 = sub_275C9B058([*(a1 + 608) fontManager]);
    v46 = *(a1 + 296);
    if (v46)
    {
      v47 = *(*(a1 + 264) + 8 * ((v46 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v46 + *(a1 + 288) - 1) % 0x1AuLL);
      v48 = v47 + 8;
    }

    else
    {
      v48 = a1 + 64;
      v47 = a1 + 56;
    }

    if (*(v47 + 120))
    {
      v45.n128_u64[0] = *(v47 + 128);
    }

    else
    {
      v45.n128_f64[0] = sub_275CB80C0(v47);
    }

    v13 = (*(*v44 + 40))(v44, 27, v48, v45);
  }

  v49 = v135[0];
  v50 = v141[0];
  [v142[0] erasableBounds];
  MidX = CGRectGetMidX(v166);
  sub_275C93F58(v116, v142);
  sub_275CA4FB8(v116, v165[0], 0, v124, v41, 0.0);
  sub_275C93FE8(v142, v124);
  v52 = (v41 - v39) * 0.5 + MidX;
  sub_275C93FE4(v124);
  sub_275C93FE4(v116);
  v54 = 0.0;
  v55 = 0.0;
  if (v49)
  {
    if (v22)
    {
      if (*(v130 + 24) == 1)
      {
        [v49 depth];
        if (v56.n128_f64[0] >= 0.0)
        {
          v69 = *(v12 + 88);
          if (*(v12 + 120))
          {
            v56.n128_u64[0] = *(v12 + 128);
          }

          else
          {
            v56.n128_f64[0] = sub_275CB80C0(v12);
          }

          v73 = -(*(*v69 + 40))(v69, 11, v12 + 8, v56);
        }

        else
        {
          v57 = v126[3];
          [v49 depth];
          v59 = v58.n128_f64[0];
          v60 = *(v12 + 88);
          if (*(v12 + 120))
          {
            v58.n128_u64[0] = *(v12 + 128);
          }

          else
          {
            v58.n128_f64[0] = sub_275CB80C0(v12);
          }

          if (v57 >= -v59 - (*(*v60 + 40))(v60, 11, v12 + 8, v58))
          {
            [v49 depth];
            v75 = v74.n128_f64[0];
            v76 = *(v12 + 88);
            if (*(v12 + 120))
            {
              v74.n128_u64[0] = *(v12 + 128);
            }

            else
            {
              v74.n128_f64[0] = sub_275CB80C0(v12);
            }

            v73 = -v75 - (*(*v76 + 40))(v76, 11, v12 + 8, v74);
          }

          else
          {
            v73 = v126[3];
          }
        }

        [v142[0] height];
        if (v73 >= v77)
        {
          [v142[0] height];
          v73 = v78;
        }

        v55 = -v73;
      }

      else
      {
        v62 = *(v12 + 88);
        if (*(v12 + 120))
        {
          v53.n128_u64[0] = *(v12 + 128);
        }

        else
        {
          v53.n128_f64[0] = sub_275CB80C0(v12);
        }

        v55 = (*(*v62 + 40))(v62, 11, v12 + 8, v53);
      }

      if (*(v158 + 24) == 1)
      {
        v79 = sub_275C9B058([*(a1 + 608) fontManager]);
        v80 = v52 + (*(*v79 + 176))(v79, *(v162 + 6), v145 + 6);
        v71 = 1;
LABEL_128:
        sub_275C93F58(v115, v135);
        sub_275CA4FB8(v115, v165[0], v71, v124, v41, v80);
        sub_275C93FE8(v135, v124);
        sub_275C93FE4(v124);
        sub_275C93FE4(v115);
        goto LABEL_129;
      }
    }

    else
    {
      v61 = *(v12 + 88);
      if (*(v12 + 120))
      {
        v53.n128_u64[0] = *(v12 + 128);
      }

      else
      {
        v53.n128_f64[0] = sub_275CB80C0(v12);
      }

      v64 = (*(*v61 + 40))(v61, 11, v12 + 8, v53);
      v65 = *(v12 + 88);
      if (*(v12 + 120))
      {
        v63.n128_u64[0] = *(v12 + 128);
      }

      else
      {
        v63.n128_f64[0] = sub_275CB80C0(v12);
      }

      v66 = (*(*v65 + 40))(v65, 12, v12 + 8, v63);
      [v49 layoutDepth];
      v68 = *(v12 + 88);
      if (v64 <= v66 - v67.n128_f64[0])
      {
        if (*(v12 + 120))
        {
          v67.n128_u64[0] = *(v12 + 128);
        }

        else
        {
          v67.n128_f64[0] = sub_275CB80C0(v12);
        }

        v70 = (*(*v68 + 40))(v68, 12, v12 + 8, v67);
        [v49 layoutDepth];
        v71 = 0;
        v55 = v70 - v72;
        goto LABEL_127;
      }

      if (*(v12 + 120))
      {
        v67.n128_u64[0] = *(v12 + 128);
      }

      else
      {
        v67.n128_f64[0] = sub_275CB80C0(v12);
      }

      v55 = (*(*v68 + 40))(v68, 11, v12 + 8, v67);
    }

    v71 = 0;
LABEL_127:
    v80 = v52;
    goto LABEL_128;
  }

LABEL_129:
  if (v50)
  {
    if (!v112)
    {
      v82 = *(v12 + 88);
      if (*(v12 + 120))
      {
        v53.n128_u64[0] = *(v12 + 128);
      }

      else
      {
        v53.n128_f64[0] = sub_275CB80C0(v12);
      }

      v84 = (*(*v82 + 40))(v82, 13, v12 + 8, v53);
      v85 = *(v12 + 88);
      if (*(v12 + 120))
      {
        v83.n128_u64[0] = *(v12 + 128);
      }

      else
      {
        v83.n128_f64[0] = sub_275CB80C0(v12);
      }

      v86 = (*(*v85 + 40))(v85, 14, v12 + 8, v83);
      [v50 layoutHeight];
      v88 = *(v12 + 88);
      if (v84 <= v86 - v87.n128_f64[0])
      {
        if (*(v12 + 120))
        {
          v87.n128_u64[0] = *(v12 + 128);
        }

        else
        {
          v87.n128_f64[0] = sub_275CB80C0(v12);
        }

        v92 = (*(*v88 + 40))(v88, 14, v12 + 8, v87);
        [v50 layoutHeight];
        v93 = 0;
        v54 = v92 - v94;
        goto LABEL_161;
      }

      if (*(v12 + 120))
      {
        v87.n128_u64[0] = *(v12 + 128);
      }

      else
      {
        v87.n128_f64[0] = sub_275CB80C0(v12);
      }

      v54 = (*(*v88 + 40))(v88, 13, v12 + 8, v87);
      goto LABEL_160;
    }

    if (*(v137 + 24) == 1)
    {
      [v50 height];
      if (v53.n128_f64[0] <= 0.0)
      {
        [v50 height];
        v90 = v89.n128_f64[0];
        v91 = *(v12 + 88);
        if (*(v12 + 120))
        {
          v89.n128_u64[0] = *(v12 + 128);
        }

        else
        {
          v89.n128_f64[0] = sub_275CB80C0(v12);
        }

        v54 = v90 + (*(*v91 + 40))(v91, 13, v12 + 8, v89);
LABEL_158:
        if (*(v158 + 24) == 1)
        {
          v95 = sub_275C9B058([*(a1 + 608) fontManager]);
          v52 = v52 + (*(*v95 + 184))(v95, *(v162 + 6), v145 + 6);
          v93 = 1;
LABEL_161:
          sub_275C93F58(v114, v141);
          sub_275CA4FB8(v114, v165[0], v93, v124, v41, v52);
          sub_275C93FE8(v141, v124);
          sub_275C93FE4(v124);
          sub_275C93FE4(v114);
          goto LABEL_162;
        }

LABEL_160:
        v93 = 0;
        goto LABEL_161;
      }

      v81 = *(v12 + 88);
      if ((*(v12 + 120) & 1) == 0)
      {
        goto LABEL_148;
      }
    }

    else
    {
      v81 = *(v12 + 88);
      if ((*(v12 + 120) & 1) == 0)
      {
LABEL_148:
        v53.n128_f64[0] = sub_275CB80C0(v12);
        goto LABEL_149;
      }
    }

    v53.n128_u64[0] = *(v12 + 128);
LABEL_149:
    v54 = (*(*v81 + 40))(v81, 13, v12 + 8, v53);
    goto LABEL_158;
  }

LABEL_162:
  v96 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v97 = v96;
  if (v135[0])
  {
    [v96 addObject:?];
    if (v55 != 0.0)
    {
      v98 = [[EQKitVSpace alloc] initWithHeight:v55 depth:0.0];
      [v97 addObject:v98];
    }
  }

  v99 = [v97 count];
  if (v142[0])
  {
    [v97 addObject:?];
  }

  v100 = v141[0];
  if (v141[0])
  {
    if (v54 != 0.0)
    {
      v101 = [[EQKitVSpace alloc] initWithHeight:v54 depth:0.0];
      [v97 addObject:v101];

      v100 = v141[0];
    }

    [v97 addObject:v100];
  }

  v102 = [[EQKitVBox alloc] initWithChildBoxes:v97 pivotIndex:v99];
  sub_275C93FE8(a5, v142);
  if (v8)
  {
    v103 = 1;
    if ((v143 & 0x1C00u) <= 0x1000 || !((v9 == 0) | v112 & 1))
    {
      goto LABEL_181;
    }

    goto LABEL_178;
  }

  if (!v9 || v112)
  {
LABEL_178:
    if ((v10 == 0) | v22 & 1)
    {
      v103 = 4;
    }

    else
    {
      v103 = 1;
    }

    goto LABEL_181;
  }

  v103 = 1;
LABEL_181:
  sub_275C940CC(a5, v103);
  sub_275C9404C(a5, v102);

  if (v10 && (v158[3] & 1) != 0 && v22)
  {
    sub_275C9408C(a5, 1);
  }

  sub_275C93FE4(v135);
  _Block_object_dispose(&v125, 8);
  _Block_object_dispose(&v129, 8);
  sub_275C93FE4(v141);
  _Block_object_dispose(&v136, 8);
  sub_275C93FE4(v142);
  _Block_object_dispose(&v144, 8);
  sub_275CAEAD0(&v150);
  _Block_object_dispose(&v157, 8);
  _Block_object_dispose(&v161, 8);
LABEL_186:
  if (a3)
  {
    v104 = [a4 operatorCore];
    if (v104)
    {
      v105 = sub_275CA31A0(a1, v104);
      v106 = sub_275CA3514(a1, v104);
      if (v13 <= v105)
      {
        v107 = v105;
      }

      else
      {
        v107 = v13;
      }

      if (v13 <= v106)
      {
        v13 = v106;
      }
    }

    else
    {
      v107 = v13;
    }

    sub_275CA471C(a1, v107);
    sub_275C93F58(v113, a5);
    v108 = *(a1 + 408);
    if (*(a1 + 400) == v108)
    {
      v109 = 0;
    }

    else
    {
      v109 = *(v108 - 8);
    }

    sub_275CA45F8(a1, v113, v109);
    sub_275C93FE4(v113);
    sub_275CA4850(a1, v13);
    sub_275C93F10(&v144, 0);
    sub_275C93FE8(a5, &v144);
    sub_275C93FE4(&v144);
  }
}

uint64_t sub_275CA8C74@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_275C93F10(a3, 0);
  v9[0] = &unk_2884CB630;
  v9[1] = a1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  sub_275CB0F98(a1 + 70, v9);
  sub_275CAE2C8(v9);
  v6 = sub_275CC74A0(a2);
  if (v6)
  {
    v7 = a1[75];
    if (v7)
    {
      sub_275CD00F0(*(a1[71] + 8 * ((v7 + a1[74] - 1) / 0x2AuLL)) + 96 * ((v7 + a1[74] - 1) % 0x2AuLL), v6, v9);
      sub_275C93FE8(a3, v9);
      sub_275C93FE4(v9);
    }
  }

  return sub_275CB1258(a1 + 70);
}

void sub_275CA8D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_275C93FE4(&a9);
  sub_275C93FE4(v9);
  _Unwind_Resume(a1);
}

void *sub_275CA8DB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_275C93F10(a3, 0);
  result = sub_275CC74BC(a2);
  if (result)
  {
    v7 = a1[75];
    if (v7)
    {
      sub_275CCED4C(*(a1[71] + 8 * ((v7 + a1[74] - 1) / 0x2AuLL)) + 96 * ((v7 + a1[74] - 1) % 0x2AuLL), result, v8);
      sub_275C93FE8(a3, v8);
      return sub_275C93FE4(v8);
    }
  }

  return result;
}

void sub_275CA8E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_275C93FE4(va);
  sub_275C93FE4(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_275CA8E90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_275CC74D8(a2);
  sub_275C8B298(v8, a1, v5, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL, 0.0);
  sub_275CB0C20(a1 + 64, v8);
  sub_275C8B3A8(v8);
  v6 = a1[69] + a1[68] - 1;
  sub_275C8B3AC((*(a1[65] + 8 * (v6 / 0x18)) + 168 * (v6 % 0x18)), a3);
  return sub_275CB0EA4(a1 + 64);
}

void *sub_275CA8F60@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_275C93F10(a3, 0);
  v7 = a1[69];
  if (v7)
  {
    v8 = v7 + a1[68] - 1;
    v9 = *(a1[65] + 8 * (v8 / 0x18));
    v10 = sub_275CC74F4(a2);
    sub_275C8BA80((v9 + 168 * (v8 % 0x18)), v10, v11);
    sub_275C93FE8(a3, v11);
    return sub_275C93FE4(v11);
  }

  return result;
}

void sub_275CA9010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_275C93FE4(va);
  sub_275C93FE4(v3);
  _Unwind_Resume(a1);
}

void *sub_275CA9034@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_275C93F10(a3, 0);
  v7 = a1[69];
  if (v7)
  {
    v8 = v7 + a1[68] - 1;
    v9 = *(a1[65] + 8 * (v8 / 0x18));
    v10 = sub_275CC7510(a2);
    sub_275C8BD18((v9 + 168 * (v8 % 0x18)), v10, v11);
    sub_275C93FE8(a3, v11);
    return sub_275C93FE4(v11);
  }

  return result;
}

void sub_275CA90E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_275C93FE4(va);
  sub_275C93FE4(v3);
  _Unwind_Resume(a1);
}

void *sub_275CA9108@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_275C93F10(a3, 0);
  v7 = a1[69];
  if (v7)
  {
    v8 = v7 + a1[68] - 1;
    v9 = *(a1[65] + 8 * (v8 / 0x18));
    sub_275CC7564(a2);
    sub_275C8C080((v9 + 168 * (v8 % 0x18)), v10);
    sub_275C93FE8(a3, v10);
    return sub_275C93FE4(v10);
  }

  return result;
}

void sub_275CA91B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_275C93FE4(va);
  sub_275C93FE4(v3);
  _Unwind_Resume(a1);
}

void *sub_275CA91DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_275C93F10(a3, 0);
  v7 = a1[69];
  if (v7)
  {
    v8 = v7 + a1[68] - 1;
    v9 = *(a1[65] + 8 * (v8 / 0x18));
    v10 = sub_275CC7580(a2);
    sub_275C8C20C((v9 + 168 * (v8 % 0x18)), v10, v11);
    sub_275C93FE8(a3, v11);
    return sub_275C93FE4(v11);
  }

  return result;
}

void sub_275CA928C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_275C93FE4(va);
  sub_275C93FE4(v3);
  _Unwind_Resume(a1);
}

void *sub_275CA92B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_275C93F10(a3, 0);
  v7 = a1[69];
  if (v7)
  {
    v8 = v7 + a1[68] - 1;
    v9 = *(a1[65] + 8 * (v8 / 0x18));
    v10 = sub_275CC759C(a2);
    sub_275C8C934((v9 + 168 * (v8 % 0x18)), v10, v11);
    sub_275C93FE8(a3, v11);
    return sub_275C93FE4(v11);
  }

  return result;
}

void sub_275CA9360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_275C93FE4(va);
  sub_275C93FE4(v3);
  _Unwind_Resume(a1);
}

void *sub_275CA9384@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_275CC7644(a2);
  v6 = a1[37];
  if (v6)
  {
    v7 = (*(a1[33] + 8 * ((v6 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v6 + a1[36] - 1) % 0x1AuLL));
  }

  else
  {
    v7 = (a1 + 7);
  }

  v8 = CTFontCreateWithName(@"STIXGeneral-Regular", v7[3], 0);
  if (v8)
  {
    v9 = v8;
    sub_275CA3F54(a1, [v5 schemataDivisor], 0, 0, 0, 0, 0, v47);
    sub_275C98A1C(&v44, v9, 10188);
    sub_275C9A36C(&v44, 2u, v43);
    v10 = v43[6];
    v42 = 0.0;
    v11 = [v5 schemataStack];
    if (v11)
    {
      objc_msgSend_layoutSchemata(v11);
    }

    else
    {
      memset(v41, 0, sizeof(v41));
    }

    sub_275CAE1A8(a1, v41, 2, 1, &v42, v43, *&v10);
    sub_275CC6C4C(v41);
    *&v41[0] = 0;
    v13 = a1[37];
    if (v13)
    {
      v14 = (*(a1[33] + 8 * ((v13 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v13 + a1[36] - 1) % 0x1AuLL));
      v15 = v14 + 11;
    }

    else
    {
      v15 = a1 + 18;
      v14 = a1 + 7;
    }

    v16 = *v15;
    v17 = v42;
    [v43[0] width];
    v19 = (*(*v16 + 168))(v16, v14 + 1, v41, v17, v18);
    if (v19)
    {
      v20 = [EQKitPathBox alloc];
      v21 = a1[37];
      if (v21)
      {
        v22 = (*(a1[33] + 8 * ((v21 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v21 + a1[36] - 1) % 0x1AuLL));
      }

      else
      {
        v22 = a1 + 7;
      }

      v23 = [(EQKitPathBox *)v20 initWithCGPath:v19 height:v22[14] cgColor:*&v10];
      CGPathRelease(v19);
    }

    else
    {
      v23 = 0;
    }

    v24 = v42;
    [(EQKitPathBox *)v23 height];
    v26 = v25;
    v27 = [EQKitPaddedBox alloc];
    [(EQKitPathBox *)v23 height];
    v29 = v28;
    if (v46[32] == 1)
    {
      v30 = v46;
    }

    else
    {
      v30 = sub_275C98D24(&v44);
    }

    Width = CGRectGetWidth(*v30);
    [(EQKitPathBox *)v23 depth];
    v33 = [(EQKitPaddedBox *)v27 initWithBox:v23 height:v29 width:Width depth:v32 lspace:0.0 voffset:v24 - v26];
    v34 = objc_alloc(MEMORY[0x277CBEB18]);
    v35 = [v34 initWithObjects:{v47[0], v33, v43[0], 0}];
    v12 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v35];

    CFRelease(v9);
    sub_275C93FE4(v43);
    sub_275C98A80(&v44);
    sub_275C93FE4(v47);
  }

  else
  {
    v12 = 0;
  }

  LODWORD(v43[0]) = 0;
  v36 = a1[77];
  v37 = a1[51];
  if (a1[50] == v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = *(v37 - 8);
  }

  v44 = v38;
  v45 = 2;
  sub_275C8D3A8(v36, v36 + 152, &v44, v43);
  v39 = sub_275CAE060(a1, v12, v43[0]);
  return sub_275C93F10(a3, v39);
}

void sub_275CA9740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_275C93FE4(&a18);
  sub_275C98A80(va);
  sub_275C93FE4(v25 - 152);
  _Unwind_Resume(a1);
}

uint64_t sub_275CA9794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, id *a3@<X8>)
{
  v5 = *(a1 + 296);
  if (v5)
  {
    v6 = *(*(a1 + 264) + 8 * ((v5 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v5 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v6 = a1 + 56;
  }

  v7 = sub_275CC752C(a2);
  if (*(v6 + 120))
  {
    v8 = *(v6 + 128);
  }

  else
  {
    v8 = sub_275CB80C0(v6);
  }

  sub_275C93F10(v110, 0);
  if ([v7 schemataIndex])
  {
    sub_275CA3F54(a1, [v7 schemataIndex], 2, 0, 0, 0, 0, v108);
    sub_275C93FE8(v110, v108);
    sub_275C93FE4(v108);
  }

  v9 = v110[0];
  sub_275CA3F54(a1, [v7 schemataRadicand], 0, *(v6 + 16), 0, 0, 0, v108);
  v11 = v108[0];
  v12 = *(v6 + 88);
  if (*(v6 + 120))
  {
    v10.n128_u64[0] = *(v6 + 128);
  }

  else
  {
    v10.n128_f64[0] = sub_275CB80C0(v6);
  }

  v14 = (*(*v12 + 40))(v12, 17, v6 + 8, v10);
  v15 = *(v6 + 88);
  if (*(v6 + 120))
  {
    v13.n128_u64[0] = *(v6 + 128);
  }

  else
  {
    v13.n128_f64[0] = sub_275CB80C0(v6);
  }

  v16 = (*(*v15 + 40))(v15, 18, v6 + 8, v13);
  [v11 layoutVSize];
  v18 = v17;
  [v11 width];
  v20 = v19;
  v21 = sub_275C9B058([*(a1 + 608) fontManager]);
  v22 = *(a1 + 296);
  if (v22)
  {
    v23 = *(*(a1 + 264) + 8 * ((v22 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v22 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v23 = a1 + 56;
  }

  v24 = (*(*v21 + 40))(v21, 22, v23 + 8, v8);
  if (v20 < v24)
  {
    v20 = v24;
  }

  v107 = 0.0;
  v105 = 0u;
  v106 = 0u;
  v102 = *MEMORY[0x277CBF3A8];
  v103 = 0;
  v104 = 0;
  v25 = sub_275C9B058([*(a1 + 608) fontManager]);
  v27 = *(a1 + 296);
  if (v27)
  {
    v28 = *(*(a1 + 264) + 8 * ((v27 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v27 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v28 = a1 + 56;
  }

  v26.n128_f64[0] = v16 + v8 + v18 + v8 * 2.0;
  v29 = (*(*v25 + 160))(v25, v28 + 8, &v105, &v102, v26, v20, v8);
  if (v29)
  {
    v31 = [EQKitPathBox alloc];
    v32 = *(a1 + 296);
    if (v32)
    {
      v33 = *(*(a1 + 264) + 8 * ((v32 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v32 + *(a1 + 288) - 1) % 0x1AuLL);
    }

    else
    {
      v33 = a1 + 56;
    }

    v35 = [(EQKitPathBox *)v31 initWithCGPath:v29 height:*(v33 + 112) cgColor:*(&v102 + 1)];
    v36 = [EQKitPaddedBox alloc];
    [(EQKitPathBox *)v35 height];
    v38 = v37;
    [(EQKitPathBox *)v35 width];
    v40 = v39;
    v41 = v107;
    [(EQKitPathBox *)v35 depth];
    v34 = [(EQKitPaddedBox *)v36 initWithBox:v35 height:v38 width:v40 - v20 - v41 depth:v42 lspace:0.0 voffset:0.0];

    CFRelease(v29);
  }

  else
  {
    v34 = 0;
  }

  v43 = *(v6 + 88);
  if (*(v6 + 120))
  {
    v30.n128_u64[0] = *(v6 + 128);
  }

  else
  {
    v30.n128_f64[0] = sub_275CB80C0(v6);
  }

  v44 = (*(*v43 + 40))(v43, 19, v6 + 8, v30);
  [(EQKitBox *)v34 layoutHeight];
  v46 = v45;
  [v11 layoutVSize];
  v48 = v46 - v8 - v16;
  if (v48 >= v44)
  {
    v48 = v44;
  }

  if (v47 >= v48)
  {
    v49 = v47;
  }

  else
  {
    v49 = v48;
  }

  [(EQKitBox *)v34 layoutHeight];
  v51 = v50;
  [v11 layoutVSize];
  v53 = v52;
  v54 = v51 - v8 - (v16 + v49);
  if (v54 > 0.0)
  {
    v16 = v16 + v54 * 0.5;
  }

  v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v56 = [[EQKitVSpace alloc] initWithHeight:v8 depth:0.0];
  [v55 addObject:v56];

  v57 = [[EQKitVSpace alloc] initWithHeight:v16 + v49 - v53 depth:0.0];
  [v55 addObject:v57];

  [v11 width];
  [v55 addObject:{-[EQKitCompoundBox initWithChildBoxes:]([EQKitHBox alloc], "initWithChildBoxes:", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", -[EQKitHSpace initWithWidth:]([EQKitHSpace alloc], "initWithWidth:", v14 + (v20 - v58) * 0.5), v11, -[EQKitHSpace initWithWidth:]([EQKitHSpace alloc], "initWithWidth:", v14 + (v20 - v58) * 0.5), 0))}];
  v59 = -[EQKitVBox initWithChildBoxes:pivotIndex:]([EQKitVBox alloc], "initWithChildBoxes:pivotIndex:", v55, [v55 count] - 1);
  v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(EQKitPaddedBox *)v34 width];
  v62 = v61;
  if (v9)
  {
    if (**(a1 + 48) == 3 || (v63 = *(&v105 + 1), [v9 width], v65 = v64, v66 = *&v106, objc_msgSend(v9, "width"), v67 = v63 + v65 * -0.5, v67 >= v66 - v68))
    {
      v69 = *&v106;
      [v9 width];
      v67 = v69 - v70;
    }

    v71 = *&v105;
    v72 = sub_275C9B058([*(a1 + 608) fontManager]);
    v73 = *(a1 + 296);
    if (v73)
    {
      v74 = *(*(a1 + 264) + 8 * ((v73 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v73 + *(a1 + 288) - 1) % 0x1AuLL);
    }

    else
    {
      v74 = a1 + 56;
    }

    v75 = (*(*v72 + 40))(v72, 20, v74 + 8, v8);
    v76 = sub_275C9B058([*(a1 + 608) fontManager]);
    v77 = *(a1 + 296);
    if (v77)
    {
      v78 = *(*(a1 + 264) + 8 * ((v77 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v77 + *(a1 + 288) - 1) % 0x1AuLL);
    }

    else
    {
      v78 = a1 + 56;
    }

    v79 = (*(*v76 + 40))(v76, 21, v78 + 8, v8);
    [v9 layoutDepth];
    if (v75 <= v79 + v80)
    {
      [v9 layoutDepth];
      v75 = v79 + v81;
    }

    v82 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v9 width];
    if (v62 <= v67 + v83)
    {
      [v9 width];
      v62 = v67 + v84;
    }

    if (v67 < 0.0)
    {
      v62 = v62 - v67;
    }

    if (v67 > 0.0)
    {
      [v82 addObject:{-[EQKitHSpace initWithWidth:]([EQKitHSpace alloc], "initWithWidth:", v67)}];
    }

    [v82 addObject:v9];
    [v60 addObject:{-[EQKitCompoundBox initWithChildBoxes:]([EQKitHBox alloc], "initWithChildBoxes:", v82)}];
    v85 = [EQKitVSpace alloc];
    [v9 layoutDepth];
    v87 = v86;
    [(EQKitBox *)v34 layoutHeight];
    [v60 addObject:{-[EQKitVSpace initWithHeight:depth:](v85, "initWithHeight:depth:", v71 + v75 - v87 - v88, 0.0)}];
  }

  [(EQKitPaddedBox *)v34 width];
  if (v89 >= v62)
  {
    if (v34)
    {
      [v60 addObject:v34];
    }
  }

  else
  {
    v90 = MEMORY[0x277CBEA60];
    v91 = [EQKitHSpace alloc];
    [(EQKitPaddedBox *)v34 width];
    [v60 addObject:{-[EQKitCompoundBox initWithChildBoxes:]([EQKitHBox alloc], "initWithChildBoxes:", objc_msgSend(v90, "arrayWithObjects:", -[EQKitHSpace initWithWidth:](v91, "initWithWidth:", v62 - v92), v34, 0))}];
  }

  [(EQKitCompoundBox *)v59 height];
  v94 = v93;
  [(EQKitPaddedBox *)v34 height];
  v96 = -[EQKitOffsetVBox initWithChildBoxes:pivotIndex:offset:]([EQKitOffsetVBox alloc], "initWithChildBoxes:pivotIndex:offset:", v60, [v60 count] - 1, v94 - v8 - v95);
  v97 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v97 addObject:v96];
  [v97 addObject:{-[EQKitHSpace initWithWidth:]([EQKitHSpace alloc], "initWithWidth:", -v14)}];
  [v97 addObject:v59];
  if (v107 != 0.0)
  {
    v98 = [EQKitHSpace alloc];
    [v97 addObject:{-[EQKitHSpace initWithWidth:](v98, "initWithWidth:", v107)}];
  }

  sub_275C93F58(a3, v108);
  v99 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v97];
  sub_275C9404C(a3, v99);

  sub_275C941E0(a3, 1);
  if (![v7 schemataIndex] || (v111 & 0x1000) != 0)
  {
    if ((v109 & 0x1C00u) <= 0x1000)
    {
      v100 = 0;
    }

    else
    {
      v100 = 3;
    }
  }

  else
  {
    v100 = 0;
  }

  sub_275C940CC(a3, v100);
  sub_275C93FE4(v108);
  return sub_275C93FE4(v110);
}

void sub_275CAA208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_275C93FE4(&a24);
  sub_275C93FE4(va);
  _Unwind_Resume(a1);
}

void *sub_275CAA2BC@<X0>(void *a1@<X8>)
{
  v2 = [[EQKitHVSpace alloc] initWithWidth:0.0 height:0.0 depth:0.0];

  return sub_275C93F10(a1, v2);
}

uint64_t sub_275CAA314@<X0>(void *a1@<X0>, uint64_t a2@<X1>, id *a3@<X8>)
{
  v5 = [sub_275CC7660(a2) schemataNode];
  sub_275CA3EF0(a1, v5, 0, v60);
  [v60[0] layoutHeight];
  v7 = v6;
  [v60[0] layoutDepth];
  v9 = v8;
  [v60[0] width];
  v11 = v10;
  v12 = a1[37];
  if (v12)
  {
    v13 = (*(a1[33] + 8 * ((v12 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v12 + a1[36] - 1) % 0x1AuLL));
  }

  else
  {
    v13 = a1 + 7;
  }

  LODWORD(v57) = 1;
  v58 = 0;
  v59 = 0;
  v14 = a1[77];
  v15 = a1[51];
  if (a1[50] == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v15 - 8);
  }

  v54 = v16;
  LODWORD(v55) = 29;
  sub_275CAEB04(v14, v14 + 464, &v54, &v57);
  v17.n128_f64[0] = v7;
  v18 = sub_275CB70EC(&v57, v13, v17, v7, v9, v11);
  LODWORD(v54) = 1;
  v55 = 0;
  v56 = 0;
  v19 = a1[77];
  v20 = a1[51];
  if (a1[50] == v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(v20 - 8);
  }

  v51 = v21;
  LODWORD(v52) = 30;
  sub_275CAEB04(v19, v19 + 464, &v51, &v54);
  v22.n128_f64[0] = v9;
  v23 = sub_275CB70EC(&v54, v13, v22, v7, v9, v11);
  LODWORD(v51) = 1;
  v52 = 0;
  v53 = 0;
  v24 = a1[77];
  v25 = a1[51];
  if (a1[50] == v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(v25 - 8);
  }

  v48 = v26;
  LODWORD(v49) = 31;
  sub_275CAEB04(v24, v24 + 464, &v48, &v51);
  v27.n128_f64[0] = v11;
  v28 = sub_275CB70EC(&v51, v13, v27, v7, v9, v11);
  LODWORD(v48) = 1;
  v49 = 0;
  v50 = 0;
  v29 = a1[77];
  v30 = a1[51];
  if (a1[50] == v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = *(v30 - 8);
  }

  v45 = v31;
  LODWORD(v46) = 32;
  sub_275CAEB04(v29, v29 + 464, &v45, &v48);
  v32.n128_u64[0] = 0;
  v33 = sub_275CB70EC(&v48, v13, v32, v7, v9, v11);
  LODWORD(v45) = 1;
  v46 = 0;
  v47 = 0;
  v34 = a1[77];
  v35 = a1[51];
  if (a1[50] == v35)
  {
    v36 = 0;
  }

  else
  {
    v36 = *(v35 - 8);
  }

  v62 = v36;
  v63 = 33;
  sub_275CAEB04(v34, v34 + 464, &v62, &v45);
  v37.n128_u64[0] = 0;
  v38 = sub_275CB70EC(&v45, v13, v37, v7, v9, v11);
  v39 = [EQKitPaddedBox alloc];
  v40 = fmax(v18, 0.0);
  v41 = fmax(v23, 0.0);
  v42 = [(EQKitPaddedBox *)v39 initWithBox:v60[0] height:v40 width:fmax(v28 depth:0.0) lspace:v41 voffset:v33, v38, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59];
  sub_275C93F58(a3, v60);
  sub_275C9404C(a3, v42);
  if (v40 == v7 && v41 == v9 && v38 == 0.0)
  {
    v43 = (v61 >> 10) & 7;
  }

  else
  {
    LOBYTE(v43) = 0;
  }

  sub_275C940CC(a3, v43);

  return sub_275C93FE4(v60);
}

void sub_275CAA680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  sub_275C93FE4(v23);
  sub_275C93FE4(va);
  _Unwind_Resume(a1);
}

void sub_275CAA6DC(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[51];
  if (a1[50] == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v4 - 8);
  }

  v6 = sub_275CA3458(a1, 26, v5, 0.0);
  v7 = a1[51];
  if (a1[50] == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v7 - 8);
  }

  v9 = sub_275CA3458(a1, 27, v8, 0.0);
  v10 = a1[51];
  if (a1[50] == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v10 - 8);
  }

  v12 = [[EQKitHVSpace alloc] initWithWidth:sub_275CA3458(a1 height:28 depth:v11, 0.0), v6, v9];
  v13 = sub_275C93F10(a2, v12);
  sub_275C940AC(v13, 1);
  if (v9 == 0.0 && v6 == 0.0)
  {
    v15 = 6;
  }

  else
  {
    v15 = 0;
  }

  sub_275C940CC(a2, v15);
}

void sub_275CAA7FC(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v56 = a3;
  v78 = *MEMORY[0x277D85DE8];
  obj = [sub_275CC767C(a2) schemataChildren];
  v3 = [obj count];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  sub_275CA6274(&v71, "(");
  sub_275CA6274(&v70, ")");
  v67 = 0;
  v68 = 0;
  v69 = 0;
  sub_275CA6274(__p, ",");
  v5 = v68;
  if (v68 >= v69)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v68 - v67) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_275C8D77C();
    }

    if (0x5555555555555556 * ((v69 - v67) >> 3) > v8)
    {
      v8 = 0x5555555555555556 * ((v69 - v67) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v69 - v67) >> 3) >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    v76 = &v67;
    if (v9)
    {
      sub_275C97C94(&v67, v9);
    }

    v10 = 8 * ((v68 - v67) >> 3);
    v11 = *__p;
    *(v10 + 16) = v66;
    *v10 = v11;
    __p[1] = 0;
    v66 = 0;
    __p[0] = 0;
    v12 = (24 * v7 - (v68 - v67));
    memcpy(v12, v67, v68 - v67);
    v13 = v67;
    v14 = v69;
    v67 = v12;
    v68 = (24 * v7 + 24);
    v69 = 0;
    v74 = v13;
    v75 = v14;
    v72 = v13;
    v73 = v13;
    sub_275C97CEC(&v72);
    v68 = (24 * v7 + 24);
    if (SHIBYTE(v66) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = *__p;
    *(v68 + 2) = v66;
    *v5 = v6;
    v68 = v5 + 24;
  }

  v15 = a1[77];
  v16 = a1[51];
  if (a1[50] == v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v16 - 1);
  }

  v72 = v17;
  LODWORD(v73) = 18;
  sub_275CAE8C8(v15, v15 + 80, &v72, &v71);
  v18 = a1[77];
  v19 = a1[51];
  if (a1[50] == v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(v19 - 1);
  }

  v72 = v20;
  LODWORD(v73) = 19;
  sub_275CAE8C8(v18, v18 + 80, &v72, &v70);
  v21 = a1[77];
  v22 = a1[51];
  if (a1[50] == v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(v22 - 1);
  }

  v72 = v23;
  LODWORD(v73) = 20;
  sub_275CAEBE0(v21, v21 + 104, &v72, &v67);
  v25 = v67;
  v24 = v68;
  size = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v71.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v27 = objc_alloc(MEMORY[0x277CCACA8]);
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v71;
    }

    else
    {
      v28 = v71.__r_.__value_.__r.__words[0];
    }

    v29 = [v27 initWithUTF8String:{v28, v56}];
    v30 = [[EQKitMathMLMOperator alloc] initWithString:v29 environment:a1[76]];
    v31 = v30;
    v32 = a1[51];
    if (a1[50] == v32)
    {
      v33 = 0;
    }

    else
    {
      v33 = *(v32 - 1);
    }

    [(EQKitMathMLNode *)v30 setParent:v33];
    [v4 addObject:v31];
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v34 = [obj countByEnumeratingWithState:&v61 objects:v77 count:{16, v56}];
  if (v34)
  {
    v35 = 0;
    v58 = v24 - v25;
    v36 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v25) >> 3);
    v37 = *v62;
    do
    {
      v38 = 0;
      v39 = 24 * v35;
      do
      {
        v40 = v35;
        if (*v62 != v37)
        {
          objc_enumerationMutation(obj);
        }

        [v4 addObject:*(*(&v61 + 1) + 8 * v38)];
        ++v35;
        if (v40 + 1 < v3 && v68 != v67)
        {
          if (v40 >= v36)
          {
            v41 = &v67[v58 - 24];
          }

          else
          {
            v41 = &v67[v39];
          }

          if ((v41[23] & 0x8000000000000000) != 0)
          {
            if (!*(v41 + 1))
            {
              goto LABEL_52;
            }
          }

          else if (!v41[23])
          {
            goto LABEL_52;
          }

          v42 = objc_alloc(MEMORY[0x277CCACA8]);
          if (v41[23] < 0)
          {
            v41 = *v41;
          }

          v43 = [v42 initWithUTF8String:v41];
          v44 = [[EQKitMathMLMOperator alloc] initWithString:v43 environment:a1[76]];
          v45 = v44;
          v46 = a1[51];
          if (a1[50] == v46)
          {
            v47 = 0;
          }

          else
          {
            v47 = *(v46 - 1);
          }

          [(EQKitMathMLNode *)v44 setParent:v47];
          [v4 addObject:v45];
        }

LABEL_52:
        ++v38;
        v39 += 24;
      }

      while (v34 != v38);
      v34 = [obj countByEnumeratingWithState:&v61 objects:v77 count:16];
    }

    while (v34);
  }

  v48 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v48 = v70.__r_.__value_.__l.__size_;
  }

  if (v48)
  {
    v49 = objc_alloc(MEMORY[0x277CCACA8]);
    if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = &v70;
    }

    else
    {
      v50 = v70.__r_.__value_.__r.__words[0];
    }

    v51 = [v49 initWithUTF8String:v50];
    v52 = [[EQKitMathMLMOperator alloc] initWithString:v51 environment:a1[76]];
    v53 = v52;
    v54 = a1[51];
    if (a1[50] == v54)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(v54 - 1);
    }

    [(EQKitMathMLNode *)v52 setParent:v55];
    [v4 addObject:v53];
  }

  sub_275CC771C(v4, &v72);

  sub_275CA6348(a1, &v72, v57);
  sub_275CC6C4C(&v72);
  v72 = &v67;
  sub_275C97BF0(&v72);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }
}

void sub_275CAAD98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  __p = &a28;
  sub_275C97BF0(&__p);
  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_275CAAE38@<X0>(void *a1@<X0>, uint64_t a2@<X1>, id *a3@<X8>)
{
  v5 = [sub_275CC7698(a2) schemataRow];
  sub_275CA3EF0(a1, v5, 0, v28);
  __p = 0;
  v26 = 0;
  v27 = 0;
  v6 = a1[77];
  v7 = a1[51];
  if (a1[50] == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v7 - 8);
  }

  v29 = v8;
  v30 = 47;
  sub_275C8D5D4(v6, v6 + 224, &v29, &__p);
  Mutable = CGPathCreateMutable();
  v10 = __p;
  v11 = v26;
  while (v10 != v11)
  {
    v12 = sub_275CA36B0(a1, v28[0], *v10);
    CGPathAddPath(Mutable, 0, v12);
    CGPathRelease(v12);
    ++v10;
  }

  v13 = [EQKitPathBox alloc];
  [v28[0] height];
  v15 = v14.n128_f64[0];
  v16 = a1[37];
  if (v16)
  {
    v17 = (*(a1[33] + 8 * ((v16 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v16 + a1[36] - 1) % 0x1AuLL));
    v18 = v17 + 14;
  }

  else
  {
    v18 = a1 + 21;
    v17 = a1 + 7;
  }

  v19 = *v18;
  v20 = v17[11];
  if (v17[15])
  {
    v14.n128_u64[0] = v17[16];
  }

  else
  {
    v14.n128_f64[0] = sub_275CB80C0(v17);
  }

  v21 = [(EQKitPathBox *)v13 initWithCGPath:Mutable height:v19 cgColor:2 drawingMode:v15 lineWidth:(*(*v20 + 40))(v20, 23, v17 + 1, v14)];
  v22 = [EQKitOverlayBox alloc];
  v23 = [(EQKitOverlayBox *)v22 initWithBox:v28[0] overlayBox:v21];
  sub_275C93F58(a3, v28);
  sub_275C9404C(a3, v23);

  CGPathRelease(Mutable);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  return sub_275C93FE4(v28);
}

void sub_275CAB060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (__p)
  {
    operator delete(__p);
  }

  sub_275C93FE4(va);
  _Unwind_Resume(a1);
}

void sub_275CAB0A4(void *result)
{
  if (result[49])
  {
    v6 = 0;
    v2 = result[77];
    v3 = result[51];
    if (result[50] == v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(v3 - 8);
    }

    v7 = v4;
    v8 = 37;
    sub_275C8D3A8(v2, v2 + 176, &v7, &v6);
    v5 = result[49] + result[48] - 1;
    sub_275CD2CF0(*(result[45] + 8 * (v5 / 0x19)) + 160 * (v5 % 0x19), v6);
  }
}

void sub_275CAB160(void *a1@<X8>)
{
  v2 = objc_alloc_init(EQKitHSpace);
  sub_275C93F10(a1, v2);
  sub_275C93D90(v3, v2, 0.0);
  sub_275C94168(a1, 3, v3);
  sub_275C93E08(v3);
}

uint64_t sub_275CAB1F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_275C93F10(a3, 0);
  v6 = [*a2 operatorUnicharOrNul];
  v39 = v6;
  if (*(a2 + 8) == 2)
  {
    v7 = *(a2 + 24) + *(a2 + 16);
  }

  else
  {
    v7 = *(a2 + 32);
  }

  v8 = sub_275C9B058([*(a1 + 608) fontManager]);
  v9 = *(a1 + 296);
  if (v9)
  {
    v10 = *(*(a1 + 264) + 8 * ((v9 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v9 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v10 = a1 + 56;
  }

  v11 = (*(*v8 + 80))(v8, &v39, *(a2 + 8), v10 + 8, v7);
  if (v11)
  {
    v12 = sub_275C9B058([*(a1 + 608) fontManager]);
    v13 = (*(*v12 + 152))(v12, v39, v11);
    if (!v13)
    {
LABEL_24:
      CFRelease(v11);
      goto LABEL_25;
    }

    v14 = [EQKitStringBox alloc];
    v15 = *(a1 + 296);
    if (v15)
    {
      v16 = *(*(a1 + 264) + 8 * ((v15 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v15 + *(a1 + 288) - 1) % 0x1AuLL);
    }

    else
    {
      v16 = a1 + 56;
    }

    v17 = [(EQKitStringBox *)v14 initWithAttributedString:v13 cgColor:*(v16 + 112)];
    v18 = v17;
    v19 = *(a2 + 8);
    if (v17)
    {
      v20 = v19 == 2;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      [(EQKitStringBox *)v17 height];
      v22 = v21;
      [(EQKitStringBox *)v18 depth];
      v24 = (v7 - (v22 + v23)) * 0.5 + v23 - *(a2 + 24);
      if (v24 == 0.0)
      {
        sub_275C93F10(v38, v18);
      }

      else
      {
        sub_275C93F10(v38, [[EQKitVShift alloc] initWithBox:v18 offset:v24]);
      }

      sub_275C93FE8(a3, v38);
    }

    else
    {
      if (v19 != 1)
      {
LABEL_23:

        goto LABEL_24;
      }

      sub_275C93F10(v38, v17);
      sub_275C93FE8(a3, v38);
    }

    sub_275C93FE4(v38);
    goto LABEL_23;
  }

LABEL_25:
  if (!*a3)
  {
    v37 = *MEMORY[0x277CBF3A8];
    v25 = sub_275C9B058([*(a1 + 608) fontManager]);
    v26.n128_f64[0] = *(a2 + 24) + *(a2 + 16);
    if (*(a2 + 8) != 2)
    {
      v26.n128_u64[0] = *(a2 + 32);
    }

    v27 = (*(*v25 + 88))(v25, v6, v26);
    if (v27)
    {
      if (*(a2 + 8) == 2)
      {
        v28 = *(a2 + 16);
        v29 = *(a2 + 24);
        v30 = [EQKitPathBox alloc];
        v31 = *(a1 + 296);
        if (v31)
        {
          v32 = *(*(a1 + 264) + 8 * ((v31 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v31 + *(a1 + 288) - 1) % 0x1AuLL);
        }

        else
        {
          v32 = a1 + 56;
        }

        sub_275C93F10(v38, [(EQKitPathBox *)v30 initWithCGPath:v27 height:*(v32 + 112) paddingLeft:v28 + (*(&v37 + 1) - (v28 + v29)) * 0.5 paddingRight:0.0 cgColor:0.0]);
        sub_275C93FE8(a3, v38);
      }

      else
      {
        v33 = [EQKitPathBox alloc];
        v34 = *(a1 + 296);
        if (v34)
        {
          v35 = *(*(a1 + 264) + 8 * ((v34 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v34 + *(a1 + 288) - 1) % 0x1AuLL);
        }

        else
        {
          v35 = a1 + 56;
        }

        sub_275C93F10(v38, [(EQKitPathBox *)v33 initWithCGPath:v27 height:*(v35 + 112) cgColor:*(&v37 + 1)]);
        sub_275C93FE8(a3, v38);
      }

      sub_275C93FE4(v38);
      CGPathRelease(v27);
    }
  }

  return sub_275C940CC(a3, 5);
}

void sub_275CAB6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_275C93FE4(va);
  sub_275C93FE4(v13);
  _Unwind_Resume(a1);
}

uint64_t sub_275CAB718(uint64_t a1, void *a2)
{
  v9 = 0;
  v4 = *(a1 + 616);
  v10 = a2;
  v11 = 14;
  sub_275C8D3A8(v4, v4 + 8, &v10, &v9);
  if (v9 == 1)
  {
    return 0;
  }

  if (v9 == 2)
  {
    return 1;
  }

  v6 = [*(a1 + 608) operatorDictionary];
  v7 = [a2 operatorId];
  v8 = sub_275CA3338(a1, a2);
  result = sub_275CC8220(v6, v7, v8);
  if (result)
  {
    return (*(result + 48) >> 1) & 1;
  }

  return result;
}

double sub_275CAB7D4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_275C9B058([*(a1 + 608) fontManager]);
  v9 = *(a1 + 296);
  if (v9)
  {
    v10 = *(*(a1 + 264) + 8 * ((v9 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v9 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v10 = a1 + 56;
  }

  v11 = (*(*v8 + 64))(v8, a3, v10 + 8);
  if (v11)
  {
    v12 = v11;
    v13 = sub_275C9B058([*(a1 + 608) fontManager]);
    if (*(v12 + 23) < 0)
    {
      sub_275CAF534(__p, *v12, *(v12 + 8));
    }

    else
    {
      v14 = *v12;
      v20 = *(v12 + 16);
      *__p = v14;
    }

    v15 = (*(*v13 + 24))(v13, a2, __p, a3);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }

    if (v15)
    {
      v16 = *(a1 + 296);
      if (v16)
      {
        v17 = *(*(a1 + 264) + 8 * ((v16 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v16 + *(a1 + 288) - 1) % 0x1AuLL);
      }

      else
      {
        v17 = a1 + 56;
      }

      return sub_275CBB138(v15, *(v17 + 24));
    }
  }

  return a4;
}

void sub_275CAB990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CAB9AC(void *a1, void *a2)
{
  v6 = sub_275CABC3C(a1);
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v6 length:1];
  v4 = [objc_msgSend(objc_msgSend(a2 "attributedString")];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [objc_msgSend(a2 "attributedString")];
  }

  return [a2 positionOfCharacterAtIndex:v4];
}

void *sub_275CABA44(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = a1[37];
  if (v7)
  {
    v8 = (*(a1[33] + 8 * ((v7 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v7 + a1[36] - 1) % 0x1AuLL));
  }

  else
  {
    v8 = a1 + 7;
  }

  v9 = v8[11];
  v10 = [sub_275CC75B8(a2) schemataTokenString];
  v11 = (*(*v9 + 72))(v9, v10, v8 + 1);
  v23 = sub_275CABC3C(a1);
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v23 length:1];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = [v11 string];
  v14 = [v11 length];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_275CABCA0;
  v18[3] = &unk_27A6773C0;
  v18[4] = v11;
  v18[5] = v12;
  v18[6] = v6;
  v18[7] = &v19;
  v18[8] = v8;
  [v13 enumerateSubstringsInRange:0 options:v14 usingBlock:{2, v18}];

  v15 = [v6 count];
  *a3 = v15;
  v16 = v20[3];
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = v15;
  }

  *a3 = v16;

  _Block_object_dispose(&v19, 8);
  return v6;
}

void sub_275CABC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275CABC3C(void *a1)
{
  v7 = 46;
  v2 = a1[77];
  v4 = a1[50];
  v3 = a1[51];
  if (v4 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v3 - 8);
  }

  v8 = v5;
  v9 = 35;
  sub_275CAE99C(v2, v2 + 488, &v8, &v7);
  return v7;
}

void sub_275CABCA0(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) attributedSubstringFromRange:?];
  if (*(*(*(a1 + 56) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL && [a2 isEqualToString:*(a1 + 40)])
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 48) count];
  }

  v5 = [[EQKitStringBox alloc] initWithAttributedString:v4 cgColor:*(*(a1 + 64) + 112)];
  [*(a1 + 48) addObject:v5];
}

unsigned __int8 *sub_275CABD5C(uint64_t a1, void *a2)
{
  result = [a2 isEmbellishedOperator];
  if (result)
  {
    v5 = [a2 operatorCore];
    v10 = 0;
    v6 = *(a1 + 616);
    v11 = v5;
    v12 = 45;
    sub_275C8D3A8(v6, v6 + 8, &v11, &v10);
    if (v10)
    {
      return (v10 == 2);
    }

    else
    {
      v7 = [*(a1 + 608) operatorDictionary];
      v8 = [v5 operatorId];
      v9 = sub_275CA3338(a1, v5);
      result = sub_275CC8220(v7, v8, v9);
      if (result)
      {
        return ((result[48] >> 5) & 1);
      }
    }
  }

  return result;
}

unsigned __int8 *sub_275CABE24(uint64_t a1, void *a2)
{
  result = [a2 isEmbellishedOperator];
  if (result)
  {
    v5 = [a2 operatorCore];
    v6 = [*(a1 + 608) operatorDictionary];
    v7 = [v5 operatorId];
    v8 = sub_275CA3338(a1, v5);
    result = sub_275CC8220(v6, v7, v8);
    if (result)
    {
      return ((result[48] >> 3) & 1);
    }
  }

  return result;
}

uint64_t sub_275CABEA8(uint64_t a1, void *a2)
{
  v11 = 0;
  v4 = *(a1 + 616);
  v12 = a2;
  v13 = 16;
  sub_275C8D3A8(v4, v4 + 8, &v12, &v11);
  if (v11 == 1)
  {
    goto LABEL_6;
  }

  if (v11 != 2)
  {
    v6 = [*(a1 + 608) operatorDictionary];
    v7 = [a2 operatorId];
    v8 = sub_275CA3338(a1, a2);
    v9 = sub_275CC8220(v6, v7, v8);
    if (v9)
    {
      v5 = *(v9 + 48);
      return v5 & 1;
    }

LABEL_6:
    v5 = 0;
    return v5 & 1;
  }

  v5 = 1;
  return v5 & 1;
}

uint64_t sub_275CABF64(uint64_t a1, void *a2)
{
  v6 = a2;
  if (sub_275CB01C0((a1 + 472), &v6) || !sub_275CABEA8(a1, v6))
  {
    return 0;
  }

  sub_275CC6C88(v5);
  v3 = sub_275CA5C1C(a1, v6, v5);
  sub_275CC6C4C(v5);
  return v3;
}

void sub_275CABFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_275CC6C4C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CABFF4(uint64_t a1, void *a2)
{
  v9 = 0;
  v4 = *(a1 + 616);
  v10 = a2;
  v11 = 39;
  sub_275C8D3A8(v4, v4 + 8, &v10, &v9);
  if (v9 == 1)
  {
    return 0;
  }

  if (v9 == 2)
  {
    return 1;
  }

  v6 = [*(a1 + 608) operatorDictionary];
  v7 = [a2 operatorId];
  v8 = sub_275CA3338(a1, a2);
  result = sub_275CC8220(v6, v7, v8);
  if (result)
  {
    return (*(result + 48) >> 2) & 1;
  }

  return result;
}

void sub_275CAC0B0(void *a1, void *a2, void *a3)
{
  if (sub_275CA524C(a1, a2))
  {
    v6 = [a3 firstObject];
    v8 = 2 * (v6 == a2);
    if ([a3 lastObject] == a2)
    {
      v7 = (2 * (v6 == a2)) | 8;
    }

    else
    {
      if (v6 == a2)
      {
LABEL_7:
        sub_275CB138C(a1 + 26, &v8);
        return;
      }

      v7 = 4;
    }

    v8 = v7;
    goto LABEL_7;
  }
}

uint64_t sub_275CAC148(void *a1, void *a2)
{
  result = sub_275CA524C(a1, a2);
  if (result)
  {
    v4 = a1[31];
    if (v4)
    {
      a1[31] = v4 - 1;

      return sub_275C8DF70(a1 + 26, 1);
    }
  }

  return result;
}

void sub_275CAC1A4(void *result, void *a2)
{
  v2 = result[49];
  if (v2)
  {
    v4 = (*(result[45] + 8 * ((v2 + result[48] - 1) / 0x19uLL)) + 160 * ((v2 + result[48] - 1) % 0x19uLL));
    if (!v4[8])
    {
      memset(v30, 0, sizeof(v30));
      sub_275CAF2F8(v30, v4[1], v4[2], 0x6DB6DB6DB6DB6DB7 * ((v4[2] - v4[1]) >> 3));
      v6 = v4[7];
      v28 = 0.0;
      v29 = 0.0;
      sub_275CD2A68(v4, &v29, &v28);
      v7 = result[37];
      if (v7)
      {
        v8 = (*(result[33] + 8 * ((v7 + result[36] - 1) / 0x1AuLL)) + 152 * ((v7 + result[36] - 1) % 0x1AuLL));
      }

      else
      {
        v8 = (result + 7);
      }

      if ((v8[15] & 2) != 0)
      {
        v9 = v8[17];
      }

      else
      {
        v9 = sub_275CB80E8(v8);
      }

      for (i = [v6 firstIndex]; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend(v6, "indexGreaterThanIndex:", i))
      {
        v11 = sub_275CD27A8(v4, i);
        v12 = v11;
        if (v11)
        {
          v27 = [v11 operatorCore];
          v13 = sub_275CAFE50(result + 59, &v27);
          v14 = v13;
          if (v13 && *(v13 + 8) == 1)
          {
            v15 = sub_275CD2AC4(v4);
            sub_275CA4D18(result, v27, 1, v14[7] - v15);
            sub_275CA3EF0(result, v12, 0, v26);
            sub_275C93FE8(v30[0] + 56 * i, v26);
          }

          else
          {
            sub_275CAC0B0(result, v12, a2);
            v16 = sub_275CAB718(result, v27);
            v17 = v29;
            if (v16)
            {
              v18 = v29 - v9;
              if (v29 - v9 < v9 + v28)
              {
                v18 = v9 + v28;
              }

              v17 = v9 + v18;
              v19 = v18 - v9;
            }

            else
            {
              v19 = v28;
            }

            v20 = sub_275CA496C(result, v27, v17, v19);
            v21 = *(v20 + 2);
            v23 = *(v20 + 2);
            v22 = *(v20 + 3);
            v24 = *(v20 + 4);
            sub_275CA3EF0(result, v12, 0, v26);
            v25 = v22 + v23;
            if (v21 != 2)
            {
              v25 = v24;
            }

            if (v17 + v19 < v25)
            {
              sub_275C940CC(v26, 0);
            }

            sub_275C93FE8(v30[0] + 56 * i, v26);
            sub_275CAC148(result, v12);
          }

          sub_275C93FE4(v26);
        }
      }

      sub_275CD2C90(v4, v30);
      v26[0] = v30;
      sub_275CAF4B0(v26);
    }
  }
}

void sub_275CAC4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  a10 = &a20;
  sub_275CAF4B0(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_275CAC500(uint64_t a1, uint64_t a2)
{
  v4 = sub_275C9B058([*(a1 + 608) fontManager]);
  v6 = *(a1 + 296);
  if (v6)
  {
    v7 = *(*(a1 + 264) + 8 * ((v6 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v6 + *(a1 + 288) - 1) % 0x1AuLL);
    v8 = v7 + 8;
  }

  else
  {
    v8 = a1 + 64;
    v7 = a1 + 56;
  }

  if (*(v7 + 120))
  {
    v5.n128_u64[0] = *(v7 + 128);
  }

  else
  {
    v5.n128_f64[0] = sub_275CB80C0(v7);
  }

  v9 = *(*v4 + 40);

  return v9(v4, a2, v8, v5);
}

void sub_275CAC5E0(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 296);
  if (v8)
  {
    v9 = *(*(a1 + 264) + 8 * ((v8 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v8 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v9 = a1 + 56;
  }

  v181 = 0;
  v182 = &v181;
  v183 = 0x2020000000;
  v184 = 0;
  v177 = 0;
  v178 = &v177;
  v179 = 0x2020000000;
  v180 = 0;
  v173 = 0;
  v174 = &v173;
  v175 = 0x2020000000;
  v176 = 0;
  v169 = 0;
  v170 = &v169;
  v171 = 0x2020000000;
  v172 = 0;
  if (a2)
  {
    v10 = a2;
    while (1)
    {
      v11 = v10;
      objc_msgSend_layoutSchemata(v10);
      if (v165 != 2)
      {
        break;
      }

      v12 = sub_275CC776C(&v164);
      if ([v12 count] != 1)
      {
        break;
      }

      v10 = [v12 objectAtIndex:0];
      sub_275CC6C4C(&v164);
      if (!v10)
      {
        goto LABEL_12;
      }
    }

    sub_275CC6C4C(&v164);
  }

  else
  {
    v11 = 0;
  }

LABEL_12:
  v163[0] = MEMORY[0x277D85DD0];
  v163[1] = 3221225472;
  v163[2] = sub_275CAD5B4;
  v163[3] = &unk_27A6773E8;
  v163[10] = a1;
  v163[6] = &v181;
  v163[7] = &v177;
  v163[8] = &v173;
  v163[9] = &v169;
  v163[4] = v11;
  v163[5] = a2;
  sub_275CA3EF0(a1, a2, v163, &v164);
  if ((v166 & 0x100) != 0)
  {
    *(v178 + 24) = 1;
  }

  v159 = 0;
  v160 = &v159;
  v161 = 0x2020000000;
  v162 = 0;
  if (a3)
  {
    v154[0] = MEMORY[0x277D85DD0];
    v154[1] = 3221225472;
    v154[2] = sub_275CAD788;
    v154[3] = &unk_27A677410;
    v154[4] = a3;
    v154[5] = &v177;
    v154[6] = &v159;
    v154[7] = a1;
    sub_275CA3F54(a1, a3, 1, 0, 2, 1, v154, v155);
  }

  else
  {
    sub_275C93F10(v155, 0);
  }

  v150 = 0;
  v151 = &v150;
  v152 = 0x2020000000;
  v153 = 0;
  if (*(v182 + 3) != 0.0)
  {
    v13 = sub_275C9B058([*(a1 + 608) fontManager]);
    v14 = (*(*v13 + 48))(v13, 0);
    *(v182 + 3) = v14 * *(v182 + 3);
  }

  if (a4)
  {
    objc_msgSend_layoutSchemata(a4);
    v15 = (*(*(a1 + 48) + 6) != 1 || *(v178 + 24) == 1) && sub_275CAD87C(v146);
    sub_275CC6C4C(v146);
    v145[0] = MEMORY[0x277D85DD0];
    v145[1] = 3221225472;
    v145[2] = sub_275CADA24;
    v145[3] = &unk_27A677410;
    v145[4] = a4;
    v145[5] = &v177;
    v145[6] = &v150;
    v145[7] = a1;
    sub_275CA3F54(a1, a4, !v15, 0, 2, 0, v145, v146);
  }

  else
  {
    sub_275C93F10(v146, 0);
    v15 = 0;
  }

  v17 = v155[0];
  v18 = v146[0];
  if (*(v178 + 24) == 1)
  {
    v19 = *(v9 + 88);
    if (*(v9 + 120))
    {
      v16.n128_u64[0] = *(v9 + 128);
    }

    else
    {
      v16.n128_f64[0] = sub_275CB80C0(v9);
    }

    v25 = (*(*v19 + 40))(v19, 0, v9 + 8, v16);
    v28 = *(v9 + 88);
    if (*(v9 + 120))
    {
      v27.n128_u64[0] = *(v9 + 128);
    }

    else
    {
      v27.n128_f64[0] = sub_275CB80C0(v9);
    }

    v26 = (*(*v28 + 40))(v28, 1, v9 + 8, v27);
  }

  else
  {
    v20 = v164;
    [v164 depth];
    v22 = v21;
    v23 = v160[3];
    [v20 height];
    v25 = v22 + v23;
    v26 = v24.n128_f64[0] - v151[3];
  }

  v29 = *(v9 + 88);
  if (*(v9 + 120))
  {
    v24.n128_u64[0] = *(v9 + 128);
  }

  else
  {
    v24.n128_f64[0] = sub_275CB80C0(v9);
  }

  v31 = (*(*v29 + 40))(v29, 8, v9 + 8, v24);
  v32 = *(v9 + 88);
  if (*(v9 + 120))
  {
    v30.n128_u64[0] = *(v9 + 128);
  }

  else
  {
    v30.n128_f64[0] = sub_275CB80C0(v9);
  }

  v33 = (*(*v32 + 40))(v32, 7, v9 + 8, v30);
  [v17 height];
  if (v25 <= v34 - v31)
  {
    [v17 height];
    v25 = v35 - v31;
  }

  [v18 depth];
  if (v26 <= v33 + v36.n128_f64[0])
  {
    [v18 depth];
    v26 = v33 + v36.n128_f64[0];
  }

  if (v18)
  {
    v37 = v15;
  }

  else
  {
    v37 = 0;
  }

  if (v37)
  {
    v26 = 0.0;
    if ((*(*(a1 + 40) + 16) & 1) == 0)
    {
      sub_275CAC500(a1, 29);
      v170[3] = v36.n128_f64[0] + v170[3];
    }
  }

  if (v17)
  {
    v38 = v18 == 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = !v38;
  v137 = v39;
  if (!v38)
  {
    v40 = *(v9 + 88);
    if (*(v9 + 120))
    {
      v36.n128_u64[0] = *(v9 + 128);
    }

    else
    {
      v36.n128_f64[0] = sub_275CB80C0(v9);
    }

    v41 = (*(*v40 + 40))(v40, 9, v9 + 8, v36);
    [v18 depth];
    v43 = v42;
    [v17 height];
    v45 = v26 - v43;
    v46 = v45 - (v44.n128_f64[0] - v25);
    if (v46 < v41)
    {
      v47 = *(v9 + 88);
      if (*(v9 + 120))
      {
        v44.n128_u64[0] = *(v9 + 128);
      }

      else
      {
        v44.n128_f64[0] = sub_275CB80C0(v9);
      }

      v48 = (*(*v47 + 40))(v47, 10, v9 + 8, v44);
      v49 = v41 - v46;
      if (v45 < v48)
      {
        v50 = v48 - v45;
        v51 = v49 - v50;
        v52 = v50 <= v49;
        v49 = 0.0;
        if (v52)
        {
          v49 = v51;
        }

        v26 = v26 + v50;
      }

      v25 = v25 + v49;
    }
  }

  v53 = v166;
  v54 = v166 & 0x3F | 0x40;
  v166 = v166 & 0xFF3F | 0x40;
  v156 = v156 & 0xFFCF | 0x10;
  v147 = v147 & 0xFFCF | 0x10;
  v55 = (v53 >> 4) & 3;
  if (v55 <= 1)
  {
    if (v55)
    {
      v56 = 31;
    }

    else
    {
      v56 = 30;
    }

    goto LABEL_77;
  }

  if (v55 == 2)
  {
    v56 = 32;
LABEL_77:
    sub_275CAC500(a1, v56);
    v58 = v57;
    v54 = v166;
    goto LABEL_79;
  }

  v58 = 0;
LABEL_79:
  v59 = v54 >> 6;
  if (v59 > 1)
  {
    v61 = 0.0;
    if (v59 != 2)
    {
      goto LABEL_86;
    }

    v60 = 32;
  }

  else if (v59)
  {
    v60 = 31;
  }

  else
  {
    v60 = 30;
  }

  sub_275CAC500(a1, v60);
LABEL_86:
  v167 = v58;
  v168 = v61;
  v62 = v156;
  v63 = (v156 >> 4) & 3;
  if (v63 <= 1)
  {
    if (v63)
    {
      v64 = 31;
    }

    else
    {
      v64 = 30;
    }

    goto LABEL_92;
  }

  if (v63 == 2)
  {
    v64 = 32;
LABEL_92:
    sub_275CAC500(a1, v64);
    v66 = v65;
    v62 = v156;
    goto LABEL_94;
  }

  v66 = 0.0;
LABEL_94:
  v67 = v62 >> 6;
  if (v67 > 1)
  {
    v69 = 0;
    if (v67 != 2)
    {
      goto LABEL_101;
    }

    v68 = 32;
  }

  else if (v67)
  {
    v68 = 31;
  }

  else
  {
    v68 = 30;
  }

  sub_275CAC500(a1, v68);
LABEL_101:
  v157 = v66;
  v158 = v69;
  v70 = v147;
  v71 = (v147 >> 4) & 3;
  if (v71 <= 1)
  {
    if (v71)
    {
      v72 = 31;
    }

    else
    {
      v72 = 30;
    }

    goto LABEL_107;
  }

  if (v71 == 2)
  {
    v72 = 32;
LABEL_107:
    sub_275CAC500(a1, v72);
    v74 = v73;
    v70 = v147;
    goto LABEL_109;
  }

  v74 = 0.0;
LABEL_109:
  v75 = v70 >> 6;
  if (v75 > 1)
  {
    v77 = 0;
    if (v75 != 2)
    {
      goto LABEL_116;
    }

    v76 = 32;
  }

  else if (v75)
  {
    v76 = 31;
  }

  else
  {
    v76 = 30;
  }

  sub_275CAC500(a1, v76);
LABEL_116:
  v148 = v74;
  v149 = v77;
  v78 = 0.0;
  v79 = 0.0;
  v80 = 0.0;
  v81 = MEMORY[0x277CBF348];
  if (v17)
  {
    if (*(v182 + 3) != 0.0 && v25 != 0.0 || v174[3] != 0.0)
    {
      v82 = sub_275CADB18(a3, *(a1 + 48));
      v83 = 0.0;
      if (v82)
      {
        v83 = v25 * tan(*(v182 + 3));
      }

      v80 = v83 - v174[3];
    }

    v84 = v168;
    v85 = v157;
    v86 = *(a1 + 40);
    v87 = v166;
    v88 = *v81;
    v89 = v81[1];
    v90 = v164;
    v91 = v156;
    [v164 opticalAlignWidth];
    if (v84 >= v85)
    {
      v93 = v84;
    }

    else
    {
      v93 = v85;
    }

    v79 = sub_275C9B51C(v86, (v87 >> 2) & 3, v90, v91 & 3, v155[0], v88, v89, v80 + v92, v25, v93);
  }

  v94 = 0.0;
  if (v18)
  {
    v136 = v80;
    if ((*(v182 + 3) == 0.0 || v26 == 0.0) && v170[3] == 0.0)
    {
      v97 = v25;
    }

    else
    {
      v95 = sub_275CADB18(a4, *(a1 + 48));
      v96 = 0.0;
      if (v95)
      {
        v96 = v26 * tan(*(v182 + 3));
      }

      v97 = v25;
      v94 = v170[3] - v96;
    }

    v98 = v168;
    v99 = v148;
    v100 = *(a1 + 40);
    v101 = v166;
    v102 = *v81;
    v103 = v81[1];
    v104 = v164;
    v105 = v147;
    [v164 opticalAlignWidth];
    if (v98 >= v99)
    {
      v107 = v98;
    }

    else
    {
      v107 = v99;
    }

    v78 = sub_275C9B51C(v100, (v101 >> 2) & 3, v104, v105 & 3, v146[0], v102, v103, v94 + v106, -v26, v107);
    v25 = v97;
    v80 = v136;
  }

  v108 = 0;
  if (v79 < v78)
  {
    v79 = v78;
  }

  if (v17 && v80 + v79 != 0.0)
  {
    v109 = [[EQKitHSpace alloc] initWithWidth:v80 + v79];
    v108 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v109, v17, 0}];
  }

  if (v18 && v94 + v79 != 0.0 && (v110 = -[EQKitHSpace initWithWidth:]([EQKitHSpace alloc], "initWithWidth:", v94 + v79), v111 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v110, v18, 0}], v110, v111))
  {
    v112 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v111];
    if (!v108)
    {
LABEL_147:
      v113 = v17;
      goto LABEL_150;
    }
  }

  else
  {
    v112 = v18;
    v111 = 0;
    if (!v108)
    {
      goto LABEL_147;
    }
  }

  v113 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v108];
LABEL_150:
  v114 = v113;
  sub_275C93F10(v143, 0);
  if (v137)
  {
    [v18 layoutDepth];
    v116 = v115;
    [v17 layoutHeight];
    v118 = [[EQKitVSpace alloc] initWithHeight:v26 - v116 depth:v25 - v117];
    v119 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v112, v118, v114, 0}];
    v120 = [[EQKitVBox alloc] initWithChildBoxes:v119 pivotIndex:1];
    sub_275C93F10(v142, v120);
    sub_275C93FE8(v143, v142);
    sub_275C93FE4(v142);
  }

  else if (v17)
  {
    v121 = [[EQKitVShift alloc] initWithBox:v114 offset:-v25];
    sub_275C93F10(v142, v121);
    sub_275C93FE8(v143, v142);
    sub_275C93FE4(v142);
  }

  else if (v18)
  {
    v122 = [[EQKitVShift alloc] initWithBox:v112 offset:v26];
    sub_275C93F10(v142, v122);
    sub_275C93FE8(v143, v142);
    sub_275C93FE4(v142);
  }

  sub_275CA3B14(a1, 1, 0);
  v166 = v166 & 0xFFF3 | 4;
  v144 = v144 & 0xFFFC | 1;
  sub_275C93F58(v141, &v164);
  sub_275CA45F8(a1, v141, a2);
  sub_275C93FE4(v141);
  sub_275C93F58(v140, v143);
  v123 = *(a1 + 408);
  if (*(a1 + 400) == v123)
  {
    v124 = 0;
  }

  else
  {
    v124 = *(v123 - 8);
  }

  sub_275CA45F8(a1, v140, v124);
  sub_275C93FE4(v140);
  sub_275CA3D74(a1, a5);
  v125 = *(a1 + 296);
  if (v125)
  {
    v126 = *(*(a1 + 264) + 8 * ((v125 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v125 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v126 = a1 + 56;
  }

  if ((*(v126 + 16) & 1) == 0 && (v166 & 0x1000) != 0)
  {
    if (a4)
    {
      v128 = (v147 >> 12) & 1;
    }

    else
    {
      v128 = 0;
    }

    v129 = v156 & 0x1C00;
    if (a3)
    {
      v130 = (v156 >> 12) & 1;
    }

    else
    {
      v130 = 0;
    }

    v131 = v129 > 0x1000 && a3 != 0;
    v132 = (v147 & 0x1C00u) > 0x1000 && a4 != 0;
    v133 = v130 + v128;
    if ((a3 != 0) != (a4 != 0) && v133 == 1 || (a3 ? (v134 = a4 == 0) : (v134 = 1), v134 ? (v135 = 0) : (v135 = 1), !v134 && (v147 & 0x1C00u) > 0x1000 && v129 > 0x1000 || (v127 = 0, (v135 & (v131 ^ v132)) == 1) && v133 == 2))
    {
      v127 = 3;
    }
  }

  else
  {
    v127 = 0;
  }

  sub_275C940CC(a5, v127);
  *(a5 + 32) = *(a5 + 32) & 0xFFF3 | 8;
  sub_275C93FE4(v143);
  sub_275C93FE4(v146);
  _Block_object_dispose(&v150, 8);
  sub_275C93FE4(v155);
  _Block_object_dispose(&v159, 8);
  sub_275C93FE4(&v164);
  _Block_object_dispose(&v169, 8);
  _Block_object_dispose(&v173, 8);
  _Block_object_dispose(&v177, 8);
  _Block_object_dispose(&v181, 8);
}

void sub_275CAD450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_275C93FE4(&a30);
  sub_275C93FE4(&a37);
  sub_275C93FE4(&a52);
  _Block_object_dispose(&a59, 8);
  sub_275C93FE4(&a65);
  _Block_object_dispose(&STACK[0x228], 8);
  sub_275C93FE4(&STACK[0x2A0]);
  _Block_object_dispose(&STACK[0x2D8], 8);
  _Block_object_dispose((v65 - 248), 8);
  _Block_object_dispose((v65 - 216), 8);
  _Block_object_dispose((v65 - 184), 8);
  _Unwind_Resume(a1);
}

void sub_275CAD5B4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[4] == a2 && (v6 = a1[10], sub_275CC75D8(a3)))
  {
    v7 = v6[37];
    if (v7)
    {
      v8 = *(v6[33] + 8 * ((v7 + v6[36] - 1) / 0x1AuLL)) + 152 * ((v7 + v6[36] - 1) % 0x1AuLL);
    }

    else
    {
      v8 = (v6 + 7);
    }

    if ((*(v8 + 120) & 4) != 0)
    {
      v10 = *(v8 + 144);
    }

    else
    {
      v10 = sub_275CB8228(v8);
    }

    *(*(a1[6] + 8) + 24) = v10;
    v11 = sub_275CC75B8(a3);
    if (v11)
    {
      v12 = [v11 schemataUnicharOrNul];
      v13 = v6[37];
      if (v13)
      {
        v14 = *(v6[33] + 8 * ((v13 + v6[36] - 1) / 0x1AuLL)) + 152 * ((v13 + v6[36] - 1) % 0x1AuLL);
        v15 = (v14 + 88);
      }

      else
      {
        v15 = v6 + 18;
        v14 = (v6 + 7);
      }

      v16 = v12;
      if ((*(**v15 + 120))(*v15, v12, v14 + 8))
      {
        *(*(a1[7] + 8) + 24) = 1;
      }

      if (v16)
      {
        *(*(a1[8] + 8) + 24) = sub_275CAB7D4(v6, 10, v16, 0.0);
        *(*(a1[9] + 8) + 24) = sub_275CAB7D4(v6, 9, v16, 0.0);
      }
    }
  }

  else
  {
    v9 = a1[5] == a2 && *(a3 + 8) == 2;
    if (v9 && ![sub_275CC776C(a3) count])
    {
      *(*(a1[7] + 8) + 24) = 1;
    }
  }
}

void sub_275CAD788(void *a1, uint64_t a2, __n128 a3)
{
  if (a1[4] == a2 && (*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v4 = a1[7];
    v5 = v4[37];
    if (v5)
    {
      v6 = *(v4[33] + 8 * ((v5 + v4[36] - 1) / 0x1AuLL)) + 152 * ((v5 + v4[36] - 1) % 0x1AuLL);
    }

    else
    {
      v6 = (v4 + 7);
    }

    v7 = *(v6 + 88);
    if (*(v6 + 120))
    {
      a3.n128_u64[0] = *(v6 + 128);
    }

    else
    {
      a3.n128_f64[0] = sub_275CB80C0(v6);
    }

    *(*(a1[6] + 8) + 24) = (*(*v7 + 40))(v7, 6, v6 + 8, a3);
  }
}

BOOL sub_275CAD87C(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!sub_275CC75D8(a1))
  {
    if (*(a1 + 8) == 2)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v4 = sub_275CC776C(a1);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (!v5)
      {
        return 1;
      }

      v6 = *v12;
LABEL_8:
      v7 = 0;
      while (1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (v8)
        {
          objc_msgSend_layoutSchemata(v8);
        }

        else
        {
          memset(v10, 0, sizeof(v10));
        }

        v9 = sub_275CAD87C(v10);
        sub_275CC6C4C(v10);
        if ((v9 & 1) == 0)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
          result = 1;
          if (v5)
          {
            goto LABEL_8;
          }

          return result;
        }
      }
    }

    return 0;
  }

  v2 = [sub_275CC75B8(a1) schemataUnicharOrNul];

  return sub_275CB1984(v2);
}

void sub_275CADA24(void *a1, uint64_t a2, __n128 a3)
{
  if (a1[4] == a2 && (*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v4 = a1[7];
    v5 = v4[37];
    if (v5)
    {
      v6 = *(v4[33] + 8 * ((v5 + v4[36] - 1) / 0x1AuLL)) + 152 * ((v5 + v4[36] - 1) % 0x1AuLL);
    }

    else
    {
      v6 = (v4 + 7);
    }

    v7 = *(v6 + 88);
    if (*(v6 + 120))
    {
      a3.n128_u64[0] = *(v6 + 128);
    }

    else
    {
      a3.n128_f64[0] = sub_275CB80C0(v6);
    }

    *(*(a1[6] + 8) + 24) = (*(*v7 + 40))(v7, 5, v6 + 8, a3);
  }
}

uint64_t sub_275CADB18(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    while (1)
    {
      objc_msgSend_layoutSchemata(v3);
      if (sub_275CC75D8(&v6))
      {
        break;
      }

      if (v7 == 4)
      {
        if (*(a2 + 7) != 1)
        {
          goto LABEL_12;
        }

        v5 = [sub_275CC7468(&v6) schemataKernel];
      }

      else
      {
        if (v7 != 2 || (v4 = sub_275CC776C(&v6), ![v4 count]))
        {
LABEL_12:
          sub_275CC6C4C(&v6);
          return 0;
        }

        v5 = [v4 objectAtIndex:0];
      }

      v3 = v5;
      sub_275CC6C4C(&v6);
      if (!v3)
      {
        return 0;
      }
    }

    sub_275CC6C4C(&v6);
    return 1;
  }

  return result;
}

uint64_t sub_275CADC0C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32) == a2)
  {
    v4 = result;
    v5 = *(result + 64);
    result = sub_275CC75D8(a3);
    if (result)
    {
      *(*(v4[5] + 8) + 24) = [sub_275CC75B8(a3) schemataUnicharOrNul];
      v6 = v5[37];
      if (v6)
      {
        v7 = *(v5[33] + 8 * ((v6 + v5[36] - 1) / 0x1AuLL)) + 152 * ((v6 + v5[36] - 1) % 0x1AuLL);
      }

      else
      {
        v7 = (v5 + 7);
      }

      result = sub_275CADCE4(*(v4[6] + 8) + 48, v7 + 8);
      *(*(v4[7] + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t sub_275CADCE4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 9) = *(a2 + 9);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    v4 = *(a1 + 32);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a2 + 32);
    *(a1 + 32) = v5;
    if (v5)
    {
      CFRetain(v5);
    }
  }

  return a1;
}

uint64_t sub_275CADD60(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 48) == 1)
  {
    v3 = result;
    if (*(result + 32) == a2)
    {
      result = sub_275CC75D8(a3);
      if (result)
      {
        *(*(*(v3 + 40) + 8) + 24) = 1;
      }
    }
  }

  return result;
}

void sub_275CADDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1 && *(a1 + 32) == a2)
  {
    v4 = *(a1 + 56);
    if (sub_275CC75D8(a3))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      v5 = v4[37];
      if (v5)
      {
        v6 = *(v4[33] + 8 * ((v5 + v4[36] - 1) / 0x1AuLL)) + 152 * ((v5 + v4[36] - 1) % 0x1AuLL);
      }

      else
      {
        v6 = (v4 + 7);
      }

      v7 = sub_275CB7E84(v6);
      *(*(*(a1 + 48) + 8) + 24) = CTFontGetXHeight(v7);
    }
  }
}

uint64_t sub_275CADE74(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32) == a2)
  {
    v4 = result;
    v5 = *(result + 64);
    result = sub_275CC75D8(a3);
    if (result)
    {
      *(*(v4[5] + 8) + 24) = [sub_275CC75B8(a3) schemataUnicharOrNul];
      v6 = v5[37];
      if (v6)
      {
        v7 = *(v5[33] + 8 * ((v6 + v5[36] - 1) / 0x1AuLL)) + 152 * ((v6 + v5[36] - 1) % 0x1AuLL);
      }

      else
      {
        v7 = (v5 + 7);
      }

      result = sub_275CADCE4(*(v4[6] + 8) + 48, v7 + 8);
      *(*(v4[7] + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t sub_275CADF4C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 48) == 1)
  {
    v3 = result;
    if (*(result + 32) == a2)
    {
      result = sub_275CC75D8(a3);
      if (result)
      {
        *(*(*(v3 + 40) + 8) + 24) = 1;
      }
    }
  }

  return result;
}

void sub_275CADFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1 && *(a1 + 32) == a2)
  {
    v4 = *(a1 + 56);
    if (sub_275CC75D8(a3))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      v5 = v4[37];
      if (v5)
      {
        v6 = *(v4[33] + 8 * ((v5 + v4[36] - 1) / 0x1AuLL)) + 152 * ((v5 + v4[36] - 1) % 0x1AuLL);
      }

      else
      {
        v6 = (v4 + 7);
      }

      v7 = sub_275CB7E84(v6);
      *(*(*(a1 + 48) + 8) + 24) = CTFontGetXHeight(v7);
    }
  }
}

EQKitVShift *sub_275CAE060(void *a1, void *a2, int a3)
{
  v4 = 0.0;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        [a2 height];
        v4 = -v15;
      }

      else if (a3 == 2)
      {
        [a2 vsize];
        v7 = v6 * 0.5;
        [a2 height];
        v9 = a1[37];
        if (v9)
        {
          v10 = (*(a1[33] + 8 * ((v9 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v9 + a1[36] - 1) % 0x1AuLL));
        }

        else
        {
          v10 = (a1 + 7);
        }

        v16 = v7 - v8;
        if ((v10[15] & 2) != 0)
        {
          v17 = v10[17];
        }

        else
        {
          v17 = sub_275CB80E8(v10);
        }

        v4 = v16 + v17;
      }

      goto LABEL_17;
    }

LABEL_8:
    [a2 vsize];
    v12 = v11 * 0.5;
    [a2 height];
    v4 = v12 - v13;
    goto LABEL_17;
  }

  if ((a3 - 3) < 2)
  {
    goto LABEL_8;
  }

  if (a3 == 5)
  {
    [a2 depth];
    v4 = v14;
  }

LABEL_17:
  v18 = [[EQKitVShift alloc] initWithBox:a2 offset:v4];

  return v18;
}

uint64_t sub_275CAE1A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X4>, void *a6@<X8>, double a7@<D0>)
{
  v13 = sub_275CC74D8(a2);
  sub_275C8B298(v18, a1, v13, a3, a4, a7);
  sub_275CB0C20(a1 + 64, v18);
  sub_275C8B3A8(v18);
  v14 = a1[69] + a1[68] - 1;
  v15 = (*(a1[65] + 8 * (v14 / 0x18)) + 168 * (v14 % 0x18));
  sub_275C8B3AC(v15, a6);
  v16 = sub_275C8CA54(v15, 2uLL);
  *a5 = v16 - sub_275C8CA54(v15, 1uLL);
  return sub_275CB0EA4(a1 + 64);
}

void sub_275CAE2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_275C8B3A8(va);
  _Unwind_Resume(a1);
}

void *sub_275CAE2C8(void *a1)
{
  *a1 = &unk_2884CB630;
  v5 = (a1 + 8);
  sub_275CAF084(&v5);
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_275CAE340(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x2A];
    v7 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (*v6 + 96 * (v5 % 0x2A) != v7)
    {
      v8 = (*v6 + 96 * (v5 % 0x2A));
      do
      {
        v9 = *v8;
        v8 += 12;
        (*v9)();
        if (v8 - *v6 == 4032)
        {
          v10 = v6[1];
          ++v6;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  a1[4] = v12;
LABEL_17:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_275C8D358(a1);
}

uint64_t sub_275CAE4B8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x18];
    v7 = *v6 + 168 * (v5 % 0x18);
    v8 = v2[(a1[5] + v5) / 0x18] + 168 * ((a1[5] + v5) % 0x18);
    if (v7 != v8)
    {
      do
      {
        v7 = sub_275C8B3A8(v7) + 168;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 12;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 24;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_275C8D358(a1);
}

uint64_t sub_275CAE5FC(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x19];
    v7 = *v6 + 160 * (v5 % 0x19);
    v8 = v2[(a1[5] + v5) / 0x19] + 160 * ((a1[5] + v5) % 0x19);
    if (v7 != v8)
    {
      do
      {
        v7 = sub_275CD23FC(v7) + 160;
        if (v7 - *v6 == 4000)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 12;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 25;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_275C8D358(a1);
}

uint64_t sub_275CAE758(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x1A];
    v7 = v2[(a1[5] + v5) / 0x1A] + 152 * ((a1[5] + v5) % 0x1A);
    if (*v6 + 152 * (v5 % 0x1A) != v7)
    {
      v8 = (*v6 + 152 * (v5 % 0x1A));
      do
      {
        v9 = *v8;
        v8 += 19;
        (*v9)();
        if (v8 - *v6 == 3952)
        {
          v10 = v6[1];
          ++v6;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 13;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 26;
  }

  a1[4] = v12;
LABEL_17:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_275C8D358(a1);
}

uint64_t sub_275CAE8C8(uint64_t a1, uint64_t a2, uint64_t a3, std::string *a4)
{
  v7 = sub_275C8D478(a2, a3);
  v8 = v7;
  if ((a2 + 8) != v7)
  {
    v9 = (v7 + 6);
LABEL_3:
    std::string::operator=(a4, v9);
    return 1;
  }

  result = [*a3 isAttributeDefaultInheritableFromStyle:*(a3 + 8)];
  if (result)
  {
    result = [*a3 parent];
    if (result)
    {
      v11 = result;
      while (1)
      {
        v12 = [v11 layoutStyleNode];
        if (v12)
        {
          v14 = v12;
          v15 = *(a3 + 8);
          v13 = sub_275C8D478(a2, &v14);
          if (v8 != v13)
          {
            break;
          }
        }

        result = [v11 parent];
        v11 = result;
        if (!result)
        {
          return result;
        }
      }

      v9 = (v13 + 6);
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t sub_275CAE99C(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4)
{
  v7 = sub_275C8D478(a2, a3);
  v8 = v7;
  if ((a2 + 8) != v7)
  {
    v9 = *(v7 + 24);
LABEL_3:
    *a4 = v9;
    return 1;
  }

  result = [*a3 isAttributeDefaultInheritableFromStyle:*(a3 + 8)];
  if (result)
  {
    result = [*a3 parent];
    if (result)
    {
      v11 = result;
      while (1)
      {
        v12 = [v11 layoutStyleNode];
        if (v12)
        {
          v14 = v12;
          v15 = *(a3 + 8);
          v13 = sub_275C8D478(a2, &v14);
          if (v8 != v13)
          {
            break;
          }
        }

        result = [v11 parent];
        v11 = result;
        if (!result)
        {
          return result;
        }
      }

      v9 = *(v13 + 24);
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t sub_275CAEA6C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

uint64_t sub_275CAEAD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_275CAEB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_275C8D478(a2, a3);
  v8 = v7;
  if ((a2 + 8) != v7)
  {
    v9 = *(v7 + 3);
    v10 = v7[8];
LABEL_3:
    *(a4 + 16) = v10;
    *a4 = v9;
    return 1;
  }

  result = [*a3 isAttributeDefaultInheritableFromStyle:*(a3 + 8)];
  if (result)
  {
    result = [*a3 parent];
    if (result)
    {
      v12 = result;
      while (1)
      {
        v13 = [v12 layoutStyleNode];
        if (v13)
        {
          v15 = v13;
          v16 = *(a3 + 8);
          v14 = sub_275C8D478(a2, &v15);
          if (v8 != v14)
          {
            break;
          }
        }

        result = [v12 parent];
        v12 = result;
        if (!result)
        {
          return result;
        }
      }

      v9 = *(v14 + 3);
      v10 = v14[8];
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t sub_275CAEBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_275C8D478(a2, a3);
  v8 = v7;
  if ((a2 + 8) != v7)
  {
    if (v7 + 6 == a4)
    {
      return 1;
    }

    v9 = v7[6];
    v10 = v7[7];
LABEL_4:
    sub_275CAECE0(a4, v9, v10, 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3));
    return 1;
  }

  result = [*a3 isAttributeDefaultInheritableFromStyle:*(a3 + 8)];
  if (result)
  {
    result = [*a3 parent];
    if (result)
    {
      v12 = result;
      while (1)
      {
        v13 = [v12 layoutStyleNode];
        if (v13)
        {
          v15 = v13;
          v16 = *(a3 + 8);
          v14 = sub_275C8D478(a2, &v15);
          if (v8 != v14)
          {
            break;
          }
        }

        result = [v12 parent];
        v12 = result;
        if (!result)
        {
          return result;
        }
      }

      if (v14 + 6 == a4)
      {
        return 1;
      }

      v9 = v14[6];
      v10 = v14[7];
      goto LABEL_4;
    }
  }

  return result;
}

void sub_275CAECE0(uint64_t *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_275CAEE80(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_275CAEEC0(a1, v10);
    }

    sub_275C8D77C();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = __str;
      do
      {
        std::string::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_275CAEF0C(a1, (v6 + v12), a3, v11);
  }
}

void sub_275CAEE80(uint64_t a1)
{
  if (*a1)
  {
    sub_275C97C44(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_275CAEEC0(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_275C97C94(a1, a2);
  }

  sub_275C8D77C();
}

void *sub_275CAEF0C(uint64_t a1, __int128 *a2, __int128 *a3, void *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_275CAF534(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4[2] = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 3;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_275CAEFCC(v9);
  return v4;
}

uint64_t sub_275CAEFCC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_275CAF004(a1);
  }

  return a1;
}

void sub_275CAF004(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_275CAF04C(void *a1)
{
  sub_275CAE2C8(a1);

  JUMPOUT(0x277C8CFC0);
}

void sub_275CAF084(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_275CAF0D8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_275CAF0D8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = (v2 - 24);
    do
    {
      v8 = v4;
      sub_275CAF158(&v8);
      v5 = *(v4 - 4);
      if (v5)
      {
        *(v4 - 3) = v5;
        operator delete(v5);
      }

      v6 = *(v4 - 7);
      if (v6)
      {
        *(v4 - 6) = v6;
        operator delete(v6);
      }

      v7 = v4 - 7;
      v4 -= 10;
    }

    while (v7 != v3);
  }

  a1[1] = v3;
}

void sub_275CAF158(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_275CAF1AC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_275CAF1AC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 56;
    do
    {
      sub_275C93FE4(v4);
      sub_275CD23FC(v4 - 160);
      v5 = *(v4 - 200);
      if (v5)
      {
        *(v4 - 192) = v5;
        operator delete(v5);
      }

      v6 = *(v4 - 224);
      if (v6)
      {
        *(v4 - 216) = v6;
        operator delete(v6);
      }

      v7 = v4 - 224;
      v4 -= 280;
    }

    while (v7 != v3);
  }

  a1[1] = v3;
}

uint64_t sub_275CAF228(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v7 = sub_275C8D478(a2, a3);
  v8 = v7;
  if ((a2 + 8) != v7)
  {
    v9 = *(v7 + 3);
LABEL_3:
    *a4 = v9;
    return 1;
  }

  result = [*a3 isAttributeDefaultInheritableFromStyle:*(a3 + 8)];
  if (result)
  {
    result = [*a3 parent];
    if (result)
    {
      v11 = result;
      while (1)
      {
        v12 = [v11 layoutStyleNode];
        if (v12)
        {
          v14 = v12;
          v15 = *(a3 + 8);
          v13 = sub_275C8D478(a2, &v14);
          if (v8 != v13)
          {
            break;
          }
        }

        result = [v11 parent];
        v11 = result;
        if (!result)
        {
          return result;
        }
      }

      v9 = *(v13 + 3);
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t *sub_275CAF2F8(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_275CAF380(result, a4);
  }

  return result;
}

void sub_275CAF360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_275CAF4B0(&a9);
  _Unwind_Resume(a1);
}

void sub_275CAF380(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_275CAF3D0(a1, a2);
  }

  sub_275C8D77C();
}

void sub_275CAF3D0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_275C8D86C();
}

uint64_t sub_275CAF42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_275C93F58(a4, v6);
      v6 += 56;
      a4 += 56;
      v7 -= 56;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_275CAF48C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 56;
    do
    {
      v4 = sub_275C93FE4(v4) - 56;
      v2 += 56;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_275CAF4B0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_275C93FE4(v4 - 56);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_275CAF534(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_275C8EE7C();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_275CAF5D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_275CAF624(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 26 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_275CAF6DC(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x1A)) + 152 * (v7 % 0x1A);
  }

  result = sub_275CB7A14(v8, a2);
  ++a1[5];
  return result;
}

void sub_275CAF6DC(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1A;
  v3 = v1 - 26;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_275CAFCD8(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_275CAF8B0(a1, &v9);
}

void sub_275CAF864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_275CAF8B0(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_275CAFCD8(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_275CAF9B8(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_275CAFCD8(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_275CAFAC4(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_275CAFCD8(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_275CAFBCC(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_275CAFCD8(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_275CAFCD8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_275C8D86C();
}

uint64_t sub_275CAFD20(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  (**(*(a1[1] + 8 * (v2 / 0x1A)) + 152 * (v2 % 0x1A)))();
  --a1[5];

  return sub_275CAFDD8(a1, 1);
}

uint64_t sub_275CAFDD8(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 26 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x1A)
  {
    a2 = 1;
  }

  if (v5 < 0x34)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *sub_275CAFE50(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_275CAFF3C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void *sub_275CB01C0(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v5 == v10)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_275CB02AC(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    sub_275CB0338(result);
    v5 = result[1];
    v7 = result[5] + result[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++result[5];
}

void sub_275CB0338(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_275CB0934(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_275CB050C(a1, &v9);
}

void sub_275CB04C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_275CB050C(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_275CB0934(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_275CB0614(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_275CB0934(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_275CB0720(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_275CB0934(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_275CB0828(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_275CB0934(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_275CB0934(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_275C8D86C();
}

void sub_275CB097C(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    sub_275CB0A08(result);
    v5 = result[1];
    v7 = result[5] + result[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++result[5];
}

void sub_275CB0A08(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_275CB0934(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_275CB050C(a1, &v9);
}

void sub_275CB0B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_275CB0BDC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_275C9D8AC(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

uint64_t sub_275CB0C20(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 24 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_275CB0CD0(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x18)) + 168 * (v7 % 0x18);
  }

  result = sub_275C8B348(v8, a2);
  ++a1[5];
  return result;
}

void sub_275CB0CD0(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x18;
  v3 = v1 - 24;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_275CAFCD8(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_275CAF8B0(a1, &v9);
}

void sub_275CB0E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_275CB0EA4(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_275C8B3A8(*(a1[1] + 8 * (v2 / 0x18)) + 168 * (v2 % 0x18));
  --a1[5];

  return sub_275CB0F20(a1, 1);
}

uint64_t sub_275CB0F20(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 24 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x18)
  {
    a2 = 1;
  }

  if (v5 < 0x30)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

double sub_275CB0F98(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 42 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_275CB1084(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x2A)) + 96 * (v7 % 0x2A);
  }

  v9 = *(a2 + 8);
  *v8 = &unk_2884CB630;
  *(v8 + 8) = v9;
  *(v8 + 80) = 0;
  result = 0.0;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 88) = *(a2 + 88);
  ++a1[5];
  return result;
}

void sub_275CB1084(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_275CAFCD8(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_275CAF8B0(a1, &v9);
}

void sub_275CB120C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_275CB1258(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  (**(*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)))();
  --a1[5];

  return sub_275CB1314(a1, 1);
}

uint64_t sub_275CB1314(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x2A)
  {
    a2 = 1;
  }

  if (v5 < 0x54)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void sub_275CB138C(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    sub_275CB1418(result);
    v5 = result[1];
    v7 = result[5] + result[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++result[5];
}

void sub_275CB1418(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_275C8DF28(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_275C8DB00(a1, &v9);
}

void sub_275CB15A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_275CB15EC(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 25 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_275CB16AC(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x19)) + 160 * (v7 % 0x19);
  }

  result = sub_275CD236C(v8, a2);
  ++a1[5];
  return result;
}

void sub_275CB16AC(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x19;
  v3 = v1 - 25;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_275CAFCD8(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_275CAF8B0(a1, &v9);
}

void sub_275CB1834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_275CB1880(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_275CD23FC(*(a1[1] + 8 * (v2 / 0x19)) + 160 * (v2 % 0x19));
  --a1[5];

  return sub_275CB190C(a1, 1);
}

uint64_t sub_275CB190C(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 25 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x19)
  {
    a2 = 1;
  }

  if (v5 < 0x32)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

BOOL sub_275CB1984(unsigned int a1)
{
  if ((atomic_load_explicit(&qword_280A388C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A388C0))
  {
    sub_275CB1A8C(&qword_280A388A8, "", dword_275D0BEA4);
    __cxa_guard_release(&qword_280A388C0);
  }

  v2 = qword_280A388B0;
  if (!qword_280A388B0)
  {
    return 0;
  }

  v3 = &qword_280A388B0;
  do
  {
    v4 = *(v2 + 28);
    v5 = v4 >= a1;
    v6 = v4 < a1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  return v3 != &qword_280A388B0 && *(v3 + 7) <= a1;
}

uint64_t sub_275CB1A60(unsigned int a1)
{
  if (a1 - 917760 >= 0xF0)
  {
    v1 = 0;
  }

  else
  {
    v1 = a1 - 917743;
  }

  if (a1 >> 4 == 4064)
  {
    return a1 - 65023;
  }

  else
  {
    return v1;
  }
}

uint64_t **sub_275CB1A8C(uint64_t **a1, unsigned int *a2, unsigned int *a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_275CB1B10(a1, v4, v6, v6);
      ++v6;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t sub_275CB1B10(uint64_t **a1, uint64_t *a2, unsigned int *a3, _DWORD *a4)
{
  v4 = *sub_275CB1BA8(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_275CB1BA8(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t sub_275CB1E6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *a1 = &unk_2884CB660;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  bzero((a1 + 32), 0x50uLL);
  *(a1 + 20) = *(a4 + 8);
  v7 = *a4;
  if (*a4)
  {
    v7 = CTFontCreateWithName(v7, *(a2 + 16), 0);
  }

  *(a1 + 8) = v7;
  return a1;
}

void *sub_275CB1EF0(void *a1)
{
  *a1 = &unk_2884CB660;
  sub_275CB1F44(a1);
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_275CB1F44(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = sub_275C98A80(v2);
    MEMORY[0x277C8CFC0](v3, 0x1070C40036CD406);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    v5 = sub_275C98A80(v4);
    MEMORY[0x277C8CFC0](v5, 0x1070C40036CD406);
    a1[5] = 0;
  }

  v6 = a1[6];
  if (v6)
  {
    v7 = sub_275C98A80(v6);
    MEMORY[0x277C8CFC0](v7, 0x1070C40036CD406);
    a1[6] = 0;
  }

  v8 = a1[7];
  if (v8)
  {
    v9 = sub_275C98A80(v8);
    MEMORY[0x277C8CFC0](v9, 0x1070C40036CD406);
    a1[7] = 0;
  }

  v10 = a1[8];
  if (v10)
  {
    MEMORY[0x277C8CFC0](v10, 0x1000C401B087D88);
    a1[8] = 0;
  }

  v11 = a1[9];
  if (v11)
  {
    MEMORY[0x277C8CFC0](v11, 0x1000C401B087D88);
    a1[9] = 0;
  }

  v12 = a1[10];
  if (v12)
  {
    MEMORY[0x277C8CFC0](v12, 0x1000C401B087D88);
    a1[10] = 0;
  }

  v13 = a1[11];
  if (v13)
  {
    MEMORY[0x277C8CFC0](v13, 0x1000C401B087D88);
    a1[11] = 0;
  }

  result = a1[12];
  if (result)
  {
    result = MEMORY[0x277C8CFC0](result, 0x1000C401B087D88);
    a1[12] = 0;
  }

  return result;
}

void sub_275CB204C(void *a1)
{
  sub_275CB1EF0(a1);

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CB2084(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(a1 + 32);
  v4 = *(a1 + 20);
  if (v2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && v4 != 0xFFFF)
  {
    memset(&v7, 0, sizeof(v7));
    CGAffineTransformMakeScale(&v7, 1.0, -1.0);
    CTFontCreatePathForGlyph(v2, v4, &v7);
    operator new();
  }

  return result;
}

uint64_t sub_275CB2154(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(a1 + 40);
  v4 = *(a1 + 22);
  if (v2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && v4 != 0xFFFF)
  {
    memset(&v7, 0, sizeof(v7));
    CGAffineTransformMakeScale(&v7, 1.0, -1.0);
    CTFontCreatePathForGlyph(v2, v4, &v7);
    operator new();
  }

  return result;
}

uint64_t sub_275CB2224(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(a1 + 48);
  v4 = *(a1 + 24);
  if (v2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && v4 != 0xFFFF)
  {
    memset(&v7, 0, sizeof(v7));
    CGAffineTransformMakeScale(&v7, 1.0, -1.0);
    CTFontCreatePathForGlyph(v2, v4, &v7);
    operator new();
  }

  return result;
}

uint64_t sub_275CB22F4(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(a1 + 56);
  v4 = *(a1 + 26);
  if (v2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && v4 != 0xFFFF)
  {
    memset(&v7, 0, sizeof(v7));
    CGAffineTransformMakeScale(&v7, 1.0, -1.0);
    CTFontCreatePathForGlyph(v2, v4, &v7);
    operator new();
  }

  return result;
}

uint64_t sub_275CB23C4(uint64_t a1)
{
  if (*(a1 + 104))
  {
    return *(a1 + 64);
  }

  v3 = sub_275CB2084(a1);
  if (*(a1 + 16) == 2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  result = sub_275CB2420(v3, v4);
  *(a1 + 64) = result;
  *(a1 + 104) |= 1u;
  return result;
}

uint64_t sub_275CB2420(void *a1, unsigned int a2)
{
  if (a1)
  {
    sub_275C9A36C(a1, a2, v3);
    if (v3[0] == 1)
    {
      operator new();
    }
  }

  return 0;
}

uint64_t sub_275CB24B0(uint64_t a1)
{
  if ((*(a1 + 104) & 2) != 0)
  {
    return *(a1 + 72);
  }

  v2 = sub_275CB2154(a1);
  result = sub_275CB2420(v2, *(a1 + 16) == 2);
  *(a1 + 72) = result;
  *(a1 + 104) |= 2u;
  return result;
}

uint64_t sub_275CB2508(uint64_t a1)
{
  if ((*(a1 + 104) & 4) != 0)
  {
    return *(a1 + 80);
  }

  v2 = sub_275CB2224(a1);
  result = sub_275CB2420(v2, *(a1 + 16) == 2);
  *(a1 + 80) = result;
  *(a1 + 104) |= 4u;
  return result;
}

uint64_t sub_275CB2560(uint64_t a1)
{
  if ((*(a1 + 104) & 8) != 0)
  {
    return *(a1 + 88);
  }

  v2 = sub_275CB2224(a1);
  if (*(a1 + 16) == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  result = sub_275CB2420(v2, v3);
  *(a1 + 88) = result;
  *(a1 + 104) |= 8u;
  return result;
}

uint64_t sub_275CB25BC(uint64_t a1)
{
  if ((*(a1 + 104) & 0x10) != 0)
  {
    return *(a1 + 96);
  }

  v2 = sub_275CB22F4(a1);
  if (*(a1 + 16) == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  result = sub_275CB2420(v2, v3);
  *(a1 + 96) = result;
  *(a1 + 104) |= 0x10u;
  return result;
}

const CGPath *sub_275CB2618(uint64_t a1, _OWORD *a2, double a3)
{
  Mutable = CGPathCreateMutable();
  sub_275CB271C(a1, Mutable, a3);
  sub_275C98870(v12, Mutable);
  if (v13[32] == 1)
  {
    v7 = v13;
  }

  else
  {
    v7 = sub_275C98D24(v12);
  }

  v8 = *v7;
  v9 = v7[1];
  *a2 = *(v7 + 1);
  if (v8 != 0.0 || v9 != 0.0)
  {
    CGPathRelease(Mutable);
    memset(&v11, 0, sizeof(v11));
    CGAffineTransformMakeTranslation(&v11, -v8, -v9);
    Mutable = CGPathCreateMutable();
    sub_275C99C28(v12, Mutable, &v11, 0);
  }

  sub_275C98A80(v12);
  return Mutable;
}

void sub_275CB2704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_275C98A80(va);
  _Unwind_Resume(a1);
}

double sub_275CB271C(uint64_t a1, CGPath *a2, double a3)
{
  v6 = sub_275CB2084(a1);
  v7 = sub_275CB2154(a1);
  v8 = sub_275CB2224(a1);
  v9 = sub_275CB22F4(a1);
  v10 = sub_275CB23C4(a1);
  v75 = sub_275CB24B0(a1);
  v11 = sub_275CB2508(a1);
  v12 = sub_275CB2560(a1);
  v13 = sub_275CB25BC(a1);
  v14 = a3;
  if (!(v6 | v7))
  {
    return a3 - v14;
  }

  v15 = v13;
  v16 = 0.0;
  v17 = 0.0;
  if (v6)
  {
    if (*(a1 + 16) == 2)
    {
      if (*(v6 + 120))
      {
        v18 = (v6 + 88);
      }

      else
      {
        v18 = sub_275C98D24(v6);
      }

      Height = CGRectGetHeight(*v18);
    }

    else
    {
      if (*(v6 + 120))
      {
        v19 = (v6 + 88);
      }

      else
      {
        v19 = sub_275C98D24(v6);
      }

      Height = CGRectGetWidth(*v19);
    }

    v17 = Height;
  }

  if (v7)
  {
    if (*(a1 + 16) == 2)
    {
      if (*(v7 + 120))
      {
        v21 = (v7 + 88);
      }

      else
      {
        v21 = sub_275C98D24(v7);
      }

      Width = CGRectGetHeight(*v21);
    }

    else
    {
      if (*(v7 + 120))
      {
        v22 = (v7 + 88);
      }

      else
      {
        v22 = sub_275C98D24(v7);
      }

      Width = CGRectGetWidth(*v22);
    }

    v16 = Width;
  }

  v14 = a3 - (v17 + v16);
  if (v8)
  {
    if (*(a1 + 16) == 2)
    {
      if (*(v8 + 120))
      {
        v24 = (v8 + 88);
      }

      else
      {
        v24 = sub_275C98D24(v8);
      }

      v26 = CGRectGetHeight(*v24);
    }

    else
    {
      if (*(v8 + 120))
      {
        v25 = (v8 + 88);
      }

      else
      {
        v25 = sub_275C98D24(v8);
      }

      v26 = CGRectGetWidth(*v25);
    }

    v14 = v14 - v26;
  }

  v27 = 0.0;
  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  if (v14 >= 0.0)
  {
    goto LABEL_79;
  }

  v31 = 0.0;
  if (v10)
  {
    v31 = *(v10 + 40);
  }

  if (v11)
  {
    v30 = *(v11 + 40);
  }

  v32 = 0.0;
  v33 = 0.0;
  if (v75)
  {
    v33 = *(v75 + 40);
  }

  v34 = v31 + v30;
  if (v12)
  {
    v32 = *(v12 + 40);
  }

  v35 = v33 + v32;
  v36 = fabs(v14);
  if (v36 >= v34)
  {
    v37 = v34;
  }

  else
  {
    v37 = v36;
  }

  v38 = v36 - v37;
  if (v38 >= v35)
  {
    v38 = v35;
  }

  if (v34 >= v35)
  {
    v34 = v35;
  }

  v39 = fabs(v14 * 0.5);
  if (v39 < v34)
  {
    v34 = v39;
  }

  if (v8)
  {
    v40 = v34;
  }

  else
  {
    v40 = v38;
  }

  if (v8)
  {
    v41 = v34;
  }

  else
  {
    v41 = v37;
  }

  if (v10)
  {
    v30 = v41;
    if (*(v10 + 40) < v41)
    {
      v30 = *(v10 + 40);
    }

    if (v75)
    {
LABEL_63:
      v29 = v40;
      if (*(v75 + 40) < v40)
      {
        v29 = *(v75 + 40);
      }

      goto LABEL_71;
    }
  }

  else
  {
    v30 = 0.0;
    if (v41 <= 0.0)
    {
      v30 = v41;
    }

    if (v75)
    {
      goto LABEL_63;
    }
  }

  if (v40 <= 0.0)
  {
    v29 = v40;
  }

  else
  {
    v29 = 0.0;
  }

LABEL_71:
  v28 = v41 - v30;
  if (v11)
  {
    if (*(v11 + 40) < v28)
    {
      v28 = *(v11 + 40);
    }
  }

  else if (v28 > 0.0)
  {
    v28 = 0.0;
  }

  v42 = v40 - v29;
  if (v12)
  {
    v27 = *(v12 + 40);
    if (v27 < v42)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  if (v42 <= 0.0)
  {
LABEL_78:
    v27 = v42;
  }

LABEL_79:
  if (v9)
  {
    if (v14 >= 0.0)
    {
      v43 = v14;
    }

    else
    {
      v43 = 0.0;
    }
  }

  else
  {
    v43 = 0.0;
    if (v14 > 0.0)
    {
      if (v10 && v75)
      {
        v30 = v30 - v14 * 0.5;
        v29 = v29 - v14 * 0.5;
      }

      else
      {
        v44 = v29 - v14;
        if (!v75)
        {
          v44 = v29;
        }

        if (v10)
        {
          v30 = v30 - v14;
        }

        else
        {
          v29 = v44;
        }
      }
    }
  }

  v81 = *MEMORY[0x277CBF348];
  if (v6)
  {
    v14 = v14 + v30;
    if (a2)
    {
      sub_275C9A6A0(v6, a2, &v81, *(a1 + 16) == 2, v10, -v30);
    }
  }

  if (v9)
  {
    v45 = v15 == 0;
  }

  else
  {
    v45 = 1;
  }

  v46 = !v45;
  if (v43 > 0.0)
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  if (v8)
  {
    if (v47)
    {
      if (*(a1 + 16) == 2)
      {
        if (*(v9 + 120))
        {
          v48 = (v9 + 88);
        }

        else
        {
          v48 = sub_275C98D24(v9);
        }

        v53 = CGRectGetHeight(*v48);
      }

      else
      {
        if (*(v9 + 120))
        {
          v51 = (v9 + 88);
        }

        else
        {
          v51 = sub_275C98D24(v9);
        }

        v53 = CGRectGetWidth(*v51);
      }

      v54 = *(v15 + 40);
      if (v53 - v43 * 0.5 < v54)
      {
        if (*(a1 + 16) == 2)
        {
          if (*(v9 + 120))
          {
            v55 = (v9 + 88);
          }

          else
          {
            v55 = sub_275C98D24(v9);
          }

          v61 = CGRectGetHeight(*v55);
        }

        else
        {
          if (*(v9 + 120))
          {
            v56 = (v9 + 88);
          }

          else
          {
            v56 = sub_275C98D24(v9);
          }

          v61 = CGRectGetWidth(*v56);
        }

        v54 = v61 - v43 * 0.5;
      }

      if (*(a1 + 16) == 2)
      {
        if (*(v9 + 120))
        {
          v62 = (v9 + 88);
        }

        else
        {
          v62 = sub_275C98D24(v9);
        }

        v64 = CGRectGetHeight(*v62);
      }

      else
      {
        if (*(v9 + 120))
        {
          v63 = (v9 + 88);
        }

        else
        {
          v63 = sub_275C98D24(v9);
        }

        v64 = CGRectGetWidth(*v63);
      }

      v14 = v54 + v14 - v64;
      if (a2)
      {
        sub_275C9A6A0(v9, a2, &v81, *(a1 + 16) == 2, v15, -v54);
      }
    }

    if ((v28 == 0.0 || !v11) && (v27 == 0.0 || !v12))
    {
      if (a2)
      {
        sub_275C9A6A0(v8, a2, &v81, *(a1 + 16) == 2, 0, 0.0);
      }
    }

    else
    {
      if (a2)
      {
        sub_275C98CD0(v8);
        v79 = 0;
        v80 = 0;
        __p = 0;
        sub_275C938A4(&__p, *(v8 + 8), *(v8 + 16), (*(v8 + 16) - *(v8 + 8)) >> 4);
        sub_275C9A8D4(v8, v11, &__p, -v28);
        sub_275C9A8D4(v8, v12, &__p, -v27);
        *v77 = *MEMORY[0x277CBF348];
        sub_275C99A68(v8, *(a1 + 16) == 2, v77, &__p);
        memset(&v76, 0, sizeof(v76));
        CGAffineTransformMakeTranslation(&v76, v81.f64[0] - v77[0], v81.f64[1] - v77[1]);
        sub_275C99C28(v8, a2, &v76, &__p);
        v65 = *(a1 + 16) == 2 ? 3 : 2;
        sub_275C99A68(v8, v65, &v81, &__p);
        v81 = vaddq_f64(*&v76.tx, vmlaq_n_f64(vmulq_n_f64(*&v76.c, v81.f64[1]), *&v76.a, v81.f64[0]));
        if (__p)
        {
          v79 = __p;
          operator delete(__p);
        }
      }

      v14 = v27 + v28 + v14;
    }

    if (!v47)
    {
      goto LABEL_197;
    }

    v49 = (a1 + 16);
    if (*(a1 + 16) == 2)
    {
      if (*(v9 + 120))
      {
        v66 = (v9 + 88);
      }

      else
      {
        v66 = sub_275C98D24(v9);
      }

      v68 = CGRectGetHeight(*v66);
    }

    else
    {
      if (*(v9 + 120))
      {
        v67 = (v9 + 88);
      }

      else
      {
        v67 = sub_275C98D24(v9);
      }

      v68 = CGRectGetWidth(*v67);
    }

    v43 = v43 * 0.5;
    v58 = *(v15 + 40);
    if (v68 - v43 >= v58)
    {
      goto LABEL_186;
    }

    v59 = *(v9 + 120);
    if (*v49 == 2)
    {
      if (*(v9 + 120))
      {
        goto LABEL_179;
      }

      goto LABEL_136;
    }

    goto LABEL_181;
  }

  if (v47)
  {
    v49 = (a1 + 16);
    if (*(a1 + 16) == 2)
    {
      if (*(v9 + 120))
      {
        v50 = (v9 + 88);
      }

      else
      {
        v50 = sub_275C98D24(v9);
      }

      v57 = CGRectGetHeight(*v50);
    }

    else
    {
      if (*(v9 + 120))
      {
        v52 = (v9 + 88);
      }

      else
      {
        v52 = sub_275C98D24(v9);
      }

      v57 = CGRectGetWidth(*v52);
    }

    v58 = *(v15 + 40);
    if (v57 - v43 >= v58)
    {
      goto LABEL_186;
    }

    v59 = *(v9 + 120);
    if (*v49 == 2)
    {
      if (*(v9 + 120))
      {
LABEL_179:
        v60 = (v9 + 88);
        goto LABEL_180;
      }

LABEL_136:
      v60 = sub_275C98D24(v9);
LABEL_180:
      v69 = CGRectGetHeight(*v60);
LABEL_185:
      v58 = v69 - v43;
LABEL_186:
      if (*v49 == 2)
      {
        if (*(v9 + 120))
        {
          v71 = (v9 + 88);
        }

        else
        {
          v71 = sub_275C98D24(v9);
        }

        v73 = CGRectGetHeight(*v71);
      }

      else
      {
        if (*(v9 + 120))
        {
          v72 = (v9 + 88);
        }

        else
        {
          v72 = sub_275C98D24(v9);
        }

        v73 = CGRectGetWidth(*v72);
      }

      v14 = v58 + v14 - v73;
      if (a2)
      {
        sub_275C9A6A0(v9, a2, &v81, *v49 == 2, v15, -v58);
      }

      goto LABEL_197;
    }

LABEL_181:
    if (v59)
    {
      v70 = (v9 + 88);
    }

    else
    {
      v70 = sub_275C98D24(v9);
    }

    v69 = CGRectGetWidth(*v70);
    goto LABEL_185;
  }

LABEL_197:
  if (v7)
  {
    v14 = v29 + v14;
    if (a2)
    {
      sub_275C9A6A0(v7, a2, &v81, *(a1 + 16) == 2, v75, -v29);
    }
  }

  return a3 - v14;
}

void sub_275CB2FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_275CB3680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_275CB373C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_275C97498(a1, v4, v6, v6);
      v6 += 24;
    }

    while (v6 != a3);
  }

  return a1;
}

void *sub_275CB37C0(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *sub_275CB3858(a1, &v6, a2);
  if (!result)
  {
    sub_275CB38E0();
  }

  return result;
}

void *sub_275CB3858(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_275CB397C(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_275CB397C((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_275CB3960(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_275CB3A80(v3, v2);
  _Unwind_Resume(a1);
}

BOOL sub_275CB397C(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 4);
  v4 = *(a2 + 4);
  if (v3 < v4)
  {
    return 1;
  }

  if (v3 != v4)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  v5 = a2 + 8;
  v6 = v7;
  v8 = *(v5 + 23);
  v11 = *(a1 + 8);
  v9 = a1 + 8;
  v10 = v11;
  v12 = *(v9 + 23);
  if (v12 >= 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = *(v9 + 8);
  }

  if (v12 < 0)
  {
    v9 = v10;
  }

  if (v8 >= 0)
  {
    v14 = *(v5 + 23);
  }

  else
  {
    v14 = *(v5 + 8);
  }

  if (v8 < 0)
  {
    v5 = v6;
  }

  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = memcmp(v9, v5, v15);
  if (v16)
  {
    return v16 < 0;
  }

  else
  {
    return v13 < v14;
  }
}

void *sub_275CB3A2C(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = a1 + 1;
  if (*(a2 + 31) < 0)
  {
    sub_275CAF534(v3, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    v3[2] = *(a2 + 24);
    *v3 = v4;
  }

  return a1;
}

void sub_275CB3A80(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_275CB3AE4(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *sub_275CB3858(a1, &v6, a2);
  if (!result)
  {
    sub_275CB3B7C();
  }

  return result;
}

void sub_275CB3C08(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_275CB3A80(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_275CB3C24(void *a1, uint64_t *a2)
{
  v3 = sub_275CB3A2C(a1, *a2);
  sub_275C8FAB8((v3 + 4));
  return a1;
}

void sub_275CB3C58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

double sub_275CB3F9C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *a1 = &unk_2884CB690;
  *(a1 + 8) = a1 + 16;
  *(a1 + 40) = 0u;
  *(a1 + 32) = a1 + 40;
  *(a1 + 64) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = a1 + 64;
  *(a1 + 80) = a1 + 88;
  *(a1 + 112) = 0u;
  *(a1 + 104) = a1 + 112;
  *(a1 + 136) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 128) = a1 + 136;
  *(a1 + 152) = a1 + 160;
  *(a1 + 184) = 0u;
  *(a1 + 176) = a1 + 184;
  *(a1 + 208) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 200) = a1 + 208;
  *(a1 + 224) = a1 + 232;
  *(a1 + 256) = 0u;
  *(a1 + 248) = a1 + 256;
  *(a1 + 280) = 0u;
  *(a1 + 272) = a1 + 280;
  *(a1 + 304) = 0u;
  *(a1 + 296) = a1 + 304;
  *(a1 + 328) = 0u;
  *(a1 + 320) = a1 + 328;
  *(a1 + 352) = 0u;
  *(a1 + 344) = a1 + 352;
  *(a1 + 376) = 0u;
  *(a1 + 368) = a1 + 376;
  *(a1 + 400) = 0u;
  *(a1 + 392) = a1 + 400;
  *(a1 + 424) = 0u;
  *(a1 + 416) = a1 + 424;
  *(a1 + 448) = 0u;
  *(a1 + 440) = a1 + 448;
  *(a1 + 472) = 0u;
  *(a1 + 464) = a1 + 472;
  *(a1 + 496) = 0u;
  *(a1 + 488) = a1 + 496;
  *(a1 + 520) = 0u;
  *(a1 + 512) = a1 + 520;
  *(a1 + 544) = 0u;
  *(a1 + 536) = a1 + 544;
  return result;
}

void sub_275CB40D4(uint64_t a1)
{
  sub_275CB410C(a1);

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CB410C(uint64_t a1)
{
  *a1 = &unk_2884CB690;
  sub_275CB4260(a1 + 536, *(a1 + 544));
  sub_275C8EC0C(a1 + 512, *(a1 + 520));
  sub_275C8EC0C(a1 + 488, *(a1 + 496));
  sub_275C8EC0C(a1 + 464, *(a1 + 472));
  sub_275C8EC0C(a1 + 440, *(a1 + 448));
  sub_275C8EC0C(a1 + 416, *(a1 + 424));
  sub_275C8EC0C(a1 + 392, *(a1 + 400));
  sub_275C8EC0C(a1 + 368, *(a1 + 376));
  sub_275C8EC0C(a1 + 344, *(a1 + 352));
  sub_275C8EC0C(a1 + 320, *(a1 + 328));
  sub_275C8EC0C(a1 + 296, *(a1 + 304));
  sub_275CB42F0(a1 + 272, *(a1 + 280));
  sub_275CB42F0(a1 + 248, *(a1 + 256));
  sub_275CB42F0(a1 + 224, *(a1 + 232));
  sub_275CB42F0(a1 + 200, *(a1 + 208));
  sub_275C8EC0C(a1 + 176, *(a1 + 184));
  sub_275C8EC0C(a1 + 152, *(a1 + 160));
  sub_275C8EC0C(a1 + 128, *(a1 + 136));
  sub_275CB4354(a1 + 104, *(a1 + 112));
  sub_275CB43B4(a1 + 80, *(a1 + 88));
  sub_275CB42F0(a1 + 56, *(a1 + 64));
  sub_275C8EC0C(a1 + 32, *(a1 + 40));
  sub_275C8EC0C(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_275CB4260(uint64_t a1, const void **a2)
{
  if (a2)
  {
    sub_275CB4260(a1, *a2);
    sub_275CB4260(a1, a2[1]);
    sub_275CB42BC(a2 + 6);

    operator delete(a2);
  }
}

const void **sub_275CB42BC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_275CB42F0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_275CB42F0(a1, *a2);
    sub_275CB42F0(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      a2[7] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void sub_275CB4354(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_275CB4354(a1, *a2);
    sub_275CB4354(a1, *(a2 + 1));
    v4 = (a2 + 48);
    sub_275C97BF0(&v4);
    operator delete(a2);
  }
}