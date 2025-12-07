uint64_t sub_25A8A0EAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(0x7961727261, 0xE500000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v24);
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v7 = sub_25A8DF268(&v24);
  result = sub_25A878194(&v24, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    v9 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v10)
    {
      v11 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v13 = v9;
      v12 = sub_25A967040(0, 1, 1, MEMORY[0x277D84F90]);
      v15 = *(v12 + 2);
      v14 = *(v12 + 3);
      if (v15 >= v14 >> 1)
      {
        v12 = sub_25A967040((v14 > 1), v15 + 1, 1, v12);
      }

      *(v12 + 2) = v15 + 1;
      *&v12[8 * v15 + 32] = v13;
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v16 = v24;
    v23 = mlx_array_new();
    swift_beginAccess();
    v17 = *(v7 + 16);
    v18 = Array<A>.asInt32.getter(v12);
    v19 = *(v12 + 2);

    mlx_sum_axes(&v23, v17, (v18 + 32), v19, 0, *(v16 + 16));

    v20 = v23;
    v21 = type metadata accessor for MLXArray();
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    a2[3] = v21;

    *a2 = v22;
  }

  return result;
}

void sub_25A8A1114(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8A111CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8A1128(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(12664, 0xE200000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v6 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(12920, 0xE200000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v10 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v11 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v12 = *(v6 + 16);
    swift_beginAccess();
    mlx_add(&v13, v12, *(v10 + 16), *(v11 + 16));
  }

  return result;
}

void sub_25A8A1350(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8A1358);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8A1364@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(0x7961727261, 0xE500000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v24);
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v7 = sub_25A8DF268(&v24);
  result = sub_25A878194(&v24, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    v9 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v10)
    {
      v11 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v13 = v9;
      v12 = sub_25A967040(0, 1, 1, MEMORY[0x277D84F90]);
      v15 = *(v12 + 2);
      v14 = *(v12 + 3);
      if (v15 >= v14 >> 1)
      {
        v12 = sub_25A967040((v14 > 1), v15 + 1, 1, v12);
      }

      *(v12 + 2) = v15 + 1;
      *&v12[8 * v15 + 32] = v13;
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v16 = v24;
    v23 = mlx_array_new();
    swift_beginAccess();
    v17 = *(v7 + 16);
    v18 = Array<A>.asInt32.getter(v12);
    v19 = *(v12 + 2);

    mlx_prod_axes(&v23, v17, (v18 + 32), v19, 0, *(v16 + 16));

    v20 = v23;
    v21 = type metadata accessor for MLXArray();
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    a2[3] = v21;

    *a2 = v22;
  }

  return result;
}

void sub_25A8A15CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8A15D4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8A15E0(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(12664, 0xE200000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v6 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(12920, 0xE200000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v10 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v11 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v12 = *(v6 + 16);
    swift_beginAccess();
    mlx_multiply(&v13, v12, *(v10 + 16), *(v11 + 16));
  }

  return result;
}

void sub_25A8A1808(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8A1810);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8A181C(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(12664, 0xE200000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v6 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(12920, 0xE200000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v10 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v11 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v12 = *(v6 + 16);
    swift_beginAccess();
    mlx_divide(&v13, v12, *(v10 + 16), *(v11 + 16));
  }

  return result;
}

void sub_25A8A1A44(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8A1A4CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8A1A58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(97, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v31);
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v7 = sub_25A8DF268(&v31);
  result = sub_25A878194(&v31, &qword_27FA04458, &unk_25A9F7FB0);
  if (v2)
  {
    return result;
  }

  if (!*(a1 + 16) || (v9 = sub_25A8F3600(0x657061687377656ELL, 0xE800000000000000), (v10 & 1) == 0))
  {
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
    goto LABEL_16;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v9, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    goto LABEL_16;
  }

  if (!*(&v29 + 1))
  {
LABEL_16:
    sub_25A878194(&v28, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_17;
  }

  sub_25A87817C(&v28, &v31);
  v11 = *(&v32 + 1);
  v12 = v33;
  __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
  v13 = (*(v12 + 8))(v11, v12);
  v14 = sub_25A92FCA4(v13);

  if (v14)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v15 = v28;
    v27[0] = mlx_array_new();
    swift_beginAccess();
    v16 = *(v7 + 16);
    v17 = Array<A>.asInt32.getter(v14);
    v18 = *(v14 + 16);

    mlx_reshape(v27, v16, (v17 + 32), v18, *(v15 + 16));

    v19 = v27[0];
    v20 = type metadata accessor for MLXArray();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    a2[3] = v20;

    *a2 = v21;
    return __swift_destroy_boxed_opaque_existential_0Tm(&v31);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v31);
LABEL_17:
  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v22 = sub_25A997BD8();
  __swift_project_value_buffer(v22, qword_27FA0FCE8);
  v23 = sub_25A997BB8();
  v24 = sub_25A9983A8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_25A232000, v23, v24, "Invalid arg newshape for reshape", v25, 2u);
    MEMORY[0x25F852800](v25, -1, -1);
  }

  sub_25A874F54();
  swift_allocError();
  *v26 = 50;
  swift_willThrow();
}

void sub_25A8A1E18(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8A1E20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8A1E2C(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(97, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v11 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v7 = v14;
    v13[0] = mlx_array_new();
    swift_beginAccess();
    mlx_flatten(v13, *(v11 + 16), 0, -1, *(v7 + 16));

    v8 = v13[0];
    type metadata accessor for MLXArray();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    sub_25A998C58();
    v9 = v13[0];
    v12[0] = mlx_array_new();
    swift_beginAccess();
    mlx_argsort(v12, *(v10 + 16), *(v9 + 16));
  }

  return result;
}

void sub_25A8A24DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8A24E4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8A2530(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(12664, 0xE200000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v6 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(12920, 0xE200000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v10 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v11 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v12 = *(v6 + 16);
    swift_beginAccess();
    mlx_equal(&v13, v12, *(v10 + 16), *(v11 + 16));
  }

  return result;
}

void sub_25A8A2758(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8A2760);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8A276C(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(97, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v13);
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v6 = sub_25A8DF268(&v13);
  result = sub_25A878194(&v13, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    v8 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v9)
    {
      v10 = -1;
    }

    else
    {
      v10 = v8;
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v11 = v13;
    v12 = mlx_array_new();
    swift_beginAccess();
    if (v10 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v10 <= 0x7FFFFFFF)
    {
      mlx_argsort_axis(&v12, *(v6 + 16), v10, *(v11 + 16));
    }

    __break(1u);
  }

  return result;
}

void sub_25A8A2938(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8A2940);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8A294C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1;
  v64 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v6 = sub_25A8F3600(97, 0xE100000000000000);
    if (v7)
    {
      sub_25A87500C(*(v5 + 56) + 32 * v6, &v62);
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
    }
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v8 = sub_25A8DF268(&v62);
  result = sub_25A878194(&v62, &qword_27FA04458, &unk_25A9F7FB0);
  if (v2)
  {
    return result;
  }

  v10 = sub_25A8DF850(v5, 110, 0xE100000000000000);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10;
  }

  v60 = v12;
  v13 = sub_25A8DF850(v5, 1936291937, 0xE400000000000000);
  v14 = v13;
  if (v15)
  {
    v16 = -1;
  }

  else
  {
    v16 = v13;
  }

  if (v16 < 0)
  {
    swift_beginAccess();
    v17 = mlx_array_ndim(*(v8 + 16));
    v14 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_76;
    }
  }

  if (*(v5 + 16) && (v18 = sub_25A8F3600(0x646E6570657270, 0xE700000000000000), (v19 & 1) != 0))
  {
    sub_25A87500C(*(v5 + 56) + 32 * v18, &v62);
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v3 = sub_25A8DF268(&v62);
  sub_25A878194(&v62, &qword_27FA04458, &unk_25A9F7FB0);

  v4 = sub_25A9616CC();
  swift_beginAccess();
  v20 = mlx_array_ndim(*(v3 + 16));

  if (!v20)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v4 = sub_25A8F7A00(v4);
      if ((v14 & 0x8000000000000000) == 0)
      {
LABEL_27:
        if (v14 >= v4[2])
        {
          goto LABEL_87;
        }

        v20 = 1;
LABEL_29:
        v4[v14 + 4] = v20;
        if (qword_27FA043D8 == -1)
        {
LABEL_30:
          sub_25A998C58();
          v22 = v62;
          *&v62 = mlx_array_new();
          v23 = *(v3 + 16);
          v24 = Array<A>.asInt32.getter(v4);
          v25 = v4[2];

          mlx_broadcast_to(&v62, v23, (v24 + 32), v25, *(v22 + 16));

          v26 = v62;
          type metadata accessor for MLXArray();
          v27 = swift_allocObject();
          *(v27 + 16) = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA049E0, &qword_25A9F95A0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_25A9F9540;
          *(inited + 32) = v27;
          *(inited + 40) = v8;

          sub_25A998C58();
          sub_25A954860(inited, v14, v62);
        }

LABEL_77:
        swift_once();
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  v21 = sub_25A9616CC();
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_79;
  }

  if (v14 >= *(v21 + 2))
  {
    goto LABEL_80;
  }

  v20 = *&v21[2 * v14 + 8];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_82;
  }

  while (1)
  {
    if (v14 < v4[2])
    {
      goto LABEL_29;
    }

    __break(1u);
    v62 = 0u;
    v63 = 0u;
    v5 = sub_25A8DF268(&v62);
    if (v20)
    {
      break;
    }

    sub_25A878194(&v62, &qword_27FA04458, &unk_25A9F7FB0);

    v3 = sub_25A9616CC();
    swift_beginAccess();
    v20 = mlx_array_ndim(*(v5 + 16));

    if (!v20)
    {
      goto LABEL_63;
    }

    v48 = sub_25A9616CC();
    if ((v14 & 0x8000000000000000) != 0)
    {
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
    }

    else if (v14 < *(v48 + 2))
    {
      v49 = *&v48[2 * v14 + 8];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_25A8F7A00(v3);
      }

      if (v14 >= *(v3 + 16))
      {
        __break(1u);
LABEL_63:
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v14 & 0x8000000000000000) == 0)
          {
            goto LABEL_65;
          }

LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
        }

LABEL_85:
        v3 = sub_25A8F7A00(v3);
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_86;
        }

LABEL_65:
        if (v14 >= *(v3 + 16))
        {
          goto LABEL_88;
        }

        v49 = 1;
      }

      *(v3 + 8 * v14 + 32) = v49;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v50 = v62;
      *&v62 = mlx_array_new();
      v51 = *(v5 + 16);
      v52 = Array<A>.asInt32.getter(v3);
      v53 = *(v3 + 16);

      mlx_broadcast_to(&v62, v51, (v52 + 32), v53, *(v50 + 16));

      v54 = v62;
      type metadata accessor for MLXArray();
      v55 = swift_allocObject();
      *(v55 + 16) = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA049E0, &qword_25A9F95A0);
      v56 = swift_initStackObject();
      *(v56 + 16) = xmmword_25A9F9540;
      *(v56 + 32) = v8;
      *(v56 + 40) = v55;

      sub_25A998C58();
      sub_25A954860(v56, v14, v62);
    }

    __break(1u);
LABEL_82:
    v4 = sub_25A8F7A00(v4);
  }

  sub_25A878194(&v62, &qword_27FA04458, &unk_25A9F7FB0);
  if (v60 < 0)
  {
    __break(1u);
    __break(1u);
    goto LABEL_71;
  }

  if (v60)
  {
    if (v14 < 0xFFFFFFFF80000000)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    if (v14 > 0x7FFFFFFF)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if ((v14 & 0x8000000000000000) != 0)
    {
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v3 = 1;
    v58 = vdupq_n_s64(3uLL);
    v57 = vdupq_n_s64(4uLL);
    v29 = sub_25A9616CC();
    if (v14 < *(v29 + 2))
    {
      v30 = *&v29[2 * v14 + 8];

      if (v30 >= 1)
      {
        if (v30 == 1)
        {
          v31 = MEMORY[0x277D84F90];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
          v31 = swift_allocObject();
          v32 = _swift_stdlib_malloc_size(v31);
          v33 = v32 - 32;
          if (v32 < 32)
          {
            v33 = v32 - 25;
          }

          v34 = v33 >> 3;
          v31[4] = 1;
          v35 = v31 + 4;
          v31[2] = v30 - 1;
          v31[3] = 2 * v34;
          if (v30 != 2)
          {
            v36 = v30 - 2;
            if ((v30 - 2) >= 4)
            {
              v37 = v36 & 0xFFFFFFFFFFFFFFFCLL | 1;
              v35 += v36 & 0xFFFFFFFFFFFFFFFCLL;
              v38 = (v31 + 7);
              v39 = v36 & 0xFFFFFFFFFFFFFFFCLL;
              v40 = xmmword_25A9F8D90;
              do
              {
                v38[-1] = vaddq_s64(v40, vdupq_n_s64(1uLL));
                *v38 = vaddq_s64(v40, v58);
                v40 = vaddq_s64(v40, v57);
                v38 += 2;
                v39 -= 4;
              }

              while (v39);
              if (v36 == (v36 & 0xFFFFFFFFFFFFFFFCLL))
              {
                goto LABEL_51;
              }
            }

            else
            {
              v37 = 1;
            }

            v41 = ~v37 + v30;
            v42 = v35 + 1;
            v43 = v37 + 1;
            do
            {
              *v42++ = v43++;
              --v41;
            }

            while (v41);
          }
        }

LABEL_51:
        v44 = sub_25A930380(v31);

        v45 = sub_25A955844(v44, 0);
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v46 = v61;
        v61 = mlx_array_new();
        swift_beginAccess();
        v47 = *(v8 + 16);
        swift_beginAccess();
        mlx_take_axis(&v61, v47, *(v45 + 16), v14, *(v46 + 16));
      }

      goto LABEL_72;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_73;
  }

  result = type metadata accessor for MLXArray();
  a2[3] = result;
  *a2 = v8;
  return result;
}

void sub_25A8A3478(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8A3480);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8A3504(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = (a2 - result);
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    return result;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

  v6 = result;
  v7 = sub_25A9373B8(a2 - result, 0);
  if (sub_25A959040(v9, (v7 + 4), v3, v6, a2) != v3)
  {
    __break(1u);
LABEL_5:
    v7 = MEMORY[0x277D84F90];
  }

  v8 = sub_25A930380(v7);

  return sub_25A955844(v8, a3);
}

uint64_t sub_25A8A35BC(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(0x6F697469646E6F63, 0xE90000000000006ELL);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v18);
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v6 = sub_25A8DF268(&v18);
  result = sub_25A878194(&v18, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(120, 0xE100000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v18);
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    v10 = sub_25A8DF268(&v18);
    sub_25A878194(&v18, &qword_27FA04458, &unk_25A9F7FB0);
    if (*(a1 + 16) && (v11 = sub_25A8F3600(121, 0xE100000000000000), (v12 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v11, &v18);
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    v13 = sub_25A8DF268(&v18);
    sub_25A878194(&v18, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v14 = v18;
    v17 = mlx_array_new();
    swift_beginAccess();
    v15 = *(v6 + 16);
    swift_beginAccess();
    v16 = *(v10 + 16);
    swift_beginAccess();
    mlx_where(&v17, v15, v16, *(v13 + 16), *(v14 + 16));
  }

  return result;
}

void sub_25A8A38D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8A38DCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8A38E8(uint64_t a1)
{
  if (!*(a1 + 16) || (v3 = sub_25A8F3600(0x737961727261, 0xE600000000000000), (v4 & 1) == 0))
  {
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    goto LABEL_12;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v3, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    goto LABEL_12;
  }

  if (!*(&v32 + 1))
  {
LABEL_12:
    sub_25A878194(&v31, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_13;
  }

  sub_25A87817C(&v31, v34);
  v5 = v35;
  v6 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v7 = (*(v6 + 8))(v5, v6);
  v8 = sub_25A92FDB0(v7);

  if (v8)
  {
    v9 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    v10 = *(v8 + 16);
    if (v11)
    {
      if (v10)
      {
        v30[0] = MEMORY[0x277D84F90];
        sub_25A998748();
        v12 = v8 + 32;
        do
        {
          sub_25A872F24(v12, &v31);
          v13 = *(&v32 + 1);
          v14 = v33;
          __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
          (*(v14 + 8))(13, v13, v14);
          __swift_destroy_boxed_opaque_existential_0Tm(&v31);
          sub_25A998718();
          sub_25A998758();
          sub_25A998768();
          sub_25A998728();
          v12 += 40;
          --v10;
        }

        while (v10);

        v15 = v30[0];
      }

      else
      {

        v15 = MEMORY[0x277D84F90];
      }

      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v27 = v31;
      v28 = v15;
      v29 = 0;
    }

    else
    {
      v22 = v9;
      if (v10)
      {
        v30[0] = MEMORY[0x277D84F90];
        sub_25A998748();
        v23 = v8 + 32;
        do
        {
          sub_25A872F24(v23, &v31);
          v24 = *(&v32 + 1);
          v25 = v33;
          __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
          (*(v25 + 8))(13, v24, v25);
          __swift_destroy_boxed_opaque_existential_0Tm(&v31);
          sub_25A998718();
          sub_25A998758();
          sub_25A998768();
          sub_25A998728();
          v23 += 40;
          --v10;
        }

        while (v10);

        v26 = v30[0];
      }

      else
      {

        v26 = MEMORY[0x277D84F90];
      }

      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v27 = v31;
      v28 = v26;
      v29 = v22;
    }

    sub_25A954860(v28, v29, v27);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v34);
LABEL_13:
  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v16 = sub_25A997BD8();
  __swift_project_value_buffer(v16, qword_27FA0FCE8);
  v17 = sub_25A997BB8();
  v18 = sub_25A9983A8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_25A232000, v17, v18, "Invalid arg arrays for concatenate", v19, 2u);
    MEMORY[0x25F852800](v19, -1, -1);
  }

  sub_25A874F54();
  swift_allocError();
  *v20 = 51;
  return swift_willThrow();
}

uint64_t sub_25A8A3DB4(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(97, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v19);
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v6 = sub_25A8DF268(&v19);
  result = sub_25A878194(&v19, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    v8 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v9)
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v10 = v19;
      v18 = mlx_array_new();
      swift_beginAccess();
      v11 = *(v6 + 16);
      v12 = Array<A>.asInt32.getter(&unk_286C0DD10);
      v13 = *(v10 + 16);
      mlx_reshape(&v18, v11, (v12 + 32), 1uLL, v13);

      v14 = v18;
      v17 = mlx_array_new();
      mlx_cumsum(&v17, v14, 0, 0, 1, v13);
    }

    v15 = v8;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v16 = v19;
    v18 = mlx_array_new();
    swift_beginAccess();
    if (v15 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v15 <= 0x7FFFFFFF)
    {
      mlx_cumsum(&v18, *(v6 + 16), v15, 0, 1, *(v16 + 16));
    }

    __break(1u);
  }

  return result;
}

