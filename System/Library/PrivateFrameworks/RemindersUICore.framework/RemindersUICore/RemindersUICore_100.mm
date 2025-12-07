unsigned __int8 *sub_21DA3FD3C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v6 - 8);
  if (*(v8 + 64) <= *(v7 + 64))
  {
    v9 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v9 = *(*(v6 - 8) + 64);
  }

  v10 = a1[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_19;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_19:
  if (v10 == 1)
  {
    v15 = *(v6 - 8);
  }

  else
  {
    v15 = *(*(a3 + 16) - 8);
  }

  if (v10 == 1)
  {
    v16 = *(a3 + 24);
  }

  else
  {
    v16 = *(a3 + 16);
  }

  (*(v15 + 8))(a1, v16);
  v17 = a2[v9];
  v18 = v17 - 2;
  if (v17 >= 2)
  {
    if (v9 <= 3)
    {
      v19 = v9;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *a2;
      }

      else if (v19 == 3)
      {
        v20 = *a2 | (a2[2] << 16);
      }

      else
      {
        v20 = *a2;
      }

LABEL_37:
      v21 = (v20 | (v18 << (8 * v9))) + 2;
      v17 = v20 + 2;
      if (v9 < 4)
      {
        v17 = v21;
      }

      goto LABEL_39;
    }

    if (v19)
    {
      v20 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v22 = v17 == 1;
  if (v17 == 1)
  {
    v23 = v8;
  }

  else
  {
    v23 = v7;
  }

  if (v17 == 1)
  {
    v24 = v6;
  }

  else
  {
    v24 = v5;
  }

  (*(v23 + 16))(a1, a2, v24);
  a1[v9] = v22;
  return a1;
}

uint64_t sub_21DA3FF4C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  if (*(*(v4 - 8) + 64) <= *(v5 + 64))
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = *(*(v4 - 8) + 64);
  }

  v7 = a2[v6];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      v10 = *a2;
    }

    else if (v9 == 2)
    {
      v10 = *a2;
    }

    else if (v9 == 3)
    {
      v10 = *a2 | (a2[2] << 16);
    }

    else
    {
      v10 = *a2;
    }

    v11 = (v10 | (v8 << (8 * v6))) + 2;
    v7 = v10 + 2;
    if (v6 < 4)
    {
      v7 = v11;
    }
  }

LABEL_18:
  v12 = v7 == 1;
  if (v7 == 1)
  {
    v5 = *(v4 - 8);
  }

  (*(v5 + 32))(a1);
  *(a1 + v6) = v12;
  return a1;
}

unsigned __int8 *sub_21DA400A8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v6 - 8);
  if (*(v8 + 64) <= *(v7 + 64))
  {
    v9 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v9 = *(*(v6 - 8) + 64);
  }

  v10 = a1[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_19;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_19:
  if (v10 == 1)
  {
    v15 = *(v6 - 8);
  }

  else
  {
    v15 = *(*(a3 + 16) - 8);
  }

  if (v10 == 1)
  {
    v16 = *(a3 + 24);
  }

  else
  {
    v16 = *(a3 + 16);
  }

  (*(v15 + 8))(a1, v16);
  v17 = a2[v9];
  v18 = v17 - 2;
  if (v17 >= 2)
  {
    if (v9 <= 3)
    {
      v19 = v9;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *a2;
      }

      else if (v19 == 3)
      {
        v20 = *a2 | (a2[2] << 16);
      }

      else
      {
        v20 = *a2;
      }

LABEL_37:
      v21 = (v20 | (v18 << (8 * v9))) + 2;
      v17 = v20 + 2;
      if (v9 < 4)
      {
        v17 = v21;
      }

      goto LABEL_39;
    }

    if (v19)
    {
      v20 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v22 = v17 == 1;
  if (v17 == 1)
  {
    v23 = v8;
  }

  else
  {
    v23 = v7;
  }

  if (v17 == 1)
  {
    v24 = v6;
  }

  else
  {
    v24 = v5;
  }

  (*(v23 + 32))(a1, a2, v24);
  a1[v9] = v22;
  return a1;
}

uint64_t sub_21DA402B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_21DA403E0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_21DA405A8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 24) - 8) + 64);
  if (v2 <= *(*(*(a2 + 16) - 8) + 64))
  {
    v2 = *(*(*(a2 + 16) - 8) + 64);
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return v3;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    LODWORD(v3) = v6 + 2;
    if (v2 >= 4)
    {
      return v3;
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

void sub_21DA40658(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (a2 > 1)
  {
    v5 = *(*(a3 + 24) - 8);
    if (*(v5 + 64) <= *(*(*(a3 + 16) - 8) + 64))
    {
      v6 = *(*(*(a3 + 16) - 8) + 64);
    }

    else
    {
      v6 = *(v5 + 64);
    }

    v7 = a2 - 2;
    if (v6 < 4)
    {
      a1[v6] = (v7 >> (8 * v6)) + 2;
      if (v6)
      {
        v9 = v7 & ~(-1 << (8 * v6));
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v9;
          a1[2] = BYTE2(v9);
        }

        else if (v6 == 2)
        {
          *a1 = v9;
        }

        else
        {
          *a1 = v7;
        }
      }
    }

    else
    {
      a1[v6] = 2;
      bzero(a1, v6);
      *a1 = v7;
    }
  }

  else
  {
    v3 = *(*(a3 + 24) - 8);
    v4 = *(*(*(a3 + 16) - 8) + 64);
    if (*(v3 + 64) > v4)
    {
      v4 = *(v3 + 64);
    }

    a1[v4] = a2;
  }
}

uint64_t sub_21DA40794()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE64E08);
  v1 = __swift_project_value_buffer(v0, qword_27CE64E08);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21DA4085C()
{
  v1 = [v0 titleLabel];
  v2 = [v1 font];

  if (v2)
  {
    v3 = [v2 fontDescriptor];
    v4 = [v3 fontDescriptorWithDesign_];

    if (v4)
    {
      v6 = [objc_opt_self() fontWithDescriptor:v4 size:0.0];
    }

    else
    {
      v6 = v2;
    }

    v5 = [v0 titleLabel];
    [v5 setFont_];
  }
}

void sub_21DA409AC()
{
  v1 = [v0 searchField];
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  v3 = [v1 font];

  if (!v3)
  {
    return;
  }

  v4 = [v3 fontDescriptor];
  v5 = [v4 fontDescriptorWithDesign_];

  if (v5)
  {
    v6 = [objc_opt_self() fontWithDescriptor:v5 size:0.0];
  }

  else
  {
    v6 = v3;
  }

  v7 = [v0 searchField];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 setFont_];
}

Swift::Void __swiftcall TTRIFontCustomizable.replaceFontWithRounded()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 8))();
  if (v4)
  {
    v9 = v4;
    v5 = [v4 fontDescriptor];
    v6 = [v5 fontDescriptorWithDesign_];

    if (v6)
    {
      v7 = [objc_opt_self() fontWithDescriptor:v6 size:0.0];
    }

    else
    {
      v8 = v9;
      v7 = v9;
    }

    (*(v2 + 16))(v7, v3, v2);
  }
}

void (*UILabel.ttr_font.modify(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 font];
  return sub_21DA41DE0;
}

void (*sub_21DA40C90(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 font];
  return sub_21DA41DE0;
}

void (*UITextField.ttr_font.modify(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 font];
  return sub_21DA41DE0;
}

id UITextView.ttr_font.getter()
{
  v1 = [v0 font];

  return v1;
}

void UITextView.ttr_font.setter(void *a1)
{
  [v1 setFont_];
}

void (*UITextView.ttr_font.modify(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 font];
  return sub_21DA40E24;
}

void sub_21DA40E24(id *a1)
{
  v1 = *a1;
  [a1[1] setFont_];
}

void sub_21DA40E6C(char a1)
{
  if (a1)
  {
    v2 = [v1 font];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 fontDescriptor];
      v5 = [v4 fontDescriptorWithDesign_];

      if (v5)
      {
        v6 = [objc_opt_self() fontWithDescriptor:v5 size:0.0];
      }

      else
      {
        v6 = v3;
      }

      [v1 setFont_];
    }
  }
}

void (*sub_21DA40F7C(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 font];
  return sub_21DA40E24;
}

id UIButton.ttr_font.getter()
{
  v1 = [v0 titleLabel];
  v2 = [v1 font];

  return v2;
}

void sub_21DA41030(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 titleLabel];
  v4 = [v3 font];

  *a2 = v4;
}

void sub_21DA41094(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = [*a2 titleLabel];
  [v3 setFont_];
}

void UIButton.ttr_font.setter(void *a1)
{
  v2 = [v1 titleLabel];
  [v2 setFont_];
}

void (*UIButton.ttr_font.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 titleLabel];
  v4 = [v3 font];

  *a1 = v4;
  return sub_21DA411EC;
}

void sub_21DA411EC(id *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v2 = v2;
    v4 = [v3 titleLabel];
    [v4 setFont_];
  }

  else
  {
    v4 = [a1[1] titleLabel];
    [v4 setFont_];
  }
}

void sub_21DA41298(void *a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = a1;
    sub_21DA4085C();
  }
}

id sub_21DA412E8()
{
  v1 = [v0 titleLabel];
  v2 = [v1 font];

  return v2;
}

void sub_21DA41340(void *a1)
{
  v2 = [v1 titleLabel];
  [v2 setFont_];
}

void (*sub_21DA413AC(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = UIButton.ttr_font.modify(v2);
  return sub_21D4C3D30;
}

id UISearchBar.ttr_font.getter()
{
  result = [v0 searchField];
  if (result)
  {
    v2 = result;
    v3 = [result font];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21DA4147C(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 searchField];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 font];

    *a2 = v5;
  }

  else
  {
    __break(1u);
  }
}

void sub_21DA414E8(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = [*a2 searchField];
  if (v3)
  {
    v4 = v3;
    [v3 setFont_];
  }

  else
  {
    __break(1u);
  }
}

void UISearchBar.ttr_font.setter(void *a1)
{
  v3 = [v1 searchField];
  if (v3)
  {
    v4 = v3;
    [v3 setFont_];
  }

  else
  {
    __break(1u);
  }
}

void (*UISearchBar.ttr_font.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  result = [v1 searchField];
  if (result)
  {
    v4 = result;
    v5 = [result font];

    *a1 = v5;
    return sub_21DA41658;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21DA41658(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if ((a2 & 1) == 0)
  {
    v7 = *a1;
    v6 = [v2 searchField];
    if (v6)
    {
      v3 = v6;
      [v6 setFont_];
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  v3 = *a1;
  v4 = [v2 searchField];
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  [v4 setFont_];

  v7 = v3;
LABEL_6:
}

void sub_21DA4171C(void *a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = a1;
    sub_21DA409AC();
  }
}

id sub_21DA4176C()
{
  result = [v0 searchField];
  if (result)
  {
    v2 = result;
    v3 = [result font];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21DA417CC(void *a1)
{
  v3 = [v1 searchField];
  if (v3)
  {
    v4 = v3;
    [v3 setFont_];
  }

  else
  {
    __break(1u);
  }
}

void (*sub_21DA41840(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = UISearchBar.ttr_font.modify(v2);
  return sub_21D4C30A8;
}

id UIBarItem.ttr_font.getter()
{
  result = [v0 titleTextAttributesForState_];
  if (result)
  {
    v2 = result;
    type metadata accessor for Key(0);
    sub_21D112874();
    v3 = sub_21DBF9E6C();

    if (v3)
    {
      if (*(v3 + 16))
      {
        v4 = sub_21D10FE34(*MEMORY[0x277D740A8]);
        if (v5)
        {
          sub_21D0CEB98(*(v3 + 56) + 32 * v4, v7);

          sub_21DA41C6C();
          if (swift_dynamicCast())
          {
            return v6;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void UIBarItem.ttr_font.setter(void *a1)
{
  v2 = v1;
  v4 = [v1 titleTextAttributesForState_];
  if (!v4)
  {
    v15 = 0;
    if (a1)
    {
      goto LABEL_6;
    }

    v6 = 0;
    goto LABEL_12;
  }

  v5 = v4;
  type metadata accessor for Key(0);
  sub_21D112874();
  v6 = sub_21DBF9E6C();

  v15 = v6;
  if (!a1)
  {
    if (v6)
    {
      sub_21D983190(*MEMORY[0x277D740A8], &v13);
      v6 = v15;
      goto LABEL_13;
    }

LABEL_12:
    v13 = 0u;
    v14 = 0u;
LABEL_13:
    sub_21D1A8418(&v13);
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (v6)
  {
    v7 = a1;
    goto LABEL_7;
  }

LABEL_6:
  v7 = a1;
  v6 = sub_21D11274C(MEMORY[0x277D84F90]);
LABEL_7:
  v15 = v6;
  v8 = *MEMORY[0x277D740A8];
  *(&v14 + 1) = sub_21DA41C6C();
  *&v13 = v7;
  sub_21D0CF2E8(&v13, v12);
  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21D476CE0(v12, v8, isUniquelyReferenced_nonNull_native);

  v15 = v6;
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_8:
  type metadata accessor for Key(0);
  sub_21D112874();
  v11 = sub_21DBF9E5C();
LABEL_15:
  [v2 setTitleTextAttributes:v11 forState:0];
}

void (*UIBarItem.ttr_font.modify(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = UIBarItem.ttr_font.getter();
  return sub_21DA41BB4;
}

void sub_21DA41BB4(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    UIBarItem.ttr_font.setter(v2);
  }

  else
  {
    UIBarItem.ttr_font.setter(*a1);
  }
}

void (*sub_21DA41C24(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = UIBarItem.ttr_font.getter();
  return sub_21DA41BB4;
}

unint64_t sub_21DA41C6C()
{
  result = qword_280D176B0;
  if (!qword_280D176B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D176B0);
  }

  return result;
}

uint64_t sub_21DA41CF4()
{
  if (qword_27CE56FD0 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF84BC();
  __swift_project_value_buffer(v0, qword_27CE64E08);
  v1 = sub_21DBF84AC();
  v2 = sub_21DBFAECC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21D0C9000, v1, v2, "Not intended to be called", v3, 2u);
    MEMORY[0x223D46520](v3, -1, -1);
  }

  return 0;
}

id sub_21DA41E60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRRouter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL TTRRelativeInsertionPosition.siblingAndIsAfter.getter(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v2, a2, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(a2 + 16);
  v11 = *(v10 - 8);
  if (EnumCaseMultiPayload > 1)
  {
    v12 = 1;
    v13 = EnumCaseMultiPayload != 2;
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v11 + 32))(a1, v7, v10);
    v12 = 0;
    v13 = 1;
  }

  else
  {
    (*(v11 + 32))(a1, v7, v10);
    v12 = 0;
    v13 = 0;
  }

  (*(v11 + 56))(a1, v12, 1, v10);
  return v13;
}

uint64_t TTRRelativeInsertionPosition.mapSibling<A>(_:)(void (*a1)(char *), void x1_0, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15, v11);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    (*(v7 + 32))(v9, v13, v6);
    a1(v9);
    (*(v7 + 8))(v9, v6);
  }

  type metadata accessor for TTRRelativeInsertionPosition(0, a3, v16, v17);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TTRRelativeInsertionPosition.optionalMapSibling<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v54 = a2;
  v55 = a1;
  v57 = a5;
  v8 = sub_21DBFBA8C();
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v56 = *(a4 - 8);
  MEMORY[0x28223BE20](v14);
  v51 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v50 = &v50 - v17;
  v18 = *(a3 + 16);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - v24;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v5, a3, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v37 = type metadata accessor for TTRRelativeInsertionPosition(0, a4, v32, v33);
    v38 = v57;
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v19 + 32))(v25, v29, v18);
    v55(v25);
    (*(v19 + 8))(v25, v18);
    v39 = v56;
    if ((*(v56 + 48))(v13, 1, a4) == 1)
    {
      (*(v52 + 8))(v13, v53);
      goto LABEL_8;
    }

    v46 = *(v39 + 32);
    v47 = v50;
    v46(v50, v13, a4);
    v38 = v57;
    v46(v57, v47, a4);
    v37 = type metadata accessor for TTRRelativeInsertionPosition(0, a4, v48, v49);
  }

  else
  {
    (*(v19 + 32))(v22, v29, v18);
    v55(v22);
    (*(v19 + 8))(v22, v18);
    v34 = v56;
    if ((*(v56 + 48))(v10, 1, a4) == 1)
    {
      (*(v52 + 8))(v10, v53);
LABEL_8:
      v40 = type metadata accessor for TTRRelativeInsertionPosition(0, a4, v35, v36);
      return (*(*(v40 - 8) + 56))(v57, 1, 1, v40);
    }

    v42 = *(v34 + 32);
    v43 = v51;
    v42(v51, v10, a4);
    v38 = v57;
    v42(v57, v43, a4);
    v37 = type metadata accessor for TTRRelativeInsertionPosition(0, a4, v44, v45);
  }

  swift_storeEnumTagMultiPayload();
  return (*(*(v37 - 8) + 56))(v38, 0, 1, v37);
}

uint64_t TTRRelativeInsertionPosition.init(sibling:isAfter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for TTRRelativeInsertionPosition(0, a2, a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = *(a2 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, a2, v16) == 1)
  {
    v19 = sub_21DBFBA8C();
    (*(*(v19 - 8) + 8))(a1, v19);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v20 = *(v14 + 32);
    v20(v18, a1, a2);
    v20(v10, v18, a2);
    swift_storeEnumTagMultiPayload();
    v13 = v10;
  }

  return (*(v8 + 32))(a4, v13, v7);
}

uint64_t static TTRRelativeInsertionPosition<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v42 = a1;
  v43 = a2;
  v41 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v36 - v7;
  v10 = type metadata accessor for TTRRelativeInsertionPosition(0, v8, v8, v9);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  v19 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v21 = &v36 - v20;
  v23 = *(v22 + 48);
  v40 = v11;
  v24 = *(v11 + 16);
  v24(&v36 - v20, v42, v10, v19);
  (v24)(&v21[v23], v43, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_13;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_13;
    }

    v29 = 1;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload)
  {
    (v24)(v13, v21, v10);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_10;
    }

    v26 = v41;
    v27 = &v21[v23];
    v28 = v38;
    (*(v41 + 32))(v38, v27, a3);
    v29 = sub_21DBFA10C();
    v30 = *(v26 + 8);
    v30(v28, a3);
    v30(v13, a3);
LABEL_15:
    v18 = v40;
    goto LABEL_16;
  }

  (v24)(v16, v21, v10);
  if (!swift_getEnumCaseMultiPayload())
  {
    v31 = v41;
    v32 = &v21[v23];
    v33 = v37;
    (*(v41 + 32))(v37, v32, a3);
    v29 = sub_21DBFA10C();
    v34 = *(v31 + 8);
    v34(v33, a3);
    v34(v16, a3);
    goto LABEL_15;
  }

  v13 = v16;
LABEL_10:
  (*(v41 + 8))(v13, a3);
LABEL_13:
  v29 = 0;
  v10 = TupleTypeMetadata2;
LABEL_16:
  (*(v18 + 8))(v21, v10);
  return v29 & 1;
}

uint64_t Array<A>.index(forInsertingAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a3;
  v5[3] = a4;
  return Array<A>.index<A>(forInsertingAt:where:)(a1, sub_21DA42E10, v5, a2, a3, a3, a4);
}

uint64_t Array<A>.index<A>(forInsertingAt:where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a7;
  v36 = a3;
  v12 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v21 = type metadata accessor for TTRRelativeInsertionPosition(0, v20, v18, v19);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v35 - v23;
  (*(v25 + 16))(&v35 - v23, a1, v21, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 0;
    }

    else
    {
      return sub_21DBFA6DC();
    }
  }

  if (!EnumCaseMultiPayload)
  {
    v27 = (*(v12 + 32))(v17, v24, a6);
    v37 = a4;
    MEMORY[0x28223BE20](v27);
    *(&v35 - 6) = a5;
    *(&v35 - 5) = a6;
    v28 = v36;
    *(&v35 - 4) = v35;
    *(&v35 - 3) = a2;
    *(&v35 - 2) = v28;
    *(&v35 - 1) = v17;
    v29 = sub_21DBFA74C();
    swift_getWitnessTable(MEMORY[0x277D83988], v29);
    sub_21DBFACCC();
    v30 = v38;
    (*(v12 + 8))(v17, a6);
    return v30;
  }

  v31 = (*(v12 + 32))(v14, v24, a6);
  v37 = a4;
  MEMORY[0x28223BE20](v31);
  *(&v35 - 6) = a5;
  *(&v35 - 5) = a6;
  v32 = v36;
  *(&v35 - 4) = v35;
  *(&v35 - 3) = a2;
  *(&v35 - 2) = v32;
  *(&v35 - 1) = v14;
  v33 = sub_21DBFA74C();
  swift_getWitnessTable(MEMORY[0x277D83988], v33);
  result = sub_21DBFACCC();
  v30 = v38;
  if ((v39 & 1) != 0 || (v30 = v38 + 1, !__OFADD__(v38, 1)))
  {
    (*(v12 + 8))(v14, a6);
    return v30;
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.insert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27[1] = a4;
  v28 = a1;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v27 - v15;
  v19 = type metadata accessor for TTRRelativeInsertionPosition(0, v7, v17, v18);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v27 - v21;
  (*(v23 + 16))(v27 - v21, a2, v19, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v8 + 16))(v16, v28, v7);
      sub_21DBFA70C();
    }

    else
    {
      (*(v8 + 16))(v16, v28, v7);
      sub_21DBFA6FC();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v8 + 32))(v10, v22, v7);
    v29 = *v4;
    swift_getWitnessTable(MEMORY[0x277D83988], a3);
    sub_21DBFAD1C();
    if (v31)
    {
      (*(v8 + 8))(v10, v7);
      return 0;
    }

    v26 = v30;
    result = (*(v8 + 16))(v16, v28, v7);
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      return result;
    }

    sub_21DBFA70C();
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    (*(v8 + 32))(v13, v22, v7);
    v29 = *v4;
    swift_getWitnessTable(MEMORY[0x277D83988], a3);
    sub_21DBFAD1C();
    if (v31)
    {
      (*(v8 + 8))(v13, v7);
      return 0;
    }

    (*(v8 + 16))(v16, v28, v7);
    sub_21DBFA70C();
    (*(v8 + 8))(v13, v7);
  }

  return 1;
}

