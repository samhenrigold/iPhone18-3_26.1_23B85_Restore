void sub_25A8B6A88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B6A90);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B6ABC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v72 = *MEMORY[0x277D85DE8];
  v6 = sub_25A8DF850(a1, 97, 0xE100000000000000);
  if (v7)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(97, 0xE100000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v69);
    }

    else
    {
      v69 = 0u;
      v70 = 0u;
    }

    v13 = sub_25A8DF268(&v69);
    result = sub_25A878194(&v69, &qword_27FA04458, &unk_25A9F7FB0);
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v10 = v6;
    if (v6 < 1)
    {
      sub_25A874F54();
      swift_allocError();
      *v26 = 110;
      return swift_willThrow();
    }

    v11 = sub_25A9373B8(v6, 0);
    if (sub_25A959040(&v69, (v11 + 4), v10, 0, v10) != v10)
    {
      __break(1u);
      swift_once();
      sub_25A998C58();
      sub_25A963A0C(v10, v3, v69);
    }

    v12 = sub_25A930380(v11);

    v13 = sub_25A955844(v12, 0);
  }

  swift_beginAccess();
  if (mlx_array_ndim(*(v13 + 16)) != 1 || mlx_array_size(*(v13 + 16)) < 1)
  {
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v21 = sub_25A997BD8();
    __swift_project_value_buffer(v21, qword_27FA0FCE8);
    v22 = sub_25A997BB8();
    v23 = sub_25A9983A8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_25A232000, v22, v23, "Only support 1-D array for np.random.choice", v24, 2u);
      MEMORY[0x25F852800](v24, -1, -1);
    }

    sub_25A874F54();
    swift_allocError();
    *v25 = 110;
    swift_willThrow();
  }

  v15 = sub_25A8DF850(a1, 1702521203, 0xE400000000000000);
  if (v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = v15;
  }

  v63 = v17;
  if (!*(a1 + 16))
  {
    v20 = 1;
LABEL_31:
    v69 = 0u;
    v70 = 0u;
    goto LABEL_32;
  }

  v18 = sub_25A8F3600(0x6563616C706572, 0xE700000000000000);
  if ((v19 & 1) != 0 && (sub_25A87500C(*(a1 + 56) + 32 * v18, &v69), swift_dynamicCast()))
  {
    v20 = v67[0];
  }

  else
  {
    v20 = 1;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_31;
  }

  v27 = sub_25A8F3600(112, 0xE100000000000000);
  if ((v28 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v27, &v69);
LABEL_32:
  v65 = sub_25A8DF268(&v69);
  if (!v2)
  {
    sub_25A878194(&v69, &qword_27FA04458, &unk_25A9F7FB0);

    v30 = sub_25A9616CC();
    v31 = sub_25A9616CC();
    v32 = sub_25A930B64(v30, v31);

    if (v32)
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v33 = v69;
      *&v69 = mlx_array_new();
      swift_beginAccess();
      mlx_min(&v69, *(v65 + 16), 0, *(v33 + 16));

      v34 = v69;
      type metadata accessor for MLXArray();
      inited = swift_initStackObject();
      *(inited + 16) = v34;
      sub_25A8B7CE4(inited, 0);
    }

    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v40 = sub_25A997BD8();
    __swift_project_value_buffer(v40, qword_27FA0FCE8);

    v41 = sub_25A997BB8();
    v42 = sub_25A9983A8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *&v69 = v64;
      *v43 = 136315394;
      sub_25A9616CC();
      v44 = MEMORY[0x25F850440]();
      v46 = v45;

      v47 = sub_25A98CC90(v44, v46, &v69);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      sub_25A9616CC();
      v48 = MEMORY[0x25F850440]();
      v50 = v49;

      v51 = sub_25A98CC90(v48, v50, &v69);

      *(v43 + 14) = v51;
      _os_log_impl(&dword_25A232000, v41, v42, "Sample weights p has different shape %s than the input array %s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F852800](v64, -1, -1);
      MEMORY[0x25F852800](v43, -1, -1);
    }

    goto LABEL_59;
  }

  sub_25A878194(&v69, &qword_27FA04458, &unk_25A9F7FB0);
  if (v20)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v29 = v69;
    v66[0] = mlx_array_new();
    mlx_ones_like(v66, *(v13 + 16), *(v29 + 16));
  }

  if (mlx_array_size(*(v13 + 16)) < v63)
  {
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v36 = sub_25A997BD8();
    __swift_project_value_buffer(v36, qword_27FA0FCE8);

    v37 = sub_25A997BB8();
    v38 = sub_25A9983A8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134218240;
      *(v39 + 4) = v63;
      *(v39 + 12) = 2048;
      *(v39 + 14) = mlx_array_size(*(v13 + 16));

      _os_log_impl(&dword_25A232000, v37, v38, "Sample size %ld larger than population size %ld when replace=False", v39, 0x16u);
      MEMORY[0x25F852800](v39, -1, -1);
    }

    else
    {
    }

LABEL_59:
    sub_25A874F54();
    swift_allocError();
    *v60 = 110;
    swift_willThrow();
  }

  if (v63 != mlx_array_size(*(v13 + 16)))
  {
    v52 = sub_25A9616CC();
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v53 = sub_25A8BA7E0(0.0, 1.0);
    v62 = v54;
    v55 = v53;
    v56 = sub_25A955E70(&v69);
    v68 = mlx_array_new();
    swift_beginAccess();
    v61 = *(v55 + 16);
    swift_beginAccess();
    v57 = *(v62 + 16);
    v58 = Array<A>.asInt32.getter(v52);
    v59 = *(v52 + 2);

    swift_beginAccess();
    mlx_random_uniform(&v68, v61, v57, (v58 + 32), v59, 10, *(v56 + 16), *(*v67 + 16));
  }

  a2[3] = type metadata accessor for MLXArray();

  *a2 = v13;
  return result;
}

void sub_25A8B7C10(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B7C18);
  }

  _Unwind_Resume(a1);
}

void sub_25A8B7CE4(uint64_t a1, uint64_t a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v4 = mlx_array_dtype(*(a1 + 16));
  v5 = sub_25A956420(v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = 7;
  }

  v7 = sub_25A8BFCB4(a2, v6);
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v10[0] = mlx_array_new();
  v8 = *(a1 + 16);
  swift_beginAccess();
  mlx_greater_equal(v10, v8, *(v7 + 16), *(v9 + 16));
}

void sub_25A8B7E20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B7E28);
  }

  _Unwind_Resume(a1);
}

void sub_25A8B7E3C(uint64_t *a1, double a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v4 = mlx_array_dtype(a1[2]);
  LODWORD(v5) = sub_25A956420(v4);
  if (((v5 - 9) & 0xFC) != 0)
  {
    v5 = 10;
  }

  else
  {
    v5 = v5;
  }

  v6 = sub_25A8BE5C4(v5, a2);
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v8[0] = mlx_array_new();
  swift_beginAccess();
  mlx_divide(v8, *(v6 + 16), a1[2], *(v7 + 16));
}

void sub_25A8B7FA4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B7FACLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B7FC0(uint64_t a1)
{
  if (!*(a1 + 16) || (v3 = sub_25A8F3600(0x737961727261, 0xE600000000000000), (v4 & 1) == 0))
  {
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
    goto LABEL_11;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v3, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    goto LABEL_11;
  }

  if (!*(&v41 + 1))
  {
LABEL_11:
    sub_25A878194(&v40, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_12;
  }

  sub_25A87817C(&v40, v43);
  v5 = v44;
  v6 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v7 = (*(v6 + 8))(v5, v6);
  v8 = sub_25A92FDB0(v7);

  if (v8)
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      v39[0] = MEMORY[0x277D84F90];
      sub_25A998748();
      v10 = v8 + 32;
      do
      {
        sub_25A872F24(v10, &v40);
        v11 = *(&v41 + 1);
        v12 = v42;
        __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
        (*(v12 + 8))(13, v11, v12);
        __swift_destroy_boxed_opaque_existential_0Tm(&v40);
        sub_25A998718();
        sub_25A998758();
        sub_25A998768();
        sub_25A998728();
        v10 += 40;
        --v9;
      }

      while (v9);

      v13 = v39[0];
    }

    else
    {

      v13 = MEMORY[0x277D84F90];
    }

    if (v13 >> 62)
    {
      v20 = sub_25A998848();
    }

    else
    {
      v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = MEMORY[0x277D84F90];
    if (v20)
    {
      v39[0] = MEMORY[0x277D84F90];
      sub_25A937570(0, v20 & ~(v20 >> 63), 0);
      if (v20 < 0)
      {
        __break(1u);
        goto LABEL_45;
      }

      v21 = v39[0];
      if ((v13 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v20; ++i)
        {
          v23 = MEMORY[0x25F8509C0](i, v13);
          swift_beginAccess();
          v24 = mlx_array_ndim(*(v23 + 16));
          swift_unknownObjectRelease();
          v39[0] = v21;
          v26 = *(v21 + 16);
          v25 = *(v21 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_25A937570((v25 > 1), v26 + 1, 1);
            v21 = v39[0];
          }

          *(v21 + 16) = v26 + 1;
          *(v21 + 8 * v26 + 32) = v24;
        }
      }

      else
      {
        v27 = (v13 + 32);
        do
        {
          v28 = *v27;
          swift_beginAccess();
          v29 = mlx_array_ndim(*(v28 + 16));
          v39[0] = v21;
          v31 = *(v21 + 16);
          v30 = *(v21 + 24);
          if (v31 >= v30 >> 1)
          {
            v32 = v29;
            sub_25A937570((v30 > 1), v31 + 1, 1);
            v29 = v32;
            v21 = v39[0];
          }

          *(v21 + 16) = v31 + 1;
          *(v21 + 8 * v31 + 32) = v29;
          ++v27;
          --v20;
        }

        while (v20);
      }
    }

    v33 = *(v21 + 16);
    v34 = 32;
    while (v33)
    {
      v35 = *(v21 + v34);
      v34 += 8;
      --v33;
      if (v35 != 1)
      {

        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v36 = v39[0];
        v37 = v13;
        v38 = 1;
LABEL_42:
        sub_25A954860(v37, v38, v36);
      }
    }

    if (qword_27FA043D8 == -1)
    {
LABEL_41:
      sub_25A998C58();
      v36 = v39[0];
      v37 = v13;
      v38 = 0;
      goto LABEL_42;
    }

LABEL_45:
    swift_once();
    goto LABEL_41;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v43);
LABEL_12:
  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v14 = sub_25A997BD8();
  __swift_project_value_buffer(v14, qword_27FA0FCE8);
  v15 = sub_25A997BB8();
  v16 = sub_25A9983A8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_25A232000, v15, v16, "Invalid arg arrays for concatenate", v17, 2u);
    MEMORY[0x25F852800](v17, -1, -1);
  }

  sub_25A874F54();
  swift_allocError();
  *v18 = 105;
  return swift_willThrow();
}

uint64_t sub_25A8B8544(uint64_t a1)
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
    mlx_logical_not(&v9, *(v6 + 16), *(v8 + 16));
  }

  return result;
}

void sub_25A8B86D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B86D8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B86E4(uint64_t a1)
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
    mlx_logical_and(&v13, v12, *(v10 + 16), *(v11 + 16));
  }

  return result;
}

void sub_25A8B890C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B8914);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B8920@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(97, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v26);
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v7 = sub_25A8DF268(&v26);
  result = sub_25A878194(&v26, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    v9 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v10)
    {
      v11 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
      if (!v11)
      {
        sub_25A874F54();
        swift_allocError();
        *v24 = 103;
        swift_willThrow();
      }

      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v12 = v26;
      v25 = mlx_array_new();
      swift_beginAccess();
      v13 = *(v7 + 16);
      v14 = Array<A>.asInt32.getter(v11);
      v15 = *(v11 + 2);

      mlx_expand_dims_axes(&v25, v13, (v14 + 32), v15, *(v12 + 16));
    }

    else
    {
      v16 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25A9F8D90;
      *(inited + 32) = v16;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v18 = v26;
      v25 = mlx_array_new();
      swift_beginAccess();
      v19 = *(v7 + 16);
      v20 = Array<A>.asInt32.getter(inited);
      swift_setDeallocating();
      mlx_expand_dims_axes(&v25, v19, (v20 + 32), 1uLL, *(v18 + 16));
    }

    v21 = v25;
    v22 = type metadata accessor for MLXArray();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    a2[3] = v22;

    *a2 = v23;
  }

  return result;
}

void sub_25A8B8C18(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B8C20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B8C3C(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) || (v3 = sub_25A8F3600(0x737961727261, 0xE600000000000000), (v4 & 1) == 0))
  {
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    goto LABEL_11;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v3, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    goto LABEL_11;
  }

  if (!*(&v30 + 1))
  {
LABEL_11:
    sub_25A878194(&v29, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_12;
  }

  sub_25A87817C(&v29, v32);
  v5 = v33;
  v6 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v7 = (*(v6 + 8))(v5, v6);
  v8 = sub_25A92FDB0(v7);

  if (v8)
  {
    v9 = *(v8 + 16);
    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      v28[0] = MEMORY[0x277D84F90];
      sub_25A998748();
      v11 = v8 + 32;
      do
      {
        sub_25A872F24(v11, &v29);
        v12 = *(&v30 + 1);
        v13 = v31;
        __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
        (*(v13 + 8))(13, v12, v13);
        __swift_destroy_boxed_opaque_existential_0Tm(&v29);
        sub_25A998718();
        sub_25A998758();
        sub_25A998768();
        sub_25A998728();
        v11 += 40;
        --v9;
      }

      while (v9);

      v14 = v28[0];
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }

    if (v14 >> 62)
    {
      v21 = sub_25A998848();
      if (v21)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v21 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
LABEL_22:
        v28[0] = v10;
        sub_25A998748();
        if (v21 < 0)
        {
          __break(1u);
        }

        for (i = 0; i != v21; ++i)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x25F8509C0](i, v14);
          }

          else
          {
            v23 = *(v14 + 8 * i + 32);
          }

          if (qword_27FA043D8 != -1)
          {
            swift_once();
          }

          sub_25A998C58();
          v24 = v27;
          v27 = mlx_array_new();
          swift_beginAccess();
          mlx_atleast_2d(&v27, *(v23 + 16), *(v24 + 16));

          v25 = v27;
          type metadata accessor for MLXArray();
          *(swift_allocObject() + 16) = v25;
          sub_25A998718();
          sub_25A998758();
          sub_25A998768();
          sub_25A998728();
        }

        v26 = v28[0];
LABEL_33:
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        sub_25A954860(v26, 0, v28[0]);
      }
    }

    v26 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v32);
LABEL_12:
  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v15 = sub_25A997BD8();
  __swift_project_value_buffer(v15, qword_27FA0FCE8);
  v16 = sub_25A997BB8();
  v17 = sub_25A9983A8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_25A232000, v16, v17, "Invalid arg arrays for concatenate", v18, 2u);
    MEMORY[0x25F852800](v18, -1, -1);
  }

  sub_25A874F54();
  swift_allocError();
  *v19 = 104;
  return swift_willThrow();
}

void sub_25A8B9174(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B917CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B9188@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) || (v5 = sub_25A8F3600(0x737961727261, 0xE600000000000000), (v6 & 1) == 0))
  {
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    goto LABEL_12;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
LABEL_12:
    sub_25A878194(&v31, &qword_27FA04728, &unk_25A9FD740);
    if (qword_27FA043C0 == -1)
    {
LABEL_13:
      v15 = sub_25A997BD8();
      __swift_project_value_buffer(v15, qword_27FA0FCE8);
      v16 = sub_25A997BB8();
      v17 = sub_25A9983A8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_25A232000, v16, v17, "Invalid arg arrays for atleast_2d", v18, 2u);
        MEMORY[0x25F852800](v18, -1, -1);
      }

      sub_25A874F54();
      swift_allocError();
      *v19 = 106;
      return swift_willThrow();
    }

LABEL_31:
    swift_once();
    goto LABEL_13;
  }

  if (!*(&v32 + 1))
  {
    goto LABEL_12;
  }

  v28 = a2;
  sub_25A87817C(&v31, v34);
  v7 = v35;
  v8 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v9 = (*(v8 + 8))(v7, v8);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v29 = MEMORY[0x277D84F90];
    sub_25A998748();
    v12 = 0;
    v13 = v9 + 32;
    while (v12 < *(v9 + 16))
    {
      sub_25A87500C(v13, &v31);
      sub_25A87500C(&v31, v30);
      sub_25A8DF268(v30);
      if (v2)
      {

        sub_25A878194(v30, &qword_27FA04458, &unk_25A9F7FB0);
        __swift_destroy_boxed_opaque_existential_0Tm(&v31);

        return __swift_destroy_boxed_opaque_existential_0Tm(v34);
      }

      sub_25A878194(v30, &qword_27FA04458, &unk_25A9F7FB0);
      __swift_destroy_boxed_opaque_existential_0Tm(&v31);
      sub_25A998718();
      sub_25A998758();
      sub_25A998768();
      sub_25A998728();
      ++v12;
      v13 += 32;
      if (v10 == v12)
      {

        v14 = v29;
        v11 = MEMORY[0x277D84F90];
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_18:
  if (v14 >> 62)
  {
    v21 = sub_25A998848();
    if (v21)
    {
      goto LABEL_20;
    }

LABEL_33:

    goto LABEL_34;
  }

  v21 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_33;
  }

LABEL_20:
  v30[0] = v11;
  v11 = v30;
  sub_25A998748();
  if (v21 < 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  for (i = 0; i != v21; ++i)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x25F8509C0](i, v14);
    }

    else
    {
      v23 = *(v14 + 8 * i + 32);
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v24 = v29;
    v29 = mlx_array_new();
    swift_beginAccess();
    mlx_atleast_2d(&v29, *(v23 + 16), *(v24 + 16));

    v25 = v29;
    type metadata accessor for MLXArray();
    *(swift_allocObject() + 16) = v25;
    sub_25A998718();
    sub_25A998758();
    sub_25A998768();
    sub_25A998728();
  }

  v11 = v30[0];
LABEL_34:
  v26 = v28;
  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_36;
    }

LABEL_40:
    v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04928, &qword_25A9F9578);
    goto LABEL_41;
  }

  v26 = v28;
  if (sub_25A998848() != 1)
  {
    goto LABEL_40;
  }

LABEL_36:
  v26[3] = type metadata accessor for MLXArray();
  if ((v11 & 0xC000000000000001) != 0)
  {
LABEL_44:
    v11 = MEMORY[0x25F8509C0](0, v11);

    v26 = v28;
    goto LABEL_41;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
  }

  v27 = *(v11 + 32);

  v11 = v27;
LABEL_41:
  *v26 = v11;
  return __swift_destroy_boxed_opaque_existential_0Tm(v34);
}

void sub_25A8B973C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B9744);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B9750@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) || (v5 = sub_25A8F3600(0x737961727261, 0xE600000000000000), (v6 & 1) == 0))
  {
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    goto LABEL_12;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
LABEL_12:
    sub_25A878194(&v31, &qword_27FA04728, &unk_25A9FD740);
    if (qword_27FA043C0 == -1)
    {
LABEL_13:
      v15 = sub_25A997BD8();
      __swift_project_value_buffer(v15, qword_27FA0FCE8);
      v16 = sub_25A997BB8();
      v17 = sub_25A9983A8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_25A232000, v16, v17, "Invalid arg arrays for atleast_1d", v18, 2u);
        MEMORY[0x25F852800](v18, -1, -1);
      }

      sub_25A874F54();
      swift_allocError();
      *v19 = 106;
      return swift_willThrow();
    }

LABEL_31:
    swift_once();
    goto LABEL_13;
  }

  if (!*(&v32 + 1))
  {
    goto LABEL_12;
  }

  v28 = a2;
  sub_25A87817C(&v31, v34);
  v7 = v35;
  v8 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v9 = (*(v8 + 8))(v7, v8);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v29 = MEMORY[0x277D84F90];
    sub_25A998748();
    v12 = 0;
    v13 = v9 + 32;
    while (v12 < *(v9 + 16))
    {
      sub_25A87500C(v13, &v31);
      sub_25A87500C(&v31, v30);
      sub_25A8DF268(v30);
      if (v2)
      {

        sub_25A878194(v30, &qword_27FA04458, &unk_25A9F7FB0);
        __swift_destroy_boxed_opaque_existential_0Tm(&v31);

        return __swift_destroy_boxed_opaque_existential_0Tm(v34);
      }

      sub_25A878194(v30, &qword_27FA04458, &unk_25A9F7FB0);
      __swift_destroy_boxed_opaque_existential_0Tm(&v31);
      sub_25A998718();
      sub_25A998758();
      sub_25A998768();
      sub_25A998728();
      ++v12;
      v13 += 32;
      if (v10 == v12)
      {

        v14 = v29;
        v11 = MEMORY[0x277D84F90];
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_18:
  if (v14 >> 62)
  {
    v21 = sub_25A998848();
    if (v21)
    {
      goto LABEL_20;
    }

LABEL_33:

    goto LABEL_34;
  }

  v21 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_33;
  }

LABEL_20:
  v30[0] = v11;
  v11 = v30;
  sub_25A998748();
  if (v21 < 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  for (i = 0; i != v21; ++i)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x25F8509C0](i, v14);
    }

    else
    {
      v23 = *(v14 + 8 * i + 32);
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v24 = v29;
    v29 = mlx_array_new();
    swift_beginAccess();
    mlx_atleast_1d(&v29, *(v23 + 16), *(v24 + 16));

    v25 = v29;
    type metadata accessor for MLXArray();
    *(swift_allocObject() + 16) = v25;
    sub_25A998718();
    sub_25A998758();
    sub_25A998768();
    sub_25A998728();
  }

  v11 = v30[0];
LABEL_34:
  v26 = v28;
  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_36;
    }

LABEL_40:
    v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04928, &qword_25A9F9578);
    goto LABEL_41;
  }

  v26 = v28;
  if (sub_25A998848() != 1)
  {
    goto LABEL_40;
  }

LABEL_36:
  v26[3] = type metadata accessor for MLXArray();
  if ((v11 & 0xC000000000000001) != 0)
  {
LABEL_44:
    v11 = MEMORY[0x25F8509C0](0, v11);

    v26 = v28;
    goto LABEL_41;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
  }

  v27 = *(v11 + 32);

  v11 = v27;
LABEL_41:
  *v26 = v11;
  return __swift_destroy_boxed_opaque_existential_0Tm(v34);
}

void sub_25A8B9D04(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B9D0CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B9D18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) || (v5 = sub_25A8F3600(0x737961727261, 0xE600000000000000), (v6 & 1) == 0))
  {
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    goto LABEL_12;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
LABEL_12:
    sub_25A878194(&v31, &qword_27FA04728, &unk_25A9FD740);
    if (qword_27FA043C0 == -1)
    {
LABEL_13:
      v15 = sub_25A997BD8();
      __swift_project_value_buffer(v15, qword_27FA0FCE8);
      v16 = sub_25A997BB8();
      v17 = sub_25A9983A8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_25A232000, v16, v17, "Invalid arg arrays for atleast_3d", v18, 2u);
        MEMORY[0x25F852800](v18, -1, -1);
      }

      sub_25A874F54();
      swift_allocError();
      *v19 = 106;
      return swift_willThrow();
    }

LABEL_31:
    swift_once();
    goto LABEL_13;
  }

  if (!*(&v32 + 1))
  {
    goto LABEL_12;
  }

  v28 = a2;
  sub_25A87817C(&v31, v34);
  v7 = v35;
  v8 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v9 = (*(v8 + 8))(v7, v8);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v29 = MEMORY[0x277D84F90];
    sub_25A998748();
    v12 = 0;
    v13 = v9 + 32;
    while (v12 < *(v9 + 16))
    {
      sub_25A87500C(v13, &v31);
      sub_25A87500C(&v31, v30);
      sub_25A8DF268(v30);
      if (v2)
      {

        sub_25A878194(v30, &qword_27FA04458, &unk_25A9F7FB0);
        __swift_destroy_boxed_opaque_existential_0Tm(&v31);

        return __swift_destroy_boxed_opaque_existential_0Tm(v34);
      }

      sub_25A878194(v30, &qword_27FA04458, &unk_25A9F7FB0);
      __swift_destroy_boxed_opaque_existential_0Tm(&v31);
      sub_25A998718();
      sub_25A998758();
      sub_25A998768();
      sub_25A998728();
      ++v12;
      v13 += 32;
      if (v10 == v12)
      {

        v14 = v29;
        v11 = MEMORY[0x277D84F90];
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_18:
  if (v14 >> 62)
  {
    v21 = sub_25A998848();
    if (v21)
    {
      goto LABEL_20;
    }

LABEL_33:

    goto LABEL_34;
  }

  v21 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_33;
  }

LABEL_20:
  v30[0] = v11;
  v11 = v30;
  sub_25A998748();
  if (v21 < 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  for (i = 0; i != v21; ++i)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x25F8509C0](i, v14);
    }

    else
    {
      v23 = *(v14 + 8 * i + 32);
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v24 = v29;
    v29 = mlx_array_new();
    swift_beginAccess();
    mlx_atleast_3d(&v29, *(v23 + 16), *(v24 + 16));

    v25 = v29;
    type metadata accessor for MLXArray();
    *(swift_allocObject() + 16) = v25;
    sub_25A998718();
    sub_25A998758();
    sub_25A998768();
    sub_25A998728();
  }

  v11 = v30[0];
LABEL_34:
  v26 = v28;
  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_36;
    }

LABEL_40:
    v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04928, &qword_25A9F9578);
    goto LABEL_41;
  }

  v26 = v28;
  if (sub_25A998848() != 1)
  {
    goto LABEL_40;
  }

LABEL_36:
  v26[3] = type metadata accessor for MLXArray();
  if ((v11 & 0xC000000000000001) != 0)
  {
LABEL_44:
    v11 = MEMORY[0x25F8509C0](0, v11);

    v26 = v28;
    goto LABEL_41;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
  }

  v27 = *(v11 + 32);

  v11 = v27;
LABEL_41:
  *v26 = v11;
  return __swift_destroy_boxed_opaque_existential_0Tm(v34);
}