void sub_25A8A4088(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8A4090);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8A40C4(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(120, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v6 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(121, 0xE100000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v10 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v11 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v12 = *(v6 + 16);
    swift_beginAccess();
    mlx_logical_or(&v13, v12, *(v10 + 16), *(v11 + 16));
  }

  return result;
}

void sub_25A8A42EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8A42F4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8A4300@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(97, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v10);
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  sub_25A8DF268(&v10);
  result = sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {

    v9 = sub_25A8DF3E0(v8);
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04928, &qword_25A9F9578);

    *a2 = v9;
  }

  return result;
}

uint64_t sub_25A8A43E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(97, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v16);
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v7 = sub_25A8DF268(&v16);
  result = sub_25A878194(&v16, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v9 = sub_25A8F3600(118, 0xE100000000000000), (v10 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v9, &v16);
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    sub_25A8DF268(&v16);
    sub_25A878194(&v16, &qword_27FA04458, &unk_25A9F7FB0);
    if (*(a1 + 16))
    {
      v11 = sub_25A8F3600(1701079411, 0xE400000000000000);
      if (v12)
      {
        sub_25A87500C(*(a1 + 56) + 32 * v11, &v16);
        swift_dynamicCast();
      }
    }

    sub_25A898784(v7);

    v13 = *(&v17 + 1);
    v14 = __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
    a2[3] = v13;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v14, v13);

    return __swift_destroy_boxed_opaque_existential_0Tm(&v16);
  }

  return result;
}

uint64_t sub_25A8A461C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(120, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v13);
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v6 = sub_25A8DF268(&v13);
  result = sub_25A878194(&v13, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(28792, 0xE200000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v13);
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v10 = sub_25A8DF268(&v13);
    sub_25A878194(&v13, &qword_27FA04458, &unk_25A9F7FB0);
    if (*(a1 + 16) && (v11 = sub_25A8F3600(28774, 0xE200000000000000), (v12 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v11, &v13);
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    sub_25A8DF268(&v13);
    sub_25A878194(&v13, &qword_27FA04458, &unk_25A9F7FB0);
    sub_25A8990B0(v6, v10);
  }

  return result;
}

uint64_t sub_25A8A4814(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(7500385, 0xE300000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v25);
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v6 = sub_25A8DF268(&v25);
  result = sub_25A878194(&v25, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(0x7365756C6176, 0xE600000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v25);
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v22 = sub_25A8DF268(&v25);
    sub_25A878194(&v25, &qword_27FA04458, &unk_25A9F7FB0);
    v10 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v11)
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v12 = v25;
      v23[0] = mlx_array_new();
      swift_beginAccess();
      mlx_flatten(v23, *(v6 + 16), 0, -1, *(v12 + 16));

      v13 = v23[0];
      type metadata accessor for MLXArray();
      v21 = swift_allocObject();
      *(v21 + 16) = v13;
      sub_25A998C58();
      v14 = v23[0];
      v24 = mlx_array_new();
      swift_beginAccess();
      mlx_flatten(&v24, *(v22 + 16), 0, -1, *(v14 + 16));

      v15 = v24;
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA049E0, &qword_25A9F95A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25A9F9540;
      *(inited + 32) = v21;
      *(inited + 40) = v16;

      sub_25A998C58();
      sub_25A954860(inited, 0, v24);
    }

    v18 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA049E0, &qword_25A9F95A0);
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_25A9F9540;
    *(v19 + 32) = v6;
    *(v19 + 40) = v22;
    v20 = qword_27FA043D8;

    if (v20 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    sub_25A954860(v19, v18, v25);
  }

  return result;
}

void sub_25A8A4C50(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8A4C58);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8A4C74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(97, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v23);
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v7 = sub_25A8DF268(&v23);
  result = sub_25A878194(&v23, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    v9 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if ((v10 & 1) == 0)
    {
      v11 = v9;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v16 = v23;
      v22 = mlx_array_new();
      swift_beginAccess();
      if (v11 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v11 <= 0x7FFFFFFF)
      {
        mlx_any_axis(&v22, *(v7 + 16), v11, 0, *(v16 + 16));
        goto LABEL_16;
      }

      __break(1u);
      goto LABEL_23;
    }

    v11 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
    if (v11)
    {
      if (qword_27FA043D8 == -1)
      {
LABEL_10:
        sub_25A998C58();
        v12 = v23;
        v22 = mlx_array_new();
        swift_beginAccess();
        v13 = *(v7 + 16);
        v14 = Array<A>.asInt32.getter(v11);
        v15 = *(v11 + 16);

        mlx_any_axes(&v22, v13, (v14 + 32), v15, 0, *(v12 + 16));

LABEL_16:

        v17 = v22;
        v18 = type metadata accessor for MLXArray();
        v19 = swift_allocObject();
        *(v19 + 16) = v17;
        a2[3] = v18;

        *a2 = v19;
        return result;
      }

LABEL_23:
      swift_once();
      goto LABEL_10;
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v20 = v23;
    v22 = mlx_array_new();
    swift_beginAccess();
    mlx_any(&v22, *(v7 + 16), 0, *(v20 + 16));

    v21 = v22;
    type metadata accessor for MLXArray();
    *(swift_allocObject() + 16) = v21;
    sub_25A8E796C(a2);
  }

  return result;
}

void sub_25A8A4FC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8A4FC8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8A4FF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(97, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v23);
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v7 = sub_25A8DF268(&v23);
  result = sub_25A878194(&v23, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    v9 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if ((v10 & 1) == 0)
    {
      v11 = v9;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v16 = v23;
      v22 = mlx_array_new();
      swift_beginAccess();
      if (v11 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v11 <= 0x7FFFFFFF)
      {
        mlx_all_axis(&v22, *(v7 + 16), v11, 0, *(v16 + 16));
        goto LABEL_16;
      }

      __break(1u);
      goto LABEL_23;
    }

    v11 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
    if (v11)
    {
      if (qword_27FA043D8 == -1)
      {
LABEL_10:
        sub_25A998C58();
        v12 = v23;
        v22 = mlx_array_new();
        swift_beginAccess();
        v13 = *(v7 + 16);
        v14 = Array<A>.asInt32.getter(v11);
        v15 = *(v11 + 16);

        mlx_all_axes(&v22, v13, (v14 + 32), v15, 0, *(v12 + 16));

LABEL_16:

        v17 = v22;
        v18 = type metadata accessor for MLXArray();
        v19 = swift_allocObject();
        *(v19 + 16) = v17;
        a2[3] = v18;

        *a2 = v19;
        return result;
      }

LABEL_23:
      swift_once();
      goto LABEL_10;
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v20 = v23;
    v22 = mlx_array_new();
    swift_beginAccess();
    mlx_all(&v22, *(v7 + 16), 0, *(v20 + 16));

    v21 = v22;
    type metadata accessor for MLXArray();
    *(swift_allocObject() + 16) = v21;
    sub_25A8E796C(a2);
  }

  return result;
}

