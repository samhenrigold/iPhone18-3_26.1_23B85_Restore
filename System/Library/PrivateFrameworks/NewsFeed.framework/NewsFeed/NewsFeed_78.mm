void sub_1D6247B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v22 = a4;
  v25 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v25, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v12 + 8);
  v14 = (a3 + 40);
  v15 = *(a3 + 16) + 1;
  v26 = a2;
  v23 = v11;
  v24 = (v12 + 8);
  while (1)
  {
    if (!--v15)
    {
      v27 = v22;

      FormatButtonNodeAction.bind(binder:context:)(a1, a2);
      goto LABEL_9;
    }

    v17 = a2;
    v18 = *(v14 - 1);
    v19 = *v14;
    v27 = v18;

    swift_retain_n();
    sub_1D71C3968(a1, v17, v11);
    if (v5)
    {
      break;
    }

    if ((sub_1D725BC6C() & 1) == 0)
    {
      v27 = v18;

      v20 = v26;
      FormatExpression.bind(binder:context:)(a1, v26);

      v27 = v19;

      FormatButtonNodeAction.bind(binder:context:)(a1, v20);

      v11 = v23;
      v13 = v24;
    }

    v14 += 2;
    v16 = sub_1D725BC5C();

    (*v13)(v11, v25);
    a2 = v26;
    if (v16)
    {
      return;
    }
  }

LABEL_9:
}

void sub_1D6247DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v22 = a4;
  v25 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v25, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v12 + 8);
  v14 = (a3 + 40);
  v15 = *(a3 + 16) + 1;
  v26 = a2;
  v23 = v11;
  v24 = (v12 + 8);
  while (1)
  {
    if (!--v15)
    {
      v27 = v22;

      FormatVideoNodeContent.bind(binder:context:)(a1, a2);
      goto LABEL_9;
    }

    v17 = a2;
    v18 = *(v14 - 1);
    v19 = *v14;
    v27 = v18;

    swift_retain_n();
    sub_1D71C3968(a1, v17, v11);
    if (v5)
    {
      break;
    }

    if ((sub_1D725BC6C() & 1) == 0)
    {
      v27 = v18;

      v20 = v26;
      FormatExpression.bind(binder:context:)(a1, v26);

      v27 = v19;

      FormatVideoNodeContent.bind(binder:context:)(a1, v20);

      v11 = v23;
      v13 = v24;
    }

    v14 += 2;
    v16 = sub_1D725BC5C();

    (*v13)(v11, v25);
    a2 = v26;
    if (v16)
    {
      return;
    }
  }

LABEL_9:
}

uint64_t sub_1D6248054(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v27 = a4;
  v30 = a2;
  v7 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v28 = v12;
  v29 = (v13 + 8);
  v14 = (a3 + 40);
  v15 = v11 + 1;
  while (1)
  {
    if (!--v15)
    {
      v25 = v27;
      v31 = v27;
      sub_1D5D085B4(v27);
      FormatTextSize.bind(binder:context:)(a1, v30);
      v26 = v25;
      return sub_1D5D05694(v26);
    }

    v20 = *(v14 - 1);
    v21 = *v14;
    v31 = v20;

    sub_1D5D085B4(v21);

    sub_1D71C3968(a1, v30, v10);
    if (v4)
    {
      break;
    }

    if ((sub_1D725BC6C() & 1) == 0)
    {
      v31 = v20;

      FormatExpression.bind(binder:context:)(a1, v30);

      v22 = v21 >> 61;
      if ((v21 >> 61) <= 2)
      {
        if (v22)
        {
          if (v22 != 1)
          {
LABEL_14:
            v23 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            sub_1D5D085B4(v21);

            sub_1D6233590(a1, v30, v23);

            sub_1D5D05694(v21);
            goto LABEL_4;
          }

          v17 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v16 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          sub_1D5D085B4(v21);

          sub_1D5D085B4(v16);
          sub_1D6248054(a1, v30, v17, v16);

          sub_1D5D05694(v16);
        }

        else
        {
          v31 = *(v21 + 16);
          v24 = v31;
          sub_1D5D085B4(v21);
          sub_1D5C82CD8(v24);
          FormatSize.bind(binder:context:)(a1, v30);
          sub_1D5C92A8C(v24);
        }
      }

      else
      {
        if (v22 > 4)
        {
          if (v22 != 5)
          {
            goto LABEL_4;
          }
        }

        else if (v22 == 3)
        {
          goto LABEL_14;
        }

        v31 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        sub_1D5D085B4(v21);

        FormatTextContent.bind(binder:context:)(a1, v30);
      }

      sub_1D5D05694(v21);
      v7 = v28;
    }

LABEL_4:
    v14 += 2;
    v18 = sub_1D725BC5C();

    sub_1D5D05694(v21);
    result = (*v29)(v10, v7);
    if (v18)
    {
      return result;
    }
  }

  v26 = v21;
  return sub_1D5D05694(v26);
}

void sub_1D62484AC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v21[0] = a4;
  v24 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v24, v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  v23 = (v13 + 8);

  v21[1] = a3;
  v22 = v11;
  v14 = (a3 + 40);
  v15 = v12 + 1;
  v25 = a1;
  while (1)
  {
    if (!--v15)
    {

      v20 = v21[0];
      v26 = v21[0];
      sub_1D5C82CD8(v21[0]);
      FormatSize.bind(binder:context:)(a1, a2);
      sub_1D5C92A8C(v20);
      return;
    }

    v17 = *(v14 - 1);
    v18 = *v14;
    v26 = v17;

    sub_1D5C82CD8(v18);

    sub_1D71C3968(a1, a2, v11);
    if (v5)
    {
      break;
    }

    if ((sub_1D725BC6C() & 1) == 0)
    {
      v26 = v17;

      v19 = v25;
      FormatExpression.bind(binder:context:)(v25, a2);

      v26 = v18;
      sub_1D5C82CD8(v18);
      FormatSize.bind(binder:context:)(v19, a2);
      v5 = 0;
      sub_1D5C92A8C(v18);
      v11 = v22;
    }

    v14 += 2;
    v16 = sub_1D725BC5C();

    sub_1D5C92A8C(v18);
    (*v23)(v11, v24);
    a1 = v25;
    if (v16)
    {
      goto LABEL_9;
    }
  }

  sub_1D5C92A8C(v18);
LABEL_9:
}

void sub_1D6248794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, __n128))
{
  v22 = a5;
  v6 = v5;
  v20[0] = a4;
  v24 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v24, v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  v23 = (v14 + 8);

  v20[1] = a3;
  v21 = v12;
  v15 = (a3 + 40);
  v16 = v13 + 1;
  while (1)
  {
    if (!--v16)
    {

      v25 = v20[0];

      (v22)(a1, a2);
      goto LABEL_10;
    }

    v18 = *(v15 - 1);
    v19 = *v15;
    v25 = v18;

    swift_retain_n();
    sub_1D71C3968(a1, a2, v12);
    if (v6)
    {
      break;
    }

    if ((sub_1D725BC6C() & 1) == 0)
    {
      v25 = v18;

      FormatExpression.bind(binder:context:)(a1, a2);

      v25 = v19;

      (v22)(a1, a2);

      v6 = 0;
      v12 = v21;
    }

    v15 += 2;
    v17 = sub_1D725BC5C();

    (*v23)(v12, v24);
    if (v17)
    {

      return;
    }
  }

LABEL_10:
}

unint64_t sub_1D6248A90(unint64_t result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = result;
  if (a3 >= 2)
  {
    v7 = a4;
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);
    sub_1D6248A90(v6, a2, v8, v9);
    sub_1D5D0A58C(v8);
    result = sub_1D5D0A58C(v9);
    if (v4)
    {
      return result;
    }

    a4 = v7;
  }

  if (a4 >= 2)
  {
    v10 = *(a4 + 16);
    v11 = *(a4 + 24);
    sub_1D5D0A57C(v10);
    sub_1D5D0A57C(v11);
    sub_1D6248A90(v6, a2, v10, v11);
    sub_1D5D0A58C(v10);
    return sub_1D5D0A58C(v11);
  }

  return result;
}

double sub_1D6248B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  FormatVideoNodeContent.bind(binder:context:)(a1, a2);

  if (!v4)
  {

    FormatVideoNodeContent.bind(binder:context:)(a1, a2);
  }

  return result;
}

double sub_1D6248C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  FormatMicaNodeContent.bind(binder:context:)(a1, a2);

  if (!v4)
  {

    FormatMicaNodeContent.bind(binder:context:)(a1, a2);
  }

  return result;
}

uint64_t FormatUserInterfaceValue.bind(binder:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v28 = a3;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v13 = *(v7 + 16);
  v13(&v25 - v14, v3, v6, v12);
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (swift_dynamicCast())
  {
    v25 = v13;
    v27 = v3;
    v15 = v4;
    v16 = *(&v30 + 1);
    v17 = v31;
    __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
    v18 = *(v17 + 8);
    v26 = v5;
    v19 = v32;
    v18(v5, v15, v16, v17);
    result = __swift_destroy_boxed_opaque_existential_1(&v29);
    if (v19)
    {
      return result;
    }

    v32 = 0;
    v4 = v15;
    v5 = v26;
    v25(v9, v27 + *(v28 + 36), v6);
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    sub_1D5BFB774(&v29, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    (v13)(v9, v3 + *(v28 + 36), v6);
  }

  if (swift_dynamicCast())
  {
    v21 = v5;
    v22 = v4;
    v23 = *(&v30 + 1);
    v24 = v31;
    __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
    (*(v24 + 8))(v21, v22, v23, v24);
    return __swift_destroy_boxed_opaque_existential_1(&v29);
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    return sub_1D5BFB774(&v29, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }
}

void FormatStyleImage.bind(binder:context:)(unint64_t a1, uint64_t a2)
{

  FormatAsyncImageContent.bind(binder:context:)(a1, a2, v5);

  if (!v2)
  {
    FormatImageNodeStyle.bind(binder:context:)(a1, a2);
  }
}

uint64_t sub_1D6249038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    return a6(a1, a2, a4);
  }

  v11 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v12 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);

  a5(a1, a2, v11, v12);

  if (!v6)
  {
    return a6(a1, a2, a4);
  }

  return result;
}

void sub_1D62490FC(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v7 = a4;
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    sub_1D5D0A57C(v8);

    sub_1D62490FC(a1, a2, v8, v9);
    sub_1D5D0A58C(v8);

    if (v4)
    {
      return;
    }

    a4 = v7;
  }

  sub_1D620D084(a1, a2, a4);
}

void sub_1D624919C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 62 == 1)
  {
    v7 = a4;
    v8 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v8);

    sub_1D624919C(a1, a2, v8, v9);
    sub_1D5EB15C4(v8);

    if (v4)
    {
      return;
    }

    a4 = v7;
  }

  sub_1D620EAF8(a1, a2, a4);
}

uint64_t sub_1D6249244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a3;
  sub_1D5D0ACAC(0, &qword_1EDF1B018, &type metadata for FormatSourceItemTipTrait, MEMORY[0x1E69E62F8]);
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);

  if (swift_dynamicCast())
  {
    v8 = *(&v12 + 1);
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    (*(v9 + 8))(a1, a2, v8, v9);
    result = __swift_destroy_boxed_opaque_existential_1(&v11);
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1D5BFB774(&v11, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }

  return sub_1D6212E6C(a1, a2, a4);
}

void sub_1D62493D8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, __n128 a5)
{
  if (!(a3 >> 62))
  {
    v12 = *(a3 + 16);
    v13 = *(a3 + 24);
    v14 = *(a3 + 32);
    v15 = *(a3 + 40);
    sub_1D62B6164(v12, v13, v14, v15);
    sub_1D69BBC64(a2);
    sub_1D62B61A8(v12, v13, v14, v15);
    if (v5)
    {
      return;
    }

    goto LABEL_6;
  }

  if (a3 >> 62 == 1 || (v9 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10), v10 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18), , , sub_1D62493D8(a1, a2, v9, v10, v11), , , !v5))
  {
LABEL_6:
    sub_1D622E2AC(a1, a2, a4);
  }
}

uint64_t sub_1D62494F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (swift_dynamicCast())
  {
    v10 = *(&v14 + 1);
    v11 = v15;
    __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    (*(v11 + 8))(a1, a2, v10, v11);
    result = __swift_destroy_boxed_opaque_existential_1(&v13);
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    sub_1D5BFB774(&v13, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }

  return sub_1D6230E38(a1, a2, a4, a5);
}

uint64_t sub_1D6249614(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (swift_dynamicCast())
  {
    v10 = *(&v14 + 1);
    v11 = v15;
    __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    (*(v11 + 8))(a1, a2, v10, v11);
    result = __swift_destroy_boxed_opaque_existential_1(&v13);
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    sub_1D5BFB774(&v13, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }

  return sub_1D6230E38(a1, a2, a4, a5);
}

void sub_1D6249738(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v8)
    {

      FormatColor.bind(binder:context:)(a1, a2);

      if (v4)
      {
        return;
      }
    }

    else
    {
      v9 = *(a3 + 16);

      sub_1D6212DD8(a1, a2, v9);

      if (v4)
      {
        return;
      }
    }

    goto LABEL_9;
  }

  if (v8 != 2 || (v10 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10), v11 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18), sub_1D5F33D5C(v10), , sub_1D6249738(a1, a2, v10, v11), sub_1D5F33D8C(v10), , !v4))
  {
LABEL_9:
    sub_1D623A7D4(a1, a2, a4);
  }
}

uint64_t sub_1D6249860(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = a3;
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (swift_dynamicCast())
  {
    v8 = *(&v12 + 1);
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    (*(v9 + 8))(a1, a2, v8, v9);
    result = __swift_destroy_boxed_opaque_existential_1(&v11);
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1D5BFB774(&v11, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }

  return sub_1D6230E38(a1, a2, a4, MEMORY[0x1E69E6370]);
}

uint64_t sub_1D6249984(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v14 = a4;
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (swift_dynamicCast())
  {
    v8 = *(&v12 + 1);
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    (*(v9 + 8))(a1, a2, v8, v9);
    result = __swift_destroy_boxed_opaque_existential_1(&v11);
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1D5BFB774(&v11, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }

  return sub_1D623C8CC(a1, a2, a3);
}

uint64_t sub_1D6249AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a3;
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (swift_dynamicCast())
  {
    v8 = *(&v12 + 1);
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    (*(v9 + 8))(a1, a2, v8, v9);
    result = __swift_destroy_boxed_opaque_existential_1(&v11);
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1D5BFB774(&v11, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }

  return sub_1D623C788(a1, a2, a4);
}

uint64_t sub_1D6249BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);

  if (swift_dynamicCast())
  {
    v9 = *(&v13 + 1);
    v10 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    (*(v10 + 8))(a1, a2, v9, v10);
    result = __swift_destroy_boxed_opaque_existential_1(&v12);
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_1D5BFB774(&v12, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }

  return sub_1D620F94C(a1, a2, a5);
}

void FormatSelectorValue.bind(binder:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + 16);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v11 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v8, v9);
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (swift_dynamicCast())
  {
    v12 = *(&v18 + 1);
    v13 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
    (*(v13 + 8))(a1, a2, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(&v17);
    if (v4)
    {
      return;
    }
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_1D5BFB774(&v17, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }

  v14 = sub_1D61834A8(a3);
  v16 = type metadata accessor for FormatSelectorValueSelector(0, v8, *(a3 + 24), v15);

  Array<A>.bind(binder:context:)(a1, a2, v14, v16, &protocol witness table for FormatSelectorValueSelector<A>);
}

void FormatAuxiliaryNode.bindChildren(binder:context:)(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 48);

  sub_1D6213004(a1, a2, v6);

  if (!v3)
  {
    swift_beginAccess();
    v7 = *(v2 + 32);

    sub_1D6215F90(a1, a2, v7);
  }
}

void FormatBackground.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *v2 >> 61;
  if (v7 > 3)
  {
    v8 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    if (v7 <= 5)
    {
      if (v7 == 4)
      {
        v9 = *(v8 + 144);
        v69 = *(v8 + 128);
        v70 = v9;
        v71[0] = *(v8 + 160);
        *(v71 + 9) = *(v8 + 169);
        v10 = *(v8 + 80);
        v65 = *(v8 + 64);
        v66 = v10;
        v11 = *(v8 + 112);
        v67 = *(v8 + 96);
        v68 = v11;
        v12 = *(v8 + 32);
        __dst = *(v8 + 16);
        v63 = v12;
        v64 = *(v8 + 48);
        v13 = *(v8 + 144);
        v59 = *(v8 + 128);
        v60 = v13;
        *v61 = *(v8 + 160);
        *&v61[9] = *(v8 + 169);
        v14 = *(v8 + 80);
        v55 = *(v8 + 64);
        v56 = v14;
        v15 = *(v8 + 112);
        v57 = *(v8 + 96);
        v58 = v15;
        v16 = *(v8 + 32);
        v52 = *(v8 + 16);
        v53 = v16;
        v54 = *(v8 + 48);
        sub_1D62B4F54(&__dst, v50);
        FormatSplitBackground.bind(binder:context:)(a1, a2);
        sub_1D62B4FB0(&__dst);
        return;
      }

      v37 = *(v8 + 24);
      *&__dst = *(v8 + 16);

      swift_retain_n();
      FormatAsyncImageContent.bind(binder:context:)(a1, a2);
      if (v3)
      {

        return;
      }

      if (v37)
      {
        FormatImageNodeStyle.bind(binder:context:)(a1, a2);
      }

      goto LABEL_27;
    }

    if (v7 == 6)
    {
      v24 = *(v8 + 128);
      v68 = *(v8 + 112);
      v69 = v24;
      v70 = *(v8 + 144);
      LOBYTE(v71[0]) = *(v8 + 160);
      v25 = *(v8 + 64);
      v64 = *(v8 + 48);
      v65 = v25;
      v26 = *(v8 + 96);
      v66 = *(v8 + 80);
      v67 = v26;
      v27 = *(v8 + 32);
      __dst = *(v8 + 16);
      v63 = v27;
      v28 = *(v8 + 128);
      v58 = *(v8 + 112);
      v59 = v28;
      v60 = *(v8 + 144);
      v61[0] = *(v8 + 160);
      v29 = *(v8 + 64);
      v54 = *(v8 + 48);
      v55 = v29;
      v30 = *(v8 + 96);
      v56 = *(v8 + 80);
      v57 = v30;
      v31 = *(v8 + 32);
      v52 = *(v8 + 16);
      v53 = v31;
      sub_1D62B4EA4(&__dst, v50);
      FormatMicaBackground.bind(binder:context:)(a1, a2);
      sub_1D62B4F00(&__dst);
    }

    else
    {
      v38 = *(v8 + 144);
      v59 = *(v8 + 128);
      v60 = v38;
      *v61 = *(v8 + 160);
      *&v61[16] = *(v8 + 176);
      v39 = *(v8 + 80);
      v55 = *(v8 + 64);
      v56 = v39;
      v40 = *(v8 + 112);
      v57 = *(v8 + 96);
      v58 = v40;
      v41 = *(v8 + 32);
      v52 = *(v8 + 16);
      v53 = v41;
      v54 = *(v8 + 48);
      memmove(&__dst, (v8 + 16), 0xA2uLL);
      v42 = sub_1D62B4E2C(&__dst);
      if (v42 > 1)
      {
        if (v42 == 2)
        {
          v43 = sub_1D5D04BC4(&__dst);
          v44 = *(v43 + 144);
          v81 = *(v43 + 128);
          v82 = v44;
          v83 = *(v43 + 160);
          v45 = *(v43 + 80);
          v77 = *(v43 + 64);
          v78 = v45;
          v46 = *(v43 + 112);
          v79 = *(v43 + 96);
          v80 = v46;
          v47 = *(v43 + 16);
          v73 = *v43;
          v74 = v47;
          v48 = *(v43 + 48);
          v75 = *(v43 + 32);
          v76 = v48;
          v50[0] = v52;
          v50[1] = v53;
          v50[4] = v56;
          v50[5] = v57;
          v50[2] = v54;
          v50[3] = v55;
          v51 = *&v61[16];
          v50[8] = v60;
          v50[9] = *v61;
          v50[6] = v58;
          v50[7] = v59;
          v49 = sub_1D5D04BC4(v50);
          sub_1D62B4E48(v49, v72);
          FormatGlassEffect.bind(binder:context:)(a1, a2);
          sub_1D60113F8(&v52);
        }
      }

      else
      {
        sub_1D5D04BC4(&__dst);
      }
    }
  }

  else
  {
    if (v7 <= 1)
    {
      if (!v7)
      {
        *&__dst = *(v6 + 16);

        FormatColor.bind(binder:context:)(a1, a2);
LABEL_27:

        return;
      }

      v32 = (v6 & 0x1FFFFFFFFFFFFFFFLL);
      v33 = v32[2];
      v35 = v32[8];
      v34 = v32[9];

      sub_1D5D615EC(v35, v34);
      sub_1D6212DD8(a1, a2, v33);
      if (!v3)
      {
        if (!v35)
        {

          v36 = 0;
          goto LABEL_16;
        }

        sub_1D620B270(a1, a2, v35);
        sub_1D620B270(a1, a2, v34);
        sub_1D5CDE22C(v35, v34);
      }

      v36 = v35;
LABEL_16:
      sub_1D5CDE22C(v36, v34);
      return;
    }

    v17 = (v6 & 0x1FFFFFFFFFFFFFFFLL);
    if (v7 == 2)
    {
      v18 = v17[6];
      v19 = v17[7];
      v20 = v17[8];
      v66 = v17[5];
      v67 = v18;
      v68 = v19;
      v69 = v20;
      v21 = v17[2];
      __dst = v17[1];
      v63 = v21;
      v22 = v17[4];
      v64 = v17[3];
      v65 = v22;
      v23 = v20;
      sub_1D60865E4(&__dst, &v52);
      sub_1D6212DD8(a1, a2, v23);
      sub_1D6086640(&__dst);
    }

    else
    {
      *&__dst = *(v17 + 2);
      sub_1D6086744(__dst);
      FormatShine.bind(binder:context:)(a1, a2);
      sub_1D6086768(__dst);
    }
  }
}

void FormatColor.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *v2 >> 60;
  if (v7 > 4)
  {
    if (v7 <= 8)
    {
      if ((v7 - 5) < 2)
      {
        return;
      }

      v8 = v6 & 0xFFFFFFFFFFFFFFFLL;
      if (v7 == 7)
      {
        v9 = *(v8 + 24);
        v10 = *(v8 + 32);
        v11 = *(v8 + 40);
        *&v26 = *(v8 + 16);
        *(&v26 + 1) = v9;
        *&v27 = v10;
        BYTE8(v27) = v11;
        sub_1D5F58038(v26, v9, v10, v11);
        FormatColorBinding.bind(binder:context:)(a1, a2);
        sub_1D5F57FEC(v26, v9, v10, v11);
        return;
      }

      v24 = *(v8 + 24);
      *&v26 = *(v8 + 16);
      swift_retain_n();

      FormatColor.bind(binder:context:)(a1, a2);
      if (!v3)
      {

        sub_1D623CFF4(a1, a2, v24, FormatColor.bind(binder:context:));
LABEL_27:

        goto LABEL_28;
      }

      goto LABEL_24;
    }

    v15 = v6 & 0xFFFFFFFFFFFFFFFLL;
    if (v7 == 9)
    {
      v19 = *(v15 + 32);
      v29[0] = *(v15 + 16);
      v29[1] = v19;
      v30 = *(v15 + 48);
      sub_1D62B50EC(v29, &v26, sub_1D62B5004);
      sub_1D62507BC(a1, a2);
      sub_1D62B51D0(v29, sub_1D62B5004);
      return;
    }

    if (v7 != 10)
    {
      v22 = *(v15 + 24);
      v23 = *(v15 + 32);
      *&v26 = *(v15 + 16);

      swift_retain_n();

      FormatColor.bind(binder:context:)(a1, a2);
      if (!v3)
      {

        sub_1D623CFF4(a1, a2, v22, FormatColor.bind(binder:context:));
        *&v26 = v23;

        FormatColor.bind(binder:context:)(a1, a2);

        goto LABEL_27;
      }

LABEL_24:

      return;
    }

    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    v18 = *(v15 + 32);

    sub_1D625088C(a1, a2, v16, v17, v18);

LABEL_28:

    return;
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      return;
    }
  }

  else if (v7 != 2)
  {
    v12 = v6 & 0xFFFFFFFFFFFFFFFLL;
    if (v7 != 3)
    {
      v25 = *(v12 + 24);
      *&v26 = *(v12 + 16);
      swift_retain_n();

      FormatColor.bind(binder:context:)(a1, a2);
      if (!v3)
      {

        sub_1D620B334(a1, a2, v25);
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    v13 = *(v12 + 16);
    v14 = *(v12 + 24);

    sub_1D6250710(a1, a2, v13, v14, FormatColor.bind(binder:context:));

    goto LABEL_28;
  }

  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (swift_dynamicCast())
  {
    v20 = *(&v27 + 1);
    v21 = v28;
    __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
    (*(v21 + 8))(a1, a2, v20, v21);
    __swift_destroy_boxed_opaque_existential_1(&v26);
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_1D5BFB774(&v26, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }
}

void FormatGradient.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v7 = v2[6];
  v6 = v2[7];
  sub_1D6212DD8(a1, a2, *v2);
  if (!v3)
  {
    if (v7)
    {

      sub_1D620B270(a1, a2, v7);
      sub_1D620B270(a1, a2, v6);
      sub_1D5CDE22C(v7, v6);
    }
  }
}

void FormatSplitBackground.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 80);
  v18[2] = *(v2 + 64);
  v19 = v10;
  v20 = *(v2 + 96);
  v11 = *(v2 + 48);
  v18[0] = *(v2 + 32);
  v18[1] = v11;
  v12 = *(v2 + 104);
  v13 = *(v2 + 120);
  v14 = *(v2 + 136);
  v15 = *(v2 + 152);
  v23 = *(v2 + 168);
  v21[2] = v14;
  v22 = v15;
  v21[0] = v12;
  v21[1] = v13;
  swift_bridgeObjectRetain_n();

  sub_1D620B270(a1, a2, v7);
  if (v3)
  {

    swift_bridgeObjectRelease_n();
    return;
  }

  sub_1D620B270(a1, a2, v6);

  swift_bridgeObjectRelease_n();
  sub_1D620B270(a1, a2, v8);
  sub_1D620B270(a1, a2, v9);
  if ((v20 & 1) == 0)
  {

    FormatColor.bind(binder:context:)(a1, a2);
    goto LABEL_8;
  }

  sub_1D5D615EC(v19, *(&v19 + 1));
  sub_1D6212DD8(a1, a2, *&v18[0]);
  if (!v19)
  {
LABEL_8:
    sub_1D60FBD38(v18);
    goto LABEL_9;
  }

  sub_1D620B270(a1, a2, v19);
  sub_1D620B270(a1, a2, *(&v19 + 1));
  sub_1D5CDE22C(v19, *(&v19 + 1));
  sub_1D60FBD38(v18);
