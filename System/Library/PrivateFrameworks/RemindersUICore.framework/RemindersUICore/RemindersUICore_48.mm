void TTRReminderListPickerViewModel.allREMLists()(__n128 a1)
{
  v2 = sub_21DBF648C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  v29 = MEMORY[0x277D84F90];
  v22 = *(v6 + 16);
  if (v22)
  {
    v7 = 0;
    v21 = v6 + 32;
    v27 = v3 + 88;
    v28 = v3 + 16;
    v8 = *MEMORY[0x277D45028];
    v26 = *MEMORY[0x277D45020];
    v19 = (v3 + 96);
    v20 = v6;
    while (v7 < *(v6 + 16))
    {
      v25 = v7;
      v9 = *(v21 + 48 * v7 + 40);
      v10 = *(v9 + 16);
      sub_21DBF8E0C();
      if (v10)
      {
        v11 = 0;
        v23 = v10 - 1;
        do
        {
          v12 = v11;
          while (1)
          {
            if (v12 >= *(v9 + 16))
            {
              __break(1u);
              goto LABEL_19;
            }

            v11 = v12 + 1;
            (*(v3 + 16))(v5, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v2);
            v13 = (*(v3 + 88))(v5, v2);
            if (v13 == v8)
            {
              break;
            }

            if (v13 != v26)
            {
              goto LABEL_20;
            }

            (*(v3 + 8))(v5, v2);
            ++v12;
            if (v10 == v11)
            {
              goto LABEL_3;
            }
          }

          (*v19)(v5, v2);
          v24 = *v5;
          MEMORY[0x223D42D80]();
          if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v18 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();
        }

        while (v23 != v12);
      }

LABEL_3:
      v7 = v25 + 1;

      v6 = v20;
      if (v7 == v22)
      {
        return;
      }
    }

LABEL_19:
    __break(1u);
LABEL_20:
    if (qword_27CE569F8 != -1)
    {
      swift_once();
    }

    v14 = sub_21DBF84BC();
    __swift_project_value_buffer(v14, qword_27CE5DD80);
    v15 = MEMORY[0x277D84F90];
    v16 = sub_21D17716C(MEMORY[0x277D84F90]);
    v17 = sub_21D17716C(v15);
    sub_21DAEAB00("Unknown list type", 17, 2, v16, v17);
    __break(1u);
  }
}

void TTRReminderListPickerViewModel.listOrCustomSmartList(with:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v5 = sub_21DBF648C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v3;
  v31 = *(*v3 + 16);
  if (v31)
  {
    v29 = a2;
    v10 = 0;
    v32 = v9 + 32;
    v37 = v6 + 16;
    v36 = v6 + 88;
    v35 = *MEMORY[0x277D45028];
    v34 = *MEMORY[0x277D45020];
    v11 = (v6 + 96);
    v30 = v9;
    do
    {
      if (v10 >= *(v9 + 16))
      {
        goto LABEL_21;
      }

      v33 = v10;
      v12 = *(v32 + 48 * v10 + 40);
      v13 = *(v12 + 16);
      sub_21DBF8E0C();
      if (v13)
      {
        v14 = 0;
        while (v14 < *(v12 + 16))
        {
          (*(v6 + 16))(v8, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v5);
          v19 = (*(v6 + 88))(v8, v5);
          if (v19 == v35)
          {
            (*v11)(v8, v5);
            v15 = *v8;
            sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
            v16 = v15;
            v17 = [v16 objectID];
            v18 = sub_21DBFB63C();

            if (v18)
            {
              v23 = 0;
              goto LABEL_16;
            }
          }

          else
          {
            if (v19 != v34)
            {
              goto LABEL_22;
            }

            (*v11)(v8, v5);
            v20 = *v8;
            sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
            v16 = v20;
            v21 = [v16 objectID];
            v22 = sub_21DBFB63C();

            if (v22)
            {
              v23 = 1;
LABEL_16:

              goto LABEL_17;
            }
          }

          ++v14;

          if (v13 == v14)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        if (qword_27CE569F8 != -1)
        {
          swift_once();
        }

        v24 = sub_21DBF84BC();
        __swift_project_value_buffer(v24, qword_27CE5DD80);
        v25 = MEMORY[0x277D84F90];
        v26 = sub_21D17716C(MEMORY[0x277D84F90]);
        v27 = sub_21D17716C(v25);
        sub_21DAEAB00("Unknown list type", 17, 2, v26, v27);
        __break(1u);
        return;
      }

LABEL_3:
      v10 = v33 + 1;

      v9 = v30;
    }

    while (v10 != v31);
    v16 = 0;
    v23 = -1;
LABEL_17:
    a2 = v29;
  }

  else
  {
    v16 = 0;
    v23 = -1;
  }

  *a2 = v16;
  *(a2 + 8) = v23;
}

uint64_t sub_21D564C84(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DE10, &qword_27CE5DE08, &unk_21DC1B1D8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DE08, &unk_21DC1B1D8);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D564E24(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DDB0, &qword_27CE58698, &qword_21DC098A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58698, &qword_21DC098A0);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &qword_280D0C300, 0x277D751E0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D564FC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DE40, &qword_27CE5DE38, &unk_21DC1B1F0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DE38, &unk_21DC1B1F0);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D565164(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DEB0, &qword_27CE58858, &unk_21DC09AA0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858, &unk_21DC09AA0);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D565304(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DF88, &qword_27CE5DF80, &qword_21DC09CB0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80, &qword_21DC09CB0);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D5654A4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DFC0, &qword_27CE5DFB8, &unk_21DC1B270);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DFB8, &unk_21DC1B270);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &qword_280D17690, 0x277D44660);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D565644(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DFA8, &qword_27CE5DFA0, &qword_21DC1B268);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DFA0, &qword_21DC1B268);
            v9 = sub_21D198E24(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D4D0, &qword_21DC1B260);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D5657E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_280D0C390, &qword_27CE5DF98, &qword_21DC1B258);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF98, &qword_21DC1B258);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &unk_280D0C2F0, 0x277D75B48);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D565980(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&qword_27CE5DF68, &qword_27CE5DF60, &qword_21DC1B240);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF60, &qword_21DC1B240);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &qword_280D177D0, 0x277CCAAD0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D565B20(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DF50, &qword_27CE5DF48, &qword_21DC1B238);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF48, &qword_21DC1B238);
            v9 = sub_21D198EA4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF40, &qword_21DC1B230);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D565CBC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DDF8, &qword_27CE5DDF0, &qword_21DC1B1D0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DDF0, &qword_21DC1B1D0);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &qword_280D0C290, 0x277D44658);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D565E5C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&qword_27CE5DED8, &qword_27CE5DED0, &unk_21DC1B220);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DED0, &unk_21DC1B220);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &qword_280D0C2E8, 0x277CC34B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D565FFC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DEC0, &qword_27CE5C840, &unk_21DC1FEA0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C840, &unk_21DC1FEA0);
            v9 = sub_21D198E24(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21DBF902C();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D56618C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&qword_27CE5DE70, &qword_27CE5DE68, &qword_21DC1B208);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DE68, &qword_21DC1B208);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &qword_280D17640, 0x277D447E8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D56632C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DEA0, &qword_27CE5DE98, &qword_21DC31DA0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DE98, &qword_21DC31DA0);
            v9 = sub_21D198DA4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &qword_27CE5DE90, 0x277D75720);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D5664CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DE28, &qword_27CE5DE20, &qword_21DC1B1E8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DE20, &qword_21DC1B1E8);
            v9 = sub_21D198F2C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for TTRITableSection();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D56665C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&qword_27CE5DE88, &qword_27CE5DE80, &unk_21DC1B210);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DE80, &unk_21DC1B210);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &qword_27CE5DE78, 0x277D75090);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D5667FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DDE0, &qword_27CE5DDD8, &qword_21DC1B1C8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DDD8, &qword_21DC1B1C8);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &qword_27CE5DDD0, 0x277D44548);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D56699C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DE58, &qword_27CE5DE50, &qword_21DC1B200);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DE50, &qword_21DC1B200);
            v9 = sub_21D198E24(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D4C0, &unk_21DC19870);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s15RemindersUICore30TTRReminderListPickerViewModelV011CustomSmartD9PredicateO2eeoiySbAE_AEtFZ_0(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v3 >= 2)
    {
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      sub_21D568328(v3);
      sub_21D568328(v2);
      v4 = sub_21DBFB63C();
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 1)
  {
LABEL_8:
    sub_21D568328(*a2);
    sub_21D568328(v2);
    v4 = 0;
    goto LABEL_10;
  }

  v2 = 1;
  v4 = 1;
LABEL_10:
  sub_21D22BF80(v2);
  sub_21D22BF80(v3);
  return v4 & 1;
}

uint64_t _s15RemindersUICore30TTRReminderListPickerViewModelV0D0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  v3 = *(a1 + 144);
  v67 = *(a1 + 160);
  v68 = v2;
  v4 = *(a1 + 176);
  v69[0] = *(a1 + 192);
  *(v69 + 10) = *(a1 + 202);
  v5 = *(a1 + 112);
  v6 = *(a1 + 80);
  v63 = *(a1 + 96);
  v64 = v5;
  v7 = *(a1 + 112);
  v8 = *(a1 + 144);
  v65 = *(a1 + 128);
  v66 = v8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 16);
  v59 = *(a1 + 32);
  v60 = v9;
  v11 = *(a1 + 48);
  v12 = *(a1 + 80);
  v61 = *(a1 + 64);
  v62 = v12;
  v13 = *(a1 + 16);
  v58[0] = *a1;
  v58[1] = v13;
  v14 = *(a2 + 176);
  v15 = *(a2 + 144);
  v79 = *(a2 + 160);
  v80 = v14;
  v16 = *(a2 + 176);
  v81[0] = *(a2 + 192);
  *(v81 + 10) = *(a2 + 202);
  v17 = *(a2 + 112);
  v18 = *(a2 + 80);
  v75 = *(a2 + 96);
  v76 = v17;
  v19 = *(a2 + 112);
  v20 = *(a2 + 144);
  v77 = *(a2 + 128);
  v78 = v20;
  v21 = *(a2 + 48);
  v22 = *(a2 + 16);
  v71 = *(a2 + 32);
  v72 = v21;
  v23 = *(a2 + 48);
  v24 = *(a2 + 80);
  v73 = *(a2 + 64);
  v74 = v24;
  v25 = *(a2 + 16);
  v70[0] = *a2;
  v70[1] = v25;
  v55 = v67;
  v56 = v4;
  v57[0] = *(a1 + 192);
  *(v57 + 10) = *(a1 + 202);
  v51 = v63;
  v52 = v7;
  v53 = v65;
  v54 = v3;
  v47 = v59;
  v48 = v11;
  v49 = v61;
  v50 = v6;
  v45 = v58[0];
  v46 = v10;
  v42 = v79;
  v43 = v16;
  v44[0] = *(a2 + 192);
  *(v44 + 10) = *(a2 + 202);
  v38 = v75;
  v39 = v19;
  v40 = v77;
  v41 = v15;
  v34 = v71;
  v35 = v23;
  v36 = v73;
  v37 = v18;
  v26 = *(a1 + 218);
  v27 = *(a1 + 219);
  v28 = *(a2 + 218);
  v29 = *(a2 + 219);
  v32 = v70[0];
  v33 = v22;
  sub_21D567868(v58, v84);
  sub_21D567868(v70, v84);
  v30 = _s15RemindersUICore25TTRAccountsListsViewModelC4ListV2eeoiySbAE_AEtFZ_0(&v45, &v32);
  v82[10] = v42;
  v82[11] = v43;
  v83[0] = v44[0];
  *(v83 + 10) = *(v44 + 10);
  v82[6] = v38;
  v82[7] = v39;
  v82[8] = v40;
  v82[9] = v41;
  v82[2] = v34;
  v82[3] = v35;
  v82[4] = v36;
  v82[5] = v37;
  v82[0] = v32;
  v82[1] = v33;
  sub_21D1077D8(v82);
  v84[10] = v55;
  v84[11] = v56;
  v85[0] = v57[0];
  *(v85 + 10) = *(v57 + 10);
  v84[6] = v51;
  v84[7] = v52;
  v84[8] = v53;
  v84[9] = v54;
  v84[2] = v47;
  v84[3] = v48;
  v84[4] = v49;
  v84[5] = v50;
  v84[0] = v45;
  v84[1] = v46;
  sub_21D1077D8(v84);
  return v30 & ~(v26 ^ v28) & ~(v27 ^ v29) & 1;
}

uint64_t _s15RemindersUICore30TTRReminderListPickerViewModelV13SectionHeaderO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      v20 = v3 == v8 && v2 == v7;
      if (v20 || (sub_21DBFC64C() & 1) != 0)
      {
        if (v5 != v10 || v4 != v9)
        {
          v14 = sub_21DBFC64C();
          sub_21D1B201C(v8, v7, v10, v9, 0);
          sub_21D1B201C(v3, v2, v5, v4, 0);
          sub_21D1B2084(v3, v2, v5, v4, 0);
          v15 = v8;
          v16 = v7;
          v17 = v10;
          v18 = v9;
          v19 = 0;
          goto LABEL_26;
        }

        sub_21D1B201C(v8, v7, v5, v4, 0);
        sub_21D1B201C(v3, v2, v5, v4, 0);
        sub_21D1B2084(v3, v2, v5, v4, 0);
        v30 = v8;
        v31 = v7;
        v32 = v5;
        v33 = v4;
        v34 = 0;
        goto LABEL_32;
      }

      sub_21D1B201C(v8, v7, v10, v9, 0);
      sub_21D1B201C(v3, v2, v5, v4, 0);
      sub_21D1B2084(v3, v2, v5, v4, 0);
      v25 = v8;
      v26 = v7;
      v27 = v10;
      v28 = v9;
      v29 = 0;