void sub_25A8A5340(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8A5348);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8A5374@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_25A8E734C(0x7472617473, 0xE500000000000000, a1, &v153);
  if (!*(&v154 + 1))
  {
    sub_25A878194(&v153, &qword_27FA04458, &unk_25A9F7FB0);
    v156 = 0u;
    v157 = 0u;
    v158 = 0;
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v158 = 0;
    v156 = 0u;
    v157 = 0u;
    goto LABEL_17;
  }

  if (!*(&v157 + 1))
  {
LABEL_17:
    sub_25A878194(&v156, &qword_27FA047C8, &qword_25A9F8E88);
    goto LABEL_18;
  }

  sub_25A87817C(&v156, v159);
  sub_25A8E734C(1886352499, 0xE400000000000000, a1, &v150);
  if (!*(&v151 + 1))
  {
    sub_25A878194(&v150, &qword_27FA04458, &unk_25A9F7FB0);
    v153 = 0u;
    v154 = 0u;
    v155 = 0;
    goto LABEL_58;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v155 = 0;
    v153 = 0u;
    v154 = 0u;
    goto LABEL_58;
  }

  if (!*(&v154 + 1))
  {
LABEL_58:
    sub_25A878194(&v153, &qword_27FA047C8, &qword_25A9F8E88);
LABEL_59:
    __swift_destroy_boxed_opaque_existential_0Tm(v159);
LABEL_18:
    sub_25A8E734C(0x7472617473, 0xE500000000000000, a1, &v153);
    if (*(&v154 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
      if (swift_dynamicCast())
      {
        if (*(&v157 + 1))
        {
          sub_25A87817C(&v156, v159);
          sub_25A8E734C(1886352499, 0xE400000000000000, a1, &v150);
          if (*(&v151 + 1))
          {
            if (swift_dynamicCast())
            {
              if (*(&v154 + 1))
              {
                sub_25A87817C(&v153, &v156);
                v14 = v160;
                v13 = v161;
                v15 = __swift_project_boxed_opaque_existential_1(v159, v160);
                v16 = *(v14 - 8);
                v17 = v16[8];
                MEMORY[0x28223BE20](v15);
                v18 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
                (v16[2])(v18);
                v19 = sub_25A9984D8();
                v148 = a2;
                if ((v19 & 1) != 0 && sub_25A9984C8() > 64)
                {
                  *&v153 = 0x8000000000000000;
                  if ((sub_25A9984D8() & 1) == 0)
                  {
                    goto LABEL_91;
                  }

                  v20 = sub_25A9984C8();
                  if (v20 < 64)
                  {
                    goto LABEL_112;
                  }

LABEL_93:
                  v162 = &v143;
                  MEMORY[0x28223BE20](v20);
                  sub_25A895280();
                  sub_25A9984A8();
                  v52 = sub_25A997D88();
                  result = (v16[1])(&v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
                  if (v52)
                  {
                    goto LABEL_222;
                  }
                }

LABEL_113:
                if (sub_25A9984C8() <= 64)
                {
                  goto LABEL_118;
                }

                while (1)
                {
                  *&v153 = 0x7FFFFFFFFFFFFFFFLL;
                  v66 = sub_25A9984D8();
                  v67 = sub_25A9984C8();
                  if (v66)
                  {
                    if (v67 < 65)
                    {
                      goto LABEL_122;
                    }
                  }

                  else if (v67 < 64)
                  {
LABEL_122:
                    sub_25A9984B8();
LABEL_123:
                    v69 = sub_25A9984B8();
                    (v16[1])(v18, v14);
                    v70 = *(&v157 + 1);
                    v71 = v158;
                    v72 = __swift_project_boxed_opaque_existential_1(&v156, *(&v157 + 1));
                    v73 = &v143;
                    v74 = *(v70 - 8);
                    v75 = *(v74 + 64);
                    MEMORY[0x28223BE20](v72);
                    v76 = &v143 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
                    (*(v74 + 16))(v76);
                    if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
                    {
                      *&v153 = 0x8000000000000000;
                      if (sub_25A9984D8())
                      {
                        v77 = sub_25A9984C8();
                        if (v77 >= 64)
                        {
                          v147 = &v143;
                          MEMORY[0x28223BE20](v77);
                          v162 = v69;
                          sub_25A895280();
                          sub_25A9984A8();
                          v78 = sub_25A997D88();
                          v73 = &v143;
                          v69 = v162;
                          result = (*(v74 + 8))(&v143 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0), v70);
                          if (v78)
                          {
                            goto LABEL_223;
                          }

                          goto LABEL_137;
                        }

LABEL_134:
                        sub_25A9984B8();
                      }

                      else
                      {
                        v162 = &v143;
                        v79 = sub_25A9984D8();
                        v80 = sub_25A9984C8();
                        if (v79)
                        {
                          if (v80 <= 64)
                          {
                            v147 = *(*(v71 + 24) + 16);
                            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                            v146 = &v143;
                            MEMORY[0x28223BE20](AssociatedTypeWitness);
                            v144 = &v143 - v83;
                            swift_getAssociatedConformanceWitness();
                            v84 = sub_25A998A78();
                            v145 = &v143;
                            MEMORY[0x28223BE20](v84);
                            sub_25A9989C8();
                            v85 = sub_25A997D88();
                            result = (*(v74 + 8))(&v143 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0), v70);
                            if (v85)
                            {
                              goto LABEL_223;
                            }

                            sub_25A9984B8();
                            v73 = v162;
                          }

                          else
                          {
                            v147 = &v143;
                            MEMORY[0x28223BE20](v80);
                            sub_25A895280();
                            sub_25A9984A8();
                            v81 = sub_25A997D88();
                            result = (*(v74 + 8))(&v143 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0), v70);
                            v73 = v162;
                            if (v81)
                            {
                              goto LABEL_223;
                            }
                          }

                          goto LABEL_137;
                        }

                        v73 = v162;
                        if (v80 < 64)
                        {
                          goto LABEL_134;
                        }
                      }
                    }

LABEL_137:
                    if (sub_25A9984C8() <= 64)
                    {
                      goto LABEL_142;
                    }

                    while (1)
                    {
                      v162 = v69;
                      v86 = v73;
                      *&v153 = 0x7FFFFFFFFFFFFFFFLL;
                      v87 = sub_25A9984D8();
                      v88 = sub_25A9984C8();
                      if (v87)
                      {
                        if (v88 < 65)
                        {
                          goto LABEL_146;
                        }
                      }

                      else if (v88 < 64)
                      {
LABEL_146:
                        sub_25A9984B8();
                        v69 = v162;
LABEL_147:
                        v90 = sub_25A9984B8();
                        result = (*(v74 + 8))(v76, v70);
                        if (v90 >= v69)
                        {
                          v91 = sub_25A8A3504(v69, v90, 0);
                          v92 = type metadata accessor for MLXArray();
                          v93 = v148;
                          v148[3] = v92;
                          *v93 = v91;
                          goto LABEL_149;
                        }

LABEL_218:
                        __break(1u);
LABEL_219:
                        __break(1u);
LABEL_220:
                        __break(1u);
LABEL_221:
                        __break(1u);
LABEL_222:
                        __break(1u);
LABEL_223:
                        __break(1u);
LABEL_224:
                        __break(1u);
                        goto LABEL_225;
                      }

                      MEMORY[0x28223BE20](v88);
                      v75 = &v143 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
                      sub_25A895280();
                      sub_25A9984A8();
                      v89 = sub_25A997D88();
                      (*(v74 + 8))(v75, v70);
                      v73 = v86;
                      v69 = v162;
                      if (v89)
                      {
                        __break(1u);
LABEL_142:
                        if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
                        {
                          continue;
                        }
                      }

                      goto LABEL_147;
                    }
                  }

                  MEMORY[0x28223BE20](v67);
                  v17 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
                  sub_25A895280();
                  sub_25A9984A8();
                  v68 = sub_25A997D88();
                  (v16[1])(v17, v14);
                  if (v68)
                  {
                    __break(1u);
LABEL_118:
                    if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
                    {
                      continue;
                    }
                  }

                  goto LABEL_123;
                }
              }
            }

            else
            {
              v155 = 0;
              v153 = 0u;
              v154 = 0u;
            }
          }

          else
          {
            sub_25A878194(&v150, &qword_27FA04458, &unk_25A9F7FB0);
            v153 = 0u;
            v154 = 0u;
            v155 = 0;
          }

          sub_25A878194(&v153, &qword_27FA047C8, &qword_25A9F8E88);
          __swift_destroy_boxed_opaque_existential_0Tm(v159);
LABEL_32:
          sub_25A8E734C(0x7472617473, 0xE500000000000000, a1, &v153);
          if (*(&v154 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
            if (swift_dynamicCast())
            {
              if (*(&v157 + 1))
              {
                v162 = v2;
                sub_25A87817C(&v156, v159);
                v13 = v160;
                v14 = v161;
                v21 = __swift_project_boxed_opaque_existential_1(v159, v160);
                v16 = &v143;
                v22 = *(v13 - 8);
                v17 = *(v22 + 64);
                MEMORY[0x28223BE20](v21);
                v18 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v22 + 16))(v18);
                if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
                {
                  goto LABEL_79;
                }

                *&v156 = 0x8000000000000000;
                if (sub_25A9984D8())
                {
                  v23 = sub_25A9984C8();
                  if (v23 >= 64)
                  {
                    v147 = &v143;
                    MEMORY[0x28223BE20](v23);
                    sub_25A895280();
                    sub_25A9984A8();
                    v24 = sub_25A997D88();
                    v16 = &v143;
                    result = (*(v22 + 8))(&v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
                    if (v24)
                    {
                      goto LABEL_219;
                    }

                    goto LABEL_79;
                  }
                }

                else
                {
                  v148 = a2;
                  v36 = sub_25A9984D8();
                  v37 = sub_25A9984C8();
                  if (v36)
                  {
                    if (v37 <= 64)
                    {
                      v145 = *(*(v14 + 24) + 16);
                      v42 = swift_getAssociatedTypeWitness();
                      v147 = &v143;
                      MEMORY[0x28223BE20](v42);
                      swift_getAssociatedConformanceWitness();
                      v43 = sub_25A998A78();
                      v146 = &v143;
                      MEMORY[0x28223BE20](v43);
                      sub_25A9989C8();
                      v44 = sub_25A997D88();
                      result = (*(v22 + 8))(&v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
                      if (v44)
                      {
                        goto LABEL_219;
                      }

                      sub_25A9984B8();
                      a2 = v148;
                    }

                    else
                    {
                      MEMORY[0x28223BE20](v37);
                      sub_25A895280();
                      sub_25A9984A8();
                      v38 = sub_25A997D88();
                      result = (*(v22 + 8))(&v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
                      a2 = v148;
                      if (v38)
                      {
                        goto LABEL_219;
                      }
                    }

LABEL_79:
                    if (sub_25A9984C8() <= 64)
                    {
                      goto LABEL_84;
                    }

                    while (1)
                    {
                      v45 = v16;
                      v46 = a2;
                      *&v156 = 0x7FFFFFFFFFFFFFFFLL;
                      v47 = sub_25A9984D8();
                      v48 = sub_25A9984C8();
                      if (v47)
                      {
                        if (v48 < 65)
                        {
                          goto LABEL_88;
                        }
                      }

                      else if (v48 < 64)
                      {
LABEL_88:
                        sub_25A9984B8();
                        a2 = v46;
                        v16 = v45;
LABEL_89:
                        v50 = sub_25A9984B8();
                        (*(v22 + 8))(v18, v13);
                        if (v50 < 0)
                        {
                          __break(1u);
LABEL_91:
                          v51 = sub_25A9984D8();
                          v20 = sub_25A9984C8();
                          if (v51)
                          {
                            if (v20 > 64)
                            {
                              goto LABEL_93;
                            }

                            v162 = *(*(v13 + 24) + 16);
                            v62 = swift_getAssociatedTypeWitness();
                            v147 = &v143;
                            MEMORY[0x28223BE20](v62);
                            v145 = &v143 - v63;
                            swift_getAssociatedConformanceWitness();
                            v64 = sub_25A998A78();
                            v146 = &v143;
                            MEMORY[0x28223BE20](v64);
                            sub_25A9989C8();
                            v65 = sub_25A997D88();
                            result = (v16[1])(&v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
                            if (v65)
                            {
                              goto LABEL_222;
                            }

LABEL_112:
                            sub_25A9984B8();
                          }

                          else if (v20 < 64)
                          {
                            goto LABEL_112;
                          }

                          goto LABEL_113;
                        }

LABEL_108:
                        v61 = sub_25A8A3504(0, v50, 0);
                        a2[3] = type metadata accessor for MLXArray();
                        *a2 = v61;
                        return __swift_destroy_boxed_opaque_existential_0Tm(v159);
                      }

                      MEMORY[0x28223BE20](v48);
                      v17 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
                      sub_25A895280();
                      sub_25A9984A8();
                      v49 = sub_25A997D88();
                      (*(v22 + 8))(v17, v13);
                      a2 = v46;
                      v16 = v45;
                      if (v49)
                      {
                        __break(1u);
LABEL_84:
                        if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
                        {
                          continue;
                        }
                      }

                      goto LABEL_89;
                    }
                  }

                  a2 = v148;
                  if (v37 >= 64)
                  {
                    goto LABEL_79;
                  }
                }

                sub_25A9984B8();
                goto LABEL_79;
              }
            }

            else
            {
              v158 = 0;
              v156 = 0u;
              v157 = 0u;
            }
          }

          else
          {
            sub_25A878194(&v153, &qword_27FA04458, &unk_25A9F7FB0);
            v156 = 0u;
            v157 = 0u;
            v158 = 0;
          }

          sub_25A878194(&v156, &qword_27FA047C8, &qword_25A9F8E88);
          sub_25A8E734C(1886352499, 0xE400000000000000, a1, &v153);
          if (*(&v154 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
            if (swift_dynamicCast())
            {
              if (*(&v157 + 1))
              {
                v162 = v2;
                sub_25A87817C(&v156, v159);
                v26 = v160;
                v27 = v161;
                v28 = __swift_project_boxed_opaque_existential_1(v159, v160);
                v29 = &v143;
                v30 = *(v26 - 8);
                v31 = *(v30 + 64);
                MEMORY[0x28223BE20](v28);
                v32 = &v143 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v30 + 16))(v32);
                if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
                {
                  goto LABEL_97;
                }

                *&v156 = 0x8000000000000000;
                if (sub_25A9984D8())
                {
                  v33 = sub_25A9984C8();
                  if (v33 >= 64)
                  {
                    v147 = &v143;
                    MEMORY[0x28223BE20](v33);
                    sub_25A895280();
                    sub_25A9984A8();
                    v34 = sub_25A997D88();
                    v29 = &v143;
                    result = (*(v30 + 8))(&v143 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
                    if (v34)
                    {
                      goto LABEL_220;
                    }

                    goto LABEL_97;
                  }
                }

                else
                {
                  v148 = a2;
                  v39 = sub_25A9984D8();
                  v40 = sub_25A9984C8();
                  if (v39)
                  {
                    if (v40 <= 64)
                    {
                      v145 = *(*(v27 + 24) + 16);
                      v53 = swift_getAssociatedTypeWitness();
                      v147 = &v143;
                      MEMORY[0x28223BE20](v53);
                      swift_getAssociatedConformanceWitness();
                      v54 = sub_25A998A78();
                      v146 = &v143;
                      MEMORY[0x28223BE20](v54);
                      sub_25A9989C8();
                      v55 = sub_25A997D88();
                      result = (*(v30 + 8))(&v143 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
                      if (v55)
                      {
                        goto LABEL_220;
                      }

                      sub_25A9984B8();
                      a2 = v148;
                    }

                    else
                    {
                      MEMORY[0x28223BE20](v40);
                      sub_25A895280();
                      sub_25A9984A8();
                      v41 = sub_25A997D88();
                      result = (*(v30 + 8))(&v143 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
                      a2 = v148;
                      if (v41)
                      {
                        goto LABEL_220;
                      }
                    }

LABEL_97:
                    if (sub_25A9984C8() <= 64)
                    {
                      goto LABEL_102;
                    }

                    while (1)
                    {
                      v56 = v29;
                      v57 = a2;
                      *&v156 = 0x7FFFFFFFFFFFFFFFLL;
                      v58 = sub_25A9984D8();
                      v59 = sub_25A9984C8();
                      if (v58)
                      {
                        if (v59 < 65)
                        {
                          goto LABEL_106;
                        }
                      }

                      else if (v59 < 64)
                      {
LABEL_106:
                        sub_25A9984B8();
                        a2 = v57;
LABEL_107:
                        v50 = sub_25A9984B8();
                        result = (*(v30 + 8))(v32, v26);
                        if (v50 < 0)
                        {
                          __break(1u);
                          goto LABEL_218;
                        }

                        goto LABEL_108;
                      }

                      MEMORY[0x28223BE20](v59);
                      v31 = &v143 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
                      sub_25A895280();
                      sub_25A9984A8();
                      v60 = sub_25A997D88();
                      (*(v30 + 8))(v31, v26);
                      a2 = v57;
                      v29 = v56;
                      if (v60)
                      {
                        __break(1u);
LABEL_102:
                        if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
                        {
                          continue;
                        }
                      }

                      goto LABEL_107;
                    }
                  }

                  a2 = v148;
                  if (v40 >= 64)
                  {
                    goto LABEL_97;
                  }
                }

                sub_25A9984B8();
                goto LABEL_97;
              }
            }

            else
            {
              v158 = 0;
              v156 = 0u;
              v157 = 0u;
            }
          }

          else
          {
            sub_25A878194(&v153, &qword_27FA04458, &unk_25A9F7FB0);
            v156 = 0u;
            v157 = 0u;
            v158 = 0;
          }

          sub_25A878194(&v156, &qword_27FA047C8, &qword_25A9F8E88);
          sub_25A874F54();
          swift_allocError();
          *v35 = 57;
          return swift_willThrow();
        }
      }

      else
      {
        v158 = 0;
        v156 = 0u;
        v157 = 0u;
      }
    }

    else
    {
      sub_25A878194(&v153, &qword_27FA04458, &unk_25A9F7FB0);
      v156 = 0u;
      v157 = 0u;
      v158 = 0;
    }

    sub_25A878194(&v156, &qword_27FA047C8, &qword_25A9F8E88);
    goto LABEL_32;
  }

  sub_25A87817C(&v153, &v156);
  sub_25A8E734C(1885697139, 0xE400000000000000, a1, v149);
  if (!*(&v149[1] + 1))
  {
    sub_25A878194(v149, &qword_27FA04458, &unk_25A9F7FB0);
    v150 = 0u;
    v151 = 0u;
    v152 = 0;
    goto LABEL_72;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v152 = 0;
    v151 = 0u;
    v150 = 0u;
    goto LABEL_72;
  }

  if (!*(&v151 + 1))
  {
LABEL_72:
    sub_25A878194(&v150, &qword_27FA047C8, &qword_25A9F8E88);
    __swift_destroy_boxed_opaque_existential_0Tm(&v156);
    goto LABEL_59;
  }

  sub_25A87817C(&v150, &v153);
  v6 = v160;
  v5 = v161;
  v7 = __swift_project_boxed_opaque_existential_1(v159, v160);
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10);
  v11 = sub_25A9984D8();
  v148 = a2;
  if ((v11 & 1) != 0 && sub_25A9984C8() > 64)
  {
    *&v150 = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v12 = sub_25A9984C8();
      if (v12 < 64)
      {
        goto LABEL_157;
      }

LABEL_152:
      v162 = &v143;
      MEMORY[0x28223BE20](v12);
      sub_25A895280();
      sub_25A9984A8();
      v95 = sub_25A997D88();
      result = (*(v8 + 8))(&v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if (v95)
      {
        goto LABEL_224;
      }

      goto LABEL_158;
    }

    v94 = sub_25A9984D8();
    v12 = sub_25A9984C8();
    if (v94)
    {
      if (v12 <= 64)
      {
        v162 = *(*(v5 + 24) + 16);
        v96 = swift_getAssociatedTypeWitness();
        v147 = &v143;
        MEMORY[0x28223BE20](v96);
        v145 = &v143 - v97;
        swift_getAssociatedConformanceWitness();
        v98 = sub_25A998A78();
        v146 = &v143;
        MEMORY[0x28223BE20](v98);
        sub_25A9989C8();
        v99 = sub_25A997D88();
        result = (*(v8 + 8))(&v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        if (v99)
        {
          goto LABEL_224;
        }

        goto LABEL_157;
      }

      goto LABEL_152;
    }

    if (v12 < 64)
    {
LABEL_157:
      sub_25A9984B8();
    }
  }

LABEL_158:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_163;
  }

  while (1)
  {
    *&v150 = 0x7FFFFFFFFFFFFFFFLL;
    v100 = sub_25A9984D8();
    v101 = sub_25A9984C8();
    if ((v100 & 1) == 0)
    {
      break;
    }

    if (v101 < 65)
    {
      goto LABEL_167;
    }

LABEL_161:
    MEMORY[0x28223BE20](v101);
    v9 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25A895280();
    sub_25A9984A8();
    v102 = sub_25A997D88();
    (*(v8 + 8))(v9, v6);
    if (v102)
    {
      __break(1u);
LABEL_163:
      if (sub_25A9984C8() == 64 && (sub_25A9984D8() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_168;
  }

  if (v101 >= 64)
  {
    goto LABEL_161;
  }

LABEL_167:
  sub_25A9984B8();
LABEL_168:
  v162 = sub_25A9984B8();
  (*(v8 + 8))(v10, v6);
  v104 = *(&v157 + 1);
  v103 = v158;
  v105 = __swift_project_boxed_opaque_existential_1(&v156, *(&v157 + 1));
  v106 = *(v104 - 8);
  v107 = *(v106 + 64);
  MEMORY[0x28223BE20](v105);
  v108 = &v143 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v106 + 16))(v108);
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_181;
  }

  *&v150 = 0x8000000000000000;
  if ((sub_25A9984D8() & 1) == 0)
  {
    v110 = sub_25A9984D8();
    v109 = sub_25A9984C8();
    if ((v110 & 1) == 0)
    {
      if (v109 < 64)
      {
        goto LABEL_180;
      }

      goto LABEL_181;
    }

    if (v109 > 64)
    {
      goto LABEL_175;
    }

    v147 = *(*(v103 + 24) + 16);
    v112 = swift_getAssociatedTypeWitness();
    v146 = &v143;
    MEMORY[0x28223BE20](v112);
    v144 = &v143 - v113;
    swift_getAssociatedConformanceWitness();
    v114 = sub_25A998A78();
    v145 = &v143;
    MEMORY[0x28223BE20](v114);
    sub_25A9989C8();
    v115 = sub_25A997D88();
    result = (*(v106 + 8))(&v143 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0), v104);
    if ((v115 & 1) == 0)
    {
      goto LABEL_180;
    }

LABEL_225:
    __break(1u);
    goto LABEL_226;
  }

  v109 = sub_25A9984C8();
  if (v109 < 64)
  {
LABEL_180:
    sub_25A9984B8();
    goto LABEL_181;
  }

LABEL_175:
  v147 = &v143;
  MEMORY[0x28223BE20](v109);
  sub_25A895280();
  sub_25A9984A8();
  v111 = sub_25A997D88();
  result = (*(v106 + 8))(&v143 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0), v104);
  if (v111)
  {
    goto LABEL_225;
  }

LABEL_181:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_186;
  }

  while (2)
  {
    *&v150 = 0x7FFFFFFFFFFFFFFFLL;
    v116 = sub_25A9984D8();
    v117 = sub_25A9984C8();
    if (v116)
    {
      if (v117 < 65)
      {
        break;
      }

      goto LABEL_184;
    }

    if (v117 >= 64)
    {
LABEL_184:
      MEMORY[0x28223BE20](v117);
      v107 = &v143 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_25A895280();
      sub_25A9984A8();
      v118 = sub_25A997D88();
      (*(v106 + 8))(v107, v104);
      if ((v118 & 1) == 0)
      {
        goto LABEL_191;
      }

      __break(1u);
LABEL_186:
      if (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0)
      {
        goto LABEL_191;
      }

      continue;
    }

    break;
  }

  sub_25A9984B8();
LABEL_191:
  v119 = sub_25A9984B8();
  (*(v106 + 8))(v108, v104);
  v120 = *(&v154 + 1);
  v121 = v155;
  v122 = __swift_project_boxed_opaque_existential_1(&v153, *(&v154 + 1));
  v123 = &v143;
  v124 = *(v120 - 8);
  v125 = *(v124 + 64);
  MEMORY[0x28223BE20](v122);
  (*(v124 + 16))(&v143 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_205;
  }

  *&v150 = 0x8000000000000000;
  if ((sub_25A9984D8() & 1) == 0)
  {
    v147 = &v143;
    v128 = sub_25A9984D8();
    v129 = sub_25A9984C8();
    if ((v128 & 1) == 0)
    {
      v123 = v147;
      if (v129 >= 64)
      {
        goto LABEL_205;
      }

LABEL_202:
      sub_25A9984B8();
      goto LABEL_205;
    }

    v146 = v119;
    if (v129 > 64)
    {
      MEMORY[0x28223BE20](v129);
      sub_25A895280();
      sub_25A9984A8();
      v130 = sub_25A997D88();
      result = (*(v124 + 8))(&v143 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0), v120);
      v119 = v146;
      v123 = v147;
      if (v130)
      {
        goto LABEL_226;
      }

      goto LABEL_205;
    }

    v143 = *(*(v121 + 24) + 16);
    v131 = swift_getAssociatedTypeWitness();
    v145 = &v143;
    MEMORY[0x28223BE20](v131);
    swift_getAssociatedConformanceWitness();
    v132 = sub_25A998A78();
    v144 = &v143;
    MEMORY[0x28223BE20](v132);
    sub_25A9989C8();
    v133 = sub_25A997D88();
    result = (*(v124 + 8))(&v143 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0), v120);
    if ((v133 & 1) == 0)
    {
      sub_25A9984B8();
      v119 = v146;
      v123 = v147;
      goto LABEL_205;
    }

LABEL_226:
    __break(1u);
    return result;
  }

  v126 = sub_25A9984C8();
  if (v126 < 64)
  {
    goto LABEL_202;
  }

  v146 = v119;
  v147 = &v143;
  MEMORY[0x28223BE20](v126);
  sub_25A895280();
  sub_25A9984A8();
  v127 = sub_25A997D88();
  v123 = &v143;
  result = (*(v124 + 8))(&v143 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0), v120);
  v119 = v146;
  if (v127)
  {
    goto LABEL_226;
  }

LABEL_205:
  if (sub_25A9984C8() <= 64)
  {
    goto LABEL_210;
  }

  while (2)
  {
    v147 = v123;
    *&v150 = 0x7FFFFFFFFFFFFFFFLL;
    v134 = sub_25A9984D8();
    v135 = sub_25A9984C8();
    if (v134)
    {
      if (v135 < 65)
      {
        break;
      }

      goto LABEL_208;
    }

    if (v135 >= 64)
    {
LABEL_208:
      v146 = v119;
      MEMORY[0x28223BE20](v135);
      sub_25A895280();
      sub_25A9984A8();
      v136 = sub_25A997D88();
      (*(v124 + 8))(&v143 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0), v120);
      v119 = v146;
      v123 = v147;
      if ((v136 & 1) == 0)
      {
        goto LABEL_215;
      }

      __break(1u);
LABEL_210:
      if (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0)
      {
        goto LABEL_215;
      }

      continue;
    }

    break;
  }

  sub_25A9984B8();
LABEL_215:
  v137 = sub_25A9984B8();
  result = (*(v124 + 8))(&v143 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0), v120);
  if (!v137)
  {
    goto LABEL_221;
  }

  v138 = sub_25A9739B4(v162, v119, v137);
  v139 = sub_25A930380(v138);

  v140 = sub_25A955844(v139, 0);
  v141 = type metadata accessor for MLXArray();
  v142 = v148;
  v148[3] = v141;
  *v142 = v140;
  __swift_destroy_boxed_opaque_existential_0Tm(&v153);
LABEL_149:
  __swift_destroy_boxed_opaque_existential_0Tm(&v156);
  return __swift_destroy_boxed_opaque_existential_0Tm(v159);
}

uint64_t sub_25A8A7ED4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(97, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v25);
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v7 = sub_25A8DF268(&v25);
  result = sub_25A878194(&v25, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v9 = sub_25A8F3600(0x736D69647065656BLL, 0xE800000000000000), (v10 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v9, &v25), swift_dynamicCast()))
    {
      v11 = v24;
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v13)
    {
      v14 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
      if (!v14)
      {
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v20 = v25;
        v24 = mlx_array_new();
        swift_beginAccess();
        mlx_sum(&v24, *(v7 + 16), v11, *(v20 + 16));
        goto LABEL_24;
      }

      if (qword_27FA043D8 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14 = v12;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v19 = v25;
      v24 = mlx_array_new();
      swift_beginAccess();
      if (v14 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v14 <= 0x7FFFFFFF)
      {
        mlx_sum_axis(&v24, *(v7 + 16), v14, v11, *(v19 + 16));
        goto LABEL_24;
      }

      __break(1u);
    }

    swift_once();
LABEL_15:
    sub_25A998C58();
    v15 = v25;
    v24 = mlx_array_new();
    swift_beginAccess();
    v16 = *(v7 + 16);
    v17 = Array<A>.asInt32.getter(v14);
    v18 = *(v14 + 16);

    mlx_sum_axes(&v24, v16, (v17 + 32), v18, v11, *(v15 + 16));

LABEL_24:

    v21 = v24;
    v22 = type metadata accessor for MLXArray();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    a2[3] = v22;

    *a2 = v23;
  }

  return result;
}

void sub_25A8A8250(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8A8258);
  }

  _Unwind_Resume(a1);
}

