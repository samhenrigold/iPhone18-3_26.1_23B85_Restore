unint64_t sub_25A8E7240()
{
  result = qword_27FA04B58;
  if (!qword_27FA04B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04B58);
  }

  return result;
}

unint64_t sub_25A8E7294(uint64_t a1, uint64_t a2)
{
  v2 = sub_25A9988C8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

double sub_25A8E734C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_25A8F3600(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_25A87500C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t PyStaticMethod.__allocating_init(function:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_25A8E73E4()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_25A8E7434@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27FA04308 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA046D8;
  a1[3] = type metadata accessor for PyBuiltInClass();
  a1[4] = sub_25A892BD4();
  *a1 = v2;
}

double sub_25A8E74F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *(v3 + 16);
  swift_beginAccess();
  v8 = *(v7 + 104);
  if (*(v8 + 16))
  {

    v9 = sub_25A8F3600(a1, a2);
    if (v10)
    {
      sub_25A87500C(*(v8 + 56) + 32 * v9, a3);

      return result;
    }
  }

  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

uint64_t sub_25A8E7590(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  swift_beginAccess();
  v6 = *(v5 + 104);
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  v7 = sub_25A8F3600(a1, a2);
  if ((v8 & 1) == 0)
  {

LABEL_5:
    v9 = 0;
    memset(v11, 0, sizeof(v11));
    goto LABEL_6;
  }

  sub_25A87500C(*(v6 + 56) + 32 * v7, v11);

  v9 = 1;
LABEL_6:
  sub_25A872D84(v11);
  return v9;
}

uint64_t sub_25A8E7640(uint64_t a1, uint64_t a2)
{
  sub_25A87500C(a1, v6);
  result = swift_dynamicCast();
  if (result)
  {
    sub_25A87500C(a2, v6);
    swift_beginAccess();
    sub_25A8F2ED0(v6, v4, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t PyStaticMethod.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25A8E773C()
{
  v1 = *(*v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

void sub_25A8E796C(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = mlx_array_dtype(*(v1 + 16));
  v4 = sub_25A956420(v3);
  if (v4 <= 4u)
  {
    if (v4 > 1u)
    {
      switch(v4)
      {
        case 2u:
          v9 = sub_25A8EEEE0();
          *(a1 + 24) = MEMORY[0x277D84C58];
          *a1 = v9;
          return;
        case 3u:
          v5 = sub_25A8EEC58();
          v6 = MEMORY[0x277D84CC0];
LABEL_24:
          *(a1 + 24) = v6;
          *a1 = v5;
          return;
        case 4u:
          *(a1 + 24) = MEMORY[0x277D84D38];
          *a1 = sub_25A8EE9DC();
          return;
      }

      goto LABEL_27;
    }

    if (!v4)
    {
      v8 = sub_25A8EDD5C();
      *(a1 + 24) = MEMORY[0x277D839B0];
      *a1 = v8 & 1;
      return;
    }

    v10 = sub_25A8EF168();
    v11 = MEMORY[0x277D84B78];
    goto LABEL_21;
  }

  if (v4 <= 7u)
  {
    if (v4 != 5)
    {
      if (v4 == 6)
      {
        *(a1 + 24) = MEMORY[0x277D84958];
        *a1 = sub_25A8EE4B4();
        return;
      }

      if (v4 == 7)
      {
        v5 = sub_25A8EE218();
        v6 = MEMORY[0x277D849A8];
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    v10 = sub_25A8EE748();
    v11 = MEMORY[0x277D84900];
LABEL_21:
    *(a1 + 24) = v11;
    *a1 = v10;
    return;
  }

  switch(v4)
  {
    case 8u:
      v12 = sub_25A8EDF9C();
      *(a1 + 24) = MEMORY[0x277D84A28];
      *a1 = v12;
      return;
    case 9u:
      *(a1 + 24) = MEMORY[0x277D84DC8];
      sub_25A8EF684();
      *a1 = v7;
      return;
    case 0xAu:
      sub_25A8EF3F0();
      *(a1 + 24) = MEMORY[0x277D83A90];
      *a1 = v13;
      return;
  }

LABEL_27:
  sub_25A9985F8();
  MEMORY[0x25F850290](0xD000000000000013, 0x800000025AA68D80);
  sub_25A9987C8();
  sub_25A998818();
  __break(1u);
}

uint64_t sub_25A8E7BC0(uint64_t a1, uint64_t a2)
{
  if (swift_dynamicCastMetatype())
  {
    sub_25A8E7E18();
LABEL_25:
    v2 = sub_25A9987B8();

    return v2;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25A8E8070();
    goto LABEL_25;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25A8E82D0();
    goto LABEL_25;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25A8E8530();
    goto LABEL_25;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25A8E8790();
    goto LABEL_25;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25A8E89F0();
    goto LABEL_25;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25A8E8C50();
    goto LABEL_25;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25A8E8EB0();
    goto LABEL_25;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25A8E9110();
    goto LABEL_25;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25A8E9370();
    goto LABEL_25;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25A8E95D0();
    goto LABEL_25;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25A8E9830();
    goto LABEL_25;
  }

  sub_25A874F54();
  swift_allocError();
  *v4 = 36;
  return swift_willThrow();
}

uint64_t sub_25A8E7E18()
{
  v1 = v0;
  v12 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v2 = mlx_array_dtype(*(v0 + 16));
  if (sub_25A956420(v2))
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v3 = v11;
    v4 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v4))
    {
      v11 = mlx_array_new();
      mlx_astype(&v11, *(v1 + 16), 0, *(v3 + 16));

      v5 = v11;
      *(swift_allocObject() + 16) = v5;
    }

    else
    {
    }

    v8 = sub_25A8E7E18();
  }

  else
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v6 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v6 unlock];
    v7 = mlx_array_size(*(v1 + 16));

    v8 = sub_25A8F1714(v7, v1, MEMORY[0x277D839B0], sub_25A8EFF6C);
  }

  v9 = v8;

  return v9;
}

void sub_25A8E802C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E8034);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E8070()
{
  v1 = v0;
  v12 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v2 = mlx_array_dtype(*(v0 + 16));
  if (sub_25A956420(v2) == 1)
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v3 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v3 unlock];
    v4 = mlx_array_size(*(v1 + 16));

    v5 = sub_25A8F1714(v4, v1, MEMORY[0x277D84B78], sub_25A8EFF6C);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v6 = v11;
    v7 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v7) == 1)
    {
    }

    else
    {
      v11 = mlx_array_new();
      mlx_astype(&v11, *(v1 + 16), 1, *(v6 + 16));

      v8 = v11;
      *(swift_allocObject() + 16) = v8;
    }

    v5 = sub_25A8E8070();
  }

  v9 = v5;

  return v9;
}

void sub_25A8E828C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E8294);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E82D0()
{
  v1 = v0;
  v12 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v2 = mlx_array_dtype(*(v0 + 16));
  if (sub_25A956420(v2) == 2)
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v3 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v3 unlock];
    v4 = mlx_array_size(*(v1 + 16));

    v5 = sub_25A8F1714(v4, v1, MEMORY[0x277D84C58], sub_25A8EFD94);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v6 = v11;
    v7 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v7) == 2)
    {
    }

    else
    {
      v11 = mlx_array_new();
      mlx_astype(&v11, *(v1 + 16), 2, *(v6 + 16));

      v8 = v11;
      *(swift_allocObject() + 16) = v8;
    }

    v5 = sub_25A8E82D0();
  }

  v9 = v5;

  return v9;
}

void sub_25A8E84EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E84F4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E8530()
{
  v1 = v0;
  v12 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v2 = mlx_array_dtype(*(v0 + 16));
  if (sub_25A956420(v2) == 3)
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v3 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v3 unlock];
    v4 = mlx_array_size(*(v1 + 16));

    v5 = sub_25A8F1714(v4, v1, MEMORY[0x277D84CC0], sub_25A8EFBB4);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v6 = v11;
    v7 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v7) == 3)
    {
    }

    else
    {
      v11 = mlx_array_new();
      mlx_astype(&v11, *(v1 + 16), 3, *(v6 + 16));

      v8 = v11;
      *(swift_allocObject() + 16) = v8;
    }

    v5 = sub_25A8E8530();
  }

  v9 = v5;

  return v9;
}

void sub_25A8E874C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E8754);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E8790()
{
  v1 = v0;
  v12 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v2 = mlx_array_dtype(*(v0 + 16));
  if (sub_25A956420(v2) == 4)
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v3 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v3 unlock];
    v4 = mlx_array_size(*(v1 + 16));

    v5 = sub_25A8F1714(v4, v1, MEMORY[0x277D84D38], sub_25A8EF9D4);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v6 = v11;
    v7 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v7) == 4)
    {
    }

    else
    {
      v11 = mlx_array_new();
      mlx_astype(&v11, *(v1 + 16), 4, *(v6 + 16));

      v8 = v11;
      *(swift_allocObject() + 16) = v8;
    }

    v5 = sub_25A8E8790();
  }

  v9 = v5;

  return v9;
}

void sub_25A8E89AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E89B4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E89F0()
{
  v1 = v0;
  v12 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v2 = mlx_array_dtype(*(v0 + 16));
  if (sub_25A956420(v2) == 5)
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v3 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v3 unlock];
    v4 = mlx_array_size(*(v1 + 16));

    v5 = sub_25A8F1714(v4, v1, MEMORY[0x277D84900], sub_25A8EFF6C);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v6 = v11;
    v7 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v7) == 5)
    {
    }

    else
    {
      v11 = mlx_array_new();
      mlx_astype(&v11, *(v1 + 16), 5, *(v6 + 16));

      v8 = v11;
      *(swift_allocObject() + 16) = v8;
    }

    v5 = sub_25A8E89F0();
  }

  v9 = v5;

  return v9;
}

void sub_25A8E8C0C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E8C14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E8C50()
{
  v1 = v0;
  v12 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v2 = mlx_array_dtype(*(v0 + 16));
  if (sub_25A956420(v2) == 6)
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v3 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v3 unlock];
    v4 = mlx_array_size(*(v1 + 16));

    v5 = sub_25A8F1714(v4, v1, MEMORY[0x277D84958], sub_25A8EFD94);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v6 = v11;
    v7 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v7) == 6)
    {
    }

    else
    {
      v11 = mlx_array_new();
      mlx_astype(&v11, *(v1 + 16), 6, *(v6 + 16));

      v8 = v11;
      *(swift_allocObject() + 16) = v8;
    }

    v5 = sub_25A8E8C50();
  }

  v9 = v5;

  return v9;
}

void sub_25A8E8E6C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E8E74);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E8EB0()
{
  v1 = v0;
  v12 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v2 = mlx_array_dtype(*(v0 + 16));
  if (sub_25A956420(v2) == 7)
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v3 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v3 unlock];
    v4 = mlx_array_size(*(v1 + 16));

    v5 = sub_25A8F1714(v4, v1, MEMORY[0x277D849A8], sub_25A8EFBB4);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v6 = v11;
    v7 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v7) == 7)
    {
    }

    else
    {
      v11 = mlx_array_new();
      mlx_astype(&v11, *(v1 + 16), 7, *(v6 + 16));

      v8 = v11;
      *(swift_allocObject() + 16) = v8;
    }

    v5 = sub_25A8E8EB0();
  }

  v9 = v5;

  return v9;
}

void sub_25A8E90CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E90D4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E9110()
{
  v1 = v0;
  v12 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v2 = mlx_array_dtype(*(v0 + 16));
  if (sub_25A956420(v2) == 8)
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v3 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v3 unlock];
    v4 = mlx_array_size(*(v1 + 16));

    v5 = sub_25A8F1714(v4, v1, MEMORY[0x277D84A28], sub_25A8EF9D4);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v6 = v11;
    v7 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v7) == 8)
    {
    }

    else
    {
      v11 = mlx_array_new();
      mlx_astype(&v11, *(v1 + 16), 8, *(v6 + 16));

      v8 = v11;
      *(swift_allocObject() + 16) = v8;
    }

    v5 = sub_25A8E9110();
  }

  v9 = v5;

  return v9;
}

void sub_25A8E932C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E9334);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E9370()
{
  v1 = v0;
  v12 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v2 = mlx_array_dtype(*(v0 + 16));
  if (sub_25A956420(v2) == 9)
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v3 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v3 unlock];
    v4 = mlx_array_size(*(v1 + 16));

    v5 = sub_25A8F1714(v4, v1, MEMORY[0x277D84DC8], sub_25A8EFD94);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v6 = v11;
    v7 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v7) == 9)
    {
    }

    else
    {
      v11 = mlx_array_new();
      mlx_astype(&v11, *(v1 + 16), 9, *(v6 + 16));

      v8 = v11;
      *(swift_allocObject() + 16) = v8;
    }

    v5 = sub_25A8E9370();
  }

  v9 = v5;

  return v9;
}

void sub_25A8E958C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E9594);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E95D0()
{
  v1 = v0;
  v12 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v2 = mlx_array_dtype(*(v0 + 16));
  if (sub_25A956420(v2) == 10)
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v3 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v3 unlock];
    v4 = mlx_array_size(*(v1 + 16));

    v5 = sub_25A8F1714(v4, v1, MEMORY[0x277D83A90], sub_25A8EFBB4);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v6 = v11;
    v7 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v7) == 10)
    {
    }

    else
    {
      v11 = mlx_array_new();
      mlx_astype(&v11, *(v1 + 16), 10, *(v6 + 16));

      v8 = v11;
      *(swift_allocObject() + 16) = v8;
    }

    v5 = sub_25A8E95D0();
  }

  v9 = v5;

  return v9;
}

void sub_25A8E97EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E97F4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E9830()
{
  v1 = v0;
  v12 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v2 = mlx_array_dtype(*(v0 + 16));
  if (sub_25A956420(v2) == 12)
  {
    if (qword_27FA043E0 != -1)
    {
      swift_once();
    }

    v3 = qword_27FA0FD28;
    [qword_27FA0FD28 lock];
    mlx_array_eval(*(v1 + 16));
    [v3 unlock];
    v4 = mlx_array_size(*(v1 + 16));

    v5 = sub_25A8F1714(v4, v1, MEMORY[0x277D839F8], sub_25A8EF9D4);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v6 = v11;
    v7 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v7) == 12)
    {
    }

    else
    {
      v11 = mlx_array_new();
      mlx_astype(&v11, *(v1 + 16), 11, *(v6 + 16));

      v8 = v11;
      *(swift_allocObject() + 16) = v8;
    }

    v5 = sub_25A8E9830();
  }

  v9 = v5;

  return v9;
}

void sub_25A8E9A4C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8E9A54);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8E9AB4(uint64_t a1, uint64_t a2)
{
  v5[4] = a2;
  v3 = *v2;
  v5[3] = a1;
  v5[0] = v3;

  static MorpheusUtils.toMLTensor(mlxArray:)(v5);
  return __swift_destroy_boxed_opaque_existential_0Tm(v5);
}