LABEL_28:
      sub_21D1B2084(v25, v26, v27, v28, v29);
      return 0;
    }

    goto LABEL_27;
  }

  if (v6 == 1)
  {
    if (v11 == 1)
    {
      v12 = *a1;
      if (v3 != v8 || v2 != v7)
      {
        v14 = sub_21DBFC64C();
        sub_21D1B201C(v8, v7, v10, v9, 1u);
        sub_21D1B201C(v3, v2, v5, v4, 1u);
        sub_21D1B2084(v3, v2, v5, v4, 1u);
        v15 = v8;
        v16 = v7;
        v17 = v10;
        v18 = v9;
        v19 = 1;
LABEL_26:
        sub_21D1B2084(v15, v16, v17, v18, v19);
        return v14 & 1;
      }

      sub_21D1B201C(v12, v2, v10, v9, 1u);
      sub_21D1B201C(v3, v2, v5, v4, 1u);
      sub_21D1B2084(v3, v2, v5, v4, 1u);
      v30 = v3;
      v31 = v2;
      v32 = v10;
      v33 = v9;
      v34 = 1;
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  if (v11 != 2)
  {
LABEL_27:
    sub_21D1B201C(*a2, *(a2 + 8), v10, v9, v11);
    sub_21D1B201C(v3, v2, v5, v4, v6);
    sub_21D1B2084(v3, v2, v5, v4, v6);
    v25 = v8;
    v26 = v7;
    v27 = v10;
    v28 = v9;
    v29 = v11;
    goto LABEL_28;
  }

  v22 = *a1;
  if (v3 != v8 || v2 != v7)
  {
    v14 = sub_21DBFC64C();
    sub_21D1B201C(v8, v7, v10, v9, 2u);
    sub_21D1B201C(v3, v2, v5, v4, 2u);
    sub_21D1B2084(v3, v2, v5, v4, 2u);
    v15 = v8;
    v16 = v7;
    v17 = v10;
    v18 = v9;
    v19 = 2;
    goto LABEL_26;
  }

  sub_21D1B201C(v22, v2, v10, v9, 2u);
  sub_21D1B201C(v3, v2, v5, v4, 2u);
  sub_21D1B2084(v3, v2, v5, v4, 2u);
  v30 = v3;
  v31 = v2;
  v32 = v10;
  v33 = v9;
  v34 = 2;
LABEL_32:
  sub_21D1B2084(v30, v31, v32, v33, v34);
  return 1;
}

uint64_t _s15RemindersUICore30TTRReminderListPickerViewModelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  v3 = a1[1];
  v4 = a2[1];
  if (sub_21D1D6200(*a1, *a2, a3))
  {
    if (v3)
    {
      if (v4)
      {
        sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        v5 = v4;
        v6 = v3;
        v7 = sub_21DBFB63C();

        if (v7)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_21D56730C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  v11 = *(a1 + 32);
  v12 = *(a2 + 32);
  v20 = *a1;
  v21 = v2;
  v22 = v3;
  v23 = v4;
  v24 = v11;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v12;
  sub_21D1B201C(v20, v2, v3, v4, v11);
  sub_21D1B201C(v6, v7, v8, v9, v12);
  LOBYTE(v6) = _s15RemindersUICore30TTRReminderListPickerViewModelV13SectionHeaderO2eeoiySbAE_AEtFZ_0(&v20, &v15);
  sub_21D1B2084(v15, v16, v17, v18, v19);
  v13.n128_f64[0] = sub_21D1B2084(v20, v21, v22, v23, v24);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  return sub_21D1D6B8C(v5, v10, v13);
}

void sub_21D567410(__n128 a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_21DBF648C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *a3;
  v8 = MEMORY[0x277D84F90];
  v32 = MEMORY[0x277D84F90];
  v33 = MEMORY[0x277D84F90];
  v9 = sub_21DBF64AC();
  v10 = *(v9 + 16);
  if (!v10)
  {
    v27 = v8;
LABEL_21:

    if (v27 >> 62)
    {
LABEL_26:
      if (sub_21DBFBD7C())
      {
        return;
      }
    }

    else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    return;
  }

  v11 = 0;
  v30 = v5 + 88;
  v31 = v5 + 16;
  v29 = *MEMORY[0x277D45028];
  v12 = (v5 + 96);
  v25 = *MEMORY[0x277D45020];
  v27 = v8;
  v28 = v10;
  v24 = v10 - 1;
  while (1)
  {
    v13 = v11;
    while (1)
    {
      if (v13 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      v11 = v13 + 1;
      (*(v5 + 16))(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v4);
      v14 = (*(v5 + 88))(v7, v4);
      if (v14 != v29)
      {
        break;
      }

      (*v12)(v7, v4);
      v15 = *v7;
      MEMORY[0x223D42D80]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();

      ++v13;
      if (v28 == v11)
      {
        goto LABEL_21;
      }
    }

    if (v14 != v25)
    {
      break;
    }

    (*v12)(v7, v4);
    v16 = *v7;
    if (v26 && (v26 == 1 || (v23[1] = sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8), v23[0] = [v16 accountID], v17 = sub_21DBFB63C(), v23[0], (v17 & 1) == 0)))
    {
    }

    else
    {
      v18 = v16;
      MEMORY[0x223D42D80]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();

      v27 = v32;
    }

    if (v24 == v13)
    {
      goto LABEL_21;
    }
  }

  if (qword_27CE569F8 != -1)
  {
    swift_once();
  }

  v19 = sub_21DBF84BC();
  __swift_project_value_buffer(v19, qword_27CE5DD80);
  v20 = MEMORY[0x277D84F90];
  v21 = sub_21D17716C(MEMORY[0x277D84F90]);
  v22 = sub_21D17716C(v20);
  sub_21DAEAB00("Unknown list type", 17, 2, v21, v22);
  __break(1u);
}

double sub_21D56781C(uint64_t a1, uint64_t a2, char a3)
{

  if (a3)
  {
  }

  return result;
}

void destroy for TTRReminderListPickerViewModel(uint64_t a1)
{

  v2 = *(a1 + 8);
}

uint64_t *assignWithCopy for TTRReminderListPickerViewModel(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  v4 = a1[1];
  v5 = a2[1];
  a1[1] = v5;
  v6 = v5;

  return a1;
}

uint64_t assignWithTake for TTRReminderListPickerViewModel(uint64_t a1, _OWORD *a2)
{

  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t initializeWithCopy for TTRReminderListPickerViewModel.List(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);
  v10 = *(a2 + 88);
  v11 = *(a2 + 96);
  v12 = *(a2 + 104);
  v22 = *(a2 + 112);
  v21 = *(a2 + 120);
  v13 = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21D0FB960(v8, v9, v10, v11, v12, v22, v21);
  *(a1 + 72) = v8;
  *(a1 + 80) = v9;
  *(a1 + 88) = v10;
  *(a1 + 96) = v11;
  *(a1 + 104) = v12;
  *(a1 + 112) = v22;
  *(a1 + 120) = v21;
  v14 = *(a2 + 128);
  v15 = *(a2 + 136);
  LOBYTE(v7) = *(a2 + 144);
  sub_21D0FB9BC(v14, v15, v7);
  *(a1 + 128) = v14;
  *(a1 + 136) = v15;
  *(a1 + 144) = v7;
  *(a1 + 145) = *(a2 + 145);
  *(a1 + 152) = *(a2 + 152);
  v16 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v16;
  v17 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v17;
  v18 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v18;
  *(a1 + 216) = *(a2 + 216);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v19 = v17;
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRReminderListPickerViewModel.List(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  sub_21DBF8E0C();

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  sub_21DBF8E0C();

  v7 = *(a2 + 72);
  v8 = *(a2 + 80);
  v9 = *(a2 + 88);
  v10 = *(a2 + 96);
  v11 = *(a2 + 104);
  v12 = *(a2 + 112);
  v13 = *(a2 + 120);
  sub_21D0FB960(v7, v8, v9, v10, v11, v12, v13);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  v17 = *(a1 + 96);
  v18 = *(a1 + 104);
  v19 = *(a1 + 112);
  v20 = *(a1 + 120);
  *(a1 + 72) = v7;
  *(a1 + 80) = v8;
  *(a1 + 88) = v9;
  *(a1 + 96) = v10;
  *(a1 + 104) = v11;
  *(a1 + 112) = v12;
  *(a1 + 120) = v13;
  sub_21D1078C0(v14, v15, v16, v17, v18, v19, v20);
  v21 = *(a2 + 128);
  v22 = *(a2 + 136);
  LOBYTE(v9) = *(a2 + 144);
  sub_21D0FB9BC(v21, v22, v9);
  v23 = *(a1 + 128);
  v24 = *(a1 + 136);
  v25 = *(a1 + 144);
  *(a1 + 128) = v21;
  *(a1 + 136) = v22;
  *(a1 + 144) = v9;
  sub_21D0FB9F4(v23, v24, v25);
  *(a1 + 145) = *(a2 + 145);
  *(a1 + 146) = *(a2 + 146);
  *(a1 + 147) = *(a2 + 147);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  sub_21DBF8E0C();

  *(a1 + 176) = *(a2 + 176);
  sub_21DBF8E0C();

  *(a1 + 184) = *(a2 + 184);
  sub_21DBF8E0C();

  v26 = *(a1 + 192);
  v27 = *(a2 + 192);
  *(a1 + 192) = v27;
  v28 = v27;

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  sub_21DBF8E0C();

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 218) = *(a2 + 218);
  *(a1 + 219) = *(a2 + 219);
  return a1;
}

__n128 __swift_memcpy220_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t assignWithTake for TTRReminderListPickerViewModel.List(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;

  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;

  v8 = *(a2 + 120);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  v14 = *(a1 + 112);
  v15 = *(a1 + 120);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = v8;
  sub_21D1078C0(v9, v10, v11, v12, v13, v14, v15);
  v16 = *(a2 + 144);
  v17 = *(a1 + 128);
  v18 = *(a1 + 136);
  v19 = *(a1 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v16;
  sub_21D0FB9F4(v17, v18, v19);
  *(a1 + 145) = *(a2 + 145);
  *(a1 + 146) = *(a2 + 146);
  *(a1 + 147) = *(a2 + 147);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 168) = *(a2 + 168);

  v20 = *(a1 + 192);
  *(a1 + 184) = *(a2 + 184);

  v21 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v21;

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 218) = *(a2 + 218);
  *(a1 + 219) = *(a2 + 219);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderListPickerViewModel.List(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 220))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderListPickerViewModel.List(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 216) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 220) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 220) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for TTRReminderListPickerViewModel.SectionHeader(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_21D1B201C(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for TTRReminderListPickerViewModel.SectionHeader(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_21D1B201C(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  sub_21D1B2084(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t assignWithTake for TTRReminderListPickerViewModel.SectionHeader(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  sub_21D1B2084(v4, v6, v5, v7, v9);
  return a1;
}

double destroy for TTRReminderListPickerViewModel.Section(uint64_t a1)
{
  sub_21D1B2084(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));

  return result;
}

uint64_t initializeWithCopy for TTRReminderListPickerViewModel.Section(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  sub_21D1B201C(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRReminderListPickerViewModel.Section(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  sub_21D1B201C(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v13 = *(a1 + 32);
  *(a1 + 32) = v8;
  sub_21D1B2084(v9, v10, v11, v12, v13);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRReminderListPickerViewModel.Section(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  v10 = *(a1 + 32);
  *(a1 + 32) = v4;
  sub_21D1B2084(v5, v6, v7, v8, v10);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderListPickerViewModel.Section(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderListPickerViewModel.Section(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_21D568328(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_21D568338(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v5);
    atomic_store(result, a1);
  }

  return result;
}

double sub_21D5683A0@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = type metadata accessor for TTREditSectionsChangeItem.Storage();
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  a1[3] = v7;
  *a1 = v8;
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  sub_21DBF8E0C();
  return result;
}

uint64_t TTREditSectionsChangeItem.Storage.deinit()
{

  return v0;
}

uint64_t TTREditSectionsChangeItem.Storage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TTREditSectionsChangeItem.storage.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  swift_beginAccess();
  v2 = *(v0 + 40);
  swift_beginAccess();
  v3 = *(v0 + 48);
  swift_beginAccess();
  v4 = *(v0 + 56);
  type metadata accessor for TTREditSectionsChangeItem.Storage();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return v5;
}

double TTREditSectionsChangeItem.sectionNames.getter()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

double TTREditSectionsChangeItem.sectionNames.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;

  return result;
}

double TTREditSectionsChangeItem.orderedSectionIDs.getter()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

double TTREditSectionsChangeItem.orderedSectionIDs.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;

  return result;
}

double TTREditSectionsChangeItem.initialOrderedSectionIDs.getter()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

double TTREditSectionsChangeItem.initialOrderedSectionIDs.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

uint64_t TTREditSectionsChangeItem.__allocating_init(saveRequest:listID:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  *(v4 + 32) = MEMORY[0x277D84F90];
  *(v4 + 40) = v5;
  *(v4 + 48) = v5;
  *(v4 + 56) = 1;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v6 = qword_280D1AA10;
  v7 = a1;
  v8 = a2;
  if (v6 != -1)
  {
    swift_once();
  }

  v9 = TTRUserDefaults.shouldHideEmptySectionsInGroceryOrAutoCategorizingList(with:)(v8);

  swift_beginAccess();
  *(v4 + 56) = v9 & 1;
  return v4;
}

uint64_t TTREditSectionsChangeItem.init(saveRequest:listID:)(void *a1, void *a2)
{
  v3 = v2;
  v5 = MEMORY[0x277D84F90];
  *(v3 + 56) = 1;
  *(v3 + 32) = v5;
  *(v3 + 40) = v5;
  *(v3 + 48) = v5;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v6 = qword_280D1AA10;
  v7 = a1;
  v8 = a2;
  if (v6 != -1)
  {
    swift_once();
  }

  v9 = TTRUserDefaults.shouldHideEmptySectionsInGroceryOrAutoCategorizingList(with:)(v8);

  swift_beginAccess();
  *(v3 + 56) = v9 & 1;
  return v3;
}

uint64_t TTREditSectionsChangeItem.deinit()
{

  return v0;
}

uint64_t TTREditSectionsChangeItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_21D568BC0()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

double sub_21D568C04(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  *(v3 + 32) = a1;

  return result;
}

double sub_21D568CA4()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

uint64_t sub_21D568CE8()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 56);
}

uint64_t _s15RemindersUICore25TTREditSectionsChangeItemC7StorageC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_21D1D57A4(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!v4)
    {
      goto LABEL_12;
    }

    sub_21DBF8E0C();
    v5 = sub_21DBF8E0C();
    v6 = sub_21D1D7450(v5, v4);

    if ((v6 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v4)
  {
    goto LABEL_12;
  }

  v7 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (v7)
    {
      sub_21DBF8E0C();
      v8 = sub_21DBF8E0C();
      v9 = sub_21D1D7450(v8, v7);

      if (v9)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    v10 = 0;
    return v10 & 1;
  }

  if (v7)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = *(a1 + 40) ^ *(a2 + 40) ^ 1;
  return v10 & 1;
}

unint64_t sub_21D568E18()
{
  result = qword_27CE5DFD0;
  if (!qword_27CE5DFD0)
  {
    v3 = type metadata accessor for TTREditSectionsChangeItem.Storage();
    result = swift_getWitnessTable(protocol conformance descriptor for TTREditSectionsChangeItem.Storage, v3, v0, v1);
    atomic_store(result, &qword_27CE5DFD0);
  }

  return result;
}

RemindersUICore::TTRRemindersListEditingAttribute_optional __swiftcall TTRRemindersListEditingAttribute.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TTRRemindersListEditingAttribute.rawValue.getter()
{
  v1 = 0x7365746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x7367617468736168;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_21D568FB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7365746F6ELL;
  if (v2 != 1)
  {
    v5 = 0x7367617468736168;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x656C746974;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x7365746F6ELL;
  if (*a2 != 1)
  {
    v8 = 0x7367617468736168;
    v3 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C746974;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21DBFC64C();
  }

  return v11 & 1;
}

uint64_t sub_21D5690AC()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

double sub_21D569148(uint64_t a1)
{
  sub_21DBFA27C();

  return result;
}

uint64_t sub_21D5691D0(uint64_t a1)
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

void sub_21D569274(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7365746F6ELL;
  if (v2 != 1)
  {
    v5 = 0x7367617468736168;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C746974;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t TTRRemindersListEditingReminderCreationOptions.initialPropertyValueProvider.getter()
{
  v1 = *v0;
  sub_21D0D0E78(*v0, v0[1]);
  return v1;
}

uint64_t TTRRemindersListEditingReminderCreationOptions.init(initialPropertyValueProvider:startsEditing:animated:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 17) = a4;
  return result;
}

uint64_t TTRReminderCellPropertyEditingPresenterType.loggingDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ObjectType = swift_getObjectType();
  swift_getMetatypeMetadata();
  v10 = sub_21DBFA1AC();
  ObjectType = 0;
  v16 = 0xE000000000000000;
  MEMORY[0x223D42AA0](v10);

  MEMORY[0x223D42AA0](40, 0xE100000000000000);
  (*(a2 + 8))(&v14, a1, a2);
  sub_21DBFC14C();
  MEMORY[0x223D42AA0](8236, 0xE200000000000000);
  (*(a2 + 16))(a1, a2);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v6);
  sub_21D106978(v9, type metadata accessor for TTRRemindersListViewModel.Item);
  v11 = TTRRemindersListViewModel.ItemID.description.getter();
  MEMORY[0x223D42AA0](v11);

  sub_21D106978(v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  return ObjectType;
}

unint64_t sub_21D569528()
{
  result = qword_27CE5DFD8;
  if (!qword_27CE5DFD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListEditingAttribute, &type metadata for TTRRemindersListEditingAttribute, v0, v1);
    atomic_store(result, &qword_27CE5DFD8);
  }

  return result;
}

uint64_t dispatch thunk of TTRReminderCellPropertyEditingPresenterManaging.request(autoCompleteReminderWithTitle:listScope:baseLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 80) + **(a7 + 80));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_21D22C140;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

void *destroy for TTRRemindersListEditingReminderCreationOptions(void *result)
{
  if (*result)
  {
  }

  return result;
}

uint64_t sub_21D56984C(uint64_t result, uint64_t a2)
{
  if (*a2)
  {
    v3 = *(a2 + 8);
    *result = *a2;
    *(result + 8) = v3;
    v4 = result;

    result = v4;
  }

  else
  {
    *result = *a2;
  }

  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t assignWithCopy for TTRRemindersListEditingReminderCreationOptions(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (!*a1)
  {
    if (v4)
    {
      v6 = a2[1];
      *a1 = v4;
      *(a1 + 8) = v6;

      goto LABEL_8;
    }

LABEL_7:
    *a1 = *a2;
    goto LABEL_8;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = a2[1];
  *a1 = v4;
  *(a1 + 8) = v5;

LABEL_8:
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

_OWORD *assignWithTake for TTRRemindersListEditingReminderCreationOptions(_OWORD *result, uint64_t *a2)
{
  v3 = *a2;
  if (*result)
  {
    if (v3)
    {
      v4 = a2[1];
      *result = v3;
      *(result + 1) = v4;
      v5 = result;

      result = v5;
    }

    else
    {
      v7 = result;

      result = v7;
      *v7 = *a2;
    }
  }

  else if (v3)
  {
    v6 = a2[1];
    *result = v3;
    *(result + 1) = v6;
  }

  else
  {
    *result = *a2;
  }

  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListEditingReminderCreationOptions(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListEditingReminderCreationOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t TTRIRemindersListCellPresentationStates.init(isMultiSelectMode:hasActiveDragAndDrop:editingItemID:popoverItemID:infoButtonStates:cellQuickBarStates:itemIDsWithPonderingTextEffect:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v22 = *a5;
  v21 = *(a5 + 1);
  v25 = *a6;
  v24 = *(a6 + 1);
  v13 = type metadata accessor for TTRIRemindersListCellPresentationStates(0);
  v14 = v13[6];
  v15 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v16 = *(*(v15 - 8) + 56);
  v16(&a8[v14], 1, 1, v15);
  v17 = v13[7];
  v16(&a8[v17], 1, 1, v15);
  *a8 = a1;
  a8[1] = a2;
  sub_21D322950(a3, &a8[v14]);
  result = sub_21D322950(a4, &a8[v17]);
  v19 = &a8[v13[8]];
  *v19 = v22;
  *(v19 + 1) = v21;
  v20 = &a8[v13[9]];
  *v20 = v25;
  *(v20 + 1) = v24;
  *&a8[v13[10]] = a7;
  return result;
}

uint64_t type metadata accessor for TTRIRemindersListCellPresentationStates(uint64_t a1)
{
  result = qword_280D0F6A8;
  if (!qword_280D0F6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTRIRemindersListCellPresentationStates.editingItemID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRIRemindersListCellPresentationStates(0) + 24);

  return sub_21D569DB4(v3, a1);
}

uint64_t sub_21D569DB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TTRIRemindersListCellPresentationStates.editingItemID.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTRIRemindersListCellPresentationStates(0) + 24);

  return sub_21D322950(a1, v3);
}

uint64_t TTRIRemindersListCellPresentationStates.popoverItemID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRIRemindersListCellPresentationStates(0) + 28);

  return sub_21D569DB4(v3, a1);
}

uint64_t TTRIRemindersListCellPresentationStates.popoverItemID.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTRIRemindersListCellPresentationStates(0) + 28);

  return sub_21D322950(a1, v3);
}

double TTRIRemindersListCellPresentationStates.infoButtonStates.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRIRemindersListCellPresentationStates(0) + 32);
  v4 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v4;

  sub_21DBF8E0C();
  return result;
}

void TTRIRemindersListCellPresentationStates.infoButtonStates.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = v1 + *(type metadata accessor for TTRIRemindersListCellPresentationStates(0) + 32);

  *v4 = v2;
  *(v4 + 8) = v3;
}

double TTRIRemindersListCellPresentationStates.cellQuickBarStates.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRIRemindersListCellPresentationStates(0) + 36);
  v4 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v4;

  sub_21DBF8E0C();
  return result;
}

void TTRIRemindersListCellPresentationStates.cellQuickBarStates.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = v1 + *(type metadata accessor for TTRIRemindersListCellPresentationStates(0) + 36);

  *v4 = v2;
  *(v4 + 8) = v3;
}

double TTRIRemindersListCellPresentationStates.itemIDsWithPonderingTextEffect.getter()
{
  type metadata accessor for TTRIRemindersListCellPresentationStates(0);

  sub_21DBF8E0C();
  return result;
}

void TTRIRemindersListCellPresentationStates.itemIDsWithPonderingTextEffect.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRIRemindersListCellPresentationStates(0) + 40);

  *(v1 + v3) = a1;
}

uint64_t TTRIRemindersListCellPresentationStates.isUserInteractionEnabledForItems.getter()
{
  if (*v0)
  {
    return 0;
  }

  else
  {
    return (v0[1] ^ 1) & 1;
  }
}