char *sub_25A8A8284(uint64_t a1)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(0x6570616873, 0xE500000000000000), (v5 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v4, &v34);
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  sub_25A8780B8(&v34, &v31);
  if (*(&v32 + 1))
  {
    sub_25A873A9C();
    if (swift_dynamicCast())
    {
      v6 = [v30[0] integerValue];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_25A9F8D90;
      *(v7 + 32) = v6;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04830, &qword_25A9FDD40);
      sub_25A878194(&v34, &qword_27FA04458, &unk_25A9F7FB0);
      *&v34 = v7;
      *(&v35 + 1) = v8;
    }
  }

  else
  {
    sub_25A878194(&v31, &qword_27FA04458, &unk_25A9F7FB0);
  }

  sub_25A8780B8(&v34, v30);
  if (!v30[3])
  {
    sub_25A878194(v30, &qword_27FA04458, &unk_25A9F7FB0);
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    goto LABEL_19;
  }

  v9 = *(&v32 + 1);
  if (!*(&v32 + 1))
  {
LABEL_19:
    sub_25A878194(&v31, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_20;
  }

  v10 = v33;
  __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
  v11 = (*(v10 + 8))(v9, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(&v31);
  v13 = sub_25A92F774(v11, v12);

  if (!v13)
  {
LABEL_20:
    sub_25A874F54();
    swift_allocError();
    *v17 = 82;
    swift_willThrow();
    return sub_25A878194(&v34, &qword_27FA04458, &unk_25A9F7FB0);
  }

  if (*(a1 + 16) && (v14 = sub_25A8F3600(0x6570797464, 0xE500000000000000), (v15 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v14, &v31), (swift_dynamicCast() & 1) != 0))
  {
    v16 = sub_25A8F139C(v30[0], v30[1]);
  }

  else
  {
    v16 = 10;
  }

  if (v13 >> 62)
  {
    v19 = sub_25A998848();
    if (v19)
    {
      goto LABEL_24;
    }

LABEL_37:

    v20 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  v19 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_37;
  }

LABEL_24:
  *&v31 = MEMORY[0x277D84F90];
  result = sub_25A937570(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v36 = v2;
    v20 = v31;
    if ((v13 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v19; ++i)
      {
        v22 = [MEMORY[0x25F8509C0](i v13)];
        swift_unknownObjectRelease();
        *&v31 = v20;
        v24 = *(v20 + 16);
        v23 = *(v20 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_25A937570((v23 > 1), v24 + 1, 1);
          v20 = v31;
        }

        *(v20 + 16) = v24 + 1;
        *(v20 + 8 * v24 + 32) = v22;
      }
    }

    else
    {
      v25 = (v13 + 32);
      do
      {
        v26 = [*v25 integerValue];
        *&v31 = v20;
        v28 = *(v20 + 16);
        v27 = *(v20 + 24);
        if (v28 >= v27 >> 1)
        {
          v29 = v26;
          sub_25A937570((v27 > 1), v28 + 1, 1);
          v26 = v29;
          v20 = v31;
        }

        *(v20 + 16) = v28 + 1;
        *(v20 + 8 * v28 + 32) = v26;
        ++v25;
        --v19;
      }

      while (v19);
    }

LABEL_38:
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    sub_25A953AF0(v20, v16, v31);
  }

  __break(1u);
  return result;
}

uint64_t sub_25A8A87A8(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(97, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v10);
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v6 = sub_25A8DF268(&v10);
  result = sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10;
    v9 = mlx_array_new();
    swift_beginAccess();
    mlx_zeros_like(&v9, *(v6 + 16), *(v8 + 16));
  }

  return result;
}

void sub_25A8A8934(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8A893CLL);
  }

  _Unwind_Resume(a1);
}