LABEL_9:
  v16 = *&v21[0];
  if (v23)
  {
    v17 = v22;

    sub_1D5D615EC(v17, *(&v17 + 1));
    sub_1D6212DD8(a1, a2, v16);
    if (v17)
    {

      sub_1D620B270(a1, a2, v17);
      sub_1D620B270(a1, a2, *(&v17 + 1));
      sub_1D5CDE22C(v17, *(&v17 + 1));
    }
  }

  else
  {

    FormatColor.bind(binder:context:)(a1, a2);
  }

  sub_1D60FBD38(v21);
}

void FormatImageBackground.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);

  FormatAsyncImageContent.bind(binder:context:)(a1, a2, v7);

  if (!v3)
  {
    if (v6)
    {
      FormatImageNodeStyle.bind(binder:context:)(a1, a2);
    }
  }
}

void FormatMicaBackground.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = (v2 + 1);
  v35 = *v2;

  FormatMicaNodeContent.bind(binder:context:)(a1, a2);
  if (v3)
  {
  }

  else
  {

    v7 = *(v2 + 15);
    v33 = *(v2 + 13);
    v34[0] = v7;
    *(v34 + 9) = *(v2 + 129);
    v8 = *(v2 + 7);
    v29 = *(v2 + 5);
    v30 = v8;
    v9 = *(v2 + 11);
    v31 = *(v2 + 9);
    v32 = v9;
    v10 = *(v2 + 3);
    v27 = *v6;
    v28 = v10;
    if (sub_1D60486AC(&v27) != 1)
    {
      v23 = v33;
      v24[0] = v34[0];
      *(v24 + 9) = *(v34 + 9);
      v19 = v29;
      v20 = v30;
      v21 = v31;
      v22 = v32;
      v17 = v27;
      v18 = v28;
      v11 = *(v2 + 15);
      v25[6] = *(v2 + 13);
      v26[0] = v11;
      *(v26 + 9) = *(v2 + 129);
      v12 = *(v2 + 7);
      v25[2] = *(v2 + 5);
      v25[3] = v12;
      v13 = *(v2 + 11);
      v25[4] = *(v2 + 9);
      v25[5] = v13;
      v14 = *(v2 + 3);
      v25[0] = *v6;
      v25[1] = v14;
      sub_1D62B4994(v25, v15);
      FormatMediaTiming.bind(binder:context:)(a1, a2);
      v15[6] = v23;
      v16[0] = v24[0];
      *(v16 + 9) = *(v24 + 9);
      v15[2] = v19;
      v15[3] = v20;
      v15[4] = v21;
      v15[5] = v22;
      v15[0] = v17;
      v15[1] = v18;
      sub_1D62B49F0(v15);
    }
  }
}

void FormatVisualEffect.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 144);
  v11[8] = *(v2 + 128);
  v11[9] = v5;
  v12 = *(v2 + 160);
  v6 = *(v2 + 80);
  v11[4] = *(v2 + 64);
  v11[5] = v6;
  v7 = *(v2 + 112);
  v11[6] = *(v2 + 96);
  v11[7] = v7;
  v8 = *(v2 + 16);
  v11[0] = *v2;
  v11[1] = v8;
  v9 = *(v2 + 48);
  v11[2] = *(v2 + 32);
  v11[3] = v9;
  v10 = sub_1D62B4E2C(v11);
  if (v10 >= 2)
  {
    if (v10 == 2)
    {
      sub_1D5D04BC4(v11);
      FormatGlassEffect.bind(binder:context:)(a1, a2);
    }
  }

  else
  {
    sub_1D5D04BC4(v11);
  }
}

void FormatBezierPathArcComponent.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v10 = v2[4];

  sub_1D620B270(a1, a2, v6);
  if (v3)
  {
  }

  else
  {
    sub_1D620B270(a1, a2, v7);

    sub_1D620B270(a1, a2, v9);
    sub_1D620B270(a1, a2, v8);
    sub_1D620B270(a1, a2, v10);
  }
}

void sub_1D624B190(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v10 = v2[4];

  sub_1D620B270(a1, a2, v6);
  if (v3)
  {
  }

  else
  {
    sub_1D620B270(a1, a2, v7);

    sub_1D620B270(a1, a2, v9);
    sub_1D620B270(a1, a2, v8);
    sub_1D620B270(a1, a2, v10);
  }
}

void FormatBezierPathComponent.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 48);
  if (v11 > 2)
  {
    if (v11 == 3)
    {

      sub_1D620B270(a1, a2, v7);
      if (!v3)
      {
        sub_1D620B270(a1, a2, v6);

        sub_1D620B270(a1, a2, v8);
        sub_1D620B270(a1, a2, v9);
      }
    }

    else
    {
      if (v11 != 4)
      {
        return;
      }

      sub_1D620B270(a1, a2, v7);
      if (!v3)
      {
        sub_1D620B270(a1, a2, v6);

        sub_1D620B270(a1, a2, v8);
        sub_1D620B270(a1, a2, v9);
        sub_1D620B270(a1, a2, v10);
        return;
      }
    }
  }

  else if (*(v2 + 48) && v11 != 1)
  {
    FormatBezierPathCurveComponent.bind(binder:context:)(a1, a2);
  }

  else
  {
    sub_1D620B270(a1, a2, *v2);
    if (!v3)
    {
      sub_1D620B270(a1, a2, v6);
    }
  }
}

double FormatBezierPathCurveComponent.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];

  sub_1D620B270(a1, a2, v6);
  if (!v3)
  {
    sub_1D620B270(a1, a2, v7);

    sub_1D620B270(a1, a2, v8);
    sub_1D620B270(a1, a2, v9);

    sub_1D620B270(a1, a2, v10);
    sub_1D620B270(a1, a2, v11);
  }

  return result;
}

double FormatBezierPathQuadCurveComponent.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];

  sub_1D620B270(a1, a2, v6);
  if (!v3)
  {
    sub_1D620B270(a1, a2, v7);

    sub_1D620B270(a1, a2, v8);
    sub_1D620B270(a1, a2, v9);
  }

  return result;
}

double sub_1D624B750(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];

  sub_1D620B270(a1, a2, v6);
  if (!v3)
  {
    sub_1D620B270(a1, a2, v7);

    sub_1D620B270(a1, a2, v8);
    sub_1D620B270(a1, a2, v9);
  }

  return result;
}

uint64_t FormatBoolBinding.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (((1 << (v3 >> 12)) & 0x1D7) == 0)
  {
    if (v3 >> 12 == 3)
    {
      if ((v3 & 0x80) == 0 || ((v3 >> 7) & 0x1E | (v3 >> 5) & 1) != 8)
      {
        return result;
      }

      v4 = result;
      v5 = a2;
    }

    else
    {
      if ((v3 & 0x80) == 0)
      {
        return result;
      }

      v4 = result;
      v5 = a2;
    }

    v11 = v3 & 0x3F;
    sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    if (swift_dynamicCast())
    {
      v6 = *(&v9 + 1);
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
      (*(v7 + 8))(v4, v5, v6, v7);
      return __swift_destroy_boxed_opaque_existential_1(&v8);
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
      return sub_1D5BFB774(&v8, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    }
  }

  return result;
}

uint64_t sub_1D624B9EC(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (((1 << (v3 >> 12)) & 0x1D7) == 0)
  {
    if (v3 >> 12 == 3)
    {
      if ((v3 & 0x80) == 0 || ((v3 >> 7) & 0x1E | (v3 >> 5) & 1) != 8)
      {
        return result;
      }
    }

    else if ((v3 & 0x80) == 0)
    {
      return result;
    }

    return sub_1D6240020(result, a2, *v2, v3 & 0x3F, &type metadata for FormatTagBinding.Bool);
  }

  return result;
}

void FormatBindingDateTimeExpression.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = *v2 >> 62;
  if ((v9 - 2) >= 2)
  {
    if (v9)
    {
      v15 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v17 = *(v15 + 16);
      v16 = *(v15 + 24);

      sub_1D5F33D5C(v16);
      sub_1D620B270(a1, a2, v17);
      if (v3)
      {

        sub_1D5F33D8C(v16);
        return;
      }

      sub_1D5F33D5C(v16);
      FormatDateTime.bind(binder:context:)(a1, a2);
      sub_1D5F33D8C(v16);

      sub_1D5F33D8C(v16);
    }

    else
    {
      v26 = v2[1];
      v22 = *(v6 + 16);
      v23 = *(v6 + 24);
      v24 = *(v6 + 32);
      v25 = *(v6 + 40);
      sub_1D5D27950(v22, v23, v24, v25);
      sub_1D6D9914C(a2);
      sub_1D5D28C84(v22, v23, v24, v25);
      if (v3)
      {
        return;
      }

      LOBYTE(v7) = v26;
    }
  }

  if ((v7 & 0xFE) == 0xC)
  {
    return;
  }

  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 == 2)
    {
      return;
    }

    if (v8 == 0xC000000000000000)
    {
      v18 = v7;
      v19 = 0xC000000000000000;
    }

    else if (v8 == 0xC000000000000008)
    {
      v18 = v7;
      v19 = 0xC000000000000008;
    }

    else
    {
      v19 = 0xC000000000000010;
      v18 = v7;
    }
  }

  else
  {
    if (v10)
    {
      v21 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v20 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D620757C(v7, v8);

      sub_1D5F33D5C(v20);
      sub_1D620B270(a1, a2, v21);
      if (!v3)
      {
        sub_1D5F33D5C(v20);
        FormatDateTime.bind(binder:context:)(a1, a2);
        sub_1D5F33D8C(v20);
      }

      sub_1D5F33D8C(v20);
    }

    else
    {
      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
      v13 = *(v8 + 32);
      v14 = *(v8 + 40);
      sub_1D620757C(v7, v8);
      sub_1D5D27950(v11, v12, v13, v14);
      sub_1D6D9914C(a2);
      sub_1D5D28C84(v11, v12, v13, v14);
    }

    v18 = v7;
    v19 = v8;
  }

  sub_1D6207594(v18, v19);
}

void FormatDateTime.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2 >> 62;
  if ((v5 - 2) >= 2)
  {
    if (v5)
    {
      v8 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = *(v8 + 16);
      v9 = *(v8 + 24);

      sub_1D5F33D5C(v9);
      sub_1D620B270(a1, a2, v10);
      if (!v3)
      {
        sub_1D5F33D5C(v9);
        FormatDateTime.bind(binder:context:)(a1, a2);
        sub_1D5F33D8C(v9);
      }

      sub_1D5F33D8C(v9);
    }

    else
    {
      v11 = *(v4 + 16);
      v12 = *(v4 + 24);
      v13 = *(v4 + 32);
      v14 = *(v4 + 40);
      sub_1D5D27950(v11, v12, v13, v14);
      sub_1D6D9914C(a2);
      sub_1D5D28C84(v11, v12, v13, v14);
    }
  }
}

void FormatBindingDateTimeExpressionLogic.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if ((*v2 & 0xFELL) != 0xC)
  {
    v4 = v2[1];
    if ((v4 >> 62) - 2 >= 2)
    {
      if (v4 >> 62)
      {
        v6 = v4 & 0x3FFFFFFFFFFFFFFFLL;
        v8 = *(v6 + 16);
        v7 = *(v6 + 24);

        sub_1D5F33D5C(v7);
        sub_1D620B270(a1, a2, v8);
        if (!v3)
        {
          sub_1D5F33D5C(v7);
          FormatDateTime.bind(binder:context:)(a1, a2);
          sub_1D5F33D8C(v7);
        }

        sub_1D5F33D8C(v7);
      }

      else
      {
        v10 = *(v4 + 16);
        v11 = *(v4 + 24);
        v12 = *(v4 + 32);
        v13 = *(v4 + 40);
        sub_1D5D27950(v10, v11, v12, v13);
        sub_1D6D9914C(a2);
        sub_1D5D28C84(v10, v11, v12, v13);
      }
    }
  }
}

void FormatBindingDateTimeExpressionLogicCompare.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 8);
  if ((v4 >> 62) - 2 >= 2)
  {
    if (v4 >> 62)
    {
      v7 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      v9 = *(v7 + 16);
      v8 = *(v7 + 24);

      sub_1D5F33D5C(v8);
      sub_1D620B270(a1, a2, v9);
      if (!v3)
      {
        sub_1D5F33D5C(v8);
        FormatDateTime.bind(binder:context:)(a1, a2);
        sub_1D5F33D8C(v8);
      }

      sub_1D5F33D8C(v8);
    }

    else
    {
      v10 = *(v4 + 16);
      v11 = *(v4 + 24);
      v12 = *(v4 + 32);
      v13 = *(v4 + 40);
      sub_1D5D27950(v10, v11, v12, v13);
      sub_1D6D9914C(a2);
      sub_1D5D28C84(v10, v11, v12, v13);
    }
  }
}

double sub_1D624C110(uint64_t a1, uint64_t a2)
{
  if ((*v2 & 0xFELL) != 0xC)
  {
    v6 = v2[1];
    sub_1D5F33D5C(v6);
    FormatDateTime.bind(binder:context:)(a1, a2);
    return sub_1D5F33D8C(v6);
  }

  return result;
}

double sub_1D624C18C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);
  sub_1D5F33D5C(v6);
  FormatDateTime.bind(binder:context:)(a1, a2);
  return sub_1D5F33D8C(v6);
}

__n128 FormatBindingExpression.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v38 = v2[4];
  result.n128_u64[0] = v38;
  v39[0] = v5;
  *(v39 + 11) = *(v2 + 91);
  v6 = v2[1];
  v35[0] = *v2;
  v35[1] = v6;
  v7 = v2[3];
  v36 = v2[2];
  v37 = v7;
  v40 = v35[0];
  v41 = v6;
  v42 = v36;
  *v43 = v7;
  *&v43[16] = v38;
  *&v43[32] = v5;
  *&v43[43] = *(v39 + 11);
  v8 = (*(&v39[1] + 7) >> 8);
  v9 = (BYTE10(v39[1]) >> 1) & 8 | (v8 >> 13);
  if (v9 > 4)
  {
    if (v9 > 6)
    {
      if (v9 == 7 && (BYTE8(v40) & 0xFE) != 0xCLL)
      {
        *&v30 = v41;
        sub_1D62B50D4(SBYTE8(v35[0]));
        FormatFloat.bind(binder:context:)(a1, a2);
      }
    }

    else if (v9 == 5)
    {
      v26 = v40;
      *&v27 = v41;
      BYTE8(v27) = BYTE8(v41);
      sub_1D62B48E4(v35, &v30);
      sub_1D6089844(a2);
      sub_1D5D28C84(v26, *(&v26 + 1), v27, SBYTE8(v27));
    }

    else
    {
      v30 = v40;
      *&v31 = v41;
      FormatBindingDateTimeExpression.bind(binder:context:)(a1, a2);
    }
  }

  else if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        *&v43[56] = v8 & 0x1FFF;
        v43[58] = ((v8 | (BYTE10(v39[1]) << 16)) & 0xEF1FFF) >> 16;
        v10 = v2[1];
        v26 = *v2;
        v27 = v10;
        v28 = v2[2];
        v29 = *(v2 + 24);
        sub_1D5FD78CC(&v40, &v30);
        v13 = a2;
        FormatTextNodeBinding.bind(binder:context:)(a1, a2);
        if (v3)
        {
          v30 = v26;
          v31 = v27;
          v32 = v28;
          v33 = v29;
          sub_1D5FD7B18(&v30);
        }

        else
        {
          v22 = *&v43[8];
          v23 = *&v43[24];
          v18 = *&v43[40];
          v17 = *&v43[48];
          v19 = v43[58];
          v20 = *&v43[56];
          v24[0] = v26;
          v24[1] = v27;
          v24[2] = v28;
          v25 = v29;
          sub_1D5FD7B18(v24);
          if ((v19 >> 5) > 4u)
          {
            v21 = v20 & 0xFF00FFFF | (v19 << 16);
            if (v19 >> 5 == 5)
            {
              v30 = v22;
              v31 = v23;
              *&v32 = v18;
              *(&v32 + 1) = v17;
              v33 = v21;
              v34 = BYTE2(v21) & 0x1F;
              sub_1D5CA8444(v22, *(&v22 + 1), v23, *(&v23 + 1), v18, v17, v21);
              FormatBindingTextExpressionLogic.Binding.bind(binder:context:)(a1, v13);
              sub_1D5CA8488(v22, *(&v22 + 1), v23, *(&v23 + 1), v18, v17, v21);
            }

            else
            {
              return v23;
            }
          }
        }
      }

      else
      {
        *&v30 = v40;
        WORD4(v30) = WORD4(v40);
        FormatBoolBinding.bind(binder:context:)(a1, a2);
      }
    }

    else
    {
      v30 = v40;
      v31 = v41;
      *&v32 = v42;
      WORD4(v32) = WORD4(v42);
      FormatBindingImageExpression.bind(binder:context:)(a1, a2);
    }
  }

  return result;
}

void FormatBindingImageExpression.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for FormatOption(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v74 - v18;
  v21 = *v2;
  v20 = *(v2 + 8);
  v22 = *(v2 + 16);
  v23 = *(v2 + 24);
  v24 = *(v2 + 32);
  v25 = *(v2 + 40);
  v26 = (v25 >> 1) & 0xF;
  if (v26 <= 3)
  {
    if (v26 < 2)
    {
      return;
    }

    if (v26 != 2)
    {
      goto LABEL_18;
    }

    v27 = v25 >> 5;
    if (v25 >> 5 > 3)
    {
      if (v25 >> 5 > 5)
      {
        if (v27 == 6)
        {
          goto LABEL_5;
        }

        return;
      }

LABEL_18:
      v32 = (v20 >> 59) & 2 | (v20 >> 2) & 1;
      if (v32 > 1)
      {
        if (v32 != 2)
        {
          return;
        }

        v33 = *(v2 + 16);
        v34 = *(v2 + 24);
      }

      else
      {
        v33 = *(v2 + 16);
        v34 = *(v2 + 24);
        if (!v32)
        {
          v78 = *(v2 + 8);

          FormatFont.bind(binder:context:)(a1, a2);
          v35 = v3;
          if (!v3)
          {
LABEL_21:

            sub_1D620B270(a1, a2, v33);
            if (!v35)
            {

              sub_1D620B270(a1, a2, v34);
            }

            return;
          }

LABEL_27:

          return;
        }
      }

      v78 = v20 & 0xEFFFFFFFFFFFFFFBLL;

      FormatFont.bind(binder:context:)(a1, a2);
      v35 = v3;
      if (!v3)
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }

    if (v25 >> 5 <= 1)
    {
      if (!v27)
      {
        return;
      }

      goto LABEL_18;
    }

    if (v27 == 2 || BYTE1(v22) > 2u)
    {
      return;
    }

    if (BYTE1(v22))
    {
      if (BYTE1(v22) != 1)
      {
        sub_1D620B270(a1, a2, *v2);
        return;
      }

      if (!v20)
      {
        return;
      }

      v36 = *(v2 + 40);
      v37 = v20;
      v38 = v22;
      v39 = v23;
      v40 = v24;
      v41 = v21;
      sub_1D62B4D50(v21, v20, v22, v23, v24, v25 & 0xE1, sub_1D5F58484, sub_1D5F586A4, sub_1D5F58484);
      sub_1D620B270(a1, a2, v37);
      v43 = v41;
      v44 = v37;
      v45 = v38;
      v46 = v39;
      v47 = v40;
      v48 = v36;
      goto LABEL_51;
    }

    if ((v21 >> 61) > 2)
    {
      LODWORD(v75) = *(v2 + 40);
      if (v21 >> 61 != 3)
      {
        v68 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v84[0] = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v84[1] = v68;
        v85 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v69 = v20;
        v70 = v22;
        v71 = v23;
        v72 = v24;
        v73 = v21;
        sub_1D62B4B68(v21, v20, v22, v23, v24, v25, v84[0]);
        sub_1D62B50EC(v84, &v78, sub_1D62B5154);
        sub_1D6250408(a1, a2);
        sub_1D62B51D0(v84, sub_1D62B5154);
        v43 = v73;
        v44 = v69;
        v45 = v70;
        v46 = v71;
        v47 = v72;
LABEL_50:
        v48 = v75;
LABEL_51:
        sub_1D62B4C5C(v43, v44, v45, v46, v47, v48, v42);
        return;
      }

      v61 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v62 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v63 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v64 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v77 = v3;
      v78 = v61;
      v79 = v62;
      v80 = v63;
      LOBYTE(v81) = v64;
      v65 = v20;
      v66 = v22;
      v67 = v23;
      v74 = v24;
      v76 = v21;
      sub_1D62B4B68(v21, v20, v22, v23, v24, v25, v17);
      sub_1D5F58038(v61, v62, v63, v64);
      sub_1D607B228(a2);
      sub_1D5F57FEC(v61, v62, v63, v64);
      v43 = v76;
      v44 = v65;
      v45 = v66;
      v46 = v67;
    }

    else
    {
      if ((v21 >> 61) < 2)
      {
        return;
      }

      v78 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v58 = v20;
      v59 = v22;
      v60 = v23;
      v74 = v24;
      LODWORD(v75) = v25;
      v76 = v21;
      sub_1D62B4B68(v21, v20, v22, v23, v24, v25, v17);
      swift_retain_n();

      FormatURL.bind(binder:context:)(a1, a2);

      v43 = v76;
      v44 = v58;
      v45 = v59;
      v46 = v60;
    }

    v47 = v74;
    goto LABEL_50;
  }

  if (((v25 >> 1) & 0xF) >= 7)
  {
    if (v26 == 7)
    {
      v78 = *v2;
      v79 = v20;
      v80 = v22;
      v86 = 8;
      v28 = v20;
      v29 = v21;
      sub_1D62B4B68(v21, v20, v22, v23, v24, v25, v17);
      v30 = sub_1D703E0C8(&v78, &v86);
      v77 = v3;
      if (!v3)
      {
        v31 = v30;
        v75 = v28;
        v76 = v29;
        FormatOptionCollection.subscript.getter(v29, v28, v14);
        if ((*(v7 + 48))(v14, 1, v6) == 1)
        {

          sub_1D5B6EF64(v14, &qword_1EDF337F0, type metadata accessor for FormatOption);
          if ((*(a2 + 48) & 1) == 0)
          {
            type metadata accessor for FormatLayoutError(0);
            sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
            swift_allocError();
            v50 = v75;
            *v51 = v76;
            v51[1] = v50;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            return;
          }

          (*(v7 + 56))(v19, 1, 1, v6);
        }

        else
        {
          sub_1D5D5E33C(v14, v10, type metadata accessor for FormatOption);
          v78 = v10[2];

          FormatOptionValue.type.getter(v49, &v86);
          if ((sub_1D6183C84(v86, v31) & 1) == 0)
          {
            type metadata accessor for FormatDerivedDataError(0);
            sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
            swift_allocError();
            v53 = v52;
            v54 = *v10;
            v55 = v10[1];
            v78 = v10[2];

            FormatOptionValue.type.getter(v56, &v86);
            v57 = v86;
            *v53 = v54;
            *(v53 + 8) = v55;
            *(v53 + 16) = v57;
            *(v53 + 24) = v31;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            sub_1D62B51D0(v10, type metadata accessor for FormatOption);
            return;
          }

          swift_bridgeObjectRelease_n();
          sub_1D5D5E33C(v10, v19, type metadata accessor for FormatOption);
          (*(v7 + 56))(v19, 0, 1, v6);
        }

        sub_1D5B6EF64(v19, &qword_1EDF337F0, type metadata accessor for FormatOption);
      }
    }

    else if (v26 == 8)
    {
LABEL_5:
      v78 = *v2;
      v79 = v20;
      v80 = v22;
      v81 = v23;
      v82 = v24;
      v83 = v25 & 1;
      FormatSportsEventBinding.Image.bind(binder:context:)(a1, a2);
    }
  }
}