uint64_t _s15RemindersUICore39TTRIRemindersListCellPresentationStatesV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0, &unk_21DC0F9C0);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  if (__PAIR64__(a1[1], *a1) != __PAIR64__(a2[1], *a2))
  {
    goto LABEL_16;
  }

  v20 = type metadata accessor for TTRIRemindersListCellPresentationStates(0);
  v55 = a2;
  v21 = a1;
  v53 = v20;
  v54 = a1;
  v22 = *(v20 + 24);
  v23 = *(v14 + 48);
  sub_21D569DB4(&v21[v22], v19);
  sub_21D569DB4(&v55[v22], &v19[v23]);
  v24 = *(v5 + 48);
  if (v24(v19, 1, v4) == 1)
  {
    if (v24(&v19[v23], 1, v4) == 1)
    {
      sub_21D0CF7E0(v19, &qword_27CE5FB90, &unk_21DC09290);
      goto LABEL_9;
    }

LABEL_7:
    v25 = v19;
LABEL_15:
    sub_21D0CF7E0(v25, &qword_27CE5F2E0, &unk_21DC0F9C0);
    goto LABEL_16;
  }

  sub_21D569DB4(v19, v13);
  if (v24(&v19[v23], 1, v4) == 1)
  {
    sub_21D371B14(v13);
    goto LABEL_7;
  }

  sub_21D241B94(&v19[v23], v7);
  v26 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v13, v7);
  sub_21D371B14(v7);
  sub_21D371B14(v13);
  sub_21D0CF7E0(v19, &qword_27CE5FB90, &unk_21DC09290);
  if ((v26 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v27 = v53;
  v28 = v24;
  v29 = v53[7];
  v30 = *(v14 + 48);
  sub_21D569DB4(&v54[v29], v16);
  v31 = &v55[v29];
  v32 = v55;
  sub_21D569DB4(v31, &v16[v30]);
  if (v28(v16, 1, v4) != 1)
  {
    sub_21D569DB4(v16, v10);
    if (v28(&v16[v30], 1, v4) != 1)
    {
      sub_21D241B94(&v16[v30], v7);
      v35 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v10, v7);
      sub_21D371B14(v7);
      sub_21D371B14(v10);
      sub_21D0CF7E0(v16, &qword_27CE5FB90, &unk_21DC09290);
      if ((v35 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    sub_21D371B14(v10);
    goto LABEL_14;
  }

  if (v28(&v16[v30], 1, v4) != 1)
  {
LABEL_14:
    v25 = v16;
    goto LABEL_15;
  }

  sub_21D0CF7E0(v16, &qword_27CE5FB90, &unk_21DC09290);
LABEL_19:
  v36 = v27[8];
  v37 = &v54[v36];
  v38 = v54[v36];
  v39 = &v32[v36];
  if (v38 == *v39)
  {
    v40 = *(v39 + 1);
    v41 = *(v37 + 1);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21D370F3C(v41, v40);
    v43 = v42;

    if (v43)
    {
      v44 = v27[9];
      v45 = &v54[v44];
      v46 = v54[v44];
      v47 = &v32[v44];
      if (v46 == *v47)
      {
        v48 = *(v47 + 1);
        v49 = *(v45 + 1);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D370F60(v49, v48);
        v51 = v50;

        if (v51)
        {
          sub_21D320EEC(*&v54[v27[10]], *&v32[v27[10]]);
          return v33 & 1;
        }
      }
    }
  }

LABEL_16:
  v33 = 0;
  return v33 & 1;
}

void *initializeBufferWithCopyOfBuffer for TTRIRemindersListCellPresentationStates(_WORD *a1, _WORD *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    *a1 = *a2;
    v7 = a3[6];
    v8 = (a1 + v7);
    v9 = (a2 + v7);
    v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    if (v12(v9, 1, v10))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
      memcpy(v8, v9, *(*(v13 - 8) + 64));
      goto LABEL_50;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v24 = *v9;
      *v8 = *v9;
      v25 = v24;
LABEL_48:
      swift_storeEnumTagMultiPayload();
      goto LABEL_49;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        memcpy(v8, v9, *(v11 + 64));
LABEL_49:
        (*(v11 + 56))(v8, 0, 1, v10);
LABEL_50:
        v35 = a3[7];
        v36 = (v4 + v35);
        v37 = (a2 + v35);
        if (v12((a2 + v35), 1, v10))
        {
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
          memcpy(v36, v37, *(*(v38 - 8) + 64));
LABEL_99:
          v63 = a3[8];
          v64 = a3[9];
          v65 = v4 + v63;
          v66 = a2 + v63;
          *v65 = *v66;
          *(v65 + 1) = *(v66 + 1);
          v67 = v4 + v64;
          v68 = a2 + v64;
          *v67 = *v68;
          *(v67 + 1) = *(v68 + 1);
          *(v4 + a3[10]) = *(a2 + a3[10]);
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          return v4;
        }

        v39 = swift_getEnumCaseMultiPayload();
        if (v39 == 2)
        {
          v48 = *v37;
          *v36 = *v37;
          v49 = v48;
          goto LABEL_97;
        }

        if (v39 != 1)
        {
          if (v39)
          {
            memcpy(v36, v37, *(v11 + 64));
LABEL_98:
            (*(v11 + 56))(v36, 0, 1, v10);
            goto LABEL_99;
          }

          v40 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v41 = swift_getEnumCaseMultiPayload();
          if (v41 > 4)
          {
            if (v41 <= 7)
            {
              if (v41 == 5 || v41 == 6)
              {
                goto LABEL_73;
              }

              goto LABEL_84;
            }

            if (v41 != 8 && v41 != 9)
            {
              goto LABEL_84;
            }
          }

          else
          {
            if (v41 > 2)
            {
LABEL_73:
              v54 = sub_21DBF563C();
              (*(*(v54 - 8) + 16))(v36, v37, v54);
              swift_storeEnumTagMultiPayload();
              goto LABEL_97;
            }

            if (v41 != 1)
            {
              if (v41 == 2)
              {
                goto LABEL_73;
              }

LABEL_84:
              memcpy(v36, v37, *(*(v40 - 8) + 64));
              goto LABEL_97;
            }
          }

          v55 = *v37;
          *v36 = *v37;
          v56 = v55;
          swift_storeEnumTagMultiPayload();
          goto LABEL_97;
        }

        v77 = v11;
        v42 = *v37;
        *v36 = *v37;
        v74 = v36;
        v76 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v43 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v44 = *(v43 - 8);
        v45 = *(v44 + 48);
        v46 = v42;
        if (v45(v37 + v76, 1, v43))
        {
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
          v36 = v74;
          memcpy(v74 + v76, v37 + v76, *(*(v47 - 8) + 64));
          v11 = v77;
LABEL_97:
          swift_storeEnumTagMultiPayload();
          goto LABEL_98;
        }

        v50 = v44;
        v36 = v74;
        v51 = swift_getEnumCaseMultiPayload();
        if (v51 > 4)
        {
          v11 = v77;
          if (v51 > 7)
          {
            v52 = v50;
            if (v51 != 8)
            {
              v53 = v76;
              if (v51 == 9)
              {
                v58 = *(v37 + v76);
                *(v74 + v76) = v58;
                v59 = v58;
                swift_storeEnumTagMultiPayload();
                goto LABEL_96;
              }

              goto LABEL_95;
            }

            goto LABEL_91;
          }

          v52 = v50;
          if (v51 != 5)
          {
            v53 = v76;
            if (v51 == 6)
            {
              goto LABEL_87;
            }

            goto LABEL_95;
          }
        }

        else
        {
          v11 = v77;
          if (v51 <= 2)
          {
            v52 = v50;
            if (v51 != 1)
            {
              v53 = v76;
              if (v51 == 2)
              {
                goto LABEL_87;
              }

LABEL_95:
              memcpy(v74 + v53, v37 + v53, *(v52 + 64));
              goto LABEL_96;
            }

LABEL_91:
            v53 = v76;
            v60 = *(v37 + v76);
            *(v74 + v76) = v60;
            v61 = v60;
            swift_storeEnumTagMultiPayload();
            goto LABEL_96;
          }

          v52 = v50;
          if (v51 != 3)
          {
            v53 = v76;
LABEL_87:
            v57 = sub_21DBF563C();
            (*(*(v57 - 8) + 16))(v74 + v53, v37 + v53, v57);
            swift_storeEnumTagMultiPayload();
LABEL_96:
            (*(v52 + 56))(v74 + v53, 0, 1, v43);
            goto LABEL_97;
          }
        }

        v62 = sub_21DBF563C();
        v53 = v76;
        (*(*(v62 - 8) + 16))(v74 + v76, v37 + v76, v62);
        swift_storeEnumTagMultiPayload();
        goto LABEL_96;
      }

      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = swift_getEnumCaseMultiPayload();
      if (v17 > 4)
      {
        if (v17 <= 7)
        {
          if (v17 == 5 || v17 == 6)
          {
            goto LABEL_26;
          }

          goto LABEL_37;
        }

        if (v17 != 8 && v17 != 9)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v17 > 2)
        {
LABEL_26:
          v28 = sub_21DBF563C();
          (*(*(v28 - 8) + 16))(v8, v9, v28);
          swift_storeEnumTagMultiPayload();
          goto LABEL_48;
        }

        if (v17 != 1)
        {
          if (v17 == 2)
          {
            goto LABEL_26;
          }

LABEL_37:
          memcpy(v8, v9, *(*(v16 - 8) + 64));
          goto LABEL_48;
        }
      }

      v29 = *v9;
      *v8 = *v9;
      v30 = v29;
      swift_storeEnumTagMultiPayload();
      goto LABEL_48;
    }

    v73 = v10;
    v75 = v12;
    v18 = *v9;
    *v8 = *v9;
    v71 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v20 = *(v19 - 8);
    v72 = v8;
    v21 = *(v20 + 48);
    v22 = v18;
    if (v21(v9 + v71, 1, v19))
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      v8 = v72;
      memcpy(v72 + v71, v9 + v71, *(*(v23 - 8) + 64));
      v12 = v75;
LABEL_47:
      v10 = v73;
      goto LABEL_48;
    }

    v8 = v72;
    v70 = v19;
    v26 = swift_getEnumCaseMultiPayload();
    if (v26 > 4)
    {
      v12 = v75;
      v27 = v20;
      if (v26 <= 7)
      {
        if (v26 == 5 || v26 == 6)
        {
          goto LABEL_38;
        }

        goto LABEL_45;
      }

      if (v26 != 8 && v26 != 9)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v12 = v75;
      v27 = v20;
      if (v26 > 2)
      {
LABEL_38:
        v31 = sub_21DBF563C();
        (*(*(v31 - 8) + 16))(v72 + v71, v9 + v71, v31);
        v32 = v70;
        swift_storeEnumTagMultiPayload();
LABEL_46:
        (*(v20 + 56))(v72 + v71, 0, 1, v32);
        goto LABEL_47;
      }

      if (v26 != 1)
      {
        if (v26 == 2)
        {
          goto LABEL_38;
        }

LABEL_45:
        memcpy(v72 + v71, v9 + v71, *(v27 + 64));
        v32 = v70;
        goto LABEL_46;
      }
    }

    v33 = *(v9 + v71);
    *(v72 + v71) = v33;
    v34 = v33;
    v32 = v70;
    swift_storeEnumTagMultiPayload();
    goto LABEL_46;
  }

  v14 = *a2;
  *v4 = *a2;
  v4 = (v14 + ((v5 + 16) & ~v5));

  return v4;
}

double destroy for TTRIRemindersListCellPresentationStates(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + *(a2 + 24));
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v6 = *(*(v5 - 8) + 48);
  if (!v6(v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
LABEL_46:
      v21 = *v4;
LABEL_47:

      goto LABEL_2;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_2;
      }

      type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = swift_getEnumCaseMultiPayload();
      if (v10 > 4)
      {
        if (v10 <= 7)
        {
          if (v10 != 5 && v10 != 6)
          {
            goto LABEL_2;
          }

LABEL_42:
          v19 = sub_21DBF563C();
          (*(*(v19 - 8) + 8))(v4, v19);
          goto LABEL_2;
        }

        if (v10 != 8 && v10 != 9)
        {
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 > 2)
        {
          goto LABEL_42;
        }

        if (v10 != 1)
        {
          if (v10 != 2)
          {
            goto LABEL_2;
          }

          goto LABEL_42;
        }
      }

      goto LABEL_46;
    }

    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v14 - 8) + 48))(v4 + v13, 1, v14))
    {
      goto LABEL_2;
    }

    v15 = swift_getEnumCaseMultiPayload();
    if (v15 > 4)
    {
      if (v15 <= 7)
      {
        if (v15 != 5 && v15 != 6)
        {
          goto LABEL_2;
        }

LABEL_60:
        v23 = sub_21DBF563C();
        (*(*(v23 - 8) + 8))(v4 + v13, v23);
        goto LABEL_2;
      }

      if (v15 != 8 && v15 != 9)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (v15 > 2)
      {
        goto LABEL_60;
      }

      if (v15 != 1)
      {
        if (v15 != 2)
        {
          goto LABEL_2;
        }

        goto LABEL_60;
      }
    }

    v21 = *(v4 + v13);
    goto LABEL_47;
  }

LABEL_2:
  v7 = (a1 + *(a2 + 28));
  if (v6(v7, 1, v5))
  {
    goto LABEL_3;
  }

  v11 = swift_getEnumCaseMultiPayload();
  if (v11 == 2)
  {
    goto LABEL_50;
  }

  if (v11 == 1)
  {

    v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v17 - 8) + 48))(v7 + v16, 1, v17))
    {
      goto LABEL_3;
    }

    v18 = swift_getEnumCaseMultiPayload();
    if (v18 > 4)
    {
      if (v18 <= 7)
      {
        if (v18 != 5 && v18 != 6)
        {
          goto LABEL_3;
        }

LABEL_61:
        v24 = sub_21DBF563C();
        (*(*(v24 - 8) + 8))(v7 + v16, v24);
        goto LABEL_3;
      }

      if (v18 != 8 && v18 != 9)
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v18 > 2)
      {
        goto LABEL_61;
      }

      if (v18 != 1)
      {
        if (v18 != 2)
        {
          goto LABEL_3;
        }

        goto LABEL_61;
      }
    }

    v22 = *(v7 + v16);
    goto LABEL_51;
  }

  if (v11)
  {
    goto LABEL_3;
  }

  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v12 = swift_getEnumCaseMultiPayload();
  if (v12 <= 4)
  {
    if (v12 > 2)
    {
      goto LABEL_43;
    }

    if (v12 != 1)
    {
      if (v12 != 2)
      {
        goto LABEL_3;
      }

LABEL_43:
      v20 = sub_21DBF563C();
      (*(*(v20 - 8) + 8))(v7, v20);
      goto LABEL_3;
    }

    goto LABEL_50;
  }

  if (v12 > 7)
  {
    if (v12 != 8 && v12 != 9)
    {
      goto LABEL_3;
    }

LABEL_50:
    v22 = *v7;
LABEL_51:

    goto LABEL_3;
  }

  if (v12 == 5 || v12 == 6)
  {
    goto LABEL_43;
  }

LABEL_3:

  return result;
}

_WORD *initializeWithCopy for TTRIRemindersListCellPresentationStates(_WORD *a1, _WORD *a2, int *a3)
{
  v3 = a3;
  *a1 = *a2;
  v6 = a3[6];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
    memcpy(v7, v8, *(*(v12 - 8) + 64));
    goto LABEL_48;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v22 = *v8;
      *v7 = *v8;
      v23 = v22;
LABEL_46:
      swift_storeEnumTagMultiPayload();
      goto LABEL_47;
    case 1:
      v67 = v9;
      v69 = v11;
      v16 = *v8;
      *v7 = *v8;
      v65 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v18 = *(v17 - 8);
      v66 = v7;
      v19 = *(v18 + 48);
      v20 = v16;
      if (v19(v8 + v65, 1, v17))
      {
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        v7 = v66;
        memcpy(v66 + v65, v8 + v65, *(*(v21 - 8) + 64));
        v11 = v69;
LABEL_45:
        v9 = v67;
        goto LABEL_46;
      }

      v7 = v66;
      v64 = v17;
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 > 4)
      {
        v11 = v69;
        v25 = v18;
        if (v24 <= 7)
        {
          if (v24 == 5 || v24 == 6)
          {
            goto LABEL_36;
          }

          goto LABEL_43;
        }

        if (v24 != 8 && v24 != 9)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v11 = v69;
        v25 = v18;
        if (v24 > 2)
        {
LABEL_36:
          v29 = sub_21DBF563C();
          (*(*(v29 - 8) + 16))(v66 + v65, v8 + v65, v29);
          v30 = v64;
          swift_storeEnumTagMultiPayload();
LABEL_44:
          (*(v18 + 56))(v66 + v65, 0, 1, v30);
          goto LABEL_45;
        }

        if (v24 != 1)
        {
          if (v24 == 2)
          {
            goto LABEL_36;
          }

LABEL_43:
          memcpy(v66 + v65, v8 + v65, *(v25 + 64));
          v30 = v64;
          goto LABEL_44;
        }
      }

      v31 = *(v8 + v65);
      *(v66 + v65) = v31;
      v32 = v31;
      v30 = v64;
      swift_storeEnumTagMultiPayload();
      goto LABEL_44;
    case 0:
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = swift_getEnumCaseMultiPayload();
      if (v15 > 4)
      {
        if (v15 <= 7)
        {
          if (v15 == 5 || v15 == 6)
          {
            goto LABEL_24;
          }

          goto LABEL_35;
        }

        if (v15 != 8 && v15 != 9)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v15 > 2)
        {
LABEL_24:
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 16))(v7, v8, v26);
          swift_storeEnumTagMultiPayload();
          goto LABEL_46;
        }

        if (v15 != 1)
        {
          if (v15 == 2)
          {
            goto LABEL_24;
          }

LABEL_35:
          memcpy(v7, v8, *(*(v14 - 8) + 64));
          goto LABEL_46;
        }
      }

      v27 = *v8;
      *v7 = *v8;
      v28 = v27;
      swift_storeEnumTagMultiPayload();
      goto LABEL_46;
  }

  memcpy(v7, v8, *(v10 + 64));
LABEL_47:
  (*(v10 + 56))(v7, 0, 1, v9);
LABEL_48:
  v33 = v3[7];
  v34 = (a1 + v33);
  v35 = (a2 + v33);
  if (!v11((a2 + v33), 1, v9))
  {
    v37 = swift_getEnumCaseMultiPayload();
    if (v37 == 2)
    {
      v47 = *v35;
      *v34 = *v35;
      v48 = v47;
      goto LABEL_92;
    }

    if (v37 != 1)
    {
      if (v37)
      {
        memcpy(v34, v35, *(v10 + 64));
LABEL_93:
        (*(v10 + 56))(v34, 0, 1, v9);
        goto LABEL_94;
      }

      v38 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v39 = swift_getEnumCaseMultiPayload();
      if (v39 > 4)
      {
        if (v39 <= 7)
        {
          if (v39 == 5 || v39 == 6)
          {
            goto LABEL_71;
          }

          goto LABEL_82;
        }

        if (v39 != 8 && v39 != 9)
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (v39 > 2)
        {
LABEL_71:
          v51 = sub_21DBF563C();
          (*(*(v51 - 8) + 16))(v34, v35, v51);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v39 != 1)
        {
          if (v39 == 2)
          {
            goto LABEL_71;
          }

LABEL_82:
          memcpy(v34, v35, *(*(v38 - 8) + 64));
          goto LABEL_92;
        }
      }

      v52 = *v35;
      *v34 = *v35;
      v53 = v52;
      swift_storeEnumTagMultiPayload();
      goto LABEL_92;
    }

    v70 = v3;
    v71 = v10;
    v40 = *v35;
    *v34 = *v35;
    v41 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v42 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v68 = v34;
    v43 = *(v42 - 8);
    v44 = *(v43 + 48);
    v45 = v40;
    if (v44(v35 + v41, 1, v42))
    {
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      v34 = v68;
      memcpy(v68 + v41, v35 + v41, *(*(v46 - 8) + 64));
      v3 = v70;
      v10 = v71;
LABEL_92:
      swift_storeEnumTagMultiPayload();
      goto LABEL_93;
    }

    v49 = swift_getEnumCaseMultiPayload();
    v50 = v41;
    if (v49 > 4)
    {
      v3 = v70;
      v10 = v71;
      if (v49 <= 7)
      {
        if (v49 == 5 || v49 == 6)
        {
          goto LABEL_83;
        }

        goto LABEL_90;
      }

      if (v49 != 8 && v49 != 9)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v3 = v70;
      v10 = v71;
      if (v49 > 2)
      {
LABEL_83:
        v54 = sub_21DBF563C();
        (*(*(v54 - 8) + 16))(v68 + v50, v35 + v50, v54);
        swift_storeEnumTagMultiPayload();
LABEL_91:
        (*(v43 + 56))(v68 + v50, 0, 1, v42);
        v34 = v68;
        goto LABEL_92;
      }

      if (v49 != 1)
      {
        if (v49 == 2)
        {
          goto LABEL_83;
        }

LABEL_90:
        memcpy(v68 + v50, v35 + v50, *(v43 + 64));
        goto LABEL_91;
      }
    }

    v55 = *(v35 + v50);
    *(v68 + v50) = v55;
    v56 = v55;
    swift_storeEnumTagMultiPayload();
    goto LABEL_91;
  }

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  memcpy(v34, v35, *(*(v36 - 8) + 64));
LABEL_94:
  v57 = v3[8];
  v58 = v3[9];
  v59 = a1 + v57;
  v60 = a2 + v57;
  *v59 = *v60;
  *(v59 + 1) = *(v60 + 1);
  v61 = a1 + v58;
  v62 = a2 + v58;
  *v61 = *v62;
  *(v61 + 1) = *(v62 + 1);
  *(a1 + v3[10]) = *(a2 + v3[10]);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

_BYTE *assignWithCopy for TTRIRemindersListCellPresentationStates(_BYTE *a1, _BYTE *a2, int *a3)
{
  v3 = a3;
  v4 = a2;
  *a1 = *a2;
  a1[1] = a2[1];
  v6 = a3[6];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(v7, 1, v9);
  v13 = v11(v8, 1, v9);
  if (v12)
  {
    if (!v13)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        v27 = *v8;
        *v7 = *v8;
        v28 = v27;
        goto LABEL_80;
      }

      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload)
        {
          memcpy(v7, v8, *(v10 + 64));
LABEL_81:
          (*(v10 + 56))(v7, 0, 1, v9);
          goto LABEL_82;
        }

        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = swift_getEnumCaseMultiPayload();
        if (v16 > 4)
        {
          if (v16 <= 7)
          {
            if (v16 == 5 || v16 == 6)
            {
              goto LABEL_41;
            }

            goto LABEL_61;
          }

          if (v16 != 8 && v16 != 9)
          {
            goto LABEL_61;
          }
        }

        else
        {
          if (v16 > 2)
          {
LABEL_41:
            v36 = sub_21DBF563C();
            (*(*(v36 - 8) + 16))(v7, v8, v36);
            swift_storeEnumTagMultiPayload();
            goto LABEL_80;
          }

          if (v16 != 1)
          {
            if (v16 == 2)
            {
              goto LABEL_41;
            }

LABEL_61:
            memcpy(v7, v8, *(*(v15 - 8) + 64));
            goto LABEL_80;
          }
        }

        v37 = *v8;
        *v7 = *v8;
        v38 = v37;
        swift_storeEnumTagMultiPayload();
        goto LABEL_80;
      }

      v108 = v9;
      v115 = v3;
      v21 = *v8;
      *v7 = *v8;
      v106 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v111 = v7;
      v23 = *(v22 - 8);
      v24 = *(v23 + 48);
      v25 = v21;
      if (v24(v8 + v106, 1, v22))
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        v7 = v111;
        memcpy(v111 + v106, v8 + v106, *(*(v26 - 8) + 64));
        v3 = v115;
        v9 = v108;
LABEL_80:
        swift_storeEnumTagMultiPayload();
        goto LABEL_81;
      }

      v103 = v22;
      v105 = v23;
      v32 = swift_getEnumCaseMultiPayload();
      v3 = v115;
      if (v32 > 4)
      {
        v33 = v23;
        if (v32 <= 7)
        {
          v9 = v108;
          if (v32 == 5 || v32 == 6)
          {
            goto LABEL_63;
          }

          goto LABEL_165;
        }

        v9 = v108;
        if (v32 != 8 && v32 != 9)
        {
          goto LABEL_165;
        }
      }

      else
      {
        v33 = v23;
        if (v32 > 2)
        {
          v9 = v108;
LABEL_63:
          v41 = sub_21DBF563C();
          (*(*(v41 - 8) + 16))(v111 + v106, v8 + v106, v41);
          v42 = v103;
LABEL_78:
          swift_storeEnumTagMultiPayload();
          v48 = v42;
LABEL_79:
          (*(v105 + 56))(v111 + v106, 0, 1, v48);
          v7 = v111;
          goto LABEL_80;
        }

        v9 = v108;
        if (v32 != 1)
        {
          if (v32 == 2)
          {
            goto LABEL_63;
          }

LABEL_165:
          memcpy(v111 + v106, v8 + v106, *(v33 + 64));
          v48 = v103;
          goto LABEL_79;
        }
      }

      v46 = *(v8 + v106);
      *(v111 + v106) = v46;
      v47 = v46;
      v42 = v103;
      goto LABEL_78;
    }

    goto LABEL_13;
  }

  if (v13)
  {
    sub_21D371B14(v7);
LABEL_13:
    v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290) - 8) + 64);