uint64_t sub_21DA435CC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_21DA43658(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (v6 > 7 || (v5 + 1) > 0x18 || (*(v4 + 80) & 0x100000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));

    return v3;
  }

  v10 = a2[v5];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v5 <= 3)
    {
      v12 = *(v4 + 64);
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_23;
      }

      v13 = *a2;
    }

    else if (v12 == 2)
    {
      v13 = *a2;
    }

    else if (v12 == 3)
    {
      v13 = *a2 | (a2[2] << 16);
    }

    else
    {
      v13 = *a2;
    }

    v14 = (v13 | (v11 << (8 * v5))) + 2;
    v10 = v13 + 2;
    if (v5 < 4)
    {
      v10 = v14;
    }
  }

LABEL_23:
  if (v10 == 1)
  {
    (*(v4 + 16))(__dst);
    *(v3 + v5) = 1;
    return v3;
  }

  if (!v10)
  {
    (*(v4 + 16))(__dst);
    *(v3 + v5) = 0;
    return v3;
  }

  return memcpy(__dst, a2, v5 + 1);
}

unsigned __int8 *sub_21DA437DC(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  v3 = result[v2];
  v4 = v3 - 2;
  if (v3 < 2)
  {
    goto LABEL_15;
  }

  if (v2 <= 3)
  {
    v5 = *(*(*(a2 + 16) - 8) + 64);
  }

  else
  {
    v5 = 4;
  }

  if (v5 <= 1)
  {
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = *result;
  }

  else if (v5 == 2)
  {
    v6 = *result;
  }

  else if (v5 == 3)
  {
    v6 = *result | (result[2] << 16);
  }

  else
  {
    v6 = *result;
  }

  v7 = (v6 | (v4 << (8 * v2))) + 2;
  v3 = v6 + 2;
  if (v2 < 4)
  {
    v3 = v7;
  }

LABEL_15:
  if (v3 <= 1)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  return result;
}

_BYTE *sub_21DA438B4(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = *(v3 + 64);
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v8 = *a2;
    }

    else if (v7 == 2)
    {
      v8 = *a2;
    }

    else if (v7 == 3)
    {
      v8 = *a2 | (a2[2] << 16);
    }

    else
    {
      v8 = *a2;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_15:
  if (v5 == 1)
  {
    v10 = a1;
    (*(v3 + 16))();
    v10[v4] = 1;
    return v10;
  }

  if (!v5)
  {
    v10 = a1;
    (*(v3 + 16))();
    v10[v4] = 0;
    return v10;
  }

  return memcpy(a1, a2, v4 + 1);
}

unsigned __int8 *sub_21DA439F4(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = 8 * v4;
  v6 = result[v4];
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v4 <= 3)
    {
      v8 = *(v3 + 64);
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_16;
      }

      v9 = *result;
    }

    else if (v8 == 2)
    {
      v9 = *result;
    }

    else if (v8 == 3)
    {
      v9 = *result | (result[2] << 16);
    }

    else
    {
      v9 = *result;
    }

    v10 = (v9 | (v7 << v5)) + 2;
    v6 = v9 + 2;
    if (v4 < 4)
    {
      v6 = v10;
    }
  }

LABEL_16:
  if (v6 <= 1)
  {
    v11 = result;
    v12 = a2;
    (*(v3 + 8))();
    a2 = v12;
    result = v11;
  }

  v13 = a2[v4];
  v14 = v13 - 2;
  if (v13 < 2)
  {
    goto LABEL_32;
  }

  if (v4 <= 3)
  {
    v15 = v4;
  }

  else
  {
    v15 = 4;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
    }

    else
    {
      v16 = *a2;
    }

LABEL_30:
    v17 = (v16 | (v14 << v5)) + 2;
    v13 = v16 + 2;
    if (v4 < 4)
    {
      v13 = v17;
    }

    goto LABEL_32;
  }

  if (v15)
  {
    v16 = *a2;
    goto LABEL_30;
  }

LABEL_32:
  if (v13 == 1)
  {
    v19 = result;
    (*(v3 + 16))();
    result = v19;
    v19[v4] = 1;
  }

  else if (v13)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    v18 = result;
    (*(v3 + 16))();
    result = v18;
    v18[v4] = 0;
  }

  return result;
}

_BYTE *sub_21DA43C00(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = *(v3 + 64);
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v8 = *a2;
    }

    else if (v7 == 2)
    {
      v8 = *a2;
    }

    else if (v7 == 3)
    {
      v8 = *a2 | (a2[2] << 16);
    }

    else
    {
      v8 = *a2;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_15:
  if (v5 == 1)
  {
    v10 = a1;
    (*(v3 + 32))();
    v10[v4] = 1;
    return v10;
  }

  if (!v5)
  {
    v10 = a1;
    (*(v3 + 32))();
    v10[v4] = 0;
    return v10;
  }

  return memcpy(a1, a2, v4 + 1);
}

unsigned __int8 *sub_21DA43D40(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = 8 * v4;
  v6 = result[v4];
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v4 <= 3)
    {
      v8 = *(v3 + 64);
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_16;
      }

      v9 = *result;
    }

    else if (v8 == 2)
    {
      v9 = *result;
    }

    else if (v8 == 3)
    {
      v9 = *result | (result[2] << 16);
    }

    else
    {
      v9 = *result;
    }

    v10 = (v9 | (v7 << v5)) + 2;
    v6 = v9 + 2;
    if (v4 < 4)
    {
      v6 = v10;
    }
  }

LABEL_16:
  if (v6 <= 1)
  {
    v11 = result;
    v12 = a2;
    (*(v3 + 8))();
    a2 = v12;
    result = v11;
  }

  v13 = a2[v4];
  v14 = v13 - 2;
  if (v13 < 2)
  {
    goto LABEL_32;
  }

  if (v4 <= 3)
  {
    v15 = v4;
  }

  else
  {
    v15 = 4;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
    }

    else
    {
      v16 = *a2;
    }

LABEL_30:
    v17 = (v16 | (v14 << v5)) + 2;
    v13 = v16 + 2;
    if (v4 < 4)
    {
      v13 = v17;
    }

    goto LABEL_32;
  }

  if (v15)
  {
    v16 = *a2;
    goto LABEL_30;
  }

LABEL_32:
  if (v13 == 1)
  {
    v19 = result;
    (*(v3 + 32))();
    result = v19;
    v19[v4] = 1;
  }

  else if (v13)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    v18 = result;
    (*(v3 + 32))();
    result = v18;
    v18[v4] = 0;
  }

  return result;
}

uint64_t sub_21DA43F4C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = (1u >> (8 * v3)) ^ 0xFD;
  if (v3 > 3)
  {
    v4 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v4 >= a2)
  {
    goto LABEL_25;
  }

  v5 = v3 + 1;
  v6 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v9 = ((~(-1 << v6) + a2 - v4) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v3);
      if (v4 <= (v11 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v11);
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return v4 + (v5 | v10) + 1;
}

void sub_21DA44080(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = (1u >> (8 * v5)) ^ 0xFD;
  if (v5 > 3)
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_15;
    }

LABEL_19:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_31:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_19;
  }

LABEL_15:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_35:
    if (v8 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_35;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_39:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_39;
    }
  }

LABEL_36:
  if (v8)
  {
    a1[v7] = v14;
  }
}

uint64_t sub_21DA44248(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = *(*(*(a2 + 16) - 8) + 64);
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return v3;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    LODWORD(v3) = v6 + 2;
    if (v2 >= 4)
    {
      return v3;
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

void sub_21DA442DC(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (a2 > 1)
  {
    v4 = a2 - 2;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 2;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 2;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

void *TTRReminderLocationPickerInteractor.ReminderEditor.__allocating_init(reminderChangeItem:undoManager:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = 0;
  return result;
}

void *TTRReminderLocationPickerInteractor.FilterEditor.__allocating_init(filter:undoManager:save:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t TTRReminderLocationPickerInteractor.__allocating_init(editor:itemProviders:geoService:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4[3];
  v10 = a4[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = sub_21DA4845C(a1, a2, a3, v11, v4, v9, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a4);
  return v12;
}

uint64_t sub_21DA444E8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE64EA8);
  v1 = __swift_project_value_buffer(v0, qword_27CE64EA8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t TTRReminderLocationPickerInteractor.ReminderEditor.relevantPreviousLocationTrigger.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  result = sub_21D7A5E9C();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  v5 = result;
  v6 = sub_21DBFBD7C();
  result = v5;
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x223D44740](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);
LABEL_6:
    v4 = v3;

    return v4;
  }

  __break(1u);
  return result;
}

void *TTRReminderLocationPickerInteractor.ReminderEditor.__allocating_init(reminderDetailSubject:undoManager:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  v6 = *a1;
  v5 = *(a1 + 8);
  v4[3] = a2;
  v4[4] = 0;
  v4[2] = v6;
  if (v5)
  {
    v7 = a2;

    v8 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64828, &unk_21DC37D70);
    sub_21D0D0F1C(&qword_27CE64830, &qword_27CE64828, &unk_21DC37D70, MEMORY[0x277CBCD90]);
    v9 = sub_21DBF91AC();
  }

  else
  {
    v9 = 0;
  }

  v4[4] = v9;

  return v4;
}

void *TTRReminderLocationPickerInteractor.ReminderEditor.init(reminderDetailSubject:undoManager:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = *(a1 + 8);
  v3[3] = a2;
  v3[4] = 0;
  v3[2] = v4;
  if (v5)
  {
    v6 = a2;

    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64828, &unk_21DC37D70);
    sub_21D0D0F1C(&qword_27CE64830, &qword_27CE64828, &unk_21DC37D70, MEMORY[0x277CBCD90]);
    v8 = sub_21DBF91AC();
  }

  else
  {
    v8 = 0;
  }

  v3[4] = v8;

  return v3;
}

void sub_21DA44914(uint64_t a1, void **a2)
{
  v3 = *a2;
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;
  v5 = v3;
}

void sub_21DA4498C(NSObject *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    if (qword_27CE56FD8 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE64EA8);
    v5 = a1;
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAEBC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_21DBFC75C();
      v12 = sub_21D0CDFB4(v10, v11, &v22);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_21D0C9000, v6, v7, "Failed to save reminderChangeItem {error: %s}", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223D46520](v9, -1, -1);
      MEMORY[0x223D46520](v8, -1, -1);

      return;
    }

    v20 = a1;
  }

  else
  {
    if (qword_27CE56FD8 != -1)
    {
      swift_once();
    }

    v14 = sub_21DBF84BC();
    __swift_project_value_buffer(v14, qword_27CE64EA8);
    v15 = a2;
    oslog = sub_21DBF84AC();
    v16 = sub_21DBFAEDC();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = [v15 objectID];
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&dword_21D0C9000, oslog, v16, "Saved reminderChangeItem {objectID: %@}", v17, 0xCu);
      sub_21D0CF7E0(v18, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v18, -1, -1);
      MEMORY[0x223D46520](v17, -1, -1);
    }

    v20 = oslog;
  }
}

uint64_t TTRReminderLocationPickerInteractor.ReminderEditor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id TTRReminderLocationPickerInteractor.FilterEditor.filter.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void TTRReminderLocationPickerInteractor.FilterEditor.filter.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

id TTRReminderLocationPickerInteractor.FilterEditor.relevantPreviousLocationTrigger.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64880, &unk_21DC40300);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_21DBF7E8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  swift_beginAccess();
  v11 = *(v0 + 16);
  sub_21DBF7FDC();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21D0CF7E0(v3, &qword_27CE64880, &unk_21DC40300);
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    (*(v5 + 16))(v7, v10, v4);
    if ((*(v5 + 88))(v7, v4) == *MEMORY[0x277D458C8])
    {
      (*(v5 + 96))(v7, v4);
      v12 = v7[2];
      v13 = v7[3];
      v14 = v7[4];
      v15 = *(v7 + 5);
      v16 = objc_allocWithZone(MEMORY[0x277CBFBC8]);
      v17 = sub_21DBFA12C();
      v18 = [v16 initWithCenter:v17 radius:v12 identifier:{v13, v14}];

      sub_21D0D8CF0(0, &qword_280D17760, 0x277D44868);
      v19 = v18;
      v20 = sub_21DBFB3EC();
      v21 = [objc_allocWithZone(MEMORY[0x277D44580]) initWithStructuredLocation:v20 proximity:v15];

      (*(v5 + 8))(v10, v4);
      return v21;
    }

    v23 = *(v5 + 8);
    v23(v10, v4);
    v23(v7, v4);
  }

  return 0;
}

void *TTRReminderLocationPickerInteractor.FilterEditor.init(filter:undoManager:save:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t TTRReminderLocationPickerInteractor.FilterEditor.interactor(_:setLocationTrigger:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v46 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64880, &unk_21DC40300);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v42 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v16 = sub_21DBF7E8C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v18(v15, 1, 1, v16);
  if (a3)
  {
    v44 = v18;
    v45 = a2;
    v19 = a3;
    v20 = [v19 structuredLocation];
    v21 = [v20 displayName];
    if (v21)
    {
      v22 = v21;
      v23 = sub_21DBFA16C();
      v42 = v24;
      v43 = v23;
    }

    else
    {
      v42 = 0xE000000000000000;
      v43 = 0;
    }

    [v20 latitude];
    v26 = v25;
    [v20 longitude];
    v28 = v27;
    [v20 radius];
    v30 = v29;
    v31 = [v19 proximity];

    sub_21D0CF7E0(v15, &qword_27CE64880, &unk_21DC40300);
    v32 = v42;
    *v12 = v43;
    v12[1] = v32;
    v12[2] = v26;
    v12[3] = v28;
    v12[4] = v30;
    v12[5] = v31;
    (*(v17 + 104))(v12, *MEMORY[0x277D458C8], v16);
    v44(v12, 0, 1, v16);
    sub_21DA48570(v12, v15);
    a2 = v45;
  }

  sub_21DBF801C();
  swift_beginAccess();
  v33 = *(v4 + 16);
  sub_21D0D3954(v15, v9, &qword_27CE64880, &unk_21DC40300);
  v34 = v33;
  v35 = sub_21DBF7F9C();
  v36 = *(v4 + 16);
  *(v4 + 16) = v35;
  v37 = v35;

  ObjectType = swift_getObjectType();
  (*(a2 + 16))(v4, &protocol witness table for TTRReminderLocationPickerInteractor.FilterEditor, v37, ObjectType, a2);

  v39 = *(v4 + 32);
  if (v39)
  {
    v40 = *(v4 + 16);
    v39();
  }

  return sub_21D0CF7E0(v15, &qword_27CE64880, &unk_21DC40300);
}

uint64_t TTRReminderLocationPickerInteractor.FilterEditor.interactor(_:setVehicleTrigger:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64880, &unk_21DC40300);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = sub_21DBF7E8C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v12, 1, 1, v13);
  if (a3)
  {
    v16 = [a3 event];
    sub_21D0CF7E0(v12, &qword_27CE64880, &unk_21DC40300);
    *v9 = v16;
    (*(v14 + 104))(v9, *MEMORY[0x277D458C0], v13);
    v15(v9, 0, 1, v13);
    sub_21DA48570(v9, v12);
  }

  sub_21DBF801C();
  swift_beginAccess();
  v17 = *(v4 + 16);
  sub_21D0D3954(v12, v9, &qword_27CE64880, &unk_21DC40300);
  v18 = v17;
  v19 = sub_21DBF7F9C();
  v20 = *(v4 + 16);
  *(v4 + 16) = v19;
  v21 = v19;

  ObjectType = swift_getObjectType();
  (*(a2 + 16))(v4, &protocol witness table for TTRReminderLocationPickerInteractor.FilterEditor, v21, ObjectType, a2);

  v23 = *(v4 + 32);
  if (v23)
  {
    v24 = *(v4 + 16);
    v23();
  }

  return sub_21D0CF7E0(v12, &qword_27CE64880, &unk_21DC40300);
}

void sub_21DA4571C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(a2 + 24);
    v10 = *(a3 + 16);
    v14[0] = *a3;
    v14[1] = v10;
    v14[2] = *(a3 + 32);
    v15 = *(a3 + 48);
    if (v8)
    {
      v11 = 0;
    }

    else
    {
      v12 = v7;
      v11 = sub_21DBFADDC();
      sub_21D57EF34(v7, 0);
    }

    ObjectType = swift_getObjectType();
    (*(*(v9 + 8) + 48))(v14, v11, a4, ObjectType);
    swift_unknownObjectRelease();
  }
}