void FormatBindingTextExpression.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[1];
  v27[0] = *v2;
  v27[1] = v6;
  v8 = *v2;
  v7 = v2[1];
  v27[2] = v2[2];
  v28 = *(v2 + 24);
  v14 = *(v2 + 56);
  v15 = *(v2 + 72);
  v9 = *(v2 + 11);
  v10 = *(v2 + 12);
  v11 = *(v2 + 106);
  v12 = *(v2 + 52);
  v23 = v8;
  v24 = v7;
  v25 = v2[2];
  v26 = *(v2 + 24);
  sub_1D5FD78CC(v27, &v16);
  FormatTextNodeBinding.bind(binder:context:)(a1, a2);
  if (v3)
  {
    v16 = v23;
    v17 = v24;
    v18 = v25;
    v19 = v26;
    sub_1D5FD7B18(&v16);
  }

  else
  {
    v13 = v12 | (v11 << 16);
    v21[0] = v23;
    v21[1] = v24;
    v21[2] = v25;
    v22 = v26;
    sub_1D5FD7B18(v21);
    if (((v13 >> 21) & 7) == 5)
    {
      v16 = v14;
      v17 = v15;
      *&v18 = v9;
      *(&v18 + 1) = v10;
      v19 = v13;
      v20 = BYTE2(v13) & 0x1F;
      sub_1D5CA8444(v14, *(&v14 + 1), v15, *(&v15 + 1), v9, v10, v13);
      FormatBindingTextExpressionLogic.Binding.bind(binder:context:)(a1, a2);
      sub_1D5CA8488(v14, *(&v14 + 1), v15, *(&v15 + 1), v9, v10, v13);
    }
  }
}

void FormatBindingURLExpression.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  sub_1D5D27950(*v2, v5, v6, v7);
  sub_1D6089844(a2);
  sub_1D5D28C84(v4, v5, v6, v7);
}

double FormatBindingFloatExpression.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  if ((v3 & 0xFE) != 0xC)
  {
    v4 = *(v2 + 16);
    sub_1D62B50D4(v3);
    sub_1D62B50D4(v3);
    FormatFloat.bind(binder:context:)(a1, a2);
    sub_1D62B5230(v3, v4);
  }

  return result;
}

double FormatBindingFloatExpressionLogic.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if ((*v2 & 0xFELL) != 0xC)
  {

    FormatFloat.bind(binder:context:)(a1, a2);
  }

  return result;
}

double sub_1D624D188(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  if ((v3 & 0xFE) != 0xC)
  {
    v4 = *(v2 + 16);
    sub_1D62B50D4(v3);
    sub_1D62B50D4(v3);
    FormatFloat.bind(binder:context:)(a1, a2);
    sub_1D62B5230(v3, v4);
  }

  return result;
}

double FormatBindingFloatExpressionLogicCompare.bind(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatFloat.bind(binder:context:)(a1, a2);

  return result;
}

double sub_1D624D28C(uint64_t a1, uint64_t a2)
{
  if ((*v2 & 0xFELL) != 0xC)
  {

    FormatFloat.bind(binder:context:)(a1, a2);
  }

  return result;
}

double sub_1D624D2FC(uint64_t a1, uint64_t a2)
{

  FormatFloat.bind(binder:context:)(a1, a2);

  return result;
}

double sub_1D624D35C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  v13 = *(v3 + 40);
  sub_1D62B4B68(*v3, v9, v10, v11, v12, v13, a3);
  FormatImageNodeBinding.bind(binder:context:)(a1, a2);
  return sub_1D62B4C5C(v8, v9, v10, v11, v12, v13, v6);
}

void FormatBindingTextExpressionLogic.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 50) >> 5;
  if (v3 >= 5 && v3 == 5)
  {
    FormatBindingTextExpressionLogic.Binding.bind(binder:context:)(result, a2);
  }
}

void FormatBindingTextExpressionLogic.Binding.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v43 = a2;
  v4 = type metadata accessor for FormatOption(0);
  v44 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v39 - v14;
  v16 = v2[1];
  v50 = *v2;
  v51 = v16;
  v53 = *(v2 + 24);
  v52 = v2[2];
  v18 = *(&v50 + 1);
  v17 = v50;
  v19 = v16;
  v20 = v53;
  v21 = ((2 * HIBYTE(v53)) | ((v53 & 8) != 0));
  if (v21 > 0xE)
  {
    goto LABEL_11;
  }

  if (((1 << v21) & 0x6FE0) != 0)
  {
    return;
  }

  if (((1 << v21) & 0x18) == 0)
  {
    if (v21 == 12)
    {
      goto LABEL_8;
    }

LABEL_11:
    if (v21 < 2)
    {
      return;
    }

    goto LABEL_12;
  }

  v48 = v50;
  v49 = v16;
  v54 = 5;
  sub_1D5FD78CC(&v50, &v45);

  v22 = sub_1D703E0C8(&v48, &v54);
  v41 = v3;
  if (v3)
  {

    return;
  }

  v40 = v22;
  v26 = v43;
  FormatOptionCollection.subscript.getter(v17, v18, v11);
  if ((*(v44 + 48))(v11, 1, v4) == 1)
  {

    sub_1D5B6EF64(v11, &qword_1EDF337F0, type metadata accessor for FormatOption);
    if ((*(v26 + 48) & 1) == 0)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v31 = v17;
      v31[1] = v18;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }

    v27 = 1;
  }

  else
  {
    sub_1D5D5E33C(v11, v7, type metadata accessor for FormatOption);
    *&v45 = v7[2];
    v28 = v40;

    FormatOptionValue.type.getter(v29, &v48);
    if ((sub_1D6183C84(v48, v28) & 1) == 0)
    {
      type metadata accessor for FormatDerivedDataError(0);
      sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
      v41 = swift_allocError();
      v33 = v32;
      v34 = v28;
      v35 = *v7;
      v36 = v7[1];
      *&v45 = v7[2];

      FormatOptionValue.type.getter(v37, &v48);
      v38 = v48;
      *v33 = v35;
      *(v33 + 8) = v36;
      *(v33 + 16) = v38;
      *(v33 + 24) = v34;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D62B51D0(v7, type metadata accessor for FormatOption);
      return;
    }

    swift_bridgeObjectRelease_n();
    sub_1D5D5E33C(v7, v15, type metadata accessor for FormatOption);
    v27 = 0;
  }

  (*(v44 + 56))(v15, v27, 1, v4);
  sub_1D5B6EF64(v15, &qword_1EDF337F0, type metadata accessor for FormatOption);
  v18 = *(&v50 + 1);
  v20 = v53;
  v30 = ((2 * HIBYTE(v53)) | ((v53 & 8) != 0));
  if (((1 << v30) & 0x6FFB) == 0)
  {
    if (v30 == 2)
    {
      v19 = v51;
      v17 = v50;
LABEL_12:
      v25 = v20 >> 4;
      if (((1 << v25) & 0x1EF7) != 0)
      {
        return;
      }

      if (v25 == 3)
      {
        *&v45 = v17;
        *(&v45 + 1) = v18;
        LOWORD(v46) = v19;
        sub_1D62B416C(v43);
        return;
      }
    }

LABEL_8:
    if ((v18 & 0x80) != 0)
    {
      LOBYTE(v48) = v18 & 0x3F;
      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      if (swift_dynamicCast())
      {
        v23 = *(&v46 + 1);
        v24 = v47;
        __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
        (*(v24 + 8))(v42, v43, v23, v24);
        __swift_destroy_boxed_opaque_existential_1(&v45);
      }

      else
      {
        v47 = 0;
        v45 = 0u;
        v46 = 0u;
        sub_1D5BFB774(&v45, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      }
    }
  }
}

uint64_t sub_1D624DAA8(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 50) >> 5;
  if (v3 >= 5 && v3 == 5)
  {
    v5 = *(v2 + 8);
    v6 = *(v2 + 16);
    v7 = *(v2 + 32);
    v8 = *(v2 + 48) | (*(v2 + 50) << 16);
    *&v13 = *v2;
    *(&v13 + 1) = v5;
    v14 = v6;
    v15 = v7;
    v16 = v8;
    v17[0] = v13;
    v17[1] = v5;
    v18 = v6;
    v19 = v7;
    v20 = v8;
    v21 = BYTE2(v8) & 0x1F;
    v9 = result;
    sub_1D6157520(v17, v11);
    FormatTextNodeBinding.bind(binder:context:)(v9, a2);
    v11[0] = v13;
    v11[1] = v14;
    v11[2] = v15;
    v12 = v16;
    return sub_1D5FD7B18(v11);
  }

  return result;
}

uint64_t sub_1D624DB7C(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  v15[0] = *v2;
  v15[1] = v5;
  v7 = *v2;
  v6 = v2[1];
  v15[2] = v2[2];
  v16 = *(v2 + 24);
  v11 = v7;
  v12 = v6;
  v13 = v2[2];
  v14 = *(v2 + 24);
  sub_1D5FD78CC(v15, v9);
  FormatTextNodeBinding.bind(binder:context:)(a1, a2);
  v9[0] = v11;
  v9[1] = v12;
  v9[2] = v13;
  v10 = v14;
  return sub_1D5FD7B18(v9);
}

void sub_1D624DC2C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  sub_1D5D27950(*v2, v5, v6, v7);
  sub_1D6089844(a2);
  sub_1D5D28C84(v4, v5, v6, v7);
}

void FormatBlock.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 40);

  sub_1D6213004(a1, a2, v6);

  if (!v3)
  {
    swift_beginAccess();
    v7 = *(v2 + 32);

    sub_1D6215F90(a1, a2, v7);
  }
}

void sub_1D624DD6C(unint64_t a1, uint64_t a2)
{
  v6 = *v2;
  swift_beginAccess();
  v7 = *(v6 + 40);

  sub_1D6213004(a1, a2, v7);

  if (!v3)
  {
    swift_beginAccess();
    v8 = *(v6 + 32);

    sub_1D6215F90(a1, a2, v8);
  }
}

double FormatBlockNode.bindChildren(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);

  sub_1D6213004(a1, a2, v5);

  return result;
}

uint64_t FormatGroupBinding.Bool.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (v3 < 0 && ((2 * *(v2 + 9)) | ((v3 & 0x20) != 0)) == 8)
  {
    v4 = result;
    v11 = v3 & 0x3F;
    sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    if (swift_dynamicCast())
    {
      v6 = *(&v9 + 1);
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
      (*(v7 + 8))(v4, a2, v6, v7);
      return __swift_destroy_boxed_opaque_existential_1(&v8);
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
      return sub_1D5BFB774(&v8, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    }
  }

  return result;
}

double FormatBorder.bind(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatColor.bind(binder:context:)(a1, a2);

  if (!v2)
  {

    FormatFloat.bind(binder:context:)(a1, a2);
  }

  return result;
}

uint64_t FormatBreakpointNode.bindChildren(binder:context:)(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);
  v6 = *(v2 + 144);
  v25 = *(v2 + 128);
  v26 = v6;
  v7 = *(v2 + 80);
  v22[0] = *(v2 + 64);
  v22[1] = v7;
  v8 = *(v2 + 112);
  v10 = *(v2 + 64);
  v9 = *(v2 + 80);
  v23 = *(v2 + 96);
  v24 = v8;
  v11 = *(v2 + 144);
  v19 = v25;
  v20 = v11;
  v15 = v10;
  v16 = v9;
  v27 = *(v2 + 160);
  v21 = *(v2 + 160);
  v17 = v23;
  v18 = v5;
  sub_1D5C5C4CC(v22, v13);
  FormatSourceMapNode.bind(binder:context:)(a1, a2);
  v13[4] = v19;
  v13[5] = v20;
  v14 = v21;
  v13[0] = v15;
  v13[1] = v16;
  v13[2] = v17;
  v13[3] = v18;
  return sub_1D5C5C540(v13);
}

void FormatBundleImageSize.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (*(v2 + 16) && *(v2 + 16) != 1)
  {
    v5 = *(v2 + 8);
    v6 = a1;
    v7 = a2;
    sub_1D620B270(a1, a2, v4);
    if (v3)
    {
      return;
    }

    a1 = v6;
    a2 = v7;
    v4 = v5;
  }

  sub_1D620B270(a1, a2, v4);
}

uint64_t sub_1D624E1D8(uint64_t result, uint64_t a2)
{
  v5 = result;
  v7 = *(v2 + 32);
  v6 = *(v2 + 40);
  if (*(v2 + 48) > 1u)
  {
    if (*(v2 + 48) != 2)
    {
      return result;
    }

    sub_1D5E433E0(*(v2 + 32), *(v2 + 40), 2u);
    sub_1D620B270(v5, a2, v7);
    if (v3)
    {
      return sub_1D5E4342C(v7, v6, 2u);
    }

    sub_1D620B270(v5, a2, v6);
    v10 = v7;
    v11 = v6;
    v12 = 2;
  }

  else
  {
    v8 = *(v2 + 32);
    v9 = *(v2 + 40);
    if (*(v2 + 48))
    {
      sub_1D5E433E0(v8, v9, 1u);
      sub_1D620B270(v5, a2, v7);
      v10 = v7;
      v11 = v6;
      v12 = 1;
    }

    else
    {
      sub_1D5E433E0(v8, v9, 0);
      sub_1D620B270(v5, a2, v7);
      v10 = v7;
      v11 = v6;
      v12 = 0;
    }
  }

  return sub_1D5E4342C(v10, v11, v12);
}

void sub_1D624E31C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (*(v2 + 16) && *(v2 + 16) != 1)
  {
    v5 = *(v2 + 8);
    v6 = a1;
    v7 = a2;
    sub_1D620B270(a1, a2, v4);
    if (v3)
    {
      return;
    }

    a1 = v6;
    a2 = v7;
    v4 = v5;
  }

  sub_1D620B270(a1, a2, v4);
}

void FormatButtonNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v17 = *(v2 + 32);
  sub_1D5C82CD8(v17);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    sub_1D5C92A8C(v17);
  }

  else
  {
    sub_1D5C92A8C(v17);
    swift_beginAccess();
    v7 = *(v2 + 48);

    sub_1D620EA64(a1, a2, v7);

    swift_beginAccess();
    v8 = v4[8];
    if (v8 >> 62 == 1)
    {
      v9 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[8]);
      sub_1D5EB1500(v9);

      sub_1D624919C(a1, a2, v9, v10);
      sub_1D5EB15C4(v9);

      sub_1D5EB15C4(v8);
    }

    FormatButtonNodeAction.bind(binder:context:)(a1, a2);

    if ((~v4[13] & 0xF000000000000007) != 0)
    {

      FormatTextContent.bind(binder:context:)(a1, a2);
    }

    if ((~v4[14] & 0xF000000000000007) != 0)
    {

      FormatButtonNodeAction.bind(binder:context:)(a1, a2);
    }

    if ((~v4[15] & 0xF000000000000007) != 0)
    {

      FormatTextContent.bind(binder:context:)(a1, a2);
    }

    v11 = v4[18];
    if (v11)
    {
      swift_beginAccess();
      v12 = *(v11 + 72);
      if (v12)
      {

        sub_1D621397C(a1, a2, v12);
      }

      swift_beginAccess();
      v13 = *(v11 + 88);

      sub_1D621D544(a1, a2, v13);
    }

    swift_beginAccess();
    v14 = v4[23];

    sub_1D6230F7C(a1, a2, v14);

    if (v4[24])
    {
      v15 = v4[28];

      sub_1D5DEA234(v15);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v15);
    }

    swift_beginAccess();
    v16 = v4[10];

    sub_1D6215F90(a1, a2, v16);
  }
}

void FormatButtonNodeAction.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *v2 >> 60;
  if (v11 <= 5)
  {
    if (v11 > 2)
    {
      if (v11 == 3 || v11 != 4)
      {
        return;
      }

      v25 = v10 & 0xFFFFFFFFFFFFFFFLL;
      v26 = *(v25 + 16);
      v27 = *(v25 + 24);

      sub_1D6247B08(a1, a2, v26, v27);
    }

    else
    {
      if (v11)
      {
        if (v11 != 1)
        {
          v56 = swift_projectBox();
          sub_1D62B50EC(v56, v9, type metadata accessor for FormatCommandOpenURL);
          sub_1D5F86DA0(a2);
          sub_1D62B51D0(v9, type metadata accessor for FormatCommandOpenURL);
          return;
        }

        v12 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v13 = *(v12 + 32);
        v65 = *(v12 + 16);
        v66 = v13;
        v14 = *(v12 + 48);
        *&v67[15] = *(v12 + 63);
        *v67 = v14;
        v15 = v65;
        if (v67[18])
        {
          v16 = 8;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16 & 0xFFFFFFF8 | (*&v67[16] >> 11) & 7;
        if (v17 > 4)
        {
          if (v17 <= 6)
          {
            if (v17 == 5)
            {
              return;
            }

            if (BYTE8(v13) >> 6 && BYTE8(v13) >> 6 != 1)
            {
              if ((BYTE8(v13) & 0x3Fu) > 1)
              {
                if ((BYTE8(v13) & 0x3F) == 2)
                {
                  return;
                }

                goto LABEL_70;
              }

              if ((BYTE8(v13) & 0x3F) == 0)
              {
                goto LABEL_70;
              }

              if ((~*(&v65 + 1) & 0xF000000000000007) == 0)
              {
                return;
              }

              *&v59 = *(&v65 + 1);

              sub_1D62B5248(&v65, v63);
              sub_1D5CFCFAC(*(&v15 + 1));
              FormatTextContent.bind(binder:context:)(a1, a2);
            }

            else
            {
              v18 = v13;
              if (v13 > 1u)
              {
                goto LABEL_59;
              }

              if (!v13)
              {
                goto LABEL_70;
              }

              if ((~v65 & 0xF000000000000007) == 0)
              {
                return;
              }

              *&v59 = v65;

              sub_1D62B5248(&v65, v63);
              sub_1D5CFCFAC(v15);
              FormatTextContent.bind(binder:context:)(a1, a2);
            }
          }

          else
          {
            if (v17 != 7)
            {
              return;
            }

            v59 = v65;
            v60 = v13;
            v61 = *v67;
            v62 = *&v67[16] & 0xC7FF;

            sub_1D62B5248(&v65, v63);
            FormatString.bind(binder:context:)(a1, a2);
          }
        }

        else
        {
          if (v17 > 1)
          {
            if (v17 != 3)
            {
              return;
            }

            goto LABEL_11;
          }

          if (v17)
          {
            return;
          }

          v57 = (DWORD2(v13) >> 3) & 7;
          if (v57 <= 1)
          {
            if (v57)
            {
              goto LABEL_70;
            }

LABEL_11:
            v18 = v13;
            if (v13 <= 1u)
            {
              if (v13)
              {
                if ((~v65 & 0xF000000000000007) != 0)
                {
                  *&v59 = v65;

                  sub_1D62B5248(&v65, v63);
                  sub_1D5CFCFAC(v15);
                  FormatTextContent.bind(binder:context:)(a1, a2);
                  sub_1D5D085FC(&v65);
                }

                return;
              }

LABEL_70:
              sub_1D5D085FC(&v65);
              return;
            }

LABEL_59:
            if (v18 == 2)
            {
              return;
            }

            goto LABEL_70;
          }

          if (v57 == 2 || v57 == 3)
          {
            goto LABEL_11;
          }

          v59 = v65;
          *&v60 = v13;
          BYTE8(v60) = BYTE8(v13) & 0xC7;

          sub_1D62B5248(&v65, v63);
          FormatSportsEventBinding.Command.bind(binder:context:)(a1, a2);
        }

        sub_1D5D085FC(&v65);

        return;
      }

      v43 = *(v10 + 16);
      v44 = *(v10 + 24);
      if (v43)
      {
        v45 = *(v43 + 16);

        if (v45)
        {
          v46 = 0;
          while (v46 < *(v43 + 16))
          {
            v47 = *(v43 + 8 * v46 + 32);

            sub_1D625C2EC(a1, a2, v47);
            if (v3)
            {

              return;
            }

            if (v45 == ++v46)
            {
              goto LABEL_41;
            }
          }

          __break(1u);
          return;
        }
      }

      else
      {
      }

LABEL_41:
      if (v44)
      {
        sub_1D6223ECC(a1, a2, v44);
      }
    }

    return;
  }

  if (v11 > 8)
  {
    if (v11 == 9)
    {
      v48 = v10 & 0xFFFFFFFFFFFFFFFLL;
      v49 = *(v48 + 16);
      v50 = *(v48 + 24);
      v69 = a2;
      v51 = *(v48 + 32);
      v52 = *(v48 + 40);
      v58 = a1;
      v54 = *(v48 + 48);
      v53 = *(v48 + 56);
      v55 = *(v48 + 64);
      *&v65 = v49;
      *(&v65 + 1) = v50;
      *&v66 = v51;
      *(&v66 + 1) = v52;
      *v67 = v54;
      *&v67[8] = v53;
      *&v67[16] = v55;
      sub_1D5E1DA6C(v49, v50, v51, v52, v54, v53, v55);
      FormatDismissAction.bind(binder:context:)(v58, v69);
      v36 = v49;
      v37 = v50;
      v38 = v51;
      v39 = v52;
      v40 = v54;
      v41 = v53;
      v42 = v55;
    }

    else
    {
      if (v11 != 10)
      {
        return;
      }

      v28 = v10 & 0xFFFFFFFFFFFFFFFLL;
      v29 = *(v28 + 16);
      v30 = *(v28 + 24);
      v31 = *(v28 + 32);
      v32 = *(v28 + 40);
      v69 = a2;
      v33 = *(v28 + 48);
      v34 = *(v28 + 56);
      v58 = a1;
      v35 = *(v28 + 64);
      *&v65 = v29;
      *(&v65 + 1) = v30;
      *&v66 = v31;
      *(&v66 + 1) = v32;
      *v67 = v33;
      *&v67[8] = v34;
      *&v67[16] = v35;
      sub_1D5E1DA6C(v29, v30, v31, v32, v33, v34, v35);
      FormatString.bind(binder:context:)(v58, v69);
      v36 = v29;
      v37 = v30;
      v38 = v31;
      v39 = v32;
      v40 = v33;
      v41 = v34;
      v42 = v35;
    }

    sub_1D5E1DE98(v36, v37, v38, v39, v40, v41, v42);
    return;
  }

  if ((v11 - 7) >= 2)
  {
    v19 = v10 & 0xFFFFFFFFFFFFFFFLL;
    v20 = *(v19 + 48);
    v66 = *(v19 + 32);
    *v67 = v20;
    *&v67[16] = *(v19 + 64);
    v68 = *(v19 + 80);
    v21 = *(v19 + 32);
    v65 = *(v19 + 16);
    v22 = *(v19 + 48);
    v23 = *(v19 + 64);
    v63[1] = v21;
    v63[2] = v22;
    v63[3] = v23;
    v64 = *(v19 + 80);
    v63[0] = *(v19 + 16);
    sub_1D614F7FC(&v65, &v59);
    FormatPurchaseAction.bind(binder:context:)(a1, a2);
    sub_1D614F7CC(&v65);
  }
}

void FormatTextContent.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *v2 >> 60;
  if (v7 > 4)
  {
    v10 = v6 & 0xFFFFFFFFFFFFFFFLL;
    if (v7 > 6)
    {
      if (v7 == 7)
      {
        v21 = *(v10 + 24);
        *&v33 = *(v10 + 16);
        *(&v33 + 1) = v21;

        FormatTextNodeLink.bind(binder:context:)(a1, a2);

LABEL_25:

        return;
      }

      if (v7 == 8)
      {
        v11 = *(v10 + 24);
        v13 = *(v10 + 32);
        v12 = *(v10 + 40);
        v14 = *(v10 + 48);
        v15 = *(v10 + 56);
        v16 = *(v10 + 64);
        *&v33 = *(v10 + 16);
        sub_1D5F33D5C(v33);
        sub_1D5E1DC5C(v11, v13, v12, v14, v15, v16);
        sub_1D5F33D5C(v33);
        FormatDateTime.bind(binder:context:)(a1, a2);
        sub_1D5F33D8C(v33);
        sub_1D5E1E088(v11, v13, v12, v14, v15, v16);
        sub_1D5F33D8C(v33);
        return;
      }

      v22 = *(v10 + 24);
      *&v33 = *(v10 + 16);
      swift_retain_n();

      FormatTextContent.bind(binder:context:)(a1, a2);
      if (!v3)
      {

        sub_1D623CFF4(a1, a2, v22, FormatTextContent.bind(binder:context:));
        goto LABEL_24;
      }

LABEL_16:

      return;
    }

    if (v7 == 5)
    {
      v19 = *(v10 + 16);
      v20 = *(v10 + 24);

      sub_1D6248794(a1, a2, v19, v20, FormatTextContent.bind(binder:context:));

      return;
    }

    v26 = *(v10 + 112);
    v38 = *(v10 + 96);
    v39 = v26;
    v40 = *(v10 + 128);
    v41 = *(v10 + 144);
    v27 = *(v10 + 48);
    v34 = *(v10 + 32);
    v35 = v27;
    v28 = *(v10 + 80);
    v36 = *(v10 + 64);
    v37 = v28;
    v33 = *(v10 + 16);
    v29 = v33;
    if (BYTE8(v33))
    {
      if (BYTE8(v33) != 1)
      {
        sub_1D62B52A4(&v33);
        return;
      }

      sub_1D62B52F8(&v33, v31);
      sub_1D62B41FC(a2, v29);
    }

    else
    {
      sub_1D62B52F8(&v33, v31);
      sub_1D620B270(a1, a2, v29);
    }

    sub_1D62B52A4(&v33);
  }

  else
  {
    if (v7 <= 2)
    {
      if ((v7 - 1) >= 2)
      {
        v8 = *(v6 + 32);
        v33 = *(v6 + 16);
        v34 = v8;
        v35 = *(v6 + 48);
        LOWORD(v36) = *(v6 + 64);
        v9 = *(v6 + 32);
        v31[0] = *(v6 + 16);
        v31[1] = v9;
        v31[2] = *(v6 + 48);
        v32 = *(v6 + 64);
        sub_1D5FD78CC(&v33, v30);
        FormatTextNodeBinding.bind(binder:context:)(a1, a2);
        sub_1D5FD7B18(&v33);
      }

      return;
    }

    v17 = v6 & 0xFFFFFFFFFFFFFFFLL;
    if (v7 == 3)
    {
      v18 = *(v17 + 24);
      *&v33 = *(v17 + 16);
      swift_retain_n();

      FormatTextContent.bind(binder:context:)(a1, a2);
      if (!v3)
      {

        sub_1D623CEAC(a1, a2, v18);
LABEL_24:

        goto LABEL_25;
      }

      goto LABEL_16;
    }

    v23 = *(v17 + 32);
    v24 = *(v17 + 40);
    v25 = *(v17 + 48);
    *&v33 = *(v17 + 16);

    sub_1D5C75A4C(v23, v24, v25);

    FormatSyncImageContent.bind(binder:context:)(a1, a2);
    if (v3)
    {
    }

    else
    {

      sub_1D5C75A4C(v23, v24, v25);
      sub_1D60ECF10(a2);
      sub_1D5D2F2C8(v23, v24, v25);
    }

    sub_1D5D2F2C8(v23, v24, v25);
  }
}