LABEL_14:
    memcpy(v7, v8, v17);
    goto LABEL_82;
  }

  if (a1 == v4)
  {
    goto LABEL_82;
  }

  sub_21D371B14(v7);
  v18 = swift_getEnumCaseMultiPayload();
  if (v18 == 2)
  {
    v34 = *v8;
    *v7 = *v8;
    v35 = v34;
    swift_storeEnumTagMultiPayload();
    goto LABEL_82;
  }

  if (v18 != 1)
  {
    if (v18)
    {
      v17 = *(v10 + 64);
      goto LABEL_14;
    }

    v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v20 = swift_getEnumCaseMultiPayload();
    if (v20 > 4)
    {
      if (v20 <= 7)
      {
        if (v20 == 5 || v20 == 6)
        {
          goto LABEL_67;
        }

        goto LABEL_171;
      }

      if (v20 != 8 && v20 != 9)
      {
        goto LABEL_171;
      }
    }

    else
    {
      if (v20 > 2)
      {
LABEL_67:
        v43 = sub_21DBF563C();
        (*(*(v43 - 8) + 16))(v7, v8, v43);
        swift_storeEnumTagMultiPayload();
        goto LABEL_189;
      }

      if (v20 != 1)
      {
        if (v20 == 2)
        {
          goto LABEL_67;
        }

LABEL_171:
        memcpy(v7, v8, *(*(v19 - 8) + 64));
        goto LABEL_189;
      }
    }

    v44 = *v8;
    *v7 = *v8;
    v45 = v44;
    swift_storeEnumTagMultiPayload();
    goto LABEL_189;
  }

  v113 = v10;
  v109 = *v8;
  *v7 = *v8;
  v116 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v104 = *(v29 - 8);
  v107 = *(v104 + 48);
  v30 = v109;
  v110 = v29;
  if (!v107(v8 + v116, 1, v29))
  {
    v39 = swift_getEnumCaseMultiPayload();
    if (v39 > 4)
    {
      v40 = v104;
      v10 = v113;
      if (v39 <= 7)
      {
        if (v39 == 5 || v39 == 6)
        {
          goto LABEL_173;
        }

        goto LABEL_187;
      }

      if (v39 != 8 && v39 != 9)
      {
        goto LABEL_187;
      }
    }

    else
    {
      v40 = v104;
      v10 = v113;
      if (v39 > 2)
      {
LABEL_173:
        v96 = sub_21DBF563C();
        (*(*(v96 - 8) + 16))(v7 + v116, v8 + v116, v96);
        v97 = v110;
        swift_storeEnumTagMultiPayload();
LABEL_188:
        (*(v104 + 56))(v7 + v116, 0, 1, v97);
        goto LABEL_189;
      }

      if (v39 != 1)
      {
        if (v39 == 2)
        {
          goto LABEL_173;
        }

LABEL_187:
        memcpy(v7 + v116, v8 + v116, *(v40 + 64));
        v97 = v110;
        goto LABEL_188;
      }
    }

    v98 = *(v8 + v116);
    *(v7 + v116) = v98;
    v99 = v98;
    v97 = v110;
    swift_storeEnumTagMultiPayload();
    goto LABEL_188;
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  memcpy(v7 + v116, v8 + v116, *(*(v31 - 8) + 64));
  v10 = v113;
LABEL_189:
  swift_storeEnumTagMultiPayload();
LABEL_82:
  v49 = v3[7];
  v50 = &a1[v49];
  v51 = &v4[v49];
  v52 = v11(&a1[v49], 1, v9);
  v53 = v11(v51, 1, v9);
  if (v52)
  {
    if (!v53)
    {
      v54 = swift_getEnumCaseMultiPayload();
      if (v54 == 2)
      {
        v68 = *v51;
        *v50 = *v51;
        v69 = v68;
        swift_storeEnumTagMultiPayload();
        goto LABEL_169;
      }

      if (v54 != 1)
      {
        if (!v54)
        {
          v55 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v56 = swift_getEnumCaseMultiPayload();
          if (v56 > 4)
          {
            if (v56 <= 7)
            {
              if (v56 == 5 || v56 == 6)
              {
                goto LABEL_122;
              }

              goto LABEL_142;
            }

            if (v56 != 8 && v56 != 9)
            {
              goto LABEL_142;
            }
          }

          else
          {
            if (v56 > 2)
            {
LABEL_122:
              v79 = sub_21DBF563C();
              (*(*(v79 - 8) + 16))(v50, v51, v79);
              swift_storeEnumTagMultiPayload();
LABEL_143:
              swift_storeEnumTagMultiPayload();
              goto LABEL_169;
            }

            if (v56 != 1)
            {
              if (v56 == 2)
              {
                goto LABEL_122;
              }

LABEL_142:
              memcpy(v50, v51, *(*(v55 - 8) + 64));
              goto LABEL_143;
            }
          }

          v80 = *v51;
          *v50 = *v51;
          v81 = v80;
          swift_storeEnumTagMultiPayload();
          goto LABEL_143;
        }

        memcpy(v50, v51, *(v10 + 64));
LABEL_169:
        (*(v10 + 56))(v50, 0, 1, v9);
        goto LABEL_170;
      }

      v112 = v4;
      v117 = v3;
      v61 = *v51;
      *v50 = *v51;
      v62 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v63 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v64 = *(v63 - 8);
      v65 = *(v64 + 48);
      v66 = v61;
      if (v65(v51 + v62, 1, v63))
      {
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(v50 + v62, v51 + v62, *(*(v67 - 8) + 64));
        v3 = v117;
LABEL_168:
        swift_storeEnumTagMultiPayload();
        v4 = v112;
        goto LABEL_169;
      }

      v76 = swift_getEnumCaseMultiPayload();
      v3 = v117;
      if (v76 > 4)
      {
        if (v76 <= 7)
        {
          if (v76 == 5 || v76 == 6)
          {
            goto LABEL_144;
          }

          goto LABEL_166;
        }

        if (v76 != 8 && v76 != 9)
        {
          goto LABEL_166;
        }
      }

      else
      {
        if (v76 > 2)
        {
LABEL_144:
          v83 = sub_21DBF563C();
          (*(*(v83 - 8) + 16))(v50 + v62, v51 + v62, v83);
          swift_storeEnumTagMultiPayload();
LABEL_167:
          (*(v64 + 56))(v50 + v62, 0, 1, v63);
          goto LABEL_168;
        }

        if (v76 != 1)
        {
          if (v76 == 2)
          {
            goto LABEL_144;
          }

LABEL_166:
          memcpy(v50 + v62, v51 + v62, *(v64 + 64));
          goto LABEL_167;
        }
      }

      v84 = *(v51 + v62);
      *(v50 + v62) = v84;
      v85 = v84;
      swift_storeEnumTagMultiPayload();
      goto LABEL_167;
    }

    goto LABEL_94;
  }

  if (!v53)
  {
    if (a1 == v4)
    {
      goto LABEL_170;
    }

    sub_21D371B14(v50);
    v58 = swift_getEnumCaseMultiPayload();
    if (v58 == 2)
    {
      v77 = *v51;
      *v50 = *v51;
      v78 = v77;
      swift_storeEnumTagMultiPayload();
      goto LABEL_170;
    }

    if (v58 != 1)
    {
      if (v58)
      {
        v57 = *(v10 + 64);
        goto LABEL_95;
      }

      v59 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v60 = swift_getEnumCaseMultiPayload();
      if (v60 > 4)
      {
        if (v60 <= 7)
        {
          if (v60 == 5 || v60 == 6)
          {
            goto LABEL_148;
          }

          goto LABEL_172;
        }

        if (v60 != 8 && v60 != 9)
        {
          goto LABEL_172;
        }
      }

      else
      {
        if (v60 > 2)
        {
LABEL_148:
          v86 = sub_21DBF563C();
          (*(*(v86 - 8) + 16))(v50, v51, v86);
          swift_storeEnumTagMultiPayload();
          goto LABEL_192;
        }

        if (v60 != 1)
        {
          if (v60 == 2)
          {
            goto LABEL_148;
          }

LABEL_172:
          memcpy(v50, v51, *(*(v59 - 8) + 64));
          goto LABEL_192;
        }
      }

      v87 = *v51;
      *v50 = *v51;
      v88 = v87;
      swift_storeEnumTagMultiPayload();
      goto LABEL_192;
    }

    v118 = v3;
    v70 = *v51;
    *v50 = *v51;
    v114 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v71 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v72 = *(v71 - 8);
    v73 = *(v72 + 48);
    v74 = v70;
    if (v73(v51 + v114, 1, v71))
    {
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v50 + v114, v51 + v114, *(*(v75 - 8) + 64));
      v3 = v118;
LABEL_192:
      swift_storeEnumTagMultiPayload();
      goto LABEL_170;
    }

    v82 = swift_getEnumCaseMultiPayload();
    v3 = v118;
    if (v82 > 4)
    {
      if (v82 <= 7)
      {
        if (v82 == 5 || v82 == 6)
        {
          goto LABEL_177;
        }

        goto LABEL_190;
      }

      if (v82 != 8 && v82 != 9)
      {
        goto LABEL_190;
      }
    }

    else
    {
      if (v82 > 2)
      {
LABEL_177:
        v100 = sub_21DBF563C();
        (*(*(v100 - 8) + 16))(v50 + v114, v51 + v114, v100);
        swift_storeEnumTagMultiPayload();
LABEL_191:
        (*(v72 + 56))(v50 + v114, 0, 1, v71);
        goto LABEL_192;
      }

      if (v82 != 1)
      {
        if (v82 == 2)
        {
          goto LABEL_177;
        }

LABEL_190:
        memcpy(v50 + v114, v51 + v114, *(v72 + 64));
        goto LABEL_191;
      }
    }

    v101 = *(v51 + v114);
    *(v50 + v114) = v101;
    v102 = v101;
    swift_storeEnumTagMultiPayload();
    goto LABEL_191;
  }

  sub_21D371B14(v50);
LABEL_94:
  v57 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290) - 8) + 64);
LABEL_95:
  memcpy(v50, v51, v57);
LABEL_170:
  v89 = v3[8];
  v90 = &a1[v89];
  v91 = &v4[v89];
  *v90 = *v91;
  *(v90 + 1) = *(v91 + 1);
  sub_21DBF8E0C();

  v92 = v3[9];
  v93 = &a1[v92];
  v94 = &v4[v92];
  *v93 = *v94;
  *(v93 + 1) = *(v94 + 1);
  sub_21DBF8E0C();

  *&a1[v3[10]] = *&v4[v3[10]];
  sub_21DBF8E0C();

  return a1;
}

_WORD *initializeWithTake for TTRIRemindersListCellPresentationStates(_WORD *a1, _WORD *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[6];
  v7 = a1 + v6;
  v8 = (a2 + v6);
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
    memcpy(v7, v8, *(*(v12 - 8) + 64));
    goto LABEL_35;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v48 = v11;
    v49 = v10;
    *v7 = *v8;
    v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v19 = v7;
    v20 = *(v18 - 8);
    if ((*(v20 + 48))(v8 + v17, 1, v18))
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(&v19[v17], v8 + v17, *(*(v21 - 8) + 64));
      v7 = v19;
      v11 = v48;
      v10 = v49;
      goto LABEL_33;
    }

    v44 = v19;
    v45 = v18;
    v46 = v20;
    v47 = v17;
    v22 = swift_getEnumCaseMultiPayload();
    if (v22 <= 3)
    {
      v11 = v48;
      v10 = v49;
      if (v22 != 2)
      {
        v23 = v47;
        if (v22 == 3)
        {
LABEL_20:
          v24 = sub_21DBF563C();
          v25 = v44;
          (*(*(v24 - 8) + 32))(&v44[v23], v8 + v23, v24);
          v26 = v45;
          swift_storeEnumTagMultiPayload();
LABEL_32:
          (*(v46 + 56))(&v25[v47], 0, 1, v26);
          v7 = v25;
          goto LABEL_33;
        }

LABEL_31:
        v25 = v44;
        memcpy(&v44[v23], v8 + v23, *(v46 + 64));
        v26 = v45;
        goto LABEL_32;
      }
    }

    else
    {
      v11 = v48;
      v10 = v49;
      if (v22 != 4)
      {
        v23 = v47;
        if (v22 == 5 || v22 == 6)
        {
          goto LABEL_20;
        }

        goto LABEL_31;
      }
    }

    v27 = sub_21DBF563C();
    v25 = v44;
    (*(*(v27 - 8) + 32))(&v44[v47], v8 + v47, v27);
    v26 = v45;
    swift_storeEnumTagMultiPayload();
    goto LABEL_32;
  }

  if (!EnumCaseMultiPayload)
  {
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = swift_getEnumCaseMultiPayload();
    if (v15 <= 3)
    {
      if (v15 == 2 || v15 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v15 == 4 || v15 == 5 || v15 == 6)
    {
LABEL_9:
      v16 = sub_21DBF563C();
      (*(*(v16 - 8) + 32))(v7, v8, v16);
      swift_storeEnumTagMultiPayload();
LABEL_33:
      swift_storeEnumTagMultiPayload();
      goto LABEL_34;
    }

    memcpy(v7, v8, *(*(v14 - 8) + 64));
    goto LABEL_33;
  }

  memcpy(v7, v8, *(v10 + 64));
LABEL_34:
  (*(v10 + 56))(v7, 0, 1, v9);
LABEL_35:
  v28 = a3[7];
  v29 = (a1 + v28);
  v30 = (a2 + v28);
  if (!v11((a2 + v28), 1, v9))
  {
    v32 = swift_getEnumCaseMultiPayload();
    if (v32 != 1)
    {
      if (v32)
      {
        memcpy(v29, v30, *(v10 + 64));
LABEL_68:
        (*(v10 + 56))(v29, 0, 1, v9);
        goto LABEL_69;
      }

      v33 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v34 = swift_getEnumCaseMultiPayload();
      if (v34 <= 3)
      {
        if (v34 == 2 || v34 == 3)
        {
          goto LABEL_43;
        }
      }

      else if (v34 == 4 || v34 == 5 || v34 == 6)
      {
LABEL_43:
        v35 = sub_21DBF563C();
        (*(*(v35 - 8) + 32))(v29, v30, v35);
        swift_storeEnumTagMultiPayload();
LABEL_67:
        swift_storeEnumTagMultiPayload();
        goto LABEL_68;
      }

      memcpy(v29, v30, *(*(v33 - 8) + 64));
      goto LABEL_67;
    }

    *v29 = *v30;
    v36 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v37 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v30 + v36, 1, v37))
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v29 + v36, v30 + v36, *(*(v39 - 8) + 64));
      goto LABEL_67;
    }

    v40 = swift_getEnumCaseMultiPayload();
    if (v40 <= 3)
    {
      if (v40 == 2 || v40 == 3)
      {
        goto LABEL_54;
      }
    }

    else if (v40 == 4 || v40 == 5 || v40 == 6)
    {
LABEL_54:
      v41 = sub_21DBF563C();
      (*(*(v41 - 8) + 32))(v29 + v36, v30 + v36, v41);
      swift_storeEnumTagMultiPayload();
LABEL_66:
      (*(v38 + 56))(v29 + v36, 0, 1, v37);
      goto LABEL_67;
    }

    memcpy(v29 + v36, v30 + v36, *(v38 + 64));
    goto LABEL_66;
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  memcpy(v29, v30, *(*(v31 - 8) + 64));
LABEL_69:
  v42 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v42) = *(a2 + v42);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

_BYTE *assignWithTake for TTRIRemindersListCellPresentationStates(_BYTE *a1, _BYTE *a2, int *a3)
{
  v3 = a3;
  *a1 = *a2;
  a1[1] = a2[1];
  v6 = a3[6];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(v7, 1, v9);
  v13 = v11(v8, 1, v9);
  if (v12)
  {
    if (!v13)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload)
        {
          memcpy(v7, v8, *(v10 + 64));
LABEL_62:
          (*(v10 + 56))(v7, 0, 1, v9);
          goto LABEL_63;
        }

        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = swift_getEnumCaseMultiPayload();
        if (v16 <= 3)
        {
          if (v16 == 2 || v16 == 3)
          {
            goto LABEL_9;
          }
        }

        else if (v16 == 4 || v16 == 5 || v16 == 6)
        {
LABEL_9:
          v17 = sub_21DBF563C();
          (*(*(v17 - 8) + 32))(v7, v8, v17);
          swift_storeEnumTagMultiPayload();
LABEL_61:
          swift_storeEnumTagMultiPayload();
          goto LABEL_62;
        }

        memcpy(v7, v8, *(*(v15 - 8) + 64));
        goto LABEL_61;
      }

      v75 = v3;
      v77 = v10;
      *v7 = *v8;
      v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v25 = *(v24 - 8);
      if ((*(v25 + 48))(v8 + v23, 1, v24))
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(v7 + v23, v8 + v23, *(*(v26 - 8) + 64));
        v10 = v77;
LABEL_60:
        v3 = v75;
        goto LABEL_61;
      }

      v72 = v23;
      v73 = v24;
      v29 = swift_getEnumCaseMultiPayload();
      if (v29 <= 3)
      {
        v10 = v77;
        if (v29 != 2)
        {
          v30 = v72;
          if (v29 == 3)
          {
LABEL_34:
            v31 = sub_21DBF563C();
            (*(*(v31 - 8) + 32))(v7 + v30, v8 + v30, v31);
            v32 = v73;
            swift_storeEnumTagMultiPayload();
LABEL_59:
            (*(v25 + 56))(v7 + v30, 0, 1, v32);
            goto LABEL_60;
          }

LABEL_58:
          memcpy(v7 + v30, v8 + v30, *(v25 + 64));
          v32 = v73;
          goto LABEL_59;
        }
      }

      else
      {
        v10 = v77;
        if (v29 != 4)
        {
          v30 = v72;
          if (v29 == 5 || v29 == 6)
          {
            goto LABEL_34;
          }

          goto LABEL_58;
        }
      }

      v37 = sub_21DBF563C();
      v30 = v72;
      (*(*(v37 - 8) + 32))(v7 + v72, v8 + v72, v37);
      v32 = v73;
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    }

    goto LABEL_12;
  }

  if (v13)
  {
    sub_21D371B14(v7);
LABEL_12:
    v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290) - 8) + 64);
LABEL_13:
    memcpy(v7, v8, v18);
    goto LABEL_63;
  }

  if (a1 == a2)
  {
    goto LABEL_63;
  }

  sub_21D371B14(v7);
  v19 = swift_getEnumCaseMultiPayload();
  if (v19 == 1)
  {
    *v7 = *v8;
    v78 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v76 = *(v27 - 8);
    if ((*(v76 + 48))(v8 + v78, 1, v27))
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v7 + v78, v8 + v78, *(*(v28 - 8) + 64));
      goto LABEL_139;
    }

    v74 = v27;
    v33 = swift_getEnumCaseMultiPayload();
    if (v33 <= 3)
    {
      if (v33 != 2)
      {
        v34 = v78;
        if (v33 == 3)
        {
LABEL_50:
          v35 = sub_21DBF563C();
          (*(*(v35 - 8) + 32))(v7 + v34, v8 + v34, v35);
          v36 = v74;
          swift_storeEnumTagMultiPayload();
LABEL_138:
          (*(v76 + 56))(v7 + v34, 0, 1, v36);
          goto LABEL_139;
        }

LABEL_137:
        memcpy(v7 + v34, v8 + v34, *(v76 + 64));
        v36 = v74;
        goto LABEL_138;
      }
    }

    else if (v33 != 4)
    {
      v34 = v78;
      if (v33 == 5 || v33 == 6)
      {
        goto LABEL_50;
      }

      goto LABEL_137;
    }

    v71 = sub_21DBF563C();
    v34 = v78;
    (*(*(v71 - 8) + 32))(v7 + v78, v8 + v78, v71);
    v36 = v74;
    swift_storeEnumTagMultiPayload();
    goto LABEL_138;
  }

  if (v19)
  {
    v18 = *(v10 + 64);
    goto LABEL_13;
  }

  v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v21 = swift_getEnumCaseMultiPayload();
  if (v21 <= 3)
  {
    if (v21 == 2 || v21 == 3)
    {
      goto LABEL_21;
    }

LABEL_57:
    memcpy(v7, v8, *(*(v20 - 8) + 64));
    goto LABEL_139;
  }

  if (v21 != 4 && v21 != 5 && v21 != 6)
  {
    goto LABEL_57;
  }