void sub_21DA4581C(uint64_t a1, uint64_t a2)
{
  if (qword_27CE56FD8 != -1)
  {
    swift_once();
  }

  v3 = sub_21DBF84BC();
  __swift_project_value_buffer(v3, qword_27CE64EA8);
  sub_21DA489C8(a2, v14);
  v4 = sub_21DBF84AC();
  v5 = sub_21DBFAEBC();
  sub_21DA48A2C(a2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = *(a2 + 16);
    v14[0] = *a2;
    v14[1] = v8;
    v14[2] = *(a2 + 32);
    v15 = *(a2 + 48);
    sub_21DA489C8(a2, &v12);
    v9 = sub_21DBFA1AC();
    v11 = sub_21D0CDFB4(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_21D0C9000, v4, v5, "Could not get clLocation for item -- Failed to update reminder location {modelPlacemark: %s}", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223D46520](v7, -1, -1);
    MEMORY[0x223D46520](v6, -1, -1);
  }
}

void TTRReminderLocationPickerInteractor.FilterEditor.interactorSaveChanges(_:)()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    swift_beginAccess();
    v2 = *(v0 + 16);
    v1();
  }
}

uint64_t TTRReminderLocationPickerInteractor.FilterEditor.__deallocating_deinit()
{
  sub_21D0D0E88(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

void sub_21DA45A8C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    swift_beginAccess();
    v2 = *(v0 + 16);
    v1();
  }
}

double TTRReminderLocationPickerInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*TTRReminderLocationPickerInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D242600;
}

uint64_t TTRReminderLocationPickerInteractor.init(editor:itemProviders:geoService:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4[3];
  v10 = a4[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_21DA48328(a1, a2, a3, v14, v4, v9, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a4);
  return v16;
}

uint64_t sub_21DA45D84()
{
  v1 = v0;
  v2 = v0[6];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v23 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v5 = v2 + 32;
    do
    {
      sub_21D0D32E4(v5, v20);
      v6 = v22;
      v16 = v21;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v7 = v1[14];
      v15 = v1[13];
      v9 = v1[10];
      v8 = v1[11];
      __swift_project_boxed_opaque_existential_1(v1 + 7, v9);
      v10 = v3;
      v11 = v1;
      v12 = *(v8 + 8);
      sub_21DBF8E0C();
      v12(v19, v9, v8);
      v1 = v11;
      v17 = v19[0];
      v18 = v19[1];
      (*(v6 + 8))(v15, v7, &v17, v16, v6);

      sub_21D0D73FC(v17, *(&v17 + 1), v18, *(&v18 + 1));
      sub_21DBF817C();

      __swift_destroy_boxed_opaque_existential_0(v20);
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v5 += 40;
      v3 = v10 - 1;
    }

    while (v10 != 1);
    v4 = v23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64EE0, &qword_21DC380A0);
  v20[0] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64EE8, &qword_21DC380A8);
  sub_21D0D0F1C(&qword_27CE64EF0, &qword_27CE64EE8, &qword_21DC380A8, MEMORY[0x277D83988]);
  sub_21DBF819C();

  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v13 = sub_21DBFB12C();
  sub_21DBF65EC();

  sub_21DBF821C();
}

void TTRReminderLocationPickerInteractor.model.getter(void *a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v17 = a1;
    v25 = MEMORY[0x277D84F90];
    sub_21DBF8E0C();
    sub_21D18F1F0(0, v3, 0);
    v4 = v25;
    v5 = v2 + 40;
    while (1)
    {
      v7 = *(v5 - 8);
      v6 = *v5;
      v8 = *(v5 + 40);
      v9 = (v8 >> 5) - 1 >= 4 && v8 >> 5 == 0;
      v20 = *(v5 + 24);
      v21 = *(v5 + 8);
      if (v9)
      {
        v15 = v18[10];
        v14 = v18[11];
        __swift_project_boxed_opaque_existential_1(v18 + 7, v15);
        v19 = *(v14 + 8);
        v16 = v7;
        v19(v22, v15, v14);
        v10 = v22[0];
        if (v23 >> 2 == 0xFFFFFFFF && (v24 & 0xF000000000000007) == 0)
        {
          goto LABEL_17;
        }

        if (v24 >> 61 != 2)
        {
          sub_21D0D73FC(v22[0], v22[1], v23, v24);
LABEL_17:
          v10 = v7;
          goto LABEL_8;
        }

        sub_21D5801B4(v7, v6, v21, *(&v21 + 1), v20, *(&v20 + 1), v8);
        v6 = 0;
        LOBYTE(v8) = 0;
        v20 = 0u;
        v21 = 0u;
      }

      else
      {
        sub_21D5800C8(v7, v6, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), v8);
        v10 = v7;
      }

LABEL_8:
      v25 = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_21D18F1F0((v11 > 1), v12 + 1, 1);
        v4 = v25;
      }

      v5 += 56;
      *(v4 + 16) = v12 + 1;
      v13 = v4 + 56 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v6;
      *(v13 + 48) = v21;
      *(v13 + 64) = v20;
      *(v13 + 80) = v8;
      if (!--v3)
      {

        a1 = v17;
        break;
      }
    }
  }

  *a1 = v4;
}

uint64_t TTRReminderLocationPickerInteractor.prepareForReuse(editor:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v5[2] = a1;
  v5[3] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v5[5] = a4;
  swift_unknownObjectWeakAssign();
  sub_21DBF65EC();
  swift_allocObject();
  v5[12] = sub_21DBF65DC();
}

Swift::Void __swiftcall TTRReminderLocationPickerInteractor.search(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = v1[10];
  v5 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v4);
  (*(v5 + 24))(v4, v5);
  sub_21DBF65EC();
  swift_allocObject();
  v1[12] = sub_21DBF65DC();

  v1[13] = countAndFlagsBits;
  v1[14] = object;
  sub_21DBF8E0C();

  sub_21DA45D84();
}

void TTRReminderLocationPickerInteractor.placemark(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 48) >> 5;
  if (v5 <= 2)
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      if (v5 == 1)
      {
        v7 = v6;
        v8 = 0;
        v4 = v6;
        v6 = 0;
      }

      else
      {
        v4 = *(a1 + 32);
        sub_21DBF8E0C();
        v8 = 1;
      }

      goto LABEL_11;
    }

    if (!v4)
    {
LABEL_16:
      v11 = 2;
      v4 = 1;
      goto LABEL_20;
    }

LABEL_9:
    v10 = v4;
    v11 = 0;
    goto LABEL_20;
  }

  if (v5 == 3)
  {
    goto LABEL_9;
  }

  if (v5 != 4)
  {
    v4 = 0;
    v11 = 2;
    goto LABEL_20;
  }

  v9 = v4;
  v6 = 0;
  v8 = 2;
LABEL_11:
  v12 = v2[10];
  v13 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v12);
  v20[0] = v4;
  v20[1] = v6;
  v21 = v8;
  (*(v13 + 32))(&v22, v20, v12, v13);
  sub_21D181CB8(v4, v6, v8);
  v4 = v22;
  v14 = v23;
  v16 = v24;
  v15 = v25;
  v17 = v25 >> 61;
  if ((v25 >> 61) <= 1)
  {
    sub_21D47B42C(v22, v23, v24, v25);
    goto LABEL_16;
  }

  if (v17 == 2)
  {
    v11 = 0;
  }

  else if (v17 == 3)
  {
    v18 = v23;
    sub_21D47B42C(v4, v14, v16, v15);
    v11 = 1;
    v4 = v14;
  }

  else
  {
    v19 = (v25 & 0x1FFFFFFFFFFFFFFFLL);
    sub_21D47B42C(v4, v14, v16, v15);
    v11 = 1;
    v4 = v15 & 0x1FFFFFFFFFFFFFFFLL;
  }

LABEL_20:
  *a2 = v4;
  *(a2 + 8) = v11;
}

uint64_t TTRReminderLocationPickerInteractor.ensurePlacemarkIsFetched(for:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 48);
  v30 = *a1;
  v31 = v2;
  v5 = *(a1 + 32);
  v32 = *(a1 + 16);
  v29 = v5;
  v33 = v5;
  v34 = v4;
  TTRReminderLocationPickerInteractor.placemark(for:)(&v30, &v35);
  v6 = v35;
  v7 = v36;
  if (v1[19])
  {
    v8 = sub_21DBF5F5C();
    sub_21D31A8A0();
    v9 = swift_allocError();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D44D50], v8);

    sub_21DBF5FAC();

    v11 = v1[19];
  }

  else
  {
    v11 = 0;
  }

  v12 = v1[16];
  v13 = v1[17];
  v14 = v1[18];
  *(v1 + 8) = 0u;
  *(v1 + 9) = 0u;
  sub_21DA485E0(v12, v13, v14, v11);
  if (v7 != 2 || v6 != 1)
  {
    v30 = v6;
    LOBYTE(v31) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64EC0, &qword_21DC37D80);
    swift_allocObject();
    return sub_21DBF824C();
  }

  v15 = v4 >> 5;
  if (v4 >> 5 <= 2)
  {
    if (v15)
    {
      if (v15 == 1)
      {
        v3 = *(&v29 + 1);
        v16 = *(&v29 + 1);
        v17 = 0;
        v18 = 0;
      }

      else
      {
        v17 = *(&v29 + 1);
        sub_21DBF8E0C();
        v3 = v29;
        v18 = 1;
      }

      goto LABEL_15;
    }

LABEL_13:
    v21 = sub_21DBF5F5C();
    sub_21D31A8A0();
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D44D50], v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64EC0, &qword_21DC37D80);
    swift_allocObject();
    return sub_21DBF823C();
  }

  if (v15 != 4)
  {
    goto LABEL_13;
  }

  v20 = v3;
  v17 = 0;
  v18 = 2;
LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64EC8, &qword_21DC37D88);
  swift_allocObject();
  sub_21D179E10(v3, v17, v18);
  v23 = sub_21DBF5FDC();
  v24 = v1[16];
  v25 = v1[17];
  v26 = v1[18];
  v27 = v1[19];
  v1[16] = v3;
  v1[17] = v17;
  v1[18] = v18;
  v1[19] = v23;
  sub_21D179E10(v3, v17, v18);

  sub_21DA485E0(v24, v25, v26, v27);
  sub_21D179E10(v3, v17, v18);

  v28 = sub_21DBF5FBC();

  if (v28)
  {
    sub_21D181CB8(v3, v17, v18);
    sub_21D181CB8(v3, v17, v18);

    sub_21D181CB8(v3, v17, v18);
    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void TTRReminderLocationPickerInteractor.updateLocation(to:region:proximity:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v6 = *a1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  if ((v9 >> 5) - 1 >= 4)
  {
    if (v9 >> 5)
    {
      v6.i64[1] = *(a1 + 24);
      v32 = vorrq_s8(v8, v6);
      if (*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | v7 | *(a1 + 8) || v9 != 160)
      {
        if (qword_27CE56FD8 != -1)
        {
          swift_once();
        }

        v51 = sub_21DBF84BC();
        __swift_project_value_buffer(v51, qword_27CE64EA8);
        v52 = sub_21DBF84AC();
        v53 = sub_21DBFAE9C();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_21D0C9000, v52, v53, "Updating reminder location {vehicle: .disconnected}", v54, 2u);
          MEMORY[0x223D46520](v54, -1, -1);
        }

        v37 = [objc_allocWithZone(MEMORY[0x277D44590]) initWithEvent_];
      }

      else
      {
        if (qword_27CE56FD8 != -1)
        {
          swift_once();
        }

        v33 = sub_21DBF84BC();
        __swift_project_value_buffer(v33, qword_27CE64EA8);
        v34 = sub_21DBF84AC();
        v35 = sub_21DBFAE9C();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_21D0C9000, v34, v35, "Updating reminder location {vehicle: .connected}", v36, 2u);
          MEMORY[0x223D46520](v36, -1, -1);
        }

        v37 = [objc_allocWithZone(MEMORY[0x277D44590]) initWithEvent_];
      }

      v55 = v37;
      swift_beginAccess();
      if (*(v4 + 16))
      {
        v56 = *(v4 + 24);
        ObjectType = swift_getObjectType();
        v58 = *(v56 + 24);
        swift_unknownObjectRetain();
        v58(v4, &protocol witness table for TTRReminderLocationPickerInteractor, v55, ObjectType, v56);

        goto LABEL_42;
      }

      goto LABEL_46;
    }

    v79 = *a1;
    v80 = v7;
    v81 = v8;
    v82 = v9;
    v73 = v8;
    v74 = v6;
    v72 = v7;
    TTRReminderLocationPickerModel.Item.localizedDisplayAttributes.getter();
    v75 = v12;
    v11 = v13;
  }

  else
  {
    v79 = *a1;
    v80 = v7;
    v81 = v8;
    v82 = v9;
    v73 = v8;
    v74 = v6;
    v72 = v7;
    v75 = TTRReminderLocationPickerModel.Item.localizedDisplayAttributes.getter();
    v11 = v10;
  }

  v79 = v74;
  v80 = v72;
  v81 = v73;
  v82 = v9;
  TTRReminderLocationPickerInteractor.placemark(for:)(&v79, &v77);
  v14 = v77;
  v15 = v78;
  if (qword_27CE56FD8 != -1)
  {
    swift_once();
  }

  v16 = sub_21DBF84BC();
  __swift_project_value_buffer(v16, qword_27CE64EA8);
  sub_21D57ED3C(v14, v15);
  v17 = a2;
  sub_21DBF8E0C();
  v18 = sub_21DBF84AC();
  v19 = sub_21DBFAE9C();
  sub_21D57EF34(v14, v15);

  v71 = v15;
  v70 = v14;
  if (!os_log_type_enabled(v18, v19))
  {

    if (!a2)
    {
      goto LABEL_23;
    }

LABEL_11:
    sub_21D0D8CF0(0, &qword_280D17760, 0x277D44868);
    if (v15)
    {
      v30 = v17;
LABEL_31:
      v44 = v17;
      v45 = sub_21DBFB3EC();
      v46 = [objc_allocWithZone(MEMORY[0x277D44580]) initWithStructuredLocation:v45 proximity:a3];
      swift_beginAccess();
      if (*(v4 + 16))
      {
        v47 = *(v4 + 24);
        v48 = swift_getObjectType();
        v49 = *(v47 + 16);
        swift_unknownObjectRetain();
        v50 = v46;
        v49(v4, &protocol witness table for TTRReminderLocationPickerInteractor, v46, v48, v47);

        sub_21D57EF34(v70, v71);
        swift_unknownObjectRelease();
      }

      else
      {

        sub_21D57EF34(v14, v15);
      }

      return;
    }

    v31 = v14;
    v30 = v17;
LABEL_30:
    v43 = v31;
    goto LABEL_31;
  }

  v67 = v9;
  v69 = v3;
  v20 = a2;
  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  v77 = v22;
  *v21 = 136315906;
  v79.i64[0] = v14;
  v79.i8[8] = v15;
  v23 = TTRReminderLocationPickerModel.Placemark.description.getter();
  v25 = sub_21D0CDFB4(v23, v24, &v77);

  *(v21 + 4) = v25;
  *(v21 + 12) = 2080;
  *(v21 + 14) = sub_21D0CDFB4(v75, v11, &v77);
  *(v21 + 22) = 2080;
  v68 = v20;
  if (v20)
  {
    v26 = [v17 debugDescription];
    v27 = sub_21DBFA16C();
    v29 = v28;
  }

  else
  {
    v29 = 0xE300000000000000;
    v27 = 7104878;
  }

  v38 = sub_21D0CDFB4(v27, v29, &v77);

  *(v21 + 24) = v38;
  *(v21 + 32) = 2048;
  *(v21 + 34) = a3;
  _os_log_impl(&dword_21D0C9000, v18, v19, "Updating reminder location {modelPlacemark: %s, title: %s, region: %s, proximity: %ld}", v21, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x223D46520](v22, -1, -1);
  MEMORY[0x223D46520](v21, -1, -1);

  v4 = v69;
  v15 = v71;
  v14 = v70;
  LOBYTE(v9) = v67;
  if (v68)
  {
    goto LABEL_11;
  }

LABEL_23:
  if (!v15)
  {
    v31 = v14;
    v42 = sub_21DBFADDC();
    sub_21D57EF34(v14, 0);
    if (!v42)
    {

LABEL_44:
      sub_21D57ED3C(v14, v15);
      sub_21D57EF34(v14, v15);
      sub_21D57EF34(1, 2u);
      sub_21D57ED3C(v14, v15);
      v55 = sub_21DBF84AC();
      v59 = sub_21DBFAEBC();
      sub_21D57EF34(v14, v15);
      if (!os_log_type_enabled(v55, v59))
      {

        sub_21D57EF34(v14, v15);
        return;
      }

      v60 = swift_slowAlloc();
      v61 = v14;
      v62 = swift_slowAlloc();
      v77 = v62;
      *v60 = 136315138;
      v79.i64[0] = v61;
      v79.i8[8] = v15;
      v63 = TTRReminderLocationPickerModel.Placemark.description.getter();
      v65 = v15;
      v66 = sub_21D0CDFB4(v63, v64, &v77);

      *(v60 + 4) = v66;
      _os_log_impl(&dword_21D0C9000, v55, v59, "Could not get clLocation for modelPlacemark -- Failed to update reminder location {modelPlacemark: %s}", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x223D46520](v62, -1, -1);
      MEMORY[0x223D46520](v60, -1, -1);
      sub_21D57EF34(v61, v65);
LABEL_46:

      return;
    }

    sub_21D0D8CF0(0, &qword_280D17760, 0x277D44868);
    v30 = v42;
    goto LABEL_30;
  }

  if (v15 != 2 || !v14)
  {
    goto LABEL_44;
  }

  sub_21D57EF34(1, 2u);
  sub_21D57EF34(1, 2u);
  swift_beginAccess();
  if (*(v4 + 16))
  {
    v39 = *(v4 + 24);
    v40 = swift_getObjectType();
    v79 = v74;
    v80 = v72;
    v81 = v73;
    v82 = v9;
    v41 = *(v39 + 40);
    swift_unknownObjectRetain();
    v41(v4, &protocol witness table for TTRReminderLocationPickerInteractor, &v79, a3, v40, v39);
LABEL_42:
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall TTRReminderLocationPickerInteractor.clearLocation()()
{
  swift_beginAccess();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 16);
    swift_unknownObjectRetain();
    v3(v0, &protocol witness table for TTRReminderLocationPickerInteractor, 0, ObjectType, v1);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall TTRReminderLocationPickerInteractor.saveChanges()()
{
  swift_beginAccess();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 32);
    swift_unknownObjectRetain();
    v3(v0, &protocol witness table for TTRReminderLocationPickerInteractor, ObjectType, v1);
    swift_unknownObjectRelease();
  }
}