void FormatMenu.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];
  if (*v2 && (v8 = *(v7 + 16)) != 0)
  {
    v9 = 0;
    while (v9 < *(v7 + 16))
    {
      v10 = *(v7 + 32 + 8 * v9);

      sub_1D625C2EC(a1, a2, v10);

      if (v3)
      {
        return;
      }

      if (v8 == ++v9)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    if (v6)
    {
      sub_1D6223ECC(a1, a2, v6);
    }
  }
}

void FormatCommand.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v33[0] = *(*v2 + 16);
  v33[1] = v5;
  v6 = *(v4 + 48);
  LODWORD(v4) = *(v4 + 63);
  *(&v34[1] + 7) = v4;
  *v34 = v6;
  v7 = *(&v33[0] + 1);
  v8 = (v4 >> 8);
  if ((v4 & 0x1000000) != 0)
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 & 0xFFFFFFF8 | (v8 >> 11) & 7;
  if (v10 > 3)
  {
    if (((1 << v10) & 0x330) != 0)
    {
      return;
    }

    if (v10 != 6)
    {
      v30[0] = v33[0];
      v30[1] = v5;
      v30[2] = *v34;
      v31 = v8 & 0xC7FF;
      sub_1D5E1DA6C(*&v33[0], *(&v33[0] + 1), v5, *(&v5 + 1), v34[0], v34[1], v8 & 0xFFFFC7FF);
      FormatString.bind(binder:context:)(a1, a2);
      goto LABEL_53;
    }

    if (!(BYTE8(v5) >> 6) || BYTE8(v5) >> 6 == 1)
    {
LABEL_9:
      v11 = v5;
      if (v5 <= 1u)
      {
        if (v5)
        {
          if ((~*&v33[0] & 0xF000000000000007) == 0)
          {
            return;
          }

          v32 = *&v33[0];
          v12 = *&v33[0];
          sub_1D62B5248(v33, v30);
          sub_1D5CFCFAC(v12);
          FormatTextContent.bind(binder:context:)(a1, a2);
LABEL_36:

          goto LABEL_53;
        }

        goto LABEL_53;
      }

LABEL_52:
      if (v11 == 2)
      {
        return;
      }

      goto LABEL_53;
    }

    v22 = BYTE8(v5) & 0x3F;
    if (v22 <= 1)
    {
LABEL_33:
      if (v22)
      {
        if ((~*(&v33[0] + 1) & 0xF000000000000007) == 0)
        {
          return;
        }

        v32 = *(&v33[0] + 1);
        sub_1D62B5248(v33, v30);
        sub_1D5CFCFAC(v7);
        FormatTextContent.bind(binder:context:)(a1, a2);
        goto LABEL_36;
      }

LABEL_53:
      sub_1D5D085FC(v33);
      return;
    }

LABEL_44:
    if (v22 == 2)
    {
      return;
    }

    goto LABEL_53;
  }

  if ((v10 - 1) < 2)
  {
    return;
  }

  if (v10)
  {
    v11 = v5;
    if (v5 > 1u)
    {
      goto LABEL_52;
    }

    if (!v5)
    {
      goto LABEL_53;
    }

    if ((~*&v33[0] & 0xF000000000000007) == 0)
    {
      return;
    }

    v32 = *&v33[0];
    v17 = *&v33[0];
    sub_1D62B5248(v33, v30);
    sub_1D5CFCFAC(v17);
    FormatTextContent.bind(binder:context:)(a1, a2);
    sub_1D5D085FC(v33);
LABEL_26:

    return;
  }

  v15 = (DWORD2(v5) >> 3) & 7;
  if (v15 <= 1)
  {
    if (v15)
    {
      goto LABEL_53;
    }

    if (v5 > 1u)
    {
      if (v5 == 2)
      {
        return;
      }

      goto LABEL_53;
    }

    if (!v5)
    {
      goto LABEL_53;
    }

    if ((~*&v33[0] & 0xF000000000000007) == 0)
    {
      return;
    }

    v32 = *&v33[0];
    v20 = *&v33[0];
    sub_1D62B5248(v33, v30);
    sub_1D5CFCFAC(v20);
    FormatTextContent.bind(binder:context:)(a1, a2);
    sub_1D5D085FC(v33);
    goto LABEL_26;
  }

  if (v15 == 2)
  {
    v11 = v5;
    if (v5 > 1u)
    {
      goto LABEL_52;
    }

    if (!v5)
    {
      goto LABEL_53;
    }

    goto LABEL_39;
  }

  if (v15 == 3)
  {
    v11 = v5;
    if (v5 > 1u)
    {
      goto LABEL_52;
    }

    if (!v5)
    {
      goto LABEL_53;
    }

LABEL_39:
    if ((~*&v33[0] & 0xF000000000000007) != 0)
    {
      v32 = *&v33[0];
      v24 = *&v33[0];
      sub_1D62B5248(v33, v30);
      sub_1D5CFCFAC(v24);
      FormatTextContent.bind(binder:context:)(a1, a2);
      sub_1D5D085FC(v33);
    }

    return;
  }

  if (BYTE8(v5) >> 6)
  {
    if (BYTE8(v5) >> 6 == 1)
    {
      goto LABEL_9;
    }

    v22 = BYTE8(v5) & 7;
    if (v22 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_44;
  }

  v11 = v5;
  if (v5 > 1u)
  {
    goto LABEL_52;
  }

  if (!v5)
  {
    goto LABEL_53;
  }

  if ((~*&v33[0] & 0xF000000000000007) != 0)
  {
    v32 = *&v33[0];
    v27 = *&v33[0];
    sub_1D62B5248(v33, v30);
    sub_1D5CFCFAC(v27);
    FormatTextContent.bind(binder:context:)(a1, a2);

    sub_1D5D085FC(v33);
  }
}

void FormatPurchaseAction.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v4 = v2[1];
  v27 = *v2;
  v28 = v4;
  v5 = v2[3];
  v29 = v2[2];
  v30 = v5;
  v31 = *(v2 + 64);
  if (v31 > 1u)
  {
    if (v31 == 2)
    {
      v22 = v27;
      *&v23 = v28;
      FormatOsloSheetPurchaseDataModel.bind(binder:context:)(result, a2);
    }
  }

  else if (v31)
  {
    if ((*(&v30 + 1) & 0xF000000000000007) != 0x3000000000000007)
    {
      v18 = v27;
      v19 = v28;
      v20 = v29;
      v21 = v30;
      v7 = v2[3];
      v24 = v2[2];
      v25 = v7;
      v26 = *(v2 + 64);
      v8 = v2[1];
      v22 = *v2;
      v23 = v8;
      sub_1D62B5354(&v22, v17, &qword_1EDF24810, &type metadata for FormatPurchaseLandingPage);
      FormatPurchaseLandingPage.bind(binder:context:)(result, a2);
      v17[0] = v18;
      v17[1] = v19;
      v17[2] = v20;
      v17[3] = v21;
      sub_1D614F778(v17);
    }
  }

  else
  {
    if ((v27 & 0xF000000000000007) == 0x7000000000000007)
    {
      return;
    }

    v6 = (v27 >> 57) & 0x78 | v27 & 7;
    if (v6 == 95)
    {
LABEL_19:
      sub_1D614F7CC(&v27);
      return;
    }

    if (v6 == 127)
    {
      sub_1D614F7CC(&v27);
      return;
    }

    if ((v27 >> 62) >= 2)
    {
      if (v27 >> 62 == 2)
      {
        v13 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v14 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v12 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        *(&v18 + 1) = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        *&v19 = v13;
        BYTE8(v19) = v14;
        sub_1D614F7FC(&v27, &v22);
        sub_1D5D27950(v12, *(&v18 + 1), v13, v14);
        sub_1D6089844(a2);
        sub_1D5D28C84(v12, *(&v18 + 1), v13, v14);
      }

      else
      {
        v15 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        *&v18 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        sub_1D614F7FC(&v27, &v22);
        swift_retain_n();

        FormatURL.bind(binder:context:)(result, a2);
        if (v3)
        {

          sub_1D614F7CC(&v27);
          return;
        }

        sub_1D620FAB4(result, a2, v15);
        swift_bridgeObjectRelease_n();
      }

      goto LABEL_19;
    }
  }
}

void FormatDismissAction.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatOption(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = *(v2 + 48);
  if (v17 >> 14)
  {
    v18 = a1;
    v46 = v6;
    v47 = v5;
    v45 = v9;
    v19 = *v2;
    v20 = *(v2 + 8);
    v21 = *(v2 + 16);
    v22 = *(v2 + 24);
    v24 = *(v2 + 32);
    v23 = *(v2 + 40);
    if (v17 >> 14 == 1)
    {
      v44 = &v44 - v16;
      v50 = v19;
      v51 = v20;
      v52 = v21;
      LOBYTE(v48[0]) = 5;
      v25 = v19;
      sub_1D5E1DA6C(v19, v20, v21, v22, v24, v23, v17);
      v26 = v57;
      v27 = sub_1D703E0C8(&v50, v48);
      if (!v26)
      {
        v28 = v27;
        v57 = 0;
        FormatOptionCollection.subscript.getter(v25, v20, v13);
        v30 = v46;
        v29 = v47;
        if ((*(v46 + 48))(v13, 1, v47) == 1)
        {

          sub_1D5B6EF64(v13, &qword_1EDF337F0, type metadata accessor for FormatOption);
          if ((*(a2 + 48) & 1) == 0)
          {
            type metadata accessor for FormatLayoutError(0);
            sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
            swift_allocError();
            *v37 = v25;
            v37[1] = v20;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            return;
          }

          v31 = 1;
          v32 = v44;
        }

        else
        {
          v35 = v45;
          sub_1D5D5E33C(v13, v45, type metadata accessor for FormatOption);
          v50 = v35[2];

          FormatOptionValue.type.getter(v36, v48);
          if ((sub_1D6183C84(v48[0], v28) & 1) == 0)
          {
            type metadata accessor for FormatDerivedDataError(0);
            sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
            swift_allocError();
            v39 = v38;
            v41 = *v35;
            v40 = v35[1];
            v50 = v35[2];

            FormatOptionValue.type.getter(v42, v48);
            v43 = v48[0];
            *v39 = v41;
            *(v39 + 8) = v40;
            *(v39 + 16) = v43;
            *(v39 + 24) = v28;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            sub_1D62B51D0(v35, type metadata accessor for FormatOption);
            return;
          }

          swift_bridgeObjectRelease_n();
          v32 = v44;
          sub_1D5D5E33C(v35, v44, type metadata accessor for FormatOption);
          v31 = 0;
        }

        (*(v30 + 56))(v32, v31, 1, v29);
        sub_1D5B6EF64(v32, &qword_1EDF337F0, type metadata accessor for FormatOption);
      }
    }

    else
    {
      v50 = *v2;
      v51 = v20;
      v52 = v21;
      v53 = v22;
      v54 = v24;
      v55 = v23;
      v56 = v17 & 0x3FFF;
      v47 = v19;
      v33 = v18;
      v34 = v57;
      FormatTextNodeBinding.bind(binder:context:)(v18, a2);
      if (!v34)
      {
        v48[0] = v47;
        v48[1] = v20;
        v48[2] = v21;
        v48[3] = v22;
        v48[4] = v24;
        v48[5] = v23;
        v49 = v17 & 0x3FFF;
        FormatTextNodeBinding.bind(binder:context:)(v33, a2);
      }
    }
  }
}

void FormatCellSelection.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (!*(v2 + 56))
  {
    v8 = *(v2 + 48);
    if ((v8 & 0xF000000000000007) == 0xD000000000000007)
    {
      return;
    }

    v10 = *(v2 + 8);
    v9 = *(v2 + 16);
    v12 = *(v2 + 24);
    v11 = *(v2 + 32);
    v13 = *(v2 + 40);
    if ((~v4 & 0xF000000000000007) != 0)
    {
      sub_1D62B54E4(v4, v10, v9, v12, v11, v13, v8, 0);
      sub_1D5CFCFAC(v4);
      FormatColor.bind(binder:context:)(a1, a2);

      if (v3)
      {
        v14 = v4;
        v15 = v10;
        v16 = v9;
        v17 = v12;
        v18 = v11;
        v19 = v13;
        goto LABEL_15;
      }

      v20 = v10;
      v21 = v9;
      v22 = v12;
      v23 = v11;
    }

    else
    {
      v20 = v10;
      v21 = v9;
      v22 = v12;
      v23 = v11;
      sub_1D62B545C(v4, v10, v9, v12, v11, v13, v8, sub_1D5CFCFAC, sub_1D5D04BD4);
    }

    if ((v8 & 0xF000000000000007) != 0xF000000000000007)
    {

      FormatFloat.bind(binder:context:)(a1, a2);

      sub_1D62B53F0(v4, v20, v21, v22, v23, v13, v8, 0);
      return;
    }

    v14 = v4;
    v15 = v20;
    v16 = v21;
    v17 = v22;
    v18 = v23;
    v19 = v13;
LABEL_15:
    sub_1D62B53F0(v14, v15, v16, v17, v18, v19, v8, 0);
    return;
  }

  if (*(v2 + 56) == 1 && (~v4 & 0xD000000000000007) != 0)
  {
    sub_1D62B53D4(v4);
    FormatFloat.bind(binder:context:)(a1, a2);
  }
}

double FormatCellSelection.Background.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[6];
  if ((~*v2 & 0xF000000000000007) == 0 || (, FormatColor.bind(binder:context:)(a1, a2), , !v3))
  {
    if ((~v6 & 0xF000000000000007) != 0)
    {

      FormatFloat.bind(binder:context:)(a1, a2);
    }
  }

  return result;
}

double FormatCellSelection.DimContent.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if ((~*v2 & 0xF000000000000007) != 0)
  {

    FormatFloat.bind(binder:context:)(a1, a2);
  }

  return result;
}

double sub_1D625035C(uint64_t a1, uint64_t a2)
{
  if ((~*v2 & 0xF000000000000007) != 0)
  {

    FormatFloat.bind(binder:context:)(a1, a2);
  }

  return result;
}

void sub_1D6250408(uint64_t a1, uint64_t a2)
{
  v25[0] = *v2;
  v6 = v25[0];
  *(v25 + 9) = *(v2 + 9);
  *v23 = v6;
  *&v23[9] = *(v25 + 9);
  sub_1D62B745C(v25, v24);
  sub_1D607B228(a2);
  if (v3)
  {
    v8 = *&v23[8];
    v7 = *v23;
    v9 = *&v23[16];
    v10 = v23[24];
LABEL_3:
    sub_1D5F57FEC(v7, v8, v9, v10);
    return;
  }

  sub_1D5F57FEC(*v23, *&v23[8], *&v23[16], v23[24]);
  v11 = *(v2 + 32);
  v12 = v11 >> 61;
  if ((v11 >> 61) > 2)
  {
    v17 = v11 & 0x1FFFFFFFFFFFFFFFLL;
    if (v12 != 3)
    {
      v21 = *(v17 + 32);
      v26[0] = *(v17 + 16);
      v26[1] = v21;
      v27 = *(v17 + 48);
      sub_1D62B50EC(v26, v23, sub_1D62B5154);
      sub_1D6250408(a1, a2);
      sub_1D62B51D0(v26, sub_1D62B5154);
      return;
    }

    v18 = *(v17 + 24);
    v19 = *(v17 + 32);
    v20 = *(v17 + 40);
    *v23 = *(v17 + 16);
    *&v23[8] = v18;
    *&v23[16] = v19;
    v23[24] = v20;
    sub_1D5F58038(*v23, v18, v19, v20);
    sub_1D607B228(a2);
    v7 = *v23;
    v8 = v18;
    v9 = v19;
    v10 = v20;
    goto LABEL_3;
  }

  if ((v11 >> 61) >= 2)
  {
    v13 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    if ((v13 >> 62) >= 2)
    {
      if (v13 >> 62 == 2)
      {
        v15 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v16 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v14 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        *&v23[8] = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        *&v23[16] = v15;
        v23[24] = v16;

        swift_retain_n();
        sub_1D5D27950(v14, *&v23[8], v15, v16);
        sub_1D6089844(a2);

        sub_1D5D28C84(v14, *&v23[8], v15, v16);
      }

      else
      {
        v22 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        *v23 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();

        swift_retain_n();
        FormatURL.bind(binder:context:)(a1, a2);

        sub_1D620FAB4(a1, a2, v22);

        swift_bridgeObjectRelease_n();
      }
    }
  }
}

double sub_1D6250710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{

  a5(a1, a2);

  if (!v5)
  {

    a5(a1, a2);
  }

  return result;
}

void sub_1D62507BC(uint64_t a1, uint64_t a2)
{
  v9[0] = *v2;
  v6 = v9[0];
  *(v9 + 9) = *(v2 + 9);
  *v8 = v6;
  *&v8[9] = *(v9 + 9);
  sub_1D62B7FB4(v9, v7);
  FormatColorBinding.bind(binder:context:)(a1, a2);
  sub_1D5F57FEC(*v8, *&v8[8], *&v8[16], v8[24]);
  if (!v3)
  {
    v10 = *(v2 + 32);
    *v8 = v10;
    sub_1D62B8010(&v10, v7);
    FormatColor.bind(binder:context:)(a1, a2);
  }
}

void sub_1D625088C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_retain_n();

  FormatColor.bind(binder:context:)(a1, a2);
  if (v5)
  {
  }

  else
  {

    sub_1D620B334(a1, a2, a4);

    FormatColor.bind(binder:context:)(a1, a2);
  }
}

uint64_t FormatUnboundValue.bind(binder:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a2;
  v7 = a1;
  v8 = *(a3 + 24);
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  (*(v17 + 16))(&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v12, v15);
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (swift_dynamicCast())
  {
    v28 = v4;
    v18 = v7;
    v19 = v6;
    v20 = *(&v31 + 1);
    v21 = v32;
    __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
    v22 = v33;
    (*(v21 + 8))(v18, v19, v20, v21);
    result = __swift_destroy_boxed_opaque_existential_1(&v30);
    if (v22)
    {
      return result;
    }

    v33 = 0;
    v6 = v19;
    v7 = v18;
    v4 = v28;
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_1D5BFB774(&v30, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }

  (*(v29 + 16))(v10, v4 + *(a3 + 52), v8);
  if (swift_dynamicCast())
  {
    v24 = v7;
    v25 = v6;
    v26 = *(&v31 + 1);
    v27 = v32;
    __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
    (*(v27 + 8))(v24, v25, v26, v27);
    return __swift_destroy_boxed_opaque_existential_1(&v30);
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    return sub_1D5BFB774(&v30, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }
}

uint64_t FormatColorBinding.bindChildren(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 24);
  if (((1 << v4) & 0xCF) == 0 && (v4 != 4 || (v3 >> 7) >= 6u) && (v3 & 0xC0) == 0x80)
  {
    v5 = result;
    v12 = v3 & 0x3F;
    sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    if (swift_dynamicCast())
    {
      v7 = *(&v10 + 1);
      v8 = v11;
      __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
      (*(v8 + 8))(v5, a2, v7, v8);
      return __swift_destroy_boxed_opaque_existential_1(&v9);
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
      return sub_1D5BFB774(&v9, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    }
  }

  return result;
}

uint64_t FormatGroupBinding.Color.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if (2 * (*(v2 + 9) & 0x7Fu) >= 6)
  {
    v3 = *(v2 + 8);
    if ((v3 & 0xC0) == 0x80)
    {
      v4 = result;
      v11 = v3 & 0x3F;
      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      if (swift_dynamicCast())
      {
        v6 = *(&v9 + 1);
        v7 = v10;
        __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
        (*(v7 + 8))(v4, a2, v6, v7);
        return __swift_destroy_boxed_opaque_existential_1(&v8);
      }

      else
      {
        v10 = 0;
        v8 = 0u;
        v9 = 0u;
        return sub_1D5BFB774(&v8, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      }
    }
  }

  return result;
}

uint64_t FormatSportsEventBinding.Color.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if ((v3 & 0xC0) == 0x80)
  {
    v4 = result;
    v11 = v3 & 0x3F;
    sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    if (swift_dynamicCast())
    {
      v6 = *(&v9 + 1);
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
      (*(v7 + 8))(v4, a2, v6, v7);
      return __swift_destroy_boxed_opaque_existential_1(&v8);
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
      return sub_1D5BFB774(&v8, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    }
  }

  return result;
}

double FormatColorBlendProcessor.bind(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatColor.bind(binder:context:)(a1, a2);

  return result;
}

double sub_1D6251060(uint64_t a1, uint64_t a2)
{

  FormatColor.bind(binder:context:)(a1, a2);

  return result;
}

void FormatColorColorExpression.bindChildren(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatColor.bind(binder:context:)(a1, a2);

  if (!v2)
  {
    FormatColorExpression.bindChildren(binder:context:)(a1, a2);
  }
}

void FormatColorConditionalProcessor.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);
  FormatColorExpression.bindChildren(binder:context:)(a1, a2);
  if (!v3)
  {
    sub_1D620B334(a1, a2, v6);
  }
}

void sub_1D625119C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);
  FormatColorExpression.bindChildren(binder:context:)(a1, a2);
  if (!v3)
  {
    sub_1D620B334(a1, a2, v6);
  }
}

void FormatColorExpression.bindChildren(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2 >> 61;
  if (v6 <= 1)
  {

    FormatColorExpression.bindChildren(binder:context:)(a1, a2);
    if (!v3)
    {
      FormatColorExpression.bindChildren(binder:context:)(a1, a2);
    }
  }

  else if (v6 == 2)
  {

    FormatColorExpression.bindChildren(binder:context:)(a1, a2);
  }

  else
  {
    if (v6 == 3)
    {
      return;
    }

    swift_retain_n();
    FormatColor.bind(binder:context:)(a1, a2);
    if (v3)
    {

      return;
    }

    FormatColorExpression.bindChildren(binder:context:)(a1, a2);
  }
}

void sub_1D62513B4(uint64_t a1, uint64_t a2)
{
  FormatColorExpression.bindChildren(binder:context:)(a1, a2);
  if (!v2)
  {
    FormatColorExpression.bindChildren(binder:context:)(a1, a2);
  }
}

void FormatColorProcessor.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2 >> 61;
  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      return;
    }

    v7 = *((*v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    FormatColorExpression.bindChildren(binder:context:)(a1, a2);
    if (!v3)
    {
      sub_1D620B334(a1, a2, v7);
    }

    goto LABEL_11;
  }

  if (v6 == 3)
  {

    FormatColor.bind(binder:context:)(a1, a2);
LABEL_11:

    return;
  }

  if (v6 == 4)
  {
    swift_retain_n();
    FormatColor.bind(binder:context:)(a1, a2);
  }
}

void FormatColumnRowSpan.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);

  sub_1D620B270(a1, a2, v5);
}

void sub_1D62515AC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);

  sub_1D620B270(a1, a2, v5);
}

void FormatCommandBinding.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[3];
  if (*(v2 + 50))
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 & 0xFFFFFFF8 | (*(v2 + 24) >> 11) & 7;
  if (v6 <= 3)
  {
    if ((v6 - 1) >= 2)
    {
      if (!v6)
      {
        FormatGroupBinding.Command.bind(binder:context:)(a1, a2);
        return;
      }

      if (v2[2] == 1 && (v3 & 0xF000000000000007) != 0xF000000000000007)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    if (((1 << v6) & 0x330) != 0)
    {
      return;
    }

    if (v6 != 6)
    {
      FormatString.bind(binder:context:)(a1, a2);
      return;
    }

    if (!(v4 >> 6) || v4 >> 6 == 1)
    {
      if (v2[2] != 1 || (v3 & 0xF000000000000007) == 0xF000000000000007)
      {
        return;
      }

LABEL_20:

      FormatTextContent.bind(binder:context:)(a1, a2);

      return;
    }

    if ((v4 & 0x3F) == 1 && (v2[1] & 0xF000000000000007) != 0xF000000000000007)
    {
      goto LABEL_20;
    }
  }
}