char *sub_25A8A8948@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(0x6570616873, 0xE500000000000000), (v5 & 1) == 0))
  {
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    goto LABEL_11;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_11;
  }

  v6 = *(&v31 + 1);
  if (!*(&v31 + 1))
  {
LABEL_11:
    sub_25A878194(&v30, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_12;
  }

  v7 = v32;
  __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
  v8 = (*(v7 + 8))(v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(&v30);
  v10 = sub_25A92F774(v8, v9);

  if (!v10)
  {
LABEL_12:
    sub_25A874F54();
    swift_allocError();
    *v14 = 83;
    return swift_willThrow();
  }

  if (*(a1 + 16) && (v11 = sub_25A8F3600(0x6570797464, 0xE500000000000000), (v12 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v11, &v30), (swift_dynamicCast() & 1) != 0))
  {
    v13 = sub_25A8F139C(v29[0], v29[1]);
  }

  else
  {
    v13 = 10;
  }

  if (v10 >> 62)
  {
    v16 = sub_25A998848();
    if (v16)
    {
      goto LABEL_17;
    }

LABEL_30:

    v17 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v16 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_30;
  }

LABEL_17:
  *&v30 = MEMORY[0x277D84F90];
  result = sub_25A937570(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v28 = v13;
    v33 = a2;
    v17 = v30;
    if ((v10 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      do
      {
        v19 = v10;
        v20 = [MEMORY[0x25F8509C0](v18 v10)];
        swift_unknownObjectRelease();
        *&v30 = v17;
        v22 = *(v17 + 16);
        v21 = *(v17 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_25A937570((v21 > 1), v22 + 1, 1);
          v17 = v30;
        }

        ++v18;
        *(v17 + 16) = v22 + 1;
        *(v17 + 8 * v22 + 32) = v20;
        v10 = v19;
      }

      while (v16 != v18);
    }

    else
    {
      v23 = (v10 + 32);
      do
      {
        v24 = [*v23 integerValue];
        *&v30 = v17;
        v26 = *(v17 + 16);
        v25 = *(v17 + 24);
        if (v26 >= v25 >> 1)
        {
          v27 = v24;
          sub_25A937570((v25 > 1), v26 + 1, 1);
          v24 = v27;
          v17 = v30;
        }

        *(v17 + 16) = v26 + 1;
        *(v17 + 8 * v26 + 32) = v24;
        ++v23;
        --v16;
      }

      while (v16);
    }

    v13 = v28;
LABEL_31:
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    sub_25A953C7C(v17, v13, v30);
  }

  __break(1u);
  return result;
}

uint64_t sub_25A8A8D3C(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(97, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v10);
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v6 = sub_25A8DF268(&v10);
  result = sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10;
    v9 = mlx_array_new();
    swift_beginAccess();
    mlx_ones_like(&v9, *(v6 + 16), *(v8 + 16));
  }

  return result;
}

void sub_25A8A8EC8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8A8ED0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8A8EDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v257 = *MEMORY[0x277D85DE8];
  sub_25A8E734C(7173486, 0xE300000000000000, a1, &v249);
  if (!v250)
  {
    sub_25A878194(&v249, &qword_27FA04458, &unk_25A9F7FB0);
    v251 = 0u;
    v252 = 0u;
    v253 = 0;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v253 = 0;
    v251 = 0u;
    v252 = 0u;
    goto LABEL_9;
  }

  if (!*(&v252 + 1))
  {
LABEL_9:
    sub_25A878194(&v251, &qword_27FA047C8, &qword_25A9F8E88);
    sub_25A874F54();
    swift_allocError();
    *v4 = 84;
    return swift_willThrow();
  }

  sub_25A87817C(&v251, v254);
  sub_25A8E734C(0x6570797464, 0xE500000000000000, a1, &v251);
  if (*(&v252 + 1))
  {
    if (swift_dynamicCast())
    {
      v3 = sub_25A8F139C(v249, *(&v249 + 1));

      goto LABEL_12;
    }
  }

  else
  {
    sub_25A878194(&v251, &qword_27FA04458, &unk_25A9F7FB0);
  }

  v3 = 13;
LABEL_12:
  sub_25A8E734C(0x7472617473, 0xE500000000000000, a1, &v251);
  if (!*(&v252 + 1))
  {
LABEL_27:
    sub_25A878194(&v251, &qword_27FA04458, &unk_25A9F7FB0);
    goto LABEL_28;
  }

  sub_25A873A9C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    sub_25A874F54();
    swift_allocError();
    *v15 = 84;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0Tm(v254);
  }

  v6 = v249;
  sub_25A8E734C(1886352499, 0xE400000000000000, a1, &v251);
  if (!*(&v252 + 1))
  {

    goto LABEL_27;
  }

  if (!swift_dynamicCast())
  {

    goto LABEL_28;
  }

  v7 = v249;
  v248 = v249;
  if (v3 <= 5u)
  {
    if (v3 <= 2u)
    {
      if (v3)
      {
        if (v3 != 1)
        {
          if (v3 == 2)
          {
            LODWORD(v245) = [v6 unsignedShortValue];
            LODWORD(v244) = [v7 unsignedShortValue];
            v8 = v255;
            v9 = v256;
            v10 = __swift_project_boxed_opaque_existential_1(v254, v255);
            v246 = &v239;
            v11 = *(*(v8 - 8) + 64);
            MEMORY[0x28223BE20](v10);
            v12 = &v239 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
            v247 = v13;
            (*(v13 + 16))(v12);
            if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
            {
              goto LABEL_172;
            }

            *&v251 = 0x8000000000000000;
            if (sub_25A9984D8())
            {
              v14 = sub_25A9984C8();
              if (v14 < 64)
              {
LABEL_171:
                sub_25A9984B8();
                goto LABEL_172;
              }
            }

            else
            {
              v98 = sub_25A9984D8();
              v14 = sub_25A9984C8();
              if ((v98 & 1) == 0)
              {
                if (v14 < 64)
                {
                  goto LABEL_171;
                }

LABEL_172:
                if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
                {
                  goto LABEL_182;
                }

                *&v251 = 0x7FFFFFFFFFFFFFFFLL;
                v128 = sub_25A9984D8();
                v129 = sub_25A9984C8();
                if (v128)
                {
                  if (v129 >= 65)
                  {
LABEL_181:
                    v243 = &v239;
                    MEMORY[0x28223BE20](v129);
                    sub_25A895280();
                    sub_25A9984A8();
                    v130 = sub_25A997D88();
                    result = (v247[1])(&v239 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
                    if (v130)
                    {
LABEL_379:
                      __break(1u);
                      goto LABEL_380;
                    }

                    goto LABEL_182;
                  }
                }

                else if (v129 >= 64)
                {
                  goto LABEL_181;
                }

                sub_25A9984B8();
LABEL_182:
                v131 = sub_25A9984B8();
                (v247[1])(v12, v8);
                if (qword_27FA043D8 != -1)
                {
                  swift_once();
                }

                sub_25A998C58();
                v132 = v251;
                result = mlx_array_new();
                *&v251 = result;
                if (v131 >= 0xFFFFFFFF80000000)
                {
                  if (v131 <= 0x7FFFFFFF)
                  {
                    mlx_linspace(&v251, v131, 2, *(v132 + 16), v245, v244);
                  }

                  goto LABEL_368;
                }

                __break(1u);
                goto LABEL_358;
              }

              if (v14 <= 64)
              {
                v243 = *(*(v9 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v241 = &v239;
                MEMORY[0x28223BE20](AssociatedTypeWitness);
                v126 = &v239 - v125;
                swift_getAssociatedConformanceWitness();
                v242 = v126;
                v127 = sub_25A998A78();
                v240 = &v239;
                MEMORY[0x28223BE20](v127);
                sub_25A9989C8();
                LOBYTE(v126) = sub_25A997D88();
                result = (v247[1])(&v239 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
                if (v126)
                {
LABEL_390:
                  __break(1u);
                  goto LABEL_391;
                }

                goto LABEL_171;
              }
            }

            v243 = &v239;
            MEMORY[0x28223BE20](v14);
            sub_25A895280();
            sub_25A9984A8();
            v109 = sub_25A997D88();
            result = (v247[1])(&v239 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
            if (v109)
            {
              goto LABEL_390;
            }

            goto LABEL_172;
          }

          goto LABEL_56;
        }

        LODWORD(v245) = [v6 unsignedCharValue];
        LODWORD(v244) = [v7 unsignedCharValue];
        v66 = v255;
        v67 = v256;
        v68 = __swift_project_boxed_opaque_existential_1(v254, v255);
        v246 = &v239;
        v69 = *(*(v66 - 8) + 64);
        MEMORY[0x28223BE20](v68);
        v70 = &v239 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
        v247 = v71;
        (*(v71 + 16))(v70);
        if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
        {
          *&v251 = 0x8000000000000000;
          if (sub_25A9984D8())
          {
            v72 = sub_25A9984C8();
            if (v72 < 64)
            {
LABEL_290:
              sub_25A9984B8();
              goto LABEL_291;
            }

            goto LABEL_140;
          }

          v105 = sub_25A9984D8();
          v72 = sub_25A9984C8();
          if (v105)
          {
            if (v72 <= 64)
            {
              v243 = *(*(v67 + 24) + 16);
              v199 = swift_getAssociatedTypeWitness();
              v241 = &v239;
              MEMORY[0x28223BE20](v199);
              v201 = &v239 - v200;
              swift_getAssociatedConformanceWitness();
              v242 = v201;
              v202 = sub_25A998A78();
              v240 = &v239;
              MEMORY[0x28223BE20](v202);
              sub_25A9989C8();
              LOBYTE(v201) = sub_25A997D88();
              result = (v247[1])(&v239 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0), v66);
              if (v201)
              {
LABEL_397:
                __break(1u);
                goto LABEL_398;
              }

              goto LABEL_290;
            }

LABEL_140:
            v243 = &v239;
            MEMORY[0x28223BE20](v72);
            sub_25A895280();
            sub_25A9984A8();
            v118 = sub_25A997D88();
            result = (v247[1])(&v239 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0), v66);
            if (v118)
            {
              goto LABEL_397;
            }

            goto LABEL_291;
          }

          if (v72 < 64)
          {
            goto LABEL_290;
          }
        }

LABEL_291:
        if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
        {
          goto LABEL_301;
        }

        *&v251 = 0x7FFFFFFFFFFFFFFFLL;
        v203 = sub_25A9984D8();
        v204 = sub_25A9984C8();
        if (v203)
        {
          if (v204 >= 65)
          {
LABEL_300:
            v243 = &v239;
            MEMORY[0x28223BE20](v204);
            sub_25A895280();
            sub_25A9984A8();
            v205 = sub_25A997D88();
            result = (v247[1])(&v239 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0), v66);
            if (v205)
            {
LABEL_386:
              __break(1u);
              goto LABEL_387;
            }

LABEL_301:
            v206 = sub_25A9984B8();
            (v247[1])(v70, v66);
            if (qword_27FA043D8 != -1)
            {
              swift_once();
            }

            sub_25A998C58();
            v207 = v251;
            result = mlx_array_new();
            *&v251 = result;
            if (v206 >= 0xFFFFFFFF80000000)
            {
              if (v206 <= 0x7FFFFFFF)
              {
                mlx_linspace(&v251, v206, 1, *(v207 + 16), v245, v244);
              }

              goto LABEL_375;
            }

            goto LABEL_364;
          }
        }

        else if (v204 >= 64)
        {
          goto LABEL_300;
        }

        sub_25A9984B8();
        goto LABEL_301;
      }

LABEL_56:
      sub_25A874F54();
      swift_allocError();
      *v41 = 84;
      swift_willThrow();

      return __swift_destroy_boxed_opaque_existential_0Tm(v254);
    }

    if (v3 != 3)
    {
      if (v3 != 4)
      {
        if (v3 != 5)
        {
          goto LABEL_56;
        }

        LODWORD(v245) = [v6 charValue];
        LODWORD(v244) = [v7 charValue];
        v23 = v255;
        v24 = v256;
        v25 = __swift_project_boxed_opaque_existential_1(v254, v255);
        v246 = &v239;
        v26 = *(*(v23 - 8) + 64);
        MEMORY[0x28223BE20](v25);
        v27 = &v239 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
        v247 = v28;
        (*(v28 + 16))(v27);
        if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
        {
          *&v251 = 0x8000000000000000;
          if (sub_25A9984D8())
          {
            v29 = sub_25A9984C8();
            if (v29 < 64)
            {
LABEL_205:
              sub_25A9984B8();
              goto LABEL_206;
            }

            goto LABEL_130;
          }

          v100 = sub_25A9984D8();
          v29 = sub_25A9984C8();
          if (v100)
          {
            if (v29 <= 64)
            {
              v243 = *(*(v24 + 24) + 16);
              v142 = swift_getAssociatedTypeWitness();
              v241 = &v239;
              MEMORY[0x28223BE20](v142);
              v144 = &v239 - v143;
              swift_getAssociatedConformanceWitness();
              v242 = v144;
              v145 = sub_25A998A78();
              v240 = &v239;
              MEMORY[0x28223BE20](v145);
              sub_25A9989C8();
              LOBYTE(v144) = sub_25A997D88();
              result = (v247[1])(&v239 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
              if (v144)
              {
LABEL_392:
                __break(1u);
                goto LABEL_393;
              }

              goto LABEL_205;
            }

LABEL_130:
            v243 = &v239;
            MEMORY[0x28223BE20](v29);
            sub_25A895280();
            sub_25A9984A8();
            v111 = sub_25A997D88();
            result = (v247[1])(&v239 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
            if (v111)
            {
              goto LABEL_392;
            }

            goto LABEL_206;
          }

          if (v29 < 64)
          {
            goto LABEL_205;
          }
        }

LABEL_206:
        if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
        {
          goto LABEL_216;
        }

        *&v251 = 0x7FFFFFFFFFFFFFFFLL;
        v146 = sub_25A9984D8();
        v147 = sub_25A9984C8();
        if (v146)
        {
          if (v147 >= 65)
          {
LABEL_215:
            v243 = &v239;
            MEMORY[0x28223BE20](v147);
            sub_25A895280();
            sub_25A9984A8();
            v148 = sub_25A997D88();
            result = (v247[1])(&v239 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
            if (v148)
            {
LABEL_381:
              __break(1u);
              goto LABEL_382;
            }

LABEL_216:
            v149 = sub_25A9984B8();
            (v247[1])(v27, v23);
            if (qword_27FA043D8 != -1)
            {
              swift_once();
            }

            sub_25A998C58();
            v150 = v251;
            result = mlx_array_new();
            *&v251 = result;
            if (v149 >= 0xFFFFFFFF80000000)
            {
              if (v149 <= 0x7FFFFFFF)
              {
                mlx_linspace(&v251, v149, 5, *(v150 + 16), v245, v244);
              }

              goto LABEL_370;
            }

            goto LABEL_359;
          }
        }

        else if (v147 >= 64)
        {
          goto LABEL_215;
        }

        sub_25A9984B8();
        goto LABEL_216;
      }

      v245 = [v6 unsignedLongLongValue];
      v244 = [v7 unsignedLongLongValue];
      v80 = v255;
      v81 = v256;
      v82 = __swift_project_boxed_opaque_existential_1(v254, v255);
      v246 = &v239;
      v83 = *(*(v80 - 8) + 64);
      MEMORY[0x28223BE20](v82);
      v84 = &v239 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
      v247 = v85;
      (*(v85 + 16))(v84);
      if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
      {
        *&v251 = 0x8000000000000000;
        if (sub_25A9984D8())
        {
          v86 = sub_25A9984C8();
          if (v86 < 64)
          {
LABEL_324:
            sub_25A9984B8();
            goto LABEL_325;
          }

          goto LABEL_144;
        }

        v107 = sub_25A9984D8();
        v86 = sub_25A9984C8();
        if (v107)
        {
          if (v86 <= 64)
          {
            v243 = *(*(v81 + 24) + 16);
            v217 = swift_getAssociatedTypeWitness();
            v241 = &v239;
            MEMORY[0x28223BE20](v217);
            v219 = &v239 - v218;
            swift_getAssociatedConformanceWitness();
            v242 = v219;
            v220 = sub_25A998A78();
            v240 = &v239;
            MEMORY[0x28223BE20](v220);
            sub_25A9989C8();
            LOBYTE(v219) = sub_25A997D88();
            result = (v247[1])(&v239 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0), v80);
            if (v219)
            {
LABEL_399:
              __break(1u);
              goto LABEL_400;
            }

            goto LABEL_324;
          }

LABEL_144:
          v243 = &v239;
          MEMORY[0x28223BE20](v86);
          sub_25A895280();
          sub_25A9984A8();
          v120 = sub_25A997D88();
          result = (v247[1])(&v239 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0), v80);
          if (v120)
          {
            goto LABEL_399;
          }

          goto LABEL_325;
        }

        if (v86 < 64)
        {
          goto LABEL_324;
        }
      }

LABEL_325:
      if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
      {
        goto LABEL_335;
      }

      *&v251 = 0x7FFFFFFFFFFFFFFFLL;
      v221 = sub_25A9984D8();
      v222 = sub_25A9984C8();
      if (v221)
      {
        if (v222 >= 65)
        {
LABEL_334:
          v243 = &v239;
          MEMORY[0x28223BE20](v222);
          sub_25A895280();
          sub_25A9984A8();
          v223 = sub_25A997D88();
          result = (v247[1])(&v239 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0), v80);
          if (v223)
          {
LABEL_388:
            __break(1u);
            goto LABEL_389;
          }

LABEL_335:
          v224 = sub_25A9984B8();
          (v247[1])(v84, v80);
          if (qword_27FA043D8 != -1)
          {
            swift_once();
          }

          sub_25A998C58();
          v225 = v251;
          result = mlx_array_new();
          *&v251 = result;
          if (v224 >= 0xFFFFFFFF80000000)
          {
            if (v224 <= 0x7FFFFFFF)
            {
              mlx_linspace(&v251, v224, 4, *(v225 + 16), v245, v244);
            }

            goto LABEL_377;
          }

          goto LABEL_366;
        }
      }

      else if (v222 >= 64)
      {
        goto LABEL_334;
      }

      sub_25A9984B8();
      goto LABEL_335;
    }

    LODWORD(v245) = [v6 unsignedIntValue];
    LODWORD(v244) = [v7 unsignedIntValue];
    v49 = v255;
    v50 = v256;
    v51 = __swift_project_boxed_opaque_existential_1(v254, v255);
    v246 = &v239;
    v52 = *(*(v49 - 8) + 64);
    MEMORY[0x28223BE20](v51);
    v53 = &v239 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    v247 = v54;
    (*(v54 + 16))(v53);
    if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
    {
      *&v251 = 0x8000000000000000;
      if (sub_25A9984D8())
      {
        v55 = sub_25A9984C8();
        if (v55 < 64)
        {
LABEL_256:
          sub_25A9984B8();
          goto LABEL_257;
        }

        goto LABEL_136;
      }

      v103 = sub_25A9984D8();
      v55 = sub_25A9984C8();
      if (v103)
      {
        if (v55 <= 64)
        {
          v243 = *(*(v50 + 24) + 16);
          v173 = swift_getAssociatedTypeWitness();
          v241 = &v239;
          MEMORY[0x28223BE20](v173);
          v175 = &v239 - v174;
          swift_getAssociatedConformanceWitness();
          v242 = v175;
          v176 = sub_25A998A78();
          v240 = &v239;
          MEMORY[0x28223BE20](v176);
          sub_25A9989C8();
          LOBYTE(v175) = sub_25A997D88();
          result = (v247[1])(&v239 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0), v49);
          if (v175)
          {
LABEL_395:
            __break(1u);
            goto LABEL_396;
          }

          goto LABEL_256;
        }

LABEL_136:
        v243 = &v239;
        MEMORY[0x28223BE20](v55);
        sub_25A895280();
        sub_25A9984A8();
        v116 = sub_25A997D88();
        result = (v247[1])(&v239 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0), v49);
        if (v116)
        {
          goto LABEL_395;
        }

        goto LABEL_257;
      }

      if (v55 < 64)
      {
        goto LABEL_256;
      }
    }

LABEL_257:
    if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
    {
      goto LABEL_267;
    }

    *&v251 = 0x7FFFFFFFFFFFFFFFLL;
    v177 = sub_25A9984D8();
    v178 = sub_25A9984C8();
    if (v177)
    {
      if (v178 >= 65)
      {
LABEL_266:
        v243 = &v239;
        MEMORY[0x28223BE20](v178);
        sub_25A895280();
        sub_25A9984A8();
        v179 = sub_25A997D88();
        result = (v247[1])(&v239 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0), v49);
        if (v179)
        {
LABEL_384:
          __break(1u);
          goto LABEL_385;
        }

LABEL_267:
        v180 = sub_25A9984B8();
        (v247[1])(v53, v49);
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v181 = v251;
        result = mlx_array_new();
        *&v251 = result;
        if (v180 >= 0xFFFFFFFF80000000)
        {
          if (v180 <= 0x7FFFFFFF)
          {
            mlx_linspace(&v251, v180, 3, *(v181 + 16), v245, v244);
          }

          goto LABEL_373;
        }

        goto LABEL_362;
      }
    }

    else if (v178 >= 64)
    {
      goto LABEL_266;
    }

    sub_25A9984B8();
    goto LABEL_267;
  }

  if (v3 <= 8u)
  {
    if (v3 != 6)
    {
      if (v3 != 7)
      {
        if (v3 != 8)
        {
          goto LABEL_56;
        }

        v245 = [v6 longLongValue];
        v244 = [v7 longLongValue];
        v16 = v255;
        v17 = v256;
        v18 = __swift_project_boxed_opaque_existential_1(v254, v255);
        v246 = &v239;
        v19 = *(*(v16 - 8) + 64);
        MEMORY[0x28223BE20](v18);
        v20 = &v239 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        v247 = v21;
        (*(v21 + 16))(v20);
        if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
        {
          *&v251 = 0x8000000000000000;
          if (sub_25A9984D8())
          {
            v22 = sub_25A9984C8();
            if (v22 < 64)
            {
LABEL_188:
              sub_25A9984B8();
              goto LABEL_189;
            }

            goto LABEL_128;
          }

          v99 = sub_25A9984D8();
          v22 = sub_25A9984C8();
          if (v99)
          {
            if (v22 <= 64)
            {
              v243 = *(*(v17 + 24) + 16);
              v133 = swift_getAssociatedTypeWitness();
              v241 = &v239;
              MEMORY[0x28223BE20](v133);
              v135 = &v239 - v134;
              swift_getAssociatedConformanceWitness();
              v242 = v135;
              v136 = sub_25A998A78();
              v240 = &v239;
              MEMORY[0x28223BE20](v136);
              sub_25A9989C8();
              LOBYTE(v135) = sub_25A997D88();
              result = (v247[1])(&v239 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
              if (v135)
              {
LABEL_391:
                __break(1u);
                goto LABEL_392;
              }

              goto LABEL_188;
            }

LABEL_128:
            v243 = &v239;
            MEMORY[0x28223BE20](v22);
            sub_25A895280();
            sub_25A9984A8();
            v110 = sub_25A997D88();
            result = (v247[1])(&v239 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
            if (v110)
            {
              goto LABEL_391;
            }

            goto LABEL_189;
          }

          if (v22 < 64)
          {
            goto LABEL_188;
          }
        }

LABEL_189:
        if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
        {
          goto LABEL_199;
        }

        *&v251 = 0x7FFFFFFFFFFFFFFFLL;
        v137 = sub_25A9984D8();
        v138 = sub_25A9984C8();
        if (v137)
        {
          if (v138 >= 65)
          {
LABEL_198:
            v243 = &v239;
            MEMORY[0x28223BE20](v138);
            sub_25A895280();
            sub_25A9984A8();
            v139 = sub_25A997D88();
            result = (v247[1])(&v239 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
            if (v139)
            {
LABEL_380:
              __break(1u);
              goto LABEL_381;
            }

LABEL_199:
            v140 = sub_25A9984B8();
            (v247[1])(v20, v16);
            if (qword_27FA043D8 != -1)
            {
              swift_once();
            }

            sub_25A998C58();
            v141 = v251;
            result = mlx_array_new();
            *&v251 = result;
            if (v140 >= 0xFFFFFFFF80000000)
            {
              if (v140 <= 0x7FFFFFFF)
              {
                mlx_linspace(&v251, v140, 8, *(v141 + 16), v245, v244);
              }

              goto LABEL_369;
            }

LABEL_358:
            __break(1u);
LABEL_359:
            __break(1u);
LABEL_360:
            __break(1u);
LABEL_361:
            __break(1u);
LABEL_362:
            __break(1u);
LABEL_363:
            __break(1u);
LABEL_364:
            __break(1u);
LABEL_365:
            __break(1u);
LABEL_366:
            __break(1u);
LABEL_367:
            __break(1u);
LABEL_368:
            __break(1u);
LABEL_369:
            __break(1u);
LABEL_370:
            __break(1u);
LABEL_371:
            __break(1u);
LABEL_372:
            __break(1u);
LABEL_373:
            __break(1u);
LABEL_374:
            __break(1u);
LABEL_375:
            __break(1u);
LABEL_376:
            __break(1u);
LABEL_377:
            __break(1u);
LABEL_378:
            __break(1u);
            goto LABEL_379;
          }
        }

        else if (v138 >= 64)
        {
          goto LABEL_198;
        }

        sub_25A9984B8();
        goto LABEL_199;
      }

      LODWORD(v245) = [v6 intValue];
      LODWORD(v244) = [v7 intValue];
      v73 = v255;
      v74 = v256;
      v75 = __swift_project_boxed_opaque_existential_1(v254, v255);
      v246 = &v239;
      v76 = *(*(v73 - 8) + 64);
      MEMORY[0x28223BE20](v75);
      v77 = &v239 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
      v247 = v78;
      (*(v78 + 16))(v77);
      if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
      {
        *&v251 = 0x8000000000000000;
        if (sub_25A9984D8())
        {
          v79 = sub_25A9984C8();
          if (v79 < 64)
          {
LABEL_307:
            sub_25A9984B8();
            goto LABEL_308;
          }

          goto LABEL_142;
        }

        v106 = sub_25A9984D8();
        v79 = sub_25A9984C8();
        if (v106)
        {
          if (v79 <= 64)
          {
            v243 = *(*(v74 + 24) + 16);
            v208 = swift_getAssociatedTypeWitness();
            v241 = &v239;
            MEMORY[0x28223BE20](v208);
            v210 = &v239 - v209;
            swift_getAssociatedConformanceWitness();
            v242 = v210;
            v211 = sub_25A998A78();
            v240 = &v239;
            MEMORY[0x28223BE20](v211);
            sub_25A9989C8();
            LOBYTE(v210) = sub_25A997D88();
            result = (v247[1])(&v239 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0), v73);
            if (v210)
            {
LABEL_398:
              __break(1u);
              goto LABEL_399;
            }

            goto LABEL_307;
          }

LABEL_142:
          v243 = &v239;
          MEMORY[0x28223BE20](v79);
          sub_25A895280();
          sub_25A9984A8();
          v119 = sub_25A997D88();
          result = (v247[1])(&v239 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0), v73);
          if (v119)
          {
            goto LABEL_398;
          }

          goto LABEL_308;
        }

        if (v79 < 64)
        {
          goto LABEL_307;
        }
      }

LABEL_308:
      if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
      {
        goto LABEL_318;
      }

      *&v251 = 0x7FFFFFFFFFFFFFFFLL;
      v212 = sub_25A9984D8();
      v213 = sub_25A9984C8();
      if (v212)
      {
        if (v213 >= 65)
        {
LABEL_317:
          v243 = &v239;
          MEMORY[0x28223BE20](v213);
          sub_25A895280();
          sub_25A9984A8();
          v214 = sub_25A997D88();
          result = (v247[1])(&v239 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0), v73);
          if (v214)
          {
LABEL_387:
            __break(1u);
            goto LABEL_388;
          }

LABEL_318:
          v215 = sub_25A9984B8();
          (v247[1])(v77, v73);
          if (qword_27FA043D8 != -1)
          {
            swift_once();
          }

          sub_25A998C58();
          v216 = v251;
          result = mlx_array_new();
          *&v251 = result;
          if (v215 >= 0xFFFFFFFF80000000)
          {
            if (v215 <= 0x7FFFFFFF)
            {
              mlx_linspace(&v251, v215, 7, *(v216 + 16), v245, v244);
            }

            goto LABEL_376;
          }

          goto LABEL_365;
        }
      }

      else if (v213 >= 64)
      {
        goto LABEL_317;
      }

      sub_25A9984B8();
      goto LABEL_318;
    }

    LODWORD(v245) = [v6 shortValue];
    LODWORD(v244) = [v7 shortValue];
    v42 = v255;
    v43 = v256;
    v44 = __swift_project_boxed_opaque_existential_1(v254, v255);
    v246 = &v239;
    v45 = *(*(v42 - 8) + 64);
    MEMORY[0x28223BE20](v44);
    v46 = &v239 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    v247 = v47;
    (*(v47 + 16))(v46);
    if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
    {
      *&v251 = 0x8000000000000000;
      if (sub_25A9984D8())
      {
        v48 = sub_25A9984C8();
        if (v48 < 64)
        {
LABEL_239:
          sub_25A9984B8();
          goto LABEL_240;
        }

        goto LABEL_134;
      }

      v102 = sub_25A9984D8();
      v48 = sub_25A9984C8();
      if (v102)
      {
        if (v48 <= 64)
        {
          v243 = *(*(v43 + 24) + 16);
          v164 = swift_getAssociatedTypeWitness();
          v241 = &v239;
          MEMORY[0x28223BE20](v164);
          v166 = &v239 - v165;
          swift_getAssociatedConformanceWitness();
          v242 = v166;
          v167 = sub_25A998A78();
          v240 = &v239;
          MEMORY[0x28223BE20](v167);
          sub_25A9989C8();
          LOBYTE(v166) = sub_25A997D88();
          result = (v247[1])(&v239 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
          if (v166)
          {
LABEL_394:
            __break(1u);
            goto LABEL_395;
          }

          goto LABEL_239;
        }

LABEL_134:
        v243 = &v239;
        MEMORY[0x28223BE20](v48);
        sub_25A895280();
        sub_25A9984A8();
        v115 = sub_25A997D88();
        result = (v247[1])(&v239 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
        if (v115)
        {
          goto LABEL_394;
        }

        goto LABEL_240;
      }

      if (v48 < 64)
      {
        goto LABEL_239;
      }
    }

LABEL_240:
    if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
    {
      goto LABEL_250;
    }

    *&v251 = 0x7FFFFFFFFFFFFFFFLL;
    v168 = sub_25A9984D8();
    v169 = sub_25A9984C8();
    if (v168)
    {
      if (v169 >= 65)
      {
LABEL_249:
        v243 = &v239;
        MEMORY[0x28223BE20](v169);
        sub_25A895280();
        sub_25A9984A8();
        v170 = sub_25A997D88();
        result = (v247[1])(&v239 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
        if (v170)
        {
LABEL_383:
          __break(1u);
          goto LABEL_384;
        }

LABEL_250:
        v171 = sub_25A9984B8();
        (v247[1])(v46, v42);
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v172 = v251;
        result = mlx_array_new();
        *&v251 = result;
        if (v171 >= 0xFFFFFFFF80000000)
        {
          if (v171 <= 0x7FFFFFFF)
          {
            mlx_linspace(&v251, v171, 6, *(v172 + 16), v245, v244);
          }

          goto LABEL_372;
        }

        goto LABEL_361;
      }
    }

    else if (v169 >= 64)
    {
      goto LABEL_249;
    }

    sub_25A9984B8();
    goto LABEL_250;
  }

  if (v3 == 9)
  {
    [v6 floatValue];
    _S8 = v56;
    [v7 floatValue];
    _S9 = v58;
    v60 = v255;
    v61 = v256;
    v62 = __swift_project_boxed_opaque_existential_1(v254, v255);
    v246 = &v239;
    v63 = *(*(v60 - 8) + 64);
    MEMORY[0x28223BE20](v62);
    v247 = v64;
    (*(v64 + 16))(&v239 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
    {
      goto LABEL_274;
    }

    *&v251 = 0x8000000000000000;
    if (sub_25A9984D8())
    {
      v65 = sub_25A9984C8();
      if (v65 < 64)
      {
LABEL_273:
        sub_25A9984B8();
        goto LABEL_274;
      }
    }

    else
    {
      v104 = sub_25A9984D8();
      v65 = sub_25A9984C8();
      if ((v104 & 1) == 0)
      {
        if (v65 < 64)
        {
          goto LABEL_273;
        }

LABEL_274:
        if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
        {
          goto LABEL_284;
        }

        *&v251 = 0x7FFFFFFFFFFFFFFFLL;
        v186 = sub_25A9984D8();
        v187 = sub_25A9984C8();
        if (v186)
        {
          if (v187 >= 65)
          {
LABEL_283:
            MEMORY[0x28223BE20](v187);
            sub_25A895280();
            sub_25A9984A8();
            v188 = sub_25A997D88();
            result = (v247[1])(&v239 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0), v60);
            if (v188)
            {
LABEL_385:
              __break(1u);
              goto LABEL_386;
            }

LABEL_284:
            v189 = sub_25A9984B8();
            (v247[1])(&v239 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0), v60);
            if (qword_27FA043D8 != -1)
            {
              swift_once();
            }

            sub_25A998C58();
            v190 = v251;
            result = mlx_array_new();
            *&v251 = result;
            if (v189 >= 0xFFFFFFFF80000000)
            {
              if (v189 <= 0x7FFFFFFF)
              {
                __asm
                {
                  FCVT            H0, S8
                  FCVT            H1, S9
                  FCVT            D0, H0
                  FCVT            D1, H1
                }

                mlx_linspace(&v251, v189, 9, *(v190 + 16), _D0, _D1);
              }

              goto LABEL_374;
            }

            goto LABEL_363;
          }
        }

        else if (v187 >= 64)
        {
          goto LABEL_283;
        }

        sub_25A9984B8();
        goto LABEL_284;
      }

      if (v65 <= 64)
      {
        v245 = *(*(v61 + 24) + 16);
        v182 = swift_getAssociatedTypeWitness();
        v243 = &v239;
        MEMORY[0x28223BE20](v182);
        v184 = &v239 - v183;
        swift_getAssociatedConformanceWitness();
        v244 = v184;
        v185 = sub_25A998A78();
        v242 = &v239;
        MEMORY[0x28223BE20](v185);
        sub_25A9989C8();
        LOBYTE(v184) = sub_25A997D88();
        result = (v247[1])(&v239 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0), v60);
        if (v184)
        {
LABEL_396:
          __break(1u);
          goto LABEL_397;
        }

        goto LABEL_273;
      }
    }

    v245 = &v239;
    MEMORY[0x28223BE20](v65);
    sub_25A895280();
    sub_25A9984A8();
    v117 = sub_25A997D88();
    result = (v247[1])(&v239 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0), v60);
    if (v117)
    {
      goto LABEL_396;
    }

    goto LABEL_274;
  }

  if (v3 != 10)
  {
    if (v3 != 13)
    {
      goto LABEL_56;
    }

    [v6 floatValue];
    v31 = v30;
    [v7 floatValue];
    v33 = v32;
    v34 = v255;
    v35 = v256;
    v36 = __swift_project_boxed_opaque_existential_1(v254, v255);
    v247 = &v239;
    v37 = *(v34 - 8);
    MEMORY[0x28223BE20](v36);
    v246 = v38;
    v39 = &v239 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v39);
    if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() > 64)
    {
      *&v251 = 0x8000000000000000;
      if (sub_25A9984D8())
      {
        v40 = sub_25A9984C8();
        if (v40 < 64)
        {
LABEL_222:
          sub_25A9984B8();
          goto LABEL_223;
        }

        goto LABEL_132;
      }

      v101 = sub_25A9984D8();
      v40 = sub_25A9984C8();
      if (v101)
      {
        if (v40 <= 64)
        {
          v245 = *(*(v35 + 24) + 16);
          v151 = swift_getAssociatedTypeWitness();
          v243 = &v239;
          MEMORY[0x28223BE20](v151);
          v153 = &v239 - v152;
          swift_getAssociatedConformanceWitness();
          v244 = v153;
          v154 = sub_25A998A78();
          v242 = &v239;
          MEMORY[0x28223BE20](v154);
          v156 = &v239 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_25A9989C8();
          LOBYTE(v153) = sub_25A997D88();
          result = (*(v37 + 8))(v156, v34);
          if (v153)
          {
LABEL_393:
            __break(1u);
            goto LABEL_394;
          }

          goto LABEL_222;
        }

LABEL_132:
        v245 = &v239;
        MEMORY[0x28223BE20](v40);
        v113 = &v239 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25A895280();
        sub_25A9984A8();
        v114 = sub_25A997D88();
        result = (*(v37 + 8))(v113, v34);
        if (v114)
        {
          goto LABEL_393;
        }

        goto LABEL_223;
      }

      if (v40 < 64)
      {
        goto LABEL_222;
      }
    }