double TTRReminderLocationPickerInteractor.editor(_:didUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v3 + 40);
    ObjectType = swift_getObjectType();
    (*(v6 + 24))(v3, &protocol witness table for TTRReminderLocationPickerInteractor, a3, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_21DA4736C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = 0;
  v7 = *a1;
  v8 = *(*a1 + 16);
  v9 = *a1 + 32;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v8 == v6)
    {
      goto LABEL_19;
    }

    if (v6 >= *(v7 + 16))
    {
      break;
    }

    v11 = *(v9 + 8 * v6++);
    if (v11)
    {
      v25 = a3;
      v12 = v4;
      v13 = *(v11 + 16);
      v14 = *(v10 + 2);
      v15 = v14 + v13;
      if (__OFADD__(v14, v13))
      {
        goto LABEL_21;
      }

      v24 = *(v11 + 16);
      sub_21DBF8E0C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v10;
      if (!isUniquelyReferenced_nonNull_native || v15 > *(v10 + 3) >> 1)
      {
        if (v14 <= v15)
        {
          v18 = v15;
        }

        else
        {
          v18 = v14;
        }

        v17 = sub_21D212DD4(isUniquelyReferenced_nonNull_native, v18, 1, v10);
      }

      v4 = v12;
      a3 = v25;
      if (*(v11 + 16))
      {
        if ((*(v17 + 3) >> 1) - *(v17 + 2) < v24)
        {
          goto LABEL_22;
        }

        v19 = v17;
        swift_arrayInitWithCopy();

        v10 = v19;
        if (v24)
        {
          v20 = *(v19 + 2);
          v21 = __OFADD__(v20, v24);
          v22 = v20 + v24;
          if (v21)
          {
            goto LABEL_23;
          }

          *(v19 + 2) = v22;
        }
      }

      else
      {
        v23 = v17;

        v10 = v23;
        if (v24)
        {
          __break(1u);
LABEL_19:
          *(a3 + 120) = v10;

          sub_21DA474F8();
          return;
        }
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

double sub_21DA474F8()
{
  v1 = v0;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  *v5 = sub_21DBFB12C();
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v6 = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_27CE56FD8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE64EA8);

  v8 = sub_21DBF84AC();
  v9 = sub_21DBFAE9C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    TTRReminderLocationPickerInteractor.model.getter(v16);
    v11 = *(v16[0] + 16);

    *(v10 + 4) = v11;

    _os_log_impl(&dword_21D0C9000, v8, v9, "Location Picker Interactor model did change {items.count: %ld}", v10, 0xCu);
    MEMORY[0x223D46520](v10, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    TTRReminderLocationPickerInteractor.model.getter(&v15);
    (*(v13 + 8))(v1, &protocol witness table for TTRReminderLocationPickerInteractor, &v15, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  return result;
}

void *TTRReminderLocationPickerInteractor.deinit()
{
  swift_unknownObjectRelease();
  sub_21D157444(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  sub_21DA485E0(*(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152));
  return v0;
}

uint64_t TTRReminderLocationPickerInteractor.__deallocating_deinit()
{
  TTRReminderLocationPickerInteractor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21DA4786C(uint64_t a1, uint64_t a2)
{
  v5 = v2[10];
  v6 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v5);
  (*(v6 + 24))(v5, v6);
  sub_21DBF65EC();
  swift_allocObject();
  v2[12] = sub_21DBF65DC();

  v2[13] = a1;
  v2[14] = a2;
  sub_21DBF8E0C();

  return sub_21DA45D84();
}

double sub_21DA47934()
{
  swift_beginAccess();
  if (*(v0 + 16))
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 16);
    swift_unknownObjectRetain();
    v4(v0, &protocol witness table for TTRReminderLocationPickerInteractor, 0, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_21DA479D4()
{
  swift_beginAccess();
  if (*(v0 + 16))
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 32);
    swift_unknownObjectRetain();
    v4(v0, &protocol witness table for TTRReminderLocationPickerInteractor, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21DA47A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v5[2] = a1;
  v5[3] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v5[5] = a4;
  swift_unknownObjectWeakAssign();
  sub_21DBF65EC();
  swift_allocObject();
  v5[12] = sub_21DBF65DC();
}

double sub_21DA47B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v3 + 40);
    ObjectType = swift_getObjectType();
    (*(v6 + 24))(v3, &protocol witness table for TTRReminderLocationPickerInteractor, a3, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  return result;
}

double TTRReminderLocationPickerInteractor.geoService(_:didResolveCurrentLocation:)()
{
  if (qword_27CE56FD8 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF84BC();
  __swift_project_value_buffer(v0, qword_27CE64EA8);
  v1 = sub_21DBF84AC();
  v2 = sub_21DBFAE9C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21D0C9000, v1, v2, "Current location did load", v3, 2u);
    MEMORY[0x223D46520](v3, -1, -1);
  }

  return sub_21DA474F8();
}

void TTRReminderLocationPickerInteractor.geoService(_:didResolve:to:)(__n128 a1, uint64_t a2, uint64_t a3, void **a4)
{
  v5 = v4;
  v7 = *a3;
  v6 = *(a3 + 8);
  v8 = *(a3 + 16);
  v9 = *a4;
  v27 = a4[3];
  v28 = a4[1];
  v10 = v27 >> 61;
  if (v27 >> 61 == 2)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = v4[5];
      ObjectType = swift_getObjectType();
      v31 = v7;
      v32 = v6;
      v33 = v8;
      (*(v11 + 16))(v4, &protocol witness table for TTRReminderLocationPickerInteractor, &v31, v9, ObjectType, v11);
      swift_unknownObjectRelease();
    }
  }

  v14 = v4 + 16;
  v13 = v4[16];
  v15 = v4[19];
  if (v15)
  {
    v26 = v9;
    v17 = v5[17];
    v16 = v5[18];
    v31 = v7;
    v32 = v6;
    v33 = v8;
    v29[0] = v13;
    v29[1] = v17;
    v30 = v16;
    sub_21DA48620(v13, v17, v16, v15);
    if ((_s15RemindersUICore029TTRGeoLocationServiceResolvedD0O7AddressO2eeoiySbAE_AEtFZ_0(&v31, v29) & 1) == 0)
    {
LABEL_9:
      sub_21DA485E0(v13, v17, v16, v15);
      return;
    }

    v18 = v5[16];
    v19 = v5[17];
    v20 = v5[18];
    v21 = v5[19];
    *v14 = 0u;
    *(v5 + 9) = 0u;
    sub_21DA485E0(v18, v19, v20, v21);
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        v23 = v28;
      }

      else
      {
        v23 = (v27 & 0x1FFFFFFFFFFFFFFFLL);
      }

      v24 = v23;
      sub_21DBF5FAC();
      sub_21DA485E0(v13, v17, v16, v15);
    }

    else
    {
      if (v10 < 2)
      {
        sub_21DA48660();
        v22 = swift_allocError();
        sub_21DBF5FAC();

        goto LABEL_9;
      }

      v31 = v26;
      LOBYTE(v32) = 0;
      v25 = v26;
      sub_21DBF5FCC();
      sub_21DA485E0(v13, v17, v16, v15);
      sub_21D57EF34(v31, v32);
    }
  }
}

void _s15RemindersUICore35TTRReminderLocationPickerInteractorC12FilterEditorC10interactor_15regionNotLoaded9proximityyAA0cdeF24TypeWithEditingAdditions_p_AA0cdE5ModelV4ItemOSo17REMAlarmProximityVtF_0(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v7 = a3[1];
  v19 = *a3;
  v20 = v7;
  v21 = a3[2];
  v22 = *(a3 + 48);
  ObjectType = swift_getObjectType();
  v9 = a3[1];
  v17[0] = *a3;
  v17[1] = v9;
  v17[2] = a3[2];
  v18 = *(a3 + 48);
  (*(*(a2 + 8) + 40))(v17, ObjectType);
  v10 = swift_allocObject();
  *(v10 + 24) = a2;
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = v20;
  *(v11 + 24) = v19;
  *(v11 + 40) = v12;
  *(v11 + 56) = v21;
  *(v11 + 72) = v22;
  *(v11 + 80) = a4;
  sub_21DA489C8(&v19, v17);
  v13 = sub_21DBF816C();
  sub_21DBF820C();

  v14 = swift_allocObject();
  v15 = v20;
  *(v14 + 16) = v19;
  *(v14 + 32) = v15;
  *(v14 + 48) = v21;
  *(v14 + 64) = v22;
  sub_21DA489C8(&v19, v17);
  v16 = sub_21DBF816C();
  sub_21DBF822C();
}

uint64_t sub_21DA4808C(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (v4)
  {
    v5 = type metadata accessor for TTRBasicUndoContext();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v7 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v7 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v14[0] = v6;
  v14[3] = v5;
  v14[4] = v7;
  sub_21D0D3954(v14, v13, &unk_27CE60D80, &unk_21DC093F0);
  type metadata accessor for TTRReminderEditor();
  v8 = swift_allocObject();
  *(v8 + 72) = 0;
  *(v8 + 16) = v3;
  sub_21D0D3954(v13, v8 + 24, &unk_27CE60D80, &unk_21DC093F0);
  *(v8 + 64) = 0;
  v9 = v3;
  v10 = v4;
  v11 = [v9 fetchedCurrentDueDateDeltaAlert];
  sub_21D0CF7E0(v14, &unk_27CE60D80, &unk_21DC093F0);
  sub_21D0CF7E0(v13, &unk_27CE60D80, &unk_21DC093F0);
  *(v8 + 72) = v11;
  _s15RemindersUICore17TTRReminderEditorC4edit14vehicleTriggerySo015REMAlarmVehicleG0CSg_tF_0(a1);
}

void _s15RemindersUICore35TTRReminderLocationPickerInteractorC14ReminderEditorC21interactorSaveChangesyyAA0cdeF24TypeWithEditingAdditions_pF_0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = [v1 saveRequest];
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v3 = sub_21DBFB12C();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  aBlock[4] = sub_21DA48A80;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D11E5E4;
  aBlock[3] = &block_descriptor_132;
  v5 = _Block_copy(aBlock);
  v6 = v1;

  [v2 saveWithQueue:v3 completion:v5];
  _Block_release(v5);
}

uint64_t sub_21DA48328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[3] = a6;
  v15[4] = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a4, a6);
  *(a5 + 40) = 0;
  *(a5 + 24) = 0;
  *(a5 + 16) = 0;
  swift_unknownObjectWeakInit();
  *(a5 + 120) = MEMORY[0x277D84F90];
  *(a5 + 128) = 0u;
  *(a5 + 144) = 0u;
  swift_beginAccess();
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a5 + 48) = a3;
  sub_21D0D32E4(v15, a5 + 56);
  *(a5 + 104) = 0;
  *(a5 + 112) = 0xE000000000000000;
  sub_21DBF65EC();
  swift_allocObject();
  *(a5 + 96) = sub_21DBF65DC();
  sub_21DA45D84();
  __swift_destroy_boxed_opaque_existential_0(v15);
  return a5;
}

uint64_t sub_21DA4845C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  (*(v13 + 16))(v15, a4, a6);
  return sub_21DA48328(a1, a2, a3, v15, v16, a6, a7);
}

uint64_t sub_21DA48570(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64880, &unk_21DC40300);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_21DA485E0(void *result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21D181CB8(result, a2, a3);
  }

  return result;
}

void *sub_21DA48620(void *result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21D179E10(result, a2, a3);
  }

  return result;
}

unint64_t sub_21DA48660()
{
  result = qword_27CE64ED0;
  if (!qword_27CE64ED0)
  {
    result = swift_getWitnessTable(a4D, &type metadata for TTRReminderLocationPickerInteractor.PlacemarkFetchError, v0, v1);
    atomic_store(result, &qword_27CE64ED0);
  }

  return result;
}

uint64_t dispatch thunk of TTRReminderLocationPickerInteractorDelegate.interactor(_:didUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 8))(a1, a2, a3, a4);
}

{
  return (*(a5 + 24))(a1, a2, a3, a4);
}

unint64_t sub_21DA48934()
{
  result = qword_27CE64ED8;
  if (!qword_27CE64ED8)
  {
    result = swift_getWitnessTable(byte_21DC38034, &type metadata for TTRReminderLocationPickerInteractor.PlacemarkFetchError, v0, v1);
    atomic_store(result, &qword_27CE64ED8);
  }

  return result;
}

uint64_t REMNavigationSpecifier.init(predefinedSmartListType:pathSpecifier:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = sub_21DBF667C();
  (*(*(v7 - 8) + 32))(a3, a2, v7);
  v8 = sub_21DBF66FC();
  v9 = *(*(v8 - 8) + 104);
  v10 = **(&unk_27832F770 + v6);

  return v9(a3, v10, v8);
}

uint64_t static REMNavigationSpecifier.from(spotlightItemIdentifier:)(uint64_t a1, uint64_t a2)
{
  sub_21D0CE468();
  v4 = sub_21DBFB12C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E08, &unk_21DC380B0);
  swift_allocObject();
  sub_21DBF828C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E10, &unk_21DC31980);
  sub_21DBF81FC();

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_21DBF8E0C();
  v6 = sub_21DBF816C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E18, &qword_21DC380C0);
  sub_21DBF820C();

  v7 = sub_21DBF816C();
  sub_21DBF66FC();
  v8 = sub_21DBF820C();

  return v8;
}

id sub_21DA48D08@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [a1 entityName];
  v5 = sub_21DBFA16C();
  v7 = v6;

  v8 = [objc_opt_self() cdEntityName];
  v9 = sub_21DBFA16C();
  v11 = v10;

  if (v9 == v5 && v11 == v7)
  {

LABEL_8:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62680, &unk_21DC1D040);
    *a2 = a1;
    v14 = a1;
    sub_21DBF66AC();
    v15 = *MEMORY[0x277D45248];
    v16 = sub_21DBF66FC();
    return (*(*(v16 - 8) + 104))(a2, v15, v16);
  }

  v13 = sub_21DBFC64C();

  if (v13)
  {
    goto LABEL_8;
  }

  v18 = [objc_opt_self() cdEntityName];
  v19 = sub_21DBFA16C();
  v21 = v20;

  if (v19 == v5 && v21 == v7)
  {

LABEL_13:

    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0, &qword_21DC210F0) + 48);
    *a2 = a1;
    v24 = *MEMORY[0x277D45140];
    v25 = sub_21DBF668C();
    (*(*(v25 - 8) + 104))(&a2[v23], v24, v25);
    v26 = MEMORY[0x277D451F8];
LABEL_14:
    v27 = *v26;
    v28 = sub_21DBF66FC();
    (*(*(v28 - 8) + 104))(a2, v27, v28);
    return a1;
  }

  v22 = sub_21DBFC64C();

  if (v22)
  {
    goto LABEL_13;
  }

  v29 = [objc_opt_self() cdEntityName];
  v30 = sub_21DBFA16C();
  v32 = v31;

  if (v30 == v5 && v32 == v7)
  {

LABEL_19:
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0, &qword_21DC210F0) + 48);
    *a2 = a1;
    v35 = *MEMORY[0x277D45140];
    v36 = sub_21DBF668C();
    (*(*(v36 - 8) + 104))(&a2[v34], v35, v36);
    v26 = MEMORY[0x277D451D8];
    goto LABEL_14;
  }

  v33 = sub_21DBFC64C();

  if (v33)
  {
    goto LABEL_19;
  }

  v37 = [a1 entityName];
  v38 = sub_21DBFA16C();
  v40 = v39;

  sub_21DA49584();
  swift_allocError();
  *v41 = v38;
  v41[1] = v40;
  return swift_willThrow();
}

uint64_t static REMNavigationSpecifier.from(cloudKitRecordName:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_21DBF56BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21DBFA39C())
  {
    v13 = sub_21DBFA39C();
    sub_21DBF8E0C();
    if (v13)
    {
      v14 = sub_21DBFA28C();
      v15 = sub_21D3F969C(v14, a1, a2);
      v17 = v16;
      v19 = v18;
      v21 = v20;

      MEMORY[0x223D429B0](v15, v17, v19, v21);
    }

    sub_21DBF564C();

    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_21DA4950C(v8);
      v22 = sub_21DBF66FC();
      return (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
      v26 = objc_opt_self();
      v27 = sub_21DBF566C();
      v28 = [v26 objectIDWithUUID_];

      (*(v10 + 8))(v12, v9);
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0, &qword_21DC210F0) + 48);
      *a3 = v28;
      v30 = *MEMORY[0x277D45140];
      v31 = sub_21DBF668C();
      (*(*(v31 - 8) + 104))(&a3[v29], v30, v31);
      v32 = *MEMORY[0x277D451F8];
      v33 = sub_21DBF66FC();
      v34 = *(v33 - 8);
      (*(v34 + 104))(a3, v32, v33);
      return (*(v34 + 56))(a3, 0, 1, v33);
    }
  }

  else
  {
    v24 = sub_21DBF66FC();
    v25 = *(*(v24 - 8) + 56);

    return v25(a3, 1, 1, v24);
  }
}

uint64_t sub_21DA4950C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DA49584()
{
  result = qword_27CE64EF8;
  if (!qword_27CE64EF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for REMNavigationSpecifierError, &type metadata for REMNavigationSpecifierError, v0, v1);
    atomic_store(result, &qword_27CE64EF8);
  }

  return result;
}

uint64_t sub_21DA495D8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE64F00);
  v1 = __swift_project_value_buffer(v0, qword_27CE64F00);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21DA49778()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64FE8, &qword_21DC38198);
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v49);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = &v47 - v7;
  v8 = sub_21DBF8D1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21DBF8D3C();
  v47 = *(v12 - 8);
  v48 = v12;
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v50 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52.receiver = v1;
  v52.super_class = ObjectType;
  objc_msgSendSuper2(&v52, sel_viewDidLoad, v13);
  v15 = [v1 navigationItem];
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v16 = sub_21DBFA12C();

  [v15 setTitle_];

  if (qword_280D17218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = v51;
  if (byte_280D17220 == 1)
  {
    v18 = [v1 navigationItem];
    v19 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_cancelButtonAction_];
    [v18 setRightBarButtonItem_];
  }

  (*(v9 + 104))(v11, *MEMORY[0x277D74D60], v8);
  sub_21DBF8D2C();
  sub_21D0D8CF0(0, &qword_27CE64FF0, 0x277D752B8);
  v20 = sub_21DBFB55C();
  v21 = [v1 collectionView];
  if (!v21)
  {
    __break(1u);
    goto LABEL_19;
  }

  v22 = v21;
  [v21 setCollectionViewLayout:v20 animated:0];

  v23 = [v1 collectionView];
  if (!v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = v23;
  [v23 setAllowsSelection_];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21D0D8CF0(0, &qword_27CE64FF8, 0x277D75318);
  sub_21DBF5C4C();
  sub_21DBFB05C();
  if (![v1 collectionView])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = v49;
  (*(v3 + 16))(v5, v17, v49);
  v26 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v27 = swift_allocObject();
  (*(v3 + 32))(v27 + v26, v5, v25);
  v28 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65000, &unk_21DC381A0));
  v29 = sub_21DBF8BBC();
  v30 = *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_dataSource];
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_dataSource] = v29;
  v31 = v29;

  v32 = [objc_allocWithZone(MEMORY[0x277D759F0]) init];
  v33 = OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_searchController;
  v34 = *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_searchController];
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_searchController] = v32;
  v35 = v32;

  if (!v35)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v36 = [v35 searchBar];

  [v36 setDelegate_];
  v37 = *&v1[v33];
  if (!v37)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v38 = [v37 searchBar];
  [v38 setLookToDictateEnabled_];

  v39 = *&v1[v33];
  if (!v39)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v39 setHidesNavigationBarDuringPresentation_];
  v40 = *&v1[v33];
  if (!v40)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v41 = [v40 searchBar];
  if (*&v1[OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_initialSearchTerm + 8])
  {
    sub_21DBF8E0C();
    v42 = sub_21DBFA12C();
  }

  else
  {
    v42 = 0;
  }

  v43 = v48;
  [v41 setPlaceholder_];

  v44 = [v1 navigationItem];
  v45 = *&v1[v33];
  [v44 setSearchController_];

  v46 = [v1 navigationItem];
  [v46 setHidesSearchBarWhenScrolling_];

  (*(v3 + 8))(v51, v49);
  (*(v47 + 8))(v50, v43);
}