uint64_t sub_1D6251798(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 63);
  v15[1] = *(*v2 + 32);
  v16[0] = v7;
  *(v16 + 15) = v8;
  v15[0] = v6;
  v9 = *(v5 + 32);
  v12 = *(v5 + 16);
  v13 = v9;
  v14[0] = *(v5 + 48);
  *(v14 + 15) = *(v5 + 63);
  sub_1D62B5248(v15, v11);
  FormatCommandBinding.bind(binder:context:)(a1, a2);
  return sub_1D5D085FC(v15);
}

void sub_1D6251838(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v7 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v20[0] = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v20[1] = v7;
        v8 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v20[2] = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v20[3] = v8;
        v9 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v19[4] = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v19[5] = v9;
        v10 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v19[6] = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v19[7] = v10;
        sub_1D62B6004(v20, v19);
        FormatMenuGroupData.bind(binder:context:)(a1, a2);
        sub_1D62B6060(v20);
        return;
      }

      v17 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v18 = *(v17 + 24);

      sub_1D621DA6C(a1, a2, v18);
      if (!v3)
      {
        sub_1D6251838(a1, a2, *(v17 + 32));
      }

      goto LABEL_19;
    }

    v12 = *(a3 + 16);
    v11 = *(a3 + 24);
    v13 = *(a3 + 32);
    v14 = *(a3 + 40);
    v15 = *(a3 + 48);
    if (v13)
    {
      v21 = *(a3 + 32);
      v16 = v12[3];
      sub_1D5F26358(v12, v11, 1);
      sub_1D62B5FC8(v14, v15);

      sub_1D621E2E4(a1, a2, v16);
      if (v3)
      {
        sub_1D5F26348(v12, v11, 1);
        sub_1D5FC4E9C(v14, v15);
LABEL_19:

        return;
      }

      sub_1D6251BE4(a1, a2, v12[4], v12[5]);
      v13 = v21;
      if (!v15)
      {
LABEL_18:
        sub_1D5F26348(v12, v11, v13);
        sub_1D5FC4E9C(v14, 0);
        goto LABEL_19;
      }
    }

    else
    {
      sub_1D5F26358(*(a3 + 16), *(a3 + 24), 0);
      sub_1D62B5FC8(v14, v15);

      if (!v15)
      {
        goto LABEL_18;
      }
    }

    sub_1D621E140(a1, a2, *(v14 + 24));
    if (!v3)
    {
      sub_1D6251AD4(a1, a2, *(v14 + 32));
    }

    sub_1D5F26348(v12, v11, v13);
    sub_1D5FC4E9C(v14, 1);
    goto LABEL_19;
  }
}

uint64_t sub_1D6251AD4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D62B7E2C();
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  v6 = a3;
  if (swift_dynamicCast())
  {
    v7 = *(&v11 + 1);
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
    (*(v8 + 8))(a1, a2, v7, v8);
    return __swift_destroy_boxed_opaque_existential_1(&v10);
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    return sub_1D5BFB774(&v10, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }
}

uint64_t sub_1D6251BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);

  if (swift_dynamicCast())
  {
    v6 = *(&v10 + 1);
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
    (*(v7 + 8))(a1, a2, v6, v7);
    return __swift_destroy_boxed_opaque_existential_1(&v9);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    return sub_1D5BFB774(&v9, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }
}

double sub_1D6251CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    v6 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = *(v6 + 24);

    sub_1D6220CF8(a1, a2, v7);
    if (!v3)
    {
      sub_1D6251CF0(a1, a2, *(v6 + 32));
    }
  }

  return result;
}

uint64_t sub_1D6251DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v10 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + *(v9 + 28), v6, v7);
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (swift_dynamicCast())
  {
    v11 = *(&v15 + 1);
    v12 = v16;
    __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
    (*(v12 + 8))(a1, a2, v11, v12);
    return __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    return sub_1D5BFB774(&v14, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }
}

double FormatGroupBinding.Command.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = (v5 >> 3) & 7;
  if (v6 <= 1)
  {
    v7 = v3 & 0xF000000000000007;
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v4 == 1;
    }
  }

  else
  {
    if (v6 != 2 && v6 != 3)
    {
      if (v5 >> 6 > 1)
      {
        if ((v5 & 7) != 1)
        {
          return result;
        }

        v3 = v2[1];
      }

      else if (v4 != 1)
      {
        return result;
      }

      if ((v3 & 0xF000000000000007) == 0xF000000000000007)
      {
        return result;
      }

      goto LABEL_19;
    }

    v7 = v3 & 0xF000000000000007;
    v8 = v4 == 1;
  }

  if (v8 && v7 != 0xF000000000000007)
  {
LABEL_19:

    FormatTextContent.bind(binder:context:)(a1, a2);
  }

  return result;
}

double FormatTagBinding.Command.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16) == 1 && (*v2 & 0xF000000000000007) != 0xF000000000000007)
  {

    FormatTextContent.bind(binder:context:)(a1, a2);
  }

  return result;
}

double FormatSportsEventBinding.Command.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (v3 >> 6 > 1)
  {
    v6 = v3 & 0x3F;
    v4 = *(v2 + 8) & 0xF000000000000007;
    v5 = v6 == 1;
  }

  else
  {
    v4 = *v2 & 0xF000000000000007;
    v5 = *(v2 + 16) == 1;
  }

  if (v5 && v4 != 0xF000000000000007)
  {

    FormatTextContent.bind(binder:context:)(a1, a2);
  }

  return result;
}

uint64_t sub_1D62521C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v10 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + *(v9 + 44), v6, v7);
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (swift_dynamicCast())
  {
    v11 = *(&v15 + 1);
    v12 = v16;
    __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
    (*(v12 + 8))(a1, a2, v11, v12);
    return __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    return sub_1D5BFB774(&v14, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }
}

void FormatCustomItemDefinition.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for FormatPropertyDefinition(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 16);
  if (v12)
  {
    v13 = 0;
    while (v13 < *(v11 + 16))
    {
      sub_1D62B50EC(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v10, type metadata accessor for FormatPropertyDefinition);
      FormatPropertyDefinition.bind(binder:context:)(a1, a2);
      if (v3)
      {
        sub_1D62B51D0(v10, type metadata accessor for FormatPropertyDefinition);
        return;
      }

      ++v13;
      sub_1D62B51D0(v10, type metadata accessor for FormatPropertyDefinition);
      if (v12 == v13)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1D62524D0(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for FormatPropertyDefinition(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 16);
  if (v12)
  {
    v13 = 0;
    while (v13 < *(v11 + 16))
    {
      sub_1D62B50EC(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v10, type metadata accessor for FormatPropertyDefinition);
      FormatPropertyDefinition.bind(binder:context:)(a1, a2);
      if (v3)
      {
        sub_1D62B51D0(v10, type metadata accessor for FormatPropertyDefinition);
        return;
      }

      ++v13;
      sub_1D62B51D0(v10, type metadata accessor for FormatPropertyDefinition);
      if (v12 == v13)
      {
        return;
      }
    }

    __break(1u);
  }
}

void FormatCustomNode.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v18 = v2[7];
  sub_1D5C82CD8(v18);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    sub_1D5C92A8C(v18);
  }

  else
  {
    sub_1D5C92A8C(v18);
    swift_beginAccess();
    v7 = v2[9];

    sub_1D620EA64(a1, a2, v7);

    v8 = v4[10];
    if (v8)
    {
      v9 = *(v8 + 56);
      if (v9)
      {
        sub_1D6213004(a1, a2, v9);
      }

      swift_beginAccess();
      v10 = *(v8 + 64);

      sub_1D621A990(a1, a2, v10);
    }

    v11 = v4[11];
    if (v11)
    {
      swift_beginAccess();
      v12 = *(v11 + 72);
      if (v12)
      {

        sub_1D621397C(a1, a2, v12);
      }

      swift_beginAccess();
      v13 = *(v11 + 88);

      sub_1D621D544(a1, a2, v13);
    }

    swift_beginAccess();
    v14 = v4[13];
    if (v14 >> 62 == 1)
    {
      v15 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[13]);
      sub_1D5EB1500(v15);

      sub_1D624919C(a1, a2, v15, v16);
      sub_1D5EB15C4(v15);

      sub_1D5EB15C4(v14);
    }

    if (v4[15])
    {
      v17 = v4[19];

      sub_1D5DEA234(v17);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v17);
    }
  }
}

double FormatCustomNodeStyle.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  if (!v6 || (sub_1D6213004(a1, a2, v6), !v3))
  {
    swift_beginAccess();
    v8 = *(v2 + 64);

    sub_1D621A990(a1, a2, v8);
  }

  return result;
}

double sub_1D62529F8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(v6 + 56);
  if (!v7 || (sub_1D6213004(a1, a2, v7), !v3))
  {
    swift_beginAccess();
    v9 = *(v6 + 64);

    sub_1D621A990(a1, a2, v9);
  }

  return result;
}

void FormatCustomNodeStyle.Selector.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (v3)
  {
    sub_1D6213004(a1, a2, v3);
  }
}

void sub_1D6252AB0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (v3)
  {
    sub_1D6213004(a1, a2, v3);
  }
}

double FormatDateTimeOffset.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[1];
  sub_1D620B270(a1, a2, *v2);
  if (!v3)
  {
    sub_1D5F33D5C(v6);
    FormatDateTime.bind(binder:context:)(a1, a2);
    return sub_1D5F33D8C(v6);
  }

  return result;
}

double sub_1D6252B60(uint64_t a1, uint64_t a2)
{
  v6 = v2[1];
  sub_1D620B270(a1, a2, *v2);
  if (!v3)
  {
    sub_1D5F33D5C(v6);
    FormatDateTime.bind(binder:context:)(a1, a2);
    return sub_1D5F33D8C(v6);
  }

  return result;
}

unint64_t FormatDimensionSizing.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];
  sub_1D5D0A048(*v2);
  FormatDimensionSizingValue.bind(binder:context:)(a1, a2);
  result = sub_1D5D09FB0(v7);
  if (!v3)
  {
    sub_1D5D0A048(v6);
    FormatDimensionSizingValue.bind(binder:context:)(a1, a2);
    return sub_1D5D09FB0(v6);
  }

  return result;
}

void FormatDimensionSizingValue.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2 >> 61;
  if (v6 > 3)
  {
    if (v6 <= 5)
    {
      v5 &= 0x1FFFFFFFFFFFFFFFuLL;
LABEL_11:
      v7 = *(v5 + 16);

      sub_1D620B270(a1, a2, v7);

      return;
    }

    if (v6 != 6)
    {
      return;
    }

LABEL_10:
    v5 &= 0x1FFFFFFFFFFFFFFFuLL;
    goto LABEL_11;
  }

  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v6 != 2)
  {
    v8 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1D5D0A048(v8);
    FormatDimensionSizingValue.bind(binder:context:)(a1, a2);
    sub_1D5D09FB0(v8);
  }
}

void FormatDirectionalGradient.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[5];
  v14[4] = v2[4];
  v14[5] = v6;
  v7 = v2[7];
  v14[6] = v2[6];
  v14[7] = v7;
  v8 = v2[1];
  v14[0] = *v2;
  v14[1] = v8;
  v9 = v2[3];
  v14[2] = v2[2];
  v14[3] = v9;
  v10 = sub_1D6011280(v14);
  v11 = sub_1D5D756C8(v14);
  if (v10 == 1)
  {
    sub_1D6212DD8(a1, a2, v11[14]);
  }

  else
  {
    v13 = v11[6];
    v12 = v11[7];
    sub_1D6212DD8(a1, a2, *v11);
    if (!v3)
    {
      if (v13)
      {

        sub_1D620B270(a1, a2, v13);
        sub_1D620B270(a1, a2, v12);
        sub_1D5CDE22C(v13, v12);
      }
    }
  }
}

void sub_1D6252EB4(uint64_t a1, uint64_t a2)
{
  v6 = v2[5];
  v14[4] = v2[4];
  v14[5] = v6;
  v7 = v2[7];
  v14[6] = v2[6];
  v14[7] = v7;
  v8 = v2[1];
  v14[0] = *v2;
  v14[1] = v8;
  v9 = v2[3];
  v14[2] = v2[2];
  v14[3] = v9;
  v10 = sub_1D6011280(v14);
  v11 = sub_1D5D756C8(v14);
  if (v10 == 1)
  {
    sub_1D6212DD8(a1, a2, v11[14]);
  }

  else
  {
    v13 = v11[6];
    v12 = v11[7];
    sub_1D6212DD8(a1, a2, *v11);
    if (!v3)
    {
      if (v13)
      {

        sub_1D620B270(a1, a2, v13);
        sub_1D620B270(a1, a2, v12);
        sub_1D5CDE22C(v13, v12);
      }
    }
  }
}

void sub_1D6252FC0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);
  v11 = *(v2 + 48);
  sub_1D5E1DA6C(*v2, v6, v7, v8, v9, v10, v11);
  FormatString.bind(binder:context:)(a1, a2);
  sub_1D5E1DE98(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t FormatEquationToken.bind(binder:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v23 - v11;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19, v15);
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    (*(v6 + 32))(v12, v17, v5);
    (*(v6 + 16))(v8, v12, v5);
    sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    if (swift_dynamicCast())
    {
      v21 = *(&v24 + 1);
      v22 = v25;
      __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
      (*(v22 + 8))(a1, a2, v21, v22);
      (*(v6 + 8))(v12, v5);
      return __swift_destroy_boxed_opaque_existential_1(&v23);
    }

    else
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      (*(v6 + 8))(v12, v5);
      return sub_1D5BFB774(&v23, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    }
  }

  return result;
}

void FormatOptionExpression.bind(binder:context:)(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = *(v3 + 32);
  if ((v4 & 0x80000000) == 0 && (v4 & 1) == 0)
  {
    FormatOptionValue.bind(binder:context:)(result, a2);
  }
}

double FormatNotExpression.bind(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatExpression.bind(binder:context:)(a1, a2);

  return result;
}

double FormatFrameExpression.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  if (v9 >> 6 > 1)
  {

    sub_1D620B270(a1, a2, v7);
    if (!v3)
    {
      FormatTextNodeStyle.bind(binder:context:)(a1, a2);
    }
  }

  else
  {

    sub_1D620B270(a1, a2, v7);
  }

  return sub_1D6057D74(v7, v6, v8, v9);
}

void FormatFill.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[5];
  v14[4] = v2[4];
  v14[5] = v6;
  v7 = v2[7];
  v14[6] = v2[6];
  v14[7] = v7;
  v8 = v2[1];
  v14[0] = *v2;
  v14[1] = v8;
  v9 = v2[3];
  v14[2] = v2[2];
  v14[3] = v9;
  v10 = sub_1D5CFD35C(v14);
  v11 = sub_1D5CFD34C(v14);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      sub_1D6212DD8(a1, a2, v11[14]);
    }

    else
    {
      FormatShine.bind(binder:context:)(a1, a2);
    }
  }

  else if (v10)
  {
    v13 = v11[6];
    v12 = v11[7];
    sub_1D6212DD8(a1, a2, *v11);
    if (!v3 && v13)
    {

      sub_1D620B270(a1, a2, v13);
      sub_1D620B270(a1, a2, v12);
      sub_1D5CDE22C(v13, v12);
    }
  }

  else
  {

    FormatColor.bind(binder:context:)(a1, a2);

    if (!v3)
    {

      FormatColor.bind(binder:context:)(a1, a2);
    }
  }
}

void FormatFlexBoxNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v10 = v2[8];
  sub_1D5C82CD8(v10);
  FormatSize.bind(binder:context:)(a1, a2);
  sub_1D5C92A8C(v10);
  if (!v3)
  {
    swift_beginAccess();
    v7 = v2[11];

    sub_1D620EA64(a1, a2, v7);

    swift_beginAccess();

    FormatFlexBoxNodeLayout.bind(binder:context:)(a1, a2);

    if (v4[13])
    {
      v8 = v4[17];

      sub_1D5DEA234(v8);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v8);
    }

    swift_beginAccess();
    v9 = v4[19];

    sub_1D6215F90(a1, a2, v9);
  }
}

void FormatFlexBoxNodeLayout.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  swift_beginAccess();
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);

  sub_1D6249614(a1, a2, v7, v8, &type metadata for FormatFlexBoxNodeDisplay);
  if (!v4)
  {

    swift_beginAccess();
    v9 = *(v2 + 40);
    v10 = *(v2 + 32);

    sub_1D62494F4(a1, a2, v10, v9, &type metadata for FormatFlexBoxNodeDirection);

    swift_beginAccess();
    v11 = *(v2 + 56);
    v12 = *(v2 + 48);

    sub_1D62494F4(a1, a2, v12, v11, &type metadata for FormatFlexBoxNodeWrap);

    swift_beginAccess();
    v13 = *(v2 + 72);
    v14 = *(v2 + 64);

    sub_1D62494F4(a1, a2, v14, v13, &type metadata for FormatFlexBoxNodeJustifyContent);

    swift_beginAccess();
    v15 = *(v2 + 88);
    v16 = *(v2 + 80);

    sub_1D62494F4(a1, a2, v16, v15, &type metadata for FormatFlexBoxNodeAlignContent);

    swift_beginAccess();
    v17 = *(v2 + 104);
    v18 = *(v2 + 96);

    sub_1D62494F4(a1, a2, v18, v17, &type metadata for FormatFlexBoxNodeAlignItems);

    swift_beginAccess();
    v19 = *(v2 + 112);
    v20 = *(v2 + 120);

    sub_1D620B270(a1, a2, v19);
    sub_1D6230D00(a1, a2, v20);

    swift_beginAccess();
    v21 = *(v2 + 128);
    v22 = *(v2 + 136);

    sub_1D620B270(a1, a2, v21);
    sub_1D6230D00(a1, a2, v22);

    swift_beginAccess();
    v23 = *(v2 + 144);
    v24 = *(v2 + 152);
    v25 = *(v2 + 160);
    v26 = *(v2 + 168);
    sub_1D5C75A4C(v23, v24, v25);

    sub_1D5C75A4C(v23, v24, v25);
    sub_1D60ECF10(a2);
    sub_1D5D2F2C8(v23, v24, v25);
    sub_1D62B56CC(a2, v26);
    sub_1D5D2F2C8(v23, v24, v25);
  }
}

void FormatFlexBoxNodeItemFlex.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if (*v2 >= 3)
  {
    sub_1D620B270(a1, a2, *v2);
  }
}

void FormatFont.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2 >> 61;
  if (v5 > 2)
  {
    v7 = v4 & 0x1FFFFFFFFFFFFFFFLL;
    if (v5 == 3)
    {
      v8 = *(v7 + 24);
      v9 = *(v7 + 32);
      v10 = *(v7 + 40);
      v13[0] = *(v7 + 16);
      v13[1] = v8;
      v13[2] = v9;
      v14 = v10;
      sub_1D5F58038(v13[0], v8, v9, v10);
      sub_1D607B228(a2);
      sub_1D5F57FEC(v13[0], v8, v9, v10);
    }

    else
    {
      v11 = *(v7 + 32);
      v15[0] = *(v7 + 16);
      v15[1] = v11;
      v16 = *(v7 + 48);
      sub_1D62B50EC(v15, v13, sub_1D62B5154);
      sub_1D6250408(a1, a2);
      sub_1D62B51D0(v15, sub_1D62B5154);
    }
  }

  else if (v5 >= 2)
  {
    v13[0] = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    swift_retain_n();

    FormatURL.bind(binder:context:)(a1, a2);
  }
}

double FormatRemoteFont.bind(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatURL.bind(binder:context:)(a1, a2);

  return result;
}

void FormatFontLineSizing.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  if (!*v2 || (FormatTextNodeStyle.bind(binder:context:)(a1, a2), !v3))
  {
    sub_1D62B41FC(a2, v5);
  }
}

void FormatTextNodeStyle.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 48);

  sub_1D623CDD8(a1, a2, v6);
  if (v3)
  {

    return;
  }

  if ((~*(v2 + 56) & 0xF000000000000007) != 0)
  {
    *&v56 = *(v2 + 56);

    FormatFont.bind(binder:context:)(a1, a2);
  }

  v7 = *(v2 + 144);
  v52 = *(v2 + 128);
  v53 = v7;
  v8 = *(v2 + 176);
  v54 = *(v2 + 160);
  v55 = v8;
  v9 = *(v2 + 80);
  v48 = *(v2 + 64);
  v49 = v9;
  v10 = *(v2 + 112);
  v50 = *(v2 + 96);
  v51 = v10;
  v62 = v54;
  v63 = v8;
  v60 = v52;
  v61 = v7;
  v58 = v50;
  v59 = v10;
  v56 = v48;
  v57 = v9;
  if (sub_1D5CFD0B8(&v56) != 1)
  {
    v36 = v60;
    v37 = v61;
    v38 = v62;
    v39 = v63;
    v32 = v56;
    v33 = v57;
    v34 = v58;
    v35 = v59;
    v42 = v50;
    v43 = v51;
    v40 = v48;
    v41 = v49;
    v46 = v54;
    v47 = v55;
    v44 = v52;
    v45 = v53;
    sub_1D5CFD190(&v40, v31);
    FormatFill.bind(binder:context:)(a1, a2);
    v31[4] = v36;
    v31[5] = v37;
    v31[6] = v38;
    v31[7] = v39;
    v31[0] = v32;
    v31[1] = v33;
    v31[2] = v34;
    v31[3] = v35;
    sub_1D5CFD368(v31);
  }

  v11 = *(v2 + 192);
  if (v11)
  {
    sub_1D620E744(a1, a2, v11);
  }

  v12 = *(v2 + 248);
  v42 = *(v2 + 232);
  v43 = v12;
  v44 = *(v2 + 264);
  LOBYTE(v45) = *(v2 + 280);
  v13 = v45;
  v14 = *(v2 + 216);
  v40 = *(v2 + 200);
  v41 = v14;
  if (v45 != 254)
  {
    v64 = v2;
    v18 = *(&v43 + 1);
    v30 = *&v43;
    v19 = *&v44;
    v20 = *(&v42 + 1);
    *&v32 = v42;
    swift_retain_n();
    FormatColor.bind(binder:context:)(a1, a2);
    v29 = v20;

    if (v13 <= 2)
    {
      v2 = v64;
      if (!v13)
      {
        goto LABEL_36;
      }

      if (v13 == 1)
      {
        v22 = v20;
        v23 = v30;
      }

      else
      {
        sub_1D625E06C(a1, a2, v20, v30);
        v23 = v19;
        v22 = v18;
      }
    }

    else
    {
      v2 = v64;
      if (v13 > 4)
      {
        v21 = v18;
        if (v13 != 5)
        {
          goto LABEL_36;
        }

        v22 = v29;
        v23 = v30;
        v24 = a1;
        v25 = a2;
      }

      else
      {
        v21 = v18;
        v22 = v29;
        v23 = v30;
        v24 = a1;
        v25 = a2;
        if (v13 != 3)
        {
          goto LABEL_35;
        }
      }

      sub_1D625E06C(v24, v25, v22, v23);
      v23 = v19;
      v22 = v21;
    }

    v24 = a1;
    v25 = a2;
LABEL_35:
    sub_1D625E06C(v24, v25, v22, v23);
LABEL_36:
    sub_1D5D0ABCC(&v40, &qword_1EDF33718, &type metadata for FormatShadow);
    v15 = *(v2 + 512);
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v15 = *(v2 + 512);
  if (v15)
  {
LABEL_12:
    sub_1D620B270(a1, a2, v15);
  }

LABEL_13:
  v16 = *(v2 + 520);
  if (v16 != 9)
  {
    v17 = *(v2 + 528);
    if ((~v17 & 0xF000000000000007) != 0)
    {
      *&v32 = *(v2 + 528);
      sub_1D62B5D18(v16, v17);
      sub_1D5CFCFAC(v17);
      FormatColor.bind(binder:context:)(a1, a2);
      sub_1D62B5D00(v16, v17);
    }

    else
    {
      sub_1D62B5D00(*(v2 + 520), *(v2 + 528));
    }
  }

  v26 = *(v2 + 536);
  if (v26 != 9)
  {
    v27 = *(v2 + 544);
    if ((~v27 & 0xF000000000000007) != 0)
    {
      *&v32 = *(v2 + 544);
      sub_1D62B5D18(v26, v27);
      sub_1D5CFCFAC(v27);
      FormatColor.bind(binder:context:)(a1, a2);
      sub_1D62B5D00(v26, v27);
    }

    else
    {
      sub_1D62B5D00(*(v2 + 536), *(v2 + 544));
    }
  }

  v28 = *(v2 + 560);
  if (v28)
  {
    sub_1D620B270(a1, a2, v28);
  }
}

void sub_1D6254458(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  if (!*v2 || (FormatTextNodeStyle.bind(binder:context:)(a1, a2), !v3))
  {
    sub_1D62B41FC(a2, v5);
  }
}

void FormatFrameExpressionLogic.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (*(v2 + 24) >> 6 > 1u)
  {
    sub_1D620B270(a1, a2, v4);
    if (!v3)
    {
      FormatTextNodeStyle.bind(binder:context:)(a1, a2);
    }
  }

  else
  {
    sub_1D620B270(a1, a2, v4);
  }
}

double sub_1D625450C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  if (v9 >> 6 > 1)
  {

    sub_1D620B270(a1, a2, v7);
    if (!v3)
    {
      FormatTextNodeStyle.bind(binder:context:)(a1, a2);
    }
  }

  else
  {

    sub_1D620B270(a1, a2, v7);
  }

  return sub_1D6057D74(v7, v6, v8, v9);
}