void sub_25A8BA2CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8BA2D4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8BA2E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(7500385, 0xE300000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v20);
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v7 = sub_25A8DF268(&v20);
  result = sub_25A878194(&v20, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    v9 = sub_25A8DF850(a1, 0x7466696873, 0xE500000000000000);
    if (v10)
    {
LABEL_8:
      sub_25A874F54();
      swift_allocError();
      *v11 = 107;
      swift_willThrow();
    }

    v12 = v9;
    v13 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v14)
    {
      v15 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
      if (!v15)
      {
        goto LABEL_8;
      }

      v16 = v15;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v17 = sub_25A954E94(v7, v12, v16, v20);
    }

    else
    {
      v18 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25A9F8D90;
      *(inited + 32) = v18;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v17 = sub_25A954E94(v7, v12, inited, v20);

      swift_setDeallocating();
    }

    a2[3] = type metadata accessor for MLXArray();

    *a2 = v17;
  }

  return result;
}

uint64_t sub_25A8BA558(double a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (fabs(a1) >= 3.40282347e38)
  {
    *v5 = a1;
    v2 = mlx_array_new_data(v5, (MEMORY[0x277D84F90] + 32), 0, 11);
  }

  else
  {
    v1 = a1;
    *v5 = v1;
    v2 = mlx_array_new_data(v5, (MEMORY[0x277D84F90] + 32), 0, 10);
  }

  v3 = v2;
  type metadata accessor for MLXArray();
  result = swift_allocObject();
  *(result + 16) = v3;
  return result;
}

void sub_25A8BA624(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8BA62CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8BA638(float a1, float a2)
{
  type metadata accessor for MLXArray();
  if (swift_dynamicCast())
  {
    v4 = v12;
    if ((swift_dynamicCast() & 1) == 0)
    {
      swift_beginAccess();
      v7 = mlx_array_dtype(*(v12 + 16));
      LODWORD(v8) = sub_25A956420(v7);
      if (((v8 - 9) & 0xFC) != 0)
      {
        v8 = 10;
      }

      else
      {
        v8 = v8;
      }

      sub_25A8BF14C(v8, a2);
    }
  }

  else if (swift_dynamicCast())
  {
    swift_beginAccess();
    v5 = mlx_array_dtype(*(v12 + 16));
    LODWORD(v6) = sub_25A956420(v5);
    if (((v6 - 9) & 0xFC) != 0)
    {
      v6 = 10;
    }

    else
    {
      v6 = v6;
    }

    return sub_25A8BF14C(v6, a1);
  }

  else
  {
    v9 = mlx_array_new_float(a1);
    v4 = swift_allocObject();
    *(v4 + 16) = v9;
    v10 = mlx_array_new_float(a2);
    *(swift_allocObject() + 16) = v10;
  }

  return v4;
}

uint64_t sub_25A8BA7E0(double a1, double a2)
{
  *v16 = a1;
  type metadata accessor for MLXArray();
  if (swift_dynamicCast())
  {
    v4 = v19;
    *v16 = a2;
    if ((swift_dynamicCast() & 1) == 0)
    {
      swift_beginAccess();
      v8 = mlx_array_dtype(*(v19 + 16));
      LODWORD(v9) = sub_25A956420(v8);
      if (((v9 - 9) & 0xFC) != 0)
      {
        v9 = 10;
      }

      else
      {
        v9 = v9;
      }

      sub_25A8BE5C4(v9, a2);
    }
  }

  else
  {
    *v16 = a2;
    v5 = MEMORY[0x277D839F8];
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      v6 = mlx_array_dtype(*(v19 + 16));
      LODWORD(v7) = sub_25A956420(v6);
      if (((v7 - 9) & 0xFC) != 0)
      {
        v7 = 10;
      }

      else
      {
        v7 = v7;
      }

      return sub_25A8BE5C4(v7, a1);
    }

    else
    {
      v17 = v5;
      v10 = sub_25A8DFAF8();
      v18 = v10;
      *v16 = a1;
      v11 = *__swift_project_boxed_opaque_existential_1(v16, v5);
      v12 = mlx_array_new_float(v11);
      v4 = swift_allocObject();
      *(v4 + 16) = v12;
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      v17 = v5;
      v18 = v10;
      *v16 = a2;
      v13 = *__swift_project_boxed_opaque_existential_1(v16, v5);
      v14 = mlx_array_new_float(v13);
      *(swift_allocObject() + 16) = v14;
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
    }
  }

  return v4;
}