uint64_t sub_21DA49F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010, &qword_21DC08D60);
  MEMORY[0x28223BE20](v6 - 8);
  v75 = &v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = &v73 - v9;
  v80 = sub_21DBF563C();
  v84 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF5C4C();
  v85 = *(v11 - 8);
  v86 = v11;
  MEMORY[0x28223BE20](v11);
  v76 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v73 - v14;
  v16 = sub_21DBF8A0C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65020, &unk_21DC381B0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v73 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v73 - v27;
  swift_beginAccess();
  v77 = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  v82 = v17;
  v83 = v16;
  v87 = v19;
  v81 = v15;
  if (Strong)
  {
    v74 = v28;
    v30 = *(Strong + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_presenter);
    v31 = Strong;
    swift_unknownObjectRetain();

    v32 = *(v30 + OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_viewModel + 40);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    swift_unknownObjectRelease();
    if (*(v32 + 16) && (v33 = sub_21D17E824(a3), (v34 & 1) != 0))
    {
      v35 = v33;
      v73 = *(v32 + 56);
      v36 = type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel(0);
      v37 = *(v36 - 8);
      v38 = v73 + *(v37 + 72) * v35;
      v39 = v74;
      sub_21DA4BE2C(v38, v74, type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel);

      v28 = v39;

      v40 = (*(v37 + 56))(v39, 0, 1, v36);
    }

    else
    {

      v36 = type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel(0);
      v28 = v74;
      v40 = (*(*(v36 - 8) + 56))(v74, 1, 1, v36);
    }

    v17 = v82;
    v16 = v83;
  }

  else
  {
    v36 = type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel(0);
    v40 = (*(*(v36 - 8) + 56))(v28, 1, 1, v36);
  }

  MEMORY[0x223D43CA0](v40);
  v41 = v28;
  sub_21D0D3954(v28, v25, &qword_27CE65020, &unk_21DC381B0);
  type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel(0);
  v42 = *(*(v36 - 8) + 48);
  if (v42(v25, 1, v36) == 1)
  {
    sub_21D0CF7E0(v25, &qword_27CE65020, &unk_21DC381B0);
  }

  else
  {
    sub_21DBF8E0C();
    sub_21DA4BDD0(v25);
  }

  v43 = v87;
  sub_21DBF89EC();
  sub_21D0D3954(v41, v22, &qword_27CE65020, &unk_21DC381B0);
  v44 = v42(v22, 1, v36);
  v45 = v84;
  if (v44 == 1)
  {
    sub_21D0CF7E0(v22, &qword_27CE65020, &unk_21DC381B0);
  }

  else
  {
    v47 = v85;
    v46 = v86;
    v48 = v76;
    (*(v85 + 16))(v76, v22, v86);
    sub_21DA4BDD0(v22);
    v49 = v81;
    (*(v47 + 32))(v81, v48, v46);
    swift_beginAccess();
    v50 = swift_unknownObjectWeakLoadStrong();
    if (v50)
    {
      v51 = *(v50 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_presenter);
      v52 = v50;
      swift_unknownObjectRetain();

      v53 = v79;
      v54 = v80;
      (*(v45 + 16))(v79, v51 + OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_date, v80);
      swift_unknownObjectRelease();
      (*(v45 + 56))(v53, 0, 1, v54);
      v55 = v78;
      (*(v45 + 32))(v78, v53, v54);
    }

    else
    {
      v56 = v79;
      v54 = v80;
      (*(v45 + 56))(v79, 1, 1, v80);
      v55 = v78;
      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      if ((*(v45 + 48))(v56, 1, v54) != 1)
      {
        sub_21D0CF7E0(v56, &qword_27CE58D68, &unk_21DC0C060);
      }
    }

    v57 = sub_21DBF5BDC();
    v58 = v55;
    v60 = v59;
    (*(v45 + 8))(v58, v54);
    if (v60)
    {
      v61 = v49;
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_21DC08D20;
      v63 = v75;
      sub_21DBF57AC();
      v64 = sub_21DBF582C();
      (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
      v65 = sub_21DBF5BEC();
      v67 = v66;
      sub_21D0CF7E0(v63, &unk_27CE65010, &qword_21DC08D60);
      if (!v67)
      {
        v65 = sub_21DBF5BCC();
        v67 = v68;
      }

      v69 = MEMORY[0x277D837D0];
      *(v62 + 56) = MEMORY[0x277D837D0];
      v70 = sub_21D17A884();
      *(v62 + 32) = v65;
      *(v62 + 40) = v67;
      *(v62 + 96) = v69;
      *(v62 + 104) = v70;
      *(v62 + 64) = v70;
      *(v62 + 72) = v57;
      *(v62 + 80) = v60;
      sub_21DBFA17C();

      v43 = v87;
      sub_21DBF88FC();
      (*(v85 + 8))(v61, v86);
      v17 = v82;
      v16 = v83;
    }

    else
    {
      (*(v85 + 8))(v49, v86);
    }
  }

  v89[3] = v16;
  v89[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v89);
  (*(v17 + 16))(boxed_opaque_existential_0, v43, v16);
  MEMORY[0x223D43B20](v89);
  (*(v17 + 8))(v43, v16);
  return sub_21D0CF7E0(v41, &qword_27CE65020, &unk_21DC381B0);
}

uint64_t sub_21DA4A9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_21DBF5C4C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DA4BE2C(a3, v14, type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier);
  (*(v9 + 32))(v11, v14, v8);
  (*(v9 + 16))(v7, v11, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_21D0D8CF0(0, &qword_27CE64FF8, 0x277D75318);
  v15 = sub_21DBFB06C();
  sub_21D0CF7E0(v7, &unk_27CE60DB0, qword_21DC0BF70);
  (*(v9 + 8))(v11, v8);
  return v15;
}

uint64_t sub_21DA4AC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_21DBFA84C();
  v4[4] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21DA4AD08, v6, v5);
}

void sub_21DA4AD08()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_searchController);
  if (v1)
  {
    v2 = v0[2];
    v3 = v1;

    v4 = [v3 searchBar];

    LOBYTE(v3) = [v4 becomeFirstResponder];
    *v2 = v3;
    v5 = v0[1];

    v5();
  }

  else
  {
    __break(1u);
  }
}

void sub_21DA4AF30(uint64_t *a1, int a2)
{
  v27 = a2;
  v4 = *a1;
  v29 = *(a1 + 8);
  v25 = a1[2];
  v26 = v4;
  v30 = *(a1 + 3);
  v5 = a1[5];
  v23 = a1 + 2;
  v24 = v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64FB0, &qword_21DC38178);
  v28 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v7 = v21 - v6;
  v8 = v2 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_lastConsumedViewModel;
  v10 = *(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_lastConsumedViewModel);
  v9 = *(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_lastConsumedViewModel + 8);
  v31 = v2;
  v32 = v9;
  v11 = *(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_lastConsumedViewModel + 16);
  v12 = *(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_lastConsumedViewModel + 32);
  v13 = *(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_lastConsumedViewModel + 40);
  v22 = *(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_lastConsumedViewModel + 24);
  v21[1] = v12;
  v14 = v13;
  sub_21DA4BB24(v10, v9, v11, v22, v12, v13);
  type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier(0);
  sub_21DA4BB84();
  sub_21DA4BC38(&unk_27CE64FC0, type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier, asc_21DC382AC);
  sub_21DBF8AFC();
  if (*(*a1 + 16))
  {
    sub_21DBF8A6C();
    LOBYTE(v37) = 0;
    sub_21DBF8A2C();
  }

  if (v10)
  {
    sub_21DA4C8A0(v14, a1[5]);
    v21[0] = v11;
    sub_21DBF8ACC();

    sub_21DA4BBD8(v10);
  }

  v15 = *(v31 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_dataSource);
  if (v15)
  {
    v16 = v15;
    sub_21DBF8BFC();

    (*(v28 + 8))(v7, v33);
    v17 = v29 & 1;
    v18 = *v8;
    v37 = *v23;
    v19 = a1[4];
    v35 = a1[5];
    v36 = v19;
    *v8 = v26;
    *(v8 + 8) = v17;
    v20 = v24;
    *(v8 + 16) = v25;
    *(v8 + 24) = v30;
    *(v8 + 40) = v20;
    sub_21DA4BBD8(v18);
    sub_21DBF8E0C();
    sub_21D35BFD0(&v37, v34);
    sub_21D0D3954(&v36, v34, &qword_27CE61F08, &qword_21DC2A730);
    sub_21D0D3954(&v35, v34, &qword_27CE64FD0, &unk_21DC2A738);
  }

  else
  {
    __break(1u);
  }
}

void sub_21DA4B498(void *a1, uint64_t a2)
{
  v4 = sub_21DBF5C4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64FD8, &qword_21DC38180);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_21DBF5C6C();
  [a1 deselectItemAtIndexPath:v11 animated:1];

  v12 = *(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_dataSource);
  if (v12)
  {
    v13 = v12;
    sub_21DBF8BEC();

    v14 = type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier(0);
    if ((*(*(v14 - 8) + 48))(v10, 1, v14) != 1)
    {
      (*(v5 + 32))(v7, v10, v4);
      v15 = *(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_presenter);
      if (qword_27CE56CF8 != -1)
      {
        swift_once();
      }

      v16 = sub_21DBF84BC();
      __swift_project_value_buffer(v16, qword_27CE61EB8);
      v17 = sub_21D17716C(MEMORY[0x277D84F90]);
      sub_21DAEACDC("Time Zone Picker View: Change time zone", 39, 2, v17);

      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = v15[5];
        sub_21DA4BC38(&qword_27CE64FE0, MEMORY[0x277CC9A70], MEMORY[0x277CC9A88]);
        if ((sub_21DBFA10C() & 1) == 0)
        {
          ObjectType = swift_getObjectType();
          (*(v18 + 8))(v15, &off_282ED3DB0, v7, ObjectType, v18);
        }

        swift_unknownObjectRelease();
      }

      __swift_project_boxed_opaque_existential_1(v15 + 8, v15[11]);
      sub_21D801350();
      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_21DA4B920(void *a1)
{
  v3 = sub_21DBFA12C();
  [a1 setText_];

  [a1 resignFirstResponder];
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_initialSearchTerm + 8);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_initialSearchTerm);
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  sub_21DBF8E0C();
  sub_21D7FBA74(v5, v6);

  return result;
}

double sub_21DA4BB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();

    sub_21DBF8E0C();
  }

  return result;
}

unint64_t sub_21DA4BB84()
{
  result = qword_27CE64FB8;
  if (!qword_27CE64FB8)
  {
    result = swift_getWitnessTable(byte_21DC3821C, &type metadata for TTRTimeZonePickerViewModel.SectionIdentifier, v0, v1);
    atomic_store(result, &qword_27CE64FB8);
  }

  return result;
}

double sub_21DA4BBD8(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_21DA4BC38(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21DA4BC80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D1B795C;

  return sub_21DA4AC70(a1, v4, v5, v6);
}

uint64_t sub_21DA4BD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64FE8, &qword_21DC38198) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_21DA4A9E4(a1, a2, a3, v8);
}

uint64_t sub_21DA4BDD0(uint64_t a1)
{
  v2 = type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DA4BE2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t *sub_21DA4BE94(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = sub_21DBF5C4C();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  return a1;
}

uint64_t sub_21DA4BF44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65028, &qword_21DC381C0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21DA4BFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65028, &qword_21DC381C0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_21DA4C064(uint64_t a1)
{
  result = sub_21DBF5C4C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8);
    swift_initEnumMetadataSingleCase();
    result = 0;
    *(*(a1 - 8) + 84) = *(v4 + 84);
  }

  return result;
}

double destroy for TTRTimeZonePickerViewModel()
{

  return result;
}

uint64_t initializeWithCopy for TTRTimeZonePickerViewModel(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v3;
  v4 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRTimeZonePickerViewModel(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = a2[3];
  sub_21DBF8E0C();

  *(a1 + 32) = a2[4];
  sub_21DBF8E0C();

  *(a1 + 40) = a2[5];
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRTimeZonePickerViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

unint64_t sub_21DA4C2F0()
{
  result = qword_27CE65040;
  if (!qword_27CE65040)
  {
    result = swift_getWitnessTable(aM, &type metadata for TTRTimeZonePickerViewModel.SectionIdentifier, v0, v1);
    atomic_store(result, &qword_27CE65040);
  }

  return result;
}

uint64_t sub_21DA4C344(uint64_t a1)
{
  MEMORY[0x28223BE20](a1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFC7DC();
  sub_21DA4D110(v1, v3, type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier);
  MEMORY[0x223D44FA0](0);
  v4 = sub_21DBF5C4C();
  sub_21DA4BC38(&qword_27CE58378, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  sub_21DBFA00C();
  (*(*(v4 - 8) + 8))(v3, v4);
  return sub_21DBFC82C();
}

uint64_t sub_21DA4C470(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DA4D110(v1, v3, type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier);
  MEMORY[0x223D44FA0](0);
  v4 = sub_21DBF5C4C();
  sub_21DA4BC38(&qword_27CE58378, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  sub_21DBFA00C();
  return (*(*(v4 - 8) + 8))(v3, v4);
}

uint64_t sub_21DA4C588(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFC7DC();
  sub_21DA4D110(v1, v3, type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier);
  MEMORY[0x223D44FA0](0);
  v4 = sub_21DBF5C4C();
  sub_21DA4BC38(&qword_27CE58378, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  sub_21DBFA00C();
  (*(*(v4 - 8) + 8))(v3, v4);
  return sub_21DBFC82C();
}

uint64_t sub_21DA4C6B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65060, &unk_21DC38300);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v8 = *(v7 + 56);
  sub_21DA4D110(a1, &v12 - v5, type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier);
  sub_21DA4D110(a2, &v6[v8], type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier);
  LOBYTE(a2) = MEMORY[0x223D3E3D0](v6, &v6[v8]);
  v9 = sub_21DBF5C4C();
  v10 = *(*(v9 - 8) + 8);
  v10(&v6[v8], v9);
  v10(v6, v9);
  return a2 & 1;
}

uint64_t sub_21DA4C818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x223D3E3D0]() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_21DBFC64C();
}

void sub_21DA4C8A0(uint64_t a1, uint64_t a2)
{
  v74 = a1;
  v3 = type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier(0);
  v58 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v59 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel(0);
  v78 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v62 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v72 = &v57 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - v9;
  MEMORY[0x28223BE20](v11);
  v68 = &v57 - v12;
  v13 = sub_21DBF5C4C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v65 = &v57 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65050, &qword_21DC382F0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v57 - v23;
  v25 = *(a2 + 64);
  v77 = a2 + 64;
  v26 = 1 << *(a2 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v76 = (v26 + 63) >> 6;
  v70 = (v14 + 16);
  v71 = a2;
  v79 = (v14 + 32);
  v67 = v14;
  v73 = (v14 + 8);
  sub_21DBF8E0C();
  v29 = 0;
  v60 = MEMORY[0x277D84F90];
  v69 = v10;
  v75 = v13;
  v66 = v16;
  v63 = v24;
  v64 = v21;
  while (v28)
  {
    v30 = v29;
LABEL_16:
    v33 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v34 = v33 | (v30 << 6);
    v35 = v71;
    v36 = v67;
    (*(v67 + 16))(v65, *(v71 + 48) + *(v67 + 72) * v34, v13);
    v37 = v68;
    sub_21DA4D110(*(v35 + 56) + *(v78 + 72) * v34, v68, type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65058, &qword_21DC382F8);
    v39 = *(v38 + 48);
    v21 = v64;
    (*(v36 + 32))();
    sub_21DA4D0A8(v37, &v21[v39], type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel);
    (*(*(v38 - 8) + 56))(v21, 0, 1, v38);
    v10 = v69;
    v16 = v66;
    v24 = v63;
LABEL_17:
    sub_21DA4D038(v21, v24);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65058, &qword_21DC382F8);
    if ((*(*(v40 - 8) + 48))(v24, 1, v40) == 1)
    {

      return;
    }

    v41 = *(v40 + 48);
    v13 = v75;
    (*v79)(v16, v24, v75);
    sub_21DA4D0A8(&v24[v41], v10, type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel);
    v42 = v74;
    if (*(v74 + 16) && (v43 = sub_21D17E824(v16), (v44 & 1) != 0))
    {
      v45 = v62;
      sub_21DA4D110(*(v42 + 56) + *(v78 + 72) * v43, v62, type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel);
      v46 = v45;
      v47 = v72;
      sub_21DA4D0A8(v46, v72, type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel);
      if (MEMORY[0x223D3E3D0](v47, v10) & 1) != 0 && ((v48 = *(v61 + 20), v49 = (v72 + v48), v50 = *(v72 + v48 + 8), v51 = &v10[v48], *v49 == *v51) && v50 == *(v51 + 1) || (sub_21DBFC64C()))
      {
        (*v73)(v16, v13);
      }

      else
      {
        (*v70)(v59, v16, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_21D212C04(0, v60[2] + 1, 1, v60);
        }

        v54 = v60[2];
        v53 = v60[3];
        if (v54 >= v53 >> 1)
        {
          v60 = sub_21D212C04((v53 > 1), v54 + 1, 1, v60);
        }

        (*v73)(v16, v13);
        v55 = v59;
        v56 = v60;
        v60[2] = v54 + 1;
        sub_21DA4D0A8(v55, v56 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v54, type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier);
      }

      sub_21DA4BDD0(v72);
    }

    else
    {
      (*v73)(v16, v13);
    }

    sub_21DA4BDD0(v10);
  }

  if (v76 <= v29 + 1)
  {
    v31 = v29 + 1;
  }

  else
  {
    v31 = v76;
  }

  v32 = v31 - 1;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v76)
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65058, &qword_21DC382F8);
      (*(*(v52 - 8) + 56))(v21, 1, 1, v52);
      v28 = 0;
      v29 = v32;
      goto LABEL_17;
    }

    v28 = *(v77 + 8 * v30);
    ++v29;
    if (v28)
    {
      v29 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_21DA4D038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65050, &qword_21DC382F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DA4D0A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DA4D110(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DA4D178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v45 = a1;
  v46 = a2;
  v47 = a4;
  v5 = sub_21DBF5C4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v58 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier(0);
  v54 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v57 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v55 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v56 = &v45 - v14;
  v60 = MEMORY[0x277D84F98];
  v15 = sub_21D212C04(0, *(a3 + 16), 0, MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64FD0, &unk_21DC2A738);
  result = sub_21DBF9EAC();
  v53 = *(a3 + 16);
  if (v53)
  {
    v17 = 0;
    v52 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = (v6 + 16);
    v48 = v6;
    v49 = v11;
    v50 = a3;
    v51 = (v6 + 8);
    while (v17 < *(a3 + 16))
    {
      v19 = *(v11 + 72);
      v20 = v56;
      sub_21DA4D110(v52 + v19 * v17, v56, type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel);
      v21 = *v18;
      (*v18)(v57, v20, v5);
      v23 = v15[2];
      v22 = v15[3];
      if (v23 >= v22 >> 1)
      {
        v15 = sub_21D212C04((v22 > 1), v23 + 1, 1, v15);
      }

      v15[2] = v23 + 1;
      sub_21DA4D0A8(v57, v15 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v23, type metadata accessor for TTRTimeZonePickerViewModel.ItemIdentifier);
      v24 = v58;
      v25 = v56;
      v26 = v5;
      v21(v58, v56, v5);
      sub_21DA4D0A8(v25, v55, type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel);
      v27 = v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v27;
      v30 = sub_21D17E824(v24);
      v31 = v27[2];
      v32 = (v29 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        goto LABEL_20;
      }

      v34 = v29;
      if (v27[3] >= v33)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21D223010();
        }
      }

      else
      {
        sub_21D21A3E8(v33, isUniquelyReferenced_nonNull_native);
        v35 = sub_21D17E824(v58);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_22;
        }

        v30 = v35;
      }

      v5 = v26;
      v37 = v59;
      if (v34)
      {
        sub_21DA4D678(v55, v59[7] + v30 * v19);
        result = (*v51)(v58, v26);
      }

      else
      {
        v59[(v30 >> 6) + 8] |= 1 << v30;
        v38 = v48;
        v39 = v58;
        v21(v37[6] + *(v48 + 72) * v30, v58, v5);
        sub_21DA4D0A8(v55, v37[7] + v30 * v19, type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel);
        result = (*(v38 + 8))(v39, v5);
        v40 = v37[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_21;
        }

        v37[2] = v42;
      }

      ++v17;
      v60 = v37;
      v11 = v49;
      a3 = v50;
      if (v53 == v17)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    result = sub_21DBFC70C();
    __break(1u);
  }

  else
  {
    v37 = v60;
LABEL_18:
    v43 = v47;
    *v47 = v15;
    *(v43 + 8) = 0;
    v44 = v46;
    v43[2] = v45;
    v43[3] = v44;
    v43[4] = a3;
    v43[5] = v37;
  }

  return result;
}