LABEL_223:
    if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
    {
      goto LABEL_233;
    }

    *&v251 = 0x7FFFFFFFFFFFFFFFLL;
    v157 = sub_25A9984D8();
    v158 = sub_25A9984C8();
    if (v157)
    {
      if (v158 >= 65)
      {
LABEL_232:
        v245 = &v239;
        MEMORY[0x28223BE20](v158);
        v160 = &v239 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25A895280();
        sub_25A9984A8();
        v161 = sub_25A997D88();
        result = (*(v37 + 8))(v160, v34);
        if (v161)
        {
LABEL_382:
          __break(1u);
          goto LABEL_383;
        }

LABEL_233:
        v162 = sub_25A9984B8();
        (*(v37 + 8))(v39, v34);
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v163 = v251;
        result = mlx_array_new();
        *&v251 = result;
        if (v162 >= 0xFFFFFFFF80000000)
        {
          if (v162 <= 0x7FFFFFFF)
          {
            mlx_linspace(&v251, v162, 10, *(v163 + 16), v31, v33);
          }

          goto LABEL_371;
        }

        goto LABEL_360;
      }
    }

    else if (v158 >= 64)
    {
      goto LABEL_232;
    }

    sub_25A9984B8();
    goto LABEL_233;
  }

  [v6 floatValue];
  v88 = v87;
  [v7 floatValue];
  v90 = v89;
  v91 = v255;
  v92 = v256;
  v93 = __swift_project_boxed_opaque_existential_1(v254, v255);
  v247 = &v239;
  v94 = *(v91 - 8);
  MEMORY[0x28223BE20](v93);
  v246 = v95;
  v96 = &v239 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v94 + 16))(v96);
  if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() <= 64)
  {
    goto LABEL_342;
  }

  *&v251 = 0x8000000000000000;
  if (sub_25A9984D8())
  {
    v97 = sub_25A9984C8();
    if (v97 < 64)
    {
      goto LABEL_341;
    }

    goto LABEL_146;
  }

  v108 = sub_25A9984D8();
  v97 = sub_25A9984C8();
  if ((v108 & 1) == 0)
  {
    if (v97 < 64)
    {
      goto LABEL_341;
    }

LABEL_342:
    if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
    {
      goto LABEL_352;
    }

    *&v251 = 0x7FFFFFFFFFFFFFFFLL;
    v232 = sub_25A9984D8();
    v233 = sub_25A9984C8();
    if (v232)
    {
      if (v233 >= 65)
      {
LABEL_351:
        v245 = &v239;
        MEMORY[0x28223BE20](v233);
        v235 = &v239 - ((v234 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25A895280();
        sub_25A9984A8();
        v236 = sub_25A997D88();
        result = (*(v94 + 8))(v235, v91);
        if (v236)
        {
LABEL_389:
          __break(1u);
          goto LABEL_390;
        }

LABEL_352:
        v237 = sub_25A9984B8();
        (*(v94 + 8))(v96, v91);
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v238 = v251;
        result = mlx_array_new();
        *&v251 = result;
        if (v237 >= 0xFFFFFFFF80000000)
        {
          if (v237 <= 0x7FFFFFFF)
          {
            mlx_linspace(&v251, v237, 10, *(v238 + 16), v88, v90);
          }

          goto LABEL_378;
        }

        goto LABEL_367;
      }
    }

    else if (v233 >= 64)
    {
      goto LABEL_351;
    }

    sub_25A9984B8();
    goto LABEL_352;
  }

  if (v97 > 64)
  {
LABEL_146:
    v245 = &v239;
    MEMORY[0x28223BE20](v97);
    v122 = &v239 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25A895280();
    sub_25A9984A8();
    v123 = sub_25A997D88();
    result = (*(v94 + 8))(v122, v91);
    if (v123)
    {
      goto LABEL_400;
    }

    goto LABEL_342;
  }

  v245 = *(*(v92 + 24) + 16);
  v226 = swift_getAssociatedTypeWitness();
  v243 = &v239;
  MEMORY[0x28223BE20](v226);
  v228 = &v239 - v227;
  swift_getAssociatedConformanceWitness();
  v244 = v228;
  v229 = sub_25A998A78();
  v242 = &v239;
  MEMORY[0x28223BE20](v229);
  v231 = &v239 - ((v230 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25A9989C8();
  LOBYTE(v228) = sub_25A997D88();
  result = (*(v94 + 8))(v231, v91);
  if ((v228 & 1) == 0)
  {
LABEL_341:
    sub_25A9984B8();
    goto LABEL_342;
  }

LABEL_400:
  __break(1u);
  return result;
}

void sub_25A8ADD30(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8ADD38);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8ADE94(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(97, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v15);
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v6 = sub_25A8DF268(&v15);
  result = sub_25A878194(&v15, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    v8 = sub_25A8DF5A8(a1, 1936029793, 0xE400000000000000);
    if (v8)
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v9 = v15;
      v14 = mlx_array_new();
      swift_beginAccess();
      v10 = *(v6 + 16);
      v11 = Array<A>.asInt32.getter(v8);
      v12 = *(v8 + 2);

      mlx_transpose_axes(&v14, v10, (v11 + 32), v12, *(v9 + 16));
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v13 = v15;
    v14 = mlx_array_new();
    swift_beginAccess();
    mlx_transpose(&v14, *(v6 + 16), *(v13 + 16));
  }

  return result;
}

void sub_25A8AE0E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8AE0E8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8AE104(uint64_t a1)
{
  if (!*(a1 + 16) || (v3 = sub_25A8F3600(0x737961727261, 0xE600000000000000), (v4 & 1) == 0))
  {
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    goto LABEL_9;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v3, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    goto LABEL_9;
  }

  v5 = *(&v21 + 1);
  if (!*(&v21 + 1))
  {
LABEL_9:
    sub_25A878194(&v20, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_10;
  }

  v6 = v22;
  __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
  v7 = (*(v6 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(&v20);
  v8 = sub_25A92FDB0(v7);

  if (v8)
  {
    v9 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if ((v10 & 1) == 0)
    {
      v13 = v9;
      v14 = *(v8 + 16);
      if (v14)
      {
        v19[0] = MEMORY[0x277D84F90];
        sub_25A998748();
        v15 = v8 + 32;
        do
        {
          sub_25A872F24(v15, &v20);
          v16 = *(&v21 + 1);
          v17 = v22;
          __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
          (*(v17 + 8))(13, v16, v17);
          __swift_destroy_boxed_opaque_existential_0Tm(&v20);
          sub_25A998718();
          sub_25A998758();
          sub_25A998768();
          sub_25A998728();
          v15 += 40;
          --v14;
        }

        while (v14);

        v18 = v19[0];
      }

      else
      {

        v18 = MEMORY[0x277D84F90];
      }

      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      sub_25A954AD8(v18, v13, v20);
    }
  }

LABEL_10:
  sub_25A874F54();
  swift_allocError();
  *v11 = 85;
  return swift_willThrow();
}

uint64_t sub_25A8AE3F8(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(7959137, 0xE300000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v9);
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  sub_25A8DF268(&v9);
  result = sub_25A878194(&v9, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    sub_25A8DF850(a1, 0xD000000000000013, 0x800000025AA68320);
    if ((v7 & 1) == 0)
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      mlx_vector_array_new();
    }

    if (sub_25A8DF5A8(a1, 0xD000000000000013, 0x800000025AA68320))
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      mlx_vector_array_new();
    }

    sub_25A874F54();
    swift_allocError();
    *v8 = 86;
    swift_willThrow();
  }

  return result;
}

void sub_25A8AE750(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8AE758);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8AE784(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(12664, 0xE200000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v6 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(12920, 0xE200000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v10 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v11 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v12 = *(v6 + 16);
    swift_beginAccess();
    mlx_subtract(&v13, v12, *(v10 + 16), *(v11 + 16));
  }

  return result;
}

void sub_25A8AE9AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8AE9B4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8AE9C0(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(120, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v10);
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v6 = sub_25A8DF268(&v10);
  result = sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10;
    v9 = mlx_array_new();
    swift_beginAccess();
    mlx_exp(&v9, *(v6 + 16), *(v8 + 16));
  }

  return result;
}

void sub_25A8AEB4C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8AEB54);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8AEB60(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(120, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v10);
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v6 = sub_25A8DF268(&v10);
  result = sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10;
    v9 = mlx_array_new();
    swift_beginAccess();
    mlx_log(&v9, *(v6 + 16), *(v8 + 16));
  }

  return result;
}

void sub_25A8AECEC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8AECF4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8AED00(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(120, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v10);
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v6 = sub_25A8DF268(&v10);
  result = sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10;
    v9 = mlx_array_new();
    swift_beginAccess();
    mlx_sqrt(&v9, *(v6 + 16), *(v8 + 16));
  }

  return result;
}

void sub_25A8AEE8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8AEE94);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8AEEA0(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(97, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v21);
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v6 = sub_25A8DF268(&v21);
  result = sub_25A878194(&v21, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(0x736D69647065656BLL, 0xE800000000000000), (v9 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v8, &v21), swift_dynamicCast()))
    {
      v10 = v20;
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v12)
    {
      v13 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
      if (!v13)
      {
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v19 = v21;
        v20 = mlx_array_new();
        swift_beginAccess();
        mlx_mean(&v20, *(v6 + 16), v10, *(v19 + 16));
      }

      if (qword_27FA043D8 == -1)
      {
LABEL_15:
        sub_25A998C58();
        v14 = v21;
        v20 = mlx_array_new();
        swift_beginAccess();
        v15 = *(v6 + 16);
        v16 = Array<A>.asInt32.getter(v13);
        v17 = *(v13 + 16);

        mlx_mean_axes(&v20, v15, (v16 + 32), v17, v10, *(v14 + 16));
      }
    }

    else
    {
      v13 = v11;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v18 = v21;
      v20 = mlx_array_new();
      swift_beginAccess();
      if (v13 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v13 <= 0x7FFFFFFF)
      {
        mlx_mean_axis(&v20, *(v6 + 16), v13, v10, *(v18 + 16));
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_15;
  }

  return result;
}

void sub_25A8AF21C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8AF224);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8AF250@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(97, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v25);
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v7 = sub_25A8DF268(&v25);
  result = sub_25A878194(&v25, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v9 = sub_25A8F3600(0x736D69647065656BLL, 0xE800000000000000), (v10 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v9, &v25), swift_dynamicCast()))
    {
      v11 = v24;
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v13)
    {
      v14 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
      if (!v14)
      {
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v20 = v25;
        v24 = mlx_array_new();
        swift_beginAccess();
        mlx_prod(&v24, *(v7 + 16), v11, *(v20 + 16));
        goto LABEL_24;
      }

      if (qword_27FA043D8 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14 = v12;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v19 = v25;
      v24 = mlx_array_new();
      swift_beginAccess();
      if (v14 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v14 <= 0x7FFFFFFF)
      {
        mlx_prod_axis(&v24, *(v7 + 16), v14, v11, *(v19 + 16));
        goto LABEL_24;
      }

      __break(1u);
    }

    swift_once();
LABEL_15:
    sub_25A998C58();
    v15 = v25;
    v24 = mlx_array_new();
    swift_beginAccess();
    v16 = *(v7 + 16);
    v17 = Array<A>.asInt32.getter(v14);
    v18 = *(v14 + 16);

    mlx_prod_axes(&v24, v16, (v17 + 32), v18, v11, *(v15 + 16));

LABEL_24:

    v21 = v24;
    v22 = type metadata accessor for MLXArray();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    a2[3] = v22;

    *a2 = v23;
  }

  return result;
}

void sub_25A8AF5CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8AF5D4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8AF600@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(97, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v25);
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v7 = sub_25A8DF268(&v25);
  result = sub_25A878194(&v25, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v9 = sub_25A8F3600(0x736D69647065656BLL, 0xE800000000000000), (v10 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v9, &v25), swift_dynamicCast()))
    {
      v11 = v24;
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v13)
    {
      v14 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
      if (!v14)
      {
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v20 = v25;
        v24 = mlx_array_new();
        swift_beginAccess();
        mlx_min(&v24, *(v7 + 16), v11, *(v20 + 16));
        goto LABEL_24;
      }

      if (qword_27FA043D8 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14 = v12;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v19 = v25;
      v24 = mlx_array_new();
      swift_beginAccess();
      if (v14 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v14 <= 0x7FFFFFFF)
      {
        mlx_min_axis(&v24, *(v7 + 16), v14, v11, *(v19 + 16));
        goto LABEL_24;
      }

      __break(1u);
    }

    swift_once();
LABEL_15:
    sub_25A998C58();
    v15 = v25;
    v24 = mlx_array_new();
    swift_beginAccess();
    v16 = *(v7 + 16);
    v17 = Array<A>.asInt32.getter(v14);
    v18 = *(v14 + 16);

    mlx_min_axes(&v24, v16, (v17 + 32), v18, v11, *(v15 + 16));

LABEL_24:

    v21 = v24;
    v22 = type metadata accessor for MLXArray();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    a2[3] = v22;

    *a2 = v23;
  }

  return result;
}

void sub_25A8AF97C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8AF984);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8AF9B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(97, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v25);
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v7 = sub_25A8DF268(&v25);
  result = sub_25A878194(&v25, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v9 = sub_25A8F3600(0x736D69647065656BLL, 0xE800000000000000), (v10 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v9, &v25), swift_dynamicCast()))
    {
      v11 = v24;
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v13)
    {
      v14 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
      if (!v14)
      {
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v20 = v25;
        v24 = mlx_array_new();
        swift_beginAccess();
        mlx_max(&v24, *(v7 + 16), v11, *(v20 + 16));
        goto LABEL_24;
      }

      if (qword_27FA043D8 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14 = v12;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v19 = v25;
      v24 = mlx_array_new();
      swift_beginAccess();
      if (v14 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v14 <= 0x7FFFFFFF)
      {
        mlx_max_axis(&v24, *(v7 + 16), v14, v11, *(v19 + 16));
        goto LABEL_24;
      }

      __break(1u);
    }

    swift_once();
LABEL_15:
    sub_25A998C58();
    v15 = v25;
    v24 = mlx_array_new();
    swift_beginAccess();
    v16 = *(v7 + 16);
    v17 = Array<A>.asInt32.getter(v14);
    v18 = *(v14 + 16);

    mlx_max_axes(&v24, v16, (v17 + 32), v18, v11, *(v15 + 16));

LABEL_24:

    v21 = v24;
    v22 = type metadata accessor for MLXArray();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    a2[3] = v22;

    *a2 = v23;
  }

  return result;
}

void sub_25A8AFD2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8AFD34);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8AFD60(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(97, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v18);
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v6 = sub_25A8DF268(&v18);
  result = sub_25A878194(&v18, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(0x736D69647065656BLL, 0xE800000000000000), (v9 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v8, &v18), swift_dynamicCast()))
    {
      v10 = v17;
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v12)
    {
      if (sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000))
      {

        sub_25A874F54();
        swift_allocError();
        *v13 = 87;
        swift_willThrow();
      }

      if (qword_27FA043D8 == -1)
      {
LABEL_21:
        sub_25A998C58();
        v16 = v18;
        v17 = mlx_array_new();
        swift_beginAccess();
        mlx_argmin(&v17, *(v6 + 16), v10, *(v16 + 16));
      }
    }

    else
    {
      v14 = v11;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v15 = v18;
      v17 = mlx_array_new();
      swift_beginAccess();
      if (v14 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v14 <= 0x7FFFFFFF)
      {
        mlx_argmin_axis(&v17, *(v6 + 16), v14, v10, *(v15 + 16));
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_21;
  }

  return result;
}

void sub_25A8B0068(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B0070);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B008C(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(97, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v18);
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v6 = sub_25A8DF268(&v18);
  result = sub_25A878194(&v18, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(0x736D69647065656BLL, 0xE800000000000000), (v9 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v8, &v18), swift_dynamicCast()))
    {
      v10 = v17;
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v12)
    {
      if (sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000))
      {

        sub_25A874F54();
        swift_allocError();
        *v13 = 88;
        swift_willThrow();
      }

      if (qword_27FA043D8 == -1)
      {
LABEL_21:
        sub_25A998C58();
        v16 = v18;
        v17 = mlx_array_new();
        swift_beginAccess();
        mlx_argmax(&v17, *(v6 + 16), v10, *(v16 + 16));
      }
    }

    else
    {
      v14 = v11;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v15 = v18;
      v17 = mlx_array_new();
      swift_beginAccess();
      if (v14 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v14 <= 0x7FFFFFFF)
      {
        mlx_argmax_axis(&v17, *(v6 + 16), v14, v10, *(v15 + 16));
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_21;
  }

  return result;
}