LABEL_21:
  v22 = sub_21DBF563C();
  (*(*(v22 - 8) + 32))(v7, v8, v22);
  swift_storeEnumTagMultiPayload();
LABEL_139:
  swift_storeEnumTagMultiPayload();
LABEL_63:
  v38 = v3[7];
  v39 = &a1[v38];
  v40 = &a2[v38];
  v41 = v11(&a1[v38], 1, v9);
  v42 = v11(v40, 1, v9);
  if (v41)
  {
    if (!v42)
    {
      v43 = swift_getEnumCaseMultiPayload();
      if (v43 != 1)
      {
        if (v43)
        {
          memcpy(v39, v40, *(v10 + 64));
LABEL_123:
          (*(v10 + 56))(v39, 0, 1, v9);
          goto LABEL_124;
        }

        v44 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v45 = swift_getEnumCaseMultiPayload();
        if (v45 <= 3)
        {
          if (v45 == 2 || v45 == 3)
          {
            goto LABEL_71;
          }
        }

        else if (v45 == 4 || v45 == 5 || v45 == 6)
        {
LABEL_71:
          v46 = sub_21DBF563C();
          (*(*(v46 - 8) + 32))(v39, v40, v46);
          swift_storeEnumTagMultiPayload();
LABEL_122:
          swift_storeEnumTagMultiPayload();
          goto LABEL_123;
        }

        memcpy(v39, v40, *(*(v44 - 8) + 64));
        goto LABEL_122;
      }

      *v39 = *v40;
      v52 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v53 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v54 = *(v53 - 8);
      if ((*(v54 + 48))(v40 + v52, 1, v53))
      {
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(v39 + v52, v40 + v52, *(*(v55 - 8) + 64));
        goto LABEL_122;
      }

      v60 = swift_getEnumCaseMultiPayload();
      if (v60 <= 3)
      {
        if (v60 == 2 || v60 == 3)
        {
          goto LABEL_96;
        }
      }

      else if (v60 == 4 || v60 == 5 || v60 == 6)
      {
LABEL_96:
        v61 = sub_21DBF563C();
        (*(*(v61 - 8) + 32))(v39 + v52, v40 + v52, v61);
        swift_storeEnumTagMultiPayload();
LABEL_121:
        (*(v54 + 56))(v39 + v52, 0, 1, v53);
        goto LABEL_122;
      }

      memcpy(v39 + v52, v40 + v52, *(v54 + 64));
      goto LABEL_121;
    }

    goto LABEL_74;
  }

  if (!v42)
  {
    if (a1 == a2)
    {
      goto LABEL_124;
    }

    sub_21D371B14(v39);
    v48 = swift_getEnumCaseMultiPayload();
    if (v48 != 1)
    {
      if (v48)
      {
        v47 = *(v10 + 64);
        goto LABEL_75;
      }

      v49 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v50 = swift_getEnumCaseMultiPayload();
      if (v50 <= 3)
      {
        if (v50 == 2 || v50 == 3)
        {
          goto LABEL_83;
        }
      }

      else if (v50 == 4 || v50 == 5 || v50 == 6)
      {
LABEL_83:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 32))(v39, v40, v51);
        swift_storeEnumTagMultiPayload();
LABEL_142:
        swift_storeEnumTagMultiPayload();
        goto LABEL_124;
      }

      memcpy(v39, v40, *(*(v49 - 8) + 64));
      goto LABEL_142;
    }

    *v39 = *v40;
    v56 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v57 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v58 = *(v57 - 8);
    if ((*(v58 + 48))(v40 + v56, 1, v57))
    {
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(v39 + v56, v40 + v56, *(*(v59 - 8) + 64));
      goto LABEL_142;
    }

    v62 = swift_getEnumCaseMultiPayload();
    if (v62 <= 3)
    {
      if (v62 == 2 || v62 == 3)
      {
        goto LABEL_112;
      }
    }

    else if (v62 == 4 || v62 == 5 || v62 == 6)
    {
LABEL_112:
      v63 = sub_21DBF563C();
      (*(*(v63 - 8) + 32))(v39 + v56, v40 + v56, v63);
      swift_storeEnumTagMultiPayload();
LABEL_141:
      (*(v58 + 56))(v39 + v56, 0, 1, v57);
      goto LABEL_142;
    }

    memcpy(v39 + v56, v40 + v56, *(v58 + 64));
    goto LABEL_141;
  }

  sub_21D371B14(v39);
LABEL_74:
  v47 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290) - 8) + 64);
LABEL_75:
  memcpy(v39, v40, v47);
LABEL_124:
  v64 = v3[8];
  v65 = &a1[v64];
  v66 = &a2[v64];
  *v65 = *v66;
  *(v65 + 1) = *(v66 + 1);

  v67 = v3[9];
  v68 = &a1[v67];
  v69 = &a2[v67];
  *v68 = *v69;
  *(v68 + 1) = *(v69 + 1);

  *&a1[v3[10]] = *&a2[v3[10]];

  return a1;
}

void sub_21D570850(uint64_t a1)
{
  sub_21D322C1C(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_21D570964()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5DFE0);
  v1 = __swift_project_value_buffer(v0, qword_27CE5DFE0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRExtensionCreateReminderInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRExtensionCreateReminderInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t TTRExtensionCreateReminderInteractor.reminderChangeItem.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t TTRExtensionCreateReminderInteractor.reminderChangeItemWithSectionsCount.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t TTRExtensionCreateReminderInteractor.requestedActions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DFF8, &qword_21DC1B6E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for TTRExtensionContextExtractorResult(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_extensionContextExtractorResult;
  swift_beginAccess();
  sub_21D0D3954(v1 + v10, v5, &qword_27CE5DFF8, &qword_21DC1B6E0);
  v11 = (*(v7 + 48))(v5, 1, v6);
  if (v11 == 1)
  {
    result = sub_21D0CF7E0(v5, &qword_27CE5DFF8, &qword_21DC1B6E0);
    v14 = 0;
  }

  else
  {
    sub_21D570EEC(v5, v9, v12);
    if (v9[16])
    {
      v14 = v9[*(v6 + 44)] | 2;
    }

    else
    {
      v14 = v9[*(v6 + 44)];
    }

    result = sub_21D570F50(v9, v15);
  }

  *a1 = v14;
  *(a1 + 8) = v11 == 1;
  return result;
}

uint64_t sub_21D570EEC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TTRExtensionContextExtractorResult(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D570F50(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for TTRExtensionContextExtractorResult(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *TTRExtensionCreateReminderInteractor.currentReminderChangeItem.getter()
{
  v1 = *(v0 + 112);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void TTRExtensionCreateReminderInteractor.attributeEditor.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_21DC09CF0;
    v5 = *(v3 + 16);
    *(v4 + 32) = v5;
    sub_21D0D3954(v3 + 24, v18, &unk_27CE60D80, &unk_21DC093F0);
    v6 = v19;
    if (v19)
    {
      v7 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v8 = *(v7 + 8);

      v9 = v5;
      v10 = v8(v6, v7);
      __swift_destroy_boxed_opaque_existential_0(v18);
      if (v10)
      {
        v11 = type metadata accessor for TTRBasicUndoContext();
        v6 = swift_allocObject();
        *(v6 + 16) = v10;
        v12 = &protocol witness table for TTRBasicUndoContext;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v6 = 0;
      }
    }

    else
    {

      v13 = v5;
      sub_21D0CF7E0(v18, &unk_27CE60D80, &unk_21DC093F0);
      v11 = 0;
      v12 = 0;
    }

    v14 = type metadata accessor for TTRRemindersListChangeItemAttributeEditorProvider();
    v15 = swift_allocObject();
    v15[2] = v4;
    v15[3] = 0;
    v15[4] = 0;
    v15[5] = v6;
    v15[6] = 0;
    v15[7] = 0;
    v15[8] = v11;
    v15[9] = v12;
    v16 = type metadata accessor for TTRRemindersListAttributeEditor();
    v17 = swift_allocObject();
    v17[5] = v14;
    v17[6] = &protocol witness table for TTRRemindersListChangeItemAttributeEditorProvider;
    v17[2] = v15;
    *(a1 + 24) = v16;
    *(a1 + 32) = &protocol witness table for TTRRemindersListAttributeEditor;

    *a1 = v17;
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

char *TTRExtensionCreateReminderInteractor.__allocating_init(store:reminderID:extractorResult:undoManager:urlMetadataInteractor:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 10) = 0;
  *(v11 + 13) = 0;
  *(v11 + 14) = 0;
  v12 = OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_extensionContextExtractorResult;
  v13 = type metadata accessor for TTRExtensionContextExtractorResult(0);
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  v14 = &v11[OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveList];
  *v14 = 0;
  v14[8] = -1;
  v15 = &v11[OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveSection];
  *v15 = 0;
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *(v15 + 3) = 1;
  v15[32] = 0;
  *(v11 + 6) = a1;
  *(v11 + 7) = a4;
  *(v11 + 8) = a5;
  *(v11 + 9) = a6;
  *(swift_allocObject() + 16) = a1;
  v34 = a1;
  v16 = a4;
  swift_unknownObjectRetain();
  v17 = sub_21DBF816C();
  sub_21DBF81FC();

  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v18 = sub_21DBFB12C();
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = v16;
  type metadata accessor for TTRReminderEditor();
  v32 = v16;
  v33 = a2;
  v20 = sub_21DBF820C();

  *(v11 + 11) = v20;

  v21 = sub_21DBFB12C();
  sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
  v22 = sub_21DBF820C();

  *(v11 + 4) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E018, &qword_21DC1B6E8);
  sub_21DBF81CC();
  v23 = sub_21DBF816C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E020, &qword_21DC1B6F0);
  v24 = sub_21DBF820C();

  *(v11 + 5) = v24;
  sub_21DBF81CC();
  v25 = sub_21DBF816C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E028, &qword_21DC1B6F8);
  v26 = sub_21DBF820C();

  *(v11 + 12) = v26;
  *(v11 + 10) = sub_21D551724(v32, v11, sub_21D571FE0, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E030, &qword_21DC1B700);
  sub_21DBF81BC();
  v27 = sub_21DBFB12C();
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_21D575D68;
  *(v29 + 24) = v28;

  sub_21DBF820C();

  v30 = sub_21DBFB12C();
  swift_allocObject();
  swift_weakInit();

  sub_21DBF822C();

  swift_unknownObjectRelease();

  return v11;
}

char *TTRExtensionCreateReminderInteractor.init(store:reminderID:extractorResult:undoManager:urlMetadataInteractor:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  *(v7 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 10) = 0;
  *(v7 + 13) = 0;
  *(v7 + 14) = 0;
  v13 = OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_extensionContextExtractorResult;
  v14 = type metadata accessor for TTRExtensionContextExtractorResult(0);
  (*(*(v14 - 8) + 56))(&v7[v13], 1, 1, v14);
  v15 = &v7[OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveList];
  *v15 = 0;
  v15[8] = -1;
  v16 = &v7[OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveSection];
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *(v16 + 3) = 1;
  v16[32] = 0;
  *(v7 + 6) = a1;
  *(v7 + 7) = a4;
  *(v7 + 8) = a5;
  *(v7 + 9) = a6;
  *(swift_allocObject() + 16) = a1;
  v35 = a1;
  v17 = a4;
  swift_unknownObjectRetain();
  v18 = sub_21DBF816C();
  sub_21DBF81FC();

  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v19 = sub_21DBFB12C();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = v17;
  type metadata accessor for TTRReminderEditor();
  v33 = v17;
  v34 = a2;
  v21 = sub_21DBF820C();

  *(v7 + 11) = v21;

  v22 = sub_21DBFB12C();
  sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
  v23 = sub_21DBF820C();

  *(v7 + 4) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E018, &qword_21DC1B6E8);
  sub_21DBF81CC();
  v24 = sub_21DBF816C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E020, &qword_21DC1B6F0);
  v25 = sub_21DBF820C();

  *(v7 + 5) = v25;
  sub_21DBF81CC();
  v26 = sub_21DBF816C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E028, &qword_21DC1B6F8);
  v27 = sub_21DBF820C();

  *(v7 + 12) = v27;
  *(v7 + 10) = sub_21D551724(v33, v7, sub_21D571FE0, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E030, &qword_21DC1B700);
  sub_21DBF81BC();
  v28 = sub_21DBFB12C();
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_21D576A84;
  *(v30 + 24) = v29;

  sub_21DBF820C();

  v31 = sub_21DBFB12C();
  swift_allocObject();
  swift_weakInit();

  sub_21DBF822C();

  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_21D571C48(uint64_t a1, void *a2)
{
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v3 = sub_21DA52758(1, 2, 480.0);
  TTRExtensionContextExtractorResult.containsImages.getter();
  v5 = v4 & 1;
  type metadata accessor for TTRQuickEntryReminderCreationInteractorCapability();
  v8 = v3;
  v9 = v5;
  v10 = 0;
  v11 = 1;
  v12 = 1;
  v8 = static TTRQuickEntryReminderCreationInteractorCapability.fetchInitialListForReminderCreation(store:options:)(a2, &v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E080, &qword_21DC1BA70);
  sub_21D5769B8();
  v6 = sub_21DBF91CC();

  sub_21D157878(1);

  return v6;
}

uint64_t sub_21D571D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = [*a1 store];
  v9 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  v10 = [v9 updateList_];
  v11 = sub_21DBFA12C();
  v12 = [v9 addReminderWithTitle:v11 toListChangeItem:v10 reminderObjectID:a2];

  v13 = type metadata accessor for TTRBasicUndoContext();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  v20[3] = v13;
  v20[4] = &protocol witness table for TTRBasicUndoContext;
  v20[0] = v14;
  sub_21D0D3954(v20, v19, &unk_27CE60D80, &unk_21DC093F0);
  type metadata accessor for TTRReminderEditor();
  v15 = swift_allocObject();
  *(v15 + 72) = 0;
  *(v15 + 16) = v12;
  sub_21D0D3954(v19, v15 + 24, &unk_27CE60D80, &unk_21DC093F0);
  *(v15 + 64) = 0;
  v16 = a3;
  v17 = [v12 fetchedCurrentDueDateDeltaAlert];
  sub_21D0CF7E0(v20, &unk_27CE60D80, &unk_21DC093F0);
  result = sub_21D0CF7E0(v19, &unk_27CE60D80, &unk_21DC093F0);
  *(v15 + 72) = v17;
  *a4 = v15;
  return result;
}

id sub_21D571F34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 16);
  *a2 = v2;
  return v2;
}

id sub_21D571F68@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[4];
  v3 = *(*a1 + 16);
  *a2 = v3;
  a2[1] = v2;
  return v3;
}

uint64_t sub_21D571FA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *(a2 + 16) = *(a1 + 16);
  *a2 = v3;
  *(a2 + 8) = v2;
  v4 = v2;
}

void sub_21D571FE0(uint64_t a1)
{

  v1 = sub_21DBF816C();
  sub_21DBF820C();
}

uint64_t sub_21D572074(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 16);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v3, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D57210C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DFF8, &qword_21DC1B6E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 32);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    *(Strong + 112) = a3;

    sub_21D575ED0(a1, v9, v15);
    v16 = type metadata accessor for TTRExtensionContextExtractorResult(0);
    (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
    v17 = OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_extensionContextExtractorResult;
    swift_beginAccess();

    sub_21D575F34(v9, v14 + v17);
    swift_endAccess();

    v18 = sub_21DBF816C();
    sub_21DBF820C();

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v14 + 24);
      if (v12)
      {
        v20 = v12;
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
      }

      ObjectType = swift_getObjectType();
      v22 = *(v19 + 24);
      sub_21DBF8E0C();
      v22(v20, ObjectType, v19);

      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v14 + 24);
      v24 = swift_getObjectType();
      v27 = v10;
      v28 = v11;
      v25 = *(v23 + 16);
      v26 = v10;
      v25(&v27, v24, v23);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_21D5723AC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v4 + 24);
        ObjectType = swift_getObjectType();
        (*(v6 + 32))(ObjectType, v6);

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v4 + 24);
        v9 = swift_getObjectType();
        (*(v8 + 40))(a1, v9, v8);

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void TTRExtensionCreateReminderInteractor.deinit()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = objc_opt_self();

    v3 = [v2 defaultCenter];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    [v3 removeObserver_];

    swift_unknownObjectRelease();
    v4 = [v2 defaultCenter];
    __swift_project_boxed_opaque_existential_1(v1 + 6, v1[9]);
    [v4 removeObserver_];

    swift_unknownObjectRelease();
    sub_21D157444(v0 + 16);

    swift_unknownObjectRelease();

    sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_extensionContextExtractorResult, &qword_27CE5DFF8, &qword_21DC1B6E0);
    sub_21D157864(*(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveList), *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveList + 8));
    sub_21D575DF4(*(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveSection), *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveSection + 8), *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveSection + 16), *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveSection + 24));
  }

  else
  {
    __break(1u);
  }
}

uint64_t TTRExtensionCreateReminderInteractor.__deallocating_deinit()
{
  TTRExtensionCreateReminderInteractor.deinit();

  return swift_deallocClassInstance();
}

id TTRExtensionCreateReminderInteractor.listID.getter()
{
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveList + 8) == 255)
  {
    return 0;
  }

  else
  {
    return [*(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveList) objectID];
  }
}

id TTRExtensionCreateReminderInteractor.listOrCustomSmartList.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveList;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveList);
  *a1 = v3;
  v4 = *(v2 + 8);
  *(a1 + 8) = v4;
  return sub_21D1B1ED4(v3, v4);
}

void TTRExtensionCreateReminderInteractor.pendingMoveContext.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveList);
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveList + 8);
  v5 = v1 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveSection;
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveSection);
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  if (v4 == 255)
  {
    v11 = 0;
  }

  else
  {
    if ((v4 & 1) == 0)
    {
      v11 = 0;
      v14 = v3;
      goto LABEL_7;
    }

    v11 = v3;
    v12 = v4;
    v13 = v3;
    LOBYTE(v4) = v12;
    v3 = v11;
  }

  v14 = 0;
LABEL_7:
  sub_21D1B1ED4(v3, v4);
  sub_21D575E44(v6, v7, v8, v9);

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v14;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = 0;
}

uint64_t sub_21D572874(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = sub_21D9CA3E0(a2, 0, 1);
  if (v5)
  {
    v6 = v5;
    swift_retain_n();
    sub_21D182E74(sub_21D233058, v6);
  }

  v7 = *(v4 + 16);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v7, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall TTRExtensionCreateReminderInteractor.update(notes:)(Swift::String_optional notes)
{
  object = notes.value._object;
  countAndFlagsBits = notes.value._countAndFlagsBits;
  v4 = swift_allocObject();
  v4[2] = countAndFlagsBits;
  v4[3] = object;
  v4[4] = v1;
  sub_21DBF8E0C();

  v5 = sub_21DBF816C();
  sub_21DBF820C();
}

void sub_21D572A28(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  v6 = *a1;
  if (a3)
  {
    v7 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v8 = sub_21DBFA12C();
    v5 = [v7 initWithString_];
  }

  v9 = sub_21D9C7928(v5);
  if (v9)
  {
    v10 = v9;
    swift_retain_n();
    sub_21D182E74(sub_21D233058, v10);
  }

  v11 = *(v6 + 16);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(a4 + 24);
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(v11, ObjectType, v12);
    swift_unknownObjectRelease();
  }
}