uint64_t sub_25A8E9B1C()
{
  v1 = *v0;
  if (*v0 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_25A8E9B50()
{
  result = *v0;
  if (*v0 >> 31)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25A8E9B6C()
{
  result = *v0;
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  return result;
}

double sub_25A8E9C10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  sub_25A8738A4(a1, a2, v3, &v51);
  if (v52)
  {
    sub_25A872D74(&v51, &v46);
    sub_25A872D74(&v46, a3);
    return result;
  }

  sub_25A878194(&v51, &qword_27FA04458, &unk_25A9F7FB0);
  if (a1 == 7235949 && a2 == 0xE300000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v9 = MEMORY[0x277D84F90];
    v10 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v11 = type metadata accessor for Function();
    v12 = swift_allocObject();
    *(v12 + 32) = v9;
    *(v12 + 40) = v9;
    *(v12 + 48) = v9;

    *(v12 + 56) = v9;

    *(v12 + 64) = v9;

    *(v12 + 72) = 0;
    *(v12 + 80) = 0;

    *(v12 + 88) = 0;
    *(v12 + 96) = 0;

    *(v12 + 104) = sub_25A92BDB4(v9);
    strcpy((v12 + 16), "np.ndarray.min");
    *(v12 + 31) = -18;
    v13 = *(v12 + 80);
    v48 = *(v12 + 64);
    v49 = v13;
    v50 = *(v12 + 96);
    v14 = *(v12 + 48);
    v46 = *(v12 + 32);
    v47 = v14;
    *(v12 + 32) = v9;
    *(v12 + 40) = v9;
    *(v12 + 48) = v9;
    *(v12 + 56) = v9;
    *(v12 + 64) = v9;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    sub_25A892B80(&v46);
    swift_beginAccess();
    *(v12 + 104) = v10;

    v15 = swift_allocObject();
    *(v15 + 16) = sub_25A8F1910;
    *(v15 + 24) = v3;
LABEL_7:
    *(v12 + 112) = sub_25A8F1D14;
    *(v12 + 120) = v15;
    *(a3 + 24) = v11;
    *a3 = v12;
    return result;
  }

  if (a1 == 7889261 && a2 == 0xE300000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v16 = MEMORY[0x277D84F90];
    v17 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v11 = type metadata accessor for Function();
    v12 = swift_allocObject();
    *(v12 + 32) = v16;
    *(v12 + 40) = v16;
    *(v12 + 48) = v16;

    *(v12 + 56) = v16;

    *(v12 + 64) = v16;

    *(v12 + 72) = 0;
    *(v12 + 80) = 0;

    *(v12 + 88) = 0;
    *(v12 + 96) = 0;

    *(v12 + 104) = sub_25A92BDB4(v16);
    strcpy((v12 + 16), "np.ndarray.max");
    *(v12 + 31) = -18;
    v18 = *(v12 + 80);
    v48 = *(v12 + 64);
    v49 = v18;
    v50 = *(v12 + 96);
    v19 = *(v12 + 48);
    v46 = *(v12 + 32);
    v47 = v19;
    *(v12 + 32) = v16;
    *(v12 + 40) = v16;
    *(v12 + 48) = v16;
    *(v12 + 56) = v16;
    *(v12 + 64) = v16;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    sub_25A892B80(&v46);
    swift_beginAccess();
    *(v12 + 104) = v17;

    v15 = swift_allocObject();
    *(v15 + 16) = sub_25A8F18F4;
    *(v15 + 24) = v3;
    goto LABEL_7;
  }

  if (a1 == 0x6E657474616C66 && a2 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v20 = MEMORY[0x277D84F90];
    v21 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v11 = type metadata accessor for Function();
    v12 = swift_allocObject();
    *(v12 + 32) = v20;
    *(v12 + 40) = v20;
    *(v12 + 48) = v20;

    *(v12 + 56) = v20;

    *(v12 + 64) = v20;

    *(v12 + 72) = 0;
    *(v12 + 80) = 0;

    *(v12 + 88) = 0;
    *(v12 + 96) = 0;

    *(v12 + 104) = sub_25A92BDB4(v20);
    *(v12 + 16) = 0xD000000000000012;
    *(v12 + 24) = 0x800000025AA68D40;
    v22 = *(v12 + 80);
    v48 = *(v12 + 64);
    v49 = v22;
    v50 = *(v12 + 96);
    v23 = *(v12 + 48);
    v46 = *(v12 + 32);
    v47 = v23;
    *(v12 + 32) = v20;
    *(v12 + 40) = v20;
    *(v12 + 48) = v20;
    *(v12 + 56) = v20;
    *(v12 + 64) = v20;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    sub_25A892B80(&v46);
    swift_beginAccess();
    *(v12 + 104) = v21;

    v15 = swift_allocObject();
    *(v15 + 16) = sub_25A8F18D8;
    *(v15 + 24) = v3;
    goto LABEL_7;
  }

  if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    swift_beginAccess();
    v24 = mlx_array_size(v3[2]);
LABEL_21:
    *(a3 + 24) = MEMORY[0x277D83B88];
    *a3 = v24;
    return result;
  }

  if (a1 == 0x6570616873 && a2 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    v25 = sub_25A9616CC();
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04830, &qword_25A9FDD40);
    *a3 = v25;
    return result;
  }

  if (a1 == 1835623534 && a2 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    swift_beginAccess();
    v24 = mlx_array_ndim(v3[2]);
    goto LABEL_21;
  }

  if (a1 == 0x7473696C6F74 && a2 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v26 = MEMORY[0x277D84F90];
    v27 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v11 = type metadata accessor for Function();
    v12 = swift_allocObject();
    *(v12 + 32) = v26;
    *(v12 + 40) = v26;
    *(v12 + 48) = v26;

    *(v12 + 56) = v26;

    *(v12 + 64) = v26;

    *(v12 + 72) = 0;
    *(v12 + 80) = 0;

    *(v12 + 88) = 0;
    *(v12 + 96) = 0;

    *(v12 + 104) = sub_25A92BDB4(v26);
    *(v12 + 16) = 0xD000000000000011;
    *(v12 + 24) = 0x800000025AA68D20;
    v28 = *(v12 + 80);
    v48 = *(v12 + 64);
    v49 = v28;
    v50 = *(v12 + 96);
    v29 = *(v12 + 48);
    v46 = *(v12 + 32);
    v47 = v29;
    *(v12 + 32) = v26;
    *(v12 + 40) = v26;
    *(v12 + 48) = v26;
    *(v12 + 56) = v26;
    *(v12 + 64) = v26;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    sub_25A892B80(&v46);
    swift_beginAccess();
    *(v12 + 104) = v27;

    v15 = swift_allocObject();
    *(v15 + 16) = sub_25A8F18BC;
    *(v15 + 24) = v3;
    goto LABEL_7;
  }

  if (a1 == 1835365481 && a2 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v30 = MEMORY[0x277D84F90];
    v31 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v11 = type metadata accessor for Function();
    v12 = swift_allocObject();
    *(v12 + 32) = v30;
    *(v12 + 40) = v30;
    *(v12 + 48) = v30;

    *(v12 + 56) = v30;

    *(v12 + 64) = v30;

    *(v12 + 72) = 0;
    *(v12 + 80) = 0;

    *(v12 + 88) = 0;
    *(v12 + 96) = 0;

    *(v12 + 104) = sub_25A92BDB4(v30);
    *(v12 + 16) = 0x727261646E2E706ELL;
    *(v12 + 24) = 0xEF6D6574692E7961;
    v32 = *(v12 + 80);
    v48 = *(v12 + 64);
    v49 = v32;
    v50 = *(v12 + 96);
    v33 = *(v12 + 48);
    v46 = *(v12 + 32);
    v47 = v33;
    *(v12 + 32) = v30;
    *(v12 + 40) = v30;
    *(v12 + 48) = v30;
    *(v12 + 56) = v30;
    *(v12 + 64) = v30;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    sub_25A892B80(&v46);
    swift_beginAccess();
    *(v12 + 104) = v31;

    v15 = swift_allocObject();
    *(v15 + 16) = sub_25A8F1868;
    *(v15 + 24) = v3;
    goto LABEL_7;
  }

  if (a1 == 2037411683 && a2 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
  {

    v34 = MEMORY[0x277D84F90];
    v35 = sub_25A92BDB4(MEMORY[0x277D84F90]);
    v11 = type metadata accessor for Function();
    v12 = swift_allocObject();
    *(v12 + 32) = v34;
    *(v12 + 40) = v34;
    *(v12 + 48) = v34;

    *(v12 + 56) = v34;

    *(v12 + 64) = v34;

    *(v12 + 72) = 0;
    *(v12 + 80) = 0;

    *(v12 + 88) = 0;
    *(v12 + 96) = 0;

    *(v12 + 104) = sub_25A92BDB4(v34);
    *(v12 + 16) = 0x727261646E2E706ELL;
    *(v12 + 24) = 0xEF79706F632E7961;
    v36 = *(v12 + 80);
    v48 = *(v12 + 64);
    v49 = v36;
    v50 = *(v12 + 96);
    v37 = *(v12 + 48);
    v46 = *(v12 + 32);
    v47 = v37;
    *(v12 + 32) = v34;
    *(v12 + 40) = v34;
    *(v12 + 48) = v34;
    *(v12 + 56) = v34;
    *(v12 + 64) = v34;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    sub_25A892B80(&v46);
    swift_beginAccess();
    *(v12 + 104) = v35;

    v15 = swift_allocObject();
    *(v15 + 16) = sub_25A8F184C;
    *(v15 + 24) = v3;
    goto LABEL_7;
  }

  if ((a1 != 0x657079747361 || a2 != 0xE600000000000000) && (sub_25A9989E8() & 1) == 0)
  {
    return sub_25A8738A4(a1, a2, v3, a3);
  }

  v38 = swift_allocObject();
  *(v38 + 16) = v3;
  *(v38 + 24) = v7;

  v39 = MEMORY[0x277D84F90];
  v40 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v41 = type metadata accessor for Function();
  v42 = swift_allocObject();
  v42[4] = v39;
  v42[5] = v39;
  v42[6] = v39;

  v42[7] = v39;

  v42[8] = v39;

  v42[9] = 0;
  v42[10] = 0;

  v42[11] = 0;
  v42[12] = 0;

  v42[13] = sub_25A92BDB4(v39);
  v42[2] = 0xD000000000000011;
  v42[3] = 0x800000025AA68D00;
  v43 = *(v42 + 5);
  v48 = *(v42 + 4);
  v49 = v43;
  v50 = v42[12];
  v44 = *(v42 + 3);
  v46 = *(v42 + 2);
  v47 = v44;
  v42[4] = &unk_286C0BB88;
  v42[5] = v39;
  v42[6] = v39;
  v42[7] = v39;
  v42[8] = v39;
  *(v42 + 9) = 0u;
  *(v42 + 11) = 0u;
  sub_25A892B80(&v46);
  swift_beginAccess();
  v42[13] = v40;

  v45 = swift_allocObject();
  *(v45 + 16) = sub_25A8F1814;
  *(v45 + 24) = v38;
  v42[14] = sub_25A8F1830;
  v42[15] = v45;
  *(a3 + 24) = v41;
  *a3 = v42;
  return result;
}

uint64_t sub_25A8EA890@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v8[0] = mlx_array_new();
  swift_beginAccess();
  mlx_min(v8, a1[2], 0, *(v7 + 16));

  v5 = v8[0];
  result = swift_allocObject();
  *(result + 16) = v5;
  a2[3] = v4;
  *a2 = result;
  return result;
}

void sub_25A8EA9C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EA9CCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8EA9D8@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v8[0] = mlx_array_new();
  swift_beginAccess();
  mlx_max(v8, a1[2], 0, *(v7 + 16));

  v5 = v8[0];
  result = swift_allocObject();
  *(result + 16) = v5;
  a2[3] = v4;
  *a2 = result;
  return result;
}

void sub_25A8EAB0C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EAB14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8EAB20@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v8[0] = mlx_array_new();
  swift_beginAccess();
  mlx_flatten(v8, *(a1 + 16), 0, -1, *(v7 + 16));

  v5 = v8[0];
  result = swift_allocObject();
  *(result + 16) = v5;
  a2[3] = v4;
  *a2 = result;
  return result;
}

void sub_25A8EAC58(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EAC60);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8EAC6C@<X0>(uint64_t a2@<X1>, uint64_t *x8_0@<X8>)
{
  swift_beginAccess();
  v5 = mlx_array_dtype(*(a2 + 16));
  switch(sub_25A956420(v5))
  {
    case 1u:
      v16 = sub_25A8E8070();
      v7 = sub_25A930734(v16);
      goto LABEL_11;
    case 2u:
      v12 = sub_25A8E82D0();
      v9 = sub_25A930740(v12);
      goto LABEL_15;
    case 3u:
      v13 = sub_25A8E8530();
      v9 = sub_25A93074C(v13);
      goto LABEL_15;
    case 4u:
      v10 = sub_25A8E8790();
      v9 = sub_25A930758(v10);
      goto LABEL_15;
    case 5u:
      v19 = sub_25A8E89F0();
      v9 = sub_25A930764(v19);
      goto LABEL_15;
    case 6u:
      v20 = sub_25A8E8C50();
      v9 = sub_25A930864(v20);
      goto LABEL_15;
    case 7u:
      v14 = sub_25A8E8EB0();
      v9 = sub_25A930964(v14);
      goto LABEL_15;
    case 8u:
      v21 = sub_25A8E9110();
      v9 = sub_25A930A64(v21);
      goto LABEL_15;
    case 9u:
    case 0xAu:
      v6 = sub_25A8E95D0();
      v7 = sub_25A93053C(v6);
      goto LABEL_11;
    case 0xBu:
      v8 = sub_25A8E95D0();
      v9 = sub_25A93053C(v8);
LABEL_15:
      v22 = v9;

      v23 = sub_25A9616CC();
      sub_25A93254C(v22, v23, x8_0);
      goto LABEL_16;
    case 0xCu:
      v11 = sub_25A8E9830();
      v7 = sub_25A930638(v11);
      goto LABEL_11;
    default:
      v15 = sub_25A8E7E18();
      v7 = sub_25A930440(v15);
LABEL_11:
      v17 = v7;

      v18 = sub_25A9616CC();
      sub_25A93254C(v17, v18, x8_0);
LABEL_16:
  }
}

void sub_25A8EAE54(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v4 = mlx_array_dtype(*(a1 + 16));
  v5 = sub_25A956420(v4);
  if (v5 <= 4)
  {
    if (v5 <= 1)
    {
      if (v5)
      {
        *(a2 + 24) = MEMORY[0x277D84B78];
        *a2 = sub_25A8EF168();
      }

      else
      {
        *(a2 + 24) = MEMORY[0x277D839B0];
        *a2 = sub_25A8EDD5C() & 1;
      }

      return;
    }

    if (v5 == 2)
    {
      *(a2 + 24) = MEMORY[0x277D84C58];
      *a2 = sub_25A8EEEE0();
      return;
    }

    if (v5 == 3)
    {
      *(a2 + 24) = MEMORY[0x277D84CC0];
      *a2 = sub_25A8EEC58();
      return;
    }

    if (v5 != 4)
    {
LABEL_14:
      *(a2 + 24) = MEMORY[0x277D83A90];
      sub_25A8EF3F0();
      *a2 = v7;
      return;
    }

    *(a2 + 24) = MEMORY[0x277D84D38];
    v6 = sub_25A8EE9DC();
LABEL_24:
    *a2 = v6;
    return;
  }

  if (v5 > 7)
  {
    if (v5 != 8)
    {
      if (v5 == 9)
      {
        *(a2 + 24) = MEMORY[0x277D84DC8];
        sub_25A8EF684();
        *a2 = v8;
        return;
      }

      goto LABEL_14;
    }

    v6 = sub_25A8EDF9C();
    *(a2 + 24) = MEMORY[0x277D83B88];
    goto LABEL_24;
  }

  switch(v5)
  {
    case 5:
      *(a2 + 24) = MEMORY[0x277D84900];
      *a2 = sub_25A8EE748();
      break;
    case 6:
      *(a2 + 24) = MEMORY[0x277D84958];
      *a2 = sub_25A8EE4B4();
      break;
    case 7:
      *(a2 + 24) = MEMORY[0x277D849A8];
      *a2 = sub_25A8EE218();
      return;
    default:
      goto LABEL_14;
  }
}

uint64_t sub_25A8EB024@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = mlx_array_dtype(a1[2]);
  v6 = sub_25A956420(v5);
  if (v6 <= 4)
  {
    if (v6 <= 1)
    {
      if (v6)
      {
        if (qword_27FA043E0 != -1)
        {
          swift_once();
        }

        v14 = qword_27FA0FD28;
        [qword_27FA0FD28 lock];
        mlx_array_eval(a1[2]);
        [v14 unlock];
        sub_25A972B28(&v25);
        v8 = v25;
        v9 = v26;
        sub_25A8F192C(v25, v26);
        sub_25A8F1980(&v25);
        v10 = sub_25A9616CC();
        v11 = sub_25A8ED894;
        v12 = sub_25A8ED894;
      }

      else
      {
        if (qword_27FA043E0 != -1)
        {
          swift_once();
        }

        v15 = qword_27FA0FD28;
        [qword_27FA0FD28 lock];
        mlx_array_eval(a1[2]);
        [v15 unlock];
        sub_25A972B28(&v25);
        v8 = v25;
        v9 = v26;
        sub_25A8F192C(v25, v26);
        sub_25A8F1980(&v25);
        v10 = sub_25A9616CC();
        v11 = sub_25A8EDC30;
        v12 = sub_25A8EDC30;
      }
    }

    else if (v6 == 2)
    {
      if (qword_27FA043E0 != -1)
      {
        swift_once();
      }

      v19 = qword_27FA0FD28;
      [qword_27FA0FD28 lock];
      mlx_array_eval(a1[2]);
      [v19 unlock];
      sub_25A972B28(&v25);
      v8 = v25;
      v9 = v26;
      sub_25A8F192C(v25, v26);
      sub_25A8F1980(&v25);
      v10 = sub_25A9616CC();
      v11 = sub_25A8ED760;
      v12 = sub_25A8ED760;
    }

    else if (v6 == 3)
    {
      if (qword_27FA043E0 != -1)
      {
        swift_once();
      }

      v16 = qword_27FA0FD28;
      [qword_27FA0FD28 lock];
      mlx_array_eval(a1[2]);
      [v16 unlock];
      sub_25A972B28(&v25);
      v8 = v25;
      v9 = v26;
      sub_25A8F192C(v25, v26);
      sub_25A8F1980(&v25);
      v10 = sub_25A9616CC();
      v11 = sub_25A8ED624;
      v12 = sub_25A8ED624;
    }

    else
    {
      if (qword_27FA043E0 != -1)
      {
        swift_once();
      }

      v13 = qword_27FA0FD28;
      [qword_27FA0FD28 lock];
      mlx_array_eval(a1[2]);
      [v13 unlock];
      sub_25A972B28(&v25);
      v8 = v25;
      v9 = v26;
      sub_25A8F192C(v25, v26);
      sub_25A8F1980(&v25);
      v10 = sub_25A9616CC();
      v11 = sub_25A8ED4E8;
      v12 = sub_25A8ED4E8;
    }
  }

  else
  {
    if (v6 <= 7)
    {
      if (v6 == 5)
      {
        if (qword_27FA043E0 != -1)
        {
          swift_once();
        }

        v20 = qword_27FA0FD28;
        [qword_27FA0FD28 lock];
        mlx_array_eval(a1[2]);
        [v20 unlock];
        sub_25A972B28(&v25);
        v8 = v25;
        v9 = v26;
        sub_25A8F192C(v25, v26);
        sub_25A8F1980(&v25);
        v10 = sub_25A9616CC();
        v11 = sub_25A8ED3BC;
        v12 = sub_25A8ED3BC;
      }

      else if (v6 == 6)
      {
        if (qword_27FA043E0 != -1)
        {
          swift_once();
        }

        v17 = qword_27FA0FD28;
        [qword_27FA0FD28 lock];
        mlx_array_eval(a1[2]);
        [v17 unlock];
        sub_25A972B28(&v25);
        v8 = v25;
        v9 = v26;
        sub_25A8F192C(v25, v26);
        sub_25A8F1980(&v25);
        v10 = sub_25A9616CC();
        v11 = sub_25A8ED288;
        v12 = sub_25A8ED288;
      }

      else
      {
        if (qword_27FA043E0 != -1)
        {
          swift_once();
        }

        v7 = qword_27FA0FD28;
        [qword_27FA0FD28 lock];
        mlx_array_eval(a1[2]);
        [v7 unlock];
        sub_25A972B28(&v25);
        v8 = v25;
        v9 = v26;
        sub_25A8F192C(v25, v26);
        sub_25A8F1980(&v25);
        v10 = sub_25A9616CC();
        v11 = sub_25A8ED14C;
        v12 = sub_25A8ED14C;
      }

      goto LABEL_46;
    }

    if (v6 == 8)
    {
      if (qword_27FA043E0 != -1)
      {
        swift_once();
      }

      v21 = qword_27FA0FD28;
      [qword_27FA0FD28 lock];
      mlx_array_eval(a1[2]);
      [v21 unlock];
      sub_25A972B28(&v25);
      v8 = v25;
      v9 = v26;
      sub_25A8F192C(v25, v26);
      sub_25A8F1980(&v25);
      v10 = sub_25A9616CC();
      v11 = sub_25A8ED010;
      v12 = sub_25A8ED010;
    }

    else
    {
      if (v6 != 9)
      {
        if (v6 == 10)
        {
          if (qword_27FA043E0 == -1)
          {
            goto LABEL_45;
          }
        }

        else if (qword_27FA043E0 == -1)
        {
LABEL_45:
          v22 = qword_27FA0FD28;
          [qword_27FA0FD28 lock];
          mlx_array_eval(a1[2]);
          [v22 unlock];
          sub_25A972B28(&v25);
          v8 = v25;
          v9 = v26;
          sub_25A8F192C(v25, v26);
          sub_25A8F1980(&v25);
          v10 = sub_25A9616CC();
          v11 = sub_25A8ED9C0;
          v12 = sub_25A8ED9C0;
          goto LABEL_46;
        }

        swift_once();
        goto LABEL_45;
      }

      if (qword_27FA043E0 != -1)
      {
        swift_once();
      }

      v18 = qword_27FA0FD28;
      [qword_27FA0FD28 lock];
      mlx_array_eval(a1[2]);
      [v18 unlock];
      sub_25A972B28(&v25);
      v8 = v25;
      v9 = v26;
      sub_25A8F192C(v25, v26);
      sub_25A8F1980(&v25);
      v10 = sub_25A9616CC();
      v11 = sub_25A8EDAFC;
      v12 = sub_25A8EDAFC;
    }
  }