uint64_t sub_21DA4D678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *sub_21DA4D6DC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF5C4C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    v11 = v10[1];
    *v9 = *v10;
    v9[1] = v11;
    sub_21DBF8E0C();
  }

  return a1;
}

double sub_21DA4D7B0(uint64_t a1)
{
  v2 = sub_21DBF5C4C();
  (*(*(v2 - 8) + 8))(a1, v2);

  return result;
}

uint64_t sub_21DA4D828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5C4C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21DA4D8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5C4C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v8[1] = v9[1];
  sub_21DBF8E0C();

  return a1;
}

uint64_t sub_21DA4D94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5C4C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_21DA4D9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5C4C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  *v8 = v11;
  v8[1] = v10;

  return a1;
}

uint64_t sub_21DA4DA7C(uint64_t a1)
{
  result = sub_21DBF5C4C();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t TTRUserDefaults.activitySessionId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    return 0;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_21DBFA16C();

  return v4;
}

uint64_t TTRUserDefaults.activitySessionBeginTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 valueForKey_];

    if (v5)
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12 = v10;
    v13 = v11;
    if (*(&v11 + 1))
    {
      v6 = sub_21DBF563C();
      v7 = swift_dynamicCast();
      return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  sub_21D0CF7E0(&v12, &qword_27CE5C690, &unk_21DC11AB0);
  v9 = sub_21DBF563C();
  return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
}

uint64_t TTRUserDefaults.hasCreatedGroceryList.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    return 1;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void TTRUserDefaults.hasCreatedGroceryList.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    [v3 setBool:a1 & 1 forKey:v4];
  }

  v5 = [objc_opt_self() daemonUserDefaults];
  [v5 setHasCreatedGroceryList_];
}

void (*sub_21DA4DE64(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRUserDefaults.hasCreatedGroceryList.modify(v2);
  return sub_21D4C3D30;
}

uint64_t (*TTRUserDefaults.hasCreatedGroceryList.modify(void *a1))()
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = (a1 + 1);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    v5 = [v2 BOOLForKey_];

    v6 = sub_21DA4DF9C;
  }

  else
  {
    v5 = 1;
    v6 = sub_21DA4DF90;
  }

  result = v6;
  *v3 = v5;
  return result;
}

void sub_21DA4DF9C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];

  v4 = [objc_opt_self() daemonUserDefaults];
  [v4 setHasCreatedGroceryList_];
}

uint64_t TTRUserDefaults.shouldHideEmptySectionsInGroceryOrAutoCategorizingList(with:)(void *a1)
{
  sub_21DBFBEEC();
  v3 = [a1 stringRepresentation];
  v4 = sub_21DBFA16C();
  v6 = v5;

  *&v17 = v4;
  *(&v17 + 1) = v6;
  MEMORY[0x223D42AA0](0xD000000000000011, 0x800000021DC74450);
  v7 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v7)
  {
    v8 = sub_21DBFA12C();
    v9 = [v7 objectForKey_];

    if (v9)
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17 = v15;
    v18 = v16;
    if (*(&v16 + 1))
    {
      sub_21D0CF7E0(&v17, &qword_27CE5C690, &unk_21DC11AB0);
      v10 = sub_21DBFA12C();

      v11 = [v7 BOOLForKey_];

      goto LABEL_10;
    }
  }

  else
  {

    v17 = 0u;
    v18 = 0u;
  }

  sub_21D0CF7E0(&v17, &qword_27CE5C690, &unk_21DC11AB0);
  v11 = 2;
LABEL_10:
  v12 = [a1 stringRepresentation];
  if (!v12)
  {
    sub_21DBFA16C();
    v12 = sub_21DBFA12C();

    if (v11 != 2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v11 == 2)
  {
LABEL_12:
    v13 = [objc_opt_self() daemonUserDefaults];
    LOBYTE(v11) = [v13 hideEmptySectionsForGroceryList_];
  }

LABEL_13:

  return v11 & 1;
}

void TTRUserDefaults.setShouldHideEmptySectionsInGroceryOrAutoCategorizingList(value:with:)(char a1, void *a2)
{
  sub_21DBFBEEC();
  v5 = [a2 stringRepresentation];
  sub_21DBFA16C();

  MEMORY[0x223D42AA0](0xD000000000000011, 0x800000021DC74450);
  v6 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v6)
  {
    v7 = sub_21DBFA12C();

    [v6 setURL:0 forKey:v7];
  }

  else
  {
  }

  v9 = [a2 stringRepresentation];
  if (!v9)
  {
    sub_21DBFA16C();
    v9 = sub_21DBFA12C();
  }

  v8 = [objc_opt_self() daemonUserDefaults];
  [v8 setHideEmptySections:a1 & 1 forGroceryList:v9];
}

uint64_t sub_21DA4E42C(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_21DBFC01C();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_21D0CEB98(i, v5);
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_21DBFBFEC();
    sub_21DBFC03C();
    sub_21DBFC04C();
    sub_21DBFBFFC();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_21DA4E538(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_21D18E678(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_21D0CEB98(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21D18E678((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void TTRUserDefaults.sharingExtensionLastSelectedListObjectID.setter(void *a1)
{
  v11 = a1;
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DA5392C(v11, 1);
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v6)
  {
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v7 = sub_21DBF55BC();
    (*(v3 + 8))(v5, v2);
    v8 = sub_21DBFA12C();
    [v6 setValue:v7 forKey:v8];
  }

  else
  {
    v9 = v11;
  }
}

uint64_t TTRUserDefaults.reminderDetailNewStyleEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_10:
    sub_21D0CF7E0(&v7, &qword_27CE5C690, &unk_21DC11AB0);
    return 2;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 2;
  }
}

void TTRUserDefaults.quickEntryRecentlySelectedListObjectID.setter(void *a1)
{
  v11 = a1;
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DA5392C(v11, 3);
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v6)
  {
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v7 = sub_21DBF55BC();
    (*(v3 + 8))(v5, v2);
    v8 = sub_21DBFA12C();
    [v6 setValue:v7 forKey:v8];
  }

  else
  {
    v9 = v11;
  }
}

void TTRUserDefaults.remindersInCalendarCreationLastSelectedListObjectID.setter(void *a1)
{
  sub_21DA5392C(a1, 8);
}

id TTRUserDefaults.templateSharingIncludePropertiesAlertShown.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v1)
  {
    v2 = sub_21DBFA12C();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

void TTRUserDefaults.templateSharingIncludePropertiesAlertShown.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

uint64_t TTRUserDefaults.RemindersListLayoutKey.key.getter()
{
  v1 = [*v0 stringRepresentation];
  v2 = sub_21DBFA16C();

  MEMORY[0x223D42AA0](0x74756F79614CLL, 0xE600000000000000);
  return v2;
}

uint64_t TTRUserDefaults.lastSelectedListIdentifier.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_21DBF664C();
  v113 = *(v3 - 8);
  v114 = v3;
  MEMORY[0x28223BE20](v3);
  v112 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v105 - v6;
  v8 = sub_21DBF663C();
  v115 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = (&v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v105 - v12;
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v105 - v15;
  v17 = sub_21DBF66FC();
  v18 = *(v17 - 8);
  v117 = v17;
  v118 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = (&v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v116 = &v105 - v22;
  v23 = sub_21DBF54CC();
  MEMORY[0x28223BE20](v23);
  v25 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v105 - v29;
  v31 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v31)
  {
    v121 = 0u;
    v122 = 0u;
LABEL_9:
    sub_21D0CF7E0(&v121, &qword_27CE5C690, &unk_21DC11AB0);
    goto LABEL_10;
  }

  v111 = v27;
  v110 = v28;
  v109 = v20;
  v32 = sub_21DBFA12C();
  v33 = [v31 valueForKey_];

  if (v33)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v119 = 0u;
    v120 = 0u;
  }

  v121 = v119;
  v122 = v120;
  if (!*(&v120 + 1))
  {
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v36 = type metadata accessor for TTRListType(0);
    v37 = *(*(v36 - 8) + 56);
    v38 = a1;
    return v37(v38, 1, 1, v36);
  }

  v108 = a1;
  v34 = v119;
  sub_21DBF521C();
  swift_allocObject();
  sub_21DBF520C();
  sub_21DA60E3C(&qword_280D171C8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v106 = v30;
  v35 = v111;
  v107 = v34;
  sub_21DBF51EC();

  v40 = v110;
  (*(v110 + 16))(v25, v106, v35);
  sub_21DBF670C();
  v41 = v117;
  v42 = v118;
  if ((*(v118 + 48))(v16, 1, v117) != 1)
  {
    v59 = v106;
    v60 = v116;
    (*(v42 + 32))(v116, v16, v41);
    v61 = v109;
    (*(v42 + 16))(v109, v60, v41);
    v62 = (*(v42 + 88))(v61, v41);
    if (v62 == *MEMORY[0x277D45220])
    {
      sub_21D17B8A8(v107, *(&v107 + 1));
      (*(v42 + 8))(*(&v34 + 1), v41);
      (*(v110 + 8))(v59, v111);
      (*(v42 + 96))(v61, v41);

      v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D8, &unk_21DC38378) + 48);
      v64 = type metadata accessor for TTRListType(0);
      (*(*(v64 - 8) + 56))(v108, 1, 1, v64);
      v65 = sub_21DBF665C();
      return (*(*(v65 - 8) + 8))(v61 + v63, v65);
    }

    v66 = v108;
    if (v62 == *MEMORY[0x277D451F8])
    {
      sub_21D17B8A8(v107, *(&v107 + 1));
      (*(v42 + 8))(v116, v41);
      (*(v110 + 8))(v59, v111);
      v67 = v109;
      (*(v42 + 96))(v109, v41);
      v68 = *v67;
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0, &qword_21DC210F0) + 48);
      **(&v34 + 1) = v68;
      *(*(&v34 + 1) + 8) = 0;
      v70 = type metadata accessor for TTRListType(0);
LABEL_25:
      swift_storeEnumTagMultiPayload();
      (*(*(v70 - 8) + 56))(v66, 0, 1, v70);
      v72 = sub_21DBF668C();
      return (*(*(v72 - 8) + 8))(&v67[v69], v72);
    }

    if (v62 == *MEMORY[0x277D451D8])
    {
      sub_21D17B8A8(v107, *(&v107 + 1));
      (*(v42 + 8))(v116, v41);
      (*(v110 + 8))(v59, v111);
      v67 = v109;
      (*(v42 + 96))(v109, v41);
      v71 = *v67;
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0, &qword_21DC210F0) + 48);
      **(&v34 + 1) = v71;
      v70 = type metadata accessor for TTRListType(0);
      goto LABEL_25;
    }

    if (v62 == *MEMORY[0x277D45230])
    {
      goto LABEL_27;
    }

    if (v62 == *MEMORY[0x277D45248])
    {
      sub_21D17B8A8(v107, *(&v107 + 1));
      (*(v42 + 8))(v116, v41);
      (*(v110 + 8))(v59, v111);
      v61 = v109;
      (*(v42 + 96))(v109, v41);

      v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62680, &unk_21DC1D040) + 48);
      v75 = type metadata accessor for TTRListType(0);
      (*(*(v75 - 8) + 56))(*(&v34 + 1), 1, 1, v75);
      v65 = sub_21DBF66DC();
      return (*(*(v65 - 8) + 8))(v61 + v63, v65);
    }

    if (v62 == *MEMORY[0x277D45238] || v62 == *MEMORY[0x277D451E8])
    {
      sub_21D17B8A8(v107, *(&v107 + 1));
      (*(v42 + 8))(v116, v41);
      (*(v110 + 8))(v59, v111);
      v61 = v109;
      (*(v42 + 96))(v109, v41);

      v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE650C0, &qword_21DC38370) + 48);
      v76 = type metadata accessor for TTRListType(0);
      (*(*(v76 - 8) + 56))(*(&v34 + 1), 1, 1, v76);
      v65 = sub_21DBF666C();
      return (*(*(v65 - 8) + 8))(v61 + v63, v65);
    }

    if (v62 == *MEMORY[0x277D45200])
    {
LABEL_27:
      sub_21D17B8A8(v107, *(&v107 + 1));
      v73 = *(v42 + 8);
      v73(v116, v41);
      (*(v110 + 8))(v59, v111);
      v74 = type metadata accessor for TTRListType(0);
      (*(*(v74 - 8) + 56))(*(&v34 + 1), 1, 1, v74);
      return (v73)(v109, v41);
    }

    if (v62 == *MEMORY[0x277D45208])
    {
      sub_21D17B8A8(v107, *(&v107 + 1));
      v77 = *(v42 + 8);
      v77(v116, v41);
      (*(v110 + 8))(v59, v111);
      **(&v34 + 1) = 0;
      v78 = v41;
      v79 = type metadata accessor for TTRListType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v79 - 8) + 56))(*(&v34 + 1), 0, 1, v79);
      return (v77)(v109, v78);
    }

    if (v62 == *MEMORY[0x277D45258])
    {
      sub_21D17B8A8(v107, *(&v107 + 1));
      v80 = v117;
      v81 = *(v118 + 8);
      v81(v116, v117);
      (*(v110 + 8))(v59, v111);
      v82 = 1;
LABEL_42:
      v83 = v108;
      *v108 = v82;
      v84 = type metadata accessor for TTRListType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
      return (v81)(v109, v80);
    }

    if (v62 == *MEMORY[0x277D451C8])
    {
      sub_21D17B8A8(v107, *(&v107 + 1));
      v80 = v117;
      v81 = *(v118 + 8);
      v81(v116, v117);
      (*(v110 + 8))(v59, v111);
      v82 = 2;
      goto LABEL_42;
    }

    if (v62 == *MEMORY[0x277D45228])
    {
      sub_21D17B8A8(v107, *(&v107 + 1));
      v80 = v117;
      v81 = *(v118 + 8);
      v81(v116, v117);
      (*(v110 + 8))(v59, v111);
      v82 = 3;
      goto LABEL_42;
    }

    if (v62 == *MEMORY[0x277D45210])
    {
      v85 = v109;
      (*(v118 + 96))(v109, v117);
      v86 = v115;
      (*(v115 + 32))(v13, v85, v8);
      (*(v86 + 16))(v10, v13, v8);
      v87 = (*(v86 + 88))(v10, v8);
      if (v87 == *MEMORY[0x277D450F0])
      {
        sub_21D17B8A8(v107, *(&v107 + 1));
        v88 = v115;
        (*(v115 + 8))(v13, v8);
        (*(v118 + 8))(v116, v117);
        (*(v110 + 8))(v59, v111);
        (*(v88 + 96))(v10, v8);
        v89 = v10[1];
        v90 = v108;
        *v108 = *v10;
        *(v90 + 1) = v89;
        v91 = type metadata accessor for TTRListType(0);
LABEL_46:
        swift_storeEnumTagMultiPayload();
        return (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
      }

      if (v87 == *MEMORY[0x277D450F8])
      {
        sub_21D17B8A8(v107, *(&v107 + 1));
        (*(v115 + 8))(v13, v8);
LABEL_51:
        (*(v118 + 8))(v116, v117);
        (*(v110 + 8))(v59, v111);
        v36 = type metadata accessor for TTRListType(0);
        v37 = *(*(v36 - 8) + 56);
        v38 = v108;
        return v37(v38, 1, 1, v36);
      }

      sub_21DBFC63C();
      __break(1u);
    }

    else
    {
      if (v62 == *MEMORY[0x277D45240])
      {
        sub_21D17B8A8(v107, *(&v107 + 1));
        v80 = v117;
        v81 = *(v118 + 8);
        v81(v116, v117);
        (*(v110 + 8))(v59, v111);
        v82 = 4;
        goto LABEL_42;
      }

      if (v62 == *MEMORY[0x277D451E0])
      {
        sub_21D17B8A8(v107, *(&v107 + 1));
        v80 = v117;
        v81 = *(v118 + 8);
        v81(v116, v117);
        (*(v110 + 8))(v59, v111);
        v82 = 5;
        goto LABEL_42;
      }

      if (v62 == *MEMORY[0x277D45218])
      {
        v92 = v109;
        (*(v118 + 96))(v109, v117);
        v93 = v113;
        v94 = v92;
        v95 = v114;
        (*(v113 + 32))(v7, v94, v114);
        v96 = v112;
        (*(v93 + 16))(v112, v7, v95);
        v97 = (*(v93 + 88))(v96, v95);
        if (v97 == *MEMORY[0x277D45100])
        {
          sub_21D17B8A8(v107, *(&v107 + 1));
          v99 = v113;
          v98 = v114;
          (*(v113 + 8))(v7, v114);
          (*(v118 + 8))(v116, v117);
          (*(v110 + 8))(v59, v111);
          v100 = v112;
          (*(v99 + 96))(v112, v98);
          v101 = sub_21DBF6C1C();
          v90 = v108;
          (*(*(v101 - 8) + 32))(v108, v100, v101);
          v91 = type metadata accessor for TTRListType(0);
          goto LABEL_46;
        }

        if (v97 == *MEMORY[0x277D45108])
        {
          sub_21D17B8A8(v107, *(&v107 + 1));
          (*(v113 + 8))(v7, v114);
          goto LABEL_51;
        }
      }

      else
      {
        if (v62 == *MEMORY[0x277D45250])
        {
          sub_21D17B8A8(v107, *(&v107 + 1));
          v80 = v117;
          v81 = *(v118 + 8);
          v81(v116, v117);
          (*(v110 + 8))(v59, v111);
          v82 = 6;
          goto LABEL_42;
        }

        if (v62 == *MEMORY[0x277D451D0])
        {
          sub_21D17B8A8(v107, *(&v107 + 1));
          v102 = v117;
          v103 = *(v118 + 8);
          v103(v116, v117);
          (*(v110 + 8))(v59, v111);
          v104 = type metadata accessor for TTRListType(0);
          (*(*(v104 - 8) + 56))(v108, 1, 1, v104);
          return (v103)(v109, v102);
        }

        if (v62 == *MEMORY[0x277D45138] || v62 == *MEMORY[0x277D451F0])
        {
          sub_21D17B8A8(v107, *(&v107 + 1));
          goto LABEL_51;
        }
      }
    }

    result = sub_21DBFC63C();
    __break(1u);
    return result;
  }

  v43 = objc_opt_self();
  v44 = v40;
  v45 = sub_21DBFA12C();
  v46 = [v43 internalErrorWithDebugDescription_];

  swift_willThrow();
  (*(v44 + 8))(v106, v35);
  if (qword_27CE56FE8 != -1)
  {
    swift_once();
  }

  v47 = sub_21DBF84BC();
  __swift_project_value_buffer(v47, qword_27CE65080);
  v48 = v46;
  v49 = sub_21DBF84AC();
  v50 = sub_21DBFAEBC();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *&v121 = v52;
    *v51 = 136315138;
    swift_getErrorValue();
    v53 = sub_21DBFC75C();
    v55 = sub_21D0CDFB4(v53, v54, &v121);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_21D0C9000, v49, v50, "Failed to decode lastSelectedListIdentifier as URL {error: %s}", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x223D46520](v52, -1, -1);
    MEMORY[0x223D46520](v51, -1, -1);
  }

  v58 = v107;
  v56 = v58 >> 64;
  v57 = v58;
  sub_21DA52E74(v108);

  return sub_21D17B8A8(v57, v56);
}