void TTRExtensionCreateReminderInteractor.update(extensionContextExtractorResult:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DFF8, &qword_21DC1B6E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_21D575ED0(a1, &v11 - v6, v5);
  v8 = type metadata accessor for TTRExtensionContextExtractorResult(0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_extensionContextExtractorResult;
  swift_beginAccess();
  sub_21D575F34(v7, v2 + v9);
  swift_endAccess();

  v10 = sub_21DBF816C();
  sub_21DBF820C();
}

void TTRExtensionCreateReminderInteractor.update(dueDateComponents:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21DBF509C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_21DBF4EDC();
  v8 = [v7 rem_isValidDateComponents];

  if (v8)
  {
    (*(v5 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v10 = swift_allocObject();
    (*(v5 + 32))(v10 + v9, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;

    v11 = sub_21DBF816C();
    sub_21DBF820C();
  }

  else
  {
    if (qword_27CE56A00 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_27CE5DFE0);
    v16 = sub_21DBF84AC();
    v13 = sub_21DBFAEBC();
    if (os_log_type_enabled(v16, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21D0C9000, v16, v13, "Invalid date components.", v14, 2u);
      MEMORY[0x223D46520](v14, -1, -1);
    }
  }
}

uint64_t sub_21D572F38(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0, &unk_21DC0C0C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60, &unk_21DC0A690);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = *a1;
  v13 = sub_21DBF509C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, a2, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  v15 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties(0);
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  sub_21D9C50E0(v11, v8);
  sub_21D0CF7E0(v8, &unk_27CE60DA0, &unk_21DC0C0C0);
  sub_21D0CF7E0(v11, &qword_27CE58D60, &unk_21DC0A690);
  v16 = *(v12 + 16);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v18 + 8))(v16, ObjectType, v18);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D573194(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = [objc_allocWithZone(MEMORY[0x277D44580]) initWithStructuredLocation:a2 proximity:1];
  _s15RemindersUICore17TTRReminderEditorC4edit14vehicleTriggerySo015REMAlarmVehicleG0CSg_tF_0(v5);
  v6 = *(v4 + 16);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v6, ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

void sub_21D573284(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;

  v6 = a1;

  v7 = sub_21DBF816C();
  sub_21DBF820C();
}

uint64_t sub_21D57333C(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  TTRReminderEditor.edit(userActivity:)(a2);
  v5 = *(v4 + 16);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v5, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRExtensionCreateReminderInteractor.update(list:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = v1 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveList;
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveList);
  *v5 = *a1;
  v7 = *(v5 + 8);
  *(v5 + 8) = v4;
  v8 = v3;
  sub_21D157864(v6, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  *(v9 + 32) = v2;
  v10 = v8;

  v11 = sub_21DBF816C();
  sub_21DBF820C();

  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  if (*(v5 + 8) == 255)
  {
    v12 = 0;
  }

  else
  {
    v12 = [*v5 objectID];
  }

  TTRUserDefaults.sharingExtensionLastSelectedListObjectID.setter(v12);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v16 = v3;
    v17 = v4;
    (*(v14 + 16))(&v16, ObjectType, v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D57359C(uint64_t *a1, void *a2, int a3, uint64_t a4)
{
  v36 = a3;
  v37 = a2;
  v5 = sub_21DBF54CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v35[-v14];
  v16 = *a1;
  v17 = [*(*a1 + 16) attachmentContext];
  [v17 removeAllAttachments];

  v18 = [*(v16 + 16) userActivity];
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = v18;
  v20 = [v18 userActivity];

  if (!v20)
  {
    goto LABEL_8;
  }

  v21 = [v20 webpageURL];

  if (v21)
  {
    sub_21DBF546C();

    (*(v6 + 56))(v11, 0, 1, v5);
  }

  else
  {
    (*(v6 + 56))(v11, 1, 1, v5);
  }

  sub_21D57690C(v11, v15);
  if ((*(v6 + 48))(v15, 1, v5))
  {
    sub_21D0CF7E0(v15, &qword_27CE5EA20, &qword_21DC0D4A0);
    goto LABEL_8;
  }

  (*(v6 + 16))(v8, v15, v5);
  sub_21D0CF7E0(v15, &qword_27CE5EA20, &qword_21DC0D4A0);
  v26 = sub_21DBF548C();
  v28 = v27;
  (*(v6 + 8))(v8, v5);
  if (v28)
  {
    v29 = [*(v16 + 16) notesAsString];
    if (!v29)
    {

      goto LABEL_8;
    }

    v30 = v29;
    v31 = sub_21DBFA16C();
    v33 = v32;

    if (v31 == v26 && v28 == v33)
    {
    }

    else
    {
      v34 = sub_21DBFC64C();

      if ((v34 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    [*(v16 + 16) setNotes_];
  }

LABEL_8:
  [*(v16 + 16) setUserActivity_];
  v22 = *(v16 + 16);
  if (v36)
  {
    v23 = [v37 accountCapabilities];
  }

  else
  {
    v24 = [v37 account];
    v23 = [v24 capabilities];
  }

  [v22 updateAccountCapabilities_];

  v25 = sub_21DBF816C();
  sub_21DBF820C();
}

void TTRExtensionCreateReminderInteractor.update(pendingMoveSection:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = v2 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveSection;
  v7 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveSection);
  v8 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveSection + 8);
  v9 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveSection + 16);
  v10 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveSection + 24);
  *v6 = *a1;
  *v11 = *(a1 + 8);
  *(v6 + 8) = *v11;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  sub_21D15751C(v3);
  sub_21D15751C(v11[0]);
  sub_21DBF8E0C();
  sub_21D575DF4(v7, v8, v9, v10);

  v12 = sub_21DBF816C();
  sub_21DBF820C();
}

void TTRExtensionCreateReminderInteractor.save(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21D5760C4;
  *(v6 + 24) = v5;

  sub_21D0D0E78(a1, a2);
  v7 = sub_21DBF816C();
  sub_21DBF820C();
}

double sub_21D573C14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5)
{
  v92 = a5;
  v93 = a4;
  v100 = *MEMORY[0x277D85DE8];
  v8 = sub_21DBF4CAC();
  v91 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF563C();
  v12 = *(v11 - 8);
  *&v14 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveList + 8);
  if (v17 == 255)
  {
    if (*(a2 + 8) == 1)
    {
      v27 = v13;
      v28 = *a2;
      v29 = [*a2 customContext];
      if (!v29 || (v30 = v29, v31 = sub_21DBFB4FC(), v30, !v31))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_21DC08D00;
        v76 = [v28 objectID];
        *(v75 + 56) = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        *(v75 + 64) = sub_21D576678();
        *(v75 + 32) = v76;
        sub_21DBFA17C();
        v77 = v93;
        if (v93)
        {
          v78 = objc_opt_self();
          v79 = sub_21DBFA12C();

          v91 = [v78 internalErrorWithDebugDescription_];

          v77(v91, 1);
          v80 = v91;
        }

        else
        {
        }

        return result;
      }

      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      TTRReminderEditor.edit(toMatch:now:)(v31, v16);

      (*(v12 + 8))(v16, v27);
    }

LABEL_12:
    v33 = a3 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveSection;
    v34 = *(a3 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveSection + 24);
    if (v34 != 1)
    {
      v36 = *v33;
      v35 = *(v33 + 8);
      v37 = *(v33 + 16);
      if (v35 == 1)
      {
        if (v34)
        {
          v38 = *(a1 + 16);
          sub_21D575E44(*v33, 1, *(v33 + 16), *(a3 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveSection + 24));
          sub_21DBF8E0C();
          sub_21D5747C0(v37, v34, v38);
          sub_21D575DF4(v36, 1, v37, v34);
        }
      }

      else
      {
        v39 = *(a1 + 16);
        aBlock = *(v33 + 8);
        sub_21D575E44(v36, v35, v37, v34);
        sub_21D15751C(v35);
        sub_21D5766EC(v39, &aBlock);
        sub_21D575DF4(v36, v35, v37, v34);
        sub_21D157878(v35);
      }
    }

    v40 = *(a1 + 16);
    v41 = [v40 titleAsString];
    if (!v41)
    {
      goto LABEL_21;
    }

    v42 = v41;
    v43 = sub_21DBFA16C();
    v45 = v44;

    aBlock = v43;
    v95 = v45;
    sub_21DBF4C5C();
    sub_21D176F0C();
    v46 = sub_21DBFBB3C();
    v48 = v47;
    (*(v91 + 1))(v10, v8);

    v49 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v49 = v46 & 0xFFFFFFFFFFFFLL;
    }

    if (!v49)
    {
LABEL_21:
      if (qword_27CE56A00 != -1)
      {
        swift_once();
      }

      v50 = sub_21DBF84BC();
      __swift_project_value_buffer(v50, qword_27CE5DFE0);
      v51 = sub_21DBF84AC();
      v52 = sub_21DBFAE9C();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_21D0C9000, v51, v52, "Saving a reminder using a default title because the associated reminder change item has an empty or nil title.", v53, 2u);
        MEMORY[0x223D46520](v53, -1, -1);
      }

      v54 = [v40 listChangeItem];
      v55 = v54;
      if (v54)
      {
        v54 = sub_21D0D8CF0(0, &unk_280D177F0, 0x277D44680);
        v56 = &protocol witness table for REMListChangeItem;
      }

      else
      {
        v56 = 0;
        v95 = 0;
        v96 = 0;
      }

      aBlock = v55;
      v97 = v54;
      v98 = v56;
      _s15RemindersUICore21TTRLocalizableStringsO6CommonO28defaultTitleForBlankReminder19effectiveParentListSSAA15TTRListProtocol_pSg_tFZ_0(&aBlock);
      sub_21D0CF7E0(&aBlock, &qword_27CE59DC0, &qword_21DC0FBF0);
      v57 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v58 = sub_21DBFA12C();

      v59 = [v57 initWithString_];

      [v40 setTitle_];
    }

    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    v61 = [v40 saveRequest];
    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
    v62 = sub_21DBFB12C();
    v63 = swift_allocObject();
    v65 = v92;
    v64 = v93;
    v63[2] = v93;
    v63[3] = v65;
    v63[4] = v60;
    v98 = sub_21D5766E0;
    v99 = v63;
    aBlock = MEMORY[0x277D85DD0];
    v95 = 1107296256;
    v96 = sub_21D11E5E4;
    v97 = &block_descriptor_52;
    v66 = _Block_copy(&aBlock);
    sub_21D0D0E78(v64, v65);

    [v61 saveWithQueue:v62 completion:v66];
    _Block_release(v66);

    v67 = [v40 saveRequest];
    v68 = [v67 store];

    v69 = [v68 optimisticallyMaterializeReminderChangeItem_];
    swift_beginAccess();
    v70 = *(v60 + 16);
    *(v60 + 16) = v69;

    return result;
  }

  v18 = *(a3 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveList);
  if ((v17 & 1) == 0)
  {
    v32 = [v18 objectID];
    LOBYTE(aBlock) = 0;

    sub_21D157864(v18, v17);
    goto LABEL_12;
  }

  v89 = v13;
  v90 = v18;
  v19 = *(a3 + 48);
  v20 = v18;
  v21 = [v20 accountID];
  aBlock = 0;
  v22 = [v19 fetchDefaultListRequiringCloudKitAccountWithAccountID:v21 error:&aBlock];

  if (aBlock)
  {
    v23 = aBlock;

    swift_willThrow();
    v24 = v93;
    if (v93)
    {
      sub_21D5768B8();
      v25 = swift_allocError();
      v24(v25, 1);

LABEL_6:
      sub_21D157864(v90, v17);

      return result;
    }

    goto LABEL_39;
  }

  if (!v22)
  {
    v87 = v93;
    if (v93)
    {
      sub_21D5768B8();
      v25 = swift_allocError();
      v87(v25, 1);
      goto LABEL_6;
    }

    goto LABEL_39;
  }

  v88 = [v22 objectID];
  LOBYTE(aBlock) = 0;
  v71 = TTRReminderEditor.edit(listID:knownSubtaskChangeItems:forceCopyingReminder:allowsLossyCopying:assignmentCopying:)(v88, MEMORY[0x277D84F90], 0, 0, &aBlock);

  v72 = [v20 customContext];
  if (v72)
  {
    v73 = v72;
    v74 = sub_21DBFB4FC();

    if (v74)
    {
      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      TTRReminderEditor.edit(toMatch:now:)(v74, v16);

      sub_21D157864(v90, v17);
      (*(v12 + 8))(v16, v89);
      goto LABEL_12;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_21DC08D00;
  v82 = [v20 objectID];
  *(v81 + 56) = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  *(v81 + 64) = sub_21D576678();
  *(v81 + 32) = v82;
  sub_21DBFA17C();
  v83 = v93;
  if (!v93)
  {

LABEL_39:
    sub_21D157864(v90, v17);
    return result;
  }

  v84 = objc_opt_self();
  v85 = sub_21DBFA12C();

  v86 = [v84 internalErrorWithDebugDescription_];

  v83(v86, 1);
  sub_21D157864(v90, v17);

  return result;
}

void sub_21D5747C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21DBF619C();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a3 listChangeItem];
  if (v9)
  {
    v39 = v9;
    v10 = [v9 sectionsContextChangeItem];
    if (v10)
    {
      v11 = v10;
      v12 = [v39 saveRequest];
      v13 = sub_21DBFA12C();
      v36 = [v12 addListSectionWithDisplayName:v13 toListSectionContextChangeItem:v11];

      v14 = [v39 groceryContextChangeItem];
      if (v14 && (v15 = v14, v16 = [v14 shouldCategorizeGroceryItems], v15, v16))
      {
        v40 = 0;
        v41 = 0xE000000000000000;
        sub_21DBFBEEC();
        v17 = sub_21DBFC8EC();
        v19 = v18;

        v40 = v17;
        v41 = v19;
        v20 = 0x207473694C202D20;
        v21 = 0xEF797265636F7247;
      }

      else
      {
        v40 = sub_21DBFC8EC();
        v41 = v22;
        v20 = 0x7473694C202D20;
        v21 = 0xE700000000000000;
      }

      MEMORY[0x223D42AA0](v20, v21);
      v23 = v41;
      v35 = v40;
      v37 = v11;
      v38 = a3;
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      sub_21DBF62DC();
      sub_21DBF62CC();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8, &qword_21DC0AFC0);
      v25 = &v8[v24[12]];
      v26 = v24[16];
      v27 = &v8[v24[20]];
      v28 = *MEMORY[0x277D44E60];
      v29 = sub_21DBF613C();
      (*(*(v29 - 8) + 104))(v8, v28, v29);
      *v25 = TTRUserDefaults.activitySessionId.getter();
      v25[1] = v30;
      TTRUserDefaults.activitySessionBeginTime.getter(&v8[v26]);
      *v27 = v35;
      *(v27 + 1) = v23;
      (*(v5 + 104))(v8, *MEMORY[0x277D44E98], v4);
      sub_21DBF62BC();

      (*(v5 + 8))(v8, v4);
      v31 = v36;
      v32 = [v36 objectID];
      v40 = v32;
      sub_21D5766EC(v38, &v40);
    }

    else
    {
      v33 = v39;
    }
  }
}

void sub_21D574BBC(void *a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a1;
    if (qword_27CE56A00 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_27CE5DFE0);
    v8 = a1;
    v9 = sub_21DBF84AC();
    v10 = sub_21DBFAEBC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25[0] = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_21DBFC74C();
      v15 = sub_21D0CDFB4(v13, v14, v25);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_21D0C9000, v9, v10, "Error saving reminder: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x223D46520](v12, -1, -1);
      MEMORY[0x223D46520](v11, -1, -1);
    }

    if (a2)
    {
      v16 = a1;
      a2(a1, 1);
    }
  }

  else
  {
    if (qword_280D165D0 != -1)
    {
      swift_once();
    }

    TTRWidgetCenter.reloadAllTimelines()();
    if (qword_27CE56A00 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_27CE5DFE0);
    v19 = sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC("Reminder saved from extension", 29, 2, v19);

    swift_beginAccess();
    v20 = *(a4 + 16);
    if (v20)
    {
      if (a2)
      {
        v21 = v20;
        a2(v20, 0);
      }
    }

    else if (a2)
    {
      v22 = objc_opt_self();
      v23 = sub_21DBFA12C();
      v24 = [v22 internalErrorWithDebugDescription_];

      a2(v24, 1);
    }
  }
}

void sub_21D574EE4(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A7B0, &qword_21DC104B0);
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x28223BE20](v4);
  v75 = (&v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v84 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DFF8, &qword_21DC1B6E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v62 - v9;
  v11 = type metadata accessor for TTRExtensionContextExtractorResult(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a1;
  v16 = OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_extensionContextExtractorResult;
  swift_beginAccess();
  sub_21D0D3954(a2 + v16, v10, &qword_27CE5DFF8, &qword_21DC1B6E0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21D0CF7E0(v10, &qword_27CE5DFF8, &qword_21DC1B6E0);
    return;
  }

  sub_21D570EEC(v10, v14, v17);
  TTRReminderEditor.apply(_:)(v14);
  v66 = v15;
  v18 = [*(v15 + 16) attachmentContext];
  if (!v18)
  {
    goto LABEL_30;
  }

  v19 = v18;
  v20 = [v18 attachments];
  sub_21D0D8CF0(0, &qword_280D0C310, 0x277D445A0);
  v21 = sub_21DBFA5EC();

  v63 = v14;
  if (v21 >> 62)
  {
    v22 = sub_21DBFBD7C();
    if (v22)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
LABEL_29:

    v14 = v63;
LABEL_30:
    v58 = *(v66 + 16);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v60 = *(a2 + 24);
      ObjectType = swift_getObjectType();
      (*(v60 + 8))(v58, ObjectType, v60);
      swift_unknownObjectRelease();
    }

    sub_21D570F50(v14, v59);
    return;
  }

LABEL_6:
  if (v22 >= 1)
  {
    v23 = 0;
    v76 = v21 & 0xC000000000000001;
    v69 = (v77 + 16);
    v68 = (v77 + 88);
    v67 = *MEMORY[0x277D450E0];
    v71 = (v77 + 8);
    v65 = (v77 + 96);
    v64 = *MEMORY[0x277D450E8];
    v62 = xmmword_21DC08D00;
    v73 = v21;
    v74 = v19;
    v72 = v22;
    v70 = a2;
    while (1)
    {
      v24 = v76 ? MEMORY[0x223D44740](v23, v21) : *(v21 + 8 * v23 + 32);
      v25 = v24;
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        break;
      }

LABEL_9:
      if (v22 == ++v23)
      {
        goto LABEL_29;
      }
    }

    v27 = v26;
    v77 = v23;
    v28 = *(a2 + 72);
    v29 = swift_getObjectType();
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    v30 = *(v28 + 8);
    v31 = v25;
    v32 = v78;
    v33 = v84;
    v30(v27, &v81, v29, v28);
    sub_21D0CF7E0(&v81, &qword_27CE5A7B8, &qword_21DC104B8);
    v34 = v75;
    (*v69)(v75, v33, v32);
    v35 = (*v68)(v34, v32);
    if (v35 == v67)
    {
      v36 = v78;
      (*v65)(v34, v78);
      v37 = swift_allocObject();
      v37[2] = v66;
      v37[3] = v27;
      v38 = v70;
      v37[4] = v70;
      v39 = v31;

      v40 = sub_21DBF816C();
      sub_21DBF820C();

      (*v71)(v84, v36);
      a2 = v38;
LABEL_26:
      v21 = v73;
      v19 = v74;
      v22 = v72;
      v23 = v77;
      goto LABEL_9;
    }

    a2 = v70;
    if (v35 != v64)
    {
      v55 = *v71;
      v56 = v78;
      (*v71)(v33, v78);

      v55(v34, v56);
      goto LABEL_26;
    }

    (*v65)(v34, v78);
    v41 = *v34;
    v42 = *v34;
    v43 = v66;
    TTRReminderEditor.update(metadata:for:)(v42, v27);
    v44 = [*(v43 + 16) title];
    if (v44 && (v45 = v44, v46 = [v44 length], v45, v46 > 0) || (v47 = objc_msgSend(v41, sel_title, v62, *(&v62 + 1))) == 0)
    {
      v57 = v31;
      v49 = v41;
    }

    else
    {
      v48 = v47;
      v49 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

      v50 = sub_21D9CA3E0(v49, 0, 1);
      if (v50)
      {
        v51 = v50;
        *(&v82 + 1) = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        v52 = *(v43 + 16);
        swift_retain_n();
        *&v81 = [v52 objectID];
        v53 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8, &unk_21DC0C0B0);
        *&v79 = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0, &qword_21DC094D0);
        v54 = swift_allocObject();
        *(v54 + 16) = v62;
        sub_21D0CEB98(&v81, v54 + 32);
        sub_21D0CF2E8(&v79, (v54 + 64));
        __swift_destroy_boxed_opaque_existential_0(&v81);
        sub_21D1C442C(v54, sub_21D23298C, v51);

LABEL_25:
        (*v71)(v33, v78);
        goto LABEL_26;
      }

      v57 = v41;
    }

    goto LABEL_25;
  }

  __break(1u);
}

void sub_21D575788(void *a1, uint64_t a2, void *a3)
{
  TTRReminderEditor.update(metadata:for:)(a1, a3);
  v5 = [*(a2 + 16) title];
  if (!v5 || (v6 = v5, v7 = [v5 length], v6, v7 <= 0))
  {
    v8 = [a1 title];
    if (v8)
    {
      v9 = v8;
      v12 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

      v10 = sub_21D9CA3E0(v12, 0, 1);
      if (v10)
      {
        v11 = v10;
        swift_retain_n();
        sub_21D182E74(sub_21D233058, v11);
      }
    }
  }
}