LABEL_46:
  v23 = sub_25A8F19D4(v8, v9, v10, v11, v12);

  a2[3] = v4;
  *a2 = v23;
  return result;
}

uint64_t sub_25A8EB974@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t **a3@<X8>)
{
  if (*(a1 + 16) && (v6 = sub_25A8F3600(0x6570797464, 0xE500000000000000), (v7 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v6, v14), (swift_dynamicCast() & 1) != 0))
  {
    v8 = sub_25A8F139C(v12, v13);

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v9 = sub_25A961880(v8, v14[0]);

    a3[3] = a2;
    *a3 = v9;
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v11 = -116;
    return swift_willThrow();
  }

  return result;
}

void *sub_25A8EBAFC(uint64_t a1, void *a2, __n128 a3)
{
  result = sub_25A8F0FA0(a2, 13);
  if (!v4)
  {
    v51[2] = 0;
    v52 = result;
    sub_25A87500C(a1, &v59);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04B60, &qword_25A9F9EB8);
    if (swift_dynamicCast())
    {
      sub_25A87817C(&v65, v68);
      sub_25A872F24(v68, &v65);
      v7 = sub_25A96759C(0, 1, 1, MEMORY[0x277D84F90]);
      v69 = v7;
      v9 = v7[2];
      v8 = v7[3];
      if (v9 >= v8 >> 1)
      {
        v7 = sub_25A96759C((v8 > 1), v9 + 1, 1, v7);
        v69 = v7;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v68);
      v10 = *(&v66 + 1);
      v11 = AssociatedConformanceWitness;
      v12 = __swift_mutable_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
      MEMORY[0x28223BE20](v12);
      v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v14);
      sub_25A8F012C(v9, v14, &v69, v10, v11);
      __swift_destroy_boxed_opaque_existential_0Tm(&v65);
LABEL_30:
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      return sub_25A958C48(v52, v7, v68[0]);
    }

    else
    {
      AssociatedConformanceWitness = 0;
      v65 = 0u;
      v66 = 0u;
      sub_25A878194(&v65, &qword_27FA04B68, &qword_25A9F9EC0);
      sub_25A87500C(a1, &v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04868, &qword_25A9F8EE0);
      if (swift_dynamicCast())
      {
        v51[1] = v3;
        sub_25A87817C(&v65, v68);
        v16 = __swift_project_boxed_opaque_existential_1(v68, v68[3]);
        MEMORY[0x28223BE20](v16);
        (*(v18 + 16))(v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
        *(&v66 + 1) = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_0(&v65);
        sub_25A998068();
        v54 = MEMORY[0x277D84F90];
        while (1)
        {
          while (1)
          {
            __swift_mutable_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v20 = sub_25A9983F8();
            v21 = *(v20 - 8);
            MEMORY[0x28223BE20](v20);
            v23 = v51 - v22;
            sub_25A998448();
            v24 = *(AssociatedTypeWitness - 8);
            if ((*(v24 + 48))(v23, 1, AssociatedTypeWitness) == 1)
            {
              (*(v21 + 8))(v23, v20);
              __swift_destroy_boxed_opaque_existential_0Tm(&v65);
              __swift_destroy_boxed_opaque_existential_0Tm(v68);
              v7 = v54;
              goto LABEL_30;
            }

            v64 = AssociatedTypeWitness;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v63);
            (*(v24 + 32))(boxed_opaque_existential_0, v23, AssociatedTypeWitness);
            sub_25A872D74(&v63, v62);
            sub_25A87500C(v62, &v58);
            if (!swift_dynamicCast())
            {
              break;
            }

            sub_25A87817C(&v55, &v59);
            sub_25A872F24(&v59, &v55);
            v26 = v54;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v69 = v26;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v26 = sub_25A96759C(0, v26[2] + 1, 1, v26);
              v69 = v26;
            }

            v29 = v26[2];
            v28 = v26[3];
            if (v29 >= v28 >> 1)
            {
              v26 = sub_25A96759C((v28 > 1), v29 + 1, 1, v26);
              v69 = v26;
            }

            v54 = v26;
            __swift_destroy_boxed_opaque_existential_0Tm(&v59);
            __swift_destroy_boxed_opaque_existential_0Tm(v62);
            v30 = *(&v56 + 1);
            v31 = v57;
            v32 = __swift_mutable_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
            MEMORY[0x28223BE20](v32);
            v34 = v51 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v35 + 16))(v34);
            sub_25A8F012C(v29, v34, &v69, v30, v31);
            __swift_destroy_boxed_opaque_existential_0Tm(&v55);
          }

          v57 = 0;
          v55 = 0u;
          v56 = 0u;
          sub_25A878194(&v55, &qword_27FA04B68, &qword_25A9F9EC0);
          sub_25A87500C(v62, &v59);
          v36 = swift_dynamicCast();
          v37 = v54;
          if ((v36 & 1) == 0)
          {
            break;
          }

          if (v55 == __PAIR128__(0xE700000000000000, 0x7369786177656ELL))
          {
          }

          else
          {
            v38 = sub_25A9989E8();

            if ((v38 & 1) == 0)
            {
              break;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_25A96759C(0, v37[2] + 1, 1, v37);
          }

          v40 = v37[2];
          v39 = v37[3];
          if (v40 >= v39 >> 1)
          {
            v37 = sub_25A96759C((v39 > 1), v40 + 1, 1, v37);
          }

          __swift_destroy_boxed_opaque_existential_0Tm(v62);
          v60 = &type metadata for MLXNewAxisIndex;
          v61 = &off_286C13760;
          v54 = v37;
          v37[2] = v40 + 1;
          sub_25A87817C(&v59, &v37[5 * v40 + 4]);
        }

        if (qword_27FA043C0 != -1)
        {
          swift_once();
        }

        v46 = sub_25A997BD8();
        __swift_project_value_buffer(v46, qword_27FA0FCE8);
        v47 = sub_25A997BB8();
        v48 = sub_25A9983A8();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&dword_25A232000, v47, v48, "Unrecognized MLXArray slice", v49, 2u);
          MEMORY[0x25F852800](v49, -1, -1);
        }

        sub_25A874F54();
        swift_allocError();
        *v50 = 38;
        swift_willThrow();

        __swift_destroy_boxed_opaque_existential_0Tm(v62);
        __swift_destroy_boxed_opaque_existential_0Tm(&v65);
        return __swift_destroy_boxed_opaque_existential_0Tm(v68);
      }

      else
      {
        AssociatedConformanceWitness = 0;
        v65 = 0u;
        v66 = 0u;
        sub_25A878194(&v65, &qword_27FA04850, &unk_25A9FDC60);
        if (qword_27FA043C0 != -1)
        {
          swift_once();
        }

        v41 = sub_25A997BD8();
        __swift_project_value_buffer(v41, qword_27FA0FCE8);
        v42 = sub_25A997BB8();
        v43 = sub_25A9983A8();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_25A232000, v42, v43, "Invalid MLXArray slice", v44, 2u);
          MEMORY[0x25F852800](v44, -1, -1);
        }

        sub_25A874F54();
        swift_allocError();
        *v45 = 38;
        swift_willThrow();
      }
    }
  }

  return result;
}

void *sub_25A8EC55C(uint64_t a1)
{
  sub_25A87500C(a1, &v42);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04B60, &qword_25A9F9EB8);
  if (swift_dynamicCast())
  {
    sub_25A87817C(&v47, v50);
    sub_25A872F24(v50, &v47);
    v4 = sub_25A96759C(0, 1, 1, MEMORY[0x277D84F90]);
    v53 = v4;
    v3 = v4[2];
    v5 = v4[3];
    if (v3 >= v5 >> 1)
    {
      goto LABEL_38;
    }

    goto LABEL_3;
  }

  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_25A878194(&v47, &qword_27FA04B68, &qword_25A9F9EC0);
  sub_25A87500C(a1, &v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    sub_25A878194(&v47, &qword_27FA04728, &unk_25A9FD740);
    return MEMORY[0x277D84F90];
  }

  v39 = v1;
  sub_25A87817C(&v47, v50);
  v12 = v51;
  v13 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v14 = (*(v13 + 8))(v12, v13);
  v15 = v14;
  v41 = *(v14 + 16);
  if (!v41)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_34:

    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    return v4;
  }

  v16 = 0;
  v17 = v14 + 32;
  v4 = MEMORY[0x277D84F90];
  v40 = v14;
  while (1)
  {
    v5 = *(v15 + 16);
    if (v16 >= v5)
    {
      break;
    }

    sub_25A87500C(v17, v46);
    sub_25A87500C(v46, v45);
    if (swift_dynamicCast())
    {
      sub_25A87817C(&v42, &v47);
      sub_25A872F24(&v47, &v42);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v4 = sub_25A96759C(0, v4[2] + 1, 1, v4);
        v53 = v4;
      }

      v21 = v4[2];
      v20 = v4[3];
      if (v21 >= v20 >> 1)
      {
        v4 = sub_25A96759C((v20 > 1), v21 + 1, 1, v4);
        v53 = v4;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v47);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      v22 = *(&v43 + 1);
      v23 = v44;
      v24 = __swift_mutable_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
      MEMORY[0x28223BE20](v24);
      v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v26);
      sub_25A8F012C(v21, v26, &v53, v22, v23);
      __swift_destroy_boxed_opaque_existential_0Tm(&v42);
      v15 = v40;
      goto LABEL_9;
    }

    v44 = 0;
    v43 = 0u;
    v42 = 0u;
    sub_25A878194(&v42, &qword_27FA04B68, &qword_25A9F9EC0);
    sub_25A87500C(v46, &v47);
    if (swift_dynamicCast())
    {
      if (v42 == __PAIR128__(0xE700000000000000, 0x7369786177656ELL))
      {

        goto LABEL_22;
      }

      v28 = sub_25A9989E8();

      if (v28)
      {
        goto LABEL_22;
      }
    }

    if ((static MorpheusUtils.isNil(_:)(v46) & 1) == 0)
    {
      v31 = v39;
      v32 = sub_25A8F0FA0(v46, 13);
      v39 = v31;
      if (v31)
      {

        sub_25A874F54();
        swift_allocError();
        *v37 = 100;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_0Tm(v46);
        __swift_destroy_boxed_opaque_existential_0Tm(v50);
        return v4;
      }

      v33 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_25A96759C(0, v4[2] + 1, 1, v4);
      }

      v35 = v4[2];
      v34 = v4[3];
      if (v35 >= v34 >> 1)
      {
        v4 = sub_25A96759C((v34 > 1), v35 + 1, 1, v4);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      *(&v48 + 1) = type metadata accessor for MLXArray();
      v49 = &off_286C13590;
      *&v47 = v33;
      v4[2] = v35 + 1;
      v18 = &v4[5 * v35];
      goto LABEL_8;
    }

LABEL_22:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_25A96759C(0, v4[2] + 1, 1, v4);
    }

    v30 = v4[2];
    v29 = v4[3];
    if (v30 >= v29 >> 1)
    {
      v4 = sub_25A96759C((v29 > 1), v30 + 1, 1, v4);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    *(&v48 + 1) = &type metadata for MLXNewAxisIndex;
    v49 = &off_286C13760;
    v18 = &v4[5 * v30];
    v4[2] = v30 + 1;
LABEL_8:
    sub_25A87817C(&v47, (v18 + 4));
LABEL_9:
    ++v16;
    v17 += 32;
    if (v41 == v16)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_38:
  v4 = sub_25A96759C((v5 > 1), v3 + 1, 1, v4);
  v53 = v4;
LABEL_3:
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  v6 = *(&v48 + 1);
  v7 = v49;
  v8 = __swift_mutable_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  sub_25A8F012C(v3, v10, &v53, v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(&v47);
  return v4;
}

uint64_t sub_25A8ECC90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  result = sub_25A8EC55C(a1);
  if (!v3)
  {
    v7 = result;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = sub_25A958DBC(v7, v10);

    swift_beginAccess();
    result = mlx_array_size(*(v8 + 16));
    if (result == 1 && (v9 = *(sub_25A9616CC() + 2), result = , !v9))
    {
      sub_25A8E796C(a2);
    }

    else
    {
      a2[3] = v5;
      *a2 = v8;
    }
  }

  return result;
}