uint64_t TTRUserDefaults.lastSelectedListIdentifier.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - v3;
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  sub_21D0D3954(a1, v4, &qword_27CE650E0, &unk_21DC1BD10);
  v8 = type metadata accessor for TTRListType(0);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v30 = **(&unk_27832F9E8 + *v4);
        sub_21DBF671C();
        goto LABEL_13;
      }

      v11 = *v4;
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0, &qword_21DC210F0) + 48);
      *v7 = v11;
      v13 = *MEMORY[0x277D45140];
      v14 = sub_21DBF668C();
      (*(*(v14 - 8) + 104))(&v7[v12], v13, v14);
      v15 = MEMORY[0x277D451D8];
    }

    else
    {
      v19 = *v4;
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0, &qword_21DC210F0) + 48);
      *v7 = v19;
      v21 = *MEMORY[0x277D45140];
      v22 = sub_21DBF668C();
      (*(*(v22 - 8) + 104))(&v7[v20], v21, v22);
      v15 = MEMORY[0x277D451F8];
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v23 = sub_21DBF6C1C();
    (*(*(v23 - 8) + 32))(v7, v4, v23);
    v24 = *MEMORY[0x277D45100];
    v25 = sub_21DBF664C();
    (*(*(v25 - 8) + 104))(v7, v24, v25);
    v15 = MEMORY[0x277D45218];
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v16 = *(v4 + 1);
    *v7 = *v4;
    *(v7 + 1) = v16;
    v17 = *MEMORY[0x277D450F0];
    v18 = sub_21DBF663C();
    (*(*(v18 - 8) + 104))(v7, v17, v18);
    v15 = MEMORY[0x277D45210];
LABEL_12:
    v26 = *v15;
    v27 = sub_21DBF66FC();
    v28 = *(v27 - 8);
    (*(v28 + 104))(v7, v26, v27);
    (*(v28 + 56))(v7, 0, 1, v27);
    goto LABEL_13;
  }

  sub_21DA5FAE4(v4, type metadata accessor for TTRListType);
LABEL_2:
  v9 = sub_21DBF66FC();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
LABEL_13:
  sub_21DA53180(v7, 0);
  sub_21D0CF7E0(a1, &qword_27CE650E0, &unk_21DC1BD10);
}

void (*sub_21DA507B0(void **a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    *a1 = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = *v1;
  a1[1] = v4;
  a1[2] = v5;
  TTRUserDefaults.lastSelectedListIdentifier.getter(v4);
  return sub_21DA5086C;
}

void sub_21DA5086C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  if (a2)
  {
    sub_21D0D3954(*(a1 + 8), v3, &qword_27CE650E0, &unk_21DC1BD10);
    TTRUserDefaults.lastSelectedListIdentifier.setter(v3);
    sub_21D0CF7E0(v2, &qword_27CE650E0, &unk_21DC1BD10);
  }

  else
  {
    TTRUserDefaults.lastSelectedListIdentifier.setter(*(a1 + 8));
  }

  free(v2);

  free(v3);
}

void (*TTRUserDefaults.lastSelectedListIdentifier.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  TTRUserDefaults.lastSelectedListIdentifier.getter(v4);
  return sub_21DA509C4;
}

void sub_21DA509C4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_21D0D3954(*(a1 + 16), v2, &qword_27CE650E0, &unk_21DC1BD10);
    TTRUserDefaults.lastSelectedListIdentifier.setter(v2);
    sub_21D0CF7E0(v3, &qword_27CE650E0, &unk_21DC1BD10);
  }

  else
  {
    TTRUserDefaults.lastSelectedListIdentifier.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

double TTRUserDefaults.smartListsDisplayOrder.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (v3)
  {
    v25 = MEMORY[0x277D84F90];
    sub_21D18E678(0, v3, 0);
    v4 = 32;
    v5 = v25;
    v6 = 0x7961646F74;
    do
    {
      v7 = *(v2 + v4);
      if (v7 == 5)
      {
        v8 = 0x6E756F4669726973;
      }

      else
      {
        v8 = 0x6574656C706D6F63;
      }

      if (v7 == 5)
      {
        v9 = 0xEF737070416E4964;
      }

      else
      {
        v9 = 0xE900000000000064;
      }

      if (v7 == 3)
      {
        v10 = 0x64656767616C66;
      }

      else
      {
        v10 = 0x64656E6769737361;
      }

      if (v7 == 3)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xE800000000000000;
      }

      if (*(v2 + v4) <= 4u)
      {
        v8 = v10;
        v9 = v11;
      }

      if (v7 == 1)
      {
        v12 = 0x656C756465686373;
      }

      else
      {
        v12 = 7105633;
      }

      if (v7 == 1)
      {
        v13 = 0xE900000000000064;
      }

      else
      {
        v13 = 0xE300000000000000;
      }

      if (!*(v2 + v4))
      {
        v12 = v6;
        v13 = 0xE500000000000000;
      }

      if (*(v2 + v4) <= 2u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v8;
      }

      if (*(v2 + v4) <= 2u)
      {
        v15 = v13;
      }

      else
      {
        v15 = v9;
      }

      v26 = v5;
      v17 = *(v5 + 16);
      v16 = *(v5 + 24);
      if (v17 >= v16 >> 1)
      {
        v19 = v6;
        sub_21D18E678((v16 > 1), v17 + 1, 1);
        v6 = v19;
        v5 = v26;
      }

      *(v5 + 16) = v17 + 1;
      v18 = v5 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      ++v4;
      --v3;
    }

    while (v3);

    v1 = v23;
  }

  else
  {
  }

  v20 = *&v1[OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults];
  if (v20)
  {
    v21 = sub_21DBFA5DC();

    v24 = sub_21DBFA12C();
    [v20 setObject:v21 forKey:v24];
  }

  else
  {
  }

  return result;
}

uint64_t (*sub_21DA50D54(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[1] = *v1;
  TTRUserDefaults.smartListsDisplayOrder.getter(a1);
  return sub_21DA60F88;
}

void (*TTRUserDefaults.smartListsDisplayOrder.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  TTRUserDefaults.smartListsDisplayOrder.getter(a1);
  return sub_21DA50DE8;
}

void TTRUserDefaults.smartListsVisibility.setter(void *a1)
{
  v1 = *a1;
  v2 = *a1 + 64;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;
  sub_21DBF8E0C();
  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  v35 = v1;
  while (v5)
  {
    v11 = v7;
LABEL_11:
    v12 = __clz(__rbit64(v5)) | (v11 << 6);
    v13 = *(*(v1 + 48) + v12);
    if (v13 <= 2)
    {
      if (*(*(v1 + 48) + v12))
      {
        if (v13 == 1)
        {
          v15 = 0x656C756465686373;
        }

        else
        {
          v15 = 7105633;
        }

        if (v13 == 1)
        {
          v14 = 0xE900000000000064;
        }

        else
        {
          v14 = 0xE300000000000000;
        }
      }

      else
      {
        v14 = 0xE500000000000000;
        v15 = 0x7961646F74;
      }
    }

    else if (*(*(v1 + 48) + v12) > 4u)
    {
      if (v13 == 5)
      {
        v15 = 0x6E756F4669726973;
        v14 = 0xEF737070416E4964;
      }

      else
      {
        v15 = 0x6574656C706D6F63;
        v14 = 0xE900000000000064;
      }
    }

    else if (v13 == 3)
    {
      v14 = 0xE700000000000000;
      v15 = 0x64656767616C66;
    }

    else
    {
      v14 = 0xE800000000000000;
      v15 = 0x64656E6769737361;
    }

    v16 = *(*(v1 + 56) + v12);
    if (v16 > 1)
    {
      v36 = 0xE600000000000000;
      if (v16 == 2)
      {
        v17 = 0x6E6564646968;
      }

      else
      {
        v17 = 0x6D6F74737563;
      }
    }

    else if (v16)
    {
      v36 = 0xE700000000000000;
      v17 = 0x656C6269736976;
    }

    else
    {
      v17 = 0x656E696665646E75;
      v36 = 0xE900000000000064;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_21D0CEF70(v15, v14);
    v21 = v8[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      sub_21DBFC70C();
      __break(1u);
      return;
    }

    v25 = v20;
    if (v8[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v19;
        sub_21D2201D4();
        v19 = v31;
      }
    }

    else
    {
      sub_21D2156F8(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_21D0CEF70(v15, v14);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_53;
      }
    }

    v5 &= v5 - 1;
    if (v25)
    {
      v9 = v19;

      v10 = (v8[7] + 16 * v9);
      *v10 = v17;
      v10[1] = v36;
    }

    else
    {
      v8[(v19 >> 6) + 8] |= 1 << v19;
      v27 = (v8[6] + 16 * v19);
      *v27 = v15;
      v27[1] = v14;
      v28 = (v8[7] + 16 * v19);
      *v28 = v17;
      v28[1] = v36;
      v29 = v8[2];
      v23 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v23)
      {
        goto LABEL_52;
      }

      v8[2] = v30;
    }

    v7 = v11;
    v1 = v35;
  }

  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v11 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v11);
    ++v7;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  v32 = *(v34 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v32)
  {
    v33 = sub_21DBF9E5C();

    v37 = sub_21DBFA12C();
    [v32 setObject:v33 forKey:v37];
  }

  else
  {
  }
}

uint64_t (*sub_21DA51234(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  a1[1] = *v1;
  TTRUserDefaults.smartListsVisibility.getter(a1);
  return sub_21DA60F84;
}

void (*TTRUserDefaults.smartListsVisibility.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  TTRUserDefaults.smartListsVisibility.getter(a1);
  return sub_21DA512C8;
}

void sub_21DA512E0(uint64_t *a1, char a2, void (*a3)(uint64_t *))
{
  if (a2)
  {
    v4 = *a1;
    sub_21DBF8E0C();
    a3(&v4);
  }

  else
  {
    v4 = *a1;
    a3(&v4);
  }
}

id TTRUserDefaults.showsCompleted(forType:)(uint64_t *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v5 = *a1;
    LOBYTE(v6) = *(a1 + 8);
    TTRUserDefaults.ShowCompletedType.key.getter();
    v3 = sub_21DBFA12C();

    v2 = [v2 BOOLForKey_];
  }

  return v2;
}

void sub_21DA513F0(uint64_t a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = a1;
    TTRUserDefaults.ShowCompletedType.key.getter();
    v4 = sub_21DBFA12C();

    [v2 setBool:v3 & 1 forKey:v4];
  }
}

void TTRUserDefaults.setShowsCompleted(value:forType:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = a1;
    TTRUserDefaults.ShowCompletedType.key.getter();
    v4 = sub_21DBFA12C();

    [v2 setBool:v3 & 1 forKey:v4];
  }
}

uint64_t sub_21DA5154C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    return 1;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_21DA515C4(char a1)
{
  v3 = *(*v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    [v3 setBool:a1 & 1 forKey:v4];
  }

  v5 = [objc_opt_self() daemonUserDefaults];
  [v5 setHasCreatedGroceryList_];
}

void (*sub_21DA5168C(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRUserDefaults.hasCreatedGroceryList.modify(v2);
  return sub_21D4C3D30;
}

id TTRUserDefaults.migrationTipDismissed.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v1)
  {
    v2 = sub_21DBFA12C();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

id TTRUserDefaults.iCloudSyncTipDismissed.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v1)
  {
    v2 = sub_21DBFA12C();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

void TTRUserDefaults.quickReminderCreationLastSelectedFlagOption.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    if (a1 == 2)
    {
      v3 = 0;
    }

    else
    {
      v3 = sub_21DBFA7AC();
    }

    v4 = sub_21DBFA12C();
    [v2 setObject:v3 forKey:v4];
    swift_unknownObjectRelease();
  }
}

void TTRUserDefaults.quickReminderCreationLastSelectedDueDateOption.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    if (a2)
    {
      v4 = sub_21DBFA12C();
    }

    else
    {
      v4 = 0;
    }

    v5 = sub_21DBFA12C();
    [v3 setObject:v4 forKey:v5];
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void TTRUserDefaults.quickReminderCreationLastSelectedLocationOption.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    if (a2)
    {
      v4 = sub_21DBFA12C();
    }

    else
    {
      v4 = 0;
    }

    v5 = sub_21DBFA12C();
    [v3 setObject:v4 forKey:v5];
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t TTRUserDefaults.quickReminderCreationLastSelectedDueDateOption.getter()
{
  v1 = 1701736302;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = sub_21DBFA12C();
    v4 = [v2 stringForKey_];

    if (v4)
    {
      v1 = sub_21DBFA16C();
    }
  }

  return v1;
}

uint64_t TTRUserDefaults.quickReminderCreationLastSelectedLocationOption.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    return 0;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_21DBFA16C();

  return v4;
}

uint64_t TTRUserDefaults.quickReminderCreationLastSelectedFlagOption.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v1)
  {
    v2 = sub_21DBFA12C();
    v3 = [v1 objectForKey_];

    if (v3)
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    v9 = v7;
    v10 = v8;
    if (*(&v8 + 1))
    {
      sub_21D0CF7E0(&v9, &qword_27CE5C690, &unk_21DC11AB0);
      v4 = sub_21DBFA12C();
      v5 = [v1 BOOLForKey_];

      return v5;
    }
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  sub_21D0CF7E0(&v9, &qword_27CE5C690, &unk_21DC11AB0);
  return 2;
}

void TTRUserDefaults.quickReminderCreationRecentlySelectedListObjectID.setter(void *a1)
{
  sub_21DA5392C(a1, 3);
}

id TTRUserDefaults.animationSlowModeEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v1)
  {
    v2 = sub_21DBFA12C();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

uint64_t TTRUserDefaults.ShowCompletedType.key.getter()
{
  v1 = *v0;
  if (*(v0 + 8) && *(v0 + 8) != 1)
  {
    v4 = 7105633;
    v5 = 0x686372616573;
    v6 = 0x64656E6769737361;
    if (v1 != 4)
    {
      v6 = 0x646567676174;
    }

    if (v1 != 3)
    {
      v5 = v6;
    }

    v7 = 0x656C756465686373;
    if (v1 != 1)
    {
      v7 = 0x64656767616C66;
    }

    if (v1)
    {
      v4 = v7;
    }

    if (v1 <= 2)
    {
      v3 = v4;
    }

    else
    {
      v3 = v5;
    }
  }

  else
  {
    v2 = [v1 stringRepresentation];
    v3 = sub_21DBFA16C();
  }

  sub_21DBFBEEC();

  MEMORY[0x223D42AA0](0x6D6F4373776F6853, 0xEE00646574656C70);
  return v3;
}

void TTRUserDefaults.groceryTipDismissed.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    [v3 setBool:a1 & 1 forKey:v4];
  }

  v5 = [objc_opt_self() daemonUserDefaults];
  [v5 setGroceryTipDismissed_];
}

uint64_t sub_21DA51F98()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE65080);
  v1 = __swift_project_value_buffer(v0, qword_27CE65080);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id TTRUserDefaultsObservingBlock.__allocating_init(block:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC15RemindersUICore29TTRUserDefaultsObservingBlock_block];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id TTRUserDefaultsObservingBlock.init(block:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC15RemindersUICore29TTRUserDefaultsObservingBlock_block];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t TTRUserDefaultsObserver.userDefaultsKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaultsKey);
  sub_21DBF8E0C();
  return v1;
}

id TTRUserDefaultsObserver.__allocating_init(userDefaults:userDefaultsKey:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v9[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed] = 0;
  *&v9[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaults] = a1;
  v10 = &v9[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaultsKey];
  *v10 = a2;
  v10[1] = a3;
  *&v9[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_block] = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id TTRUserDefaultsObserver.init(userDefaults:userDefaultsKey:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaults] = a1;
  v10 = &v4[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaultsKey];
  *v10 = a2;
  v10[1] = a3;
  *&v4[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_block] = a4;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

Swift::Void __swiftcall TTRUserDefaultsObserver.stopObserving()()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed;
  if ((*(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed) & 1) == 0)
  {
    sub_21DA52394(v0);
    *(v0 + v1) = 1;
  }
}

void sub_21DA52394(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaultsKey);
  v5 = *(a1 + OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_userDefaultsKey + 8);
  v6 = OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_observers;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (*(v7 + 16) && (v8 = sub_21D0CEF70(v4, v5), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v11 = v10;
    [v11 removeObject_];
    if (![v11 count])
    {
      swift_beginAccess();
      v12 = sub_21D983C6C(v4, v5);
      swift_endAccess();

      v13 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
      if (v13)
      {
        v14 = sub_21DBFA12C();
        [v13 removeObserver:v2 forKeyPath:v14];
      }
    }
  }

  else
  {
    swift_endAccess();
  }
}