uint64_t sub_21D5758BC(void **a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_21D575788(*a1, a2, a3);
  v6 = *(a2 + 16);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(a4 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(v6, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_21D5759C8()
{
  v1 = *(v0 + 112);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

id sub_21D575A04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveList;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_pendingMoveList);
  *a1 = v3;
  v4 = *(v2 + 8);
  *(a1 + 8) = v4;
  return sub_21D1B1ED4(v3, v4);
}

void sub_21D575A50(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;
  sub_21DBF8E0C();

  v6 = sub_21DBF816C();
  sub_21DBF820C();
}

void sub_21D575B70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v5;

  v8 = a1;

  v9 = sub_21DBF816C();
  sub_21DBF820C();
}

void sub_21D575C28(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21D576AD0;
  *(v6 + 24) = v5;

  sub_21D0D0E78(a1, a2);
  v7 = sub_21DBF816C();
  sub_21DBF820C();
}

uint64_t sub_21D575D90(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E078, &qword_21DC1BA68);
  return v3(a1, a1 + *(v4 + 48), *(a1 + *(v4 + 64)));
}

double sub_21D575DF4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_21D157878(a1);
    sub_21D157878(a2);
  }

  return result;
}

double sub_21D575E44(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_21D15751C(a1);
    sub_21D15751C(a2);

    sub_21DBF8E0C();
  }

  return result;
}

uint64_t sub_21D575ED0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TTRExtensionContextExtractorResult(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D575F34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DFF8, &qword_21DC1B6E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D575FC0(uint64_t *a1)
{
  v3 = *(sub_21DBF509C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_21D572F38(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_21D57610C()
{
  result = qword_27CE5E038;
  if (!qword_27CE5E038)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRExtensionCreateReminderInteractorRequestedActions, &type metadata for TTRExtensionCreateReminderInteractorRequestedActions, v0, v1);
    atomic_store(result, &qword_27CE5E038);
  }

  return result;
}

unint64_t sub_21D576164()
{
  result = qword_27CE5E040;
  if (!qword_27CE5E040)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRExtensionCreateReminderInteractorRequestedActions, &type metadata for TTRExtensionCreateReminderInteractorRequestedActions, v0, v1);
    atomic_store(result, &qword_27CE5E040);
  }

  return result;
}

unint64_t sub_21D5761BC()
{
  result = qword_27CE5E048;
  if (!qword_27CE5E048)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRExtensionCreateReminderInteractorRequestedActions, &type metadata for TTRExtensionCreateReminderInteractorRequestedActions, v0, v1);
    atomic_store(result, &qword_27CE5E048);
  }

  return result;
}

unint64_t sub_21D576214()
{
  result = qword_27CE5E050;
  if (!qword_27CE5E050)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRExtensionCreateReminderInteractorRequestedActions, &type metadata for TTRExtensionCreateReminderInteractorRequestedActions, v0, v1);
    atomic_store(result, &qword_27CE5E050);
  }

  return result;
}

uint64_t type metadata accessor for TTRExtensionCreateReminderInteractor(uint64_t a1)
{
  result = qword_27CE5E058;
  if (!qword_27CE5E058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D576484(uint64_t a1, __n128 a2)
{
  sub_21D576598(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21D576598(uint64_t a1, __n128 a2)
{
  if (!qword_27CE5E068)
  {
    type metadata accessor for TTRExtensionContextExtractorResult(255);
    v2 = sub_21DBFBA8C();
    if (!v3)
    {
      atomic_store(v2, &qword_27CE5E068);
    }
  }
}

uint64_t objectdestroy_47Tm()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_31Tm()
{

  return swift_deallocObject();
}

unint64_t sub_21D576678()
{
  result = qword_280D17868;
  if (!qword_280D17868)
  {
    v3 = sub_21D0D8CF0(255, &qword_280D17880, 0x277D44700);
    result = swift_getWitnessTable(MEMORY[0x277D85388], v3, v0, v1);
    atomic_store(result, &qword_280D17868);
  }

  return result;
}

double sub_21D5766EC(void *a1, void **a2)
{
  v3 = *a2;
  v4 = [a1 listChangeItem];
  if (v4)
  {
    v6 = v4;
    v7 = sub_21D9B0C90(v6, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC09CF0;
    *(inited + 32) = [a1 objectID];
    sub_21D1CE198(inited);
    v10 = v9;
    swift_setDeallocating();
    swift_arrayDestroy();
    v17 = v3;
    v11 = MEMORY[0x277D84F90];
    v12 = sub_21D1778CC(MEMORY[0x277D84F90]);
    TTRListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v10, &v17, v12);

    v13 = *(v7 + 16);
    LOBYTE(v17) = 0;
    v14 = _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_12togetherWith2to05forceI0011allowsLossyI0010assignmentI0So21REMReminderChangeItemC8reminder_SayAKG8subtaskstAK_AMSo07REMListtU0CS2bAC010AssignmentI0OtFZ_0(a1, v11, v13, 0, 0, &v17);
    v17 = 1;
    v18 = 2;
    sub_21D1BF7A0(v14, v15, &v17);

    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_21DC09CF0;
    *(v16 + 32) = [a1 objectID];
    sub_21D1BF9F4(v16);
  }

  return result;
}

unint64_t sub_21D5768B8()
{
  result = qword_27CE5E070;
  if (!qword_27CE5E070)
  {
    result = swift_getWitnessTable(byte_21DC1BAF0, &type metadata for TTRExtensionCreateReminderInteractor.InteractorError, v0, v1);
    atomic_store(result, &qword_27CE5E070);
  }

  return result;
}

uint64_t sub_21D57690C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21D5769B8()
{
  result = qword_27CE5E088;
  if (!qword_27CE5E088)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5E080, &qword_21DC1BA70);
    result = swift_getWitnessTable(MEMORY[0x277CBCD90], v3, v0, v1);
    atomic_store(result, &qword_27CE5E088);
  }

  return result;
}

unint64_t sub_21D576A30()
{
  result = qword_27CE5E090;
  if (!qword_27CE5E090)
  {
    result = swift_getWitnessTable(byte_21DC1BAC8, &type metadata for TTRExtensionCreateReminderInteractor.InteractorError, v0, v1);
    atomic_store(result, &qword_27CE5E090);
  }

  return result;
}

double sub_21D576DFC@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 1;
  return result;
}

void sub_21D576E14(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21DBF8A0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v37[-1] - v10;
  v12 = [v1 contentView];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();

  if (!v13)
  {
    (*((*MEMORY[0x277D85000] & *v2) + 0x58))(v38, a1);
    if (v39)
    {
      sub_21DBF89CC();
      v14 = sub_21DBF87CC();
      v37[3] = v14;
      v37[4] = MEMORY[0x277D74BA8];
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v37);
      (*(*(v14 - 8) + 16))(boxed_opaque_existential_0, a1, v14);
      sub_21DBF89FC();
      v16 = *(v5 + 8);
      v16(v7, v4);
      __swift_destroy_boxed_opaque_existential_0(v37);
      v17 = [v2 contentView];
      v18 = sub_21DBF89AC();
      sub_21DBF897C();
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v27 = 15;
      if ((v18 & 1) == 0)
      {
        v27 = 5;
      }

      if ((v18 & 2) != 0)
      {
        v28 = v27;
      }

      else
      {
        v28 = (v18 << 63 >> 63) & 0xA;
      }

      [v17 setEdgesPreservingSuperviewLayoutMargins_];
      [v17 setDirectionalLayoutMargins_];

      v16(v11, v4);
    }

    else
    {
      v29 = v38[4];
      v31 = *&v38[2];
      v30 = *&v38[3];
      v33 = *v38;
      v32 = *&v38[1];
      v34 = [v2 contentView];
      [v34 setEdgesPreservingSuperviewLayoutMargins_];

      v36 = [v2 contentView];
      [v36 setDirectionalLayoutMargins_];
      v35 = v36;
    }
  }
}

id TTRIRemindersListCollectionListCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRIRemindersListCollectionListCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC15RemindersUICore35TTRIRemindersListCollectionListCell_lastAppliedBackground] = 4;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for TTRIRemindersListCollectionListCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id TTRIRemindersListCollectionListCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRIRemindersListCollectionListCell.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC15RemindersUICore35TTRIRemindersListCollectionListCell_lastAppliedBackground] = 4;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TTRIRemindersListCollectionListCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id TTRIRemindersListCollectionListCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIRemindersListCollectionListCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21D5774A4()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = type metadata accessor for TTRIRemindersListCollectionListCell();
  return objc_msgSendSuper2(&v2, sel_invalidateIntrinsicContentSize);
}

char *static TTRIReminderCellTitleAssembly.createViewController(item:titleAttributesInteractor:quickBar:augmentationSplitter:ownerModule:hostViewController:inCellPresenterManager:isSingleReminderEditingMode:returnKeyType:moduleDelegate:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, void *a9, void *a10, unsigned __int8 a11, uint64_t *a12, uint64_t a13, uint64_t a14)
{
  v93 = a6;
  v95 = a5;
  v96 = a4;
  v99 = a3;
  v108 = a2;
  v98 = a1;
  v102 = a9;
  v101 = a10;
  v100 = a11;
  v106 = sub_21DBF9D8C();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = (&v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v16 - 8);
  v94 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v92 - v19;
  v109 = *a7;
  type metadata accessor for TTRReminderCellTitleInteractor();
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  v97 = v21;
  swift_unknownObjectWeakInit();
  v92 = type metadata accessor for TTRIReminderCellTitleRouter();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v107 = v22;
  swift_unknownObjectWeakAssign();
  type metadata accessor for TTRReminderCellHashtagInteractor();
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRReminderCellInlineHashtagEditingPresenter(0);
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D84FA0];
  v24[5] = MEMORY[0x277D84FA0];
  v24[6] = v25;
  v24[7] = 0;
  sub_21DBF78BC();
  v24[2] = v23;
  v24[3] = &protocol witness table for TTRReminderCellHashtagInteractor;
  type metadata accessor for TTRInlineHashtagEditProcessor();
  v26 = swift_allocObject();
  type metadata accessor for TTRReminderTextChangeDetailAdjuster();
  *(v26 + 16) = swift_allocObject();
  *(v26 + 24) = 75;
  v24[4] = v26;
  v27 = type metadata accessor for TTRAttachmentThumbnailSizeProvider();
  v28 = swift_allocObject();
  v28[1] = vdupq_n_s64(0x4043000000000000uLL);
  v28[2].i64[0] = 0x405C800000000000;
  v28[2].i8[8] = 1;
  v103 = sub_21D0CE468();
  v29 = sub_21DBFB12C();
  sub_21DBF60DC();
  v30 = sub_21DBF60CC();
  v31 = type metadata accessor for TTRThumbnailGenerator();
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  v33 = objc_allocWithZone(MEMORY[0x277CCABD8]);
  v34 = v29;
  v35 = [v33 init];
  *(v32 + 24) = v35;
  [v35 setUnderlyingQueue_];

  *(&v116 + 1) = v31;
  v117 = &protocol witness table for TTRThumbnailGenerator;
  *&v115 = v32;
  type metadata accessor for TTRAttachmentThumbnailsManager();
  v36 = swift_allocObject();
  v36[5] = v27;
  v36[6] = &protocol witness table for TTRAttachmentThumbnailSizeProvider;
  v36[2] = v28;
  v37 = MEMORY[0x277D84F98];
  v36[12] = 0;
  v36[13] = v37;
  v36[14] = v25;
  sub_21D0D0FD0(&v115, (v36 + 7));
  sub_21D1D338C(v108, v20);
  sub_21D0D32E4(v99, &v115);
  type metadata accessor for TTRReminderCellTitleEditingPresenter(0);
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v38 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v38 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesCancellable) = 0;
  v39 = (v38 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  *v39 = 0;
  v39[1] = 0;
  *(v38 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_shouldSkipSavingEditingSession) = 0;
  *(v38 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleSuggestedAttributeAcceptance) = v37;
  *(v38 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isCommittingForShowReminderDetail) = 0;
  *(v38 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_attachmentThumbnailsManager) = 0;
  sub_21D1D338C(v20, v38 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_item);
  v40 = (v38 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_inlineHashtagEditingPresenter);
  *v40 = v24;
  v40[1] = &protocol witness table for TTRReminderCellInlineHashtagEditingPresenter;
  sub_21D0D0FD0(&v115, v38 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor);
  *(v38 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode) = v100;
  *(v38 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_animatesReminderCreationForReturnKey) = 0;
  *(v38 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_parentType) = v109;
  swift_beginAccess();
  *(v38 + 40) = v101;
  swift_unknownObjectWeakAssign();
  *(v38 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_attachmentThumbnailsManager) = v36;
  v41 = v38 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  sub_21D24BDFC(v20, v38 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state);
  v42 = _s15RemindersUICore12EditingStateVMa_1(0);
  *(v41 + v42[5]) = 0;
  *(v41 + v42[6]) = 0;
  v43 = (v41 + v42[7]);
  *v43 = 0u;
  v43[1] = 0u;
  v44 = (v41 + v42[8]);
  *v44 = 0u;
  v44[1] = 0u;
  *(v41 + v42[9]) = 0;
  *(v41 + v42[10]) = 0;
  *(v41 + v42[11]) = 0;
  v45 = qword_280D155F0;

  v102 = v24;

  if (v45 != -1)
  {
    swift_once();
  }

  if (qword_280D15600)
  {
    v46 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v47 = sub_21DBFA12C();
    v101 = [v46 initWithBundleIdentifier_];
  }

  else
  {
    v101 = [objc_opt_self() currentNotificationCenter];
  }

  v48 = v107;
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v49 = [objc_opt_self() daemonUserDefaults];
  type metadata accessor for TTRIPrivacyChecker();
  v50 = swift_allocObject();
  v50[3] = 0;
  swift_unknownObjectWeakInit();
  v50[18] = 0;
  swift_beginAccess();
  v50[3] = &off_282EC4F60;
  v51 = v48;
  swift_unknownObjectWeakAssign();
  v52 = type metadata accessor for TTRGeoLocationService(0);
  v113 = v52;
  v114 = &protocol witness table for TTRGeoLocationService;
  v53 = sub_21DBFB12C();
  v54 = v104;
  *v104 = v53;
  v55 = v105;
  v56 = v106;
  (*(v105 + 104))(v54, *MEMORY[0x277D85200], v106);
  LOBYTE(v48) = sub_21DBF9DAC();
  result = (*(v55 + 8))(v54, v56);
  if (v48)
  {
    v105 = a14;
    v106 = a13;
    v104 = a12;
    *&v112 = sub_21D0D7EE0(objc_allocWithZone(v52), 0, 0);
    sub_21D0D0FD0(&v112, (v50 + 4));
    type metadata accessor for TTRNotificationsAccessService();
    v58 = swift_allocObject();
    v58[2] = v49;
    v58[3] = &protocol witness table for REMDaemonUserDefaults;
    v59 = v101;
    v58[4] = v101;
    v50[9] = v58;
    v50[10] = &protocol witness table for TTRNotificationsAccessService;
    v50[11] = v49;
    v50[12] = &protocol witness table for REMDaemonUserDefaults;
    sub_21D0D3954(&v115, &v110, &qword_27CE5E0A0, &unk_21DC1BB80);
    if (v111)
    {
      v60 = v49;
      sub_21D578264(&v115);
      sub_21D0D0FD0(&v110, &v112);
    }

    else
    {
      v61 = type metadata accessor for TTRUrgentAlarmAuthorizationService();
      v62 = swift_allocObject();
      v63 = sub_21DBF5EAC();
      swift_allocObject();
      v64 = v49;
      v65 = v59;
      v66 = sub_21DBF5E9C();
      v67 = MEMORY[0x277D44D00];
      v62[5] = v63;
      v62[6] = v67;
      v51 = v107;
      v62[2] = v66;
      v113 = v61;
      v114 = &protocol witness table for TTRUrgentAlarmAuthorizationService;

      *&v112 = v62;
      sub_21D578264(&v115);
      if (v111)
      {
        sub_21D578264(&v110);
      }
    }

    sub_21D0D0FD0(&v112, (v50 + 13));
    v68 = v94;
    sub_21D1D338C(v108, v94);
    sub_21D0D3954(v93, &v115, &qword_27CE5E0A8, &unk_21DC1C6F0);
    v69 = v92;
    v113 = v92;
    v114 = &off_282EC4F50;
    *&v112 = v51;
    type metadata accessor for TTRIReminderCellTitlePresenter(0);
    v70 = swift_allocObject();
    v71 = __swift_mutable_project_boxed_opaque_existential_1(&v112, v69);
    v72 = MEMORY[0x28223BE20](v71);
    v74 = (&v92 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v75 + 16))(v74, v72);
    v76 = *v74;
    v77 = &v70[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_router];
    *(v77 + 3) = v69;
    *(v77 + 4) = &off_282EC4F50;
    *v77 = v76;
    *(v70 + 3) = 0;
    swift_unknownObjectWeakInit();
    *(v70 + 5) = 0;
    swift_unknownObjectWeakInit();
    *(v70 + 7) = 0;
    swift_unknownObjectWeakInit();
    v78 = OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_viewModel;
    v79 = type metadata accessor for TTRReminderCellTitleViewModel(0);
    (*(*(v79 - 8) + 56))(&v70[v78], 1, 1, v79);
    sub_21D24BDFC(v68, &v70[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_item]);
    v80 = &v70[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_interactor];
    v81 = v97;
    *v80 = v97;
    v80[1] = &protocol witness table for TTRReminderCellTitleInteractor;
    v82 = &v70[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_editingPresenter];
    *v82 = v38;
    v82[1] = &protocol witness table for TTRReminderCellTitleEditingPresenter;
    v83 = &v70[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_quickBar];
    v84 = v95;
    *v83 = v96;
    v83[1] = v84;
    v85 = &v70[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_augmentationSplitter];
    *(v85 + 4) = v117;
    v86 = v116;
    *v85 = v115;
    *(v85 + 1) = v86;
    *&v70[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_privacyChecker] = v50;
    v70[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_ownerModule] = v109;
    *&v70[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_returnKeyType] = v104;
    swift_unknownObjectRetain();

    __swift_destroy_boxed_opaque_existential_0(&v112);
    v87 = type metadata accessor for TTRIReminderCellTitleViewController();
    v88 = objc_allocWithZone(v87);

    v90 = sub_21D57816C(v89, v88);
    swift_beginAccess();
    *(v81 + 24) = &off_282EC5918;
    swift_unknownObjectWeakAssign();
    *(v70 + 3) = &off_282EC5640;
    swift_unknownObjectWeakAssign();
    *(v70 + 7) = v105;
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    *(v38 + 24) = &off_282EC58C8;
    swift_unknownObjectWeakAssign();
    v91 = v98;
    v98[3] = v87;

    *v91 = v90;

    return v70;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21D57816C(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_tokenInteraction;
  type metadata accessor for TTRHashtagTokenTextInteraction();
  v6 = swift_allocObject();
  type metadata accessor for HashtagTokenEditor();
  *(v6 + 24) = swift_allocObject();
  *(v6 + 16) = 0;
  *&a2[v5] = v6;
  *&a2[OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView] = 0;
  a2[OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_userPressedReturn] = 0;
  v7 = OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_changeDetailCapturer;
  type metadata accessor for TTRReminderTextChangeDetailCapturer();
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *&a2[v7] = v8;
  *(v8 + 48) = 0;
  v9 = &a2[OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_presenter];
  *v9 = a1;
  v9[1] = &off_282EC5808;
  v11.receiver = a2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_21D578264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E0A0, &unk_21DC1BB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_21D578364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0, &unk_21DC1BD10);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for TTRRemindersListUndoContext(0);
  sub_21D0D3954(v3 + *(v10 + 20), v9, &qword_27CE650E0, &unk_21DC1BD10);
  v11 = type metadata accessor for TTRListType(0);
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) == 1)
  {
    sub_21D0CF7E0(v9, &qword_27CE650E0, &unk_21DC1BD10);
    v17 = 0u;
    v18 = 0u;
    *&v19 = 0;
  }

  else
  {
    *(&v18 + 1) = v11;
    *&v19 = &protocol witness table for TTRListType;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
    sub_21D107418(v9, boxed_opaque_existential_0, type metadata accessor for TTRListType);
  }

  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v23 = MEMORY[0x277D84F90];
  sub_21DBF8E0C();
  sub_21D3DD654(&v17, v21);

  v23 = a1;
  v24 = a2;
  v25 = a3;
  sub_21D3DD574(v21, &v17);
  v13 = swift_allocObject();
  v14 = v18;
  v13[1] = v17;
  v13[2] = v14;
  v15 = v20;
  v13[3] = v19;
  v13[4] = v15;
  sub_21D0D8CF0(0, &unk_280D17840, 0x277CCAD90);

  sub_21DBFAE8C();

  return sub_21D3DD5B4(v21);
}