uint64_t sub_25A8BA9DC(char a1, unsigned __int8 a2)
{
  v146 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    mlx_array_new_BOOL(a1 & 1);
  }

  v3 = a1 & 1;
  LOBYTE(v140) = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v143 = 0;
    v141 = 0u;
    v142 = 0u;
    sub_25A878194(&v141, &qword_27FA04950, &qword_25A9F9598);
    LOBYTE(v140) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v143 = 0;
      v141 = 0u;
      v142 = 0u;
      sub_25A878194(&v141, &qword_27FA047C8, &qword_25A9F8E88);
      v144[0] = 0;
      v144[1] = 0xE000000000000000;
      sub_25A9985F8();
      MEMORY[0x25F850290](0xD000000000000011, 0x800000025AA68C30);
      LOBYTE(v141) = 0;
      sub_25A9987C8();
      MEMORY[0x25F850290](544175136, 0xE400000000000000);
      LOBYTE(v141) = a2;
      sub_25A9987C8();
      result = sub_25A998818();
      goto LABEL_250;
    }

    sub_25A87817C(&v141, v144);
    v8 = v145;
    v9 = __swift_project_boxed_opaque_existential_1(v144, v145);
    v139 = &v137;
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x28223BE20](v9);
    v12 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    if (a2 <= 6u)
    {
      if (a2 <= 3u)
      {
        if (a2 != 1)
        {
          if (a2 != 2)
          {
            if (sub_25A9984D8() & 1) == 0 || (v48 = swift_getAssociatedTypeWitness(), v138 = &v137, MEMORY[0x28223BE20](v48), swift_getAssociatedConformanceWitness(), v49 = sub_25A998A78(), MEMORY[0x28223BE20](v49), sub_25A9989C8(), v50 = sub_25A997D98(), (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8), (v50))
            {
              if (sub_25A9984C8() < 32)
              {
                goto LABEL_157;
              }

              LODWORD(v141) = -1;
              v51 = sub_25A9984D8();
              v52 = sub_25A9984C8();
              v55 = __OFSUB__(v52, 32);
              v53 = v52 == 32;
              v54 = v52 - 32 < 0;
              if (v51)
              {
                if (v52 > 32)
                {
LABEL_128:
                  MEMORY[0x28223BE20](v52);
                  v11 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
                  sub_25A8DFA50();
                  sub_25A9984A8();
                  v74 = sub_25A997D88();
                  (*(v10 + 8))(v11, v8);
                  if (v74)
                  {
                    __break(1u);
                    goto LABEL_130;
                  }

LABEL_157:
                  v94 = sub_25A9984B8();
                  (*(v10 + 8))(v12, v8);
                  LODWORD(v141) = v94;
                  v7 = mlx_array_new_data(&v141, (MEMORY[0x277D84F90] + 32), 0, 3);
                  goto LABEL_226;
                }

                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                MEMORY[0x28223BE20](AssociatedTypeWitness);
                swift_getAssociatedConformanceWitness();
                v91 = sub_25A998A78();
                MEMORY[0x28223BE20](v91);
                sub_25A9989C8();
                v92 = sub_25A997D78();
                (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
                if ((v92 & 1) == 0)
                {
                  goto LABEL_157;
                }

LABEL_156:
                sub_25A9984B8();
                goto LABEL_157;
              }

LABEL_127:
              if (!(v54 ^ v55 | v53))
              {
                goto LABEL_128;
              }

              goto LABEL_156;
            }

LABEL_232:
            __break(1u);
LABEL_233:
            __break(1u);
LABEL_234:
            __break(1u);
LABEL_235:
            __break(1u);
LABEL_236:
            __break(1u);
            goto LABEL_237;
          }

          if (sub_25A9984D8() & 1) == 0 || (v13 = swift_getAssociatedTypeWitness(), v138 = &v137, MEMORY[0x28223BE20](v13), swift_getAssociatedConformanceWitness(), v14 = sub_25A998A78(), MEMORY[0x28223BE20](v14), sub_25A9989C8(), v15 = sub_25A997D98(), (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8), (v15))
          {
            if (sub_25A9984C8() < 16)
            {
              goto LABEL_155;
            }

            LOWORD(v141) = -1;
            v16 = sub_25A9984D8();
            v17 = sub_25A9984C8();
            v20 = __OFSUB__(v17, 16);
            v18 = v17 == 16;
            v19 = v17 - 16 < 0;
            if (v16)
            {
              if (v17 > 16)
              {
LABEL_125:
                MEMORY[0x28223BE20](v17);
                v11 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
                sub_25A8DFAA4();
                sub_25A9984A8();
                v73 = sub_25A997D88();
                v52 = (*(v10 + 8))(v11, v8);
                if (v73)
                {
                  __break(1u);
                  goto LABEL_127;
                }

LABEL_155:
                v93 = sub_25A9984B8();
                (*(v10 + 8))(v12, v8);
                LOWORD(v141) = v93;
                v7 = mlx_array_new_data(&v141, (MEMORY[0x277D84F90] + 32), 0, 2);
                goto LABEL_226;
              }

              v87 = swift_getAssociatedTypeWitness();
              MEMORY[0x28223BE20](v87);
              swift_getAssociatedConformanceWitness();
              v88 = sub_25A998A78();
              MEMORY[0x28223BE20](v88);
              sub_25A9989C8();
              v89 = sub_25A997D78();
              (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
              if ((v89 & 1) == 0)
              {
                goto LABEL_155;
              }

LABEL_154:
              sub_25A9984B8();
              goto LABEL_155;
            }

LABEL_124:
            if (!(v19 ^ v20 | v18))
            {
              goto LABEL_125;
            }

            goto LABEL_154;
          }

LABEL_231:
          __break(1u);
          goto LABEL_232;
        }

        if (sub_25A9984D8() & 1) == 0 || (v33 = swift_getAssociatedTypeWitness(), v138 = &v137, MEMORY[0x28223BE20](v33), swift_getAssociatedConformanceWitness(), v34 = sub_25A998A78(), MEMORY[0x28223BE20](v34), sub_25A9989C8(), v35 = sub_25A997D98(), (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8), (v35))
        {
          if (sub_25A9984C8() < 8)
          {
            goto LABEL_147;
          }

          LOBYTE(v141) = -1;
          v36 = sub_25A9984D8();
          v37 = sub_25A9984C8();
          if (v36)
          {
            if (v37 > 8)
            {
LABEL_119:
              MEMORY[0x28223BE20](v37);
              v11 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_25A89522C();
              sub_25A9984A8();
              v71 = sub_25A997D88();
              v43 = (*(v10 + 8))(v11, v8);
              if (v71)
              {
                __break(1u);
                goto LABEL_121;
              }

LABEL_147:
              v85 = sub_25A9984B8();
              (*(v10 + 8))(v12, v8);
              LOBYTE(v141) = v85;
              v7 = mlx_array_new_data(&v141, (MEMORY[0x277D84F90] + 32), 0, 1);
              goto LABEL_226;
            }

            v79 = swift_getAssociatedTypeWitness();
            MEMORY[0x28223BE20](v79);
            swift_getAssociatedConformanceWitness();
            v80 = sub_25A998A78();
            MEMORY[0x28223BE20](v80);
            sub_25A9989C8();
            v81 = sub_25A997D78();
            (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
            if ((v81 & 1) == 0)
            {
              goto LABEL_147;
            }
          }

          else if (v37 > 8)
          {
            goto LABEL_119;
          }

          sub_25A9984B8();
          goto LABEL_147;
        }

        __break(1u);
LABEL_230:
        __break(1u);
        goto LABEL_231;
      }

      if (a2 == 4)
      {
        if (sub_25A9984D8() & 1) == 0 || (v39 = swift_getAssociatedTypeWitness(), v138 = &v137, MEMORY[0x28223BE20](v39), swift_getAssociatedConformanceWitness(), v40 = sub_25A998A78(), MEMORY[0x28223BE20](v40), sub_25A9989C8(), v41 = sub_25A997D98(), (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8), (v41))
        {
          if (sub_25A9984C8() < 64)
          {
            goto LABEL_149;
          }

          *&v141 = -1;
          v42 = sub_25A9984D8();
          v43 = sub_25A9984C8();
          v46 = __OFSUB__(v43, 64);
          v44 = v43 == 64;
          v45 = v43 - 64 < 0;
          if (v42)
          {
            if (v43 > 64)
            {
LABEL_122:
              MEMORY[0x28223BE20](v43);
              v11 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_25A8DFF20();
              sub_25A9984A8();
              v72 = sub_25A997D88();
              v17 = (*(v10 + 8))(v11, v8);
              if (v72)
              {
                __break(1u);
                goto LABEL_124;
              }

LABEL_149:
              v86 = sub_25A9984B8();
              (*(v10 + 8))(v12, v8);
              *&v141 = v86;
              v7 = mlx_array_new_data(&v141, (MEMORY[0x277D84F90] + 32), 0, 4);
              goto LABEL_226;
            }

            v82 = swift_getAssociatedTypeWitness();
            MEMORY[0x28223BE20](v82);
            swift_getAssociatedConformanceWitness();
            v83 = sub_25A998A78();
            MEMORY[0x28223BE20](v83);
            sub_25A9989C8();
            v84 = sub_25A997D78();
            (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
            if ((v84 & 1) == 0)
            {
              goto LABEL_149;
            }

LABEL_148:
            sub_25A9984B8();
            goto LABEL_149;
          }

LABEL_121:
          if (!(v45 ^ v46 | v44))
          {
            goto LABEL_122;
          }

          goto LABEL_148;
        }

        goto LABEL_230;
      }

      if (a2 == 5)
      {
        if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() < 9)
        {
          goto LABEL_202;
        }

        LOBYTE(v141) = 0x80;
        if (sub_25A9984D8())
        {
          v25 = sub_25A9984C8();
          if (v25 < 8)
          {
LABEL_201:
            sub_25A9984B8();
            goto LABEL_202;
          }
        }

        else
        {
          v77 = sub_25A9984D8();
          v25 = sub_25A9984C8();
          if ((v77 & 1) == 0)
          {
            if (v25 < 8)
            {
              goto LABEL_201;
            }

LABEL_202:
            if (sub_25A9984C8() <= 8 && (sub_25A9984C8() != 8 || (sub_25A9984D8() & 1) != 0))
            {
              goto LABEL_212;
            }

            LOBYTE(v141) = 127;
            v116 = sub_25A9984D8();
            v117 = sub_25A9984C8();
            if (v116)
            {
              if (v117 > 8)
              {
LABEL_205:
                MEMORY[0x28223BE20](v117);
                sub_25A8DF9FC();
                sub_25A9984A8();
                v118 = sub_25A997D88();
                (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
                if (v118)
                {
                  goto LABEL_235;
                }

LABEL_212:
                v119 = sub_25A9984B8();
                (*(v10 + 8))(v12, v8);
                LOBYTE(v141) = v119;
                v7 = mlx_array_new_data(&v141, (MEMORY[0x277D84F90] + 32), 0, 5);
                goto LABEL_226;
              }
            }

            else if (v117 >= 8)
            {
              goto LABEL_205;
            }

            sub_25A9984B8();
            goto LABEL_212;
          }

          if (v25 <= 8)
          {
            v113 = swift_getAssociatedTypeWitness();
            v138 = &v137;
            MEMORY[0x28223BE20](v113);
            swift_getAssociatedConformanceWitness();
            v114 = sub_25A998A78();
            MEMORY[0x28223BE20](v114);
            sub_25A9989C8();
            v115 = sub_25A997D88();
            (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
            if (v115)
            {
LABEL_239:
              __break(1u);
              goto LABEL_240;
            }

            goto LABEL_201;
          }
        }

        MEMORY[0x28223BE20](v25);
        sub_25A8DF9FC();
        sub_25A9984A8();
        v97 = sub_25A997D88();
        (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        if (v97)
        {
          goto LABEL_239;
        }

        goto LABEL_202;
      }

      if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() >= 17)
      {
        LOWORD(v141) = 0x8000;
        if (sub_25A9984D8())
        {
          v57 = sub_25A9984C8();
          if (v57 < 16)
          {
LABEL_214:
            sub_25A9984B8();
            goto LABEL_215;
          }

          goto LABEL_164;
        }

        v78 = sub_25A9984D8();
        v57 = sub_25A9984C8();
        if (v78)
        {
          if (v57 <= 16)
          {
            v120 = swift_getAssociatedTypeWitness();
            v138 = &v137;
            MEMORY[0x28223BE20](v120);
            swift_getAssociatedConformanceWitness();
            v121 = sub_25A998A78();
            MEMORY[0x28223BE20](v121);
            sub_25A9989C8();
            v122 = sub_25A997D88();
            (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
            if (v122)
            {
              goto LABEL_240;
            }

            goto LABEL_214;
          }

LABEL_164:
          MEMORY[0x28223BE20](v57);
          sub_25A8DF9A8();
          sub_25A9984A8();
          v98 = sub_25A997D88();
          (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
          if (v98)
          {
LABEL_240:
            __break(1u);
          }

          goto LABEL_215;
        }

        if (v57 < 16)
        {
          goto LABEL_214;
        }
      }

LABEL_215:
      if (sub_25A9984C8() <= 16 && (sub_25A9984C8() != 16 || (sub_25A9984D8() & 1) != 0))
      {
        goto LABEL_225;
      }

      LOWORD(v141) = 0x7FFF;
      v123 = sub_25A9984D8();
      v124 = sub_25A9984C8();
      if (v123)
      {
        if (v124 > 16)
        {
LABEL_218:
          MEMORY[0x28223BE20](v124);
          sub_25A8DF9A8();
          sub_25A9984A8();
          v125 = sub_25A997D88();
          (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
          if (v125)
          {
            goto LABEL_236;
          }

LABEL_225:
          v126 = sub_25A9984B8();
          (*(v10 + 8))(v12, v8);
          LOWORD(v141) = v126;
          v7 = mlx_array_new_data(&v141, (MEMORY[0x277D84F90] + 32), 0, 6);
          goto LABEL_226;
        }
      }

      else if (v124 >= 16)
      {
        goto LABEL_218;
      }

      sub_25A9984B8();
      goto LABEL_225;
    }

    if (a2 > 9u)
    {
      if (a2 == 10)
      {
        if (sub_25A9984C8() < 65)
        {
          v59 = sub_25A9984D8();
          v60 = sub_25A9984B8();
          (*(v10 + 8))(v12, v8);
          if (v59)
          {
            v47 = v60;
          }

          else
          {
            v47 = v60;
          }
        }

        else
        {
          sub_25A8DFB4C();
          sub_25A8DFD98();
          sub_25A997C48();
          (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
          v47 = *&v141;
        }

        v7 = mlx_array_new_float(v47);
        goto LABEL_226;
      }

      if (a2 == 11)
      {
        if (sub_25A9984C8() < 65)
        {
          v61 = sub_25A9984D8();
          v62 = sub_25A9984B8();
          (*(v10 + 8))(v12, v8);
          if (v61)
          {
            v24 = v62;
          }

          else
          {
            v24 = v62;
          }
        }

        else
        {
          sub_25A8DFB4C();
          sub_25A8DFD98();
          sub_25A997C48();
          (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
          v24 = *&v141;
        }

        if (qword_27FA043D8 == -1)
        {
          goto LABEL_112;
        }

LABEL_228:
        swift_once();
LABEL_112:
        sub_25A998C58();
        v67 = v141;
        v68 = mlx_array_new_float(v24);
        *&v141 = mlx_array_new();
        mlx_astype(&v141, v68, 12, *(v67 + 16));
        v69 = v141;
        type metadata accessor for MLXArray();
        v70 = swift_allocObject();
        *(v70 + 16) = v69;
        mlx_array_free(v68);

LABEL_227:
        __swift_destroy_boxed_opaque_existential_0Tm(v144);
        return v70;
      }

      if (sub_25A9984C8() < 65)
      {
        v65 = sub_25A9984D8();
        v66 = sub_25A9984B8();
        (*(v10 + 8))(v12, v8);
        if (v65)
        {
          v58 = v66;
        }

        else
        {
          v58 = v66;
        }
      }

      else
      {
        sub_25A8DFAF8();
        sub_25A8DFD44();
        sub_25A997C48();
        (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        v58 = *&v141;
      }

      v32 = sub_25A8BA558(v58);
LABEL_117:
      v70 = v32;
      goto LABEL_227;
    }

    if (a2 == 7)
    {
      if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() < 33)
      {
        goto LABEL_176;
      }

      LODWORD(v141) = 0x80000000;
      if (sub_25A9984D8())
      {
        v38 = sub_25A9984C8();
        if (v38 >= 32)
        {
          goto LABEL_158;
        }

        goto LABEL_175;
      }

LABEL_130:
      v75 = sub_25A9984D8();
      v38 = sub_25A9984C8();
      if (v75)
      {
        if (v38 > 32)
        {
LABEL_158:
          MEMORY[0x28223BE20](v38);
          sub_25A8DF954();
          sub_25A9984A8();
          v95 = sub_25A997D88();
          (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
          if (v95)
          {
            goto LABEL_237;
          }

LABEL_176:
          if (sub_25A9984C8() <= 32 && (sub_25A9984C8() != 32 || (sub_25A9984D8() & 1) != 0))
          {
LABEL_186:
            v105 = sub_25A9984B8();
            (*(v10 + 8))(v12, v8);
            mlx_array_new_int(v105);
          }

          LODWORD(v141) = 0x7FFFFFFF;
          v102 = sub_25A9984D8();
          v103 = sub_25A9984C8();
          if (v102)
          {
            if (v103 > 32)
            {
LABEL_179:
              MEMORY[0x28223BE20](v103);
              sub_25A8DF954();
              sub_25A9984A8();
              v104 = sub_25A997D88();
              (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
              if ((v104 & 1) == 0)
              {
                goto LABEL_186;
              }

              goto LABEL_233;
            }
          }

          else if (v103 >= 32)
          {
            goto LABEL_179;
          }

          sub_25A9984B8();
          goto LABEL_186;
        }

        v99 = swift_getAssociatedTypeWitness();
        v138 = &v137;
        MEMORY[0x28223BE20](v99);
        swift_getAssociatedConformanceWitness();
        v100 = sub_25A998A78();
        MEMORY[0x28223BE20](v100);
        sub_25A9989C8();
        v101 = sub_25A997D88();
        (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        if (v101)
        {
LABEL_237:
          __break(1u);
          goto LABEL_238;
        }
      }

      else if (v38 >= 32)
      {
        goto LABEL_176;
      }

LABEL_175:
      sub_25A9984B8();
      goto LABEL_176;
    }

    if (a2 != 8)
    {
      if (sub_25A9984C8() < 65)
      {
        v63 = sub_25A9984D8();
        v64 = sub_25A9984B8();
        (*(v10 + 8))(v12, v8);
        if (v63)
        {
          v56 = v64;
        }

        else
        {
          v56 = v64;
        }
      }

      else
      {
        sub_25A8DFBA0();
        sub_25A8DFDEC();
        sub_25A997C48();
        (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        v56 = *&v141;
      }

      *&v141 = v56;
      v7 = mlx_array_new_data(&v141, (MEMORY[0x277D84F90] + 32), 0, 9);
      goto LABEL_226;
    }

    if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() >= 65)
    {
      *&v141 = 0x8000000000000000;
      if (sub_25A9984D8())
      {
        v21 = sub_25A9984C8();
        if (v21 < 64)
        {
LABEL_188:
          sub_25A9984B8();
          goto LABEL_189;
        }

        goto LABEL_160;
      }

      v76 = sub_25A9984D8();
      v21 = sub_25A9984C8();
      if (v76)
      {
        if (v21 <= 64)
        {
          v106 = swift_getAssociatedTypeWitness();
          v138 = &v137;
          MEMORY[0x28223BE20](v106);
          swift_getAssociatedConformanceWitness();
          v107 = sub_25A998A78();
          MEMORY[0x28223BE20](v107);
          sub_25A9989C8();
          v108 = sub_25A997D88();
          (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
          if (v108)
          {
LABEL_238:
            __break(1u);
            goto LABEL_239;
          }

          goto LABEL_188;
        }

LABEL_160:
        MEMORY[0x28223BE20](v21);
        sub_25A8DF900();
        sub_25A9984A8();
        v96 = sub_25A997D88();
        (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        if (v96)
        {
          goto LABEL_238;
        }

        goto LABEL_189;
      }

      if (v21 < 64)
      {
        goto LABEL_188;
      }
    }

LABEL_189:
    if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
    {
      goto LABEL_199;
    }

    *&v141 = 0x7FFFFFFFFFFFFFFFLL;
    v109 = sub_25A9984D8();
    v110 = sub_25A9984C8();
    if (v109)
    {
      if (v110 > 64)
      {
LABEL_192:
        MEMORY[0x28223BE20](v110);
        sub_25A8DF900();
        sub_25A9984A8();
        v111 = sub_25A997D88();
        (*(v10 + 8))(&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        if (v111)
        {
          goto LABEL_234;
        }

LABEL_199:
        v112 = sub_25A9984B8();
        (*(v10 + 8))(v12, v8);
        *&v141 = v112;
        v7 = mlx_array_new_data(&v141, (MEMORY[0x277D84F90] + 32), 0, 8);
        goto LABEL_226;
      }
    }

    else if (v110 >= 64)
    {
      goto LABEL_192;
    }

    sub_25A9984B8();
    goto LABEL_199;
  }

  sub_25A87817C(&v141, v144);
  v4 = v145;
  v5 = __swift_project_boxed_opaque_existential_1(v144, v145);
  v6 = v5;
  if (a2 <= 6u)
  {
    if (a2 > 3u)
    {
      if (a2 == 4)
      {
        sub_25A8DFD44();
        sub_25A9987F8();
        if ((BYTE8(v141) & 1) == 0)
        {
          v7 = mlx_array_new_data(&v141, (MEMORY[0x277D84F90] + 32), 0, 4);
          goto LABEL_226;
        }

        *&v141 = 0;
        *(&v141 + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v131 = sub_25A998C68();
        MEMORY[0x25F850290](v131);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else if (a2 == 5)
      {
        sub_25A8DFCF0();
        sub_25A9987F8();
        if ((BYTE1(v141) & 1) == 0)
        {
          v7 = mlx_array_new_data(&v141, (MEMORY[0x277D84F90] + 32), 0, 5);
          goto LABEL_226;
        }

        *&v141 = 0;
        *(&v141 + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v134 = sub_25A998C68();
        MEMORY[0x25F850290](v134);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](947154505, 0xE400000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        sub_25A8DFC9C();
        sub_25A9987F8();
        if ((BYTE2(v141) & 1) == 0)
        {
          v7 = mlx_array_new_data(&v141, (MEMORY[0x277D84F90] + 32), 0, 6);
          goto LABEL_226;
        }

        *&v141 = 0;
        *(&v141 + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v136 = sub_25A998C68();
        MEMORY[0x25F850290](v136);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }
    }

    else if (a2 == 1)
    {
      sub_25A8DFE40();
      sub_25A9987F8();
      if ((BYTE1(v141) & 1) == 0)
      {
        v7 = mlx_array_new_data(&v141, (MEMORY[0x277D84F90] + 32), 0, 1);
        goto LABEL_226;
      }

      *&v141 = 0;
      *(&v141 + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v129 = sub_25A998C68();
      MEMORY[0x25F850290](v129);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (a2 == 2)
    {
      sub_25A8DFDEC();
      sub_25A9987F8();
      if ((BYTE2(v141) & 1) == 0)
      {
        v7 = mlx_array_new_data(&v141, (MEMORY[0x277D84F90] + 32), 0, 2);
LABEL_226:
        v127 = v7;
        type metadata accessor for MLXArray();
        v70 = swift_allocObject();
        *(v70 + 16) = v127;
        goto LABEL_227;
      }

      *&v141 = 0;
      *(&v141 + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v132 = sub_25A998C68();
      MEMORY[0x25F850290](v132);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFD98();
      sub_25A9987F8();
      if ((BYTE4(v141) & 1) == 0)
      {
        v7 = mlx_array_new_data(&v141, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_226;
      }

      *&v141 = 0;
      *(&v141 + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v135 = sub_25A998C68();
      MEMORY[0x25F850290](v135);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    goto LABEL_250;
  }

  if (a2 > 9u)
  {
    if (a2 == 10)
    {
      MEMORY[0x28223BE20](v5);
      (*(v27 + 16))(&v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v4);
      sub_25A8DFB4C();
      sub_25A997C38();
      v7 = mlx_array_new_float(*&v141);
      goto LABEL_226;
    }

    if (a2 == 11)
    {
      MEMORY[0x28223BE20](v5);
      (*(v23 + 16))(&v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v4);
      sub_25A8DFB4C();
      sub_25A997C38();
      v24 = v140;
      if (qword_27FA043D8 == -1)
      {
        goto LABEL_112;
      }

      goto LABEL_228;
    }

    MEMORY[0x28223BE20](v5);
    (*(v31 + 16))(&v137 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v4);
    sub_25A8DFAF8();
    sub_25A997C38();
    v32 = sub_25A8BA558(*&v141);
    goto LABEL_117;
  }

  if (a2 == 7)
  {
    sub_25A8DFC48();
    sub_25A9987F8();
    if ((BYTE4(v141) & 1) == 0)
    {
      mlx_array_new_int(v141);
    }

    *&v141 = 0;
    *(&v141 + 1) = 0xE000000000000000;
    sub_25A9985F8();
    v130 = sub_25A998C68();
    MEMORY[0x25F850290](v130);

    MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
    MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
    MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
    result = sub_25A998818();
  }

  else
  {
    if (a2 != 8)
    {
      MEMORY[0x28223BE20](v5);
      (*(v29 + 16))(&v137 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v4);
      sub_25A8DFBA0();
      sub_25A997C38();
      LOWORD(v140) = v141;
      v7 = mlx_array_new_data(&v140, (MEMORY[0x277D84F90] + 32), 0, 9);
      goto LABEL_226;
    }

    sub_25A8DFBF4();
    sub_25A9987F8();
    if ((BYTE8(v141) & 1) == 0)
    {
      v7 = mlx_array_new_data(&v141, (MEMORY[0x277D84F90] + 32), 0, 8);
      goto LABEL_226;
    }

    *&v141 = 0;
    *(&v141 + 1) = 0xE000000000000000;
    sub_25A9985F8();
    v133 = sub_25A998C68();
    MEMORY[0x25F850290](v133);

    MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
    MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
    MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
    result = sub_25A998818();
  }

LABEL_250:
  __break(1u);
  return result;
}

void sub_25A8BE4D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8BE4E0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8BE5C4(uint64_t a1, double a2)
{
  v3 = a1;
  v32[5] = *MEMORY[0x277D85DE8];
  if (a1 == 12)
  {
    *v32 = a2;
    v4 = mlx_array_new_data(v32, (MEMORY[0x277D84F90] + 32), 0, 11);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v4;
    return result;
  }

  v6 = MEMORY[0x277D839F8];
  v32[3] = MEMORY[0x277D839F8];
  v32[4] = sub_25A8DFAF8();
  *v32 = a2;
  v7 = __swift_project_boxed_opaque_existential_1(v32, v6);
  if (v3 > 5)
  {
    if (v3 > 8)
    {
      if (v3 == 9)
      {
        _D0 = *v7;
        __asm { FCVT            H0, D0 }

        LOWORD(v30) = LOWORD(_D0);
        v8 = mlx_array_new_data(&v30, (MEMORY[0x277D84F90] + 32), 0, 9);
      }

      else
      {
        if (v3 != 10)
        {
          v17 = *v7;
          if (qword_27FA043D8 != -1)
          {
            swift_once();
          }

          sub_25A998C58();
          v18 = v17;
          v19 = v30;
          v20 = mlx_array_new_float(v18);
          v30 = mlx_array_new();
          mlx_astype(&v30, v20, 12, *(v19 + 16));
          v21 = v30;
          type metadata accessor for MLXArray();
          v16 = swift_allocObject();
          *(v16 + 16) = v21;
          mlx_array_free(v20);

          goto LABEL_34;
        }

        v9 = *v7;
        v8 = mlx_array_new_float(v9);
      }

LABEL_33:
      v15 = v8;
      type metadata accessor for MLXArray();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
LABEL_34:
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      return v16;
    }

    if (v3 == 6)
    {
      sub_25A8DD304(&v30, *v7);
      if ((v30 & 0x10000) == 0)
      {
        v8 = mlx_array_new_data(&v30, (MEMORY[0x277D84F90] + 32), 0, 6);
        goto LABEL_33;
      }

      v30 = 0;
      v31 = 0xE000000000000000;
      sub_25A9985F8();
      v22 = sub_25A998C68();
      MEMORY[0x25F850290](v22);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (v3 == 7)
    {
      sub_25A8DD4B8(&v30, *v7);
      if ((v30 & 0x100000000) == 0)
      {
        mlx_array_new_int(v30);
      }

      v30 = 0;
      v31 = 0xE000000000000000;
      sub_25A9985F8();
      v25 = sub_25A998C68();
      MEMORY[0x25F850290](v25);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DD66C(&v30, *v7);
      if ((v31 & 1) == 0)
      {
        v8 = mlx_array_new_data(&v30, (MEMORY[0x277D84F90] + 32), 0, 8);
        goto LABEL_33;
      }

      v30 = 0;
      v31 = 0xE000000000000000;
      sub_25A9985F8();
      v28 = sub_25A998C68();
      MEMORY[0x25F850290](v28);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else if (v3 > 2)
  {
    if (v3 == 3)
    {
      sub_25A8DCEA0(&v30, *v7);
      if ((v30 & 0x100000000) == 0)
      {
        v8 = mlx_array_new_data(&v30, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_33;
      }

      v30 = 0;
      v31 = 0xE000000000000000;
      sub_25A9985F8();
      v23 = sub_25A998C68();
      MEMORY[0x25F850290](v23);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (v3 == 4)
    {
      sub_25A8DD010(&v30, *v7);
      if ((v31 & 1) == 0)
      {
        v8 = mlx_array_new_data(&v30, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_33;
      }

      v30 = 0;
      v31 = 0xE000000000000000;
      sub_25A9985F8();
      v26 = sub_25A998C68();
      MEMORY[0x25F850290](v26);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DD150(&v30, *v7);
      if ((v30 & 0x100) == 0)
      {
        v8 = mlx_array_new_data(&v30, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_33;
      }

      v30 = 0;
      v31 = 0xE000000000000000;
      sub_25A9985F8();
      v29 = sub_25A998C68();
      MEMORY[0x25F850290](v29);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](947154505, 0xE400000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else
  {
    if (!v3)
    {
      mlx_array_new_BOOL((*v7 & 0x7FFFFFFFFFFFFFFFLL) != 0);
    }

    if (v3 == 1)
    {
      sub_25A8DCBB8(&v30, *v7);
      if ((v30 & 0x100) == 0)
      {
        v8 = mlx_array_new_data(&v30, (MEMORY[0x277D84F90] + 32), 0, 1);
        goto LABEL_33;
      }

      v30 = 0;
      v31 = 0xE000000000000000;
      sub_25A9985F8();
      v24 = sub_25A998C68();
      MEMORY[0x25F850290](v24);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DCD2C(&v30, *v7);
      if ((v30 & 0x10000) == 0)
      {
        v8 = mlx_array_new_data(&v30, (MEMORY[0x277D84F90] + 32), 0, 2);
        goto LABEL_33;
      }

      v30 = 0;
      v31 = 0xE000000000000000;
      sub_25A9985F8();
      v27 = sub_25A998C68();
      MEMORY[0x25F850290](v27);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  __break(1u);
  return result;
}

void sub_25A8BF0C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8BF0D0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8BF14C(uint64_t a1, float a2)
{
  v2 = a1;
  v30[5] = *MEMORY[0x277D85DE8];
  if (a1 == 10)
  {
    v3 = mlx_array_new_float(a2);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v3;
    return result;
  }

  v5 = MEMORY[0x277D83A90];
  v30[3] = MEMORY[0x277D83A90];
  v30[4] = sub_25A8DFB4C();
  *v30 = a2;
  v7 = __swift_project_boxed_opaque_existential_1(v30, v5);
  if (v2 > 5)
  {
    if (v2 > 8)
    {
      if (v2 != 9)
      {
        if (v2 == 11)
        {
          v9 = *v7;
          if (qword_27FA043D8 != -1)
          {
            swift_once();
          }

          sub_25A998C58();
          v10 = v28;
          v11 = mlx_array_new_float(v9);
          v28 = mlx_array_new();
          mlx_astype(&v28, v11, 12, *(v10 + 16));
          v12 = v28;
          type metadata accessor for MLXArray();
          v13 = swift_allocObject();
          *(v13 + 16) = v12;
          mlx_array_free(v11);
        }

        else
        {
          v13 = sub_25A8BA558(*v7);
        }

        goto LABEL_36;
      }

      _S0 = *v7;
      __asm { FCVT            H0, S0 }

      LOWORD(v28) = _S0;
      v8 = mlx_array_new_data(&v28, (MEMORY[0x277D84F90] + 32), 0, 9);
LABEL_35:
      v19 = v8;
      type metadata accessor for MLXArray();
      v13 = swift_allocObject();
      *(v13 + 16) = v19;
LABEL_36:
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      return v13;
    }

    if (v2 == 6)
    {
      sub_25A8DDFB0(&v28, *v7);
      if ((v28 & 0x10000) == 0)
      {
        v8 = mlx_array_new_data(&v28, (MEMORY[0x277D84F90] + 32), 0, 6);
        goto LABEL_35;
      }

      v28 = 0;
      v29 = 0xE000000000000000;
      sub_25A9985F8();
      v20 = sub_25A998C68();
      MEMORY[0x25F850290](v20);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (v2 == 7)
    {
      sub_25A8DE164(&v28, *v7);
      if ((v28 & 0x100000000) == 0)
      {
        mlx_array_new_int(v28);
      }

      v28 = 0;
      v29 = 0xE000000000000000;
      sub_25A9985F8();
      v23 = sub_25A998C68();
      MEMORY[0x25F850290](v23);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DE2F4(&v28, *v7);
      if ((v29 & 1) == 0)
      {
        v8 = mlx_array_new_data(&v28, (MEMORY[0x277D84F90] + 32), 0, 8);
        goto LABEL_35;
      }

      v28 = 0;
      v29 = 0xE000000000000000;
      sub_25A9985F8();
      v26 = sub_25A998C68();
      MEMORY[0x25F850290](v26);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else if (v2 > 2)
  {
    if (v2 == 3)
    {
      sub_25A8DDB44(&v28, *v7);
      if ((v28 & 0x100000000) == 0)
      {
        v8 = mlx_array_new_data(&v28, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_35;
      }

      v28 = 0;
      v29 = 0xE000000000000000;
      sub_25A9985F8();
      v21 = sub_25A998C68();
      MEMORY[0x25F850290](v21);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (v2 == 4)
    {
      sub_25A8DDC8C(&v28, *v7);
      if ((v29 & 1) == 0)
      {
        v8 = mlx_array_new_data(&v28, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_35;
      }

      v28 = 0;
      v29 = 0xE000000000000000;
      sub_25A9985F8();
      v24 = sub_25A998C68();
      MEMORY[0x25F850290](v24);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DDDFC(&v28, *v7);
      if ((v28 & 0x100) == 0)
      {
        v8 = mlx_array_new_data(&v28, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_35;
      }

      v28 = 0;
      v29 = 0xE000000000000000;
      sub_25A9985F8();
      v27 = sub_25A998C68();
      MEMORY[0x25F850290](v27);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](947154505, 0xE400000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else
  {
    if (!v2)
    {
      mlx_array_new_BOOL((*v7 & 0x7FFFFFFF) != 0);
    }

    if (v2 == 1)
    {
      sub_25A8DD85C(&v28, *v7);
      if ((v28 & 0x100) == 0)
      {
        v8 = mlx_array_new_data(&v28, (MEMORY[0x277D84F90] + 32), 0, 1);
        goto LABEL_35;
      }

      v28 = 0;
      v29 = 0xE000000000000000;
      sub_25A9985F8();
      v22 = sub_25A998C68();
      MEMORY[0x25F850290](v22);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DD9D0(&v28, *v7);
      if ((v28 & 0x10000) == 0)
      {
        v8 = mlx_array_new_data(&v28, (MEMORY[0x277D84F90] + 32), 0, 2);
        goto LABEL_35;
      }

      v28 = 0;
      v29 = 0xE000000000000000;
      sub_25A9985F8();
      v25 = sub_25A998C68();
      MEMORY[0x25F850290](v25);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  __break(1u);
  return result;
}

void sub_25A8BFC38(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8BFC40);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8BFCB4(uint64_t a1, unsigned __int8 a2)
{
  v117 = *MEMORY[0x277D85DE8];
  if (a2 == 8)
  {
    *v114 = a1;
    v3 = mlx_array_new_data(v114, (MEMORY[0x277D84F90] + 32), 0, 8);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v3;
    return result;
  }

  v111 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  v6 = MEMORY[0x277D83B88];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v113 = 0;
    memset(v112, 0, sizeof(v112));
    sub_25A878194(v112, &qword_27FA04950, &qword_25A9F9598);
    v115 = v6;
    v116 = sub_25A895280();
    *v114 = a1;
    v11 = __swift_project_boxed_opaque_existential_1(v114, v6);
    v110 = &v110;
    v12 = *(v6 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v14);
    v15 = sub_25A9984D8();
    if (a2 <= 5u)
    {
      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            if (v15)
            {
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              MEMORY[0x28223BE20](AssociatedTypeWitness);
              swift_getAssociatedConformanceWitness();
              v53 = sub_25A998A78();
              MEMORY[0x28223BE20](v53);
              sub_25A9989C8();
              v54 = sub_25A997D98();
              (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
              if ((v54 & 1) == 0)
              {
                goto LABEL_162;
              }
            }

            LOWORD(v112[0]) = -1;
            v55 = sub_25A9984D8();
            MEMORY[0x28223BE20](v55);
            sub_25A8DFAA4();
            sub_25A9984A8();
            v56 = sub_25A997D88();
            v57 = *(v12 + 8);
            v57(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
            if ((v56 & 1) == 0)
            {
              v58 = *v14;
              v57(v14, MEMORY[0x277D83B88]);
              LOWORD(v112[0]) = v58;
              v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 2);
              goto LABEL_150;
            }

            goto LABEL_158;
          }

          if (v15)
          {
            v16 = swift_getAssociatedTypeWitness();
            MEMORY[0x28223BE20](v16);
            swift_getAssociatedConformanceWitness();
            v17 = sub_25A998A78();
            MEMORY[0x28223BE20](v17);
            sub_25A9989C8();
            v18 = sub_25A997D98();
            (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
            if ((v18 & 1) == 0)
            {
              goto LABEL_160;
            }
          }

          LOBYTE(v112[0]) = -1;
          v19 = sub_25A9984D8();
          MEMORY[0x28223BE20](v19);
          sub_25A89522C();
          sub_25A9984A8();
          v20 = sub_25A997D88();
          v21 = *(v12 + 8);
          v21(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
          if ((v20 & 1) == 0)
          {
            v22 = *v14;
            v21(v14, MEMORY[0x277D83B88]);
            LOBYTE(v112[0]) = v22;
            v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 1);
            goto LABEL_150;
          }

LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        if ((v15 & 1) != 0 && sub_25A9984C8() >= 65)
        {
          *&v112[0] = 0x8000000000000000;
          if (sub_25A9984D8())
          {
            v42 = sub_25A9984C8();
            if (v42 < 64)
            {
LABEL_132:
              sub_25A9984B8();
              goto LABEL_133;
            }
          }

          else
          {
            v67 = sub_25A9984D8();
            v42 = sub_25A9984C8();
            if ((v67 & 1) == 0)
            {
              if (v42 >= 64)
              {
                goto LABEL_133;
              }

              goto LABEL_132;
            }

            if (v42 <= 64)
            {
              v75 = swift_getAssociatedTypeWitness();
              MEMORY[0x28223BE20](v75);
              swift_getAssociatedConformanceWitness();
              v76 = sub_25A998A78();
              MEMORY[0x28223BE20](v76);
              sub_25A9989C8();
              v77 = sub_25A997D88();
              (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
              if (v77)
              {
LABEL_164:
                __break(1u);
                goto LABEL_165;
              }

              goto LABEL_132;
            }
          }

          MEMORY[0x28223BE20](v42);
          sub_25A9984A8();
          v71 = sub_25A997D88();
          (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
          if (v71)
          {
            goto LABEL_164;
          }
        }

LABEL_133:
        if ((sub_25A9984D8() & 1) == 0)
        {
          *&v112[0] = 0x7FFFFFFFFFFFFFFFLL;
          v78 = sub_25A9984D8();
          if (v78)
          {
            sub_25A9984B8();
          }

          else
          {
            MEMORY[0x28223BE20](v78);
            sub_25A9984A8();
            v79 = sub_25A997D88();
            (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
            if (v79)
            {
LABEL_163:
              __break(1u);
              goto LABEL_164;
            }
          }
        }

        v80 = *v14;
        (*(v12 + 8))(v14, MEMORY[0x277D83B88]);
        mlx_array_new_BOOL(v80 != 0);
      }

      if (a2 == 3)
      {
        if (v15)
        {
          v44 = swift_getAssociatedTypeWitness();
          MEMORY[0x28223BE20](v44);
          swift_getAssociatedConformanceWitness();
          v45 = sub_25A998A78();
          MEMORY[0x28223BE20](v45);
          sub_25A9989C8();
          v46 = sub_25A997D98();
          (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
          if ((v46 & 1) == 0)
          {
            goto LABEL_159;
          }
        }

        LODWORD(v112[0]) = -1;
        v47 = sub_25A9984D8();
        MEMORY[0x28223BE20](v47);
        sub_25A8DFA50();
        sub_25A9984A8();
        v48 = sub_25A997D88();
        v49 = *(v12 + 8);
        v49(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
        if ((v48 & 1) == 0)
        {
          v50 = *v14;
          v49(v14, MEMORY[0x277D83B88]);
          LODWORD(v112[0]) = v50;
          v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 3);
          goto LABEL_150;
        }

        goto LABEL_156;
      }

      if (a2 == 4)
      {
        if (v15 & 1) == 0 || (v27 = swift_getAssociatedTypeWitness(), MEMORY[0x28223BE20](v27), swift_getAssociatedConformanceWitness(), v28 = sub_25A998A78(), MEMORY[0x28223BE20](v28), sub_25A9989C8(), v29 = sub_25A997D98(), (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]), (v29))
        {
          if (sub_25A9984D8())
          {
            v30 = swift_getAssociatedTypeWitness();
            MEMORY[0x28223BE20](v30);
            swift_getAssociatedConformanceWitness();
            v31 = sub_25A998A78();
            MEMORY[0x28223BE20](v31);
            sub_25A9989C8();
            v32 = sub_25A997D78();
            v33 = *(v12 + 8);
            v33(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
            if (v32)
            {
              sub_25A9984B8();
            }
          }

          else
          {
            v33 = *(v12 + 8);
          }

          v66 = *v14;
          v33(v14, MEMORY[0x277D83B88]);
          *&v112[0] = v66;
          v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 4);
          goto LABEL_150;
        }

        goto LABEL_161;
      }

      if ((v15 & 1) == 0 || sub_25A9984C8() < 9)
      {
        goto LABEL_148;
      }

      LOBYTE(v112[0]) = 0x80;
      if (sub_25A9984D8())
      {
        v60 = sub_25A9984C8();
        if (v60 < 8)
        {
LABEL_147:
          sub_25A9984B8();
LABEL_148:
          LOBYTE(v112[0]) = 127;
          v98 = sub_25A9984D8();
          MEMORY[0x28223BE20](v98);
          sub_25A8DF9FC();
          sub_25A9984A8();
          v99 = sub_25A997D88();
          v100 = *(v12 + 8);
          v100(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
          if ((v99 & 1) == 0)
          {
            v101 = *v14;
            v100(v14, MEMORY[0x277D83B88]);
            LOBYTE(v112[0]) = v101;
            v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 5);
            goto LABEL_150;
          }

          goto LABEL_155;
        }
      }

      else
      {
        v70 = sub_25A9984D8();
        v60 = sub_25A9984C8();
        if ((v70 & 1) == 0)
        {
          if (v60 >= 8)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        }

        if (v60 <= 8)
        {
          v95 = swift_getAssociatedTypeWitness();
          MEMORY[0x28223BE20](v95);
          swift_getAssociatedConformanceWitness();
          v96 = sub_25A998A78();
          MEMORY[0x28223BE20](v96);
          sub_25A9989C8();
          v97 = sub_25A997D88();
          (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
          if (v97)
          {
            goto LABEL_167;
          }

          goto LABEL_147;
        }
      }

      MEMORY[0x28223BE20](v60);
      sub_25A8DF9FC();
      sub_25A9984A8();
      v74 = sub_25A997D88();
      (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
      if (v74)
      {
LABEL_167:
        __break(1u);
      }

      goto LABEL_148;
    }

    if (a2 > 9u)
    {
      if (a2 == 10)
      {
        if (v15)
        {
          v51 = sub_25A9984B8();
        }

        else
        {
          v51 = *v14;
        }

        (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
        v10 = mlx_array_new_float(v51);
        goto LABEL_150;
      }

      if (a2 == 11)
      {
        if (v15)
        {
          v26 = sub_25A9984B8();
        }

        else
        {
          v26 = *v14;
        }

        (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
        if (qword_27FA043D8 == -1)
        {
          goto LABEL_95;
        }

LABEL_152:
        swift_once();
LABEL_95:
        sub_25A998C58();
        v62 = *&v112[0];
        v63 = mlx_array_new_float(v26);
        *&v112[0] = mlx_array_new();
        mlx_astype(v112, v63, 12, *(v62 + 16));
        v64 = *&v112[0];
        type metadata accessor for MLXArray();
        v65 = swift_allocObject();
        *(v65 + 16) = v64;
        mlx_array_free(v63);

LABEL_151:
        __swift_destroy_boxed_opaque_existential_0Tm(v114);
        return v65;
      }

      if (v15)
      {
        v61 = sub_25A9984B8();
      }

      else
      {
        v61 = *v14;
      }

      (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
      v41 = sub_25A8BA558(v61);
LABEL_100:
      v65 = v41;
      goto LABEL_151;
    }

    if (a2 != 6)
    {
      if (a2 != 7)
      {
        if (v15)
        {
          v59 = sub_25A9984B8();
        }

        else
        {
          v59 = *v14;
        }

        (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
        *v112 = v59;
        v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 9);
        goto LABEL_150;
      }

      if ((v15 & 1) == 0 || sub_25A9984C8() < 33)
      {
        goto LABEL_144;
      }

      LODWORD(v112[0]) = 0x80000000;
      if (sub_25A9984D8())
      {
        v23 = sub_25A9984C8();
        if (v23 < 32)
        {
LABEL_143:
          sub_25A9984B8();
LABEL_144:
          LODWORD(v112[0]) = 0x7FFFFFFF;
          v91 = sub_25A9984D8();
          MEMORY[0x28223BE20](v91);
          sub_25A8DF954();
          sub_25A9984A8();
          v92 = sub_25A997D88();
          v93 = *(v12 + 8);
          v93(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
          if ((v92 & 1) == 0)
          {
            v94 = *v14;
            v93(v14, MEMORY[0x277D83B88]);
            mlx_array_new_int(v94);
          }

LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }
      }

      else
      {
        v69 = sub_25A9984D8();
        v23 = sub_25A9984C8();
        if ((v69 & 1) == 0)
        {
          if (v23 >= 32)
          {
            goto LABEL_144;
          }

          goto LABEL_143;
        }

        if (v23 <= 32)
        {
          v88 = swift_getAssociatedTypeWitness();
          MEMORY[0x28223BE20](v88);
          swift_getAssociatedConformanceWitness();
          v89 = sub_25A998A78();
          MEMORY[0x28223BE20](v89);
          sub_25A9989C8();
          v90 = sub_25A997D88();
          (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
          if (v90)
          {
LABEL_166:
            __break(1u);
            goto LABEL_167;
          }

          goto LABEL_143;
        }
      }

      MEMORY[0x28223BE20](v23);
      sub_25A8DF954();
      sub_25A9984A8();
      v73 = sub_25A997D88();
      (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
      if (v73)
      {
        goto LABEL_166;
      }

      goto LABEL_144;
    }

    if ((v15 & 1) != 0 && sub_25A9984C8() >= 17)
    {
      LOWORD(v112[0]) = 0x8000;
      if (sub_25A9984D8())
      {
        v43 = sub_25A9984C8();
        if (v43 < 16)
        {
LABEL_139:
          sub_25A9984B8();
          goto LABEL_140;
        }

LABEL_117:
        MEMORY[0x28223BE20](v43);
        sub_25A8DF9A8();
        sub_25A9984A8();
        v72 = sub_25A997D88();
        (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
        if (v72)
        {
          goto LABEL_165;
        }

        goto LABEL_140;
      }

      v68 = sub_25A9984D8();
      v43 = sub_25A9984C8();
      if (v68)
      {
        if (v43 <= 16)
        {
          v81 = swift_getAssociatedTypeWitness();
          MEMORY[0x28223BE20](v81);
          swift_getAssociatedConformanceWitness();
          v82 = sub_25A998A78();
          MEMORY[0x28223BE20](v82);
          sub_25A9989C8();
          v83 = sub_25A997D88();
          (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
          if (v83)
          {
LABEL_165:
            __break(1u);
            goto LABEL_166;
          }

          goto LABEL_139;
        }

        goto LABEL_117;
      }

      if (v43 < 16)
      {
        goto LABEL_139;
      }
    }

LABEL_140:
    LOWORD(v112[0]) = 0x7FFF;
    v84 = sub_25A9984D8();
    MEMORY[0x28223BE20](v84);
    sub_25A8DF9A8();
    sub_25A9984A8();
    v85 = sub_25A997D88();
    v86 = *(v12 + 8);
    v86(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
    if ((v85 & 1) == 0)
    {
      v87 = *v14;
      v86(v14, MEMORY[0x277D83B88]);
      LOWORD(v112[0]) = v87;
      v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 6);
      goto LABEL_150;
    }

    __break(1u);
    goto LABEL_154;
  }

  sub_25A87817C(v112, v114);
  v7 = v115;
  v8 = __swift_project_boxed_opaque_existential_1(v114, v115);
  v9 = v8;
  if (a2 > 5u)
  {
    if (a2 <= 9u)
    {
      if (a2 == 6)
      {
        sub_25A8DFC9C();
        sub_25A9987F8();
        if ((BYTE2(v112[0]) & 1) == 0)
        {
          v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 6);
          goto LABEL_150;
        }

        *&v112[0] = 0;
        *(&v112[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v103 = sub_25A998C68();
        MEMORY[0x25F850290](v103);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        if (a2 != 7)
        {
          MEMORY[0x28223BE20](v8);
          (*(v38 + 16))(&v110 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
          sub_25A8DFBA0();
          sub_25A997C38();
          LOWORD(v111) = v112[0];
          v10 = mlx_array_new_data(&v111, (MEMORY[0x277D84F90] + 32), 0, 9);
          goto LABEL_150;
        }

        sub_25A8DFC48();
        sub_25A9987F8();
        if ((BYTE4(v112[0]) & 1) == 0)
        {
          mlx_array_new_int(v112[0]);
        }

        *&v112[0] = 0;
        *(&v112[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v106 = sub_25A998C68();
        MEMORY[0x25F850290](v106);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      goto LABEL_175;
    }

    if (a2 == 10)
    {
      MEMORY[0x28223BE20](v8);
      (*(v36 + 16))(&v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v10 = mlx_array_new_float(*v112);
      goto LABEL_150;
    }

    if (a2 == 11)
    {
      MEMORY[0x28223BE20](v8);
      (*(v25 + 16))(&v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v26 = *&v111;
      if (qword_27FA043D8 == -1)
      {
        goto LABEL_95;
      }

      goto LABEL_152;
    }

    MEMORY[0x28223BE20](v8);
    (*(v40 + 16))(&v110 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
    sub_25A8DFAF8();
    sub_25A997C38();
    v41 = sub_25A8BA558(*v112);
    goto LABEL_100;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      sub_25A8DFD98();
      sub_25A9987F8();
      if ((BYTE4(v112[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_150;
      }

      *&v112[0] = 0;
      *(&v112[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v104 = sub_25A998C68();
      MEMORY[0x25F850290](v104);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (a2 == 4)
    {
      sub_25A8DFD44();
      sub_25A9987F8();
      if ((BYTE8(v112[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_150;
      }

      *&v112[0] = 0;
      *(&v112[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v107 = sub_25A998C68();
      MEMORY[0x25F850290](v107);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFCF0();
      sub_25A9987F8();
      if ((BYTE1(v112[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_150;
      }

      *&v112[0] = 0;
      *(&v112[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v109 = sub_25A998C68();
      MEMORY[0x25F850290](v109);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](947154505, 0xE400000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else
  {
    if (!a2)
    {
      v34 = sub_25A997D38();
      mlx_array_new_BOOL((v34 & 1) == 0);
    }

    if (a2 == 1)
    {
      sub_25A8DFE40();
      sub_25A9987F8();
      if ((BYTE1(v112[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 1);
LABEL_150:
        v102 = v10;
        type metadata accessor for MLXArray();
        v65 = swift_allocObject();
        *(v65 + 16) = v102;
        goto LABEL_151;
      }

      *&v112[0] = 0;
      *(&v112[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v105 = sub_25A998C68();
      MEMORY[0x25F850290](v105);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFDEC();
      sub_25A9987F8();
      if ((BYTE2(v112[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 2);
        goto LABEL_150;
      }

      *&v112[0] = 0;
      *(&v112[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v108 = sub_25A998C68();
      MEMORY[0x25F850290](v108);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

LABEL_175:
  __break(1u);
  return result;
}

void sub_25A8C28F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8C28FCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8C29E0(uint64_t a1, unsigned __int8 a2)
{
  v118 = *MEMORY[0x277D85DE8];
  if (a2 == 4)
  {
    *v115 = a1;
    v3 = mlx_array_new_data(v115, (MEMORY[0x277D84F90] + 32), 0, 4);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v3;
    return result;
  }

  v112 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  v6 = MEMORY[0x277D83E88];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v114 = 0;
    memset(v113, 0, sizeof(v113));
    sub_25A878194(v113, &qword_27FA04950, &qword_25A9F9598);
    v116 = v6;
    v117 = sub_25A8DFECC();
    *v115 = a1;
    v11 = __swift_project_boxed_opaque_existential_1(v115, v6);
    v111 = &v111;
    v12 = *(v6 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v14);
    v15 = sub_25A9984D8();
    if (a2 <= 6u)
    {
      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            if (v15)
            {
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              MEMORY[0x28223BE20](AssociatedTypeWitness);
              swift_getAssociatedConformanceWitness();
              v47 = sub_25A998A78();
              MEMORY[0x28223BE20](v47);
              sub_25A9989C8();
              v48 = sub_25A997D98();
              (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
              if ((v48 & 1) == 0)
              {
                goto LABEL_173;
              }
            }

            LOWORD(v113[0]) = -1;
            v49 = sub_25A9984D8();
            MEMORY[0x28223BE20](v49);
            sub_25A8DFAA4();
            sub_25A9984A8();
            v50 = sub_25A997D88();
            v51 = *(v12 + 8);
            v51(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
            if ((v50 & 1) == 0)
            {
              v52 = *v14;
              v51(v14, MEMORY[0x277D83E88]);
              LOWORD(v113[0]) = v52;
              v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 2);
              goto LABEL_162;
            }

            goto LABEL_170;
          }

          if (v15)
          {
            v16 = swift_getAssociatedTypeWitness();
            MEMORY[0x28223BE20](v16);
            swift_getAssociatedConformanceWitness();
            v17 = sub_25A998A78();
            MEMORY[0x28223BE20](v17);
            sub_25A9989C8();
            v18 = sub_25A997D98();
            (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
            if ((v18 & 1) == 0)
            {
              goto LABEL_172;
            }
          }

          LOBYTE(v113[0]) = -1;
          v19 = sub_25A9984D8();
          MEMORY[0x28223BE20](v19);
          sub_25A89522C();
          sub_25A9984A8();
          v20 = sub_25A997D88();
          v21 = *(v12 + 8);
          v21(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
          if ((v20 & 1) == 0)
          {
            v22 = *v14;
            v21(v14, MEMORY[0x277D83E88]);
            LOBYTE(v113[0]) = v22;
            v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 1);
            goto LABEL_162;
          }

LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        if ((v15 & 1) != 0 && sub_25A9984C8() >= 65)
        {
          *&v113[0] = 0x8000000000000000;
          if (sub_25A9984D8())
          {
            v36 = sub_25A9984C8();
            if (v36 < 64)
            {
LABEL_137:
              sub_25A9984B8();
              goto LABEL_138;
            }
          }

          else
          {
            v60 = sub_25A9984D8();
            v36 = sub_25A9984C8();
            if ((v60 & 1) == 0)
            {
              if (v36 >= 64)
              {
                goto LABEL_138;
              }

              goto LABEL_137;
            }

            if (v36 <= 64)
            {
              v70 = swift_getAssociatedTypeWitness();
              MEMORY[0x28223BE20](v70);
              swift_getAssociatedConformanceWitness();
              v71 = sub_25A998A78();
              MEMORY[0x28223BE20](v71);
              sub_25A9989C8();
              v72 = sub_25A997D88();
              (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
              if (v72)
              {
LABEL_176:
                __break(1u);
                goto LABEL_177;
              }

              goto LABEL_137;
            }
          }

          MEMORY[0x28223BE20](v36);
          sub_25A895280();
          sub_25A9984A8();
          v65 = sub_25A997D88();
          (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
          if (v65)
          {
            goto LABEL_176;
          }
        }

LABEL_138:
        if ((sub_25A9984D8() & 1) == 0)
        {
          *&v113[0] = 0x7FFFFFFFFFFFFFFFLL;
          v73 = sub_25A9984D8();
          if (v73)
          {
            sub_25A9984B8();
          }

          else
          {
            MEMORY[0x28223BE20](v73);
            sub_25A895280();
            sub_25A9984A8();
            v74 = sub_25A997D88();
            (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
            if (v74)
            {
LABEL_174:
              __break(1u);
              goto LABEL_175;
            }
          }
        }

        v75 = *v14;
        (*(v12 + 8))(v14, MEMORY[0x277D83E88]);
        mlx_array_new_BOOL(v75 != 0);
      }

      if (a2 == 3)
      {
        if (v15)
        {
          v38 = swift_getAssociatedTypeWitness();
          MEMORY[0x28223BE20](v38);
          swift_getAssociatedConformanceWitness();
          v39 = sub_25A998A78();
          MEMORY[0x28223BE20](v39);
          sub_25A9989C8();
          v40 = sub_25A997D98();
          (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
          if ((v40 & 1) == 0)
          {
            goto LABEL_171;
          }
        }

        LODWORD(v113[0]) = -1;
        v41 = sub_25A9984D8();
        MEMORY[0x28223BE20](v41);
        sub_25A8DFA50();
        sub_25A9984A8();
        v42 = sub_25A997D88();
        v43 = *(v12 + 8);
        v43(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
        if ((v42 & 1) == 0)
        {
          v44 = *v14;
          v43(v14, MEMORY[0x277D83E88]);
          LODWORD(v113[0]) = v44;
          v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 3);
          goto LABEL_162;
        }

        goto LABEL_168;
      }

      if (a2 == 5)
      {
        if ((v15 & 1) == 0 || sub_25A9984C8() < 9)
        {
LABEL_156:
          LOBYTE(v113[0]) = 127;
          v92 = sub_25A9984D8();
          MEMORY[0x28223BE20](v92);
          sub_25A8DF9FC();
          sub_25A9984A8();
          v93 = sub_25A997D88();
          v94 = *(v12 + 8);
          v94(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
          if ((v93 & 1) == 0)
          {
            v95 = *v14;
            v94(v14, MEMORY[0x277D83E88]);
            LOBYTE(v113[0]) = v95;
            v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 5);
            goto LABEL_162;
          }

          goto LABEL_166;
        }

        LOBYTE(v113[0]) = 0x80;
        if (sub_25A9984D8())
        {
          v27 = sub_25A9984C8();
          if (v27 < 8)
          {
LABEL_155:
            sub_25A9984B8();
            goto LABEL_156;
          }
        }

        else
        {
          v63 = sub_25A9984D8();
          v27 = sub_25A9984C8();
          if ((v63 & 1) == 0)
          {
            if (v27 >= 8)
            {
              goto LABEL_156;
            }

            goto LABEL_155;
          }

          if (v27 <= 8)
          {
            v89 = swift_getAssociatedTypeWitness();
            MEMORY[0x28223BE20](v89);
            swift_getAssociatedConformanceWitness();
            v90 = sub_25A998A78();
            MEMORY[0x28223BE20](v90);
            sub_25A9989C8();
            v91 = sub_25A997D88();
            (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
            if (v91)
            {
LABEL_179:
              __break(1u);
              goto LABEL_180;
            }

            goto LABEL_155;
          }
        }

        MEMORY[0x28223BE20](v27);
        sub_25A8DF9FC();
        sub_25A9984A8();
        v68 = sub_25A997D88();
        (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
        if (v68)
        {
          goto LABEL_179;
        }

        goto LABEL_156;
      }

      if ((v15 & 1) == 0 || sub_25A9984C8() < 17)
      {
LABEL_160:
        LOWORD(v113[0]) = 0x7FFF;
        v99 = sub_25A9984D8();
        MEMORY[0x28223BE20](v99);
        sub_25A8DF9A8();
        sub_25A9984A8();
        v100 = sub_25A997D88();
        v101 = *(v12 + 8);
        v101(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
        if ((v100 & 1) == 0)
        {
          v102 = *v14;
          v101(v14, MEMORY[0x277D83E88]);
          LOWORD(v113[0]) = v102;
          v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 6);
          goto LABEL_162;
        }

        goto LABEL_167;
      }

      LOWORD(v113[0]) = 0x8000;
      if (sub_25A9984D8())
      {
        v54 = sub_25A9984C8();
        if (v54 < 16)
        {
LABEL_159:
          sub_25A9984B8();
          goto LABEL_160;
        }
      }

      else
      {
        v64 = sub_25A9984D8();
        v54 = sub_25A9984C8();
        if ((v64 & 1) == 0)
        {
          if (v54 >= 16)
          {
            goto LABEL_160;
          }

          goto LABEL_159;
        }

        if (v54 <= 16)
        {
          v96 = swift_getAssociatedTypeWitness();
          MEMORY[0x28223BE20](v96);
          swift_getAssociatedConformanceWitness();
          v97 = sub_25A998A78();
          MEMORY[0x28223BE20](v97);
          sub_25A9989C8();
          v98 = sub_25A997D88();
          (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
          if (v98)
          {
            goto LABEL_180;
          }

          goto LABEL_159;
        }
      }

      MEMORY[0x28223BE20](v54);
      sub_25A8DF9A8();
      sub_25A9984A8();
      v69 = sub_25A997D88();
      (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
      if (v69)
      {
LABEL_180:
        __break(1u);
      }

      goto LABEL_160;
    }

    if (a2 > 9u)
    {
      if (a2 == 10)
      {
        if (v15)
        {
          v45 = sub_25A9984B8();
        }

        else
        {
          v45 = *v14;
        }

        (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
        v10 = mlx_array_new_float(v45);
        goto LABEL_162;
      }

      if (a2 == 11)
      {
        if (v15)
        {
          v26 = sub_25A9984B8();
        }

        else
        {
          v26 = *v14;
        }

        (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
        if (qword_27FA043D8 == -1)
        {
          goto LABEL_95;
        }

LABEL_164:
        swift_once();
LABEL_95:
        sub_25A998C58();
        v56 = *&v113[0];
        v57 = mlx_array_new_float(v26);
        *&v113[0] = mlx_array_new();
        mlx_astype(v113, v57, 12, *(v56 + 16));
        v58 = *&v113[0];
        type metadata accessor for MLXArray();
        v59 = swift_allocObject();
        *(v59 + 16) = v58;
        mlx_array_free(v57);

LABEL_163:
        __swift_destroy_boxed_opaque_existential_0Tm(v115);
        return v59;
      }

      if (v15)
      {
        v55 = sub_25A9984B8();
      }

      else
      {
        v55 = *v14;
      }

      (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
      v35 = sub_25A8BA558(v55);
LABEL_100:
      v59 = v35;
      goto LABEL_163;
    }

    if (a2 != 7)
    {
      if (a2 != 8)
      {
        if (v15)
        {
          v53 = sub_25A9984B8();
        }

        else
        {
          v53 = *v14;
        }

        (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
        *v113 = v53;
        v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 9);
        goto LABEL_162;
      }

      if ((v15 & 1) != 0 && sub_25A9984C8() >= 65)
      {
        *&v113[0] = 0x8000000000000000;
        if (sub_25A9984D8())
        {
          v23 = sub_25A9984C8();
          if (v23 < 64)
          {
LABEL_148:
            sub_25A9984B8();
            goto LABEL_149;
          }
        }

        else
        {
          v62 = sub_25A9984D8();
          v23 = sub_25A9984C8();
          if ((v62 & 1) == 0)
          {
            if (v23 >= 64)
            {
              goto LABEL_149;
            }

            goto LABEL_148;
          }

          if (v23 <= 64)
          {
            v83 = swift_getAssociatedTypeWitness();
            MEMORY[0x28223BE20](v83);
            swift_getAssociatedConformanceWitness();
            v84 = sub_25A998A78();
            MEMORY[0x28223BE20](v84);
            sub_25A9989C8();
            v85 = sub_25A997D88();
            (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
            if (v85)
            {
LABEL_178:
              __break(1u);
              goto LABEL_179;
            }

            goto LABEL_148;
          }
        }

        MEMORY[0x28223BE20](v23);
        sub_25A8DF900();
        sub_25A9984A8();
        v67 = sub_25A997D88();
        (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
        if (v67)
        {
          goto LABEL_178;
        }
      }

LABEL_149:
      if ((sub_25A9984D8() & 1) == 0)
      {
        *&v113[0] = 0x7FFFFFFFFFFFFFFFLL;
        v86 = sub_25A9984D8();
        if (v86)
        {
          sub_25A9984B8();
        }

        else
        {
          MEMORY[0x28223BE20](v86);
          sub_25A8DF900();
          sub_25A9984A8();
          v87 = sub_25A997D88();
          (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
          if (v87)
          {
LABEL_175:
            __break(1u);
            goto LABEL_176;
          }
        }
      }

      v88 = *v14;
      (*(v12 + 8))(v14, MEMORY[0x277D83E88]);
      *&v113[0] = v88;
      v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 8);
      goto LABEL_162;
    }

    if ((v15 & 1) != 0 && sub_25A9984C8() >= 33)
    {
      LODWORD(v113[0]) = 0x80000000;
      if (sub_25A9984D8())
      {
        v37 = sub_25A9984C8();
        if (v37 < 32)
        {
LABEL_144:
          sub_25A9984B8();
          goto LABEL_145;
        }

LABEL_118:
        MEMORY[0x28223BE20](v37);
        sub_25A8DF954();
        sub_25A9984A8();
        v66 = sub_25A997D88();
        (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
        if (v66)
        {
          goto LABEL_177;
        }

        goto LABEL_145;
      }

      v61 = sub_25A9984D8();
      v37 = sub_25A9984C8();
      if (v61)
      {
        if (v37 <= 32)
        {
          v76 = swift_getAssociatedTypeWitness();
          MEMORY[0x28223BE20](v76);
          swift_getAssociatedConformanceWitness();
          v77 = sub_25A998A78();
          MEMORY[0x28223BE20](v77);
          sub_25A9989C8();
          v78 = sub_25A997D88();
          (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
          if (v78)
          {
LABEL_177:
            __break(1u);
            goto LABEL_178;
          }

          goto LABEL_144;
        }

        goto LABEL_118;
      }

      if (v37 < 32)
      {
        goto LABEL_144;
      }
    }

LABEL_145:
    LODWORD(v113[0]) = 0x7FFFFFFF;
    v79 = sub_25A9984D8();
    MEMORY[0x28223BE20](v79);
    sub_25A8DF954();
    sub_25A9984A8();
    v80 = sub_25A997D88();
    v81 = *(v12 + 8);
    v81(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
    if ((v80 & 1) == 0)
    {
      v82 = *v14;
      v81(v14, MEMORY[0x277D83E88]);
      mlx_array_new_int(v82);
    }

    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  sub_25A87817C(v113, v115);
  v7 = v116;
  v8 = __swift_project_boxed_opaque_existential_1(v115, v116);
  v9 = v8;
  if (a2 > 6u)
  {
    if (a2 <= 9u)
    {
      if (a2 == 7)
      {
        sub_25A8DFC48();
        sub_25A9987F8();
        if ((BYTE4(v113[0]) & 1) == 0)
        {
          mlx_array_new_int(v113[0]);
        }

        *&v113[0] = 0;
        *(&v113[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v104 = sub_25A998C68();
        MEMORY[0x25F850290](v104);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        if (a2 != 8)
        {
          MEMORY[0x28223BE20](v8);
          (*(v32 + 16))(&v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
          sub_25A8DFBA0();
          sub_25A997C38();
          LOWORD(v112) = v113[0];
          v10 = mlx_array_new_data(&v112, (MEMORY[0x277D84F90] + 32), 0, 9);
          goto LABEL_162;
        }

        sub_25A8DFBF4();
        sub_25A9987F8();
        if ((BYTE8(v113[0]) & 1) == 0)
        {
          v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 8);
          goto LABEL_162;
        }

        *&v113[0] = 0;
        *(&v113[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v107 = sub_25A998C68();
        MEMORY[0x25F850290](v107);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      goto LABEL_188;
    }

    if (a2 == 10)
    {
      MEMORY[0x28223BE20](v8);
      (*(v30 + 16))(&v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v10 = mlx_array_new_float(*v113);
      goto LABEL_162;
    }

    if (a2 == 11)
    {
      MEMORY[0x28223BE20](v8);
      (*(v25 + 16))(&v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v26 = *&v112;
      if (qword_27FA043D8 == -1)
      {
        goto LABEL_95;
      }

      goto LABEL_164;
    }

    MEMORY[0x28223BE20](v8);
    (*(v34 + 16))(&v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
    sub_25A8DFAF8();
    sub_25A997C38();
    v35 = sub_25A8BA558(*v113);
    goto LABEL_100;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      sub_25A8DFD98();
      sub_25A9987F8();
      if ((BYTE4(v113[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_162;
      }

      *&v113[0] = 0;
      *(&v113[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v105 = sub_25A998C68();
      MEMORY[0x25F850290](v105);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (a2 == 5)
    {
      sub_25A8DFCF0();
      sub_25A9987F8();
      if ((BYTE1(v113[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_162;
      }

      *&v113[0] = 0;
      *(&v113[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v108 = sub_25A998C68();
      MEMORY[0x25F850290](v108);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](947154505, 0xE400000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFC9C();
      sub_25A9987F8();
      if ((BYTE2(v113[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 6);
        goto LABEL_162;
      }

      *&v113[0] = 0;
      *(&v113[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v110 = sub_25A998C68();
      MEMORY[0x25F850290](v110);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else
  {
    if (!a2)
    {
      v28 = sub_25A997D38();
      mlx_array_new_BOOL((v28 & 1) == 0);
    }

    if (a2 == 1)
    {
      sub_25A8DFE40();
      sub_25A9987F8();
      if ((BYTE1(v113[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 1);
LABEL_162:
        v103 = v10;
        type metadata accessor for MLXArray();
        v59 = swift_allocObject();
        *(v59 + 16) = v103;
        goto LABEL_163;
      }

      *&v113[0] = 0;
      *(&v113[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v106 = sub_25A998C68();
      MEMORY[0x25F850290](v106);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFDEC();
      sub_25A9987F8();
      if ((BYTE2(v113[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 2);
        goto LABEL_162;
      }

      *&v113[0] = 0;
      *(&v113[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v109 = sub_25A998C68();
      MEMORY[0x25F850290](v109);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

LABEL_188:
  __break(1u);
  return result;
}

void sub_25A8C57B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8C57BCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8C58A0(char a1, unsigned __int8 a2)
{
  v104 = *MEMORY[0x277D85DE8];
  if (a2 == 5)
  {
    LOBYTE(v101[0]) = a1;
    v3 = mlx_array_new_data(v101, (MEMORY[0x277D84F90] + 32), 0, 5);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v3;
    return result;
  }

  LOBYTE(v98) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  v6 = MEMORY[0x277D84900];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v100 = 0;
    memset(v99, 0, sizeof(v99));
    sub_25A878194(v99, &qword_27FA04950, &qword_25A9F9598);
    v102 = v6;
    v103 = sub_25A8DF9FC();
    LOBYTE(v101[0]) = a1;
    v11 = __swift_project_boxed_opaque_existential_1(v101, v6);
    v12 = *(v6 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v14);
    v15 = sub_25A9984D8();
    v16 = a2;
    if (a2 <= 6u)
    {
      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            if (v15 & 1) == 0 || (v17 = swift_getAssociatedTypeWitness(), v97 = &v97, MEMORY[0x28223BE20](v17), swift_getAssociatedConformanceWitness(), v18 = sub_25A998A78(), MEMORY[0x28223BE20](v18), sub_25A9989C8(), v19 = sub_25A997D98(), (*(v12 + 8))(&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]), (v19))
            {
              if (sub_25A9984D8())
              {
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v97 = &v97;
                MEMORY[0x28223BE20](AssociatedTypeWitness);
                swift_getAssociatedConformanceWitness();
                v21 = sub_25A998A78();
                MEMORY[0x28223BE20](v21);
                sub_25A9989C8();
                v22 = sub_25A997D78();
                v23 = *(v12 + 8);
                v23(&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
                if (v22)
                {
                  sub_25A9984B8();
                }
              }

              else
              {
                v23 = *(v12 + 8);
              }

              v64 = *v14;
              v23(v14, MEMORY[0x277D84900]);
              LOBYTE(v99[0]) = v64;
              v10 = mlx_array_new_data(v99, (MEMORY[0x277D84F90] + 32), 0, 1);
              goto LABEL_146;
            }

            __break(1u);
            goto LABEL_150;
          }

          if (v15)
          {
            v49 = swift_getAssociatedTypeWitness();
            v97 = &v97;
            MEMORY[0x28223BE20](v49);
            swift_getAssociatedConformanceWitness();
            v50 = sub_25A998A78();
            MEMORY[0x28223BE20](v50);
            sub_25A9989C8();
            v51 = sub_25A997D98();
            v53 = *(v12 + 8);
            v12 += 8;
            v52 = v53;
            v15 = (v53)(&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
            if ((v51 & 1) == 0)
            {
              __break(1u);
              goto LABEL_79;
            }
          }

          else
          {
            v52 = *(v12 + 8);
          }

          v63 = *v14;
          v52(v14, MEMORY[0x277D84900]);
          LOWORD(v99[0]) = v63;
          v10 = mlx_array_new_data(v99, (MEMORY[0x277D84F90] + 32), 0, 2);
          goto LABEL_146;
        }

        if ((v15 & 1) == 0 || sub_25A9984C8() < 65)
        {
LABEL_136:
          v76 = *v14;
          (*(v12 + 8))(v14, MEMORY[0x277D84900]);
          mlx_array_new_BOOL(v76 != 0);
        }

        *&v99[0] = 0x8000000000000000;
        if (sub_25A9984D8())
        {
          v41 = sub_25A9984C8();
          if (v41 < 64)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v65 = sub_25A9984D8();
          v41 = sub_25A9984C8();
          if ((v65 & 1) == 0)
          {
            if (v41 >= 64)
            {
              goto LABEL_136;
            }

            goto LABEL_135;
          }

          if (v41 <= 64)
          {
            v73 = swift_getAssociatedTypeWitness();
            v97 = &v97;
            MEMORY[0x28223BE20](v73);
            swift_getAssociatedConformanceWitness();
            v74 = sub_25A998A78();
            MEMORY[0x28223BE20](v74);
            sub_25A9989C8();
            v75 = sub_25A997D88();
            (*(v12 + 8))(&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
            if ((v75 & 1) == 0)
            {
LABEL_135:
              sub_25A9984B8();
              goto LABEL_136;
            }

LABEL_150:
            __break(1u);
            goto LABEL_151;
          }
        }

        MEMORY[0x28223BE20](v41);
        sub_25A895280();
        sub_25A9984A8();
        v69 = sub_25A997D88();
        (*(v12 + 8))(&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
        if ((v69 & 1) == 0)
        {
          goto LABEL_136;
        }

        goto LABEL_150;
      }

      if (a2 == 3)
      {
        if (v15)
        {
          v43 = swift_getAssociatedTypeWitness();
          v97 = &v97;
          MEMORY[0x28223BE20](v43);
          swift_getAssociatedConformanceWitness();
          v44 = sub_25A998A78();
          MEMORY[0x28223BE20](v44);
          sub_25A9989C8();
          v45 = sub_25A997D98();
          v47 = *(v12 + 8);
          v12 += 8;
          v46 = v47;
          v15 = (v47)(&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
          if ((v45 & 1) == 0)
          {
            __break(1u);
            goto LABEL_74;
          }
        }

        else
        {
          v46 = *(v12 + 8);
        }

        v57 = *v14;
        v46(v14, MEMORY[0x277D84900]);
        LODWORD(v99[0]) = v57;
        v10 = mlx_array_new_data(v99, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_146;
      }

      if (a2 == 4)
      {
        if (v15)
        {
          v28 = swift_getAssociatedTypeWitness();
          v97 = &v97;
          MEMORY[0x28223BE20](v28);
          swift_getAssociatedConformanceWitness();
          v29 = sub_25A998A78();
          MEMORY[0x28223BE20](v29);
          sub_25A9989C8();
          v30 = sub_25A997D98();
          v32 = *(v12 + 8);
          v12 += 8;
          v31 = v32;
          v15 = (v32)(&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
          v16 = v97;
          if ((v30 & 1) == 0)
          {
            __break(1u);
LABEL_45:
            if (v16 != 10)
            {
              if (v16 == 11)
              {
                if (v15)
                {
                  v27 = sub_25A9984B8();
                }

                else
                {
                  v27 = *v14;
                }

                (*(v12 + 8))(v14, MEMORY[0x277D84900]);
                if (qword_27FA043D8 == -1)
                {
                  goto LABEL_96;
                }

LABEL_148:
                swift_once();
LABEL_96:
                sub_25A998C58();
                v59 = *&v99[0];
                v60 = mlx_array_new_float(v27);
                *&v99[0] = mlx_array_new();
                mlx_astype(v99, v60, 12, *(v59 + 16));
                v61 = *&v99[0];
                type metadata accessor for MLXArray();
                v62 = swift_allocObject();
                *(v62 + 16) = v61;
                mlx_array_free(v60);

LABEL_147:
                __swift_destroy_boxed_opaque_existential_0Tm(v101);
                return v62;
              }

              if (v15)
              {
                v56 = sub_25A9984B8();
              }

              else
              {
                v56 = *v14;
              }

              (*(v12 + 8))(v14, MEMORY[0x277D84900]);
              v40 = sub_25A8BA558(v56);
LABEL_103:
              v62 = v40;
              goto LABEL_147;
            }

LABEL_74:
            if (v15)
            {
              v48 = sub_25A9984B8();
            }

            else
            {
              v48 = *v14;
            }

            (*(v12 + 8))(v14, MEMORY[0x277D84900]);
            v10 = mlx_array_new_float(v48);
            goto LABEL_146;
          }
        }

        else
        {
          v31 = *(v12 + 8);
        }

        v58 = *v14;
        v31(v14, MEMORY[0x277D84900]);
        *&v99[0] = v58;
        v10 = mlx_array_new_data(v99, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_146;
      }

      if ((v15 & 1) != 0 && sub_25A9984C8() >= 17)
      {
        LOWORD(v99[0]) = 0x8000;
        if (sub_25A9984D8())
        {
          v55 = sub_25A9984C8();
          if (v55 < 16)
          {
LABEL_144:
            sub_25A9984B8();
            goto LABEL_145;
          }

          goto LABEL_124;
        }

        v68 = sub_25A9984D8();
        v55 = sub_25A9984C8();
        if (v68)
        {
          if (v55 <= 16)
          {
            v85 = swift_getAssociatedTypeWitness();
            v97 = &v97;
            MEMORY[0x28223BE20](v85);
            swift_getAssociatedConformanceWitness();
            v86 = sub_25A998A78();
            MEMORY[0x28223BE20](v86);
            sub_25A9989C8();
            v87 = sub_25A997D88();
            (*(v12 + 8))(&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
            if (v87)
            {
              goto LABEL_153;
            }

            goto LABEL_144;
          }

LABEL_124:
          MEMORY[0x28223BE20](v55);
          sub_25A8DF9A8();
          sub_25A9984A8();
          v72 = sub_25A997D88();
          (*(v12 + 8))(&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
          if (v72)
          {
LABEL_153:
            __break(1u);
          }

          goto LABEL_145;
        }

        if (v55 < 16)
        {
          goto LABEL_144;
        }
      }

LABEL_145:
      v88 = *v14;
      (*(v12 + 8))(v14, MEMORY[0x277D84900]);
      LOWORD(v99[0]) = v88;
      v10 = mlx_array_new_data(v99, (MEMORY[0x277D84F90] + 32), 0, 6);
      goto LABEL_146;
    }

    if (a2 > 9u)
    {
      goto LABEL_45;
    }

    if (a2 != 7)
    {
      if (a2 != 8)
      {
LABEL_79:
        if (v15)
        {
          v54 = sub_25A9984B8();
        }

        else
        {
          v54 = *v14;
        }

        (*(v12 + 8))(v14, MEMORY[0x277D84900]);
        *v99 = v54;
        v10 = mlx_array_new_data(v99, (MEMORY[0x277D84F90] + 32), 0, 9);
        goto LABEL_146;
      }

      if ((v15 & 1) != 0 && sub_25A9984C8() >= 65)
      {
        *&v99[0] = 0x8000000000000000;
        if (sub_25A9984D8())
        {
          v24 = sub_25A9984C8();
          if (v24 < 64)
          {
LABEL_141:
            sub_25A9984B8();
            goto LABEL_142;
          }

          goto LABEL_122;
        }

        v67 = sub_25A9984D8();
        v24 = sub_25A9984C8();
        if (v67)
        {
          if (v24 <= 64)
          {
            v81 = swift_getAssociatedTypeWitness();
            v97 = &v97;
            MEMORY[0x28223BE20](v81);
            swift_getAssociatedConformanceWitness();
            v82 = sub_25A998A78();
            MEMORY[0x28223BE20](v82);
            sub_25A9989C8();
            v83 = sub_25A997D88();
            (*(v12 + 8))(&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
            if (v83)
            {
LABEL_152:
              __break(1u);
              goto LABEL_153;
            }

            goto LABEL_141;
          }

LABEL_122:
          MEMORY[0x28223BE20](v24);
          sub_25A8DF900();
          sub_25A9984A8();
          v71 = sub_25A997D88();
          (*(v12 + 8))(&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
          if (v71)
          {
            goto LABEL_152;
          }

          goto LABEL_142;
        }

        if (v24 < 64)
        {
          goto LABEL_141;
        }
      }

LABEL_142:
      v84 = *v14;
      (*(v12 + 8))(v14, MEMORY[0x277D84900]);
      *&v99[0] = v84;
      v10 = mlx_array_new_data(v99, (MEMORY[0x277D84F90] + 32), 0, 8);
      goto LABEL_146;
    }

    if ((v15 & 1) != 0 && sub_25A9984C8() >= 33)
    {
      LODWORD(v99[0]) = 0x80000000;
      if (sub_25A9984D8())
      {
        v42 = sub_25A9984C8();
        if (v42 < 32)
        {
LABEL_138:
          sub_25A9984B8();
          goto LABEL_139;
        }
      }

      else
      {
        v66 = sub_25A9984D8();
        v42 = sub_25A9984C8();
        if ((v66 & 1) == 0)
        {
          if (v42 >= 32)
          {
            goto LABEL_139;
          }

          goto LABEL_138;
        }

        if (v42 <= 32)
        {
          v77 = swift_getAssociatedTypeWitness();
          v97 = &v97;
          MEMORY[0x28223BE20](v77);
          swift_getAssociatedConformanceWitness();
          v78 = sub_25A998A78();
          MEMORY[0x28223BE20](v78);
          sub_25A9989C8();
          v79 = sub_25A997D88();
          (*(v12 + 8))(&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
          if (v79)
          {
LABEL_151:
            __break(1u);
            goto LABEL_152;
          }

          goto LABEL_138;
        }
      }

      MEMORY[0x28223BE20](v42);
      sub_25A8DF954();
      sub_25A9984A8();
      v70 = sub_25A997D88();
      (*(v12 + 8))(&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
      if (v70)
      {
        goto LABEL_151;
      }
    }

LABEL_139:
    v80 = *v14;
    (*(v12 + 8))(v14, MEMORY[0x277D84900]);
    mlx_array_new_int(v80);
  }

  sub_25A87817C(v99, v101);
  v7 = v102;
  v8 = __swift_project_boxed_opaque_existential_1(v101, v102);
  v9 = v8;
  if (a2 <= 6u)
  {
    if (a2 > 2u)
    {
      if (a2 == 3)
      {
        sub_25A8DFD98();
        sub_25A9987F8();
        if ((BYTE4(v99[0]) & 1) == 0)
        {
          v10 = mlx_array_new_data(v99, (MEMORY[0x277D84F90] + 32), 0, 3);
          goto LABEL_146;
        }

        *&v99[0] = 0;
        *(&v99[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v91 = sub_25A998C68();
        MEMORY[0x25F850290](v91);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else if (a2 == 4)
      {
        sub_25A8DFD44();
        sub_25A9987F8();
        if ((BYTE8(v99[0]) & 1) == 0)
        {
          v10 = mlx_array_new_data(v99, (MEMORY[0x277D84F90] + 32), 0, 4);
          goto LABEL_146;
        }

        *&v99[0] = 0;
        *(&v99[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v94 = sub_25A998C68();
        MEMORY[0x25F850290](v94);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        sub_25A8DFC9C();
        sub_25A9987F8();
        if ((BYTE2(v99[0]) & 1) == 0)
        {
          v10 = mlx_array_new_data(v99, (MEMORY[0x277D84F90] + 32), 0, 6);
          goto LABEL_146;
        }

        *&v99[0] = 0;
        *(&v99[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v96 = sub_25A998C68();
        MEMORY[0x25F850290](v96);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }
    }

    else
    {
      if (!a2)
      {
        v33 = sub_25A997D38();
        mlx_array_new_BOOL((v33 & 1) == 0);
      }

      if (a2 == 1)
      {
        sub_25A8DFE40();
        sub_25A9987F8();
        if ((BYTE1(v99[0]) & 1) == 0)
        {
          v10 = mlx_array_new_data(v99, (MEMORY[0x277D84F90] + 32), 0, 1);
LABEL_146:
          v89 = v10;
          type metadata accessor for MLXArray();
          v62 = swift_allocObject();
          *(v62 + 16) = v89;
          goto LABEL_147;
        }

        *&v99[0] = 0;
        *(&v99[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v92 = sub_25A998C68();
        MEMORY[0x25F850290](v92);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        sub_25A8DFDEC();
        sub_25A9987F8();
        if ((BYTE2(v99[0]) & 1) == 0)
        {
          v10 = mlx_array_new_data(v99, (MEMORY[0x277D84F90] + 32), 0, 2);
          goto LABEL_146;
        }

        *&v99[0] = 0;
        *(&v99[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v95 = sub_25A998C68();
        MEMORY[0x25F850290](v95);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }
    }

    goto LABEL_161;
  }

  if (a2 > 9u)
  {
    if (a2 == 10)
    {
      MEMORY[0x28223BE20](v8);
      (*(v35 + 16))(&v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v10 = mlx_array_new_float(*v99);
      goto LABEL_146;
    }

    if (a2 == 11)
    {
      MEMORY[0x28223BE20](v8);
      (*(v26 + 16))(&v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v27 = v98;
      if (qword_27FA043D8 == -1)
      {
        goto LABEL_96;
      }

      goto LABEL_148;
    }

    MEMORY[0x28223BE20](v8);
    (*(v39 + 16))(&v97 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
    sub_25A8DFAF8();
    sub_25A997C38();
    v40 = sub_25A8BA558(*v99);
    goto LABEL_103;
  }

  if (a2 == 7)
  {
    sub_25A8DFC48();
    sub_25A9987F8();
    if ((BYTE4(v99[0]) & 1) == 0)
    {
      mlx_array_new_int(v99[0]);
    }

    *&v99[0] = 0;
    *(&v99[0] + 1) = 0xE000000000000000;
    sub_25A9985F8();
    v90 = sub_25A998C68();
    MEMORY[0x25F850290](v90);

    MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
    MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
    MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
    result = sub_25A998818();
  }

  else
  {
    if (a2 != 8)
    {
      MEMORY[0x28223BE20](v8);
      (*(v37 + 16))(&v97 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
      sub_25A8DFBA0();
      sub_25A997C38();
      LOWORD(v98) = v99[0];
      v10 = mlx_array_new_data(&v98, (MEMORY[0x277D84F90] + 32), 0, 9);
      goto LABEL_146;
    }

    sub_25A8DFBF4();
    sub_25A9987F8();
    if ((BYTE8(v99[0]) & 1) == 0)
    {
      v10 = mlx_array_new_data(v99, (MEMORY[0x277D84F90] + 32), 0, 8);
      goto LABEL_146;
    }

    *&v99[0] = 0;
    *(&v99[0] + 1) = 0xE000000000000000;
    sub_25A9985F8();
    v93 = sub_25A998C68();
    MEMORY[0x25F850290](v93);

    MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
    MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
    MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
    result = sub_25A998818();
  }

LABEL_161:
  __break(1u);
  return result;
}

void sub_25A8C7F98(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8C7FA0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8C8084(__int16 a1, unsigned __int8 a2)
{
  v108 = *MEMORY[0x277D85DE8];
  if (a2 == 6)
  {
    LOWORD(v105[0]) = a1;
    v3 = mlx_array_new_data(v105, (MEMORY[0x277D84F90] + 32), 0, 6);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v3;
    return result;
  }

  LOWORD(v102) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  v6 = MEMORY[0x277D84958];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v104 = 0;
    memset(v103, 0, sizeof(v103));
    sub_25A878194(v103, &qword_27FA04950, &qword_25A9F9598);
    v106 = v6;
    v107 = sub_25A8DF9A8();
    LOWORD(v105[0]) = a1;
    v11 = __swift_project_boxed_opaque_existential_1(v105, v6);
    v12 = *(v6 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (&v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v14);
    v15 = sub_25A9984D8();
    v16 = a2;
    if (a2 <= 6u)
    {
      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            if (v15 & 1) == 0 || (v49 = swift_getAssociatedTypeWitness(), v101 = &v101, MEMORY[0x28223BE20](v49), swift_getAssociatedConformanceWitness(), v50 = sub_25A998A78(), MEMORY[0x28223BE20](v50), sub_25A9989C8(), v51 = sub_25A997D98(), (*(v12 + 8))(&v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]), (v51))
            {
              if (sub_25A9984D8())
              {
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v101 = &v101;
                MEMORY[0x28223BE20](AssociatedTypeWitness);
                swift_getAssociatedConformanceWitness();
                v53 = sub_25A998A78();
                MEMORY[0x28223BE20](v53);
                sub_25A9989C8();
                v54 = sub_25A997D78();
                v55 = *(v12 + 8);
                v55(&v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
                if (v54)
                {
                  sub_25A9984B8();
                }
              }

              else
              {
                v55 = *(v12 + 8);
              }

              v65 = *v14;
              v55(v14, MEMORY[0x277D84958]);
              LOWORD(v103[0]) = v65;
              v10 = mlx_array_new_data(v103, (MEMORY[0x277D84F90] + 32), 0, 2);
              goto LABEL_146;
            }

            goto LABEL_152;
          }

          if (v15)
          {
            v17 = swift_getAssociatedTypeWitness();
            v101 = &v101;
            MEMORY[0x28223BE20](v17);
            swift_getAssociatedConformanceWitness();
            v18 = sub_25A998A78();
            MEMORY[0x28223BE20](v18);
            sub_25A9989C8();
            v19 = sub_25A997D98();
            (*(v12 + 8))(&v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
            if ((v19 & 1) == 0)
            {
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
              goto LABEL_153;
            }
          }

          LOBYTE(v103[0]) = -1;
          v20 = sub_25A9984D8();
          MEMORY[0x28223BE20](v20);
          sub_25A89522C();
          sub_25A9984A8();
          v21 = sub_25A997D88();
          v22 = *(v12 + 8);
          v22(&v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
          if ((v21 & 1) == 0)
          {
            v23 = *v14;
            v22(v14, MEMORY[0x277D84958]);
            LOBYTE(v103[0]) = v23;
            v10 = mlx_array_new_data(v103, (MEMORY[0x277D84F90] + 32), 0, 1);
            goto LABEL_146;
          }

LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        if ((v15 & 1) != 0 && sub_25A9984C8() >= 65)
        {
          *&v103[0] = 0x8000000000000000;
          if (sub_25A9984D8())
          {
            v41 = sub_25A9984C8();
            if (v41 < 64)
            {
LABEL_134:
              sub_25A9984B8();
              goto LABEL_135;
            }
          }

          else
          {
            v66 = sub_25A9984D8();
            v41 = sub_25A9984C8();
            if ((v66 & 1) == 0)
            {
              if (v41 >= 64)
              {
                goto LABEL_135;
              }

              goto LABEL_134;
            }

            if (v41 <= 64)
            {
              v74 = swift_getAssociatedTypeWitness();
              v101 = &v101;
              MEMORY[0x28223BE20](v74);
              swift_getAssociatedConformanceWitness();
              v75 = sub_25A998A78();
              MEMORY[0x28223BE20](v75);
              sub_25A9989C8();
              v76 = sub_25A997D88();
              (*(v12 + 8))(&v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
              if (v76)
              {
LABEL_153:
                __break(1u);
                goto LABEL_154;
              }

              goto LABEL_134;
            }
          }

          MEMORY[0x28223BE20](v41);
          sub_25A895280();
          sub_25A9984A8();
          v70 = sub_25A997D88();
          (*(v12 + 8))(&v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
          if (v70)
          {
            goto LABEL_153;
          }
        }

LABEL_135:
        v77 = *v14;
        (*(v12 + 8))(v14, MEMORY[0x277D84958]);
        mlx_array_new_BOOL(v77 != 0);
      }

      if (a2 == 3)
      {
        if (v15)
        {
          v43 = swift_getAssociatedTypeWitness();
          v101 = &v101;
          MEMORY[0x28223BE20](v43);
          swift_getAssociatedConformanceWitness();
          v44 = sub_25A998A78();
          MEMORY[0x28223BE20](v44);
          sub_25A9989C8();
          v45 = sub_25A997D98();
          v47 = *(v12 + 8);
          v12 += 8;
          v46 = v47;
          v15 = (v47)(&v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
          if ((v45 & 1) == 0)
          {
            __break(1u);
            goto LABEL_73;
          }
        }

        else
        {
          v46 = *(v12 + 8);
        }

        v59 = *v14;
        v46(v14, MEMORY[0x277D84958]);
        LODWORD(v103[0]) = v59;
        v10 = mlx_array_new_data(v103, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_146;
      }

      if (a2 == 4)
      {
        if (v15)
        {
          v28 = swift_getAssociatedTypeWitness();
          v101 = &v101;
          MEMORY[0x28223BE20](v28);
          swift_getAssociatedConformanceWitness();
          v29 = sub_25A998A78();
          MEMORY[0x28223BE20](v29);
          sub_25A9989C8();
          v30 = sub_25A997D98();
          v32 = *(v12 + 8);
          v12 += 8;
          v31 = v32;
          v15 = (v32)(&v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
          v16 = v101;
          if ((v30 & 1) == 0)
          {
            __break(1u);
LABEL_44:
            if (v16 != 10)
            {
              if (v16 == 11)
              {
                if (v15)
                {
                  v27 = sub_25A9984B8();
                }

                else
                {
                  v27 = *v14;
                }

                (*(v12 + 8))(v14, MEMORY[0x277D84958]);
                if (qword_27FA043D8 == -1)
                {
                  goto LABEL_97;
                }

LABEL_148:
                swift_once();
LABEL_97:
                sub_25A998C58();
                v61 = *&v103[0];
                v62 = mlx_array_new_float(v27);
                *&v103[0] = mlx_array_new();
                mlx_astype(v103, v62, 12, *(v61 + 16));
                v63 = *&v103[0];
                type metadata accessor for MLXArray();
                v64 = swift_allocObject();
                *(v64 + 16) = v63;
                mlx_array_free(v62);

LABEL_147:
                __swift_destroy_boxed_opaque_existential_0Tm(v105);
                return v64;
              }

              if (v15)
              {
                v58 = sub_25A9984B8();
              }

              else
              {
                v58 = *v14;
              }

              (*(v12 + 8))(v14, MEMORY[0x277D84958]);
              v40 = sub_25A8BA558(v58);
LABEL_102:
              v64 = v40;
              goto LABEL_147;
            }

LABEL_73:
            if (v15)
            {
              v48 = sub_25A9984B8();
            }

            else
            {
              v48 = *v14;
            }

            (*(v12 + 8))(v14, MEMORY[0x277D84958]);
            v10 = mlx_array_new_float(v48);
            goto LABEL_146;
          }
        }

        else
        {
          v31 = *(v12 + 8);
        }

        v60 = *v14;
        v31(v14, MEMORY[0x277D84958]);
        *&v103[0] = v60;
        v10 = mlx_array_new_data(v103, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_146;
      }

      if ((v15 & 1) != 0 && sub_25A9984C8() >= 9)
      {
        LOBYTE(v103[0]) = 0x80;
        if (sub_25A9984D8())
        {
          v57 = sub_25A9984C8();
          if (v57 < 8)
          {
LABEL_143:
            sub_25A9984B8();
            goto LABEL_144;
          }

LABEL_123:
          MEMORY[0x28223BE20](v57);
          sub_25A8DF9FC();
          sub_25A9984A8();
          v73 = sub_25A997D88();
          (*(v12 + 8))(&v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
          if (v73)
          {
LABEL_156:
            __break(1u);
          }

          goto LABEL_144;
        }

        v69 = sub_25A9984D8();
        v57 = sub_25A9984C8();
        if (v69)
        {
          if (v57 <= 8)
          {
            v86 = swift_getAssociatedTypeWitness();
            v101 = &v101;
            MEMORY[0x28223BE20](v86);
            swift_getAssociatedConformanceWitness();
            v87 = sub_25A998A78();
            MEMORY[0x28223BE20](v87);
            sub_25A9989C8();
            v88 = sub_25A997D88();
            (*(v12 + 8))(&v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
            if (v88)
            {
              goto LABEL_156;
            }

            goto LABEL_143;
          }

          goto LABEL_123;
        }

        if (v57 < 8)
        {
          goto LABEL_143;
        }
      }

LABEL_144:
      LOBYTE(v103[0]) = 127;
      v89 = sub_25A9984D8();
      MEMORY[0x28223BE20](v89);
      sub_25A8DF9FC();
      sub_25A9984A8();
      v90 = sub_25A997D88();
      v91 = *(v12 + 8);
      v91(&v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
      if ((v90 & 1) == 0)
      {
        v92 = *v14;
        v91(v14, MEMORY[0x277D84958]);
        LOBYTE(v103[0]) = v92;
        v10 = mlx_array_new_data(v103, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_146;
      }

      __break(1u);
      goto LABEL_150;
    }

    if (a2 > 9u)
    {
      goto LABEL_44;
    }

    if (a2 != 7)
    {
      if (a2 != 8)
      {
        if (v15)
        {
          v56 = sub_25A9984B8();
        }

        else
        {
          v56 = *v14;
        }

        (*(v12 + 8))(&v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
        *v103 = v56;
        v10 = mlx_array_new_data(v103, (MEMORY[0x277D84F90] + 32), 0, 9);
        goto LABEL_146;
      }

      if ((v15 & 1) == 0 || sub_25A9984C8() < 65)
      {
        goto LABEL_141;
      }

      *&v103[0] = 0x8000000000000000;
      if (sub_25A9984D8())
      {
        v24 = sub_25A9984C8();
        if (v24 < 64)
        {
LABEL_140:
          sub_25A9984B8();
          goto LABEL_141;
        }
      }

      else
      {
        v68 = sub_25A9984D8();
        v24 = sub_25A9984C8();
        if ((v68 & 1) == 0)
        {
          if (v24 < 64)
          {
            goto LABEL_140;
          }

LABEL_141:
          v85 = *v14;
          (*(v12 + 8))(v14, MEMORY[0x277D84958]);
          *&v103[0] = v85;
          v10 = mlx_array_new_data(v103, (MEMORY[0x277D84F90] + 32), 0, 8);
          goto LABEL_146;
        }

        if (v24 <= 64)
        {
          v82 = swift_getAssociatedTypeWitness();
          v101 = &v101;
          MEMORY[0x28223BE20](v82);
          swift_getAssociatedConformanceWitness();
          v83 = sub_25A998A78();
          MEMORY[0x28223BE20](v83);
          sub_25A9989C8();
          v84 = sub_25A997D88();
          (*(v12 + 8))(&v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
          if (v84)
          {
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          goto LABEL_140;
        }
      }

      MEMORY[0x28223BE20](v24);
      sub_25A8DF900();
      sub_25A9984A8();
      v72 = sub_25A997D88();
      (*(v12 + 8))(&v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
      if (v72)
      {
        goto LABEL_155;
      }

      goto LABEL_141;
    }

    if ((v15 & 1) != 0 && sub_25A9984C8() >= 33)
    {
      LODWORD(v103[0]) = 0x80000000;
      if (sub_25A9984D8())
      {
        v42 = sub_25A9984C8();
        if (v42 < 32)
        {
LABEL_137:
          sub_25A9984B8();
          goto LABEL_138;
        }
      }

      else
      {
        v67 = sub_25A9984D8();
        v42 = sub_25A9984C8();
        if ((v67 & 1) == 0)
        {
          if (v42 >= 32)
          {
            goto LABEL_138;
          }

          goto LABEL_137;
        }

        if (v42 <= 32)
        {
          v78 = swift_getAssociatedTypeWitness();
          v101 = &v101;
          MEMORY[0x28223BE20](v78);
          swift_getAssociatedConformanceWitness();
          v79 = sub_25A998A78();
          MEMORY[0x28223BE20](v79);
          sub_25A9989C8();
          v80 = sub_25A997D88();
          (*(v12 + 8))(&v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
          if (v80)
          {
LABEL_154:
            __break(1u);
            goto LABEL_155;
          }

          goto LABEL_137;
        }
      }

      MEMORY[0x28223BE20](v42);
      sub_25A8DF954();
      sub_25A9984A8();
      v71 = sub_25A997D88();
      (*(v12 + 8))(&v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
      if (v71)
      {
        goto LABEL_154;
      }
    }

LABEL_138:
    v81 = *v14;
    (*(v12 + 8))(v14, MEMORY[0x277D84958]);
    mlx_array_new_int(v81);
  }

  sub_25A87817C(v103, v105);
  v7 = v106;
  v8 = __swift_project_boxed_opaque_existential_1(v105, v106);
  v9 = v8;
  if (a2 > 6u)
  {
    if (a2 <= 9u)
    {
      if (a2 == 7)
      {
        sub_25A8DFC48();
        sub_25A9987F8();
        if ((BYTE4(v103[0]) & 1) == 0)
        {
          mlx_array_new_int(v103[0]);
        }

        *&v103[0] = 0;
        *(&v103[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v94 = sub_25A998C68();
        MEMORY[0x25F850290](v94);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        if (a2 != 8)
        {
          MEMORY[0x28223BE20](v8);
          (*(v37 + 16))(&v101 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
          sub_25A8DFBA0();
          sub_25A997C38();
          LOWORD(v102) = v103[0];
          v10 = mlx_array_new_data(&v102, (MEMORY[0x277D84F90] + 32), 0, 9);
          goto LABEL_146;
        }

        sub_25A8DFBF4();
        sub_25A9987F8();
        if ((BYTE8(v103[0]) & 1) == 0)
        {
          v10 = mlx_array_new_data(v103, (MEMORY[0x277D84F90] + 32), 0, 8);
          goto LABEL_146;
        }

        *&v103[0] = 0;
        *(&v103[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v97 = sub_25A998C68();
        MEMORY[0x25F850290](v97);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      goto LABEL_164;
    }

    if (a2 == 10)
    {
      MEMORY[0x28223BE20](v8);
      (*(v35 + 16))(&v101 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v10 = mlx_array_new_float(*v103);
      goto LABEL_146;
    }

    if (a2 == 11)
    {
      MEMORY[0x28223BE20](v8);
      (*(v26 + 16))(&v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v27 = v102;
      if (qword_27FA043D8 == -1)
      {
        goto LABEL_97;
      }

      goto LABEL_148;
    }

    MEMORY[0x28223BE20](v8);
    (*(v39 + 16))(&v101 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
    sub_25A8DFAF8();
    sub_25A997C38();
    v40 = sub_25A8BA558(*v103);
    goto LABEL_102;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      sub_25A8DFD98();
      sub_25A9987F8();
      if ((BYTE4(v103[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v103, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_146;
      }

      *&v103[0] = 0;
      *(&v103[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v95 = sub_25A998C68();
      MEMORY[0x25F850290](v95);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (a2 == 4)
    {
      sub_25A8DFD44();
      sub_25A9987F8();
      if ((BYTE8(v103[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v103, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_146;
      }

      *&v103[0] = 0;
      *(&v103[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v98 = sub_25A998C68();
      MEMORY[0x25F850290](v98);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFCF0();
      sub_25A9987F8();
      if ((BYTE1(v103[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v103, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_146;
      }

      *&v103[0] = 0;
      *(&v103[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v100 = sub_25A998C68();
      MEMORY[0x25F850290](v100);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](947154505, 0xE400000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else
  {
    if (!a2)
    {
      v33 = sub_25A997D38();
      mlx_array_new_BOOL((v33 & 1) == 0);
    }

    if (a2 == 1)
    {
      sub_25A8DFE40();
      sub_25A9987F8();
      if ((BYTE1(v103[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v103, (MEMORY[0x277D84F90] + 32), 0, 1);
LABEL_146:
        v93 = v10;
        type metadata accessor for MLXArray();
        v64 = swift_allocObject();
        *(v64 + 16) = v93;
        goto LABEL_147;
      }

      *&v103[0] = 0;
      *(&v103[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v96 = sub_25A998C68();
      MEMORY[0x25F850290](v96);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFDEC();
      sub_25A9987F8();
      if ((BYTE2(v103[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v103, (MEMORY[0x277D84F90] + 32), 0, 2);
        goto LABEL_146;
      }

      *&v103[0] = 0;
      *(&v103[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v99 = sub_25A998C68();
      MEMORY[0x25F850290](v99);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

LABEL_164:
  __break(1u);
  return result;
}

void sub_25A8CA8F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8CA900);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8CA9E4(int a1, unsigned __int8 a2)
{
  v111 = *MEMORY[0x277D85DE8];
  if (a2 == 7)
  {
    mlx_array_new_int(a1);
  }

  v105 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  v4 = MEMORY[0x277D849A8];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v107 = 0;
    memset(v106, 0, sizeof(v106));
    sub_25A878194(v106, &qword_27FA04950, &qword_25A9F9598);
    v109 = v4;
    v110 = sub_25A8DF954();
    LODWORD(v108[0]) = a1;
    v9 = __swift_project_boxed_opaque_existential_1(v108, v4);
    v10 = *(v4 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x28223BE20](v9);
    v12 = (&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v12);
    v13 = sub_25A9984D8();
    v14 = a2;
    if (a2 <= 5u)
    {
      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            if (v13)
            {
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              v104 = &v104;
              MEMORY[0x28223BE20](AssociatedTypeWitness);
              swift_getAssociatedConformanceWitness();
              v50 = sub_25A998A78();
              MEMORY[0x28223BE20](v50);
              sub_25A9989C8();
              v51 = sub_25A997D98();
              (*(v10 + 8))(&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
              if ((v51 & 1) == 0)
              {
                goto LABEL_155;
              }
            }

            LOWORD(v106[0]) = -1;
            v52 = sub_25A9984D8();
            MEMORY[0x28223BE20](v52);
            sub_25A8DFAA4();
            sub_25A9984A8();
            v53 = sub_25A997D88();
            v54 = *(v10 + 8);
            v54(&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
            if ((v53 & 1) == 0)
            {
              v55 = *v12;
              v54(v12, MEMORY[0x277D849A8]);
              LOWORD(v106[0]) = v55;
              v8 = mlx_array_new_data(v106, (MEMORY[0x277D84F90] + 32), 0, 2);
              goto LABEL_146;
            }

            goto LABEL_152;
          }

          if (v13)
          {
            v15 = swift_getAssociatedTypeWitness();
            v104 = &v104;
            MEMORY[0x28223BE20](v15);
            swift_getAssociatedConformanceWitness();
            v16 = sub_25A998A78();
            MEMORY[0x28223BE20](v16);
            sub_25A9989C8();
            v17 = sub_25A997D98();
            (*(v10 + 8))(&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
            if ((v17 & 1) == 0)
            {
              goto LABEL_154;
            }
          }

          LOBYTE(v106[0]) = -1;
          v18 = sub_25A9984D8();
          MEMORY[0x28223BE20](v18);
          sub_25A89522C();
          sub_25A9984A8();
          v19 = sub_25A997D88();
          v20 = *(v10 + 8);
          v20(&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
          if ((v19 & 1) == 0)
          {
            v21 = *v12;
            v20(v12, MEMORY[0x277D849A8]);
            LOBYTE(v106[0]) = v21;
            v8 = mlx_array_new_data(v106, (MEMORY[0x277D84F90] + 32), 0, 1);
            goto LABEL_146;
          }

LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        if ((v13 & 1) != 0 && sub_25A9984C8() >= 65)
        {
          *&v106[0] = 0x8000000000000000;
          if (sub_25A9984D8())
          {
            v39 = sub_25A9984C8();
            if (v39 < 64)
            {
LABEL_133:
              sub_25A9984B8();
              goto LABEL_134;
            }
          }

          else
          {
            v65 = sub_25A9984D8();
            v39 = sub_25A9984C8();
            if ((v65 & 1) == 0)
            {
              if (v39 >= 64)
              {
                goto LABEL_134;
              }

              goto LABEL_133;
            }

            if (v39 <= 64)
            {
              v73 = swift_getAssociatedTypeWitness();
              v104 = &v104;
              MEMORY[0x28223BE20](v73);
              swift_getAssociatedConformanceWitness();
              v74 = sub_25A998A78();
              MEMORY[0x28223BE20](v74);
              sub_25A9989C8();
              v75 = sub_25A997D88();
              (*(v10 + 8))(&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
              if (v75)
              {
LABEL_156:
                __break(1u);
                goto LABEL_157;
              }

              goto LABEL_133;
            }
          }

          MEMORY[0x28223BE20](v39);
          sub_25A895280();
          sub_25A9984A8();
          v69 = sub_25A997D88();
          (*(v10 + 8))(&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
          if (v69)
          {
            goto LABEL_156;
          }
        }

LABEL_134:
        v76 = *v12;
        (*(v10 + 8))(v12, MEMORY[0x277D849A8]);
        mlx_array_new_BOOL(v76 != 0);
      }

      if (a2 == 3)
      {
        if (v13 & 1) == 0 || (v41 = swift_getAssociatedTypeWitness(), v104 = &v104, MEMORY[0x28223BE20](v41), swift_getAssociatedConformanceWitness(), v42 = sub_25A998A78(), MEMORY[0x28223BE20](v42), sub_25A9989C8(), v43 = sub_25A997D98(), (*(v10 + 8))(&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]), (v43))
        {
          if (sub_25A9984D8())
          {
            v44 = swift_getAssociatedTypeWitness();
            v104 = &v104;
            MEMORY[0x28223BE20](v44);
            swift_getAssociatedConformanceWitness();
            v45 = sub_25A998A78();
            MEMORY[0x28223BE20](v45);
            sub_25A9989C8();
            v46 = sub_25A997D78();
            v47 = *(v10 + 8);
            v47(&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
            if (v46)
            {
              sub_25A9984B8();
            }
          }

          else
          {
            v47 = *(v10 + 8);
          }

          v64 = *v12;
          v47(v12, MEMORY[0x277D849A8]);
          LODWORD(v106[0]) = v64;
          v8 = mlx_array_new_data(v106, (MEMORY[0x277D84F90] + 32), 0, 3);
          goto LABEL_146;
        }

        goto LABEL_153;
      }

      if (a2 == 4)
      {
        if (v13)
        {
          v26 = swift_getAssociatedTypeWitness();
          v104 = &v104;
          MEMORY[0x28223BE20](v26);
          swift_getAssociatedConformanceWitness();
          v27 = sub_25A998A78();
          MEMORY[0x28223BE20](v27);
          sub_25A9989C8();
          v28 = sub_25A997D98();
          v30 = *(v10 + 8);
          v10 += 8;
          v29 = v30;
          v13 = (v30)(&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
          v14 = v104;
          if ((v28 & 1) == 0)
          {
            __break(1u);
            goto LABEL_44;
          }
        }

        else
        {
          v29 = *(v10 + 8);
        }

        v59 = *v12;
        v29(v12, MEMORY[0x277D849A8]);
        *&v106[0] = v59;
        v8 = mlx_array_new_data(v106, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_146;
      }

      if ((v13 & 1) == 0 || sub_25A9984C8() < 9)
      {
        goto LABEL_144;
      }

      LOBYTE(v106[0]) = 0x80;
      if (sub_25A9984D8())
      {
        v57 = sub_25A9984C8();
        if (v57 < 8)
        {
LABEL_143:
          sub_25A9984B8();
LABEL_144:
          LOBYTE(v106[0]) = 127;
          v91 = sub_25A9984D8();
          MEMORY[0x28223BE20](v91);
          sub_25A8DF9FC();
          sub_25A9984A8();
          v92 = sub_25A997D88();
          v93 = *(v10 + 8);
          v93(&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
          if ((v92 & 1) == 0)
          {
            v94 = *v12;
            v93(v12, MEMORY[0x277D849A8]);
            LOBYTE(v106[0]) = v94;
            v8 = mlx_array_new_data(v106, (MEMORY[0x277D84F90] + 32), 0, 5);
            goto LABEL_146;
          }

LABEL_150:
          __break(1u);
          goto LABEL_151;
        }
      }

      else
      {
        v68 = sub_25A9984D8();
        v57 = sub_25A9984C8();
        if ((v68 & 1) == 0)
        {
          if (v57 >= 8)
          {
            goto LABEL_144;
          }

          goto LABEL_143;
        }

        if (v57 <= 8)
        {
          v88 = swift_getAssociatedTypeWitness();
          v104 = &v104;
          MEMORY[0x28223BE20](v88);
          swift_getAssociatedConformanceWitness();
          v89 = sub_25A998A78();
          MEMORY[0x28223BE20](v89);
          sub_25A9989C8();
          v90 = sub_25A997D88();
          (*(v10 + 8))(&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
          if (v90)
          {
            goto LABEL_159;
          }

          goto LABEL_143;
        }
      }

      MEMORY[0x28223BE20](v57);
      sub_25A8DF9FC();
      sub_25A9984A8();
      v72 = sub_25A997D88();
      (*(v10 + 8))(&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
      if (v72)
      {
LABEL_159:
        __break(1u);
      }

      goto LABEL_144;
    }

    if (a2 > 9u)
    {
LABEL_44:
      if (v14 == 10)
      {
        if (v13)
        {
          v48 = sub_25A9984B8();
        }

        else
        {
          v48 = *v12;
        }

        (*(v10 + 8))(v12, MEMORY[0x277D849A8]);
        v8 = mlx_array_new_float(v48);
        goto LABEL_146;
      }

      if (v14 == 11)
      {
        if (v13)
        {
          v25 = sub_25A9984B8();
        }

        else
        {
          v25 = *v12;
        }

        (*(v10 + 8))(v12, MEMORY[0x277D849A8]);
        if (qword_27FA043D8 == -1)
        {
          goto LABEL_96;
        }

LABEL_148:
        swift_once();
LABEL_96:
        sub_25A998C58();
        v60 = *&v106[0];
        v61 = mlx_array_new_float(v25);
        *&v106[0] = mlx_array_new();
        mlx_astype(v106, v61, 12, *(v60 + 16));
        v62 = *&v106[0];
        type metadata accessor for MLXArray();
        v63 = swift_allocObject();
        *(v63 + 16) = v62;
        mlx_array_free(v61);

LABEL_147:
        __swift_destroy_boxed_opaque_existential_0Tm(v108);
        return v63;
      }

      if (v13)
      {
        v58 = sub_25A9984B8();
      }

      else
      {
        v58 = *v12;
      }

      (*(v10 + 8))(v12, MEMORY[0x277D849A8]);
      v38 = sub_25A8BA558(v58);
LABEL_101:
      v63 = v38;
      goto LABEL_147;
    }

    if (a2 != 6)
    {
      if (a2 != 8)
      {
        if (v13)
        {
          v56 = sub_25A9984B8();
        }

        else
        {
          v56 = *v12;
        }

        (*(v10 + 8))(&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
        *v106 = v56;
        v8 = mlx_array_new_data(v106, (MEMORY[0x277D84F90] + 32), 0, 9);
        goto LABEL_146;
      }

      if ((v13 & 1) == 0 || sub_25A9984C8() < 65)
      {
        goto LABEL_141;
      }

      *&v106[0] = 0x8000000000000000;
      if (sub_25A9984D8())
      {
        v22 = sub_25A9984C8();
        if (v22 < 64)
        {
LABEL_140:
          sub_25A9984B8();
          goto LABEL_141;
        }
      }

      else
      {
        v67 = sub_25A9984D8();
        v22 = sub_25A9984C8();
        if ((v67 & 1) == 0)
        {
          if (v22 < 64)
          {
            goto LABEL_140;
          }

LABEL_141:
          v87 = *v12;
          (*(v10 + 8))(v12, MEMORY[0x277D849A8]);
          *&v106[0] = v87;
          v8 = mlx_array_new_data(v106, (MEMORY[0x277D84F90] + 32), 0, 8);
          goto LABEL_146;
        }

        if (v22 <= 64)
        {
          v84 = swift_getAssociatedTypeWitness();
          v104 = &v104;
          MEMORY[0x28223BE20](v84);
          swift_getAssociatedConformanceWitness();
          v85 = sub_25A998A78();
          MEMORY[0x28223BE20](v85);
          sub_25A9989C8();
          v86 = sub_25A997D88();
          (*(v10 + 8))(&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
          if (v86)
          {
LABEL_158:
            __break(1u);
            goto LABEL_159;
          }

          goto LABEL_140;
        }
      }

      MEMORY[0x28223BE20](v22);
      sub_25A8DF900();
      sub_25A9984A8();
      v71 = sub_25A997D88();
      (*(v10 + 8))(&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
      if (v71)
      {
        goto LABEL_158;
      }

      goto LABEL_141;
    }

    if ((v13 & 1) != 0 && sub_25A9984C8() >= 17)
    {
      LOWORD(v106[0]) = 0x8000;
      if (sub_25A9984D8())
      {
        v40 = sub_25A9984C8();
        if (v40 < 16)
        {
LABEL_136:
          sub_25A9984B8();
          goto LABEL_137;
        }

LABEL_118:
        MEMORY[0x28223BE20](v40);
        sub_25A8DF9A8();
        sub_25A9984A8();
        v70 = sub_25A997D88();
        (*(v10 + 8))(&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
        if (v70)
        {
          goto LABEL_157;
        }

        goto LABEL_137;
      }

      v66 = sub_25A9984D8();
      v40 = sub_25A9984C8();
      if (v66)
      {
        if (v40 <= 16)
        {
          v77 = swift_getAssociatedTypeWitness();
          v104 = &v104;
          MEMORY[0x28223BE20](v77);
          swift_getAssociatedConformanceWitness();
          v78 = sub_25A998A78();
          MEMORY[0x28223BE20](v78);
          sub_25A9989C8();
          v79 = sub_25A997D88();
          (*(v10 + 8))(&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
          if (v79)
          {
LABEL_157:
            __break(1u);
            goto LABEL_158;
          }

          goto LABEL_136;
        }

        goto LABEL_118;
      }

      if (v40 < 16)
      {
        goto LABEL_136;
      }
    }

LABEL_137:
    LOWORD(v106[0]) = 0x7FFF;
    v80 = sub_25A9984D8();
    MEMORY[0x28223BE20](v80);
    sub_25A8DF9A8();
    sub_25A9984A8();
    v81 = sub_25A997D88();
    v82 = *(v10 + 8);
    v82(&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
    if ((v81 & 1) == 0)
    {
      v83 = *v12;
      v82(v12, MEMORY[0x277D849A8]);
      LOWORD(v106[0]) = v83;
      v8 = mlx_array_new_data(v106, (MEMORY[0x277D84F90] + 32), 0, 6);
      goto LABEL_146;
    }

    __break(1u);
    goto LABEL_150;
  }

  sub_25A87817C(v106, v108);
  v5 = v109;
  v6 = __swift_project_boxed_opaque_existential_1(v108, v109);
  v7 = v6;
  if (a2 > 5u)
  {
    if (a2 <= 9u)
    {
      if (a2 == 6)
      {
        sub_25A8DFC9C();
        sub_25A9987F8();
        if ((BYTE2(v106[0]) & 1) == 0)
        {
          v8 = mlx_array_new_data(v106, (MEMORY[0x277D84F90] + 32), 0, 6);
          goto LABEL_146;
        }

        *&v106[0] = 0;
        *(&v106[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v97 = sub_25A998C68();
        MEMORY[0x25F850290](v97);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        if (a2 != 8)
        {
          MEMORY[0x28223BE20](v6);
          (*(v35 + 16))(&v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v5);
          sub_25A8DFBA0();
          sub_25A997C38();
          LOWORD(v105) = v106[0];
          v8 = mlx_array_new_data(&v105, (MEMORY[0x277D84F90] + 32), 0, 9);
          goto LABEL_146;
        }

        sub_25A8DFBF4();
        sub_25A9987F8();
        if ((BYTE8(v106[0]) & 1) == 0)
        {
          v8 = mlx_array_new_data(v106, (MEMORY[0x277D84F90] + 32), 0, 8);
          goto LABEL_146;
        }

        *&v106[0] = 0;
        *(&v106[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v100 = sub_25A998C68();
        MEMORY[0x25F850290](v100);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      goto LABEL_167;
    }

    if (a2 == 10)
    {
      MEMORY[0x28223BE20](v6);
      (*(v33 + 16))(&v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v5);
      sub_25A8DFB4C();
      sub_25A997C38();
      v8 = mlx_array_new_float(*v106);
      goto LABEL_146;
    }

    if (a2 == 11)
    {
      MEMORY[0x28223BE20](v6);
      (*(v24 + 16))(&v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v5);
      sub_25A8DFB4C();
      sub_25A997C38();
      v25 = *&v105;
      if (qword_27FA043D8 == -1)
      {
        goto LABEL_96;
      }

      goto LABEL_148;
    }

    MEMORY[0x28223BE20](v6);
    (*(v37 + 16))(&v104 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v5);
    sub_25A8DFAF8();
    sub_25A997C38();
    v38 = sub_25A8BA558(*v106);
    goto LABEL_101;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      sub_25A8DFD98();
      sub_25A9987F8();
      if ((BYTE4(v106[0]) & 1) == 0)
      {
        v8 = mlx_array_new_data(v106, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_146;
      }

      *&v106[0] = 0;
      *(&v106[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v98 = sub_25A998C68();
      MEMORY[0x25F850290](v98);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (a2 == 4)
    {
      sub_25A8DFD44();
      sub_25A9987F8();
      if ((BYTE8(v106[0]) & 1) == 0)
      {
        v8 = mlx_array_new_data(v106, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_146;
      }

      *&v106[0] = 0;
      *(&v106[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v101 = sub_25A998C68();
      MEMORY[0x25F850290](v101);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFCF0();
      sub_25A9987F8();
      if ((BYTE1(v106[0]) & 1) == 0)
      {
        v8 = mlx_array_new_data(v106, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_146;
      }

      *&v106[0] = 0;
      *(&v106[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v103 = sub_25A998C68();
      MEMORY[0x25F850290](v103);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](947154505, 0xE400000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else
  {
    if (!a2)
    {
      v31 = sub_25A997D38();
      mlx_array_new_BOOL((v31 & 1) == 0);
    }

    if (a2 == 1)
    {
      sub_25A8DFE40();
      sub_25A9987F8();
      if ((BYTE1(v106[0]) & 1) == 0)
      {
        v8 = mlx_array_new_data(v106, (MEMORY[0x277D84F90] + 32), 0, 1);
LABEL_146:
        v95 = v8;
        type metadata accessor for MLXArray();
        v63 = swift_allocObject();
        *(v63 + 16) = v95;
        goto LABEL_147;
      }

      *&v106[0] = 0;
      *(&v106[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v99 = sub_25A998C68();
      MEMORY[0x25F850290](v99);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFDEC();
      sub_25A9987F8();
      if ((BYTE2(v106[0]) & 1) == 0)
      {
        v8 = mlx_array_new_data(v106, (MEMORY[0x277D84F90] + 32), 0, 2);
        goto LABEL_146;
      }

      *&v106[0] = 0;
      *(&v106[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v102 = sub_25A998C68();
      MEMORY[0x25F850290](v102);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

LABEL_167:
  __break(1u);
  return result;
}

void sub_25A8CD3F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8CD3F8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8CD4DC(uint64_t a1, unsigned __int8 a2)
{
  v117 = *MEMORY[0x277D85DE8];
  if (a2 == 8)
  {
    *v114 = a1;
    v3 = mlx_array_new_data(v114, (MEMORY[0x277D84F90] + 32), 0, 8);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v3;
    return result;
  }

  v111 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  v6 = MEMORY[0x277D84A28];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v113 = 0;
    memset(v112, 0, sizeof(v112));
    sub_25A878194(v112, &qword_27FA04950, &qword_25A9F9598);
    v115 = v6;
    v116 = sub_25A8DF900();
    *v114 = a1;
    v11 = __swift_project_boxed_opaque_existential_1(v114, v6);
    v110 = &v110;
    v12 = *(v6 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v14);
    v15 = sub_25A9984D8();
    if (a2 <= 5u)
    {
      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            if (v15)
            {
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              MEMORY[0x28223BE20](AssociatedTypeWitness);
              swift_getAssociatedConformanceWitness();
              v53 = sub_25A998A78();
              MEMORY[0x28223BE20](v53);
              sub_25A9989C8();
              v54 = sub_25A997D98();
              (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
              if ((v54 & 1) == 0)
              {
                goto LABEL_162;
              }
            }

            LOWORD(v112[0]) = -1;
            v55 = sub_25A9984D8();
            MEMORY[0x28223BE20](v55);
            sub_25A8DFAA4();
            sub_25A9984A8();
            v56 = sub_25A997D88();
            v57 = *(v12 + 8);
            v57(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
            if ((v56 & 1) == 0)
            {
              v58 = *v14;
              v57(v14, MEMORY[0x277D84A28]);
              LOWORD(v112[0]) = v58;
              v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 2);
              goto LABEL_150;
            }

            goto LABEL_158;
          }

          if (v15)
          {
            v16 = swift_getAssociatedTypeWitness();
            MEMORY[0x28223BE20](v16);
            swift_getAssociatedConformanceWitness();
            v17 = sub_25A998A78();
            MEMORY[0x28223BE20](v17);
            sub_25A9989C8();
            v18 = sub_25A997D98();
            (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
            if ((v18 & 1) == 0)
            {
              goto LABEL_160;
            }
          }

          LOBYTE(v112[0]) = -1;
          v19 = sub_25A9984D8();
          MEMORY[0x28223BE20](v19);
          sub_25A89522C();
          sub_25A9984A8();
          v20 = sub_25A997D88();
          v21 = *(v12 + 8);
          v21(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
          if ((v20 & 1) == 0)
          {
            v22 = *v14;
            v21(v14, MEMORY[0x277D84A28]);
            LOBYTE(v112[0]) = v22;
            v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 1);
            goto LABEL_150;
          }

LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        if ((v15 & 1) != 0 && sub_25A9984C8() >= 65)
        {
          *&v112[0] = 0x8000000000000000;
          if (sub_25A9984D8())
          {
            v42 = sub_25A9984C8();
            if (v42 < 64)
            {
LABEL_132:
              sub_25A9984B8();
              goto LABEL_133;
            }
          }

          else
          {
            v67 = sub_25A9984D8();
            v42 = sub_25A9984C8();
            if ((v67 & 1) == 0)
            {
              if (v42 >= 64)
              {
                goto LABEL_133;
              }

              goto LABEL_132;
            }

            if (v42 <= 64)
            {
              v75 = swift_getAssociatedTypeWitness();
              MEMORY[0x28223BE20](v75);
              swift_getAssociatedConformanceWitness();
              v76 = sub_25A998A78();
              MEMORY[0x28223BE20](v76);
              sub_25A9989C8();
              v77 = sub_25A997D88();
              (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
              if (v77)
              {
LABEL_164:
                __break(1u);
                goto LABEL_165;
              }

              goto LABEL_132;
            }
          }

          MEMORY[0x28223BE20](v42);
          sub_25A895280();
          sub_25A9984A8();
          v71 = sub_25A997D88();
          (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
          if (v71)
          {
            goto LABEL_164;
          }
        }

LABEL_133:
        if ((sub_25A9984D8() & 1) == 0)
        {
          *&v112[0] = 0x7FFFFFFFFFFFFFFFLL;
          v78 = sub_25A9984D8();
          if (v78)
          {
            sub_25A9984B8();
          }

          else
          {
            MEMORY[0x28223BE20](v78);
            sub_25A895280();
            sub_25A9984A8();
            v79 = sub_25A997D88();
            (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
            if (v79)
            {
LABEL_163:
              __break(1u);
              goto LABEL_164;
            }
          }
        }

        v80 = *v14;
        (*(v12 + 8))(v14, MEMORY[0x277D84A28]);
        mlx_array_new_BOOL(v80 != 0);
      }

      if (a2 == 3)
      {
        if (v15)
        {
          v44 = swift_getAssociatedTypeWitness();
          MEMORY[0x28223BE20](v44);
          swift_getAssociatedConformanceWitness();
          v45 = sub_25A998A78();
          MEMORY[0x28223BE20](v45);
          sub_25A9989C8();
          v46 = sub_25A997D98();
          (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
          if ((v46 & 1) == 0)
          {
            goto LABEL_159;
          }
        }

        LODWORD(v112[0]) = -1;
        v47 = sub_25A9984D8();
        MEMORY[0x28223BE20](v47);
        sub_25A8DFA50();
        sub_25A9984A8();
        v48 = sub_25A997D88();
        v49 = *(v12 + 8);
        v49(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
        if ((v48 & 1) == 0)
        {
          v50 = *v14;
          v49(v14, MEMORY[0x277D84A28]);
          LODWORD(v112[0]) = v50;
          v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 3);
          goto LABEL_150;
        }

        goto LABEL_156;
      }

      if (a2 == 4)
      {
        if (v15 & 1) == 0 || (v27 = swift_getAssociatedTypeWitness(), MEMORY[0x28223BE20](v27), swift_getAssociatedConformanceWitness(), v28 = sub_25A998A78(), MEMORY[0x28223BE20](v28), sub_25A9989C8(), v29 = sub_25A997D98(), (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]), (v29))
        {
          if (sub_25A9984D8())
          {
            v30 = swift_getAssociatedTypeWitness();
            MEMORY[0x28223BE20](v30);
            swift_getAssociatedConformanceWitness();
            v31 = sub_25A998A78();
            MEMORY[0x28223BE20](v31);
            sub_25A9989C8();
            v32 = sub_25A997D78();
            v33 = *(v12 + 8);
            v33(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
            if (v32)
            {
              sub_25A9984B8();
            }
          }

          else
          {
            v33 = *(v12 + 8);
          }

          v66 = *v14;
          v33(v14, MEMORY[0x277D84A28]);
          *&v112[0] = v66;
          v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 4);
          goto LABEL_150;
        }

        goto LABEL_161;
      }

      if ((v15 & 1) == 0 || sub_25A9984C8() < 9)
      {
        goto LABEL_148;
      }

      LOBYTE(v112[0]) = 0x80;
      if (sub_25A9984D8())
      {
        v60 = sub_25A9984C8();
        if (v60 < 8)
        {
LABEL_147:
          sub_25A9984B8();
LABEL_148:
          LOBYTE(v112[0]) = 127;
          v98 = sub_25A9984D8();
          MEMORY[0x28223BE20](v98);
          sub_25A8DF9FC();
          sub_25A9984A8();
          v99 = sub_25A997D88();
          v100 = *(v12 + 8);
          v100(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
          if ((v99 & 1) == 0)
          {
            v101 = *v14;
            v100(v14, MEMORY[0x277D84A28]);
            LOBYTE(v112[0]) = v101;
            v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 5);
            goto LABEL_150;
          }

          goto LABEL_155;
        }
      }

      else
      {
        v70 = sub_25A9984D8();
        v60 = sub_25A9984C8();
        if ((v70 & 1) == 0)
        {
          if (v60 >= 8)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        }

        if (v60 <= 8)
        {
          v95 = swift_getAssociatedTypeWitness();
          MEMORY[0x28223BE20](v95);
          swift_getAssociatedConformanceWitness();
          v96 = sub_25A998A78();
          MEMORY[0x28223BE20](v96);
          sub_25A9989C8();
          v97 = sub_25A997D88();
          (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
          if (v97)
          {
            goto LABEL_167;
          }

          goto LABEL_147;
        }
      }

      MEMORY[0x28223BE20](v60);
      sub_25A8DF9FC();
      sub_25A9984A8();
      v74 = sub_25A997D88();
      (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
      if (v74)
      {
LABEL_167:
        __break(1u);
      }

      goto LABEL_148;
    }

    if (a2 > 9u)
    {
      if (a2 == 10)
      {
        if (v15)
        {
          v51 = sub_25A9984B8();
        }

        else
        {
          v51 = *v14;
        }

        (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
        v10 = mlx_array_new_float(v51);
        goto LABEL_150;
      }

      if (a2 == 11)
      {
        if (v15)
        {
          v26 = sub_25A9984B8();
        }

        else
        {
          v26 = *v14;
        }

        (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
        if (qword_27FA043D8 == -1)
        {
          goto LABEL_95;
        }

LABEL_152:
        swift_once();
LABEL_95:
        sub_25A998C58();
        v62 = *&v112[0];
        v63 = mlx_array_new_float(v26);
        *&v112[0] = mlx_array_new();
        mlx_astype(v112, v63, 12, *(v62 + 16));
        v64 = *&v112[0];
        type metadata accessor for MLXArray();
        v65 = swift_allocObject();
        *(v65 + 16) = v64;
        mlx_array_free(v63);

LABEL_151:
        __swift_destroy_boxed_opaque_existential_0Tm(v114);
        return v65;
      }

      if (v15)
      {
        v61 = sub_25A9984B8();
      }

      else
      {
        v61 = *v14;
      }

      (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
      v41 = sub_25A8BA558(v61);
LABEL_100:
      v65 = v41;
      goto LABEL_151;
    }

    if (a2 != 6)
    {
      if (a2 != 7)
      {
        if (v15)
        {
          v59 = sub_25A9984B8();
        }

        else
        {
          v59 = *v14;
        }

        (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
        *v112 = v59;
        v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 9);
        goto LABEL_150;
      }

      if ((v15 & 1) == 0 || sub_25A9984C8() < 33)
      {
        goto LABEL_144;
      }

      LODWORD(v112[0]) = 0x80000000;
      if (sub_25A9984D8())
      {
        v23 = sub_25A9984C8();
        if (v23 < 32)
        {
LABEL_143:
          sub_25A9984B8();
LABEL_144:
          LODWORD(v112[0]) = 0x7FFFFFFF;
          v91 = sub_25A9984D8();
          MEMORY[0x28223BE20](v91);
          sub_25A8DF954();
          sub_25A9984A8();
          v92 = sub_25A997D88();
          v93 = *(v12 + 8);
          v93(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
          if ((v92 & 1) == 0)
          {
            v94 = *v14;
            v93(v14, MEMORY[0x277D84A28]);
            mlx_array_new_int(v94);
          }

LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }
      }

      else
      {
        v69 = sub_25A9984D8();
        v23 = sub_25A9984C8();
        if ((v69 & 1) == 0)
        {
          if (v23 >= 32)
          {
            goto LABEL_144;
          }

          goto LABEL_143;
        }

        if (v23 <= 32)
        {
          v88 = swift_getAssociatedTypeWitness();
          MEMORY[0x28223BE20](v88);
          swift_getAssociatedConformanceWitness();
          v89 = sub_25A998A78();
          MEMORY[0x28223BE20](v89);
          sub_25A9989C8();
          v90 = sub_25A997D88();
          (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
          if (v90)
          {
LABEL_166:
            __break(1u);
            goto LABEL_167;
          }

          goto LABEL_143;
        }
      }

      MEMORY[0x28223BE20](v23);
      sub_25A8DF954();
      sub_25A9984A8();
      v73 = sub_25A997D88();
      (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
      if (v73)
      {
        goto LABEL_166;
      }

      goto LABEL_144;
    }

    if ((v15 & 1) != 0 && sub_25A9984C8() >= 17)
    {
      LOWORD(v112[0]) = 0x8000;
      if (sub_25A9984D8())
      {
        v43 = sub_25A9984C8();
        if (v43 < 16)
        {
LABEL_139:
          sub_25A9984B8();
          goto LABEL_140;
        }

LABEL_117:
        MEMORY[0x28223BE20](v43);
        sub_25A8DF9A8();
        sub_25A9984A8();
        v72 = sub_25A997D88();
        (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
        if (v72)
        {
          goto LABEL_165;
        }

        goto LABEL_140;
      }

      v68 = sub_25A9984D8();
      v43 = sub_25A9984C8();
      if (v68)
      {
        if (v43 <= 16)
        {
          v81 = swift_getAssociatedTypeWitness();
          MEMORY[0x28223BE20](v81);
          swift_getAssociatedConformanceWitness();
          v82 = sub_25A998A78();
          MEMORY[0x28223BE20](v82);
          sub_25A9989C8();
          v83 = sub_25A997D88();
          (*(v12 + 8))(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
          if (v83)
          {
LABEL_165:
            __break(1u);
            goto LABEL_166;
          }

          goto LABEL_139;
        }

        goto LABEL_117;
      }

      if (v43 < 16)
      {
        goto LABEL_139;
      }
    }

LABEL_140:
    LOWORD(v112[0]) = 0x7FFF;
    v84 = sub_25A9984D8();
    MEMORY[0x28223BE20](v84);
    sub_25A8DF9A8();
    sub_25A9984A8();
    v85 = sub_25A997D88();
    v86 = *(v12 + 8);
    v86(&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
    if ((v85 & 1) == 0)
    {
      v87 = *v14;
      v86(v14, MEMORY[0x277D84A28]);
      LOWORD(v112[0]) = v87;
      v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 6);
      goto LABEL_150;
    }

    __break(1u);
    goto LABEL_154;
  }

  sub_25A87817C(v112, v114);
  v7 = v115;
  v8 = __swift_project_boxed_opaque_existential_1(v114, v115);
  v9 = v8;
  if (a2 > 5u)
  {
    if (a2 <= 9u)
    {
      if (a2 == 6)
      {
        sub_25A8DFC9C();
        sub_25A9987F8();
        if ((BYTE2(v112[0]) & 1) == 0)
        {
          v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 6);
          goto LABEL_150;
        }

        *&v112[0] = 0;
        *(&v112[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v103 = sub_25A998C68();
        MEMORY[0x25F850290](v103);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        if (a2 != 7)
        {
          MEMORY[0x28223BE20](v8);
          (*(v38 + 16))(&v110 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
          sub_25A8DFBA0();
          sub_25A997C38();
          LOWORD(v111) = v112[0];
          v10 = mlx_array_new_data(&v111, (MEMORY[0x277D84F90] + 32), 0, 9);
          goto LABEL_150;
        }

        sub_25A8DFC48();
        sub_25A9987F8();
        if ((BYTE4(v112[0]) & 1) == 0)
        {
          mlx_array_new_int(v112[0]);
        }

        *&v112[0] = 0;
        *(&v112[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v106 = sub_25A998C68();
        MEMORY[0x25F850290](v106);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      goto LABEL_175;
    }

    if (a2 == 10)
    {
      MEMORY[0x28223BE20](v8);
      (*(v36 + 16))(&v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v10 = mlx_array_new_float(*v112);
      goto LABEL_150;
    }

    if (a2 == 11)
    {
      MEMORY[0x28223BE20](v8);
      (*(v25 + 16))(&v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v26 = *&v111;
      if (qword_27FA043D8 == -1)
      {
        goto LABEL_95;
      }

      goto LABEL_152;
    }

    MEMORY[0x28223BE20](v8);
    (*(v40 + 16))(&v110 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
    sub_25A8DFAF8();
    sub_25A997C38();
    v41 = sub_25A8BA558(*v112);
    goto LABEL_100;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      sub_25A8DFD98();
      sub_25A9987F8();
      if ((BYTE4(v112[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_150;
      }

      *&v112[0] = 0;
      *(&v112[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v104 = sub_25A998C68();
      MEMORY[0x25F850290](v104);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (a2 == 4)
    {
      sub_25A8DFD44();
      sub_25A9987F8();
      if ((BYTE8(v112[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_150;
      }

      *&v112[0] = 0;
      *(&v112[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v107 = sub_25A998C68();
      MEMORY[0x25F850290](v107);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFCF0();
      sub_25A9987F8();
      if ((BYTE1(v112[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_150;
      }

      *&v112[0] = 0;
      *(&v112[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v109 = sub_25A998C68();
      MEMORY[0x25F850290](v109);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](947154505, 0xE400000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else
  {
    if (!a2)
    {
      v34 = sub_25A997D38();
      mlx_array_new_BOOL((v34 & 1) == 0);
    }

    if (a2 == 1)
    {
      sub_25A8DFE40();
      sub_25A9987F8();
      if ((BYTE1(v112[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 1);
LABEL_150:
        v102 = v10;
        type metadata accessor for MLXArray();
        v65 = swift_allocObject();
        *(v65 + 16) = v102;
        goto LABEL_151;
      }

      *&v112[0] = 0;
      *(&v112[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v105 = sub_25A998C68();
      MEMORY[0x25F850290](v105);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFDEC();
      sub_25A9987F8();
      if ((BYTE2(v112[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v112, (MEMORY[0x277D84F90] + 32), 0, 2);
        goto LABEL_150;
      }

      *&v112[0] = 0;
      *(&v112[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v108 = sub_25A998C68();
      MEMORY[0x25F850290](v108);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

LABEL_175:
  __break(1u);
  return result;
}

void sub_25A8D0134(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8D013CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8D0220(char a1, unsigned __int8 a2)
{
  v103 = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    LOBYTE(v100[0]) = a1;
    v3 = mlx_array_new_data(v100, (MEMORY[0x277D84F90] + 32), 0, 1);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v3;
    return result;
  }

  LOBYTE(v97) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  v6 = MEMORY[0x277D84B78];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v99 = 0;
    memset(v98, 0, sizeof(v98));
    sub_25A878194(v98, &qword_27FA04950, &qword_25A9F9598);
    v101 = v6;
    v102 = sub_25A89522C();
    LOBYTE(v100[0]) = a1;
    v12 = __swift_project_boxed_opaque_existential_1(v100, v6);
    v13 = *(v6 - 8);
    v14 = *(v13 + 64);
    MEMORY[0x28223BE20](v12);
    v7 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v7);
    v15 = sub_25A9984D8();
    if (a2 <= 6u)
    {
      if (a2 <= 3u)
      {
        if (a2)
        {
          if (a2 == 2)
          {
            if (v15)
            {
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              v96 = &v96;
              MEMORY[0x28223BE20](AssociatedTypeWitness);
              swift_getAssociatedConformanceWitness();
              v18 = sub_25A998A78();
              MEMORY[0x28223BE20](v18);
              sub_25A9989C8();
              v19 = sub_25A997D98();
              v9 = *(v13 + 8);
              v8 = v9(&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
              v10 = v96;
              if ((v19 & 1) == 0)
              {
                __break(1u);
                goto LABEL_17;
              }
            }

            else
            {
              v9 = *(v13 + 8);
            }

            v50 = *v7;
            v9(v7, MEMORY[0x277D84B78]);
            LOWORD(v98[0]) = v50;
            v11 = mlx_array_new_data(v98, (MEMORY[0x277D84F90] + 32), 0, 2);
            goto LABEL_158;
          }

          if (v15)
          {
            v41 = swift_getAssociatedTypeWitness();
            v96 = &v96;
            MEMORY[0x28223BE20](v41);
            swift_getAssociatedConformanceWitness();
            v42 = sub_25A998A78();
            MEMORY[0x28223BE20](v42);
            sub_25A9989C8();
            v43 = sub_25A997D98();
            v45 = *(v13 + 8);
            v13 += 8;
            v44 = v45;
            v15 = (v45)(&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
            if ((v43 & 1) == 0)
            {
              __break(1u);
              goto LABEL_79;
            }
          }

          else
          {
            v44 = *(v13 + 8);
          }

          v55 = *v7;
          v44(v7, MEMORY[0x277D84B78]);
          LODWORD(v98[0]) = v55;
          v11 = mlx_array_new_data(v98, (MEMORY[0x277D84F90] + 32), 0, 3);
          goto LABEL_158;
        }

        if ((v15 & 1) == 0 || sub_25A9984C8() < 65)
        {
LABEL_141:
          v69 = *v7;
          (*(v13 + 8))(v7, MEMORY[0x277D84B78]);
          mlx_array_new_BOOL(v69 != 0);
        }

        *&v98[0] = 0x8000000000000000;
        if (sub_25A9984D8())
        {
          v33 = sub_25A9984C8();
          if (v33 < 64)
          {
            goto LABEL_140;
          }
        }

        else
        {
          v56 = sub_25A9984D8();
          v33 = sub_25A9984C8();
          if ((v56 & 1) == 0)
          {
            if (v33 >= 64)
            {
              goto LABEL_141;
            }

            goto LABEL_140;
          }

          if (v33 <= 64)
          {
            v66 = swift_getAssociatedTypeWitness();
            v96 = &v96;
            MEMORY[0x28223BE20](v66);
            swift_getAssociatedConformanceWitness();
            v67 = sub_25A998A78();
            MEMORY[0x28223BE20](v67);
            sub_25A9989C8();
            v68 = sub_25A997D88();
            (*(v13 + 8))(&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
            if ((v68 & 1) == 0)
            {
LABEL_140:
              sub_25A9984B8();
              goto LABEL_141;
            }

            goto LABEL_162;
          }
        }

        MEMORY[0x28223BE20](v33);
        sub_25A895280();
        sub_25A9984A8();
        v61 = sub_25A997D88();
        (*(v13 + 8))(&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
        if ((v61 & 1) == 0)
        {
          goto LABEL_141;
        }

LABEL_162:
        __break(1u);
        goto LABEL_163;
      }

      if (a2 != 4)
      {
        if (a2 == 5)
        {
          if ((v15 & 1) != 0 && sub_25A9984C8() >= 9)
          {
            LOBYTE(v98[0]) = 0x80;
            if (sub_25A9984D8())
            {
              v24 = sub_25A9984C8();
              if (v24 < 8)
              {
LABEL_149:
                sub_25A9984B8();
                goto LABEL_150;
              }
            }

            else
            {
              v59 = sub_25A9984D8();
              v24 = sub_25A9984C8();
              if ((v59 & 1) == 0)
              {
                if (v24 >= 8)
                {
                  goto LABEL_150;
                }

                goto LABEL_149;
              }

              if (v24 <= 8)
              {
                v78 = swift_getAssociatedTypeWitness();
                v96 = &v96;
                MEMORY[0x28223BE20](v78);
                swift_getAssociatedConformanceWitness();
                v79 = sub_25A998A78();
                MEMORY[0x28223BE20](v79);
                sub_25A9989C8();
                v80 = sub_25A997D88();
                (*(v13 + 8))(&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
                if (v80)
                {
LABEL_165:
                  __break(1u);
                  goto LABEL_166;
                }

                goto LABEL_149;
              }
            }

            MEMORY[0x28223BE20](v24);
            sub_25A8DF9FC();
            sub_25A9984A8();
            v64 = sub_25A997D88();
            (*(v13 + 8))(&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
            if (v64)
            {
              goto LABEL_165;
            }
          }

LABEL_150:
          if ((sub_25A9984D8() & 1) == 0)
          {
            LOBYTE(v98[0]) = 127;
            v81 = sub_25A9984D8();
            if (v81)
            {
              sub_25A9984B8();
            }

            else
            {
              MEMORY[0x28223BE20](v81);
              sub_25A8DF9FC();
              sub_25A9984A8();
              v82 = sub_25A997D88();
              (*(v13 + 8))(&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
              if (v82)
              {
                __break(1u);
                goto LABEL_162;
              }
            }
          }

          v83 = *v7;
          (*(v13 + 8))(v7, MEMORY[0x277D84B78]);
          LOBYTE(v98[0]) = v83;
          v11 = mlx_array_new_data(v98, (MEMORY[0x277D84F90] + 32), 0, 5);
          goto LABEL_158;
        }

        if ((v15 & 1) != 0 && sub_25A9984C8() >= 17)
        {
          LOWORD(v98[0]) = 0x8000;
          if (sub_25A9984D8())
          {
            v47 = sub_25A9984C8();
            if (v47 < 16)
            {
LABEL_156:
              sub_25A9984B8();
              goto LABEL_157;
            }

            goto LABEL_127;
          }

          v60 = sub_25A9984D8();
          v47 = sub_25A9984C8();
          if (v60)
          {
            if (v47 <= 16)
            {
              v84 = swift_getAssociatedTypeWitness();
              v96 = &v96;
              MEMORY[0x28223BE20](v84);
              swift_getAssociatedConformanceWitness();
              v85 = sub_25A998A78();
              MEMORY[0x28223BE20](v85);
              sub_25A9989C8();
              v86 = sub_25A997D88();
              (*(v13 + 8))(&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
              if (v86)
              {
                goto LABEL_166;
              }

              goto LABEL_156;
            }

LABEL_127:
            MEMORY[0x28223BE20](v47);
            sub_25A8DF9A8();
            sub_25A9984A8();
            v65 = sub_25A997D88();
            (*(v13 + 8))(&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
            if (v65)
            {
LABEL_166:
              __break(1u);
            }

            goto LABEL_157;
          }

          if (v47 < 16)
          {
            goto LABEL_156;
          }
        }

LABEL_157:
        v87 = *v7;
        (*(v13 + 8))(v7, MEMORY[0x277D84B78]);
        LOWORD(v98[0]) = v87;
        v11 = mlx_array_new_data(v98, (MEMORY[0x277D84F90] + 32), 0, 6);
        goto LABEL_158;
      }

      if (v15)
      {
        v35 = swift_getAssociatedTypeWitness();
        v96 = &v96;
        MEMORY[0x28223BE20](v35);
        swift_getAssociatedConformanceWitness();
        v36 = sub_25A998A78();
        MEMORY[0x28223BE20](v36);
        sub_25A9989C8();
        v37 = sub_25A997D98();
        v39 = *(v13 + 8);
        v13 += 8;
        v38 = v39;
        v15 = (v39)(&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
        if ((v37 & 1) == 0)
        {
          __break(1u);
          goto LABEL_74;
        }
      }

      else
      {
        v38 = *(v13 + 8);
      }

      v49 = *v7;
      v38(v7, MEMORY[0x277D84B78]);
      *&v98[0] = v49;
      v11 = mlx_array_new_data(v98, (MEMORY[0x277D84F90] + 32), 0, 4);
      goto LABEL_158;
    }

    if (a2 > 9u)
    {
      if (a2 != 10)
      {
        if (a2 == 11)
        {
          if (v15)
          {
            v23 = sub_25A9984B8();
          }

          else
          {
            LOBYTE(v16) = *v7;
            v23 = v16;
          }

          (*(v13 + 8))(&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
          if (qword_27FA043D8 == -1)
          {
            goto LABEL_96;
          }

LABEL_160:
          swift_once();
LABEL_96:
          sub_25A998C58();
          v51 = *&v98[0];
          v52 = mlx_array_new_float(v23);
          *&v98[0] = mlx_array_new();
          mlx_astype(v98, v52, 12, *(v51 + 16));
          v53 = *&v98[0];
          type metadata accessor for MLXArray();
          v54 = swift_allocObject();
          *(v54 + 16) = v53;
          mlx_array_free(v52);

LABEL_159:
          __swift_destroy_boxed_opaque_existential_0Tm(v100);
          return v54;
        }

        if (v15)
        {
          v48 = sub_25A9984B8();
        }

        else
        {
          LOBYTE(v16) = *v7;
          v48 = v16;
        }

        (*(v13 + 8))(&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
        v32 = sub_25A8BA558(v48);
LABEL_103:
        v54 = v32;
        goto LABEL_159;
      }

LABEL_74:
      if (v15)
      {
        v40 = sub_25A9984B8();
      }

      else
      {
        LOBYTE(v16) = *v7;
        v40 = v16;
      }

      (*(v13 + 8))(v7, MEMORY[0x277D84B78]);
      v11 = mlx_array_new_float(v40);
      goto LABEL_158;
    }

    if (a2 != 7)
    {
      if (a2 != 8)
      {
LABEL_79:
        if (v15)
        {
          v46 = sub_25A9984B8();
        }

        else
        {
          LOBYTE(v16) = *v7;
          v46 = v16;
        }

        (*(v13 + 8))(v7, MEMORY[0x277D84B78]);
        *v98 = v46;
        v11 = mlx_array_new_data(v98, (MEMORY[0x277D84F90] + 32), 0, 9);
        goto LABEL_158;
      }

      if ((v15 & 1) == 0 || sub_25A9984C8() < 65)
      {
        goto LABEL_147;
      }

      *&v98[0] = 0x8000000000000000;
      if (sub_25A9984D8())
      {
        v20 = sub_25A9984C8();
        if (v20 < 64)
        {
LABEL_146:
          sub_25A9984B8();
          goto LABEL_147;
        }
      }

      else
      {
        v58 = sub_25A9984D8();
        v20 = sub_25A9984C8();
        if ((v58 & 1) == 0)
        {
          if (v20 < 64)
          {
            goto LABEL_146;
          }

LABEL_147:
          v77 = *v7;
          (*(v13 + 8))(v7, MEMORY[0x277D84B78]);
          *&v98[0] = v77;
          v11 = mlx_array_new_data(v98, (MEMORY[0x277D84F90] + 32), 0, 8);
          goto LABEL_158;
        }

        if (v20 <= 64)
        {
          v74 = swift_getAssociatedTypeWitness();
          v96 = &v96;
          MEMORY[0x28223BE20](v74);
          swift_getAssociatedConformanceWitness();
          v75 = sub_25A998A78();
          MEMORY[0x28223BE20](v75);
          sub_25A9989C8();
          v76 = sub_25A997D88();
          (*(v13 + 8))(&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
          if (v76)
          {
LABEL_164:
            __break(1u);
            goto LABEL_165;
          }

          goto LABEL_146;
        }
      }

      MEMORY[0x28223BE20](v20);
      sub_25A8DF900();
      sub_25A9984A8();
      v63 = sub_25A997D88();
      (*(v13 + 8))(&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
      if (v63)
      {
        goto LABEL_164;
      }

      goto LABEL_147;
    }

    if ((v15 & 1) != 0 && sub_25A9984C8() >= 33)
    {
      LODWORD(v98[0]) = 0x80000000;
      if (sub_25A9984D8())
      {
        v34 = sub_25A9984C8();
        if (v34 < 32)
        {
LABEL_143:
          sub_25A9984B8();
          goto LABEL_144;
        }
      }

      else
      {
        v57 = sub_25A9984D8();
        v34 = sub_25A9984C8();
        if ((v57 & 1) == 0)
        {
          if (v34 >= 32)
          {
            goto LABEL_144;
          }

          goto LABEL_143;
        }

        if (v34 <= 32)
        {
          v70 = swift_getAssociatedTypeWitness();
          v96 = &v96;
          MEMORY[0x28223BE20](v70);
          swift_getAssociatedConformanceWitness();
          v71 = sub_25A998A78();
          MEMORY[0x28223BE20](v71);
          sub_25A9989C8();
          v72 = sub_25A997D88();
          (*(v13 + 8))(&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
          if (v72)
          {
LABEL_163:
            __break(1u);
            goto LABEL_164;
          }

          goto LABEL_143;
        }
      }

      MEMORY[0x28223BE20](v34);
      sub_25A8DF954();
      sub_25A9984A8();
      v62 = sub_25A997D88();
      (*(v13 + 8))(&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
      if (v62)
      {
        goto LABEL_163;
      }
    }

LABEL_144:
    v73 = *v7;
    (*(v13 + 8))(v7, MEMORY[0x277D84B78]);
    mlx_array_new_int(v73);
  }

  sub_25A87817C(v98, v100);
  v7 = v101;
  v8 = __swift_project_boxed_opaque_existential_1(v100, v101);
  v9 = v8;
  v10 = a2;
  if (a2 <= 6u)
  {
    if (a2 > 3u)
    {
      if (a2 == 4)
      {
        sub_25A8DFD44();
        sub_25A9987F8();
        if ((BYTE8(v98[0]) & 1) == 0)
        {
          v11 = mlx_array_new_data(v98, (MEMORY[0x277D84F90] + 32), 0, 4);
          goto LABEL_158;
        }

        *&v98[0] = 0;
        *(&v98[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v90 = sub_25A998C68();
        MEMORY[0x25F850290](v90);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else if (a2 == 5)
      {
        sub_25A8DFCF0();
        sub_25A9987F8();
        if ((BYTE1(v98[0]) & 1) == 0)
        {
          v11 = mlx_array_new_data(v98, (MEMORY[0x277D84F90] + 32), 0, 5);
          goto LABEL_158;
        }

        *&v98[0] = 0;
        *(&v98[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v93 = sub_25A998C68();
        MEMORY[0x25F850290](v93);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](947154505, 0xE400000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        sub_25A8DFC9C();
        sub_25A9987F8();
        if ((BYTE2(v98[0]) & 1) == 0)
        {
          v11 = mlx_array_new_data(v98, (MEMORY[0x277D84F90] + 32), 0, 6);
          goto LABEL_158;
        }

        *&v98[0] = 0;
        *(&v98[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v95 = sub_25A998C68();
        MEMORY[0x25F850290](v95);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }
    }

    else
    {
      if (!a2)
      {
        v25 = sub_25A997D38();
        mlx_array_new_BOOL((v25 & 1) == 0);
      }

      if (a2 == 2)
      {
        sub_25A8DFDEC();
        sub_25A9987F8();
        if ((BYTE2(v98[0]) & 1) == 0)
        {
          v11 = mlx_array_new_data(v98, (MEMORY[0x277D84F90] + 32), 0, 2);
LABEL_158:
          v88 = v11;
          type metadata accessor for MLXArray();
          v54 = swift_allocObject();
          *(v54 + 16) = v88;
          goto LABEL_159;
        }

        *&v98[0] = 0;
        *(&v98[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v91 = sub_25A998C68();
        MEMORY[0x25F850290](v91);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        sub_25A8DFD98();
        sub_25A9987F8();
        if ((BYTE4(v98[0]) & 1) == 0)
        {
          v11 = mlx_array_new_data(v98, (MEMORY[0x277D84F90] + 32), 0, 3);
          goto LABEL_158;
        }

        *&v98[0] = 0;
        *(&v98[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v94 = sub_25A998C68();
        MEMORY[0x25F850290](v94);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }
    }

    goto LABEL_174;
  }

LABEL_17:
  if (v10 > 9)
  {
    if (v10 == 10)
    {
      MEMORY[0x28223BE20](v8);
      (*(v27 + 16))(&v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v11 = mlx_array_new_float(*v98);
      goto LABEL_158;
    }

    if (v10 == 11)
    {
      MEMORY[0x28223BE20](v8);
      (*(v22 + 16))(&v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v23 = v97;
      if (qword_27FA043D8 == -1)
      {
        goto LABEL_96;
      }

      goto LABEL_160;
    }

    MEMORY[0x28223BE20](v8);
    (*(v31 + 16))(&v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
    sub_25A8DFAF8();
    sub_25A997C38();
    v32 = sub_25A8BA558(*v98);
    goto LABEL_103;
  }

  if (v10 == 7)
  {
    sub_25A8DFC48();
    sub_25A9987F8();
    if ((BYTE4(v98[0]) & 1) == 0)
    {
      mlx_array_new_int(v98[0]);
    }

    *&v98[0] = 0;
    *(&v98[0] + 1) = 0xE000000000000000;
    sub_25A9985F8();
    v89 = sub_25A998C68();
    MEMORY[0x25F850290](v89);

    MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
    MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
    MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
    result = sub_25A998818();
  }

  else
  {
    if (v10 != 8)
    {
      MEMORY[0x28223BE20](v8);
      (*(v29 + 16))(&v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
      sub_25A8DFBA0();
      sub_25A997C38();
      LOWORD(v97) = v98[0];
      v11 = mlx_array_new_data(&v97, (MEMORY[0x277D84F90] + 32), 0, 9);
      goto LABEL_158;
    }

    sub_25A8DFBF4();
    sub_25A9987F8();
    if ((BYTE8(v98[0]) & 1) == 0)
    {
      v11 = mlx_array_new_data(v98, (MEMORY[0x277D84F90] + 32), 0, 8);
      goto LABEL_158;
    }

    *&v98[0] = 0;
    *(&v98[0] + 1) = 0xE000000000000000;
    sub_25A9985F8();
    v92 = sub_25A998C68();
    MEMORY[0x25F850290](v92);

    MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
    MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
    MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
    result = sub_25A998818();
  }

LABEL_174:
  __break(1u);
  return result;
}

void sub_25A8D2A88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8D2A90);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8D2B74(__int16 a1, unsigned __int8 a2)
{
  v109 = *MEMORY[0x277D85DE8];
  if (a2 == 2)
  {
    LOWORD(v106[0]) = a1;
    v3 = mlx_array_new_data(v106, (MEMORY[0x277D84F90] + 32), 0, 2);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v3;
    return result;
  }

  LOWORD(v103) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  v6 = MEMORY[0x277D84C58];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v105 = 0;
    memset(v104, 0, sizeof(v104));
    sub_25A878194(v104, &qword_27FA04950, &qword_25A9F9598);
    v107 = v6;
    v108 = sub_25A8DFAA4();
    LOWORD(v106[0]) = a1;
    v11 = __swift_project_boxed_opaque_existential_1(v106, v6);
    v12 = *(v6 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v14);
    v15 = sub_25A9984D8();
    if (a2 <= 6u)
    {
      if (a2 <= 3u)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            if (v15)
            {
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              v102 = &v102;
              MEMORY[0x28223BE20](AssociatedTypeWitness);
              swift_getAssociatedConformanceWitness();
              v18 = sub_25A998A78();
              MEMORY[0x28223BE20](v18);
              sub_25A9989C8();
              v19 = sub_25A997D98();
              (*(v12 + 8))(&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
              if ((v19 & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            LOBYTE(v104[0]) = -1;
            v20 = sub_25A9984D8();
            MEMORY[0x28223BE20](v20);
            sub_25A89522C();
            sub_25A9984A8();
            v21 = sub_25A997D88();
            v22 = *(v12 + 8);
            v22(&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
            if ((v21 & 1) == 0)
            {
              v23 = *v14;
              v22(v14, MEMORY[0x277D84C58]);
              LOBYTE(v104[0]) = v23;
              v10 = mlx_array_new_data(v104, (MEMORY[0x277D84F90] + 32), 0, 1);
              goto LABEL_158;
            }

LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
            goto LABEL_164;
          }

          if (v15)
          {
            v45 = swift_getAssociatedTypeWitness();
            v102 = &v102;
            MEMORY[0x28223BE20](v45);
            swift_getAssociatedConformanceWitness();
            v46 = sub_25A998A78();
            MEMORY[0x28223BE20](v46);
            sub_25A9989C8();
            v47 = sub_25A997D98();
            v49 = *(v12 + 8);
            v12 += 8;
            v48 = v49;
            v15 = (v49)(&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
            if ((v47 & 1) == 0)
            {
              __break(1u);
              goto LABEL_80;
            }
          }

          else
          {
            v48 = *(v12 + 8);
          }

          v58 = *v14;
          v48(v14, MEMORY[0x277D84C58]);
          LODWORD(v104[0]) = v58;
          v10 = mlx_array_new_data(v104, (MEMORY[0x277D84F90] + 32), 0, 3);
          goto LABEL_158;
        }

        if ((v15 & 1) != 0 && sub_25A9984C8() >= 65)
        {
          *&v104[0] = 0x8000000000000000;
          if (sub_25A9984D8())
          {
            v37 = sub_25A9984C8();
            if (v37 < 64)
            {
LABEL_139:
              sub_25A9984B8();
              goto LABEL_140;
            }
          }

          else
          {
            v59 = sub_25A9984D8();
            v37 = sub_25A9984C8();
            if ((v59 & 1) == 0)
            {
              if (v37 >= 64)
              {
                goto LABEL_140;
              }

              goto LABEL_139;
            }

            if (v37 <= 64)
            {
              v69 = swift_getAssociatedTypeWitness();
              v102 = &v102;
              MEMORY[0x28223BE20](v69);
              swift_getAssociatedConformanceWitness();
              v70 = sub_25A998A78();
              MEMORY[0x28223BE20](v70);
              sub_25A9989C8();
              v71 = sub_25A997D88();
              (*(v12 + 8))(&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
              if (v71)
              {
LABEL_165:
                __break(1u);
                goto LABEL_166;
              }

              goto LABEL_139;
            }
          }

          MEMORY[0x28223BE20](v37);
          sub_25A895280();
          sub_25A9984A8();
          v64 = sub_25A997D88();
          (*(v12 + 8))(&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
          if (v64)
          {
            goto LABEL_165;
          }
        }

LABEL_140:
        v72 = *v14;
        (*(v12 + 8))(v14, MEMORY[0x277D84C58]);
        mlx_array_new_BOOL(v72 != 0);
      }

      if (a2 != 4)
      {
        if (a2 == 5)
        {
          if ((v15 & 1) == 0 || sub_25A9984C8() < 9)
          {
            goto LABEL_149;
          }

          LOBYTE(v104[0]) = 0x80;
          if (sub_25A9984D8())
          {
            v28 = sub_25A9984C8();
            if (v28 < 8)
            {
              goto LABEL_148;
            }
          }

          else
          {
            v62 = sub_25A9984D8();
            v28 = sub_25A9984C8();
            if ((v62 & 1) == 0)
            {
              if (v28 >= 8)
              {
LABEL_149:
                LOBYTE(v104[0]) = 127;
                v84 = sub_25A9984D8();
                MEMORY[0x28223BE20](v84);
                sub_25A8DF9FC();
                sub_25A9984A8();
                v85 = sub_25A997D88();
                v86 = *(v12 + 8);
                v86(&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
                if ((v85 & 1) == 0)
                {
                  v87 = *v14;
                  v86(v14, MEMORY[0x277D84C58]);
                  LOBYTE(v104[0]) = v87;
                  v10 = mlx_array_new_data(v104, (MEMORY[0x277D84F90] + 32), 0, 5);
                  goto LABEL_158;
                }

                __break(1u);
                goto LABEL_162;
              }

LABEL_148:
              sub_25A9984B8();
              goto LABEL_149;
            }

            if (v28 <= 8)
            {
              v81 = swift_getAssociatedTypeWitness();
              v102 = &v102;
              MEMORY[0x28223BE20](v81);
              swift_getAssociatedConformanceWitness();
              v82 = sub_25A998A78();
              MEMORY[0x28223BE20](v82);
              sub_25A9989C8();
              v83 = sub_25A997D88();
              (*(v12 + 8))(&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
              if (v83)
              {
LABEL_168:
                __break(1u);
                goto LABEL_169;
              }

              goto LABEL_148;
            }
          }

          MEMORY[0x28223BE20](v28);
          sub_25A8DF9FC();
          sub_25A9984A8();
          v67 = sub_25A997D88();
          (*(v12 + 8))(&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
          if (v67)
          {
            goto LABEL_168;
          }

          goto LABEL_149;
        }

        if ((v15 & 1) != 0 && sub_25A9984C8() >= 17)
        {
          LOWORD(v104[0]) = 0x8000;
          if (sub_25A9984D8())
          {
            v51 = sub_25A9984C8();
            if (v51 < 16)
            {
LABEL_152:
              sub_25A9984B8();
              goto LABEL_153;
            }
          }

          else
          {
            v63 = sub_25A9984D8();
            v51 = sub_25A9984C8();
            if ((v63 & 1) == 0)
            {
              if (v51 >= 16)
              {
                goto LABEL_153;
              }

              goto LABEL_152;
            }

            if (v51 <= 16)
            {
              v88 = swift_getAssociatedTypeWitness();
              v102 = &v102;
              MEMORY[0x28223BE20](v88);
              swift_getAssociatedConformanceWitness();
              v89 = sub_25A998A78();
              MEMORY[0x28223BE20](v89);
              sub_25A9989C8();
              v90 = sub_25A997D88();
              (*(v12 + 8))(&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
              if (v90)
              {
                goto LABEL_169;
              }

              goto LABEL_152;
            }
          }

          MEMORY[0x28223BE20](v51);
          sub_25A8DF9A8();
          sub_25A9984A8();
          v68 = sub_25A997D88();
          (*(v12 + 8))(&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
          if (v68)
          {
LABEL_169:
            __break(1u);
          }
        }

LABEL_153:
        if ((sub_25A9984D8() & 1) == 0)
        {
          LOWORD(v104[0]) = 0x7FFF;
          v91 = sub_25A9984D8();
          if (v91)
          {
            sub_25A9984B8();
          }

          else
          {
            MEMORY[0x28223BE20](v91);
            sub_25A8DF9A8();
            sub_25A9984A8();
            v92 = sub_25A997D88();
            (*(v12 + 8))(&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
            if (v92)
            {
LABEL_164:
              __break(1u);
              goto LABEL_165;
            }
          }
        }

        v93 = *v14;
        (*(v12 + 8))(v14, MEMORY[0x277D84C58]);
        LOWORD(v104[0]) = v93;
        v10 = mlx_array_new_data(v104, (MEMORY[0x277D84F90] + 32), 0, 6);
        goto LABEL_158;
      }

      if (v15)
      {
        v39 = swift_getAssociatedTypeWitness();
        v102 = &v102;
        MEMORY[0x28223BE20](v39);
        swift_getAssociatedConformanceWitness();
        v40 = sub_25A998A78();
        MEMORY[0x28223BE20](v40);
        sub_25A9989C8();
        v41 = sub_25A997D98();
        v43 = *(v12 + 8);
        v12 += 8;
        v42 = v43;
        v15 = (v43)(&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
        if ((v41 & 1) == 0)
        {
          __break(1u);
          goto LABEL_75;
        }
      }

      else
      {
        v42 = *(v12 + 8);
      }

      v53 = *v14;
      v42(v14, MEMORY[0x277D84C58]);
      *&v104[0] = v53;
      v10 = mlx_array_new_data(v104, (MEMORY[0x277D84F90] + 32), 0, 4);
      goto LABEL_158;
    }

    if (a2 > 9u)
    {
      if (a2 != 10)
      {
        if (a2 == 11)
        {
          if (v15)
          {
            v27 = sub_25A9984B8();
          }

          else
          {
            LOWORD(v16) = *v14;
            v27 = v16;
          }

          (*(v12 + 8))(&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
          if (qword_27FA043D8 == -1)
          {
            goto LABEL_95;
          }

LABEL_160:
          swift_once();
LABEL_95:
          sub_25A998C58();
          v54 = *&v104[0];
          v55 = mlx_array_new_float(v27);
          *&v104[0] = mlx_array_new();
          mlx_astype(v104, v55, 12, *(v54 + 16));
          v56 = *&v104[0];
          type metadata accessor for MLXArray();
          v57 = swift_allocObject();
          *(v57 + 16) = v56;
          mlx_array_free(v55);

LABEL_159:
          __swift_destroy_boxed_opaque_existential_0Tm(v106);
          return v57;
        }

        if (v15)
        {
          v52 = sub_25A9984B8();
        }

        else
        {
          LOWORD(v16) = *v14;
          v52 = v16;
        }

        (*(v12 + 8))(&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
        v36 = sub_25A8BA558(v52);
LABEL_102:
        v57 = v36;
        goto LABEL_159;
      }

LABEL_75:
      if (v15)
      {
        v44 = sub_25A9984B8();
      }

      else
      {
        LOWORD(v16) = *v14;
        v44 = v16;
      }

      (*(v12 + 8))(v14, MEMORY[0x277D84C58]);
      v10 = mlx_array_new_float(v44);
      goto LABEL_158;
    }

    if (a2 != 7)
    {
      if (a2 != 8)
      {
LABEL_80:
        if (v15)
        {
          v50 = sub_25A9984B8();
        }

        else
        {
          v50 = *v14;
        }

        (*(v12 + 8))(v14, MEMORY[0x277D84C58]);
        *v104 = v50;
        v10 = mlx_array_new_data(v104, (MEMORY[0x277D84F90] + 32), 0, 9);
        goto LABEL_158;
      }

      if ((v15 & 1) != 0 && sub_25A9984C8() >= 65)
      {
        *&v104[0] = 0x8000000000000000;
        if (sub_25A9984D8())
        {
          v24 = sub_25A9984C8();
          if (v24 < 64)
          {
LABEL_145:
            sub_25A9984B8();
            goto LABEL_146;
          }

          goto LABEL_122;
        }

        v61 = sub_25A9984D8();
        v24 = sub_25A9984C8();
        if (v61)
        {
          if (v24 <= 64)
          {
            v77 = swift_getAssociatedTypeWitness();
            v102 = &v102;
            MEMORY[0x28223BE20](v77);
            swift_getAssociatedConformanceWitness();
            v78 = sub_25A998A78();
            MEMORY[0x28223BE20](v78);
            sub_25A9989C8();
            v79 = sub_25A997D88();
            (*(v12 + 8))(&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
            if (v79)
            {
LABEL_167:
              __break(1u);
              goto LABEL_168;
            }

            goto LABEL_145;
          }

LABEL_122:
          MEMORY[0x28223BE20](v24);
          sub_25A8DF900();
          sub_25A9984A8();
          v66 = sub_25A997D88();
          (*(v12 + 8))(&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
          if (v66)
          {
            goto LABEL_167;
          }

          goto LABEL_146;
        }

        if (v24 < 64)
        {
          goto LABEL_145;
        }
      }

LABEL_146:
      v80 = *v14;
      (*(v12 + 8))(v14, MEMORY[0x277D84C58]);
      *&v104[0] = v80;
      v10 = mlx_array_new_data(v104, (MEMORY[0x277D84F90] + 32), 0, 8);
      goto LABEL_158;
    }

    if ((v15 & 1) != 0 && sub_25A9984C8() >= 33)
    {
      LODWORD(v104[0]) = 0x80000000;
      if (sub_25A9984D8())
      {
        v38 = sub_25A9984C8();
        if (v38 < 32)
        {
LABEL_142:
          sub_25A9984B8();
          goto LABEL_143;
        }
      }

      else
      {
        v60 = sub_25A9984D8();
        v38 = sub_25A9984C8();
        if ((v60 & 1) == 0)
        {
          if (v38 >= 32)
          {
            goto LABEL_143;
          }

          goto LABEL_142;
        }

        if (v38 <= 32)
        {
          v73 = swift_getAssociatedTypeWitness();
          v102 = &v102;
          MEMORY[0x28223BE20](v73);
          swift_getAssociatedConformanceWitness();
          v74 = sub_25A998A78();
          MEMORY[0x28223BE20](v74);
          sub_25A9989C8();
          v75 = sub_25A997D88();
          (*(v12 + 8))(&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
          if (v75)
          {
LABEL_166:
            __break(1u);
            goto LABEL_167;
          }

          goto LABEL_142;
        }
      }

      MEMORY[0x28223BE20](v38);
      sub_25A8DF954();
      sub_25A9984A8();
      v65 = sub_25A997D88();
      (*(v12 + 8))(&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
      if (v65)
      {
        goto LABEL_166;
      }
    }

LABEL_143:
    v76 = *v14;
    (*(v12 + 8))(v14, MEMORY[0x277D84C58]);
    mlx_array_new_int(v76);
  }

  sub_25A87817C(v104, v106);
  v7 = v107;
  v8 = __swift_project_boxed_opaque_existential_1(v106, v107);
  v9 = v8;
  if (a2 > 6u)
  {
    if (a2 <= 9u)
    {
      if (a2 == 7)
      {
        sub_25A8DFC48();
        sub_25A9987F8();
        if ((BYTE4(v104[0]) & 1) == 0)
        {
          mlx_array_new_int(v104[0]);
        }

        *&v104[0] = 0;
        *(&v104[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v95 = sub_25A998C68();
        MEMORY[0x25F850290](v95);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        if (a2 != 8)
        {
          MEMORY[0x28223BE20](v8);
          (*(v33 + 16))(&v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
          sub_25A8DFBA0();
          sub_25A997C38();
          LOWORD(v103) = v104[0];
          v10 = mlx_array_new_data(&v103, (MEMORY[0x277D84F90] + 32), 0, 9);
          goto LABEL_158;
        }

        sub_25A8DFBF4();
        sub_25A9987F8();
        if ((BYTE8(v104[0]) & 1) == 0)
        {
          v10 = mlx_array_new_data(v104, (MEMORY[0x277D84F90] + 32), 0, 8);
          goto LABEL_158;
        }

        *&v104[0] = 0;
        *(&v104[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v98 = sub_25A998C68();
        MEMORY[0x25F850290](v98);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      goto LABEL_177;
    }

    if (a2 == 10)
    {
      MEMORY[0x28223BE20](v8);
      (*(v31 + 16))(&v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v10 = mlx_array_new_float(*v104);
      goto LABEL_158;
    }

    if (a2 == 11)
    {
      MEMORY[0x28223BE20](v8);
      (*(v26 + 16))(&v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v27 = v103;
      if (qword_27FA043D8 == -1)
      {
        goto LABEL_95;
      }

      goto LABEL_160;
    }

    MEMORY[0x28223BE20](v8);
    (*(v35 + 16))(&v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
    sub_25A8DFAF8();
    sub_25A997C38();
    v36 = sub_25A8BA558(*v104);
    goto LABEL_102;
  }

  if (a2 > 3u)
  {
    if (a2 == 4)
    {
      sub_25A8DFD44();
      sub_25A9987F8();
      if ((BYTE8(v104[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v104, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_158;
      }

      *&v104[0] = 0;
      *(&v104[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v96 = sub_25A998C68();
      MEMORY[0x25F850290](v96);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (a2 == 5)
    {
      sub_25A8DFCF0();
      sub_25A9987F8();
      if ((BYTE1(v104[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v104, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_158;
      }

      *&v104[0] = 0;
      *(&v104[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v99 = sub_25A998C68();
      MEMORY[0x25F850290](v99);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](947154505, 0xE400000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFC9C();
      sub_25A9987F8();
      if ((BYTE2(v104[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v104, (MEMORY[0x277D84F90] + 32), 0, 6);
        goto LABEL_158;
      }

      *&v104[0] = 0;
      *(&v104[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v101 = sub_25A998C68();
      MEMORY[0x25F850290](v101);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else
  {
    if (!a2)
    {
      v29 = sub_25A997D38();
      mlx_array_new_BOOL((v29 & 1) == 0);
    }

    if (a2 == 1)
    {
      sub_25A8DFE40();
      sub_25A9987F8();
      if ((BYTE1(v104[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v104, (MEMORY[0x277D84F90] + 32), 0, 1);
LABEL_158:
        v94 = v10;
        type metadata accessor for MLXArray();
        v57 = swift_allocObject();
        *(v57 + 16) = v94;
        goto LABEL_159;
      }

      *&v104[0] = 0;
      *(&v104[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v97 = sub_25A998C68();
      MEMORY[0x25F850290](v97);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFD98();
      sub_25A9987F8();
      if ((BYTE4(v104[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v104, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_158;
      }

      *&v104[0] = 0;
      *(&v104[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v100 = sub_25A998C68();
      MEMORY[0x25F850290](v100);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

LABEL_177:
  __break(1u);
  return result;
}