id TTRUserDefaultsObserver.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed;
  if ((v0[OBJC_IVAR____TtC15RemindersUICore23TTRUserDefaultsObserver_removed] & 1) == 0)
  {
    sub_21DA52394(v0);
    v0[v2] = 1;
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id TTRUserDefaults.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_21DA52758(uint64_t a1, uint64_t a2, double a3)
{
  v5 = a2;
  v6 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_21DBF563C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  result = sub_21DA536F0(v6);
  if (result)
  {
    v18 = *(v3 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
    if (v18)
    {
      v19 = result;
      sub_21DA52AE0(v5);
      v20 = sub_21DBFA12C();

      v21 = [v18 valueForKey_];

      if (v21)
      {
        sub_21DBFBC1C();
        swift_unknownObjectRelease();
      }

      else
      {
        v26 = 0u;
        v27 = 0u;
      }

      v28 = v26;
      v29 = v27;
      if (*(&v27 + 1))
      {
        v22 = swift_dynamicCast();
        (*(v11 + 56))(v9, v22 ^ 1u, 1, v10);
        if ((*(v11 + 48))(v9, 1, v10) != 1)
        {
          (*(v11 + 32))(v16, v9, v10);
          _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
          sub_21DBF558C();
          v24 = v23;
          v25 = *(v11 + 8);
          v25(v13, v10);
          v25(v16, v10);
          if (v24 > a3)
          {

            return 0;
          }

          return v19;
        }

LABEL_12:
        sub_21D0CF7E0(v9, &qword_27CE58D68, &unk_21DC0C060);
        return v19;
      }
    }

    else
    {
      v19 = result;
      v28 = 0u;
      v29 = 0u;
    }

    sub_21D0CF7E0(&v28, &qword_27CE5C690, &unk_21DC11AB0);
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_12;
  }

  return result;
}

void (*TTRUserDefaults.sharingExtensionLastSelectedListObjectID.modify(void **a1))(void **a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_21DA52758(1, 2, 480.0);
  return sub_21DA52AC8;
}

unint64_t sub_21DA52AE0(char a1)
{
  result = 0x62654473776F6873;
  switch(a1)
  {
    case 1:
    case 29:
    case 34:
    case 35:
      result = 0xD000000000000028;
      break;
    case 2:
    case 7:
    case 21:
      result = 0xD000000000000020;
      break;
    case 3:
      result = 0xD000000000000026;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    case 5:
      result = 0xD000000000000023;
      break;
    case 6:
    case 23:
      result = 0xD000000000000024;
      break;
    case 8:
      result = 0xD000000000000033;
      break;
    case 9:
    case 12:
      result = 0xD000000000000014;
      break;
    case 10:
    case 17:
      result = 0xD000000000000016;
      break;
    case 11:
      return result;
    case 13:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    case 16:
    case 19:
    case 36:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0xD000000000000013;
      break;
    case 20:
    case 30:
      result = 0xD00000000000001CLL;
      break;
    case 22:
    case 26:
    case 28:
      result = 0xD000000000000018;
      break;
    case 24:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0xD00000000000002ALL;
      break;
    case 27:
      result = 0xD000000000000011;
      break;
    case 31:
    case 37:
      result = 0xD00000000000001DLL;
      break;
    case 32:
      result = 0xD000000000000019;
      break;
    case 33:
      result = 0xD000000000000019;
      break;
    default:
      result = 0xD00000000000001ALL;
      break;
  }

  return result;
}

uint64_t sub_21DA52E74@<X0>(_BYTE *a3@<X8>)
{
  sub_21D0D8CF0(0, &qword_27CE61DA0, 0x277CCAAC8);
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v4 = sub_21DBFB07C();
  if (v4)
  {
    *a3 = v4;
    a3[8] = 0;
    v15 = type metadata accessor for TTRListType(0);
    swift_storeEnumTagMultiPayload();
    v11 = *(*(v15 - 8) + 56);
    v13 = a3;
    v14 = 0;
    v12 = v15;
  }

  else
  {
    sub_21D0D8CF0(0, &qword_27CE5A168, 0x277CCACA8);
    v5 = sub_21DBFB07C();
    if (v5)
    {
      v18 = 0;
      v19 = 0;
      v17 = v5;
      sub_21DBFA15C();
    }

    if (qword_27CE56FE8 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE65080);
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAECC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21D0C9000, v7, v8, "unable to decode existing lastSelectedListIdentifier", v9, 2u);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    v10 = type metadata accessor for TTRListType(0);
    v11 = *(*(v10 - 8) + 56);
    v12 = v10;
    v13 = a3;
    v14 = 1;
  }

  return v11(v13, v14, 1, v12);
}

void sub_21DA53180(uint64_t a1, int a2)
{
  v27 = a2;
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26[-v9];
  v11 = sub_21DBF66FC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v15;
  if ((*(v12 + 48))(v10, 1, v16) == 1)
  {
    v17 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
    if (v17)
    {
      sub_21DA52AE0(v27);
      v18 = sub_21DBFA12C();

      [v17 removeObjectForKey_];
    }
  }

  else
  {
    v19 = v2;
    (*(v12 + 32))(v14, v10, v16);
    sub_21DBF525C();
    swift_allocObject();
    sub_21DBF524C();
    sub_21DBF66EC();
    sub_21DA60E3C(&qword_280D1B898, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    v20 = sub_21DBF522C();
    v22 = v21;
    (*(v5 + 8))(v7, v4);

    v23 = *(v19 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
    if (v23)
    {
      v24 = sub_21DBF54FC();
      sub_21DA52AE0(v27);
      v25 = sub_21DBFA12C();

      [v23 setObject:v24 forKey:v25];
      sub_21D17B8A8(v20, v22);

      (*(v12 + 8))(v14, v16);
    }

    else
    {
      (*(v12 + 8))(v14, v16);
      sub_21D17B8A8(v20, v22);
    }
  }
}

void (*TTRUserDefaults.quickEntryRecentlySelectedListObjectID.modify(void **a1))(void **a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_21DA52758(3, 4, 480.0);
  return sub_21DA53658;
}

void sub_21DA53670(void **a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  if (a2)
  {
    v5 = v4;
    a3(v4);
  }

  else
  {
    a3(*a1);
  }
}

uint64_t sub_21DA536F0(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v2)
  {
    v14 = 0u;
    v15 = 0u;
LABEL_14:
    sub_21D0CF7E0(&v14, &qword_27CE5C690, &unk_21DC11AB0);
    return 0;
  }

  sub_21DA52AE0(a1);
  v3 = sub_21DBFA12C();

  v4 = [v2 valueForKey_];

  if (v4)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_21D0D8CF0(0, &qword_27CE61DA0, 0x277CCAAC8);
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v5 = sub_21DBFB07C();
  if (!v5)
  {
    if (qword_27CE56FE8 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE65080);
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAECC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21D0C9000, v7, v8, "unable to decode objectID", v9, 2u);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    sub_21D17B8A8(v12, *(&v12 + 1));

    return 0;
  }

  v11 = v5;
  sub_21D17B8A8(v12, *(&v12 + 1));
  return v11;
}

void sub_21DA5392C(void *a1, char a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v5 = objc_opt_self();
    v23[0] = 0;
    v6 = a1;
    v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:v23];
    v8 = v23[0];
    if (v7)
    {
      v9 = sub_21DBF551C();
      v11 = v10;

      v12 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
      if (v12)
      {
        v13 = sub_21DBF54FC();
        sub_21DA52AE0(a2);
        v14 = sub_21DBFA12C();

        [v12 setObject:v13 forKey:v14];

        sub_21D17B8A8(v9, v11);
      }

      else
      {

        sub_21D17B8A8(v9, v11);
      }
    }

    else
    {
      v16 = v8;
      v17 = sub_21DBF52DC();

      swift_willThrow();
      if (qword_27CE56FE8 != -1)
      {
        swift_once();
      }

      v18 = sub_21DBF84BC();
      __swift_project_value_buffer(v18, qword_27CE65080);
      v19 = sub_21DBF84AC();
      v20 = sub_21DBFAECC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_21D0C9000, v19, v20, "unable to encode objectID", v21, 2u);
        MEMORY[0x223D46520](v21, -1, -1);
      }
    }
  }

  else
  {
    v15 = *(v2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
    if (v15)
    {
      sub_21DA52AE0(a2);
      v22 = sub_21DBFA12C();

      [v15 removeObjectForKey_];
    }
  }
}

void (*TTRUserDefaults.remindersInCalendarCreationLastSelectedListObjectID.modify(uint64_t *a1))(void **a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_21DA536F0(8);
  return sub_21DA53C34;
}

void (*TTRUserDefaults.quickReminderCreationRecentlySelectedListObjectID.modify(uint64_t *a1))(void **a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_21DA536F0(3);
  return sub_21DA53C90;
}

void sub_21DA53C98(void **a1, char a2, char a3)
{
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    sub_21DA5392C(v6, a3);

    v5 = v4;
  }

  else
  {
    sub_21DA5392C(*a1, a3);
    v5 = v6;
  }
}

double (*TTRUserDefaults.quickReminderCreationLastSelectedDueDateOption.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 stringForKey_];

    if (v5)
    {
      v6 = sub_21DBFA16C();
      v8 = v7;
    }

    else
    {
      v8 = 0xE400000000000000;
      v6 = 1701736302;
    }

    *a1 = v6;
    a1[1] = v8;
    return sub_21DA53E04;
  }

  else
  {
    *a1 = xmmword_21DC38360;
    return sub_21DA53EF4;
  }
}

double sub_21DA53E04(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = a1[1];
    v3 = *a1;
    sub_21DBF8E0C();
    TTRUserDefaults.quickReminderCreationLastSelectedDueDateOption.setter(v3, v2);
  }

  else
  {
    if (a1[1])
    {
      v5 = a1;
      v6 = sub_21DBFA12C();

      a1 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = a1[3];
    v8 = sub_21DBFA12C();
    [v7 setObject:v6 forKey:v8];

    swift_unknownObjectRelease();
  }

  return result;
}

double (*TTRUserDefaults.quickReminderCreationLastSelectedLocationOption.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 stringForKey_];

    if (v5)
    {
      v6 = sub_21DBFA16C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    *a1 = v6;
    a1[1] = v8;
    return sub_21DA53FEC;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    return sub_21DA540DC;
  }
}

double sub_21DA53FEC(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = a1[1];
    v3 = *a1;
    sub_21DBF8E0C();
    TTRUserDefaults.quickReminderCreationLastSelectedLocationOption.setter(v3, v2);
  }

  else
  {
    if (a1[1])
    {
      v5 = a1;
      v6 = sub_21DBFA12C();

      a1 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = a1[3];
    v8 = sub_21DBFA12C();
    [v7 setObject:v6 forKey:v8];

    swift_unknownObjectRelease();
  }

  return result;
}

double (*TTRUserDefaults.quickReminderCreationLastSelectedFlagOption.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = TTRUserDefaults.quickReminderCreationLastSelectedFlagOption.getter();
  return sub_21DA5413C;
}

double sub_21DA5413C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if ((a2 & 1) == 0)
  {
    if (!v3)
    {
      return result;
    }

    if (v2 != 2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (!v3)
  {
    return result;
  }

  if (v2 == 2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = sub_21DBFA7AC();
LABEL_8:
  v5 = sub_21DBFA12C();
  [v3 setObject:v4 forKey:v5];

  swift_unknownObjectRelease();
  return result;
}

void sub_21DA54204(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65230, &unk_21DC38B90);
    v2 = sub_21DBFC40C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  sub_21DBF8E0C();
  v8 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v12 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v12);
    ++v8;
  }

  while (!v6);
  while (1)
  {
    v13 = __clz(__rbit64(v6)) | (v12 << 6);
    v14 = (*(v1 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_21D0CEB98(*(v1 + 56) + 32 * v13, v29);
    *&v28 = v15;
    *(&v28 + 1) = v16;
    v26[2] = v28;
    v27[0] = v29[0];
    v27[1] = v29[1];
    v17 = v28;
    sub_21D0CF2E8(v27, v26);
    sub_21DBF8E0C();
    if (!swift_dynamicCast())
    {
      break;
    }

    v6 &= v6 - 1;
    v18 = sub_21D0CEF70(v17, *(&v17 + 1));
    if (v19)
    {
      v9 = v1;
      v10 = 16 * v18;
      *(v2[6] + 16 * v18) = v17;

      v11 = (v2[7] + v10);
      v1 = v9;
      *v11 = v24;
      v11[1] = v25;

      v8 = v12;
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
      *(v2[6] + 16 * v18) = v17;
      v20 = (v2[7] + 16 * v18);
      *v20 = v24;
      v20[1] = v25;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_23;
      }

      v2[2] = v23;
      v8 = v12;
      if (!v6)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v12 = v8;
  }
}

void sub_21DA5447C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  sub_21DBF8E0C();
  v4._countAndFlagsBits = v2;
  v4._object = v3;
  TTRListType.PredefinedSmartListType.init(rawValue:)(v4);
  if (v10 == 7 || (sub_21DBF8E0C(), v5 = sub_21DBFC45C(), , v5 > 3))
  {
    if (qword_27CE56FE8 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE65080);
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAECC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21D0C9000, v7, v8, "Saved a smart list visibility type that is not valid", v9, 2u);
      MEMORY[0x223D46520](v9, -1, -1);
    }
  }

  else
  {
    sub_21D17D428(v5, v10);
  }
}

id TTRUserDefaults.publicSharingEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v1)
  {
    v2 = sub_21DBFA12C();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

void sub_21DA54640(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v3) = [v3 BOOLForKey_];
  }

  *a2 = v3;
}

void sub_21DA546BC(unsigned __int8 *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

void TTRUserDefaults.publicSharingEnabled.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TTRUserDefaults.publicSharingEnabled.modify(void *a1))()
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = a1 + 1;
  if (v2)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v2) = [v2 BOOLForKey_];

    v5 = sub_21DA5489C;
  }

  else
  {
    v5 = j_nullsub_1;
  }

  result = v5;
  *v3 = v2;
  return result;
}

void sub_21DA5489C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];
}

id TTRUserDefaults.allRemindersShowCompleted.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v1)
  {
    v2 = sub_21DBFA12C();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

void sub_21DA54980(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v3) = [v3 BOOLForKey_];
  }

  *a2 = v3;
}

void sub_21DA549FC(unsigned __int8 *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

void TTRUserDefaults.allRemindersShowCompleted.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TTRUserDefaults.allRemindersShowCompleted.modify(void *a1))()
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = a1 + 1;
  if (v2)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v2) = [v2 BOOLForKey_];

    v5 = sub_21DA54BDC;
  }

  else
  {
    v5 = nullsub_1;
  }

  result = v5;
  *v3 = v2;
  return result;
}

void sub_21DA54BDC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];
}

uint64_t TTRUserDefaults.searchResultShowCompleted.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    return 1;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_21DA54CC8(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 BOOLForKey_];
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
}

void sub_21DA54D4C(unsigned __int8 *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

void TTRUserDefaults.searchResultShowCompleted.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TTRUserDefaults.searchResultShowCompleted.modify(void *a1))()
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = (a1 + 1);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    v5 = [v2 BOOLForKey_];

    v6 = sub_21DA54F30;
  }

  else
  {
    v5 = 1;
    v6 = j_nullsub_1;
  }

  result = v6;
  *v3 = v5;
  return result;
}

void sub_21DA54F30(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];
}

uint64_t TTRUserDefaults.migrationFailureAlertShown.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    return 1;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_21DA5501C(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 BOOLForKey_];
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
}

void sub_21DA550A0(unsigned __int8 *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

void TTRUserDefaults.migrationFailureAlertShown.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TTRUserDefaults.migrationFailureAlertShown.modify(void *a1))()
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = (a1 + 1);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    v5 = [v2 BOOLForKey_];

    v6 = sub_21DA55284;
  }

  else
  {
    v5 = 1;
    v6 = j_nullsub_1;
  }

  result = v6;
  *v3 = v5;
  return result;
}

void sub_21DA55284(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];
}

void sub_21DA552FC(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v3) = [v3 BOOLForKey_];
  }

  *a2 = v3;
}

void sub_21DA55378(unsigned __int8 *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

void TTRUserDefaults.migrationTipDismissed.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TTRUserDefaults.migrationTipDismissed.modify(void *a1))()
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = a1 + 1;
  if (v2)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v2) = [v2 BOOLForKey_];

    v5 = sub_21DA55558;
  }

  else
  {
    v5 = j_nullsub_1;
  }

  result = v5;
  *v3 = v2;
  return result;
}

void sub_21DA55558(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];
}

void sub_21DA555D0(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v3) = [v3 BOOLForKey_];
  }

  *a2 = v3;
}

void sub_21DA5564C(unsigned __int8 *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_21DBFA12C();
    [v2 setBool:v3 forKey:v4];
  }
}

void TTRUserDefaults.iCloudSyncTipDismissed.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TTRUserDefaults.iCloudSyncTipDismissed.modify(void *a1))()
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = a1 + 1;
  if (v2)
  {
    v4 = sub_21DBFA12C();
    LOBYTE(v2) = [v2 BOOLForKey_];

    v5 = sub_21DA5582C;
  }

  else
  {
    v5 = j_nullsub_1;
  }

  result = v5;
  *v3 = v2;
  return result;
}

void sub_21DA5582C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];
}

uint64_t TTRUserDefaults.groceryTipDismissed.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v1)
  {
    return 1;
  }

  v2 = sub_21DBFA12C();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_21DA55918(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 BOOLForKey_];
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
}

void sub_21DA5599C(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    [v3 setBool:v2 forKey:v4];
  }

  v5 = [objc_opt_self() daemonUserDefaults];
  [v5 setGroceryTipDismissed_];
}

uint64_t (*TTRUserDefaults.groceryTipDismissed.modify(void *a1))()
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  *a1 = v2;
  v3 = (a1 + 1);
  if (v2)
  {
    v4 = sub_21DBFA12C();
    v5 = [v2 BOOLForKey_];

    v6 = sub_21DA55B98;
  }

  else
  {
    v5 = 1;
    v6 = sub_21DA55B1C;
  }

  result = v6;
  *v3 = v5;
  return result;
}

void sub_21DA55B28(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = *(a1 + 8);
  v5 = [objc_opt_self() daemonUserDefaults];
  [v5 *a3];
}

void sub_21DA55B98(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_21DBFA12C();
  [v1 setBool:v2 forKey:v3];

  v4 = [objc_opt_self() daemonUserDefaults];
  [v4 setGroceryTipDismissed_];
}

void sub_21DA55C50(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v5 = [v3 BOOLForKey_];
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
}

void sub_21DA55CD4(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    [v3 setBool:v2 forKey:v4];
  }

  v5 = [objc_opt_self() daemonUserDefaults];
  [v5 setHasCreatedGroceryList_];
}

RemindersUICore::TTRUserDefaults::WelcomeScreenVersion_optional TTRUserDefaults.lastSeenWelcomeScreenVersion.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3)
  {
    v4 = sub_21DBFA12C();
    v3 = [v3 integerForKey_];
  }

  result.value = TTRUserDefaults.WelcomeScreenVersion.init(rawValue:)(v3).value;
  v6 = v7;
  if (v7 == 9)
  {
    v6 = 0;
  }

  *a1 = v6;
  return result;
}

void sub_21DA55E34(char *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = qword_21DC38BE8[*a1];
    v4 = sub_21DBFA12C();
    [v2 setInteger:v3 forKey:v4];
  }
}

void TTRUserDefaults.lastSeenWelcomeScreenVersion.setter(char *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v2)
  {
    v3 = qword_21DC38BE8[*a1];
    v4 = sub_21DBFA12C();
    [v2 setInteger:v3 forKey:v4];
  }
}

RemindersUICore::TTRUserDefaults::WelcomeScreenVersion_optional __swiftcall TTRUserDefaults.WelcomeScreenVersion.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 19)
  {
    if (rawValue <= 17)
    {
      if (!rawValue)
      {
        *v1 = 0;
        return rawValue;
      }

      if (rawValue == 17)
      {
        *v1 = 1;
        return rawValue;
      }

      goto LABEL_20;
    }

    if (rawValue == 18)
    {
      *v1 = 2;
    }

    else
    {
      *v1 = 3;
    }
  }

  else
  {
    if (rawValue > 21)
    {
      switch(rawValue)
      {
        case 22:
          *v1 = 6;
          return rawValue;
        case 23:
          *v1 = 7;
          return rawValue;
        case 24:
          *v1 = 8;
          return rawValue;
      }

LABEL_20:
      *v1 = 9;
      return rawValue;
    }

    if (rawValue == 20)
    {
      *v1 = 4;
    }

    else
    {
      *v1 = 5;
    }
  }

  return rawValue;
}