void sub_25A8B0408(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B0410);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B0434(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(97, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v6 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    v8 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v9)
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v10 = v14;
      v13 = mlx_array_new();
      swift_beginAccess();
      mlx_sort(&v13, *(v6 + 16), *(v10 + 16));
    }

    v11 = v8;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v12 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    if (v11 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v11 <= 0x7FFFFFFF)
    {
      mlx_sort_axis(&v13, *(v6 + 16), v11, *(v12 + 16));
    }

    __break(1u);
  }

  return result;
}

void sub_25A8B0674(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B067CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B0698(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(12664, 0xE200000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v6 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(12920, 0xE200000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v10 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v11 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v12 = *(v6 + 16);
    swift_beginAccess();
    mlx_matmul(&v13, v12, *(v10 + 16), *(v11 + 16));
  }

  return result;
}

void sub_25A8B08C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B08C8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B08D4(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(97, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v24);
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v6 = sub_25A8DF268(&v24);
  result = sub_25A878194(&v24, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (!*(a1 + 16))
    {
      v22 = 0;
      goto LABEL_17;
    }

    v8 = sub_25A8F3600(0x736D69647065656BLL, 0xE800000000000000);
    if ((v9 & 1) != 0 && (sub_25A87500C(*(a1 + 56) + 32 * v8, &v24), swift_dynamicCast()))
    {
      v22 = v23;
      if (!*(a1 + 16))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v22 = 0;
      if (!*(a1 + 16))
      {
        goto LABEL_17;
      }
    }

    v10 = sub_25A8F3600(1718576228, 0xE400000000000000);
    if (v11)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v10, &v24);
      sub_25A873A9C();
      if (swift_dynamicCast())
      {
        v12 = [v23 integerValue];

        goto LABEL_18;
      }
    }

LABEL_17:
    v12 = 0;
LABEL_18:
    v13 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v14)
    {
      v15 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
      if (!v15)
      {
        if (qword_27FA043D8 == -1)
        {
          goto LABEL_32;
        }

        goto LABEL_42;
      }

      if (qword_27FA043D8 == -1)
      {
LABEL_21:
        sub_25A998C58();
        v16 = v24;
        v23 = mlx_array_new();
        swift_beginAccess();
        v17 = *(v6 + 16);
        v18 = Array<A>.asInt32.getter(v15);
        v19 = *(v15 + 16);

        if (v12 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (v12 <= 0x7FFFFFFF)
        {
          mlx_std_axes(&v23, v17, (v18 + 32), v19, v22, v12, *(v16 + 16));
        }

        __break(1u);
LABEL_42:
        swift_once();
LABEL_32:
        sub_25A998C58();
        v21 = v24;
        v23 = mlx_array_new();
        swift_beginAccess();
        if (v12 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (v12 <= 0x7FFFFFFF)
        {
          mlx_std(&v23, *(v6 + 16), v22, v12, *(v21 + 16));
        }

        __break(1u);
      }

LABEL_39:
      swift_once();
      goto LABEL_21;
    }

    v15 = v13;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v20 = v24;
    v23 = mlx_array_new();
    swift_beginAccess();
    if (v15 > 0x7FFFFFFF)
    {
      __break(1u);
    }

    else if (v12 >= 0xFFFFFFFF80000000 && v15 >= 0xFFFFFFFF80000000)
    {
      if (v12 <= 0x7FFFFFFF)
      {
        mlx_std_axis(&v23, *(v6 + 16), v15, v22, v12, *(v20 + 16));
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  return result;
}

void sub_25A8B0D40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B0D48);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B0D7C(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(97, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v24);
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v6 = sub_25A8DF268(&v24);
  result = sub_25A878194(&v24, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (!*(a1 + 16))
    {
      v22 = 0;
      goto LABEL_17;
    }

    v8 = sub_25A8F3600(0x736D69647065656BLL, 0xE800000000000000);
    if ((v9 & 1) != 0 && (sub_25A87500C(*(a1 + 56) + 32 * v8, &v24), swift_dynamicCast()))
    {
      v22 = v23;
      if (!*(a1 + 16))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v22 = 0;
      if (!*(a1 + 16))
      {
        goto LABEL_17;
      }
    }

    v10 = sub_25A8F3600(1718576228, 0xE400000000000000);
    if (v11)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v10, &v24);
      sub_25A873A9C();
      if (swift_dynamicCast())
      {
        v12 = [v23 integerValue];

        goto LABEL_18;
      }
    }

LABEL_17:
    v12 = 0;
LABEL_18:
    v13 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v14)
    {
      v15 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
      if (!v15)
      {
        if (qword_27FA043D8 == -1)
        {
          goto LABEL_32;
        }

        goto LABEL_42;
      }

      if (qword_27FA043D8 == -1)
      {
LABEL_21:
        sub_25A998C58();
        v16 = v24;
        v23 = mlx_array_new();
        swift_beginAccess();
        v17 = *(v6 + 16);
        v18 = Array<A>.asInt32.getter(v15);
        v19 = *(v15 + 16);

        if (v12 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (v12 <= 0x7FFFFFFF)
        {
          mlx_var_axes(&v23, v17, (v18 + 32), v19, v22, v12, *(v16 + 16));
        }

        __break(1u);
LABEL_42:
        swift_once();
LABEL_32:
        sub_25A998C58();
        v21 = v24;
        v23 = mlx_array_new();
        swift_beginAccess();
        if (v12 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (v12 <= 0x7FFFFFFF)
        {
          mlx_var(&v23, *(v6 + 16), v22, v12, *(v21 + 16));
        }

        __break(1u);
      }

LABEL_39:
      swift_once();
      goto LABEL_21;
    }

    v15 = v13;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v20 = v24;
    v23 = mlx_array_new();
    swift_beginAccess();
    if (v15 > 0x7FFFFFFF)
    {
      __break(1u);
    }

    else if (v12 >= 0xFFFFFFFF80000000 && v15 >= 0xFFFFFFFF80000000)
    {
      if (v12 <= 0x7FFFFFFF)
      {
        mlx_var_axis(&v23, *(v6 + 16), v15, v22, v12, *(v20 + 16));
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  return result;
}

void sub_25A8B11E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B11F0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B1224(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(12664, 0xE200000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v15);
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v6 = sub_25A8DF268(&v15);
  result = sub_25A878194(&v15, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(12920, 0xE200000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v15);
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v10 = sub_25A8DF268(&v15);
    sub_25A878194(&v15, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v11 = v15;
    swift_beginAccess();
    v12 = mlx_array_dtype(*(v6 + 16));
    sub_25A956420(v12);
    v14 = mlx_array_new();
    v13 = *(v6 + 16);
    swift_beginAccess();
    mlx_floor_divide(&v14, v13, *(v10 + 16), *(v11 + 16));
  }

  return result;
}

void sub_25A8B1458(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B1460);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B1474(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(12664, 0xE200000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v27);
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v6 = sub_25A8DF268(&v27);
  result = sub_25A878194(&v27, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(12920, 0xE200000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v27);
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v10 = sub_25A8DF268(&v27);
    sub_25A878194(&v27, &qword_27FA04458, &unk_25A9F7FB0);
    if (*(a1 + 16) && (v11 = sub_25A8F3600(1819243634, 0xE400000000000000), (v12 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v11, &v27), sub_25A873A9C(), (swift_dynamicCast() & 1) != 0))
    {
      [v25 doubleValue];
      v14 = v13;
    }

    else
    {
      v14 = 0.00001;
    }

    if (*(a1 + 16) && (v15 = sub_25A8F3600(1819243617, 0xE400000000000000), (v16 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v15, &v27), sub_25A873A9C(), (swift_dynamicCast() & 1) != 0))
    {
      [v25 doubleValue];
      v18 = v17;
    }

    else
    {
      v18 = 0.00000001;
    }

    if (*(a1 + 16) && (v19 = sub_25A8F3600(0x616E5F6C61757165, 0xE90000000000006ELL), (v20 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v19, &v27), swift_dynamicCast()))
    {
      v21 = v25;
    }

    else
    {
      v21 = 0;
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v22 = v27;
    swift_beginAccess();
    v23 = mlx_array_dtype(*(v6 + 16));
    sub_25A956420(v23);
    v26 = mlx_array_new();
    v24 = *(v6 + 16);
    swift_beginAccess();
    mlx_allclose(&v26, v24, *(v10 + 16), v21, *(v22 + 16), v14, v18);
  }

  return result;
}

void sub_25A8B1844(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B184CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B1870(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(120, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v10);
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v6 = sub_25A8DF268(&v10);
  result = sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10;
    v9 = mlx_array_new();
    swift_beginAccess();
    mlx_abs(&v9, *(v6 + 16), *(v8 + 16));
  }

  return result;
}

void sub_25A8B19FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B1A04);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B1A10(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(12664, 0xE200000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v19);
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v6 = sub_25A8DF268(&v19);
  result = sub_25A878194(&v19, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(12920, 0xE200000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v19);
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    v10 = sub_25A8DF268(&v19);
    sub_25A878194(&v19, &qword_27FA04458, &unk_25A9F7FB0);
    if (*(a1 + 16) && (v11 = sub_25A8F3600(0x616E5F6C61757165, 0xE90000000000006ELL), (v12 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v11, &v19), swift_dynamicCast()))
    {
      v13 = v17;
    }

    else
    {
      v13 = 0;
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v14 = v19;
    swift_beginAccess();
    v15 = mlx_array_dtype(*(v6 + 16));
    sub_25A956420(v15);
    v18 = mlx_array_new();
    v16 = *(v6 + 16);
    swift_beginAccess();
    mlx_array_equal(&v18, v16, *(v10 + 16), v13, *(v14 + 16));
  }

  return result;
}

void sub_25A8B1CCC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B1CD4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B1CE8(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(120, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v6 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(121, 0xE100000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v10 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v11 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v12 = *(v6 + 16);
    swift_beginAccess();
    mlx_greater(&v13, v12, *(v10 + 16), *(v11 + 16));
  }

  return result;
}

void sub_25A8B1F10(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B1F18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B1F24(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(120, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v6 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(121, 0xE100000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v10 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v11 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v12 = *(v6 + 16);
    swift_beginAccess();
    mlx_greater_equal(&v13, v12, *(v10 + 16), *(v11 + 16));
  }

  return result;
}

void sub_25A8B214C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B2154);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B2160(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(120, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v6 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(121, 0xE100000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v10 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v11 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v12 = *(v6 + 16);
    swift_beginAccess();
    mlx_less(&v13, v12, *(v10 + 16), *(v11 + 16));
  }

  return result;
}

void sub_25A8B2388(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B2390);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B239C(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(120, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v6 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(121, 0xE100000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v10 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v11 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v12 = *(v6 + 16);
    swift_beginAccess();
    mlx_less_equal(&v13, v12, *(v10 + 16), *(v11 + 16));
  }

  return result;
}

void sub_25A8B25C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B25CCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B25D8(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(120, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v6 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(121, 0xE100000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v10 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v11 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v12 = *(v6 + 16);
    swift_beginAccess();
    mlx_not_equal(&v13, v12, *(v10 + 16), *(v11 + 16));
  }

  return result;
}

void sub_25A8B2800(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B2808);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B2814(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(120, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v10);
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v6 = sub_25A8DF268(&v10);
  result = sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10;
    v9 = mlx_array_new();
    swift_beginAccess();
    mlx_isnan(&v9, *(v6 + 16), *(v8 + 16));
  }

  return result;
}

void sub_25A8B29F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B2A00);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B2A14(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(0x7961727261, 0xE500000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v13);
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v6 = sub_25A8DF268(&v13);
  result = sub_25A878194(&v13, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    v8 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8;
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v11 = v13;
    v12 = mlx_array_new();
    swift_beginAccess();
    if (v10 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v10 <= 0x7FFFFFFF)
    {
      mlx_cummax(&v12, *(v6 + 16), v10, 0, 1, *(v11 + 16));
    }

    __break(1u);
  }

  return result;
}

void sub_25A8B2BF0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B2BF8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B2C04(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(12664, 0xE200000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v6 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(12920, 0xE200000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v10 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v11 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v12 = *(v6 + 16);
    swift_beginAccess();
    mlx_maximum(&v13, v12, *(v10 + 16), *(v11 + 16));
  }

  return result;
}

void sub_25A8B2E2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B2E34);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B2E40(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(12664, 0xE200000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v6 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(12920, 0xE200000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v10 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v11 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v12 = *(v6 + 16);
    swift_beginAccess();
    mlx_minimum(&v13, v12, *(v10 + 16), *(v11 + 16));
  }

  return result;
}

void sub_25A8B3068(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B3070);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B307C(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(120, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v10);
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v6 = sub_25A8DF268(&v10);
  result = sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10;
    v9 = mlx_array_new();
    swift_beginAccess();
    mlx_negative(&v9, *(v6 + 16), *(v8 + 16));
  }

  return result;
}

void sub_25A8B3208(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B3210);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B321C(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(97, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v17);
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v6 = sub_25A8DF268(&v17);
  result = sub_25A878194(&v17, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(0x73656369646E69, 0xE700000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v17);
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v10 = sub_25A8DF268(&v17);
    sub_25A878194(&v17, &qword_27FA04458, &unk_25A9F7FB0);
    v11 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v12)
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      sub_25A963A0C(v6, v10, v17);
    }

    v13 = v11;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v14 = v17;
    v16 = mlx_array_new();
    swift_beginAccess();
    v15 = *(v6 + 16);
    swift_beginAccess();
    if (v13 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v13 <= 0x7FFFFFFF)
    {
      mlx_take_axis(&v16, v15, *(v10 + 16), v13, *(v14 + 16));
    }

    __break(1u);
  }

  return result;
}

void sub_25A8B3514(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B351CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B3528(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(97, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v17);
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v6 = sub_25A8DF268(&v17);
  result = sub_25A878194(&v17, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(0x73656369646E69, 0xE700000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v17);
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v10 = sub_25A8DF268(&v17);
    sub_25A878194(&v17, &qword_27FA04458, &unk_25A9F7FB0);
    v11 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v12)
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      sub_25A954D50(v6, v10, v17);
    }

    v13 = v11;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v14 = v17;
    v16 = mlx_array_new();
    swift_beginAccess();
    v15 = *(v6 + 16);
    swift_beginAccess();
    if (v13 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v13 <= 0x7FFFFFFF)
    {
      mlx_take_along_axis(&v16, v15, *(v10 + 16), v13, *(v14 + 16));
    }

    __break(1u);
  }

  return result;
}

void sub_25A8B3820(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B3828);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B3834@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(120, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v22);
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v7 = sub_25A8DF268(&v22);
  result = sub_25A878194(&v22, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    v9 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v10)
    {
      v11 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
      if (!v11)
      {
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v17 = v22;
        v21 = mlx_array_new();
        swift_beginAccess();
        mlx_squeeze(&v21, *(v7 + 16), *(v17 + 16));
      }

      if (qword_27FA043D8 == -1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = v9;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v16 = v22;
      v21 = mlx_array_new();
      swift_beginAccess();
      if (v11 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v11 <= 0x7FFFFFFF)
      {
        mlx_squeeze_axis(&v21, *(v7 + 16), v11, *(v16 + 16));
      }

      __break(1u);
    }

    swift_once();
LABEL_10:
    sub_25A998C58();
    v12 = v22;
    v21 = mlx_array_new();
    swift_beginAccess();
    v13 = *(v7 + 16);
    v14 = Array<A>.asInt32.getter(v11);
    v15 = *(v11 + 16);

    mlx_squeeze_axes(&v21, v13, (v14 + 32), v15, *(v12 + 16));

    v18 = v21;
    v19 = type metadata accessor for MLXArray();
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    a2[3] = v19;

    *a2 = v20;
  }

  return result;
}

void sub_25A8B3B34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B3B3CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B3B68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(120, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v22);
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v7 = sub_25A8DF268(&v22);
  result = sub_25A878194(&v22, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    v9 = sub_25A8DF850(a1, 0x73746165706572, 0xE700000000000000);
    if (v10)
    {
      sub_25A874F54();
      swift_allocError();
      *v11 = 93;
      swift_willThrow();
    }

    v12 = v9;
    v13 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v14)
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v15 = v22;
      v21 = mlx_array_new();
      swift_beginAccess();
      if (v12 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          mlx_repeat(&v21, *(v7 + 16), v12, *(v15 + 16));
LABEL_22:

          v18 = v21;
          v19 = type metadata accessor for MLXArray();
          v20 = swift_allocObject();
          *(v20 + 16) = v18;
          a2[3] = v19;

          *a2 = v20;
          return result;
        }

        goto LABEL_26;
      }

      __break(1u);
    }

    else
    {
      v16 = v13;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v17 = v22;
      v21 = mlx_array_new();
      swift_beginAccess();
      if (v12 <= 0x7FFFFFFF)
      {
        if (v12 >= 0xFFFFFFFF80000000 && v16 >= 0xFFFFFFFF80000000)
        {
          if (v16 <= 0x7FFFFFFF)
          {
            mlx_repeat_axis(&v21, *(v7 + 16), v12, v16, *(v17 + 16));
            goto LABEL_22;
          }

LABEL_28:
          __break(1u);
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  return result;
}

void sub_25A8B3E48(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B3E50);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B3E6C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(0x6C61765F6C6C6966, 0xEA00000000006575);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v17);
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v6 = sub_25A8DF268(&v17);
  result = sub_25A878194(&v17, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    v8 = sub_25A8DF850(a1, 0x6570616873, 0xE500000000000000);
    if ((v9 & 1) == 0)
    {
      v13 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25A9F8D90;
      *(inited + 32) = v13;
      v15 = qword_27FA043D8;

      if (v15 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      sub_25A8DF108(inited, v6, v17);
    }

    v10 = sub_25A8DF5A8(a1, 0x6570616873, 0xE500000000000000);
    if (v10)
    {
      v11 = v10;
      v12 = qword_27FA043D8;

      if (v12 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      sub_25A8DF108(v11, v6, v17);
    }

    sub_25A874F54();
    swift_allocError();
    *v16 = 94;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_25A8B40E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(0x6C61765F6C6C6966, 0xEA00000000006575);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v12);
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v6 = sub_25A8DF268(&v12);
  result = sub_25A878194(&v12, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(97, 0xE100000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v12);
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    sub_25A8DF268(&v12);
    sub_25A878194(&v12, &qword_27FA04458, &unk_25A9F7FB0);
    v10 = sub_25A9616CC();
    v11 = qword_27FA043D8;

    if (v11 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    sub_25A8DF108(v10, v6, v12);
  }

  return result;
}

uint64_t sub_25A8B42C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(97, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v35);
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
    }
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v7 = sub_25A8DF268(&v35);
  result = sub_25A878194(&v35, &qword_27FA04458, &unk_25A9F7FB0);
  if (v2)
  {
    return result;
  }

  if (*(a1 + 16) && (v9 = sub_25A8F3600(0x6E696D5F61, 0xE500000000000000), (v10 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v9, &v35);
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v11 = sub_25A8DF268(&v35);
  sub_25A878194(&v35, &qword_27FA04458, &unk_25A9F7FB0);
  if (*(a1 + 16) && (v12 = sub_25A8F3600(0x78616D5F61, 0xE500000000000000), (v13 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v12, &v35);
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v20 = sub_25A8DF268(&v35);
  sub_25A878194(&v35, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v11)
  {
    if (!v20)
    {
      sub_25A874F54();
      swift_allocError();
      *v32 = 95;
      swift_willThrow();
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v27 = v35;
    v33[0] = mlx_array_new();
    v28 = mlx_array_new();
    swift_beginAccess();
    v29 = *(v7 + 16);
    swift_beginAccess();
    mlx_clip(v33, v29, v28, *(v20 + 16), *(v27 + 16));
    v30 = v33[0];
    v31 = type metadata accessor for MLXArray();
    v19 = swift_allocObject();
    *(v19 + 16) = v30;
    mlx_array_free(v28);

    a2[3] = v31;
LABEL_18:

    *a2 = v19;
    return result;
  }

  if (!v20)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v14 = v35;
    v33[0] = mlx_array_new();
    v15 = mlx_array_new();
    swift_beginAccess();
    v16 = *(v7 + 16);
    swift_beginAccess();
    mlx_clip(v33, v16, *(v11 + 16), v15, *(v14 + 16));
    v17 = v33[0];
    v18 = type metadata accessor for MLXArray();
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    mlx_array_free(v15);

    a2[3] = v18;
    goto LABEL_18;
  }

  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v21 = v35;
  v34 = mlx_array_new();
  swift_beginAccess();
  v22 = *(v7 + 16);
  swift_beginAccess();
  v23 = *(v11 + 16);
  swift_beginAccess();
  mlx_clip(&v34, v22, v23, *(v20 + 16), *(v21 + 16));

  v24 = v34;
  v25 = type metadata accessor for MLXArray();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  a2[3] = v25;

  *a2 = v26;
  return result;
}

void sub_25A8B47C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B47CCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B4818(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(120, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v10);
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v6 = sub_25A8DF268(&v10);
  result = sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10;
    v9 = mlx_array_new();
    swift_beginAccess();
    mlx_ceil(&v9, *(v6 + 16), *(v8 + 16));
  }

  return result;
}

void sub_25A8B49A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B49ACLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B49B8(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(120, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v10);
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v6 = sub_25A8DF268(&v10);
  result = sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10;
    v9 = mlx_array_new();
    swift_beginAccess();
    mlx_floor(&v9, *(v6 + 16), *(v8 + 16));
  }

  return result;
}

void sub_25A8B4B44(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B4B4CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B4B58(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = sub_25A8F3600(120, 0xE100000000000000);
    if (v5)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v4, &v13);
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v6 = sub_25A8DF268(&v13);
  result = sub_25A878194(&v13, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    v8 = sub_25A8DF850(a1, 0x736C616D69636564, 0xE800000000000000);
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8;
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v11 = v13;
    v12 = mlx_array_new();
    swift_beginAccess();
    if (v10 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v10 <= 0x7FFFFFFF)
    {
      mlx_round(&v12, *(v6 + 16), v10, *(v11 + 16));
    }

    __break(1u);
  }

  return result;
}

void sub_25A8B4D2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B4D34);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B4D40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(120, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v19);
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v7 = sub_25A8DF268(&v19);
  result = sub_25A878194(&v19, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    v9 = sub_25A8DF5A8(a1, 0x6570616873, 0xE500000000000000);
    if (v9)
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v10 = v19;
      v18 = mlx_array_new();
      swift_beginAccess();
      v11 = *(v7 + 16);
      v12 = Array<A>.asInt32.getter(v9);
      v13 = *(v9 + 2);

      mlx_broadcast_to(&v18, v11, (v12 + 32), v13, *(v10 + 16));

      v14 = v18;
      v15 = type metadata accessor for MLXArray();
      v16 = swift_allocObject();
      *(v16 + 16) = v14;
      a2[3] = v15;

      *a2 = v16;
    }

    else
    {
      sub_25A874F54();
      swift_allocError();
      *v17 = 96;
      swift_willThrow();
    }
  }

  return result;
}

void sub_25A8B4F5C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B4F64);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B4F70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(120, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v28);
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v7 = sub_25A8DF268(&v28);
  result = sub_25A878194(&v28, &qword_27FA04458, &unk_25A9F7FB0);
  if (v2)
  {
    return result;
  }

  if (*(a1 + 16) && (v9 = sub_25A8F3600(7233902, 0xE300000000000000), (v10 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v9, &v28), sub_25A873A9C(), (swift_dynamicCast() & 1) != 0))
  {
    [v27 floatValue];
    v12 = v11;

    if (!*(a1 + 16))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = 0.0;
    if (!*(a1 + 16))
    {
      goto LABEL_17;
    }
  }

  v13 = sub_25A8F3600(0x666E69736F70, 0xE600000000000000);
  if ((v14 & 1) == 0 || (sub_25A87500C(*(a1 + 56) + 32 * v13, &v28), sub_25A873A9C(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_17:
    v17 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_18;
    }

LABEL_21:
    v22 = 0;
    goto LABEL_22;
  }

  [v27 floatValue];
  v16 = v15;

  v17 = v16 | 0x100000000;
  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

LABEL_18:
  v18 = sub_25A8F3600(0x666E6967656ELL, 0xE600000000000000);
  if ((v19 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v18, &v28);
  sub_25A873A9C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  [v27 floatValue];
  v21 = v20;

  v22 = v21 | 0x100000000;
LABEL_22:
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v23 = v28;
  v27 = mlx_array_new();
  swift_beginAccess();
  mlx_nan_to_num(&v27, *(v7 + 16), v17, v22, *(v23 + 16), v12);

  v24 = v27;
  v25 = type metadata accessor for MLXArray();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  a2[3] = v25;

  *a2 = v26;
  return result;
}

void sub_25A8B52AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B52B4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B52D8(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) && (v4 = sub_25A8F3600(0x6570797464, 0xE500000000000000), (v5 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v4, &v48), (swift_dynamicCast() & 1) != 0))
  {
    v6 = *(&v51[0] + 1);
    v7 = *&v51[0];
    if (!*(a1 + 16))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v7 = 0x3436746E69;
    if (!*(a1 + 16))
    {
LABEL_12:

      sub_25A874F54();
      swift_allocError();
      *v15 = 97;
      return swift_willThrow();
    }
  }

  v8 = sub_25A8F3600(7827308, 0xE300000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v8, &v48);
  sub_25A872D74(&v48, v51);
  v10 = sub_25A8F139C(v7, v6);

  v11 = sub_25A8F0FA0(v51, v10);
  if (!v2)
  {
    v12 = v11;
    if (*(a1 + 16) && (v13 = sub_25A8F3600(1751607656, 0xE400000000000000), (v14 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v13, &v48);
    }

    else
    {
      v49 = 0u;
      v48 = 0u;
    }

    v45 = sub_25A8DF268(&v48);
    sub_25A878194(&v48, &qword_27FA04458, &unk_25A9F7FB0);
    v17 = sub_25A8DF850(a1, 1702521203, 0xE400000000000000);
    if (v18)
    {
      v19 = sub_25A8DF5A8(a1, 1702521203, 0xE400000000000000);
      if (v19)
      {
        v50 = 0;
        v49 = 0u;
        v48 = 0u;
        v20 = qword_27FA043D8;

        if (v20 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v21 = sub_25A955E70(&v48);
        v47 = mlx_array_new();
        swift_beginAccess();
        v43 = v12[2];
        swift_beginAccess();
        v22 = *(v45 + 16);
        v23 = Array<A>.asInt32.getter(v19);
        v24 = *(v19 + 2);

        v25 = mlx_array_dtype(v12[2]);
        v26 = dword_25A9F95BC[sub_25A956420(v25)];
        swift_beginAccess();
        mlx_random_randint(&v47, v43, v22, (v23 + 32), v24, v26, *(v21 + 16), *(v46 + 16));
      }

      v50 = 0;
      v49 = 0u;
      v48 = 0u;
      v36 = qword_27FA043D8;

      if (v36 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v37 = sub_25A9616CC();
      v38 = sub_25A955E70(&v48);
      v47 = mlx_array_new();
      swift_beginAccess();
      v44 = v12[2];
      swift_beginAccess();
      v39 = *(v45 + 16);
      v40 = Array<A>.asInt32.getter(v37);
      v41 = *(v37 + 2);

      v42 = mlx_array_dtype(v12[2]);
      LODWORD(v37) = dword_25A9F95BC[sub_25A956420(v42)];
      swift_beginAccess();
      mlx_random_randint(&v47, v44, v39, (v40 + 32), v41, v37, *(v38 + 16), *(v46 + 16));
    }

    v27 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25A9F8D90;
    *(inited + 32) = v27;
    v50 = 0;
    v49 = 0u;
    v48 = 0u;
    v29 = qword_27FA043D8;

    if (v29 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v30 = sub_25A955E70(&v48);
    v47 = mlx_array_new();
    swift_beginAccess();
    v31 = v12[2];
    swift_beginAccess();
    v32 = *(v45 + 16);
    v33 = Array<A>.asInt32.getter(inited);

    v34 = mlx_array_dtype(v12[2]);
    v35 = dword_25A9F95BC[sub_25A956420(v34)];
    swift_beginAccess();
    mlx_random_randint(&v47, v31, v32, (v33 + 32), 1uLL, v35, *(v30 + 16), *(v46 + 16));
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v51);
}

void sub_25A8B59DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B59E4);
  }

  _Unwind_Resume(a1);
}

void sub_25A8B5A28(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = sub_25A8DF850(a1, 1702521203, 0xE400000000000000);
  if (v4)
  {
    v5 = sub_25A8DF5A8(a1, 1702521203, 0xE400000000000000);
    if (v5)
    {
      v6 = v5;
      v37 = 0;
      v36 = 0u;
      v35 = 0u;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v7 = sub_25A8BA638(0.0, 1.0);
      v9 = v8;
      v10 = sub_25A955E70(&v35);
      v34 = mlx_array_new();
      swift_beginAccess();
      v11 = *(v7 + 16);
      swift_beginAccess();
      v12 = *(v9 + 16);
      v13 = Array<A>.asInt32.getter(v6);
      v14 = *(v6 + 16);

      swift_beginAccess();
      mlx_random_uniform(&v34, v11, v12, (v13 + 32), v14, 10, *(v10 + 16), *(v33 + 16));
    }

    v37 = 0;
    v36 = 0u;
    v35 = 0u;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v24 = sub_25A8BA638(0.0, 1.0);
    v26 = v25;
    v27 = sub_25A9616CC();
    v28 = sub_25A955E70(&v35);
    v34 = mlx_array_new();
    swift_beginAccess();
    v29 = *(v24 + 16);
    swift_beginAccess();
    v30 = *(v26 + 16);
    v31 = Array<A>.asInt32.getter(v27);
    v32 = *(v27 + 2);

    swift_beginAccess();
    mlx_random_uniform(&v34, v29, v30, (v31 + 32), v32, 10, *(v28 + 16), *(v33 + 16));
  }

  v15 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25A9F8D90;
  *(inited + 32) = v15;
  v37 = 0;
  v36 = 0u;
  v35 = 0u;
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v17 = sub_25A8BA638(0.0, 1.0);
  v19 = v18;
  v20 = sub_25A955E70(&v35);
  v34 = mlx_array_new();
  swift_beginAccess();
  v21 = *(v17 + 16);
  swift_beginAccess();
  v22 = *(v19 + 16);
  v23 = Array<A>.asInt32.getter(inited);
  swift_setDeallocating();
  swift_beginAccess();
  mlx_random_uniform(&v34, v21, v22, (v23 + 32), 1uLL, 10, *(v20 + 16), *(v33 + 16));
}

void sub_25A8B5EE8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B5EF0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B5F1C(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) || (v3 = sub_25A8F3600(1936550244, 0xE400000000000000), (v4 & 1) == 0))
  {
    v44 = 0u;
    v45 = 0u;
    v46 = 0;
    goto LABEL_17;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v3, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_17;
  }

  v5 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
LABEL_17:
    sub_25A878194(&v44, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_18;
  }

  v6 = v46;
  __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
  v7 = (*(v6 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(&v44);
  if (!*(v7 + 16))
  {

    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v18 = v43[0];
    v19 = sub_25A8BA638(0.0, 1.0);
    v21 = v20;
    v22 = sub_25A9616CC();
    v23 = sub_25A955E70(&v44);
    v42 = mlx_array_new();
    swift_beginAccess();
    v39 = *(v19 + 16);
    swift_beginAccess();
    v24 = *(v21 + 16);
    v25 = Array<A>.asInt32.getter(v22);
    v26 = *(v22 + 2);

    swift_beginAccess();
    mlx_random_uniform(&v42, v39, v24, (v25 + 32), v26, 10, *(v23 + 16), *(v18 + 16));
  }

  v9 = sub_25A92F774(v7, v8);

  if (v9)
  {
    if (v9 >> 62)
    {
      v10 = sub_25A998848();
      if (v10)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_9:
        *&v44 = MEMORY[0x277D84F90];
        sub_25A937570(0, v10 & ~(v10 >> 63), 0);
        if (v10 < 0)
        {
          __break(1u);
        }

        v11 = v44;
        if ((v9 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v10; ++i)
          {
            v13 = [MEMORY[0x25F8509C0](i v9)];
            swift_unknownObjectRelease();
            *&v44 = v11;
            v15 = *(v11 + 16);
            v14 = *(v11 + 24);
            if (v15 >= v14 >> 1)
            {
              sub_25A937570((v14 > 1), v15 + 1, 1);
              v11 = v44;
            }

            *(v11 + 16) = v15 + 1;
            *(v11 + 8 * v15 + 32) = v13;
          }
        }

        else
        {
          v27 = (v9 + 32);
          do
          {
            v28 = [*v27 integerValue];
            *&v44 = v11;
            v30 = *(v11 + 16);
            v29 = *(v11 + 24);
            if (v30 >= v29 >> 1)
            {
              v40 = v28;
              sub_25A937570((v29 > 1), v30 + 1, 1);
              v11 = v44;
              v28 = v40;
            }

            *(v11 + 16) = v30 + 1;
            *(v11 + 8 * v30 + 32) = v28;
            ++v27;
            --v10;
          }

          while (v10);
        }

LABEL_30:
        v46 = 0;
        v44 = 0u;
        v45 = 0u;
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v31 = v43[0];
        v32 = sub_25A8BA638(0.0, 1.0);
        v34 = v33;
        v35 = sub_25A955E70(&v44);
        v42 = mlx_array_new();
        swift_beginAccess();
        v41 = *(v32 + 16);
        swift_beginAccess();
        v36 = *(v34 + 16);
        v37 = Array<A>.asInt32.getter(v11);
        v38 = *(v11 + 16);

        swift_beginAccess();
        mlx_random_uniform(&v42, v41, v36, (v37 + 32), v38, 10, *(v35 + 16), *(v31 + 16));
      }
    }

    v11 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

LABEL_18:
  sub_25A874F54();
  swift_allocError();
  *v16 = 99;
  return swift_willThrow();
}

void sub_25A8B6518(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B6520);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B654C(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) || (v3 = sub_25A8F3600(1936550244, 0xE400000000000000), (v4 & 1) == 0))
  {
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
    goto LABEL_17;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v3, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    goto LABEL_17;
  }

  v5 = *(&v33 + 1);
  if (!*(&v33 + 1))
  {
LABEL_17:
    sub_25A878194(&v32, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_18;
  }

  v6 = v34;
  __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
  v7 = (*(v6 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(&v32);
  if (!*(v7 + 16))
  {

    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v18 = v31[0];
    v19 = sub_25A955E70(&v32);
    v30 = mlx_array_new();
    v20 = Array<A>.asInt32.getter(MEMORY[0x277D84F90]);
    swift_beginAccess();
    mlx_random_normal(&v30, (v20 + 32), 0, 10, *(v19 + 16), *(v18 + 16), 0.0, 1.0);
  }

  v9 = sub_25A92F774(v7, v8);

  if (v9)
  {
    if (v9 >> 62)
    {
      v10 = sub_25A998848();
      if (v10)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_9:
        *&v32 = MEMORY[0x277D84F90];
        sub_25A937570(0, v10 & ~(v10 >> 63), 0);
        if (v10 < 0)
        {
          __break(1u);
        }

        v11 = v32;
        if ((v9 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v10; ++i)
          {
            v13 = [MEMORY[0x25F8509C0](i v9)];
            swift_unknownObjectRelease();
            *&v32 = v11;
            v15 = *(v11 + 16);
            v14 = *(v11 + 24);
            if (v15 >= v14 >> 1)
            {
              sub_25A937570((v14 > 1), v15 + 1, 1);
              v11 = v32;
            }

            *(v11 + 16) = v15 + 1;
            *(v11 + 8 * v15 + 32) = v13;
          }
        }

        else
        {
          v21 = (v9 + 32);
          do
          {
            v22 = [*v21 integerValue];
            *&v32 = v11;
            v24 = *(v11 + 16);
            v23 = *(v11 + 24);
            if (v24 >= v23 >> 1)
            {
              v29 = v22;
              sub_25A937570((v23 > 1), v24 + 1, 1);
              v11 = v32;
              v22 = v29;
            }

            *(v11 + 16) = v24 + 1;
            *(v11 + 8 * v24 + 32) = v22;
            ++v21;
            --v10;
          }

          while (v10);
        }

LABEL_30:
        v34 = 0;
        v32 = 0u;
        v33 = 0u;
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v25 = v31[0];
        v26 = sub_25A955E70(&v32);
        v30 = mlx_array_new();
        v27 = Array<A>.asInt32.getter(v11);
        v28 = *(v11 + 16);

        swift_beginAccess();
        mlx_random_normal(&v30, (v27 + 32), v28, 10, *(v26 + 16), *(v25 + 16), 0.0, 1.0);
      }
    }

    v11 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

LABEL_18:
  sub_25A874F54();
  swift_allocError();
  *v16 = 98;
  return swift_willThrow();
}