void FormatFrameExpressionLogicTextLines.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  sub_1D620B270(a1, a2, *v2);
  if (!v3)
  {
    FormatTextNodeStyle.bind(binder:context:)(a1, a2);
  }
}

void sub_1D6254634(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (*(v2 + 24) >> 6 > 1u)
  {
    sub_1D620B270(a1, a2, v4);
    if (!v3)
    {
      FormatTextNodeStyle.bind(binder:context:)(a1, a2);
    }
  }

  else
  {
    sub_1D620B270(a1, a2, v4);
  }
}

void sub_1D6254698(uint64_t a1, uint64_t a2)
{
  sub_1D620B270(a1, a2, *v2);
  if (!v3)
  {
    FormatTextNodeStyle.bind(binder:context:)(a1, a2);
  }
}

void FormatFrameNode.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v9 = *(v2 + 32);
  sub_1D5C82CD8(v9);
  FormatSize.bind(binder:context:)(a1, a2);
  sub_1D5C92A8C(v9);
  if (!v3)
  {
    swift_beginAccess();
    v7 = *(v2 + 40);

    sub_1D620EA64(a1, a2, v7);

    if (*(v4 + 48))
    {
      v8 = *(v4 + 80);

      sub_1D5DEA234(v8);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v8);
    }
  }
}

void FormatGeometryNode.bindChildren(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v3;
  if (!v2[8] || (v7 = v2[12], , , , , sub_1D5DEA234(v7), , FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2), , , , , sub_1D5CBF568(v7), , !v4))
  {
    swift_beginAccess();
    v8 = v2[7];

    sub_1D6215F90(a1, a2, v8);
  }
}

void FormatGlassEffect.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v9 = *(v2 + 32);
  v8 = *(v2 + 40);
  v11 = *(v2 + 48);
  v10 = *(v2 + 56);
  v12 = *(v2 + 64);
  v24 = *(v2 + 88);
  v25 = *(v2 + 80);
  v21 = *(v2 + 104);
  v22 = *(v2 + 96);
  v23 = *(v2 + 112);
  v18 = *(v2 + 128);
  v19 = *(v2 + 120);
  v20 = *(v2 + 136);
  v16 = *(v2 + 152);
  v17 = *(v2 + 144);
  v13 = *(v2 + 160);
  if (!v5 || (sub_1D62B41FC(a2, v5), !v3))
  {
    if (v12 >> 11 <= 0x1E)
    {
      v26 = v10;
      sub_1D5E1DA6C(v6, v7, v9, v8, v11, v10, v12);
      v14 = a1;
      FormatString.bind(binder:context:)(a1, a2);
      sub_1D5E1DE98(v6, v7, v9, v8, v11, v26, v12);
      if (v3)
      {
        return;
      }
    }

    else
    {
      v14 = a1;
    }

    if ((~v25 & 0xF000000000000007) == 0 || (, FormatColor.bind(binder:context:)(v14, a2), , !v3))
    {
      if (!v24 || (sub_1D620B270(v14, a2, v24), !v3))
      {
        v15 = v3;
        if (v23 != 255)
        {
          sub_1D6189668(v22, v21, v23);
          sub_1D60ECF10(a2);
          sub_1D5D2F2C8(v22, v21, v23 & 1);
          if (v3)
          {
            return;
          }

          v15 = 0;
        }

        if (v20 == 255 || (sub_1D6189668(v19, v18, v20), sub_1D60ECF10(a2), sub_1D5D2F2C8(v19, v18, v20 & 1), !v15))
        {
          if (v13 != 255)
          {
            sub_1D6189668(v17, v16, v13);
            sub_1D60ECF10(a2);
            sub_1D5D2F2C8(v17, v16, v13 & 1);
          }
        }
      }
    }
  }
}

void sub_1D6254C48(uint64_t a1, uint64_t a2)
{
  v7 = v2[6];
  v6 = v2[7];
  sub_1D6212DD8(a1, a2, *v2);
  if (!v3)
  {
    if (v7)
    {

      sub_1D620B270(a1, a2, v7);
      sub_1D620B270(a1, a2, v6);
      sub_1D5CDE22C(v7, v6);
    }
  }
}

double FormatGroup.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v7 = v2[9];
  v6 = v2[10];
  v8 = v2[11];
  v10 = v2[14];
  v9 = v2[15];
  if (v7 < 3 || (v11 = v2[8], sub_1D62B5D30(v11, v7), sub_1D6249614(a1, a2, v11 & 1, v7, &type metadata for FormatGroupColumnSystemKind), sub_1D5C5D428(v11, v7), !v3))
  {

    sub_1D62160B4(a1, a2, v8);

    if (!v3)
    {

      sub_1D6213004(a1, a2, v10);

      sub_1D62212CC(a1, a2, v9);

      sub_1D6215F90(a1, a2, v6);
    }
  }

  return result;
}

uint64_t FormatGroupColumnSystem.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (v3 >= 2)
  {
    return sub_1D6249614(result, a2, *v2 & 1, v3, &type metadata for FormatGroupColumnSystemKind);
  }

  return result;
}

uint64_t sub_1D6254E90(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (v3 < 0 && ((2 * *(v2 + 9)) | ((v3 & 0x20) != 0)) == 8)
  {
    return sub_1D6240020(result, a2, *v2, v3 & 0x3F, &type metadata for FormatTagBinding.Bool);
  }

  return result;
}

uint64_t sub_1D6254ED8(uint64_t result, uint64_t a2)
{
  if (2 * (*(v2 + 9) & 0x7Fu) >= 6)
  {
    v3 = *(v2 + 8);
    if ((v3 & 0xC0) == 0x80)
    {
      return sub_1D6240020(result, a2, *v2, v3 & 0x3F, &type metadata for FormatTagBinding.Color);
    }
  }

  return result;
}

void FormatGroupBinding.Image.bind(binder:context:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v7 = *(v3 + 8);
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = *(v3 + 40) >> 5;
  if (v10 > 3)
  {
    if (*(v3 + 40) >> 5 <= 5u)
    {
      v11 = (v7 >> 59) & 2 | (v7 >> 2) & 1;
      if (v11 <= 1)
      {
        if (!v11)
        {

          FormatFont.bind(binder:context:)(a1, a2);
          if (v4)
          {
LABEL_24:

            return;
          }

LABEL_25:

          sub_1D620B270(a1, a2, v9);

          v13 = a1;
          v14 = a2;
          v15 = v8;
LABEL_28:
          sub_1D620B270(v13, v14, v15);

          return;
        }

LABEL_23:

        FormatFont.bind(binder:context:)(a1, a2);
        if (v4)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }

LABEL_22:
      if (v11 != 2)
      {
        return;
      }

      goto LABEL_23;
    }

    if (v10 == 6)
    {
      FormatSportsEventBinding.Image.bind(binder:context:)(a1, a2);
    }
  }

  else
  {
    if (*(v3 + 40) >> 5 <= 1u)
    {
      if (!v10)
      {
        return;
      }

      v11 = (v7 >> 59) & 2 | (v7 >> 2) & 1;
      if (v11 <= 1)
      {

        FormatFont.bind(binder:context:)(a1, a2);

        if (v4)
        {
          return;
        }

        sub_1D620B270(a1, a2, v9);

        v13 = a1;
        v14 = a2;
        v15 = v8;
        goto LABEL_28;
      }

      goto LABEL_22;
    }

    if (v10 != 2 && BYTE1(v9) <= 2u)
    {
      if (BYTE1(v9))
      {
        if (BYTE1(v9) == 1)
        {
          if (v7)
          {
            sub_1D620B270(a1, a2, *(v3 + 8));
          }
        }

        else
        {
          sub_1D620B270(a1, a2, *v3);
        }
      }

      else
      {
        FormatSymbolConfig.Font.bind(binder:context:)(a1, a2);
      }
    }
  }
}

void FormatTagBinding.Image.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = (v2[1] >> 59) & 2 | (v2[1] >> 2) & 1;
  if (v8 <= 1)
  {

    FormatFont.bind(binder:context:)(a1, a2);

    if (v3)
    {
      return;
    }

    sub_1D620B270(a1, a2, v6);

    v9 = a1;
    v10 = a2;
    v11 = v7;
  }

  else
  {
    if (v8 != 2)
    {
      return;
    }

    FormatFont.bind(binder:context:)(a1, a2);
    if (v3)
    {

      return;
    }

    sub_1D620B270(a1, a2, v6);

    v9 = a1;
    v10 = a2;
    v11 = v7;
  }

  sub_1D620B270(v9, v10, v11);
}

void FormatWeatherBinding.Image.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 17) <= 2u)
  {
    v3 = *(v2 + 8);
    if (!*(v2 + 17))
    {
      FormatSymbolConfig.Font.bind(binder:context:)(a1, a2);
      return;
    }

    if (*(v2 + 17) == 1)
    {
      if (!v3)
      {
        return;
      }
    }

    else
    {
      v3 = *v2;
    }

    sub_1D620B270(a1, a2, v3);
  }
}

void FormatSportsEventBinding.Image.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  v8 = *(v2 + 24);
  if (*(v2 + 40))
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 & 0xFFFFFFFE | (v7 >> 1) & 1;
  if (!v10)
  {
    v12 = (v7 >> 59) & 2 | (v7 >> 2) & 1;
    if (v12 <= 1)
    {

      FormatFont.bind(binder:context:)(a1, a2);

      if (v3)
      {
        return;
      }

      sub_1D620B270(a1, a2, v6);

      v16 = a1;
      v17 = a2;
      v18 = v8;
      goto LABEL_26;
    }

    if (v12 != 2)
    {
      return;
    }

    goto LABEL_17;
  }

  if (v10 != 1)
  {
    v13 = *(v2 + 32);
    v14 = (v6 >> 59) & 2 | (v6 >> 2) & 1;
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        return;
      }
    }

    else if (!v14)
    {

      FormatFont.bind(binder:context:)(a1, a2);
      v15 = v3;
      if (v3)
      {
        goto LABEL_21;
      }

LABEL_22:

      sub_1D620B270(a1, a2, v8);
      if (!v15)
      {

        sub_1D620B270(a1, a2, v13);

        return;
      }

      goto LABEL_27;
    }

    FormatFont.bind(binder:context:)(a1, a2);
    v15 = v3;
    if (v3)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v11 = (v7 >> 59) & 2 | (v7 >> 2) & 1;
  if (v11 <= 1 || v11 == 2)
  {
LABEL_17:

    FormatFont.bind(binder:context:)(a1, a2);
    if (!v3)
    {

      sub_1D620B270(a1, a2, v6);

      v16 = a1;
      v17 = a2;
      v18 = v8;
LABEL_26:
      sub_1D620B270(v16, v17, v18);
LABEL_27:

      return;
    }

LABEL_21:
  }
}

uint64_t FormatGroupBinding.Text.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (((1 << (*(v2 + 48) >> 4)) & 0x1EF7) == 0)
  {
    if (*(v2 + 48) >> 4 == 3)
    {
      v4 = *(v2 + 16);
      *&v9 = *v2;
      *(&v9 + 1) = v3;
      LOWORD(v10) = v4;
      return sub_1D62B416C(a2);
    }

    else if ((v3 & 0x80) != 0)
    {
      v5 = result;
      v12 = v3 & 0x3F;
      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      if (swift_dynamicCast())
      {
        v7 = *(&v10 + 1);
        v8 = v11;
        __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
        (*(v8 + 8))(v5, a2, v7, v8);
        return __swift_destroy_boxed_opaque_existential_1(&v9);
      }

      else
      {
        v11 = 0;
        v9 = 0u;
        v10 = 0u;
        return sub_1D5BFB774(&v9, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      }
    }
  }

  return result;
}

uint64_t sub_1D62558D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 8);
  if (v4 < 0)
  {
    v5 = result;
    v12 = v4 & 0x3F;
    sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    if (swift_dynamicCast())
    {
      v7 = *(&v10 + 1);
      v8 = v11;
      __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
      (*(v8 + 8))(v5, a2, v7, v8);
      return __swift_destroy_boxed_opaque_existential_1(&v9);
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
      return sub_1D5BFB774(&v9, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    }
  }

  return result;
}

uint64_t sub_1D62559E4(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (((1 << (*(v2 + 48) >> 4)) & 0x1EF7) == 0)
  {
    if (*(v2 + 48) >> 4 == 3)
    {
      return sub_1D62B416C(a2);
    }

    else if ((v3 & 0x80) != 0)
    {
      return sub_1D6240020(result, a2, *v2, v3 & 0x3F, &type metadata for FormatTagBinding.Text);
    }
  }

  return result;
}

uint64_t sub_1D6255A70(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (v3 >= 2)
  {
    return sub_1D6249614(result, a2, *v2 & 1, v3, &type metadata for FormatGroupColumnSystemKind);
  }

  return result;
}

void FormatGroupNode.bindChildren(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v16 = *(v2 + 32);
  sub_1D5C82CD8(v16);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    sub_1D5C92A8C(v16);
  }

  else
  {
    sub_1D5C92A8C(v16);
    swift_beginAccess();
    v7 = *(v2 + 48);

    sub_1D620EA64(a1, a2, v7);

    swift_beginAccess();
    v8 = v4[8];
    if (v8 >> 62 == 1)
    {
      v9 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[8]);
      sub_1D5EB1500(v9);

      sub_1D624919C(a1, a2, v9, v10);
      sub_1D5EB15C4(v9);

      sub_1D5EB15C4(v8);
    }

    if (v4[10])
    {
      FormatGroupNodeStyle.bind(binder:context:)(a1, a2);
    }

    v11 = v4[15];
    if (v11)
    {
      swift_beginAccess();
      v12 = *(v11 + 72);
      if (v12)
      {

        sub_1D621397C(a1, a2, v12);
      }

      swift_beginAccess();
      v13 = *(v11 + 88);

      sub_1D621D544(a1, a2, v13);
    }

    swift_beginAccess();
    if (v4[16])
    {

      FormatGroupNodeMask.bind(binder:context:)(a1, a2);
    }

    if (v4[17])
    {
      v14 = v4[21];

      sub_1D5DEA234(v14);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v14);
    }

    swift_beginAccess();
    v15 = v4[11];

    sub_1D6215F90(a1, a2, v15);
  }
}

void FormatGroupNodeStyle.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 48);

  sub_1D621C350(a1, a2, v6);
  if (v3)
  {

    return;
  }

  v7 = *(v2 + 56);
  if (v7)
  {
    sub_1D620B270(a1, a2, v7);
  }

  v8 = *(v2 + 64);
  if (v8)
  {
    sub_1D620E744(a1, a2, v8);
  }

  v9 = *(v2 + 144);
  v81 = *(v2 + 128);
  v82 = v9;
  v83 = *(v2 + 160);
  v84 = *(v2 + 176);
  v10 = v84;
  v11 = *(v2 + 112);
  v80[0] = *(v2 + 96);
  v80[1] = v11;
  if (v84 != 254)
  {
    v85 = v2;
    v40 = *(&v82 + 1);
    v41 = *&v82;
    v24 = *&v83;
    v25 = *(&v81 + 1);
    *&v58 = v81;
    sub_1D62B5354(v80, &v69, &qword_1EDF33718, &type metadata for FormatShadow);

    FormatColor.bind(binder:context:)(a1, a2);

    if (v10 <= 2)
    {
      v2 = v85;
      if (v10)
      {
        v36 = v25;
        v37 = v41;
        v38 = a1;
        v39 = a2;
        if (v10 != 1)
        {
          sub_1D625E06C(a1, a2, v25, v41);
          v37 = v24;
          v36 = v40;
          v38 = a1;
          v39 = a2;
        }

        sub_1D625E06C(v38, v39, v36, v37);
        sub_1D5D0ABCC(v80, &qword_1EDF33718, &type metadata for FormatShadow);
        goto LABEL_9;
      }

      goto LABEL_27;
    }

    v2 = v85;
    if (v10 > 4)
    {
      v26 = v10 == 5;
      v27 = v40;
      if (!v26)
      {
        goto LABEL_27;
      }

      v28 = v25;
    }

    else
    {
      v26 = v10 == 3;
      v27 = v40;
      v28 = v25;
      if (!v26)
      {
        v29 = v41;
LABEL_26:
        sub_1D625E06C(a1, a2, v28, v29);
LABEL_27:
        sub_1D5D0ABCC(v80, &qword_1EDF33718, &type metadata for FormatShadow);
        goto LABEL_9;
      }
    }

    sub_1D625E06C(a1, a2, v28, v41);
    v29 = v24;
    v28 = v27;
    goto LABEL_26;
  }

LABEL_9:
  v12 = *(v2 + 296);
  v13 = *(v2 + 328);
  v66 = *(v2 + 312);
  v67 = v13;
  v68 = *(v2 + 344);
  v14 = *(v2 + 232);
  v15 = *(v2 + 264);
  v16 = *(v2 + 280);
  v62 = *(v2 + 248);
  v63 = v15;
  v17 = *(v2 + 264);
  v18 = *(v2 + 296);
  v64 = *(v2 + 280);
  v65 = v18;
  v19 = *(v2 + 200);
  v58 = *(v2 + 184);
  v59 = v19;
  v60 = *(v2 + 216);
  v61 = v14;
  v20 = *(v2 + 328);
  v77 = v66;
  v78 = v20;
  v79 = *(v2 + 344);
  v73 = *(v2 + 248);
  v74 = v17;
  v21 = *(v2 + 232);
  v75 = v16;
  v76 = v12;
  v22 = *(v2 + 200);
  v69 = *(v2 + 184);
  v70 = v22;
  v71 = *(v2 + 216);
  v72 = v21;
  if (sub_1D60081E0(&v69) != 1)
  {
    v56[8] = v77;
    v56[9] = v78;
    v57 = v79;
    v56[4] = v73;
    v56[5] = v74;
    v56[6] = v75;
    v56[7] = v76;
    v56[0] = v69;
    v56[1] = v70;
    v56[2] = v71;
    v56[3] = v72;
    v23 = sub_1D62B4E2C(v56);
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v30 = sub_1D5D04BC4(v56);
        v31 = *(v30 + 144);
        v51 = *(v30 + 128);
        v52 = v31;
        v53 = *(v30 + 160);
        v32 = *(v30 + 80);
        v47 = *(v30 + 64);
        v48 = v32;
        v33 = *(v30 + 112);
        v49 = *(v30 + 96);
        v50 = v33;
        v34 = *(v30 + 16);
        v43 = *v30;
        v44 = v34;
        v35 = *(v30 + 48);
        v45 = *(v30 + 32);
        v46 = v35;
        v54[0] = v58;
        v54[1] = v59;
        v54[4] = v62;
        v54[5] = v63;
        v54[2] = v60;
        v54[3] = v61;
        v55 = v68;
        v54[8] = v66;
        v54[9] = v67;
        v54[6] = v64;
        v54[7] = v65;
        sub_1D60864C0(v54, v42);
        FormatGlassEffect.bind(binder:context:)(a1, a2);
        sub_1D5D0ABCC(&v58, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
      }
    }

    else
    {
      sub_1D5D04BC4(v56);
    }
  }
}

double FormatGroupNodeMask.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (!*(v2 + 16) || (FormatGroupNodeMaskStyle.bind(binder:context:)(a1, a2), !v3))
  {
    v8 = *(v2 + 24);
    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = v3;
    swift_beginAccess();
    v10 = *(v8 + 72);
    if (v10)
    {

      sub_1D621397C(a1, a2, v10);

      if (v3)
      {
        return result;
      }

      v9 = 0;
    }

    swift_beginAccess();
    v11 = *(v8 + 88);

    v3 = v9;
    sub_1D621D544(a1, a2, v11);

    if (!v9)
    {
LABEL_8:
      swift_beginAccess();
      v13 = *(v4 + 32);
      sub_1D5C82CD8(v13);
      FormatSize.bind(binder:context:)(a1, a2);
      sub_1D5C92A8C(v13);
      if (!v3)
      {
        swift_beginAccess();
        v12 = *(v4 + 40);

        sub_1D620EA64(a1, a2, v12);
      }
    }
  }

  return result;
}

void FormatGroupNodeMaskStyle.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 48);

  sub_1D621CB10(a1, a2, v6);
  if (v3)
  {

    return;
  }

  v7 = *(v2 + 56);
  v8 = *(v2 + 104);
  v36 = *(v2 + 120);
  v9 = *(v2 + 72);
  v34[0] = v7;
  v34[1] = v9;
  v34[2] = *(v2 + 88);
  v35 = v8;
  v10 = v7;
  if (v36 <= 1u)
  {
    if (!v36)
    {
      goto LABEL_12;
    }

    v11 = *(v2 + 72);
    v12 = *(v2 + 104);
    v30 = *(v2 + 88);
    v31 = v12;
    LOBYTE(v32) = *(v2 + 120);
    v28 = *(v2 + 56);
    v29 = v11;
    sub_1D619916C(&v28, v27);
    sub_1D6213184(a1, a2, v10);
    goto LABEL_11;
  }

  if (v36 == 2)
  {
    v13 = v35;
    v14 = *(v2 + 72);
    v15 = *(v2 + 104);
    v30 = *(v2 + 88);
    v31 = v15;
    LOBYTE(v32) = *(v2 + 120);
    v28 = *(v2 + 56);
    v29 = v14;
    sub_1D619916C(&v28, v27);
    sub_1D6212DD8(a1, a2, v10);
    if (v13)
    {

      sub_1D620B270(a1, a2, v13);
      sub_1D620B270(a1, a2, *(&v13 + 1));
      sub_1D5CDE22C(v13, *(&v13 + 1));
    }

    goto LABEL_11;
  }

  if (v36 == 3)
  {
LABEL_11:
    sub_1D5D0ABCC(v34, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
  }

LABEL_12:
  v16 = *(v2 + 128);
  if (v16)
  {
    sub_1D620E744(a1, a2, v16);
  }

  v17 = *(v2 + 184);
  v30 = *(v2 + 168);
  v31 = v17;
  v32 = *(v2 + 200);
  v33 = *(v2 + 216);
  v18 = v33;
  v19 = *(v2 + 152);
  v28 = *(v2 + 136);
  v29 = v19;
  if (v33 != 254)
  {
    v20 = *(&v31 + 1);
    v26 = *&v31;
    v21 = *&v32;
    v22 = *(&v30 + 1);
    v37 = v30;
    sub_1D62B5354(&v28, v27, &qword_1EDF33718, &type metadata for FormatShadow);

    FormatColor.bind(binder:context:)(a1, a2);

    if (v18 <= 2)
    {
      if (v18)
      {
        if (v18 == 1)
        {
          v24 = v22;
          v25 = v26;
        }

        else
        {
          sub_1D625E06C(a1, a2, v22, v26);
          v25 = v21;
          v24 = v20;
        }

        goto LABEL_26;
      }
    }

    else
    {
      if (v18 <= 4)
      {
        v23 = v21;
        v24 = v22;
        v25 = v26;
        if (v18 != 3)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }

      v23 = v21;
      if (v18 == 5)
      {
        v24 = v22;
        v25 = v26;
LABEL_24:
        sub_1D625E06C(a1, a2, v24, v25);
        v25 = v23;
        v24 = v20;
LABEL_26:
        sub_1D625E06C(a1, a2, v24, v25);
      }
    }

    sub_1D5D0ABCC(&v28, &qword_1EDF33718, &type metadata for FormatShadow);
  }
}

void FormatGroupNodeMaskPath.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (*(v2 + 64) > 1u)
  {
    if (*(v2 + 64) == 2)
    {
      v6 = *(v2 + 48);
      v5 = *(v2 + 56);
      sub_1D6212DD8(a1, a2, v4);
      if (!v3)
      {
        if (v6)
        {

          sub_1D620B270(a1, a2, v6);
          sub_1D620B270(a1, a2, v5);
          sub_1D5CDE22C(v6, v5);
        }
      }
    }
  }

  else if (*(v2 + 64))
  {
    sub_1D6213184(a1, a2, v4);
  }
}

void sub_1D625682C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (*(v2 + 64) > 1u)
  {
    if (*(v2 + 64) == 2)
    {
      v6 = *(v2 + 48);
      v5 = *(v2 + 56);
      sub_1D6212DD8(a1, a2, v4);
      if (!v3)
      {
        if (v6)
        {

          sub_1D620B270(a1, a2, v6);
          sub_1D620B270(a1, a2, v5);
          sub_1D5CDE22C(v6, v5);
        }
      }
    }
  }

  else if (*(v2 + 64))
  {
    sub_1D6213184(a1, a2, v4);
  }
}

void FormatShadow.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 40);
  v8 = *(v2 + 48);
  v7 = *(v2 + 56);
  v9 = *(v2 + 64);
  v10 = *(v2 + 80);

  FormatColor.bind(binder:context:)(a1, a2);

  if (!v3)
  {
    if (v10 <= 2)
    {
      if (!v10)
      {
        return;
      }

      v11 = v6;
      v12 = v8;
      if (v10 == 1)
      {
        goto LABEL_12;
      }
    }

    else if (v10 > 4)
    {
      if (v10 != 5)
      {
        return;
      }

      v11 = v6;
      v12 = v8;
    }

    else
    {
      v11 = v6;
      v12 = v8;
      if (v10 != 3)
      {
        goto LABEL_12;
      }
    }

    sub_1D625E06C(a1, a2, v11, v12);
    v12 = v9;
    v11 = v7;
LABEL_12:
    sub_1D625E06C(a1, a2, v11, v12);
  }
}