uint64_t sub_21D57858C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState);
  v4 = *(v3 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem);
  v5 = sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
  v16[3] = v5;
  v16[4] = &protocol witness table for REMReminderChangeItem;
  v16[0] = v4;
  v6 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_pendingMoveTargetList;
  swift_beginAccess();
  v7 = *(v3 + v6);
  v16[5] = v7;
  if (v7)
  {
    *(&v14 + 1) = sub_21D0D8CF0(0, &qword_280D17690, 0x277D44660);
    v15 = &protocol witness table for REMList;
    *&v13 = v7;
    sub_21D0D0FD0(&v13, a1);
    v8 = v4;
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    __swift_project_boxed_opaque_existential_1(v16, v5);
    v9 = off_282EEAD60[0];
    v10 = v4;
    (v9)(a1);
  }

  v11 = v7;
  return sub_21D4ECC40(v16);
}

uint64_t sub_21D5786EC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5E0B0);
  v1 = __swift_project_value_buffer(v0, qword_27CE5E0B0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRRemindersListConcreteEditingSession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_id;
  v4 = sub_21DBF56BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRRemindersListConcreteEditingSession.acquirerName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_acquirerName);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersListConcreteEditingSession.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRRemindersListConcreteEditingSession.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

uint64_t TTRRemindersListConcreteEditingSession.__allocating_init(acquirerName:editingSessionState:isFormallyAcquired:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8 = swift_allocObject();
  TTRRemindersListConcreteEditingSession.init(acquirerName:editingSessionState:isFormallyAcquired:)(a1, a2, a3, v4);
  return v8;
}

uint64_t TTRRemindersListConcreteEditingSession.init(acquirerName:editingSessionState:isFormallyAcquired:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370, &unk_21DC0B390);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  sub_21DBF56AC();
  *(v4 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_finishCalled) = 0;
  v12 = (v4 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_acquirerName);
  *v12 = a1;
  v12[1] = a2;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState) = a3;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_isFormallyAcquired) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21DC09CF0;
  v14 = *(a3 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem);
  *(v13 + 32) = v14;
  v15 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_undoContext;
  swift_beginAccess();
  sub_21D0D3954(a3 + v15, v11, &qword_27CE59370, &unk_21DC0B390);
  v16 = type metadata accessor for TTRRemindersListUndoContext(0);
  if ((*(*(v16 - 8) + 48))(v11, 1, v16) == 1)
  {
    v17 = v14;
    sub_21D0CF7E0(v11, &qword_27CE59370, &unk_21DC0B390);
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
  }

  else
  {
    *(&v27 + 1) = v16;
    v28 = &protocol witness table for TTRRemindersListUndoContext;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v26);
    sub_21D107418(v11, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListUndoContext);
    v19 = v14;
  }

  v20 = type metadata accessor for TTRRemindersListChangeItemAttributeEditorProvider();
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  *(v21 + 32) = 0;
  *(v21 + 16) = v13;
  v22 = v27;
  *(v21 + 40) = v26;
  *(v21 + 56) = v22;
  *(v21 + 72) = v28;
  type metadata accessor for TTRRemindersListAttributeEditor();
  v23 = swift_allocObject();
  v23[5] = v20;
  v23[6] = &protocol witness table for TTRRemindersListChangeItemAttributeEditorProvider;
  v23[2] = v21;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_internalAttributeEditor) = v23;
  return v4;
}

uint64_t TTRRemindersListConcreteEditingSession.deinit()
{
  if ((*(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_finishCalled) & 1) == 0 && *(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_isFormallyAcquired) == 1)
  {
    v4 = 0;
    TTRRemindersListConcreteEditingSession.finish(options:)(&v4);
  }

  v1 = OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_id;
  v2 = sub_21DBF56BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_delegate);

  return v0;
}

Swift::Void __swiftcall TTRRemindersListConcreteEditingSession.finish(options:)(RemindersUICore::TTRRemindersListEditingSessionFinishingOption options)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_isFormallyAcquired) != 1)
  {
    if (qword_27CE56A08 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE5E0B0);
    oslog = sub_21DBF84AC();
    v3 = sub_21DBFAECC();
    if (!os_log_type_enabled(oslog, v3))
    {
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "TTRRemindersListConcreteEditingSession: calling finish on this editing session is not allowed";
    goto LABEL_11;
  }

  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_finishCalled))
  {
    if (qword_27CE56A08 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_27CE5E0B0);
    oslog = sub_21DBF84AC();
    v3 = sub_21DBFAECC();
    if (!os_log_type_enabled(oslog, v3))
    {
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
LABEL_11:
    _os_log_impl(&dword_21D0C9000, oslog, v3, v5, v4, 2u);
    MEMORY[0x223D46520](v4, -1, -1);
LABEL_12:

    return;
  }

  v7 = *options.rawValue;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_finishCalled) = 1;
  v8 = v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v12 = v7;
    (*(v9 + 8))(v1, &v12, ObjectType, v9);
    swift_unknownObjectRelease();
  }
}

uint64_t TTRRemindersListConcreteEditingSession.__deallocating_deinit()
{
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_finishCalled) & 1) == 0 && (*(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_isFormallyAcquired))
  {
    v4 = 0;
    TTRRemindersListConcreteEditingSession.finish(options:)(&v4);
  }

  v1 = OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_id;
  v2 = sub_21DBF56BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_delegate);

  return swift_deallocClassInstance();
}

id TTRRemindersListConcreteEditingSession.reminder.getter@<X0>(void *a1@<X8>)
{
  v4 = *(*(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState) + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem);
  a1[3] = sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
  a1[4] = &protocol witness table for REMReminderChangeItem;
  *a1 = v4;

  return v4;
}

void *TTRRemindersListConcreteEditingSession.pendingMoveTargetList.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState);
  v2 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_pendingMoveTargetList;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void TTRRemindersListConcreteEditingSession.pendingMoveTargetList.setter(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListUndoContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState);
  v9 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_pendingMoveTargetList;
  swift_beginAccess();
  v10 = *(v8 + v9);
  if (a1)
  {
    v41 = v4;
    v11 = v10;
    v12 = [a1 objectID];
    v13 = v12;
    if (!v10)
    {
      if (!v12)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v11 = v10;
    if (!v10)
    {
      goto LABEL_16;
    }

    v41 = v4;
    v13 = 0;
  }

  v14 = [v11 objectID];
  v15 = v14;
  if (!v13)
  {
    if (v14)
    {
      goto LABEL_13;
    }

LABEL_16:

    return;
  }

  if (!v14)
  {
LABEL_11:
    v15 = v13;
LABEL_13:
    v40 = v7;

    goto LABEL_14;
  }

  v40 = v7;
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v16 = sub_21DBFB63C();

  if (v16)
  {
    goto LABEL_16;
  }

LABEL_14:
  v17 = *(v8 + v9);
  *(v8 + v9) = a1;
  v18 = a1;

  v39 = v2;
  sub_21D57858C(&v42);
  if (v43)
  {
    sub_21D0D0FD0(&v42, v44);
    v19 = *(v8 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem);
    v20 = v5;
    v21 = v18;
    v23 = v45;
    v22 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    v24 = *(v22 + 72);
    v25 = v19;
    v26 = v22;
    v18 = v21;
    v5 = v20;
    v27 = v24(v23, v26);
    [v25 updateAccountCapabilities_];

    __swift_destroy_boxed_opaque_existential_0(v44);
  }

  else
  {
    sub_21D0CF7E0(&v42, &qword_27CE59DC0, &qword_21DC0FBF0);
  }

  v28 = *(v8 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem);
  v29 = [v28 objectID];
  v45 = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v44[0] = v29;
  v30 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8, &unk_21DC0C0B0);
  *&v42 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0, &qword_21DC094D0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_21DC08D00;
  sub_21D0CEB98(v44, v31 + 32);
  sub_21D0CF2E8(&v42, (v31 + 64));

  __swift_destroy_boxed_opaque_existential_0(v44);
  v32 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_undoContext;
  swift_beginAccess();
  if ((*(v5 + 48))(v8 + v32, 1, v41))
  {
  }

  else
  {
    v33 = v8 + v32;
    v34 = v40;
    sub_21D1050E4(v33, v40, type metadata accessor for TTRRemindersListUndoContext);
    v35 = swift_allocObject();
    swift_weakInit();
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = v10;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_21D57A6C4;
    *(v37 + 24) = v36;
    v38 = v10;

    sub_21D578364(v31, sub_21D3DD6C4, v37);

    sub_21D57A6E0(v34);
  }
}

uint64_t sub_21D579700(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = a3;
    TTRRemindersListConcreteEditingSession.pendingMoveTargetList.setter(a3);
  }

  return result;
}

void (*TTRRemindersListConcreteEditingSession.pendingMoveTargetList.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState);
  v6 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_pendingMoveTargetList;
  swift_beginAccess();
  v7 = *(v5 + v6);
  *(v4 + 24) = v7;
  v8 = v7;
  return sub_21D579824;
}

void sub_21D579824(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    TTRRemindersListConcreteEditingSession.pendingMoveTargetList.setter(v3);
  }

  else
  {
    TTRRemindersListConcreteEditingSession.pendingMoveTargetList.setter(*(*a1 + 24));
  }

  free(v2);
}

uint64_t TTRRemindersListConcreteEditingSession.attributeEditor.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_finishCalled) == 1)
  {
    if (qword_27CE56A08 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE5E0B0);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      MEMORY[0x223D46520](v7, -1, -1);
    }
  }

  v8 = *(v2 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_internalAttributeEditor);
  a1[3] = type metadata accessor for TTRRemindersListAttributeEditor();
  a1[4] = &protocol witness table for TTRRemindersListAttributeEditor;
  *a1 = v8;
}

double TTRRemindersListConcreteEditingSession.sharedProperties.getter@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState);
  v4 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_sharedProperties;
  swift_beginAccess();
  *a1 = *(v3 + v4);
  sub_21DBF8E0C();
  return result;
}

double sub_21D579A2C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState);
  v4 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_sharedProperties;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_21DBF8E0C();

  return result;
}

double TTRRemindersListConcreteEditingSession.sharedProperties.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState);
  v4 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_sharedProperties;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

void (*TTRRemindersListConcreteEditingSession.sharedProperties.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState);
  *a1 = v3;
  v6 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_sharedProperties;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + v6);
  sub_21DBF8E0C();
  return sub_21D579BB8;
}

void sub_21D579BB8(uint64_t a1, char a2)
{
  v2 = *a1;
  *(*(*a1 + 32) + *(*a1 + 40)) = *(*a1 + 24);
  if (a2)
  {
    sub_21DBF8E0C();
  }

  free(v2);
}

Swift::Void __swiftcall TTRRemindersListConcreteEditingSession.setNeedsDisplay(_:)(RemindersUICore::TTRRemindersListEditingSessionDisplayTargets a1)
{
  v2 = *a1.rawValue;
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v6 = v2;
    (*(v4 + 32))(v1, &v6, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

uint64_t TTRRemindersListConcreteEditingSession.finishAndForceSave()(_BYTE *a1)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_isFormallyAcquired) != 1)
  {
    if (qword_27CE56A08 != -1)
    {
      swift_once();
    }

    v9 = sub_21DBF84BC();
    __swift_project_value_buffer(v9, qword_27CE5E0B0);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_12;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "TTRRemindersListConcreteEditingSession: calling finish on this editing session is not allowed";
    goto LABEL_11;
  }

  v3 = OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_finishCalled;
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_finishCalled))
  {
    if (qword_27CE56A08 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE5E0B0);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_12;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
LABEL_11:
    _os_log_impl(&dword_21D0C9000, v5, v6, v8, v7, 2u);
    MEMORY[0x223D46520](v7, -1, -1);
LABEL_12:

    result = 0;
    *a1 = 0;
    return result;
  }

  v11 = v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    if (qword_27CE56A08 != -1)
    {
      swift_once();
    }

    v15 = sub_21DBF84BC();
    __swift_project_value_buffer(v15, qword_27CE5E0B0);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_12;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    goto LABEL_11;
  }

  v12 = *(v11 + 8);
  *(v1 + v3) = 1;
  ObjectType = swift_getObjectType();
  v14 = (*(v12 + 16))(a1, v1, ObjectType, v12);
  swift_unknownObjectRelease();
  return v14;
}

uint64_t TTRRemindersListConcreteEditingSession.finishAndForceSaveAsync()(_BYTE *a1)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_isFormallyAcquired) != 1)
  {
    if (qword_27CE56A08 != -1)
    {
      swift_once();
    }

    v9 = sub_21DBF84BC();
    __swift_project_value_buffer(v9, qword_27CE5E0B0);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_12;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "TTRRemindersListConcreteEditingSession: calling finish on this editing session is not allowed";
    goto LABEL_11;
  }

  v3 = OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_finishCalled;
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_finishCalled))
  {
    if (qword_27CE56A08 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE5E0B0);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_12;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
LABEL_11:
    _os_log_impl(&dword_21D0C9000, v5, v6, v8, v7, 2u);
    MEMORY[0x223D46520](v7, -1, -1);
LABEL_12:

    result = 0;
    *a1 = 0;
    return result;
  }

  v11 = v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    if (qword_27CE56A08 != -1)
    {
      swift_once();
    }

    v15 = sub_21DBF84BC();
    __swift_project_value_buffer(v15, qword_27CE5E0B0);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_12;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    goto LABEL_11;
  }

  v12 = *(v11 + 8);
  *(v1 + v3) = 1;
  ObjectType = swift_getObjectType();
  v14 = (*(v12 + 24))(a1, v1, ObjectType, v12);
  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_21D57A228@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_id;
  v4 = sub_21DBF56BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21D57A2EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_acquirerName);
  sub_21DBF8E0C();
  return v1;
}

id sub_21D57A328@<X0>(void *a1@<X8>)
{
  v4 = *(*(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState) + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem);
  a1[3] = sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
  a1[4] = &protocol witness table for REMReminderChangeItem;
  *a1 = v4;

  return v4;
}

void *sub_21D57A3CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState);
  v2 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_pendingMoveTargetList;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void (*sub_21D57A42C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState);
  v6 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_pendingMoveTargetList;
  swift_beginAccess();
  v7 = *(v5 + v6);
  *(v4 + 24) = v7;
  v8 = v7;
  return sub_21D579824;
}

double sub_21D57A4DC@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState);
  v4 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_sharedProperties;
  swift_beginAccess();
  *a1 = *(v3 + v4);
  sub_21DBF8E0C();
  return result;
}

double sub_21D57A544(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState);
  v4 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_sharedProperties;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

void (*sub_21D57A5AC(uint64_t **a1))(void *a1)
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
  v2[4] = TTRRemindersListConcreteEditingSession.sharedProperties.modify(v2);
  return sub_21D25A3E8;
}

uint64_t sub_21D57A61C(uint64_t *a1)
{
  v2 = *a1;
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v7 = v2;
    (*(v5 + 32))(v1, &v7, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D57A6E0(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListUndoContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for TTRRemindersListConcreteEditingSession(uint64_t a1)
{
  result = qword_280D0F920;
  if (!qword_280D0F920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D57A7E0(uint64_t a1)
{
  result = sub_21DBF56BC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_21D57A8F8()
{
  v1 = *(v0 + 48);
  v2 = v1 >> 5;
  if (v1 >> 5 <= 1)
  {
    if (!v2)
    {
      v3 = &selRef_systemGray2Color;
      goto LABEL_20;
    }

    if ((v1 & 1) == 0)
    {
      goto LABEL_3;
    }

    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = sub_21DBFA16C();
    if (!v5)
    {

      sub_21DBFA16C();

      goto LABEL_3;
    }

    if (v6 == v4 && v5 == v7)
    {
    }

    else
    {
      v9 = sub_21DBFC64C();

      if ((v9 & 1) == 0)
      {
        if (sub_21DBFA16C() == v4 && v5 == v10)
        {
        }

        else
        {
          v12 = sub_21DBFC64C();

          if ((v12 & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        v3 = &selRef_systemBrownColor;
        goto LABEL_20;
      }
    }

    v3 = &selRef_systemCyanColor;
    goto LABEL_20;
  }

  if (v2 - 2 < 3)
  {
LABEL_3:
    v3 = &selRef_systemRedColor;
    goto LABEL_20;
  }

  v3 = &selRef_systemBlueColor;
LABEL_20:
  v13 = [objc_opt_self() *v3];

  return v13;
}

uint64_t sub_21D57AA60()
{
  v1 = *(v0 + 48);
  v2 = v1 >> 5;
  if (v1 >> 5 <= 1)
  {
    if (!v2)
    {
      if (qword_27CE56860 != -1)
      {
        swift_once();
      }

      v3 = &qword_27CE5C588;
      return *v3;
    }

    if ((v1 & 1) == 0)
    {
      goto LABEL_3;
    }

    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = sub_21DBFA16C();
    if (!v5)
    {

      sub_21DBFA16C();

      goto LABEL_3;
    }

    if (v6 == v4 && v5 == v7)
    {
    }

    else
    {
      v9 = sub_21DBFC64C();

      if ((v9 & 1) == 0)
      {
        if (sub_21DBFA16C() == v4 && v5 == v10)
        {
        }

        else
        {
          v12 = sub_21DBFC64C();

          if ((v12 & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        if (qword_27CE56878 != -1)
        {
          swift_once();
        }

        v3 = &qword_27CE5C598;
        return *v3;
      }
    }

    if (qword_27CE56870 != -1)
    {
      swift_once();
    }

    v3 = &qword_27CE5C590;
    return *v3;
  }

  if (v2 - 2 < 3)
  {
LABEL_3:
    if (qword_280D1AC58 != -1)
    {
      swift_once();
    }

    v3 = &qword_280D1AC60;
    return *v3;
  }

  if (qword_280D1AC40 != -1)
  {
    swift_once();
  }

  v3 = &qword_280D1AC48;
  return *v3;
}

uint64_t sub_21D57AC94()
{
  v1[2] = v0;
  v1[3] = sub_21DBFA84C();
  v1[4] = sub_21DBFA83C();
  v3 = sub_21DBFA7CC();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_21D57AD30, v3, v2);
}

uint64_t sub_21D57AD30()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong navigationController], v0[7] = v3, v2, v3))
  {
    v0[8] = sub_21DBFA83C();
    v5 = sub_21DBFA7CC();
    v0[9] = v5;
    v0[10] = v4;

    return MEMORY[0x2822009F8](sub_21D57AE2C, v5, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21D57AE2C(uint64_t a1)
{
  v2 = v1[7];
  v3 = sub_21DBFA83C();
  v1[11] = v3;
  v4 = swift_task_alloc();
  v1[12] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = 1;
  v5 = swift_task_alloc();
  v1[13] = v5;
  *v5 = v1;
  v5[1] = sub_21D57AF3C;
  v6 = MEMORY[0x277D85700];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v3, v6, 0xD000000000000019, 0x800000021DC60530, sub_21D57B12C, v4, v7);
}

uint64_t sub_21D57AF3C()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_21D57B09C, v3, v2);
}

uint64_t sub_21D57B09C()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_21D454AAC, v1, v2);
}

uint64_t sub_21D57B138(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = sub_21DBFA84C();
  v3[6] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x2822009F8](sub_21D57B1D8, v5, v4);
}

uint64_t sub_21D57B1D8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v0[10] = sub_21DBFA83C();
    v3 = sub_21DBFA7CC();
    v0[11] = v3;
    v0[12] = v2;

    return MEMORY[0x2822009F8](sub_21D57B2B4, v3, v2);
  }

  else
  {

    v4 = v0[1];

    return v4(2);
  }
}

uint64_t sub_21D57B2B4(uint64_t a1)
{
  v2 = v1[4].i64[1];
  v9 = v1[1];
  v3 = sub_21DBFA83C();
  v1[6].i64[1] = v3;
  v4 = swift_task_alloc();
  v1[7].i64[0] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = vextq_s8(v9, v9, 8uLL);
  *(v4 + 40) = 1;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  v5 = swift_task_alloc();
  v1[7].i64[1] = v5;
  *v5 = v1;
  v5[1] = sub_21D57B3E8;
  v6 = MEMORY[0x277D85700];
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](&v1[8], v3, v6, 0xD00000000000002BLL, 0x800000021DC60680, sub_21D5812FC, v4, v7);
}

uint64_t sub_21D57B3E8()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21D57B548, v3, v2);
}

uint64_t sub_21D57B548()
{

  *(v0 + 129) = *(v0 + 128);
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_21D57B5BC, v1, v2);
}

uint64_t sub_21D57B5BC()
{

  v1 = *(v0 + 129);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21D57B620()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5E0C8);
  v1 = __swift_project_value_buffer(v0, qword_27CE5E0C8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}