uint64_t sub_25A8ECDF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v31 = MEMORY[0x277D84F90];
  sub_25A937570(0, v6, 0);
  v7 = v6;
  result = v31;
  v30 = v4;
  v28 = a1;
  v29 = a2;
  if (v6)
  {
    v9 = (a1 + 32);
    v10 = (a2 + 32);
    v11 = v7;
    v12 = v5;
    v13 = v5;
    while (v4)
    {
      if (!v12)
      {
        goto LABEL_29;
      }

      v14 = *v9 * *v10;
      if ((*v9 * *v10) >> 64 != v14 >> 63)
      {
        goto LABEL_30;
      }

      if (v14 < 0)
      {
        v15 = __OFSUB__(0, v14);
        v14 = -v14;
        if (v15)
        {
          goto LABEL_35;
        }
      }

      v32 = result;
      v17 = *(result + 16);
      v16 = *(result + 24);
      if (v17 >= v16 >> 1)
      {
        v25 = v13;
        v26 = v7;
        sub_25A937570((v16 > 1), v17 + 1, 1);
        v13 = v25;
        v7 = v26;
        result = v32;
      }

      --v12;
      *(result + 16) = v17 + 1;
      *(result + 8 * v17 + 32) = v14;
      --v4;
      ++v10;
      ++v9;
      if (!--v11)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v13 = v5;
LABEL_16:
  if (v30 > v13)
  {
    while (v7 < v30)
    {
      v18 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_32;
      }

      if (v13 == v7)
      {
        return result;
      }

      if (v7 >= v13)
      {
        goto LABEL_33;
      }

      v19 = *(v28 + 32 + 8 * v7);
      v20 = *(v29 + 32 + 8 * v7);
      v21 = v19 * v20;
      if ((v19 * v20) >> 64 != (v19 * v20) >> 63)
      {
        goto LABEL_34;
      }

      if (v21 < 0)
      {
        v15 = __OFSUB__(0, v21);
        v21 = -v21;
        if (v15)
        {
          goto LABEL_36;
        }
      }

      v33 = result;
      v23 = *(result + 16);
      v22 = *(result + 24);
      if (v23 >= v22 >> 1)
      {
        v27 = v7;
        v24 = v13;
        sub_25A937570((v22 > 1), v23 + 1, 1);
        v7 = v27;
        v13 = v24;
        result = v33;
      }

      *(result + 16) = v23 + 1;
      *(result + 8 * v23 + 32) = v21;
      ++v7;
      if (v18 == v30)
      {
        return result;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  return result;
}

uint64_t sub_25A8ED010(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    v4 = (a2 - result) / 8;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = (a3 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = 1;
LABEL_12:
    v10 = a3;
    if (v9 != v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    result = swift_allocObject();
    v10 = result;
    *(result + 16) = xmmword_25A9F8D90;
    *(result + 32) = v4;
  }

  if (v3)
  {

    v11 = Array<A>.asInt32.getter(v10);
    v12 = *(v10 + 16);

    if (!(v12 >> 31))
    {
      v13 = mlx_array_new_data(v3, (v11 + 32), v12, 8);

      return v13;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25A8ED14C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    v4 = (a2 - result) / 4;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = (a3 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = 1;
LABEL_12:
    v10 = a3;
    if (v9 != v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    result = swift_allocObject();
    v10 = result;
    *(result + 16) = xmmword_25A9F8D90;
    *(result + 32) = v4;
  }

  if (v3)
  {

    v11 = Array<A>.asInt32.getter(v10);
    v12 = *(v10 + 16);

    if (!(v12 >> 31))
    {
      v13 = mlx_array_new_data(v3, (v11 + 32), v12, 7);

      return v13;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25A8ED288(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    v4 = (a2 - result) / 2;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = (a3 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = 1;
LABEL_12:
    v10 = a3;
    if (v9 != v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    result = swift_allocObject();
    v10 = result;
    *(result + 16) = xmmword_25A9F8D90;
    *(result + 32) = v4;
  }

  if (v3)
  {

    v11 = Array<A>.asInt32.getter(v10);
    v12 = *(v10 + 16);

    if (!(v12 >> 31))
    {
      v13 = mlx_array_new_data(v3, (v11 + 32), v12, 6);

      return v13;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25A8ED3BC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    v4 = a2 - result;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = (a3 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = 1;
LABEL_12:
    v10 = a3;
    if (v9 != v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    result = swift_allocObject();
    v10 = result;
    *(result + 16) = xmmword_25A9F8D90;
    *(result + 32) = v4;
  }

  if (v3)
  {

    v11 = Array<A>.asInt32.getter(v10);
    v12 = *(v10 + 16);

    if (!(v12 >> 31))
    {
      v13 = mlx_array_new_data(v3, (v11 + 32), v12, 5);

      return v13;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25A8ED4E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    v4 = (a2 - result) / 8;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = (a3 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = 1;
LABEL_12:
    v10 = a3;
    if (v9 != v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    result = swift_allocObject();
    v10 = result;
    *(result + 16) = xmmword_25A9F8D90;
    *(result + 32) = v4;
  }

  if (v3)
  {

    v11 = Array<A>.asInt32.getter(v10);
    v12 = *(v10 + 16);

    if (!(v12 >> 31))
    {
      v13 = mlx_array_new_data(v3, (v11 + 32), v12, 4);

      return v13;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25A8ED624(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    v4 = (a2 - result) / 4;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = (a3 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = 1;
LABEL_12:
    v10 = a3;
    if (v9 != v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    result = swift_allocObject();
    v10 = result;
    *(result + 16) = xmmword_25A9F8D90;
    *(result + 32) = v4;
  }

  if (v3)
  {

    v11 = Array<A>.asInt32.getter(v10);
    v12 = *(v10 + 16);

    if (!(v12 >> 31))
    {
      v13 = mlx_array_new_data(v3, (v11 + 32), v12, 3);

      return v13;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25A8ED760(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    v4 = (a2 - result) / 2;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = (a3 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = 1;
LABEL_12:
    v10 = a3;
    if (v9 != v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    result = swift_allocObject();
    v10 = result;
    *(result + 16) = xmmword_25A9F8D90;
    *(result + 32) = v4;
  }

  if (v3)
  {

    v11 = Array<A>.asInt32.getter(v10);
    v12 = *(v10 + 16);

    if (!(v12 >> 31))
    {
      v13 = mlx_array_new_data(v3, (v11 + 32), v12, 2);

      return v13;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25A8ED894(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    v4 = a2 - result;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = (a3 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = 1;
LABEL_12:
    v10 = a3;
    if (v9 != v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    result = swift_allocObject();
    v10 = result;
    *(result + 16) = xmmword_25A9F8D90;
    *(result + 32) = v4;
  }

  if (v3)
  {

    v11 = Array<A>.asInt32.getter(v10);
    v12 = *(v10 + 16);

    if (!(v12 >> 31))
    {
      v13 = mlx_array_new_data(v3, (v11 + 32), v12, 1);

      return v13;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25A8ED9C0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    v4 = (a2 - result) / 4;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = (a3 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = 1;
LABEL_12:
    v10 = a3;
    if (v9 != v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    result = swift_allocObject();
    v10 = result;
    *(result + 16) = xmmword_25A9F8D90;
    *(result + 32) = v4;
  }

  if (v3)
  {

    v11 = Array<A>.asInt32.getter(v10);
    v12 = *(v10 + 16);

    if (!(v12 >> 31))
    {
      v13 = mlx_array_new_data(v3, (v11 + 32), v12, 10);

      return v13;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25A8EDAFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    v4 = (a2 - result) / 2;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = (a3 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = 1;
LABEL_12:
    v10 = a3;
    if (v9 != v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    result = swift_allocObject();
    v10 = result;
    *(result + 16) = xmmword_25A9F8D90;
    *(result + 32) = v4;
  }

  if (v3)
  {

    v11 = Array<A>.asInt32.getter(v10);
    v12 = *(v10 + 16);

    if (!(v12 >> 31))
    {
      v13 = mlx_array_new_data(v3, (v11 + 32), v12, 9);

      return v13;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25A8EDC30(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    v4 = a2 - result;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = (a3 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = 1;
LABEL_12:
    v10 = a3;
    if (v9 != v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    result = swift_allocObject();
    v10 = result;
    *(result + 16) = xmmword_25A9F8D90;
    *(result + 32) = v4;
  }

  if (v3)
  {

    v11 = Array<A>.asInt32.getter(v10);
    v12 = *(v10 + 16);

    if (!(v12 >> 31))
    {
      v13 = mlx_array_new_data(v3, (v11 + 32), v12, 0);

      return v13;
    }

    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25A8EDD5C()
{
  v1 = v0;
  v9[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  if (mlx_array_size(*(v0 + 16)) == 1)
  {
    if (qword_27FA043E0 == -1)
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
  v2 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(*(v1 + 16));
  [v2 unlock];
  v3 = mlx_array_dtype(*(v1 + 16));
  if (sub_25A956420(v3))
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v4 = v9[0];
    v5 = mlx_array_dtype(*(v1 + 16));
    if (sub_25A956420(v5))
    {
      v9[0] = mlx_array_new();
      mlx_astype(v9, *(v1 + 16), 0, *(v4 + 16));
      v6 = v9[0];
      *(swift_allocObject() + 16) = v6;
    }

    else
    {
    }

    v7 = sub_25A8EDD5C();
  }

  else
  {
    LOBYTE(v9[0]) = 0;
    mlx_array_item_BOOL(v9, *(v1 + 16));
    v7 = v9[0];
  }

  return v7 & 1;
}

void sub_25A8EDF50(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EDF58);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8EDF9C()
{
  v9[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  if (mlx_array_size(*(v0 + 16)) == 1)
  {
    if (qword_27FA043E0 == -1)
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
  v1 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(*(v0 + 16));
  [v1 unlock];
  v2 = mlx_array_dtype(*(v0 + 16));
  if ((sub_25A956420(v2) - 1) < 8u)
  {
    return sub_25A961B18();
  }

  v4 = mlx_array_dtype(*(v0 + 16));
  if (sub_25A956420(v4) == 8)
  {
    v9[0] = 0;
    mlx_array_item_int64(v9, *(v0 + 16));
    return v9[0];
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v5 = v9[0];
    v6 = mlx_array_dtype(*(v0 + 16));
    if (sub_25A956420(v6) == 8)
    {
    }

    else
    {
      v9[0] = mlx_array_new();
      mlx_astype(v9, *(v0 + 16), 8, *(v5 + 16));

      v7 = v9[0];
      *(swift_allocObject() + 16) = v7;
    }

    v8 = sub_25A8EDF9C();

    return v8;
  }
}

void sub_25A8EE1C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EE1CCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8EE218()
{
  v12 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  if (mlx_array_size(v0[2]) == 1)
  {
    if (qword_27FA043E0 == -1)
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
  v1 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(v0[2]);
  [v1 unlock];
  v2 = mlx_array_dtype(v0[2]);
  if ((sub_25A956420(v2) - 1) >= 8u)
  {
    goto LABEL_7;
  }

  v3 = sub_25A961B18();
  v4 = v3;
  if (v3 >= 0xFFFFFFFF80000000)
  {
    if (v3 <= 0x7FFFFFFF)
    {
      return v4;
    }

    __break(1u);
LABEL_7:
    v5 = mlx_array_dtype(v0[2]);
    if (sub_25A956420(v5) == 7)
    {
      LODWORD(v11) = 0;
      mlx_array_item_int32(&v11, v0[2]);
      return v11;
    }

    v1 = v0;
    if (qword_27FA043D8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_10:
  sub_25A998C58();
  v6 = v1;
  v7 = v11;
  v8 = mlx_array_dtype(v6[2]);
  if (sub_25A956420(v8) == 7)
  {
  }

  else
  {
    v11 = mlx_array_new();
    mlx_astype(&v11, v6[2], 7, *(v7 + 16));

    v9 = v11;
    *(swift_allocObject() + 16) = v9;
  }

  v4 = sub_25A8EE218();

  return v4;
}

void sub_25A8EE460(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EE468);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8EE4B4()
{
  v12 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  if (mlx_array_size(v0[2]) == 1)
  {
    if (qword_27FA043E0 == -1)
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
  v1 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(v0[2]);
  [v1 unlock];
  v2 = mlx_array_dtype(v0[2]);
  if ((sub_25A956420(v2) - 1) >= 8u)
  {
    goto LABEL_7;
  }

  v3 = sub_25A961B18();
  v4 = v3;
  if (v3 >= -32768)
  {
    if (v3 < 0x8000)
    {
      return v4;
    }

    __break(1u);
LABEL_7:
    v5 = mlx_array_dtype(v0[2]);
    if (sub_25A956420(v5) == 6)
    {
      LOWORD(v11) = 0;
      mlx_array_item_int16(&v11, v0[2]);
      return v11;
    }

    v1 = v0;
    if (qword_27FA043D8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_10:
  sub_25A998C58();
  v6 = v1;
  v7 = v11;
  v8 = mlx_array_dtype(v6[2]);
  if (sub_25A956420(v8) == 6)
  {
  }

  else
  {
    v11 = mlx_array_new();
    mlx_astype(&v11, v6[2], 6, *(v7 + 16));

    v9 = v11;
    *(swift_allocObject() + 16) = v9;
  }

  v4 = sub_25A8EE4B4();

  return v4;
}

void sub_25A8EE6F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EE6FCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8EE748()
{
  v12 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  if (mlx_array_size(v0[2]) == 1)
  {
    if (qword_27FA043E0 == -1)
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
  v1 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(v0[2]);
  [v1 unlock];
  v2 = mlx_array_dtype(v0[2]);
  if ((sub_25A956420(v2) - 1) >= 8u)
  {
    goto LABEL_7;
  }

  v3 = sub_25A961B18();
  v4 = v3;
  if (v3 >= -128)
  {
    if (v3 <= 127)
    {
      return v4;
    }

    __break(1u);
LABEL_7:
    v5 = mlx_array_dtype(v0[2]);
    if (sub_25A956420(v5) == 5)
    {
      LOBYTE(v11) = 0;
      mlx_array_item_int8(&v11, v0[2]);
      return v11;
    }

    v1 = v0;
    if (qword_27FA043D8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_10:
  sub_25A998C58();
  v6 = v1;
  v7 = v11;
  v8 = mlx_array_dtype(v6[2]);
  if (sub_25A956420(v8) == 5)
  {
  }

  else
  {
    v11 = mlx_array_new();
    mlx_astype(&v11, v6[2], 5, *(v7 + 16));

    v9 = v11;
    *(swift_allocObject() + 16) = v9;
  }

  v4 = sub_25A8EE748();

  return v4;
}

void sub_25A8EE988(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EE990);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8EE9DC()
{
  v9[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  if (mlx_array_size(*(v0 + 16)) == 1)
  {
    if (qword_27FA043E0 == -1)
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
  v1 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(*(v0 + 16));
  [v1 unlock];
  v2 = mlx_array_dtype(*(v0 + 16));
  if ((sub_25A956420(v2) - 1) < 8u)
  {
    return sub_25A961E68();
  }

  v4 = mlx_array_dtype(*(v0 + 16));
  if (sub_25A956420(v4) == 4)
  {
    v9[0] = 0;
    mlx_array_item_uint64(v9, *(v0 + 16));
    return v9[0];
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v5 = v9[0];
    v6 = mlx_array_dtype(*(v0 + 16));
    if (sub_25A956420(v6) == 4)
    {
    }

    else
    {
      v9[0] = mlx_array_new();
      mlx_astype(v9, *(v0 + 16), 4, *(v5 + 16));

      v7 = v9[0];
      *(swift_allocObject() + 16) = v7;
    }

    v8 = sub_25A8EE9DC();

    return v8;
  }
}

void sub_25A8EEC04(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EEC0CLL);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_25A8EEC58()
{
  v9[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  if (mlx_array_size(*(v0 + 16)) == 1)
  {
    if (qword_27FA043E0 == -1)
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
  v1 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(*(v0 + 16));
  [v1 unlock];
  v2 = mlx_array_dtype(*(v0 + 16));
  if ((sub_25A956420(v2) - 1) < 8u)
  {
    v3 = sub_25A961E68();
    if (!HIDWORD(v3))
    {
      return v3;
    }

    __break(1u);
  }

  v4 = mlx_array_dtype(*(v0 + 16));
  if (sub_25A956420(v4) == 3)
  {
    LODWORD(v9[0]) = 0;
    mlx_array_item_uint32(v9, *(v0 + 16));
    return LODWORD(v9[0]);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v5 = v9[0];
    v6 = mlx_array_dtype(*(v0 + 16));
    if (sub_25A956420(v6) == 3)
    {
    }

    else
    {
      v9[0] = mlx_array_new();
      mlx_astype(v9, *(v0 + 16), 3, *(v5 + 16));

      v7 = v9[0];
      *(swift_allocObject() + 16) = v7;
    }

    v3 = sub_25A8EEC58();
  }

  return v3;
}

void sub_25A8EEE8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EEE94);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_25A8EEEE0()
{
  v9[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  if (mlx_array_size(*(v0 + 16)) == 1)
  {
    if (qword_27FA043E0 == -1)
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
  v1 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(*(v0 + 16));
  [v1 unlock];
  v2 = mlx_array_dtype(*(v0 + 16));
  if ((sub_25A956420(v2) - 1) < 8u)
  {
    v3 = sub_25A961E68();
    if (!(v3 >> 16))
    {
      return v3;
    }

    __break(1u);
  }

  v4 = mlx_array_dtype(*(v0 + 16));
  if (sub_25A956420(v4) == 2)
  {
    LOWORD(v9[0]) = 0;
    mlx_array_item_uint16(v9, *(v0 + 16));
    return LOWORD(v9[0]);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v5 = v9[0];
    v6 = mlx_array_dtype(*(v0 + 16));
    if (sub_25A956420(v6) == 2)
    {
    }

    else
    {
      v9[0] = mlx_array_new();
      mlx_astype(v9, *(v0 + 16), 2, *(v5 + 16));

      v7 = v9[0];
      *(swift_allocObject() + 16) = v7;
    }

    v3 = sub_25A8EEEE0();
  }

  return v3;
}

void sub_25A8EF114(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EF11CLL);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_25A8EF168()
{
  v9[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  if (mlx_array_size(*(v0 + 16)) == 1)
  {
    if (qword_27FA043E0 == -1)
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
  v1 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(*(v0 + 16));
  [v1 unlock];
  v2 = mlx_array_dtype(*(v0 + 16));
  if ((sub_25A956420(v2) - 1) < 8u)
  {
    v3 = sub_25A961E68();
    if (v3 <= 0xFF)
    {
      return v3;
    }

    __break(1u);
  }

  v4 = mlx_array_dtype(*(v0 + 16));
  if (sub_25A956420(v4) == 1)
  {
    LOBYTE(v9[0]) = 0;
    mlx_array_item_uint8(v9, *(v0 + 16));
    return LOBYTE(v9[0]);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v5 = v9[0];
    v6 = mlx_array_dtype(*(v0 + 16));
    if (sub_25A956420(v6) == 1)
    {
    }

    else
    {
      v9[0] = mlx_array_new();
      mlx_astype(v9, *(v0 + 16), 1, *(v5 + 16));

      v7 = v9[0];
      *(swift_allocObject() + 16) = v7;
    }

    v3 = sub_25A8EF168();
  }

  return v3;
}

void sub_25A8EF39C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EF3A4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8EF3F0()
{
  v9[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  if (mlx_array_size(*(v0 + 16)) != 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (qword_27FA043E0 != -1)
  {
LABEL_15:
    swift_once();
  }

  v1 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(*(v0 + 16));
  [v1 unlock];
  v2 = mlx_array_dtype(*(v0 + 16));
  v3 = sub_25A956420(v2);
  if (v3 <= 0xC && ((1 << v3) & 0x1600) != 0)
  {
    return sub_25A9621C8();
  }

  v5 = mlx_array_dtype(*(v0 + 16));
  if (sub_25A956420(v5) == 10)
  {
    LODWORD(v9[0]) = 0;
    return mlx_array_item_float32(v9, *(v0 + 16));
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v6 = v9[0];
    v7 = mlx_array_dtype(*(v0 + 16));
    if (sub_25A956420(v7) == 10)
    {
    }

    else
    {
      v9[0] = mlx_array_new();
      mlx_astype(v9, *(v0 + 16), 10, *(v6 + 16));

      v8 = v9[0];
      *(swift_allocObject() + 16) = v8;
    }

    sub_25A8EF3F0();
  }
}

void sub_25A8EF630(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EF638);
  }

  _Unwind_Resume(a1);
}

void sub_25A8EF684()
{
  v13[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  if (mlx_array_size(*(v0 + 16)) != 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (qword_27FA043E0 != -1)
  {
LABEL_15:
    swift_once();
  }

  v1 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(*(v0 + 16));
  [v1 unlock];
  v2 = mlx_array_dtype(*(v0 + 16));
  v3 = sub_25A956420(v2);
  if (v3 <= 0xC && ((1 << v3) & 0x1600) != 0)
  {
    sub_25A9621C8();
    __asm { FCVT            H0, S0 }
  }

  else
  {
    v9 = mlx_array_dtype(*(v0 + 16));
    if (sub_25A956420(v9) == 9)
    {
      LOWORD(v13[0]) = 0;
      mlx_array_item_float16(v13, *(v0 + 16));
    }

    else
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v10 = v13[0];
      v11 = mlx_array_dtype(*(v0 + 16));
      if (sub_25A956420(v11) == 9)
      {
      }

      else
      {
        v13[0] = mlx_array_new();
        mlx_astype(v13, *(v0 + 16), 9, *(v10 + 16));

        v12 = v13[0];
        *(swift_allocObject() + 16) = v12;
      }

      sub_25A8EF684();
    }
  }
}

void sub_25A8EF8CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EF8D4);
  }

  _Unwind_Resume(a1);
}

int64_t sub_25A8EF920(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_25A8EF9D4(char **a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = mlx_array_data_uint8(*(a3 + 16));
  v7 = sub_25A9616CC();
  v8 = sub_25A961A18();
  v9 = sub_25A8ECDF0(v7, v8);

  v10 = *(v9 + 16);
  if (!v10)
  {

    v11 = mlx_array_size(*(a3 + 16));
    goto LABEL_14;
  }

  v11 = *(v9 + 32);
  v12 = v10 - 1;
  if (v10 != 1)
  {
    if (v10 < 5)
    {
      v13 = 1;
      goto LABEL_9;
    }

    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v14 = vdupq_n_s64(v11);
    v15 = (v9 + 56);
    v16 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = v14;
    do
    {
      v14 = vbslq_s8(vcgtq_s64(v14, v15[-1]), v14, v15[-1]);
      v17 = vbslq_s8(vcgtq_s64(v17, *v15), v17, *v15);
      v15 += 2;
      v16 -= 4;
    }

    while (v16);
    v18 = vbslq_s8(vcgtq_s64(v14, v17), v14, v17);
    v19 = vextq_s8(v18, v18, 8uLL).u64[0];
    v11 = vbsl_s8(vcgtd_s64(v18.i64[0], v19), *v18.i8, v19);
    if (v12 != (v12 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_9:
      v20 = v10 - v13;
      v21 = (v9 + 8 * v13 + 32);
      do
      {
        v23 = *v21++;
        v22 = v23;
        if (v11 <= v23)
        {
          v11 = v22;
        }

        --v20;
      }

      while (v20);
    }
  }

LABEL_14:
  result = mlx_array_itemsize(*(a3 + 16));
  if ((v11 * result) >> 64 == (v11 * result) >> 63)
  {
    if (v6)
    {
      v25 = v6 + v11 * result;
    }

    else
    {
      v25 = 0;
    }

    v26 = *a1;
    if (!*a1)
    {
      v28 = 0;
      goto LABEL_22;
    }

    v27 = a1[1];
    if ((v27 - 0x1000000000000000) >> 61 == 7)
    {
      v28 = &v26[8 * v27];
LABEL_22:
      sub_25A9727FC(v6, v25, v26, v28);
      result = mlx_array_size(*(a3 + 16));
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25A8EFBB4(char **a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = mlx_array_data_uint8(*(a3 + 16));
  v7 = sub_25A9616CC();
  v8 = sub_25A961A18();
  v9 = sub_25A8ECDF0(v7, v8);

  v10 = *(v9 + 16);
  if (!v10)
  {

    v11 = mlx_array_size(*(a3 + 16));
    goto LABEL_14;
  }

  v11 = *(v9 + 32);
  v12 = v10 - 1;
  if (v10 != 1)
  {
    if (v10 < 5)
    {
      v13 = 1;
      goto LABEL_9;
    }

    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v14 = vdupq_n_s64(v11);
    v15 = (v9 + 56);
    v16 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = v14;
    do
    {
      v14 = vbslq_s8(vcgtq_s64(v14, v15[-1]), v14, v15[-1]);
      v17 = vbslq_s8(vcgtq_s64(v17, *v15), v17, *v15);
      v15 += 2;
      v16 -= 4;
    }

    while (v16);
    v18 = vbslq_s8(vcgtq_s64(v14, v17), v14, v17);
    v19 = vextq_s8(v18, v18, 8uLL).u64[0];
    v11 = vbsl_s8(vcgtd_s64(v18.i64[0], v19), *v18.i8, v19);
    if (v12 != (v12 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_9:
      v20 = v10 - v13;
      v21 = (v9 + 8 * v13 + 32);
      do
      {
        v23 = *v21++;
        v22 = v23;
        if (v11 <= v23)
        {
          v11 = v22;
        }

        --v20;
      }

      while (v20);
    }
  }

LABEL_14:
  result = mlx_array_itemsize(*(a3 + 16));
  if ((v11 * result) >> 64 == (v11 * result) >> 63)
  {
    if (v6)
    {
      v25 = v6 + v11 * result;
    }

    else
    {
      v25 = 0;
    }

    v26 = *a1;
    if (!*a1)
    {
      v28 = 0;
      goto LABEL_22;
    }

    v27 = a1[1];
    if ((v27 - 0x2000000000000000) >> 62 == 3)
    {
      v28 = &v26[4 * v27];
LABEL_22:
      sub_25A9727FC(v6, v25, v26, v28);
      result = mlx_array_size(*(a3 + 16));
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25A8EFD94(char **a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = mlx_array_data_uint8(*(a3 + 16));
  v7 = sub_25A9616CC();
  v8 = sub_25A961A18();
  v9 = sub_25A8ECDF0(v7, v8);

  v10 = *(v9 + 16);
  if (!v10)
  {

    v11 = mlx_array_size(*(a3 + 16));
    goto LABEL_14;
  }

  v11 = *(v9 + 32);
  v12 = v10 - 1;
  if (v10 != 1)
  {
    if (v10 < 5)
    {
      v13 = 1;
      goto LABEL_9;
    }

    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v14 = vdupq_n_s64(v11);
    v15 = (v9 + 56);
    v16 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = v14;
    do
    {
      v14 = vbslq_s8(vcgtq_s64(v14, v15[-1]), v14, v15[-1]);
      v17 = vbslq_s8(vcgtq_s64(v17, *v15), v17, *v15);
      v15 += 2;
      v16 -= 4;
    }

    while (v16);
    v18 = vbslq_s8(vcgtq_s64(v14, v17), v14, v17);
    v19 = vextq_s8(v18, v18, 8uLL).u64[0];
    v11 = vbsl_s8(vcgtd_s64(v18.i64[0], v19), *v18.i8, v19);
    if (v12 != (v12 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_9:
      v20 = v10 - v13;
      v21 = (v9 + 8 * v13 + 32);
      do
      {
        v23 = *v21++;
        v22 = v23;
        if (v11 <= v23)
        {
          v11 = v22;
        }

        --v20;
      }

      while (v20);
    }
  }

LABEL_14:
  result = mlx_array_itemsize(*(a3 + 16));
  if ((v11 * result) >> 64 == (v11 * result) >> 63)
  {
    if (v6)
    {
      v25 = v6 + v11 * result;
    }

    else
    {
      v25 = 0;
    }

    v26 = *a1;
    if (!*a1)
    {
      v28 = 0;
      goto LABEL_22;
    }

    v27 = a1[1];
    if (v27 + 0x4000000000000000 >= 0)
    {
      v28 = &v26[2 * v27];
LABEL_22:
      sub_25A9727FC(v6, v25, v26, v28);
      result = mlx_array_size(*(a3 + 16));
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25A8EFF6C(char **a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = mlx_array_data_uint8(*(a3 + 16));
  v7 = sub_25A9616CC();
  v8 = sub_25A961A18();
  v9 = sub_25A8ECDF0(v7, v8);

  v10 = *(v9 + 16);
  if (!v10)
  {

    v11 = mlx_array_size(*(a3 + 16));
    goto LABEL_14;
  }

  v11 = *(v9 + 32);
  v12 = v10 - 1;
  if (v10 != 1)
  {
    if (v10 < 5)
    {
      v13 = 1;
      goto LABEL_9;
    }

    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v14 = vdupq_n_s64(v11);
    v15 = (v9 + 56);
    v16 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = v14;
    do
    {
      v14 = vbslq_s8(vcgtq_s64(v14, v15[-1]), v14, v15[-1]);
      v17 = vbslq_s8(vcgtq_s64(v17, *v15), v17, *v15);
      v15 += 2;
      v16 -= 4;
    }

    while (v16);
    v18 = vbslq_s8(vcgtq_s64(v14, v17), v14, v17);
    v19 = vextq_s8(v18, v18, 8uLL).u64[0];
    v11 = vbsl_s8(vcgtd_s64(v18.i64[0], v19), *v18.i8, v19);
    if (v12 != (v12 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_9:
      v20 = v10 - v13;
      v21 = (v9 + 8 * v13 + 32);
      do
      {
        v23 = *v21++;
        v22 = v23;
        if (v11 <= v23)
        {
          v11 = v22;
        }

        --v20;
      }

      while (v20);
    }
  }

LABEL_14:
  result = mlx_array_itemsize(*(a3 + 16));
  if ((v11 * result) >> 64 == (v11 * result) >> 63)
  {
    if (v6)
    {
      v25 = v6 + v11 * result;
    }

    else
    {
      v25 = 0;
    }

    if (*a1)
    {
      v26 = &(*a1)[a1[1]];
    }

    else
    {
      v26 = 0;
    }

    sub_25A9727FC(v6, v25, *a1, v26);
    result = mlx_array_size(*(a3 + 16));
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25A8F012C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_25A87817C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_25A8F01C4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
LABEL_158:
    v112 = a2;
    v113 = sub_25A998848();
    a2 = v112;
    v5 = v113;
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 32);
    v8 = 1;
    do
    {
      v9 = *v7++;
      v10 = v8 * v9;
      if ((v8 * v9) >> 64 != (v8 * v9) >> 63)
      {
        __break(1u);
        goto LABEL_158;
      }

      v8 = v10;
      --v6;
    }

    while (v6);
    if (v10 == v5)
    {
      goto LABEL_10;
    }

    goto LABEL_160;
  }

  if (v5 != 1)
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

LABEL_10:
  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        if (v5)
        {
          v122 = MEMORY[0x277D84F90];
          sub_25A937720(0, v5 & ~(v5 >> 63), 0);
          if (v5 < 0)
          {
LABEL_169:
            __break(1u);
            goto LABEL_170;
          }

          v73 = 0;
          v74 = v122;
          do
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v75 = MEMORY[0x25F8509C0](v73, a1);
            }

            else
            {
              v75 = *(a1 + 8 * v73 + 32);
            }

            v76 = v75;
            v77 = [v75 unsignedCharValue];

            v79 = *(v122 + 16);
            v78 = *(v122 + 24);
            if (v79 >= v78 >> 1)
            {
              sub_25A937720((v78 > 1), v79 + 1, 1);
            }

            ++v73;
            *(v122 + 16) = v79 + 1;
            *(v122 + v79 + 32) = v77;
          }

          while (v5 != v73);
        }

        else
        {

          v74 = MEMORY[0x277D84F90];
        }

        v99 = sub_25A939934(v74, a3);
      }

      else
      {
        if (v5)
        {
          v117 = MEMORY[0x277D84F90];
          sub_25A937820(0, v5 & ~(v5 >> 63), 0);
          if (v5 < 0)
          {
LABEL_165:
            __break(1u);
            goto LABEL_166;
          }

          v38 = 0;
          v39 = v117;
          do
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v40 = MEMORY[0x25F8509C0](v38, a1);
            }

            else
            {
              v40 = *(a1 + 8 * v38 + 32);
            }

            v41 = v40;
            v42 = [v40 BOOLValue];

            v44 = *(v117 + 16);
            v43 = *(v117 + 24);
            if (v44 >= v43 >> 1)
            {
              sub_25A937820((v43 > 1), v44 + 1, 1);
            }

            ++v38;
            *(v117 + 16) = v44 + 1;
            *(v117 + v44 + 32) = v42;
          }

          while (v5 != v38);
        }

        else
        {

          v39 = MEMORY[0x277D84F90];
        }

        v99 = sub_25A939154(v39, a3);
      }
    }

    else
    {
      if (a2 == 2)
      {

        if (v5)
        {
          v118 = MEMORY[0x277D84F90];
          sub_25A9376F0(0, v5 & ~(v5 >> 63), 0);
          if (v5 < 0)
          {
LABEL_161:
            __break(1u);
            goto LABEL_162;
          }

          v45 = 0;
          v46 = v118;
          do
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v47 = MEMORY[0x25F8509C0](v45, a1);
            }

            else
            {
              v47 = *(a1 + 8 * v45 + 32);
            }

            v48 = v47;
            v49 = [v47 unsignedShortValue];

            v51 = *(v118 + 16);
            v50 = *(v118 + 24);
            if (v51 >= v50 >> 1)
            {
              sub_25A9376F0((v50 > 1), v51 + 1, 1);
            }

            ++v45;
            *(v118 + 16) = v51 + 1;
            *(v118 + 2 * v51 + 32) = v49;
          }

          while (v5 != v45);
        }

        else
        {

          v46 = MEMORY[0x277D84F90];
        }

        v95 = *(v46 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_25A9F8D90;
        *(inited + 32) = v95;
        v97 = Array<A>.asInt32.getter(inited);

        v98 = mlx_array_new_data((v46 + 32), (v97 + 32), 1, 2);
LABEL_149:
        v109 = v98;

        type metadata accessor for MLXArray();
        result = swift_allocObject();
        *(result + 16) = v109;
        return result;
      }

      if (a2 != 3)
      {
        if (a2 == 4)
        {

          if (v5)
          {
            v121 = MEMORY[0x277D84F90];
            sub_25A937690(0, v5 & ~(v5 >> 63), 0);
            if (v5 < 0)
            {
LABEL_168:
              __break(1u);
              goto LABEL_169;
            }

            v66 = 0;
            v67 = v121;
            do
            {
              if ((a1 & 0xC000000000000001) != 0)
              {
                v68 = MEMORY[0x25F8509C0](v66, a1);
              }

              else
              {
                v68 = *(a1 + 8 * v66 + 32);
              }

              v69 = v68;
              v70 = [v68 unsignedLongLongValue];

              v72 = *(v121 + 16);
              v71 = *(v121 + 24);
              if (v72 >= v71 >> 1)
              {
                sub_25A937690((v71 > 1), v72 + 1, 1);
              }

              ++v66;
              *(v121 + 16) = v72 + 1;
              *(v121 + 8 * v72 + 32) = v70;
            }

            while (v5 != v66);
          }

          else
          {

            v67 = MEMORY[0x277D84F90];
          }

          v106 = *(v67 + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
          v107 = swift_initStackObject();
          *(v107 + 16) = xmmword_25A9F8D90;
          *(v107 + 32) = v106;
          v108 = Array<A>.asInt32.getter(v107);

          v98 = mlx_array_new_data((v67 + 32), (v108 + 32), 1, 4);
          goto LABEL_149;
        }

        goto LABEL_172;
      }

      if (v5)
      {
        v115 = MEMORY[0x277D84F90];
        sub_25A9376C0(0, v5 & ~(v5 >> 63), 0);
        if (v5 < 0)
        {
LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

        v18 = 0;
        v19 = v115;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x25F8509C0](v18, a1);
          }

          else
          {
            v20 = *(a1 + 8 * v18 + 32);
          }

          v21 = v20;
          v22 = [v20 unsignedIntValue];

          v24 = *(v115 + 16);
          v23 = *(v115 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_25A9376C0((v23 > 1), v24 + 1, 1);
          }

          ++v18;
          *(v115 + 16) = v24 + 1;
          *(v115 + 4 * v24 + 32) = v22;
        }

        while (v5 != v18);
      }

      else
      {

        v19 = MEMORY[0x277D84F90];
      }

      v99 = sub_25A939B74(v19, a3);
    }

    goto LABEL_156;
  }

  if (a2 > 7u)
  {
    if (a2 != 8)
    {
      if (a2 == 9)
      {

        if (v5)
        {
          v116 = MEMORY[0x277D84F90];
          sub_25A937800(0, v5 & ~(v5 >> 63), 0);
          if (v5 < 0)
          {
LABEL_167:
            __break(1u);
            goto LABEL_168;
          }

          v25 = 0;
          v26 = v116;
          do
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v27 = MEMORY[0x25F8509C0](v25, a1);
            }

            else
            {
              v27 = *(a1 + 8 * v25 + 32);
            }

            v28 = v27;
            [v27 floatValue];
            _S8 = v29;

            v32 = *(v116 + 16);
            v31 = *(v116 + 24);
            if (v32 >= v31 >> 1)
            {
              sub_25A937800((v31 > 1), v32 + 1, 1);
            }

            ++v25;
            __asm { FCVT            H0, S8 }

            *(v116 + 16) = v32 + 1;
            *(v116 + 2 * v32 + 32) = _H0;
          }

          while (v5 != v25);
        }

        else
        {

          v26 = MEMORY[0x277D84F90];
        }

        v103 = *(v26 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
        v104 = swift_initStackObject();
        *(v104 + 16) = xmmword_25A9F8D90;
        *(v104 + 32) = v103;
        v105 = Array<A>.asInt32.getter(v104);

        v98 = mlx_array_new_data((v26 + 32), (v105 + 32), 1, 9);
        goto LABEL_149;
      }

      if (a2 == 10)
      {
        if (v5)
        {
          v124 = MEMORY[0x277D84F90];
          sub_25A9377E0(0, v5 & ~(v5 >> 63), 0);
          if (v5 < 0)
          {
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

          v87 = 0;
          v88 = v124;
          do
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v89 = MEMORY[0x25F8509C0](v87, a1);
            }

            else
            {
              v89 = *(a1 + 8 * v87 + 32);
            }

            v90 = v89;
            [v89 floatValue];
            v92 = v91;

            v94 = *(v124 + 16);
            v93 = *(v124 + 24);
            if (v94 >= v93 >> 1)
            {
              sub_25A9377E0((v93 > 1), v94 + 1, 1);
            }

            ++v87;
            *(v124 + 16) = v94 + 1;
            *(v124 + 4 * v94 + 32) = v92;
          }

          while (v5 != v87);
        }

        else
        {

          v88 = MEMORY[0x277D84F90];
        }

        v99 = sub_25A939394(v88, a3);
        goto LABEL_156;
      }

      goto LABEL_172;
    }

    if (v5)
    {
      v120 = MEMORY[0x277D84F90];
      sub_25A93A534(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
LABEL_163:
        __break(1u);
        goto LABEL_164;
      }

      v59 = 0;
      v60 = v120;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v61 = MEMORY[0x25F8509C0](v59, a1);
        }

        else
        {
          v61 = *(a1 + 8 * v59 + 32);
        }

        v62 = v61;
        v63 = [v61 longLongValue];

        v65 = *(v120 + 16);
        v64 = *(v120 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_25A93A534(v64 > 1, v65 + 1, 1);
        }

        ++v59;
        *(v120 + 16) = v65 + 1;
        *(v120 + 8 * v65 + 32) = v63;
      }

      while (v5 != v59);
    }

    else
    {

      v60 = MEMORY[0x277D84F90];
    }

    v99 = sub_25A939814(v60, a3);
LABEL_156:
    v111 = v99;

    return v111;
  }

  switch(a2)
  {
    case 5u:
      if (v5)
      {
        v119 = MEMORY[0x277D84F90];
        sub_25A9377B0(0, v5 & ~(v5 >> 63), 0);
        if (v5 < 0)
        {
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        v52 = 0;
        v53 = v119;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v54 = MEMORY[0x25F8509C0](v52, a1);
          }

          else
          {
            v54 = *(a1 + 8 * v52 + 32);
          }

          v55 = v54;
          v56 = [v54 charValue];

          v58 = *(v119 + 16);
          v57 = *(v119 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_25A9377B0((v57 > 1), v58 + 1, 1);
          }

          ++v52;
          *(v119 + 16) = v58 + 1;
          *(v119 + v58 + 32) = v56;
        }

        while (v5 != v52);
      }

      else
      {

        v53 = MEMORY[0x277D84F90];
      }

      v99 = sub_25A9394B4(v53, a3);
      goto LABEL_156;
    case 6u:

      if (v5)
      {
        v114 = MEMORY[0x277D84F90];
        sub_25A937780(0, v5 & ~(v5 >> 63), 0);
        if (v5 < 0)
        {
LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

        v11 = 0;
        v12 = v114;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x25F8509C0](v11, a1);
          }

          else
          {
            v13 = *(a1 + 8 * v11 + 32);
          }

          v14 = v13;
          v15 = [v13 shortValue];

          v17 = *(v114 + 16);
          v16 = *(v114 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_25A937780((v16 > 1), v17 + 1, 1);
          }

          ++v11;
          *(v114 + 16) = v17 + 1;
          *(v114 + 2 * v17 + 32) = v15;
        }

        while (v5 != v11);
      }

      else
      {

        v12 = MEMORY[0x277D84F90];
      }

      v100 = *(v12 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
      v101 = swift_initStackObject();
      *(v101 + 16) = xmmword_25A9F8D90;
      *(v101 + 32) = v100;
      v102 = Array<A>.asInt32.getter(v101);

      v98 = mlx_array_new_data((v12 + 32), (v102 + 32), 1, 6);
      goto LABEL_149;
    case 7u:
      if (v5)
      {
        v123 = MEMORY[0x277D84F90];
        sub_25A93A530(0, v5 & ~(v5 >> 63), 0);
        if (v5 < 0)
        {
LABEL_170:
          __break(1u);
          goto LABEL_171;
        }

        v80 = 0;
        v81 = v123;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v82 = MEMORY[0x25F8509C0](v80, a1);
          }

          else
          {
            v82 = *(a1 + 8 * v80 + 32);
          }

          v83 = v82;
          v84 = [v82 intValue];

          v86 = *(v123 + 16);
          v85 = *(v123 + 24);
          if (v86 >= v85 >> 1)
          {
            sub_25A93A530(v85 > 1, v86 + 1, 1);
          }

          ++v80;
          *(v123 + 16) = v86 + 1;
          *(v123 + 4 * v86 + 32) = v84;
        }

        while (v5 != v80);
      }

      else
      {

        v81 = MEMORY[0x277D84F90];
      }

      v99 = sub_25A9396F4(v81, a3);
      goto LABEL_156;
  }

LABEL_172:
  sub_25A9985F8();
  MEMORY[0x25F850290](0xD000000000000013, 0x800000025AA68D80);
  sub_25A9987C8();
  result = sub_25A998818();
  __break(1u);
  return result;
}

void *sub_25A8F0FA0(void *a1, uint64_t a2)
{
  v4 = a1;
  sub_25A87500C(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if (!swift_dynamicCast())
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    sub_25A878194(&v19, &qword_27FA04728, &unk_25A9FD740);
    sub_25A87500C(v4, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04810, &qword_25A9F8E98);
    if (!swift_dynamicCast())
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      sub_25A878194(&v19, &qword_27FA04808, &qword_25A9FDC40);
      sub_25A874F54();
      swift_allocError();
      *v14 = 37;
      swift_willThrow();
      return v4;
    }

    sub_25A87817C(&v19, v23);
    v11 = v24;
    v12 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v13 = (*(v12 + 8))(13, v11, v12);
    goto LABEL_7;
  }

  sub_25A87817C(&v19, v23);
  v5 = v24;
  v6 = v25;
  v4 = __swift_project_boxed_opaque_existential_1(v23, v24);
  v7 = (*(v6 + 8))(v5, v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
  *(&v20 + 1) = v8;
  *&v19 = v7;

  v9 = static MorpheusUtils.getShape(_:)(&v19);
  if (!v2)
  {
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0Tm(&v19);
    *(&v20 + 1) = v8;
    *&v19 = v7;

    v16 = static MorpheusUtils.flattenNumericArray(_:)(&v19);
    __swift_destroy_boxed_opaque_existential_0Tm(&v19);
    if (a2 == 13)
    {
      *(&v20 + 1) = v8;
      *&v19 = v7;
      static MorpheusUtils.getType(of:)(&v19, v22);
      __swift_destroy_boxed_opaque_existential_0Tm(&v19);
      v17 = v22[0];
      v18 = v16;
    }

    else
    {

      v18 = v16;
      v17 = a2;
    }

    v13 = sub_25A8F01C4(v18, v17, v10);
LABEL_7:
    v4 = v13;
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    return v4;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v19);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  return v4;
}

uint64_t sub_25A8F12B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25A91CC94(&unk_286C0D6F8);
  swift_arrayDestroy();
  v5 = sub_25A9198A8(a1, a2, v4);

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = sub_25A91BA34();
    swift_beginAccess();
    v8 = *(v7 + 16);

    if (*(v8 + 16))
    {
      sub_25A8F3600(a1, a2);
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t sub_25A8F139C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x5F6C6F6F62 && a2 == 0xE500000000000000;
  if (v3 || (sub_25A9989E8() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x363174616F6C66 && a2 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    return 9;
  }

  if (a1 == 0x323374616F6C66 && a2 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    return 10;
  }

  if (a1 == 947154537 && a2 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 0x3631746E69 && a2 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    return 6;
  }

  if (a1 == 0x3233746E69 && a2 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    return 7;
  }

  if (a1 == 0x3436746E69 && a2 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    return 8;
  }

  if (a1 == 0x38746E6975 && a2 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x3631746E6975 && a2 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x3233746E6975 && a2 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x3436746E6975 && a2 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    return 4;
  }

  sub_25A9985F8();

  MEMORY[0x25F850290](a1, a2);
  result = sub_25A998818();
  __break(1u);
  return result;
}

uint64_t sub_25A8F1714(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t *, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  if (result)
  {
    v8 = sub_25A998158();
    *(v8 + 16) = v7;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9[1] = v7;
  v10 = 0;
  v9[0] = v8 + 32;
  result = a4(v9, &v10, a2);
  if (v4)
  {
    if (v10 <= v7)
    {
      *(v8 + 16) = v10;

      return v8;
    }

    goto LABEL_12;
  }

  if (v10 <= v7)
  {
    *(v8 + 16) = v10;
    return v8;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_25A8F17DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25A8F1884()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25A8F192C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25A8F19D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void *, char *, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v17[3] = *MEMORY[0x277D85DE8];
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      memset(v17, 0, 14);
      swift_bridgeObjectRetain_n();
      v10 = v17;
      goto LABEL_9;
    }

    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
  }

  else
  {
    if (!v9)
    {
      v17[0] = a1;
      LOWORD(v17[1]) = a2;
      BYTE2(v17[1]) = BYTE2(a2);
      BYTE3(v17[1]) = BYTE3(a2);
      BYTE4(v17[1]) = BYTE4(a2);
      BYTE5(v17[1]) = BYTE5(a2);
      swift_bridgeObjectRetain_n();
      v10 = v17 + BYTE6(a2);
LABEL_9:
      v14 = a4(v17, v10, a3);
      goto LABEL_10;
    }

    v11 = a1;
    v12 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  swift_bridgeObjectRetain_n();
  v14 = sub_25A8F1BB0(v11, v12, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a5);
LABEL_10:
  v15 = v14;
  sub_25A8F1C54(a1, a2);
  swift_bridgeObjectRelease_n();
  type metadata accessor for MLXArray();
  result = swift_allocObject();
  *(result + 16) = v15;
  return result;
}

uint64_t sub_25A8F1BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = sub_25A997A08();
  v10 = result;
  if (result)
  {
    result = sub_25A997A38();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = sub_25A997A28();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 + v10;
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return a5(v10, v16, a4);
}

uint64_t sub_25A8F1C54(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_25A8F1D38()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8F1DE8(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A8F1E84(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

unint64_t sub_25A8F1F30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25A8F2860(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25A8F1F60(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x746567726174;
  v4 = 0xE300000000000000;
  v5 = 7562857;
  if (*v1 != 2)
  {
    v5 = 0x636E7973417369;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 1919251561;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_25A8F1FCC()
{
  v1 = 0x746567726174;
  v2 = 7562857;
  if (*v0 != 2)
  {
    v2 = 0x636E7973417369;
  }

  if (*v0)
  {
    v1 = 1919251561;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25A8F2034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25A8F2860(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25A8F2068(uint64_t a1)
{
  v2 = sub_25A8F25B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8F20A4(uint64_t a1)
{
  v2 = sub_25A8F25B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8F212C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04B70, &qword_25A9F9EF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8F25B4();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Comprehension();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v13[0]) = 3;
    v1[10] = sub_25A998928();
    v1[5] = sub_25A90E5DC(v8, 0);
    v1[6] = v10;
    v1[7] = sub_25A90E5DC(v8, 1);
    v1[8] = v11;
    v1[9] = sub_25A94B0B8(v8, 2);
    sub_25A872F24(a1, v13);
    v3 = sub_25A8963D8(v13);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

double sub_25A8F237C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[6];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = v1[4];
  v6 = *(v2 + 48);
  swift_unknownObjectRetain();
  v6(Strong, v5, ObjectType, v2);
  swift_unknownObjectRelease();
  v7 = v1[8];
  v8 = swift_getObjectType();
  v9 = swift_unknownObjectWeakLoadStrong();
  v10 = v1[4];
  v11 = *(v7 + 48);
  swift_unknownObjectRetain();
  v11(v9, v10, v8, v7);
  swift_unknownObjectRelease();
  v12 = *(v1[9] + 16);
  if (v12)
  {
    v13 = ( + 40);
    do
    {
      v14 = *v13;
      v15 = swift_getObjectType();
      v16 = swift_unknownObjectWeakLoadStrong();
      v17 = v1[4];
      v18 = *(v14 + 48);
      swift_unknownObjectRetain();
      v18(v16, v17, v15, v14);
      swift_unknownObjectRelease();
      v13 += 2;
      --v12;
    }

    while (v12);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_25A8F2520()
{
  sub_25A872F88(v0 + 24);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_25A8F25B4()
{
  result = qword_27FA04B78;
  if (!qword_27FA04B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04B78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Comprehension.NameCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Comprehension.NameCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25A8F275C()
{
  result = qword_27FA04B80;
  if (!qword_27FA04B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04B80);
  }

  return result;
}

unint64_t sub_25A8F27B4()
{
  result = qword_27FA04B88;
  if (!qword_27FA04B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04B88);
  }

  return result;
}

unint64_t sub_25A8F280C()
{
  result = qword_27FA04B90;
  if (!qword_27FA04B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04B90);
  }

  return result;
}

unint64_t sub_25A8F2860(uint64_t a1, uint64_t a2)
{
  v2 = sub_25A9988C8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25A8F28AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v4, &v23), (swift_dynamicCast() & 1) != 0))
  {
    v6 = 1701736270;
    v25 = v20;
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_25A9985F8();

    v23 = 0x286563696C73;
    v24 = 0xE600000000000000;
    if (v19)
    {
      v7 = 0xE400000000000000;
      v8 = 1701736270;
    }

    else
    {
      sub_25A8DF954();
      v8 = sub_25A9984E8();
      v7 = v11;
    }

    MEMORY[0x25F850290](v8, v7);

    MEMORY[0x25F850290](8236, 0xE200000000000000);
    if (v22)
    {
      v12 = 0xE400000000000000;
      v13 = 1701736270;
    }

    else
    {
      sub_25A8DF954();
      v13 = sub_25A9984E8();
      v12 = v14;
    }

    MEMORY[0x25F850290](v13, v12);

    MEMORY[0x25F850290](8236, 0xE200000000000000);
    if (v21)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      sub_25A8DF954();
      v6 = sub_25A9984E8();
      v15 = v16;
    }

    MEMORY[0x25F850290](v6, v15);

    result = MEMORY[0x25F850290](41, 0xE100000000000000);
    v17 = v23;
    v18 = v24;
    a2[3] = MEMORY[0x277D837D0];
    *a2 = v17;
    a2[1] = v18;
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v9 = -126;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25A8F2AFC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  sub_25A936F00(a2);
  sub_25A8F28AC(v3, a1);
}

uint64_t sub_25A8F2B4C()
{
  v0 = MEMORY[0x277D84F90];
  v1 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  type metadata accessor for Function();
  v2 = swift_allocObject();
  *(v2 + 32) = v0;
  *(v2 + 40) = v0;
  *(v2 + 48) = v0;
  *(v2 + 56) = v0;
  *(v2 + 64) = v0;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = sub_25A92BDB4(v0);
  *(v2 + 16) = 0x5F5F727065725F5FLL;
  *(v2 + 24) = 0xE800000000000000;
  v3 = *(v2 + 80);
  v6[2] = *(v2 + 64);
  v6[3] = v3;
  v7 = *(v2 + 96);
  v4 = *(v2 + 48);
  v6[0] = *(v2 + 32);
  v6[1] = v4;
  *(v2 + 32) = &unk_286C0AC58;
  *(v2 + 40) = v0;
  *(v2 + 48) = v0;
  *(v2 + 56) = v0;
  *(v2 + 64) = v0;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  sub_25A892B80(v6);
  swift_beginAccess();
  *(v2 + 104) = v1;

  *(v2 + 112) = sub_25A8F2AFC;
  *(v2 + 120) = 0;
  return v2;
}

void LexicalContext.attribute(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(v3 + 32);
  *&v16 = a1;
  *(&v16 + 1) = a2;

  sub_25A998578();
  swift_beginAccess();
  v9 = *(v8 + 16);
  if (*(v9 + 16))
  {

    v10 = sub_25A8F35BC(v18);
    if (v11)
    {
      sub_25A87500C(*(v9 + 56) + 32 * v10, &v16);

      sub_25A8795A0(v18);

      sub_25A872D74(&v16, a3);
      return;
    }
  }

  else
  {
  }

  sub_25A8795A0(v18);
  v16 = 0u;
  v17 = 0u;
  swift_beginAccess();
  v12 = *(v4 + 40);
  if (!*(v12 + 16))
  {
LABEL_11:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    if (!*(&v17 + 1))
    {
      return;
    }

    goto LABEL_12;
  }

  v13 = sub_25A8F3600(a1, a2);
  if ((v14 & 1) == 0)
  {

    goto LABEL_11;
  }

  v15 = *(*(v12 + 56) + 8 * v13);

  *(a3 + 24) = type metadata accessor for Function();
  *a3 = v15;
  if (*(&v17 + 1))
  {
LABEL_12:
    sub_25A878194(&v16, &qword_27FA04458, &unk_25A9F7FB0);
  }
}

uint64_t sub_25A8F2E14(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_25A872D74(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_25A96A448(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_25A8795A0(a2);
    *v2 = v6;
  }

  else
  {
    sub_25A878194(a1, &qword_27FA04458, &unk_25A9F7FB0);
    sub_25A9699B4(a2, v7);
    sub_25A8795A0(a2);
    return sub_25A878194(v7, &qword_27FA04458, &unk_25A9F7FB0);
  }

  return result;
}

uint64_t sub_25A8F2ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_25A872D74(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_25A96A594(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_25A878194(a1, &qword_27FA04458, &unk_25A9F7FB0);
    sub_25A969A58(a2, a3, v9);

    return sub_25A878194(v9, &qword_27FA04458, &unk_25A9F7FB0);
  }

  return result;
}

uint64_t sub_25A8F2FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_25A87817C(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    v7 = v16;
    v8 = v17;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v9);
    v11 = &v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v11);
    sub_25A8F3A30(v11, a2, a3, isUniquelyReferenced_nonNull_native, &v14, v7, v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    *v3 = v14;
  }

  else
  {
    sub_25A878194(a1, &qword_27FA04B98, &qword_25A9FA170);
    sub_25A969AFC(a2, a3, v15);

    return sub_25A878194(v15, &qword_27FA04B98, &qword_25A9FA170);
  }

  return result;
}

uint64_t sub_25A8F3128(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_25A872D74(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_25A96A864(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_25A9987E8();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_25A878194(a1, &qword_27FA04BA0, &qword_25A9FA178);
    sub_25A969BA8(a2, v9);
    v7 = sub_25A9987E8();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_25A878194(v9, &qword_27FA04BA0, &qword_25A9FA178);
  }

  return result;
}

Swift::Bool __swiftcall LexicalContext.has(attribute:)(Swift::String attribute)
{
  v2 = v1;
  object = attribute._object;
  countAndFlagsBits = attribute._countAndFlagsBits;
  v5 = *(v1 + 32);
  v12[0] = attribute;

  sub_25A998578();
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16))
  {

    v7 = sub_25A8F35BC(v13);
    if (v8)
    {
      sub_25A87500C(*(v6 + 56) + 32 * v7, v12);

      sub_25A8795A0(v13);

      sub_25A878194(v12, &qword_27FA04458, &unk_25A9F7FB0);
      v9 = 1;
      return v9 & 1;
    }
  }

  else
  {
  }

  sub_25A8795A0(v13);
  memset(v12, 0, sizeof(v12));
  sub_25A878194(v12, &qword_27FA04458, &unk_25A9F7FB0);
  swift_beginAccess();
  if (*(*(v2 + 40) + 16))
  {

    sub_25A8F3600(countAndFlagsBits, object);
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t LexicalContext.store(key:obj:)(uint64_t a1, uint64_t a2)
{
  sub_25A87500C(a1, v7);
  result = swift_dynamicCast();
  if (result)
  {

    sub_25A998578();
    sub_25A87500C(a2, v6);
    sub_25A874FB0(v7, &v5);
    sub_25A8780B8(v6, v4);
    swift_beginAccess();
    sub_25A8F2E14(v4, &v5);
    swift_endAccess();

    sub_25A878194(v6, &qword_27FA04458, &unk_25A9F7FB0);
    return sub_25A8795A0(v7);
  }

  return result;
}

void *LexicalContext.deinit()
{

  return v0;
}

uint64_t LexicalContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_25A8F35BC(uint64_t a1)
{
  v2 = sub_25A998558();

  return sub_25A8F3718(a1, v2);
}

unint64_t sub_25A8F3600(uint64_t a1, uint64_t a2)
{
  sub_25A998B18();
  sub_25A997D58();
  v4 = sub_25A998B38();

  return sub_25A8F37E0(a1, a2, v4);
}

unint64_t sub_25A8F36B4(uint64_t a1)
{
  sub_25A9987E8();
  v2 = sub_25A997D48();

  return sub_25A8F3898(a1, v2);
}

unint64_t sub_25A8F3718(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25A874FB0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F850890](v9, a1);
      sub_25A8795A0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25A8F37E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25A9989E8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25A8F3898(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_25A9987E8();
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_25A997DF8();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_25A8F3A30(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v35 = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v33);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a1, a6);
  v15 = *a5;
  v17 = sub_25A8F3600(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 40 * v17);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      return sub_25A87817C(&v33, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_25A9692A4();
    goto LABEL_7;
  }

  sub_25A9681F8(v20, a4 & 1);
  v26 = sub_25A8F3600(a2, a3);
  if ((v21 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_25A998AA8();
    __break(1u);
    return result;
  }

  v17 = v26;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v28 = __swift_mutable_project_boxed_opaque_existential_1(&v33, v34);
  MEMORY[0x28223BE20](v28);
  v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  sub_25A8F3C64(v17, a2, a3, v30, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_0Tm(&v33);
}

uint64_t sub_25A8F3C64(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_25A87817C(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t sub_25A8F3D3C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE90000000000006BLL;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0x6B636F6C426669;
  if (v3 != 1)
  {
    v5 = 0x636F6C4265736C65;
    v4 = 0xE90000000000006BLL;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6F697469646E6F63;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE90000000000006ELL;
  }

  v8 = 0x6B636F6C426669;
  if (*a2 == 1)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v8 = 0x636F6C4265736C65;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F697469646E6F63;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0xE90000000000006ELL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A8F3E3C()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8F3EE4(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A8F3F78(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

unint64_t sub_25A8F401C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25A8F4CD8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25A8F404C(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6B636F6C426669;
  if (*v1 != 1)
  {
    v3 = 0x636F6C4265736C65;
    v2 = 0xE90000000000006BLL;
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6F697469646E6F63;
  }

  if (*v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE90000000000006ELL;
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_25A8F40B0()
{
  v1 = 0x6B636F6C426669;
  if (*v0 != 1)
  {
    v1 = 0x636F6C4265736C65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F697469646E6F63;
  }
}

unint64_t sub_25A8F4110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25A8F4CD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25A8F4138(uint64_t a1)
{
  v2 = sub_25A8F4B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8F4174(uint64_t a1)
{
  v2 = sub_25A8F4B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8F41FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04BA8, &unk_25A9FBDD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  v1[8] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8F4B6C();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    type metadata accessor for Choice();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[5] = sub_25A90E6F4(v8, 0);
    v1[6] = v10;
    v13 = 1;
    type metadata accessor for LexicalBlock();
    sub_25A8E119C();
    sub_25A998938();
    v1[7] = v12[0];
    v13 = 2;
    sub_25A998938();
    v1[8] = v12[0];

    sub_25A872F24(a1, v12);
    v3 = sub_25A8963D8(v12);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A8F4498@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[6];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = v1[4];
  v10 = *(v6 + 48);
  swift_unknownObjectRetain();
  v10(Strong, v9, ObjectType, v6);
  swift_unknownObjectRelease();
  v11 = v1[7];
  swift_unknownObjectWeakLoadStrong();
  v12 = v1[4];
  swift_beginAccess();
  *(v11 + 32) = v12;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v13 = v1[8];
  if (v13)
  {
    swift_unknownObjectWeakLoadStrong();
    v14 = v1[4];
    swift_beginAccess();
    *(v13 + 32) = v14;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  v15 = v1[6];
  v16 = swift_getObjectType();
  v17 = *(v15 + 64);
  swift_unknownObjectRetain();
  v17(v33, v16, v15);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    sub_25A911A04(&v34);
    sub_25A872CE0(v33);
    if (*(&v35 + 1))
    {
      sub_25A895470(&v34, v37);
      v19 = v38;
      v20 = v39;
      __swift_project_boxed_opaque_existential_1(v37, v38);
      if ((*(v20 + 8))(v19, v20))
      {

        sub_25A87A380(1, a1);
      }

      else if (v1[8])
      {

        sub_25A87A380(1, &v34);

        v31 = v35;
        *a1 = v34;
        *(a1 + 16) = v31;
        *(a1 + 32) = v36;
      }

      else
      {
        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
      }

      return __swift_destroy_boxed_opaque_existential_0Tm(v37);
    }

    else
    {
      sub_25A8F4B04(&v34);
      if (qword_27FA043C0 != -1)
      {
        swift_once();
      }

      v21 = sub_25A997BD8();
      __swift_project_value_buffer(v21, qword_27FA0FCE8);
      swift_retain_n();
      v22 = sub_25A997BB8();
      v23 = sub_25A9983A8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v37[0] = v25;
        *v24 = 136315394;
        v26 = v1[5];
        swift_getObjectType();
        *&v34 = v26;
        v27 = sub_25A998968();
        v29 = sub_25A98CC90(v27, v28, v37);

        *(v24 + 4) = v29;
        *(v24 + 12) = 2048;
        v30 = v4[2];

        *(v24 + 14) = v30;

        _os_log_impl(&dword_25A232000, v22, v23, "Choice> Invalid %s. line %ld", v24, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        MEMORY[0x25F852800](v25, -1, -1);
        MEMORY[0x25F852800](v24, -1, -1);
      }

      else
      {
      }

      sub_25A874F54();
      swift_allocError();
      *v32 = 52;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_25A8F48A4()
{
  swift_getObjectType();
  v1 = sub_25A998968();
  MEMORY[0x25F850290](v1);

  MEMORY[0x25F850290](175841321, 0xE400000000000000);

  v2 = sub_25A87A5A4();
  v4 = v3;

  v5 = sub_25A985514(v2, v4);
  v7 = v6;

  MEMORY[0x25F850290](v5, v7);

  MEMORY[0x25F850290](2129162, 0xE300000000000000);
  result = 673212009;
  if (*(v0 + 64))
  {

    v9 = sub_25A87A5A4();
    v11 = sub_25A985514(v9, v10);
    v13 = v12;

    MEMORY[0x25F850290](v11, v13);

    MEMORY[0x25F850290](32010, 0xE200000000000000);
    MEMORY[0x25F850290](0xA7B2065736C65, 0xE700000000000000);

    return 673212009;
  }

  return result;
}

uint64_t sub_25A8F4A38()
{
  swift_unknownObjectRelease();
}

uint64_t sub_25A8F4A70()
{
  sub_25A872F88(v0 + 24);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_25A8F4B04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E8, &unk_25A9FBF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25A8F4B6C()
{
  result = qword_27FA04BB0;
  if (!qword_27FA04BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04BB0);
  }

  return result;
}

unint64_t sub_25A8F4BD4()
{
  result = qword_27FA04BB8;
  if (!qword_27FA04BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04BB8);
  }

  return result;
}

unint64_t sub_25A8F4C2C()
{
  result = qword_27FA04BC0;
  if (!qword_27FA04BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04BC0);
  }

  return result;
}

unint64_t sub_25A8F4C84()
{
  result = qword_27FA04BC8;
  if (!qword_27FA04BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04BC8);
  }

  return result;
}

unint64_t sub_25A8F4CD8(uint64_t a1, uint64_t a2)
{
  v2 = sub_25A9988C8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25A8F4D24()
{
  v0 = sub_25A998BE8();
  if (qword_27FA043B0 != -1)
  {
    swift_once();
  }

  v1 = sub_25A9987E8();
  v2 = __swift_project_value_buffer(v1, qword_27FA0FCC8);
  if (*(v0 + 16) && (v3 = sub_25A8F36B4(v2), (v4 & 1) != 0))
  {
    sub_25A87500C(*(v0 + 56) + 32 * v3, v8);

    type metadata accessor for ModuleResolver();
    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
  }

  sub_25A874F54();
  swift_allocError();
  *v6 = 114;
  return swift_willThrow();
}

uint64_t sub_25A8F4E30(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1668183398;
  if (v2 != 1)
  {
    v4 = 0x73656C75646F6DLL;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x75646F4D6E69616DLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA0000000000656CLL;
  }

  v7 = 0xE400000000000000;
  v8 = 1668183398;
  if (*a2 != 1)
  {
    v8 = 0x73656C75646F6DLL;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x75646F4D6E69616DLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA0000000000656CLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A8F4F24()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8F4FC4(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A8F5050(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

unint64_t sub_25A8F50EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25A8F7C20(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25A8F511C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000656CLL;
  v4 = 0xE400000000000000;
  v5 = 1668183398;
  if (v2 != 1)
  {
    v5 = 0x73656C75646F6DLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x75646F4D6E69616DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A8F5178()
{
  v1 = 1668183398;
  if (*v0 != 1)
  {
    v1 = 0x73656C75646F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x75646F4D6E69616DLL;
  }
}

unint64_t sub_25A8F51D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25A8F7C20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25A8F51F8(uint64_t a1)
{
  v2 = sub_25A8F8058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8F5234(uint64_t a1)
{
  v2 = sub_25A8F8058();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static MorpheusProgram.emptyProgram()()
{
  v1 = sub_25A997E98();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25A997E78();
  v5 = sub_25A997E38();
  v7 = v6;
  result = (*(v2 + 8))(v4, v1);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_25A8F7C6C();
    type metadata accessor for MorpheusProgram();
    sub_25A8F80AC(&qword_27FA04BD0, v9, type metadata accessor for MorpheusProgram, &protocol conformance descriptor for MorpheusProgram);
    sub_25A997968();
    sub_25A8F7E3C(v5, v7);

    if (!v0)
    {
      return v10[1];
    }
  }

  return result;
}

uint64_t MorpheusProgram.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  MorpheusProgram.init(from:)(a1);
  return v2;
}

uint64_t MorpheusProgram.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04BD8, &qword_25A9FA2F0);
  MEMORY[0x28223BE20](v4);
  sub_25A8F7E50();
  if (!v2)
  {
    if (qword_27FA043E8 != -1)
    {
      swift_once();
    }

    sub_25A971C6C(qword_27FA0FD30);
  }

  type metadata accessor for MorpheusProgram();
  swift_deallocPartialClassInstance();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t sub_25A8F65B8()
{

  v0 = sub_25A87A5A4();

  return v0;
}

uint64_t sub_25A8F6618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);

  sub_25A8F6684(a1, a2, v7, v8, a3);
}

uint64_t sub_25A8F6684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{

  sub_25A98F0EC(0x5F5F6E69616D5F5FLL, 0xE800000000000000, v28);

  if (v5)
  {
    return result;
  }

  v12 = v29;
  v13 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(*(v13 + 8) + 8))(v17, a3, a4, v12);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
    if (swift_dynamicCast())
    {
      if (*(&v20 + 1))
      {
        sub_25A87817C(&v19, &v22);
        goto LABEL_15;
      }
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
    }
  }

  else
  {
    sub_25A878194(v17, &qword_27FA04458, &unk_25A9F7FB0);
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
  }

  if (qword_27FA043A0 != -1)
  {
    swift_once();
  }

  LexicalContext.attribute(for:)(a3, a4, v17);

  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
    if ((swift_dynamicCast() & 1) == 0)
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
    }

    if (!*(&v20 + 1))
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_25A878194(v17, &qword_27FA04458, &unk_25A9F7FB0);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    if (!*(&v20 + 1))
    {
      goto LABEL_15;
    }
  }

  sub_25A878194(&v19, &qword_27FA04760, &unk_25A9F9BB0);
LABEL_15:
  if (*(&v23 + 1))
  {
    sub_25A87817C(&v22, v25);
    v14 = v26;
    v15 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    (*(v15 + 16))(&v22, a1, a2, v14, v15);
    if (static MorpheusUtils.isNil(_:)(&v22))
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v22);
      *a5 = 0u;
      a5[1] = 0u;
    }

    else
    {
      sub_25A872D74(&v22, a5);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  else
  {
    sub_25A878194(&v22, &qword_27FA04760, &unk_25A9F9BB0);
    sub_25A874F54();
    swift_allocError();
    *v16 = 8;
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v28);
}

unint64_t sub_25A8F69B0()
{
  result = sub_25A892C6C();
  qword_27FA0FCB8 = result;
  return result;
}

uint64_t static MorpheusProgram.registerModule(name:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27FA043A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_27FA0FCC0;
  if (*(qword_27FA0FCC0 + 16) && (v7 = sub_25A8F3600(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v9 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15[0] = v9;
  sub_25A8F81B4(a3, sub_25A8F793C, 0, isUniquelyReferenced_nonNull_native, v15);

  v11 = v15[0];
  swift_beginAccess();

  v12 = swift_isUniquelyReferenced_nonNull_native();
  v14 = qword_27FA0FCC0;
  qword_27FA0FCC0 = 0x8000000000000000;
  sub_25A96ABDC(v11, a1, a2, v12);

  qword_27FA0FCC0 = v14;
  return swift_endAccess();
}

uint64_t static MorpheusProgram.registerFunction(name:f:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v49 = a1;
  *(&v49 + 1) = a2;
  *&v45 = 46;
  *(&v45 + 1) = 0xE100000000000000;
  sub_25A8F84C4();
  v4 = sub_25A998468();
  v5 = (v4 + 16);
  v6 = *(v4 + 16);
  v7 = 0;
  v8 =  + 40;
  v9 = MEMORY[0x277D84F90];
LABEL_2:
  v10 = (v8 + 16 * v7);
  while (1)
  {
    if (v6 == v7)
    {

      v16 = *(v9 + 16);

      if (!v16 && *v5)
      {
        v19 = &v5[2 * *v5];
        v3 = *v19;
        v8 = v19[1];
        v20 = qword_27FA043A0;

        if (v20 != -1)
        {
          goto LABEL_36;
        }

        goto LABEL_17;
      }

      sub_25A874F54();
      swift_allocError();
      *v17 = 7;
      return swift_willThrow();
    }

    if (v7 >= *v5)
    {
      break;
    }

    ++v7;
    v11 = *(v10 - 1);
    v3 = *v10;
    v10 += 2;
    v12 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v12 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12)
    {

      *&v49 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25A9375A0(0, *(v9 + 16) + 1, 1);
        v9 = v49;
      }

      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_25A9375A0((v13 > 1), v14 + 1, 1);
        v9 = v49;
      }

      *(v9 + 16) = v14 + 1;
      v15 = v9 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v3;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  swift_once();
LABEL_17:
  v21 = qword_27FA0FCB8;
  v22 = type metadata accessor for LexicalContext();
  v51 = &protocol witness table for LexicalContext;
  v52 = &protocol witness table for LexicalContext;
  v50 = v22;
  *&v49 = v21;
  if (!*v5)
  {
    __break(1u);
    goto LABEL_38;
  }

  v6 = v22;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_38:
    result = sub_25A8F7A28(v4);
    v4 = result;
    v23 = *(result + 16);
    if (!v23)
    {
      goto LABEL_39;
    }

LABEL_20:
    *&v36 = v3;
    *(&v36 + 1) = v8;
    *(v4 + 16) = v23 - 1;

    v40 = *(v4 + 16);
    if (!v40)
    {
LABEL_32:

      v33 = v50;
      v34 = v52;
      __swift_project_boxed_opaque_existential_1(&v49, v50);
      v46 = MEMORY[0x277D837D0];
      v45 = v36;
      *(&v43 + 1) = type metadata accessor for Function();
      *&v42 = a3;
      v35 = v34[1];

      v35(&v45, &v42, v33, v34);
      __swift_destroy_boxed_opaque_existential_0Tm(&v42);
      __swift_destroy_boxed_opaque_existential_0Tm(&v45);
      return __swift_destroy_boxed_opaque_existential_0Tm(&v49);
    }

    v38 = v6;
    v39 = v4;
    v6 = 0;
    v24 = (v4 + 40);
    while (1)
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_35;
      }

      v26 = *(v24 - 1);
      v25 = *v24;
      v27 = v50;
      v3 = v51;
      __swift_project_boxed_opaque_existential_1(&v49, v50);
      v5 = *(v3 + 8);

      (v5)(v41, v26, v25, v27, v3);
      if (v41[3])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04C10, &qword_25A9FA308);
        if (swift_dynamicCast())
        {
          if (*(&v43 + 1))
          {

            sub_25A8F8518(&v42, &v45);
            goto LABEL_24;
          }
        }

        else
        {
          v43 = 0u;
          v44 = 0u;
          v42 = 0u;
        }
      }

      else
      {
        sub_25A878194(v41, &qword_27FA04458, &unk_25A9F7FB0);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
      }

      sub_25A878194(&v42, &qword_27FA04C08, &qword_25A9FA300);
      v8 = v38;
      v28 = swift_allocObject();
      v28[2] = 0x6E776F6E6B6E55;
      v28[3] = 0xE700000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
      v29 = swift_allocObject();
      v30 = MEMORY[0x277D84F98];
      *(v29 + 16) = MEMORY[0x277D84F98];
      swift_beginAccess();
      *(v29 + 16) = v30;
      v28[4] = v29;
      v28[5] = v30;
      v28[2] = v26;
      v28[3] = v25;

      v3 = v50;
      v5 = v52;
      __swift_project_boxed_opaque_existential_1(&v49, v50);
      v46 = MEMORY[0x277D837D0];
      *&v45 = v26;
      *(&v45 + 1) = v25;
      *(&v43 + 1) = v38;
      *&v42 = v28;
      v31 = v5[1];

      v32 = v53;
      v31(&v45, &v42, v3, v5);
      if (v32)
      {

        __swift_destroy_boxed_opaque_existential_0Tm(&v42);
        __swift_destroy_boxed_opaque_existential_0Tm(&v45);
        return __swift_destroy_boxed_opaque_existential_0Tm(&v49);
      }

      v53 = 0;
      __swift_destroy_boxed_opaque_existential_0Tm(&v42);
      __swift_destroy_boxed_opaque_existential_0Tm(&v45);
      v47 = &protocol witness table for LexicalContext;
      v48 = &protocol witness table for LexicalContext;
      v46 = v38;
      *&v45 = v28;
LABEL_24:
      __swift_destroy_boxed_opaque_existential_0Tm(&v49);
      sub_25A8F8518(&v45, &v49);
      v4 = v39;
      ++v6;
      v24 += 2;
      if (v40 == v6)
      {
        goto LABEL_32;
      }
    }
  }

  v23 = *(v4 + 16);
  if (v23)
  {
    goto LABEL_20;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t static MorpheusProgram.fromDSL(_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_25A997E98();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = a2;
  v15[2] = 10;
  v15[3] = 0xE100000000000000;
  v15[0] = 28252;
  v15[1] = 0xE200000000000000;
  sub_25A8F84C4();
  sub_25A998488();
  sub_25A997E78();
  v9 = sub_25A997E38();
  v11 = v10;

  (*(v6 + 8))(v8, v5);
  if (v11 >> 60 == 15)
  {
    sub_25A874F54();
    swift_allocError();
    *v12 = 34;
    return swift_willThrow();
  }

  else
  {
    sub_25A8F7C6C();
    type metadata accessor for MorpheusProgram();
    sub_25A8F80AC(&qword_27FA04BD0, v14, type metadata accessor for MorpheusProgram, &protocol conformance descriptor for MorpheusProgram);
    sub_25A997968();
    sub_25A8F7E3C(v9, v11);

    if (!v2)
    {
      return v16;
    }
  }

  return result;
}

void *MorpheusProgram.deinit()
{

  return v0;
}

uint64_t MorpheusProgram.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25A8F7400@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for MorpheusProgram();
  v5 = swift_allocObject();
  result = MorpheusProgram.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_25A8F7458()
{

  v0 = sub_25A87A5A4();

  return v0;
}

_OWORD *sub_25A8F74BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (qword_27FA043A0 != -1)
  {
    swift_once();
  }

  LexicalContext.attribute(for:)(a1, a2, &v7);

  if (v8)
  {
    return sub_25A872D74(&v7, a3);
  }

  sub_25A878194(&v7, &qword_27FA04458, &unk_25A9F7FB0);

  LexicalContext.attribute(for:)(a1, a2, a3);
}

uint64_t sub_25A8F75A8()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_25A8F75E0()
{
  if (qword_27FA043A0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25A8F7680(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

BOOL sub_25A8F7740(uint64_t a1, void *a2)
{
  if (qword_27FA043A0 != -1)
  {
    swift_once();
  }

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  v5 = LexicalContext.has(attribute:)(v4);

  if (v5)
  {
    return 1;
  }

  v7._countAndFlagsBits = a1;
  v7._object = a2;
  v8 = LexicalContext.has(attribute:)(v7);

  return v8;
}

uint64_t sub_25A8F7804()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04C30, &qword_25A9FA520);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_25A9987E8();
  __swift_allocate_value_buffer(v3, qword_27FA0FCC8);
  v4 = __swift_project_value_buffer(v3, qword_27FA0FCC8);
  sub_25A9987D8();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

double sub_25A8F793C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_25A87500C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

uint64_t sub_25A8F799C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_25A998848();
  }

  return sub_25A9986A8();
}

uint64_t sub_25A8F7A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27FA043A0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v11[3] = MEMORY[0x277D837D0];
  v11[0] = a1;
  v11[1] = a2;
  sub_25A87500C(v11, v10);

  if (swift_dynamicCast())
  {

    sub_25A998578();
    sub_25A87500C(a3, v9);
    sub_25A874FB0(v10, &v8);
    sub_25A8780B8(v9, v7);
    swift_beginAccess();
    sub_25A8F2E14(v7, &v8);
    swift_endAccess();

    sub_25A878194(v9, &qword_27FA04458, &unk_25A9F7FB0);
    sub_25A8795A0(v10);
  }

  else
  {
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v11);
}

unint64_t sub_25A8F7C20(uint64_t a1, uint64_t a2)
{
  v2 = sub_25A9988C8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25A8F7C6C()
{
  v0 = sub_25A9987E8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25A997998();
  swift_allocObject();
  v4 = sub_25A997988();
  if (qword_27FA043B0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27FA0FCC8);
  (*(v1 + 16))(v3, v5, v0);
  v6 = type metadata accessor for ModuleResolver();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84F90];
  v7[2] = sub_25A98EDDC(MEMORY[0x277D84F90]);
  v9 = sub_25A98EDDC(v8);
  v7[4] = 0;
  v7[5] = 0;
  v7[3] = v9;
  v13[3] = v6;
  v13[0] = v7;
  v10 = sub_25A997978();
  sub_25A8F3128(v13, v3);
  v10(v12, 0);
  return v4;
}

uint64_t sub_25A8F7E3C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25A8F1C54(result, a2);
  }

  return result;
}

uint64_t sub_25A8F7E50()
{
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = sub_25A997E18();
    v2 = SecTaskCopyValueForEntitlement(v0, v1, 0);

    if (v2)
    {
      swift_unknownObjectRetain();
      if ((swift_dynamicCast() & 1) == 0 || (v10 & 1) == 0)
      {
        sub_25A874F54();
        swift_allocError();
        *v3 = 0;
        swift_willThrow();
      }

      return swift_unknownObjectRelease();
    }
  }

  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v5 = sub_25A997BD8();
  __swift_project_value_buffer(v5, qword_27FA0FCE8);
  v6 = sub_25A997BB8();
  v7 = sub_25A9983A8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_25A232000, v6, v7, "Morpheus require proper entitlement, please contact PFL team (#help-pfl)", v8, 2u);
    MEMORY[0x25F852800](v8, -1, -1);
  }

  sub_25A874F54();
  swift_allocError();
  *v9 = 0;
  return swift_willThrow();
}

unint64_t sub_25A8F8058()
{
  result = qword_27FA04BE0;
  if (!qword_27FA04BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04BE0);
  }

  return result;
}

uint64_t sub_25A8F80AC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25A8F80F4()
{
  result = qword_27FA04BF8;
  if (!qword_27FA04BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA04BF0, &qword_25A9FA2F8);
    sub_25A8F80AC(&qword_27FA04BE8, 255, type metadata accessor for ModuleOp, &unk_25A9F90EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04BF8);
  }

  return result;
}

unint64_t sub_25A8F81B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_25A906F18(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_25A872D74(v44, v42);
  v14 = *a5;
  result = sub_25A8F3600(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_25A967C88(v20, a4 & 1);
    result = sub_25A8F3600(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_25A998AA8();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_25A968F5C();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    sub_25A872D74(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_25A872D74(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_25A906F18(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_25A872D74(v44, v42);
        v32 = *a5;
        result = sub_25A8F3600(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_25A967C88(v36, 1);
          result = sub_25A8F3600(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0Tm(v31);
          sub_25A872D74(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_25A872D74(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_25A906F18(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_25A874FA8(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_25A8F84C4()
{
  result = qword_27FA04C00;
  if (!qword_27FA04C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C00);
  }

  return result;
}

_OWORD *sub_25A8F8518(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

unint64_t sub_25A8F8618()
{
  result = qword_27FA04C18;
  if (!qword_27FA04C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C18);
  }

  return result;
}

unint64_t sub_25A8F8670()
{
  result = qword_27FA04C20;
  if (!qword_27FA04C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C20);
  }

  return result;
}

unint64_t sub_25A8F86C8()
{
  result = qword_27FA04C28;
  if (!qword_27FA04C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C28);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_25A8F8780(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2;
}

double sub_25A8F8808@<D0>(uint64_t a1@<X8>)
{
  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v2 = sub_25A997BD8();
  __swift_project_value_buffer(v2, qword_27FA0FCE8);
  v3 = sub_25A997BB8();
  v4 = sub_25A998398();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25A232000, v3, v4, "breakpoint() is ignored because no debugger is attached or running in release mode.", v5, 2u);
    MEMORY[0x25F852800](v5, -1, -1);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_25A8F8944(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x677261726176;
    v6 = 0x677261776BLL;
    if (a1 != 8)
    {
      v6 = 0x6F7461726F636564;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x73746C7561666564;
    if (a1 != 5)
    {
      v7 = 2036625250;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6E6F6974636E7566;
    v2 = 0x61796C6E6F736F70;
    v3 = 0x7261796C6E6F776BLL;
    if (a1 != 3)
    {
      v3 = 0x6C7561666544776BLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1936159329;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_25A8F8A88(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_25A8F8944(*a1);
  v5 = v4;
  if (v3 == sub_25A8F8944(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25A9989E8();
  }

  return v8 & 1;
}

uint64_t sub_25A8F8B10()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A8F8944(v1);
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8F8B74(uint64_t a1)
{
  sub_25A8F8944(*v1);
  sub_25A997D58();
}

uint64_t sub_25A8F8BC8(uint64_t a1)
{
  v2 = *v1;
  sub_25A998B18();
  sub_25A8F8944(v2);
  sub_25A997D58();

  return sub_25A998B38();
}

unint64_t sub_25A8F8C28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25A8FA8A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_25A8F8C58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25A8F8944(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_25A8F8CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25A8FA8A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25A8F8CD4(uint64_t a1)
{
  v2 = sub_25A8FA5A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8F8D10(uint64_t a1)
{
  v2 = sub_25A8FA5A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8F8D98(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04C38, "t<\a");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-1] - v7;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8FA5A0();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    type metadata accessor for FunctionDef();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v14[0]) = 0;
    *(v1 + 40) = sub_25A9988F8();
    *(v1 + 48) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04870, &qword_25A9F8EE8);
    v15 = 1;
    sub_25A8E11F4();
    sub_25A998938();
    *(v1 + 56) = v14[0];
    v15 = 2;
    v13 = 0;
    sub_25A998938();
    *(v1 + 64) = v14[0];
    v15 = 3;
    sub_25A998938();
    *(v1 + 72) = v14[0];
    LOBYTE(v14[0]) = 7;
    *(v1 + 80) = sub_25A9988F8();
    *(v1 + 88) = v11;

    LOBYTE(v14[0]) = 8;
    *(v1 + 96) = sub_25A9988F8();
    *(v1 + 104) = v12;

    *(v1 + 112) = sub_25A94AFFC(v8, 4);
    *(v1 + 120) = sub_25A94AFFC(v8, 5);
    v15 = 6;
    type metadata accessor for LexicalBlock();
    sub_25A8E119C();
    sub_25A998938();
    MEMORY[0x88] = v14[0];
    MEMORY[0x80] = sub_25A94AFFC(v8, 9);
    sub_25A872F24(a1, v14);
    v3 = sub_25A8963D8(v14);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

void sub_25A8F9350(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v5 = *(v1 + 128);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v56[0] = MEMORY[0x277D84F90];

    sub_25A937550(0, v6, 0);
    v7 = v56[0];
    swift_beginAccess();
    v8 = 0;
    v9 = (v5 + 40);
    v47 = v6;
    v49 = v5;
    while (v8 < *(v5 + 16))
    {
      v51 = v8;
      v10 = v7;
      v11 = *v9;
      v66 = v9;
      ObjectType = swift_getObjectType();
      Strong = swift_unknownObjectWeakLoadStrong();
      v14 = v4;
      v15 = *(v4 + 32);
      v16 = v3;
      v17 = *(v11 + 48);
      swift_unknownObjectRetain();
      v17(Strong, v15, ObjectType, v11);
      (*(v11 + 64))(v63, ObjectType, v11);
      v3 = v16;
      if (v16)
      {

        swift_unknownObjectRelease();
        goto LABEL_17;
      }

      sub_25A872C84(v63, &v60);
      v7 = v10;
      if (v62)
      {
        sub_25A872CE0(&v60);
        sub_25A872C84(v63, &v60);
        v4 = v14;
        v18 = v51;
        if (v62 == 1)
        {
          v53 = v60;
          v54 = v61;
          sub_25A92DE50(&v53, &v57);
          swift_unknownObjectRelease();
          sub_25A878194(&v53, &qword_27FA04458, &unk_25A9F7FB0);
        }

        else
        {
          sub_25A872CE0(&v60);
          *(&v58 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
          v19 = swift_allocObject();
          *&v57 = v19;
          *(v19 + 16) = 0u;
          *(v19 + 32) = 0u;
          swift_unknownObjectRelease();
        }

        sub_25A872CE0(v63);
      }

      else
      {
        v53 = v60;
        v54 = v61;
        sub_25A92DE50(&v53, &v57);
        swift_unknownObjectRelease();
        sub_25A878194(&v53, &qword_27FA04458, &unk_25A9F7FB0);
        sub_25A872CE0(v63);
        v4 = v14;
        v18 = v51;
      }

      v56[0] = v7;
      v21 = *(v7 + 16);
      v20 = *(v7 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_25A937550((v20 > 1), v21 + 1, 1);
        v7 = v56[0];
      }

      v8 = v18 + 1;
      *(v7 + 16) = v21 + 1;
      sub_25A872D74(&v57, (v7 + 32 * v21 + 32));
      v9 = v66 + 2;
      v5 = v49;
      if (v47 == v8)
      {

        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_16:
  v22 = *(v4 + 136);
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v23 = *(v4 + 32);
  swift_beginAccess();
  *(v22 + 32) = v23;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v24 = sub_25A8FA160();
  if (v3)
  {
LABEL_17:

    return;
  }

  v25 = v24;
  v64 = type metadata accessor for PyFunction();
  v65 = &protocol witness table for Function;
  v63[0] = v25;
  v48 = *(v7 + 16);
  if (v48)
  {
    v26 = 0;
    v27 = v7 + 32;
    v46 = v7;
    while (v26 < *(v7 + 16))
    {
      sub_25A87500C(v27, &v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
      if (!swift_dynamicCast())
      {
        v59 = 0;
        v57 = 0u;
        v58 = 0u;

        sub_25A878194(&v57, &qword_27FA04760, &unk_25A9F9BB0);
        sub_25A874F54();
        swift_allocError();
        *v43 = -118;
        swift_willThrow();
        goto LABEL_29;
      }

      v50 = v27;
      sub_25A895470(&v57, &v60);
      v28 = *(&v61 + 1);
      v52 = v62;
      v66 = __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_25A9F8D90;
      v30 = v64;
      v31 = __swift_project_boxed_opaque_existential_1(v63, v64);
      *(v29 + 56) = v30;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v29 + 32));
      (*(*(v30 - 8) + 16))(boxed_opaque_existential_0, v31, v30);
      (*(v52 + 16))(v56, v29, MEMORY[0x277D84F98], v28);

      v7 = v46;
      if (!swift_dynamicCast())
      {
        v55 = 0;
        v53 = 0u;
        v54 = 0u;

        sub_25A878194(&v53, &qword_27FA04760, &unk_25A9F9BB0);
        sub_25A874F54();
        swift_allocError();
        *v44 = -117;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_0Tm(&v60);
        goto LABEL_29;
      }

      ++v26;
      sub_25A895470(&v53, &v57);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
      sub_25A895470(&v57, v63);
      __swift_destroy_boxed_opaque_existential_0Tm(&v60);
      v27 = v50 + 32;
      if (v48 == v26)
      {
        goto LABEL_24;
      }
    }

LABEL_31:
    __break(1u);
    return;
  }

LABEL_24:

  if (swift_unknownObjectWeakLoadStrong())
  {
    v33 = *(v4 + 32);
    v34 = swift_getObjectType();
    v35 = v4;
    v36 = v34;
    v38 = *(v35 + 40);
    v37 = *(v35 + 48);
    v39 = v64;
    v40 = __swift_project_boxed_opaque_existential_1(v63, v64);
    *(&v61 + 1) = v39;
    v41 = __swift_allocate_boxed_opaque_existential_0(&v60);
    (*(*(v39 - 8) + 16))(v41, v40, v39);
    v42 = *(v33 + 64);

    v42(v38, v37, &v60, v36, v33);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0Tm(&v60);
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
LABEL_29:
  __swift_destroy_boxed_opaque_existential_0Tm(v63);
}

void sub_25A8F9A48(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = v1[14];
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v52 = MEMORY[0x277D84F90];

    sub_25A937550(0, v4, 0);
    v5 = v52;
    swift_beginAccess();
    v6 = 0;
    v7 = (v3 + 40);
    v45 = v4;
    v47 = v3;
    while (v6 < *(v3 + 16))
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      Strong = swift_unknownObjectWeakLoadStrong();
      v11 = v2[4];
      v12 = *(v8 + 48);
      swift_unknownObjectRetain();
      v12(Strong, v11, ObjectType, v8);
      (*(v8 + 64))(v58, ObjectType, v8);
      if (v50)
      {

        swift_unknownObjectRelease();

        return;
      }

      sub_25A872C84(v58, &v53);
      if (v55)
      {
        sub_25A872CE0(&v53);
        sub_25A872C84(v58, &v53);
        v2 = v49;
        if (v55 == 1)
        {
          v56 = v53;
          v57 = v54;
          sub_25A92DE50(&v56, &v59);
          swift_unknownObjectRelease();
          sub_25A878194(&v56, &qword_27FA04458, &unk_25A9F7FB0);
        }

        else
        {
          sub_25A872CE0(&v53);
          v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
          v13 = swift_allocObject();
          *&v59 = v13;
          *(v13 + 16) = 0u;
          *(v13 + 32) = 0u;
          swift_unknownObjectRelease();
        }

        sub_25A872CE0(v58);
      }

      else
      {
        v56 = v53;
        v57 = v54;
        sub_25A92DE50(&v56, &v59);
        swift_unknownObjectRelease();
        sub_25A878194(&v56, &qword_27FA04458, &unk_25A9F7FB0);
        sub_25A872CE0(v58);
        v2 = v49;
      }

      v15 = *(v52 + 16);
      v14 = *(v52 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_25A937550((v14 > 1), v15 + 1, 1);
      }

      ++v6;
      *(v52 + 16) = v15 + 1;
      sub_25A872D74(&v59, (v52 + 32 * v15 + 32));
      v7 += 2;
      v3 = v47;
      if (v45 == v6)
      {

        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    v43 = v5;
    v16 = v2[15];
    v17 = *(v16 + 16);
    v18 = MEMORY[0x277D84F90];
    if (!v17)
    {
LABEL_31:
      v35 = v2[7];
      v36 = v2[8];
      v37 = v2[9];

      v38 = sub_25A93026C(v43);

      v39 = v2;
      v40 = sub_25A93026C(v18);

      v41 = v39[10];
      v42 = v39[13];
      *a1 = v35;
      *(a1 + 8) = v36;
      *(a1 + 16) = v37;
      *(a1 + 24) = v38;
      *(a1 + 32) = v40;
      *(a1 + 40) = v41;
      *(a1 + 48) = *(v39 + 11);
      *(a1 + 64) = v42;

      return;
    }

    v61 = MEMORY[0x277D84F90];

    sub_25A937550(0, v17, 0);
    v18 = v61;
    swift_beginAccess();
    v19 = 0;
    v20 = (v16 + 40);
    v21 = v50;
    v46 = v16;
    while (v19 < *(v16 + 16))
    {
      v48 = v19;
      v22 = v17;
      v23 = v18;
      v24 = *v20;
      v51 = v20;
      v25 = swift_getObjectType();
      v26 = swift_unknownObjectWeakLoadStrong();
      v27 = v21;
      v28 = v2[4];
      v29 = *(v24 + 48);
      swift_unknownObjectRetain();
      v29(v26, v28, v25, v24);
      (*(v24 + 64))(v58, v25, v24);
      v21 = v27;
      if (v27)
      {

        swift_unknownObjectRelease();

        return;
      }

      sub_25A872C84(v58, &v53);
      v18 = v23;
      if (v55)
      {
        sub_25A872CE0(&v53);
        sub_25A872C84(v58, &v53);
        v2 = v49;
        v30 = v51;
        v17 = v22;
        if (v55 == 1)
        {
          v56 = v53;
          v57 = v54;
          sub_25A92DE50(&v56, &v59);
          swift_unknownObjectRelease();
          sub_25A878194(&v56, &qword_27FA04458, &unk_25A9F7FB0);
        }

        else
        {
          sub_25A872CE0(&v53);
          v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
          v32 = swift_allocObject();
          *&v59 = v32;
          *(v32 + 16) = 0u;
          *(v32 + 32) = 0u;
          swift_unknownObjectRelease();
        }

        sub_25A872CE0(v58);
        v31 = v48;
      }

      else
      {
        v56 = v53;
        v57 = v54;
        sub_25A92DE50(&v56, &v59);
        swift_unknownObjectRelease();
        sub_25A878194(&v56, &qword_27FA04458, &unk_25A9F7FB0);
        sub_25A872CE0(v58);
        v17 = v22;
        v31 = v48;
        v2 = v49;
        v30 = v51;
      }

      v61 = v18;
      v34 = *(v18 + 16);
      v33 = *(v18 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_25A937550((v33 > 1), v34 + 1, 1);
        v18 = v61;
      }

      v19 = v31 + 1;
      *(v18 + 16) = v34 + 1;
      sub_25A872D74(&v59, (v18 + 32 * v34 + 32));
      v20 = v30 + 2;
      v16 = v46;
      if (v17 == v19)
      {

        goto LABEL_31;
      }
    }
  }

  __break(1u);
}

uint64_t sub_25A8FA044@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 136);
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v7 = *(v2 + 32);
  swift_beginAccess();
  *(v6 + 32) = v7;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  sub_25A87A7AC(a1);
  if (v3)
  {
  }

  sub_25A87A380(1, v9);

  sub_25A896580(v10);
  sub_25A872CE0(v9);
  sub_25A92D814(v10, a2);
  return __swift_destroy_boxed_opaque_existential_0Tm(v10);
}

uint64_t sub_25A8FA160()
{
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  sub_25A8F9A48(v15);
  if (v1)
  {
  }

  v5 = MEMORY[0x277D84F90];
  v6 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  type metadata accessor for PyFunction();
  v7 = swift_allocObject();
  *(v7 + 32) = v5;
  *(v7 + 40) = v5;
  *(v7 + 48) = v5;
  *(v7 + 56) = v5;
  *(v7 + 64) = v5;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = sub_25A92BDB4(v5);
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;
  v8 = *(v7 + 80);
  v13[2] = *(v7 + 64);
  v13[3] = v8;
  v14 = *(v7 + 96);
  v9 = *(v7 + 48);
  v13[0] = *(v7 + 32);
  v13[1] = v9;
  v10 = v15[1];
  *(v7 + 32) = v15[0];
  *(v7 + 48) = v10;
  v11 = v15[3];
  *(v7 + 64) = v15[2];
  *(v7 + 80) = v11;
  *(v7 + 96) = v16;
  sub_25A892B80(v13);
  swift_beginAccess();
  *(v7 + 104) = v6;

  v12 = swift_allocObject();
  result = v7;
  *(v12 + 16) = sub_25A8FA5F4;
  *(v12 + 24) = v0;
  *(v7 + 112) = sub_25A8F1830;
  *(v7 + 120) = v12;
  return result;
}

_OWORD *sub_25A8FA2D0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_25A8FA044(a1, v5);
  if (!v2)
  {
    return sub_25A872D74(v5, a2);
  }

  return result;
}

uint64_t sub_25A8FA31C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  MEMORY[0x25F850290](v1, v2);

  MEMORY[0x25F850290](3811624, 0xE300000000000000);

  v3 = sub_25A87A5A4();
  v5 = v4;

  v6 = sub_25A985514(v3, v5);
  v8 = v7;

  MEMORY[0x25F850290](v6, v8);

  MEMORY[0x25F850290](10, 0xE100000000000000);
  MEMORY[0x25F850290](10, 0xE100000000000000);

  return 543581540;
}

uint64_t sub_25A8FA428()
{
}

void *sub_25A8FA498()
{
  sub_25A872F88(v0 + 24);

  return v0;
}

uint64_t sub_25A8FA508()
{
  sub_25A8FA498();

  return swift_deallocClassInstance();
}

uint64_t sub_25A8FA560()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25A8FA5A0()
{
  result = qword_27FA04C40;
  if (!qword_27FA04C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C40);
  }

  return result;
}

uint64_t sub_25A8FA610()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for FunctionDef.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}