void FormatGroupNodeMaskStyle.Selector.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 64);
  v40[2] = *(v2 + 48);
  v41 = v6;
  v42 = *(v2 + 80);
  v7 = *(v2 + 32);
  v40[0] = *(v2 + 16);
  v40[1] = v7;
  v8 = *(v2 + 88);
  v9 = *(v2 + 144);
  v44 = *(v2 + 128);
  v45 = v9;
  v46 = *(v2 + 160);
  v47 = *(v2 + 176);
  v10 = *(v2 + 112);
  v43[0] = *(v2 + 96);
  v43[1] = v10;
  v11 = *&v40[0];
  if (v42 <= 1u)
  {
    if (!v42)
    {
      goto LABEL_13;
    }

    v12 = *(v2 + 64);
    v37 = *(v2 + 48);
    v38 = v12;
    v39 = *(v2 + 80);
    v13 = *(v2 + 32);
    v35 = *(v2 + 16);
    v36 = v13;
    v14 = v3;
    sub_1D619916C(&v35, v34);
    sub_1D6213184(a1, a2, v11);
    if (v3)
    {
      v15 = &qword_1EDF273F0;
      v16 = &type metadata for FormatGroupNodeMaskPath;
      v17 = v40;
LABEL_19:
      sub_1D5D0ABCC(v17, v15, v16);
      return;
    }

    goto LABEL_12;
  }

  if (v42 == 2)
  {
    v18 = v41;
    v19 = *(v2 + 64);
    v37 = *(v2 + 48);
    v38 = v19;
    v39 = *(v2 + 80);
    v20 = *(v2 + 32);
    v35 = *(v2 + 16);
    v36 = v20;
    v14 = v3;
    sub_1D619916C(&v35, v34);
    sub_1D6212DD8(a1, a2, v11);
    if (v3)
    {
      v21 = &qword_1EDF273F0;
      v22 = &type metadata for FormatGroupNodeMaskPath;
      v23 = v40;
LABEL_9:
      sub_1D5D0ABCC(v23, v21, v22);
      return;
    }

    if (v18)
    {

      sub_1D620B270(a1, a2, v18);
      sub_1D620B270(a1, a2, *(&v18 + 1));
      sub_1D5CDE22C(v18, *(&v18 + 1));
    }

LABEL_12:
    sub_1D5D0ABCC(v40, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    v3 = v14;
  }

LABEL_13:
  if (!v8 || (sub_1D620E744(a1, a2, v8), !v3))
  {
    v24 = v47;
    if (v47 != 254)
    {
      v25 = *(&v45 + 1);
      v48 = *&v45;
      v26 = *&v46;
      v27 = *(&v44 + 1);
      v34[0] = v44;
      sub_1D62B5354(v43, &v35, &qword_1EDF33718, &type metadata for FormatShadow);

      FormatColor.bind(binder:context:)(a1, a2);
      if (v3)
      {

LABEL_18:
        v15 = &qword_1EDF33718;
        v16 = &type metadata for FormatShadow;
        v17 = v43;
        goto LABEL_19;
      }

      v28 = v27;
      v29 = v48;

      if (v24 <= 2)
      {
        if (!v24)
        {
          goto LABEL_18;
        }

        v30 = v28;
        v31 = v29;
        if (v24 != 1)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v24 > 4)
        {
          if (v24 != 5)
          {
            goto LABEL_18;
          }

          v30 = v28;
          v31 = v29;
          goto LABEL_30;
        }

        v30 = v28;
        v31 = v29;
        if (v24 == 3)
        {
LABEL_30:
          sub_1D625E06C(a1, a2, v30, v31);
          v31 = v26;
          v30 = v25;
          v32 = a1;
          v33 = a2;
          goto LABEL_31;
        }
      }

      v32 = a1;
      v33 = a2;
LABEL_31:
      sub_1D625E06C(v32, v33, v30, v31);
      v21 = &qword_1EDF33718;
      v22 = &type metadata for FormatShadow;
      v23 = v43;
      goto LABEL_9;
    }
  }
}

void FormatGroupNodeStyle.Selector.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 96);
  v70 = *(v2 + 80);
  v71 = v7;
  v72 = *(v2 + 112);
  v73 = *(v2 + 128);
  v8 = *(v2 + 64);
  v69[0] = *(v2 + 48);
  v69[1] = v8;
  v9 = *(v2 + 136);
  v10 = *(v2 + 168);
  v11 = *(v2 + 184);
  v74 = *(v2 + 152);
  v75 = v10;
  v12 = *(v2 + 200);
  v13 = *(v2 + 232);
  v14 = *(v2 + 248);
  v78 = *(v2 + 216);
  v79 = v13;
  v76 = v11;
  v77 = v12;
  v15 = *(v2 + 264);
  v16 = *(v2 + 280);
  v17 = *(v2 + 296);
  v84 = *(v2 + 312);
  v82 = v16;
  v83 = v17;
  v80 = v14;
  v81 = v15;
  if (v6)
  {
    sub_1D620E744(a1, a2, v6);
    if (v3)
    {
      return;
    }
  }

  v18 = a2;
  v19 = v73;
  if (v73 == 254)
  {
    v20 = a1;
    if (v9)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  v40 = v9;
  v85 = *(&v71 + 1);
  v41 = *&v71;
  v22 = *&v72;
  v23 = *(&v70 + 1);
  *&v56[0] = v70;
  sub_1D62B5354(v69, &v58, &qword_1EDF33718, &type metadata for FormatShadow);

  FormatColor.bind(binder:context:)(a1, v18);
  v24 = v3;
  if (v3)
  {

    sub_1D5D0ABCC(v69, &qword_1EDF33718, &type metadata for FormatShadow);
    return;
  }

  v25 = v23;
  v26 = v85;

  if (v19 <= 2)
  {
    if (v19)
    {
      v27 = v25;
      if (v19 == 1)
      {
        v37 = v41;
        v20 = a1;
        v38 = a1;
        v39 = v18;
LABEL_22:
        sub_1D625E06C(v38, v39, v27, v37);
        sub_1D5D0ABCC(v69, &qword_1EDF33718, &type metadata for FormatShadow);
        goto LABEL_29;
      }

LABEL_21:
      v20 = a1;
      sub_1D625E06C(a1, v18, v27, v41);
      v37 = v22;
      v27 = v26;
      v38 = a1;
      v39 = v18;
      goto LABEL_22;
    }
  }

  else
  {
    if (v19 <= 4)
    {
      v27 = v25;
      if (v19 != 3)
      {
        v28 = v41;
        v20 = a1;
        v29 = a1;
        v30 = v18;
LABEL_27:
        sub_1D625E06C(v29, v30, v27, v28);
        v24 = 0;
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    if (v19 == 5)
    {
      v20 = a1;
      sub_1D625E06C(a1, v18, v25, v41);
      v28 = v22;
      v27 = v26;
      v29 = a1;
      v30 = v18;
      goto LABEL_27;
    }
  }

  v20 = a1;
LABEL_28:
  sub_1D5D0ABCC(v69, &qword_1EDF33718, &type metadata for FormatShadow);
  v3 = v24;
LABEL_29:
  v9 = v40;
  if (v40)
  {
LABEL_5:
    sub_1D620B270(v20, v18, v9);
    if (v3)
    {
      return;
    }
  }

LABEL_6:
  v66 = v82;
  v67 = v83;
  v68 = v84;
  v62 = v78;
  v63 = v79;
  v64 = v80;
  v65 = v81;
  v58 = v74;
  v59 = v75;
  v60 = v76;
  v61 = v77;
  if (sub_1D60081E0(&v58) != 1)
  {
    v56[8] = v66;
    v56[9] = v67;
    v57 = v68;
    v56[4] = v62;
    v56[5] = v63;
    v56[6] = v64;
    v56[7] = v65;
    v56[0] = v58;
    v56[1] = v59;
    v56[2] = v60;
    v56[3] = v61;
    v21 = sub_1D62B4E2C(v56);
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v31 = sub_1D5D04BC4(v56);
        v32 = *(v31 + 144);
        v51 = *(v31 + 128);
        v52 = v32;
        v53 = *(v31 + 160);
        v33 = *(v31 + 80);
        v47 = *(v31 + 64);
        v48 = v33;
        v34 = *(v31 + 112);
        v49 = *(v31 + 96);
        v50 = v34;
        v35 = *(v31 + 16);
        v43 = *v31;
        v44 = v35;
        v36 = *(v31 + 48);
        v45 = *(v31 + 32);
        v46 = v36;
        v54[0] = v74;
        v54[1] = v75;
        v54[4] = v78;
        v54[5] = v79;
        v54[2] = v76;
        v54[3] = v77;
        v55 = v84;
        v54[8] = v82;
        v54[9] = v83;
        v54[6] = v80;
        v54[7] = v81;
        sub_1D60864C0(v54, v42);
        FormatGlassEffect.bind(binder:context:)(v20, v18);
        sub_1D5D0ABCC(&v74, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
      }
    }

    else
    {
      sub_1D5D04BC4(v56);
    }
  }
}

void FormatImage.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2 >> 61;
  if (v5 <= 3)
  {
    if (v5 < 2 || v5 != 2)
    {
      return;
    }

    v7 = *(*((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 24);

    sub_1D623CCEC(a1, a2, v7);
    if (!v3)
    {

      FormatImage.bind(binder:context:)(a1, a2);
    }

LABEL_17:

    return;
  }

  if (v5 != 4)
  {
    if (v5 != 5)
    {
      return;
    }

    v10 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    FormatImage.bind(binder:context:)(a1, a2);
    if (v3 || !v10)
    {
      return;
    }

    FormatImageNodeStyle.bind(binder:context:)(a1, a2);
    goto LABEL_17;
  }

  FormatImage.bind(binder:context:)(a1, a2);
  if (!v3)
  {
    FormatImage.bind(binder:context:)(a1, a2);
  }
}

void FormatImageNodeStyle.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 48);

  sub_1D62333F0(a1, a2, v6);
  if (v3)
  {

    return;
  }

  v7 = *(v2 + 56);
  if (v7)
  {
    sub_1D620B270(a1, a2, v7);
  }

  swift_beginAccess();
  v8 = *(v2 + 64);
  if (v8)
  {

    sub_1D6220E24(a1, a2, v8);
  }

  if ((~*(v2 + 72) & 0xF000000000000007) != 0)
  {
    *&v23[0] = *(v2 + 72);

    FormatBackground.bind(binder:context:)(a1, a2);
  }

  v9 = *(v2 + 80);
  if (v9)
  {
    sub_1D620E744(a1, a2, v9);
  }

  v10 = *(v2 + 120);
  if (v10 >= 3)
  {
    if (v10 != 3)
    {
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      v13 = *(v2 + 120);
      sub_1D5D0AF9C(v10);
      sub_1D5D0AFBC(v11);
      sub_1D5D0AFBC(v12);
      sub_1D5D0AFDC(a1, a2, v11, v12);
      sub_1D5D0AFCC(v11);
      sub_1D5D0AFCC(v12);
      sub_1D5D0AFAC(v13);
    }
  }

  else
  {
    sub_1D5D0AFAC(v10);
  }

  v14 = *(v2 + 192);
  v24 = *(v2 + 176);
  v25 = v14;
  v26 = *(v2 + 208);
  v27 = *(v2 + 224);
  v15 = *(v2 + 160);
  v23[0] = *(v2 + 144);
  v23[1] = v15;
  if (v27 != 254)
  {
    v28 = v24;
    swift_retain_n();
    FormatColor.bind(binder:context:)(a1, a2);

    if (v27 <= 2u)
    {
      if (v27)
      {
        if (v27 == 1)
        {
          v19 = *(&v24 + 1);
          v20 = *&v25;
        }

        else
        {
          sub_1D625E06C(a1, a2, *(&v24 + 1), *&v25);
          v20 = *&v26;
          v19 = *(&v25 + 1);
        }

        goto LABEL_38;
      }
    }

    else
    {
      if (v27 <= 4u)
      {
        v18 = *(&v25 + 1);
        v19 = *(&v24 + 1);
        v20 = *&v25;
        v21 = a1;
        v22 = a2;
        if (v27 != 3)
        {
          goto LABEL_39;
        }

        goto LABEL_36;
      }

      v18 = *(&v25 + 1);
      if (v27 == 5)
      {
        v19 = *(&v24 + 1);
        v20 = *&v25;
        v21 = a1;
        v22 = a2;
LABEL_36:
        sub_1D625E06C(v21, v22, v19, v20);
        v20 = *&v26;
        v19 = v18;
LABEL_38:
        v21 = a1;
        v22 = a2;
LABEL_39:
        sub_1D625E06C(v21, v22, v19, v20);
      }
    }

    sub_1D5D0ABCC(v23, &qword_1EDF33718, &type metadata for FormatShadow);
  }

  if ((~*(v2 + 232) & 0xF000000000000007) != 0)
  {
    v28 = *(v2 + 232);

    FormatColor.bind(binder:context:)(a1, a2);
  }

  v17 = *(v2 + 248);
  v16 = *(v2 + 256);
  if (v17)
  {
    if (v17 == 1)
    {
      return;
    }

    sub_1D62B5D88(v17);

    sub_1D62125B0(a1, a2, v17);
  }

  else
  {
  }

  if (v16)
  {

    sub_1D62125B0(a1, a2, v16);
  }

  sub_1D62B5D44(v17);
}

void FormatImageAdjustment.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 112);
  v55[6] = *(v2 + 96);
  v55[7] = v6;
  v56 = *(v2 + 128);
  v7 = *(v2 + 48);
  v55[2] = *(v2 + 32);
  v55[3] = v7;
  v8 = *(v2 + 80);
  v55[4] = *(v2 + 64);
  v55[5] = v8;
  v9 = *(v2 + 16);
  v55[0] = *v2;
  v55[1] = v9;
  v10 = sub_1D5F78DC4(v55);
  if (v10)
  {
    if (v10 != 1)
    {
      sub_1D5DEA32C(v55);
      return;
    }

    v11 = sub_1D5DEA32C(v55);
    v46 = *v11;
    v12 = *(v11 + 64);
    v14 = *(v11 + 16);
    v13 = *(v11 + 32);
    v49 = *(v11 + 48);
    v50 = v12;
    v47 = v14;
    v48 = v13;
    v16 = *(v11 + 96);
    v15 = *(v11 + 112);
    v17 = *(v11 + 80);
    v54 = *(v11 + 128);
    v52 = v16;
    v53 = v15;
    v51 = v17;
    if (sub_1D6011234(&v46) == 1)
    {
      sub_1D5D756B8(&v46);
      v37 = *v11;
      v18 = *(v11 + 64);
      v20 = *(v11 + 16);
      v19 = *(v11 + 32);
      v40 = *(v11 + 48);
      v41 = v18;
      v38 = v20;
      v39 = v19;
      v22 = *(v11 + 96);
      v21 = *(v11 + 112);
      v23 = *(v11 + 80);
      v45 = *(v11 + 128);
      v43 = v22;
      v44 = v21;
      v42 = v23;
      sub_1D5D756B8(&v37);

      FormatColor.bind(binder:context:)(a1, a2);

      return;
    }

    v27 = sub_1D5D756B8(&v46);
    v28 = v27[3];
    v30 = *v27;
    v29 = v27[1];
    v39 = v27[2];
    v40 = v28;
    v37 = v30;
    v38 = v29;
    v31 = v27[7];
    v33 = v27[4];
    v32 = v27[5];
    v43 = v27[6];
    v44 = v31;
    v41 = v33;
    v42 = v32;
    v25 = sub_1D6011280(&v37);
    v26 = &v37;
  }

  else
  {
    v24 = sub_1D5DEA32C(v55);
    sub_1D5F78F40(v24, &v37);
    v50 = v41;
    v51 = v42;
    v52 = v43;
    v53 = v44;
    v46 = v37;
    v47 = v38;
    v48 = v39;
    v49 = v40;
    v25 = sub_1D6011280(&v46);
    v26 = &v46;
  }

  v34 = sub_1D5D756C8(v26);
  if (v25 == 1)
  {
    sub_1D6212DD8(a1, a2, v34[14]);
  }

  else
  {
    v36 = v34[6];
    v35 = v34[7];
    sub_1D6212DD8(a1, a2, *v34);
    if (!v3)
    {
      if (v36)
      {

        sub_1D620B270(a1, a2, v36);
        sub_1D620B270(a1, a2, v35);
        sub_1D5CDE22C(v36, v35);
      }
    }
  }
}

void FormatImageAdjustmentMask.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1D5F78F40(v4, v11);
  sub_1D5F78F40(v11, v12);
  v13[4] = v12[4];
  v13[5] = v12[5];
  v13[6] = v12[6];
  v13[7] = v12[7];
  v13[0] = v12[0];
  v13[1] = v12[1];
  v13[2] = v12[2];
  v13[3] = v12[3];
  v7 = sub_1D6011280(v13);
  v8 = sub_1D5D756C8(v13);
  if (v7 == 1)
  {
    sub_1D6212DD8(a1, a2, v8[14]);
  }

  else
  {
    v10 = v8[6];
    v9 = v8[7];
    sub_1D6212DD8(a1, a2, *v8);
    if (!v3)
    {
      if (v10)
      {

        sub_1D620B270(a1, a2, v10);
        sub_1D620B270(a1, a2, v9);
        sub_1D5CDE22C(v10, v9);
      }
    }
  }
}

void FormatImageAdjustmentBlend.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[7];
  v34[6] = v2[6];
  v34[7] = v6;
  v35 = *(v2 + 128);
  v7 = v2[3];
  v34[2] = v2[2];
  v34[3] = v7;
  v8 = v2[5];
  v34[4] = v2[4];
  v34[5] = v8;
  v9 = v2[1];
  v34[0] = *v2;
  v34[1] = v9;
  if (sub_1D6011234(v34) == 1)
  {
    sub_1D5D756B8(v34);
    v10 = v2[3];
    v27 = v2[2];
    v28 = v10;
    v11 = v2[1];
    v25 = *v2;
    v26 = v11;
    v33 = *(v2 + 128);
    v12 = v2[7];
    v31 = v2[6];
    v32 = v12;
    v13 = v2[5];
    v29 = v2[4];
    v30 = v13;
    sub_1D5D756B8(&v25);

    FormatColor.bind(binder:context:)(a1, a2);
  }

  else
  {
    v14 = sub_1D5D756B8(v34);
    v15 = v14[3];
    v17 = *v14;
    v16 = v14[1];
    v27 = v14[2];
    v28 = v15;
    v25 = v17;
    v26 = v16;
    v18 = v14[7];
    v20 = v14[4];
    v19 = v14[5];
    v31 = v14[6];
    v32 = v18;
    v29 = v20;
    v30 = v19;
    v21 = sub_1D6011280(&v25);
    v22 = sub_1D5D756C8(&v25);
    if (v21 == 1)
    {
      sub_1D6212DD8(a1, a2, v22[14]);
    }

    else
    {
      v24 = v22[6];
      v23 = v22[7];
      sub_1D6212DD8(a1, a2, *v22);
      if (!v3)
      {
        if (v24)
        {

          sub_1D620B270(a1, a2, v24);
          sub_1D620B270(a1, a2, v23);
          sub_1D5CDE22C(v24, v23);
        }
      }
    }
  }
}

void sub_1D6257D74(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 112);
  v27[6] = *(v2 + 96);
  v27[7] = v6;
  v28 = *(v2 + 128);
  v7 = *(v2 + 48);
  v27[2] = *(v2 + 32);
  v27[3] = v7;
  v8 = *(v2 + 80);
  v27[4] = *(v2 + 64);
  v27[5] = v8;
  v9 = *(v2 + 16);
  v27[0] = *v2;
  v27[1] = v9;
  v10 = sub_1D5F78DC4(v27);
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = sub_1D5DEA32C(v27);
      v23 = *(v11 + 80);
      v24 = *(v11 + 96);
      v25 = *(v11 + 112);
      v26 = *(v11 + 128);
      v19 = *(v11 + 16);
      v20 = *(v11 + 32);
      v21 = *(v11 + 48);
      v22 = *(v11 + 64);
      v18 = *v11;
      FormatImageAdjustmentBlend.bind(binder:context:)(a1, a2);
    }

    else
    {
      sub_1D5DEA32C(v27);
    }
  }

  else
  {
    v12 = sub_1D5DEA32C(v27);
    sub_1D5F78F40(v12, v17);
    v22 = v17[4];
    v23 = v17[5];
    v24 = v17[6];
    v25 = v17[7];
    v18 = v17[0];
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v13 = sub_1D6011280(&v18);
    v14 = sub_1D5D756C8(&v18);
    if (v13 == 1)
    {
      sub_1D6212DD8(a1, a2, v14[14]);
    }

    else
    {
      v16 = v14[6];
      v15 = v14[7];
      sub_1D6212DD8(a1, a2, *v14);
      if (!v3 && v16)
      {

        sub_1D620B270(a1, a2, v16);
        sub_1D620B270(a1, a2, v15);
        sub_1D5CDE22C(v16, v15);
      }
    }
  }
}

void FormatImageAdjustmentBlend.GradientData.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[5];
  v14[4] = v2[4];
  v14[5] = v6;
  v7 = v2[7];
  v14[6] = v2[6];
  v14[7] = v7;
  v8 = v2[1];
  v14[0] = *v2;
  v14[1] = v8;
  v9 = v2[3];
  v14[2] = v2[2];
  v14[3] = v9;
  v10 = sub_1D6011280(v14);
  v11 = sub_1D5D756C8(v14);
  if (v10 == 1)
  {
    sub_1D6212DD8(a1, a2, v11[14]);
  }

  else
  {
    v13 = v11[6];
    v12 = v11[7];
    sub_1D6212DD8(a1, a2, *v11);
    if (!v3)
    {
      if (v13)
      {

        sub_1D620B270(a1, a2, v13);
        sub_1D620B270(a1, a2, v12);
        sub_1D5CDE22C(v13, v12);
      }
    }
  }
}

double FormatImageAdjustmentBlend.ColorData.bind(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatColor.bind(binder:context:)(a1, a2);

  return result;
}

void sub_1D62580B4(uint64_t a1, uint64_t a2)
{
  v6 = v2[5];
  v7 = v2[7];
  v45 = v2[6];
  v46 = v7;
  v8 = v2[1];
  v9 = v2[3];
  v41 = v2[2];
  v42 = v9;
  v10 = v2[3];
  v11 = v2[5];
  v43 = v2[4];
  v44 = v11;
  v12 = v2[1];
  v39 = *v2;
  v40 = v12;
  v13 = v2[7];
  v48[6] = v45;
  v48[7] = v13;
  v48[2] = v41;
  v48[3] = v10;
  v48[4] = v43;
  v48[5] = v6;
  v47 = *(v2 + 128);
  v49 = *(v2 + 128);
  v48[0] = v39;
  v48[1] = v8;
  if (sub_1D6011234(v48) == 1)
  {
    v28[0] = *sub_1D5D756B8(v48);
    v32 = v41;
    v33 = v42;
    v30 = v39;
    v31 = v40;
    v38 = v47;
    v36 = v45;
    v37 = v46;
    v34 = v43;
    v35 = v44;
    sub_1D5D756B8(&v30);

    FormatColor.bind(binder:context:)(a1, a2);
  }

  else
  {
    v14 = sub_1D5D756B8(v48);
    v15 = v14[3];
    v17 = *v14;
    v16 = v14[1];
    v29[2] = v14[2];
    v29[3] = v15;
    v29[0] = v17;
    v29[1] = v16;
    v18 = v14[7];
    v20 = v14[4];
    v19 = v14[5];
    v29[6] = v14[6];
    v29[7] = v18;
    v29[4] = v20;
    v29[5] = v19;
    if (sub_1D6011280(v29) == 1)
    {
      v21 = *(sub_1D5D756C8(v29) + 112);
      v38 = v47;
      v36 = v45;
      v37 = v46;
      v32 = v41;
      v33 = v42;
      v34 = v43;
      v35 = v44;
      v30 = v39;
      v31 = v40;
      v22 = sub_1D5D756B8(&v30);
      sub_1D62B73AC(v22, v28);
      sub_1D6212DD8(a1, a2, v21);
    }

    else
    {
      v23 = sub_1D5D756C8(v29);
      v24 = *v23;
      v26 = v23[6];
      v25 = v23[7];
      v30 = v39;
      v31 = v40;
      v36 = v45;
      v37 = v46;
      v38 = v47;
      v32 = v41;
      v33 = v42;
      v34 = v43;
      v35 = v44;
      v27 = sub_1D5D756B8(&v30);
      sub_1D62B73AC(v27, v28);
      sub_1D6212DD8(a1, a2, v24);
      if (!v3)
      {
        if (v26)
        {

          sub_1D620B270(a1, a2, v26);
          sub_1D620B270(a1, a2, v25);
          sub_1D5CDE22C(v26, v25);
        }
      }
    }

    sub_1D62B7408(&v39);
  }
}

void sub_1D6258340(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1D5F78F40(v4, v11);
  sub_1D5F78F40(v11, v12);
  v13[4] = v12[4];
  v13[5] = v12[5];
  v13[6] = v12[6];
  v13[7] = v12[7];
  v13[0] = v12[0];
  v13[1] = v12[1];
  v13[2] = v12[2];
  v13[3] = v12[3];
  v7 = sub_1D6011280(v13);
  v8 = sub_1D5D756C8(v13);
  if (v7 == 1)
  {
    sub_1D6212DD8(a1, a2, v8[14]);
  }

  else
  {
    v10 = v8[6];
    v9 = v8[7];
    sub_1D6212DD8(a1, a2, *v8);
    if (!v3)
    {
      if (v10)
      {

        sub_1D620B270(a1, a2, v10);
        sub_1D620B270(a1, a2, v9);
        sub_1D5CDE22C(v10, v9);
      }
    }
  }
}

void sub_1D6258468(unint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);

  FormatAsyncImageContent.bind(binder:context:)(a1, a2, v7);

  if (!v3)
  {
    if (v6)
    {
      FormatImageNodeStyle.bind(binder:context:)(a1, a2);
    }
  }
}

void FormatImageNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v16 = v2[4];
  sub_1D5C82CD8(v16);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    sub_1D5C92A8C(v16);
  }

  else
  {
    sub_1D5C92A8C(v16);
    swift_beginAccess();
    v7 = v2[6];

    sub_1D620EA64(a1, a2, v7);

    if (v4[7])
    {
      FormatImageNodeStyle.bind(binder:context:)(a1, a2);
    }

    v8 = v4[8];
    if (v8)
    {
      swift_beginAccess();
      v9 = *(v8 + 72);
      if (v9)
      {

        sub_1D621397C(a1, a2, v9);
      }

      swift_beginAccess();
      v10 = *(v8 + 88);

      sub_1D621D544(a1, a2, v10);
    }

    FormatAsyncImageContent.bind(binder:context:)(a1, a2, v11);

    swift_beginAccess();
    v12 = v4[11];
    if (v12 >> 62 == 1)
    {
      v13 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v14 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[11]);
      sub_1D5EB1500(v13);

      sub_1D624919C(a1, a2, v13, v14);
      sub_1D5EB15C4(v13);

      sub_1D5EB15C4(v12);
    }

    if (v4[18])
    {
      v15 = v4[22];

      sub_1D5DEA234(v15);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v15);
    }
  }
}

void FormatImageNodeBinding.bindChildren(binder:context:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = (*(v3 + 40) >> 1) & 0xF;
  if (v7 <= 3)
  {
    if (v7 < 2)
    {
      return;
    }

    if (v7 == 2)
    {
      FormatGroupBinding.Image.bind(binder:context:)(a1, a2, a3);
      return;
    }

    v9 = (*(v3 + 8) >> 59) & 2 | (*(v3 + 8) >> 2) & 1;
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        return;
      }

      FormatFont.bind(binder:context:)(a1, a2);
      if (v4)
      {

        return;
      }

      sub_1D620B270(a1, a2, v6);

      v14 = a1;
      v15 = a2;
      v16 = v5;
    }

    else
    {

      FormatFont.bind(binder:context:)(a1, a2);

      if (v4)
      {
        return;
      }

      sub_1D620B270(a1, a2, v6);

      v14 = a1;
      v15 = a2;
      v16 = v5;
    }

    sub_1D620B270(v14, v15, v16);
  }

  else if (v7 - 4 >= 4 && v7 == 8)
  {
    FormatSportsEventBinding.Image.bind(binder:context:)(a1, a2);
  }
}

double FormatImageNodeRequest.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];
  if (!*v2 || (, sub_1D62125B0(a1, a2, v7), , !v3))
  {
    if (v6)
    {

      sub_1D62125B0(a1, a2, v6);
    }
  }

  return result;
}

double sub_1D6258AD0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;

  sub_1D62125B0(a1, a2, v5);

  return result;
}

double sub_1D6258B28(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];
  if (!*v2 || (, sub_1D62125B0(a1, a2, v7), , !v3))
  {
    if (v6)
    {

      sub_1D62125B0(a1, a2, v6);
    }
  }

  return result;
}

void FormatImageNodeRequestAdjustment.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  switch(*(v2 + 32))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
      goto LABEL_2;
    case 0xC:
      return;
    default:
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      v7 = *(v2 + 8);
      v8 = a1;
      v9 = a2;
      sub_1D620B270(a1, a2, v4);
      if (!v3)
      {
        sub_1D620B270(v8, v9, v7);
        sub_1D620B270(v8, v9, v6);
        a1 = v8;
        a2 = v9;
        v4 = v5;
LABEL_2:
        sub_1D620B270(a1, a2, v4);
      }

      break;
  }
}

void sub_1D6258C64(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  switch(*(v2 + 32))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
      goto LABEL_2;
    case 0xC:
      return;
    default:
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      v7 = *(v2 + 8);
      v8 = a1;
      v9 = a2;
      sub_1D620B270(a1, a2, v4);
      if (!v3)
      {
        sub_1D620B270(v8, v9, v7);
        sub_1D620B270(v8, v9, v6);
        a1 = v8;
        a2 = v9;
        v4 = v5;
LABEL_2:
        sub_1D620B270(a1, a2, v4);
      }

      break;
  }
}

unint64_t FormatImageRenderingMode.bind(binder:context:)(unint64_t result, uint64_t a2)
{
  v3 = *v2;
  if (*v2 >= 3)
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = result;
    sub_1D5D0AFBC(v4);
    sub_1D5D0AFBC(v5);
    sub_1D5D0AFDC(v6, a2, v4, v5);
    sub_1D5D0AFCC(v4);
    return sub_1D5D0AFCC(v5);
  }

  return result;
}

void FormatImageNodeStyle.Selector.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 104);
  v22 = *(v2 + 88);
  v23 = v8;
  v24 = *(v2 + 120);
  v25 = *(v2 + 136);
  v9 = *(v2 + 72);
  v21[0] = *(v2 + 56);
  v21[1] = v9;
  v10 = *(v2 + 144);
  v11 = *(v2 + 176);
  v12 = *(v2 + 200);
  v19 = *(v2 + 192);
  v20 = *(v2 + 184);
  v13 = *(v2 + 208);
  if ((~v6 & 0xF000000000000007) != 0)
  {
    v26 = v6;

    FormatBackground.bind(binder:context:)(a1, a2);
    if (v3)
    {

      return;
    }
  }

  if (v7)
  {
    sub_1D620E744(a1, a2, v7);
    if (v3)
    {
      return;
    }
  }

  if (v25 != 254)
  {
    v26 = v22;
    swift_retain_n();
    FormatColor.bind(binder:context:)(a1, a2);
    v15 = v3;
    if (v3)
    {

      sub_1D5D0ABCC(v21, &qword_1EDF33718, &type metadata for FormatShadow);
      return;
    }

    if (v25 <= 2u)
    {
      if (v25)
      {
        if (v25 == 1)
        {
          sub_1D625E06C(a1, a2, *(&v22 + 1), *&v23);
          sub_1D5D0ABCC(v21, &qword_1EDF33718, &type metadata for FormatShadow);
          v14 = v12;
          goto LABEL_9;
        }

        goto LABEL_40;
      }
    }

    else
    {
      if (v25 <= 4u)
      {
        if (v25 != 3)
        {
          sub_1D625E06C(a1, a2, *(&v22 + 1), *&v23);
          v14 = v12;
          goto LABEL_41;
        }

LABEL_40:
        sub_1D625E06C(a1, a2, *(&v22 + 1), *&v23);
        v14 = v12;
        sub_1D625E06C(a1, a2, *(&v23 + 1), *&v24);
LABEL_41:
        v15 = 0;
        goto LABEL_42;
      }

      if (v25 == 5)
      {
        sub_1D625E06C(a1, a2, *(&v22 + 1), *&v23);
        v14 = v12;
        sub_1D625E06C(a1, a2, *(&v23 + 1), *&v24);
        v15 = 0;
LABEL_42:
        sub_1D5D0ABCC(v21, &qword_1EDF33718, &type metadata for FormatShadow);
        v3 = v15;
        goto LABEL_9;
      }
    }

    v14 = v12;
    goto LABEL_42;
  }

  v14 = v12;
LABEL_9:
  if ((~v10 & 0xF000000000000007) == 0 || (v26 = v10, , FormatColor.bind(binder:context:)(a1, a2), , !v3))
  {
    if (v11 >= 3)
    {
      if (v11 != 3)
      {
        v16 = *(v11 + 16);
        v17 = *(v11 + 24);
        sub_1D5D0AF9C(v11);
        sub_1D5D0AFBC(v16);
        sub_1D5D0AFBC(v17);
        sub_1D5D0AFDC(a1, a2, v16, v17);
        sub_1D5D0AFCC(v16);
        sub_1D5D0AFCC(v17);
        sub_1D5D0AFAC(v11);
        if (v3)
        {
          return;
        }
      }
    }

    else
    {
      sub_1D5D0AFAC(v11);
    }

    if (!v20 || (sub_1D620B270(a1, a2, v20), !v3))
    {
      if (!v19 || (sub_1D6220E24(a1, a2, v19), !v3))
      {
        if (!v14)
        {

          goto LABEL_37;
        }

        if (v14 != 1)
        {
          sub_1D62B5D88(v14);

          sub_1D62125B0(a1, a2, v14);

          if (v3)
          {
            v18 = v14;
LABEL_45:
            sub_1D62B5D44(v18);
            return;
          }

LABEL_37:
          if (v13)
          {

            sub_1D62125B0(a1, a2, v13);
          }

          v18 = v14;
          goto LABEL_45;
        }
      }
    }
  }
}

unint64_t sub_1D6259258(unint64_t result, uint64_t a2)
{
  v3 = *v2;
  if (*v2 >= 3)
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = result;
    sub_1D5D0AFBC(v4);
    sub_1D5D0AFBC(v5);
    sub_1D5D0AFDC(v6, a2, v4, v5);
    sub_1D5D0AFCC(v4);
    return sub_1D5D0AFCC(v5);
  }

  return result;
}

void FormatIssueCoverNode.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v19 = v2[4];
  sub_1D5C82CD8(v19);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    sub_1D5C92A8C(v19);
  }

  else
  {
    sub_1D5C92A8C(v19);
    swift_beginAccess();
    v7 = v2[6];

    sub_1D620EA64(a1, a2, v7);

    if (v4[7])
    {
      FormatIssueCoverNodeStyle.bind(binder:context:)(a1, a2);
    }

    v8 = v4[8];
    if (v8)
    {
      swift_beginAccess();
      v9 = *(v8 + 72);
      if (v9)
      {

        sub_1D621397C(a1, a2, v9);
      }

      swift_beginAccess();
      v10 = *(v8 + 88);

      sub_1D621D544(a1, a2, v10);
    }

    v11 = v4[9];
    if (v11 < 0)
    {
      v16 = v11 & 0x7FFFFFFFFFFFFFFFLL;
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);

      sub_1D6249398(a1, a2, v17, v18);
    }

    swift_beginAccess();
    v12 = v4[11];
    if (v12 >> 62 == 1)
    {
      v13 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v14 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[11]);
      sub_1D5EB1500(v13);

      sub_1D624919C(a1, a2, v13, v14);
      sub_1D5EB15C4(v13);

      sub_1D5EB15C4(v12);
    }

    if (v4[17])
    {
      v15 = v4[21];

      sub_1D5DEA234(v15);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v15);
    }
  }
}

void FormatIssueCoverNodeStyle.Selector.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 104);
  v21 = *(v2 + 88);
  v22 = v8;
  v23 = *(v2 + 120);
  v24 = *(v2 + 136);
  v9 = *(v2 + 72);
  v20[0] = *(v2 + 56);
  v20[1] = v9;
  if (!v6 || (sub_1D620B270(a1, a2, v6), !v3))
  {
    if (!v7 || (sub_1D620E744(a1, a2, v7), !v3))
    {
      v10 = v24;
      if (v24 != 254)
      {
        v11 = *(&v22 + 1);
        v18 = *&v22;
        v12 = *&v23;
        v13 = *(&v21 + 1);
        v25 = v21;
        sub_1D62B5354(v20, v19, &qword_1EDF33718, &type metadata for FormatShadow);

        FormatColor.bind(binder:context:)(a1, a2);
        if (v3)
        {

          goto LABEL_20;
        }

        if (v10 <= 2)
        {
          if (!v10)
          {
            goto LABEL_20;
          }

          v14 = v13;
          v15 = v18;
          if (v10 != 1)
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v10 > 4)
          {
            if (v10 != 5)
            {
              goto LABEL_20;
            }

            v14 = v13;
            v15 = v18;
            goto LABEL_18;
          }

          v14 = v13;
          v15 = v18;
          if (v10 == 3)
          {
LABEL_18:
            sub_1D625E06C(a1, a2, v14, v15);
            v15 = v12;
            v14 = v11;
            v16 = a1;
            v17 = a2;
            goto LABEL_19;
          }
        }

        v16 = a1;
        v17 = a2;
LABEL_19:
        sub_1D625E06C(v16, v17, v14, v15);
LABEL_20:
        sub_1D5D0ABCC(v20, &qword_1EDF33718, &type metadata for FormatShadow);
      }
    }
  }
}

double FormatItem.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v6 = v2[9];
  v7 = v2[11];
  v9 = v2[13];
  v8 = v2[14];
  if (!v2[10] || (FormatItemNodeStyle.bind(binder:context:)(a1, a2), !v3))
  {

    sub_1D62160B4(a1, a2, v7);

    if (!v3)
    {

      sub_1D6213004(a1, a2, v9);

      sub_1D62212CC(a1, a2, v8);

      sub_1D6215F90(a1, a2, v6);
    }
  }

  return result;
}

void FormatItemNodeStyle.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1D5B54684(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v23 - v9;
  v33 = *(v2 + 112);
  v11 = *(v2 + 64);
  v32[0] = *(v2 + 48);
  v32[1] = v11;
  v12 = *(v2 + 96);
  v32[2] = *(v2 + 80);
  v32[3] = v12;
  v13 = *&v32[0];
  if ((v33 & 0xFE) != 0x7E && (*&v32[0] & 0xF000000000000007) != 0xF000000000000007)
  {
    *&v29 = *&v32[0];
    sub_1D62B5354(v32, v23, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
    sub_1D5CFCFAC(v13);
    FormatColor.bind(binder:context:)(a1, a2);
    if (v3)
    {
      sub_1D5D0ABCC(v32, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);

      return;
    }

    sub_1D5D0ABCC(v32, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
  }

  v15 = *(v2 + 176);
  if (v15 != 255)
  {
    v16 = *(v2 + 136);
    v29 = *(v2 + 120);
    v30 = v16;
    v31[0] = *(v2 + 152);
    *&v31[1] = *(v2 + 168);
    BYTE8(v31[1]) = v15;
    v23[0] = v29;
    v23[1] = v16;
    v23[2] = v31[0];
    v24 = *&v31[1];
    v25 = v15;
    sub_1D62B5E68(v23, &v26);
    FormatCellSelection.bind(binder:context:)(a1, a2);
    if (v3)
    {
      v26 = v29;
      v27 = v30;
      v28[0] = v31[0];
      *(v28 + 9) = *(v31 + 9);
      sub_1D62B5EC4(&v26);
      return;
    }

    v26 = v29;
    v27 = v30;
    v28[0] = v31[0];
    *(v28 + 9) = *(v31 + 9);
    sub_1D62B5EC4(&v26);
  }

  sub_1D5C00D70(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, v10, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  v17 = type metadata accessor for FormatItemNodeAction(0);
  if ((*(*(v17 - 8) + 48))(v10, 1, v17) == 1)
  {
    sub_1D5B6EF64(v10, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  }

  else
  {
    FormatItemNodeAction.bind(binder:context:)(a1, a2);
    sub_1D62B51D0(v10, type metadata accessor for FormatItemNodeAction);
    if (v3)
    {
      return;
    }
  }

  v18 = *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
  if (v18 >= 3)
  {
    if (v18 != 3)
    {
      v21 = *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
      v22 = *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8);
      sub_1D62B5DD0(v18);
      sub_1D620B270(a1, a2, v21);
      if (v3)
      {
        sub_1D62B5E14(v21, v22);
        return;
      }

      sub_1D620B270(a1, a2, v22);
      sub_1D62B5E14(v21, v22);
    }
  }

  else
  {
    sub_1D62B5E14(v18, *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8));
  }

  v19 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
  swift_beginAccess();
  v20 = *(v4 + v19);

  sub_1D62188B8(a1, a2, v20);
}

void FormatItemBindingsNode.bindChildren(binder:context:)(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = v2[7];

  sub_1D6213004(a1, a2, v6);

  if (!v3)
  {
    swift_beginAccess();
    v7 = v2[8];

    sub_1D62160B4(a1, a2, v7);

    swift_beginAccess();
    v8 = v2[9];

    sub_1D6215F90(a1, a2, v8);
  }
}

void FormatItemNode.bindChildren(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v15 = v2[6];
  sub_1D5C82CD8(v15);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    sub_1D5C92A8C(v15);
  }

  else
  {
    sub_1D5C92A8C(v15);
    swift_beginAccess();
    v7 = v2[8];

    sub_1D620EA64(a1, a2, v7);

    swift_beginAccess();
    v8 = v4[9];

    sub_1D62160B4(a1, a2, v8);

    swift_beginAccess();
    v9 = v4[11];

    sub_1D6213004(a1, a2, v9);

    swift_beginAccess();
    v10 = v4[14];
    if (v10 >> 62 == 1)
    {
      v11 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[14]);
      sub_1D5EB1500(v11);

      sub_1D624919C(a1, a2, v11, v12);
      sub_1D5EB15C4(v11);

      sub_1D5EB15C4(v10);
    }

    swift_beginAccess();
    v13 = v4[15];

    sub_1D6230F7C(a1, a2, v13);

    if (v4[16])
    {
      v14 = v4[20];

      sub_1D5DEA234(v14);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v14);
    }
  }
}

uint64_t FormatItemNodeAction.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for FormatItemNodeAction(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D62B50EC(v3, v13, type metadata accessor for FormatItemNodeAction);
  result = swift_getEnumCaseMultiPayload();
  if ((result - 2) >= 6)
  {
    if (result)
    {
      sub_1D5D5E33C(v13, v9, type metadata accessor for FormatCommandOpenURL);
      sub_1D5F86DA0(a2);
      return sub_1D62B51D0(v9, type metadata accessor for FormatCommandOpenURL);
    }

    else
    {
      sub_1D62B5F18(v13, v16);
      sub_1D62B5F18(v16, v15);
      FormatItemNodeActionBinding.bind(binder:context:)(a1, a2);
      return sub_1D62B5F74(v16);
    }
  }

  return result;
}

void FormatItemNodeActionBinding.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[3];
  if (*(v2 + 50))
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 & 0xFFFFFFF8 | (*(v2 + 24) >> 11) & 7;
  if (v6 <= 3)
  {
    if ((v6 - 1) < 2)
    {
      return;
    }

    if (v6)
    {
      if (v2[2] == 1 && (v3 & 0xF000000000000007) != 0xF000000000000007)
      {
        goto LABEL_30;
      }

      return;
    }

    v7 = (v4 >> 3) & 7;
    if (v7 <= 1)
    {
      if (v7)
      {
        return;
      }
    }

    else if (v7 != 2 && v7 != 3)
    {
      v8 = v2[3];
      if (v8 >> 6 >= 2)
      {
        if ((v8 & 7) == 1)
        {
          goto LABEL_10;
        }

        return;
      }
    }
  }

  else
  {
    if (((1 << v6) & 0x330) != 0)
    {
      return;
    }

    if (v6 != 6)
    {
      FormatString.bind(binder:context:)(a1, a2);
      return;
    }

    if (v4 >> 6 && v4 >> 6 != 1)
    {
      if ((v4 & 0x3F) != 1)
      {
        return;
      }

LABEL_10:
      if ((v2[1] & 0xF000000000000007) == 0xF000000000000007)
      {
        return;
      }

      goto LABEL_30;
    }
  }

  if (v2[2] == 1 && (v3 & 0xF000000000000007) != 0xF000000000000007)
  {
LABEL_30:

    FormatTextContent.bind(binder:context:)(a1, a2);
  }
}

double FormatPreviewParameters.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if ((~*v2 & 0xF000000000000007) != 0)
  {

    FormatColor.bind(binder:context:)(a1, a2);
  }

  return result;
}

void FormatItemNodeSwipeActionStyle.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (*v2 >= 3)
  {
    v5 = v2[1];
    sub_1D620B270(a1, a2, v4);
    if (!v3)
    {
      sub_1D620B270(a1, a2, v5);
    }
  }
}

void FormatItemNodeStyle.Selector.bind(binder:context:)(uint64_t a1, char *a2)
{
  v4 = v2;
  v50 = a1;
  v6 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatItemNodeAction(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v42 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54684(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v35 - v16;
  v49 = *(v4 + 80);
  v18 = *(v4 + 32);
  v48[0] = *(v4 + 16);
  v48[1] = v18;
  v19 = *(v4 + 64);
  v48[2] = *(v4 + 48);
  v48[3] = v19;
  if ((v49 & 0xFE) != 0x7E)
  {
    v20 = *&v48[0];
    if ((*&v48[0] & 0xF000000000000007) != 0xF000000000000007)
    {
      v41 = &v35 - v16;
      v46[0] = *&v48[0];
      sub_1D62B5354(v48, &v43, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
      sub_1D5CFCFAC(v20);
      FormatColor.bind(binder:context:)(v50, a2);
      if (v3)
      {

        sub_1D5D0ABCC(v48, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
        return;
      }

      sub_1D5D0ABCC(v48, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
      v17 = v41;
    }
  }

  v21 = *(v4 + 88);
  *(v45 + 9) = *(v4 + 129);
  v22 = *(v4 + 104);
  v43 = v21;
  v44 = v22;
  v45[0] = *(v4 + 120);
  if (BYTE8(v45[1]) > 1u)
  {
    goto LABEL_15;
  }

  v41 = a2;
  v23 = v43;
  v24 = *&v45[1];
  if (BYTE8(v45[1]))
  {
    if ((v43 & 0xF000000000000007) != 0xD000000000000007 && (v43 & 0xF000000000000007) != 0xF000000000000007)
    {
      v40 = v9;
      v34 = *(&v43 + 1);
      v47[0] = v43;
      v38 = *(&v44 + 1);
      v39 = v44;
      v36 = *(&v45[0] + 1);
      v37 = *&v45[0];
      sub_1D62B5354(&v43, v46, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
      sub_1D62B54E4(v23, v34, v39, v38, v37, v36, v24, 1);
      a2 = v41;
      FormatFloat.bind(binder:context:)(v50, v41);
      if (v3)
      {
        sub_1D5D0ABCC(&v43, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);

        return;
      }

      sub_1D5D0ABCC(&v43, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);

      v9 = v40;
      goto LABEL_15;
    }

LABEL_14:
    sub_1D5D0ABCC(&v43, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    a2 = v41;
    goto LABEL_15;
  }

  if ((*&v45[1] & 0xF000000000000007) == 0xD000000000000007)
  {
    goto LABEL_14;
  }

  v39 = *&v45[1] & 0xF000000000000007;
  v40 = v9;
  if ((~v43 & 0xF000000000000007) != 0)
  {
    v47[0] = v43;
    sub_1D62B5354(&v43, v46, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    sub_1D62B5354(&v43, v46, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    sub_1D5CFCFAC(v23);
    FormatColor.bind(binder:context:)(v50, v41);
    if (v3)
    {

      sub_1D5D0ABCC(&v43, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
      sub_1D5D0ABCC(&v43, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
      return;
    }
  }

  else
  {
    v25 = *(&v43 + 1);
    v37 = *(&v44 + 1);
    v38 = v44;
    v35 = *(&v45[0] + 1);
    v36 = *&v45[0];
    sub_1D62B5354(&v43, v46, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    sub_1D62B54E4(v23, v25, v38, v37, v36, v35, v24, 0);
  }

  a2 = v41;
  if (v39 == 0xF000000000000007)
  {
    sub_1D5D0ABCC(&v43, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    sub_1D5D0ABCC(&v43, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    v9 = v40;
  }

  else
  {
    v46[0] = v24;

    FormatFloat.bind(binder:context:)(v50, a2);

    sub_1D5D0ABCC(&v43, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    sub_1D5D0ABCC(&v43, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    if (v3)
    {
      return;
    }

    v9 = v40;
  }

LABEL_15:
  v26 = type metadata accessor for FormatItemNodeStyle.Selector(0);
  sub_1D5C00D70(v4 + *(v26 + 28), v17, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  if ((*(v11 + 48))(v17, 1, v10) == 1)
  {
    sub_1D5B6EF64(v17, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
    goto LABEL_20;
  }

  v27 = a2;
  v28 = v42;
  sub_1D62B50EC(v17, v42, type metadata accessor for FormatItemNodeAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 6)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D5D5E33C(v28, v9, type metadata accessor for FormatCommandOpenURL);
      a2 = v27;
      sub_1D5F86DA0(v27);
      if (!v3)
      {
        sub_1D62B51D0(v9, type metadata accessor for FormatCommandOpenURL);
        goto LABEL_19;
      }

      sub_1D62B51D0(v9, type metadata accessor for FormatCommandOpenURL);
    }

    else
    {
      sub_1D62B5F18(v28, v46);
      sub_1D62B5F18(v46, v47);
      a2 = v27;
      FormatItemNodeActionBinding.bind(binder:context:)(v50, v27);
      if (!v3)
      {
        sub_1D62B5F74(v46);
        goto LABEL_19;
      }

      sub_1D62B5F74(v46);
    }

    sub_1D62B51D0(v17, type metadata accessor for FormatItemNodeAction);
    return;
  }

  a2 = v27;
LABEL_19:
  sub_1D62B51D0(v17, type metadata accessor for FormatItemNodeAction);
LABEL_20:
  v30 = (v4 + *(v26 + 40));
  v31 = *v30;
  if (*v30 >= 4)
  {
    v32 = v30[1];
    sub_1D62B5DD0(*v30);
    v33 = v50;
    sub_1D620B270(v50, a2, v31);
    if (!v3)
    {
      sub_1D620B270(v33, a2, v32);
    }

    sub_1D62B5E14(v31, v32);
  }
}