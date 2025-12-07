void sub_27598D13C(uint64_t a1, char a2, uint64_t a3, char a4, char *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v41 = type metadata accessor for WrappingHStackLayout.RowItem(0);
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_27598BAE4(a1, a2 & 1, v21, v22, a5);
  if (*(v9 + 16) == 1)
  {
    v24 = sub_2759BA028();
  }

  else
  {
    v24 = *v9;
  }

  sub_27592E0F0(v24);
  v43 = *(v23 + 2);
  if (v43)
  {
    v39 = a3;
    v25 = 0;
    v42 = v23 + 32;
    v26 = a2 & 1;
    v27 = a4 & 1;
    v38 = v23;
    while (v25 < *(v23 + 2))
    {
      v28 = &v42[32 * v25];
      v29 = *v28;
      v30 = *(*v28 + 16);
      if (v30)
      {
        v45 = v25;
        v31 = *(v28 + 1);
        v49 = *(v28 + 2);
        v50 = v31;
        v48 = *(v28 + 3);
        v32 = *(v41 + 20);
        v46 = *(v41 + 24);
        v47 = v32;
        v33 = v40;
        v34 = v29 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
        v44 = v29;

        v35 = a1;
        v36 = *(v33 + 72);
        do
        {
          sub_27598D5D8(v34, v20);
          v54.origin.x = a6;
          v54.origin.y = a7;
          v54.size.width = a8;
          v54.size.height = a9;
          CGRectGetMinX(v54);
          v55.origin.x = a6;
          v55.origin.y = a7;
          v55.size.width = a8;
          v55.size.height = a9;
          CGRectGetWidth(v55);
          v56.origin.x = a6;
          v56.origin.y = a7;
          v56.size.width = a8;
          v56.size.height = a9;
          CGRectGetMinY(v56);
          CGPointMake();
          sub_2759BA0B8();
          v52 = v26;
          v51 = v27;
          sub_2759B8F78();
          sub_27598D63C(v20);
          v34 += v36;
          --v30;
        }

        while (v30);

        a1 = v35;
        v23 = v38;
        v25 = v45;
      }

      if (++v25 == v43)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_15:
  }
}

void (*sub_27598D4AC(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_2759B8D18();
  return sub_27586D848;
}

unint64_t sub_27598D538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12760;
  if (!qword_280A12760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12760);
  }

  return result;
}

uint64_t type metadata accessor for WrappingHStackLayout.RowItem(uint64_t a1)
{
  result = qword_280A12790;
  if (!qword_280A12790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27598D5D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WrappingHStackLayout.RowItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27598D63C(uint64_t a1)
{
  v2 = type metadata accessor for WrappingHStackLayout.RowItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_27598D698(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v5 = v3;
  v45 = a2;
  v46 = type metadata accessor for WrappingHStackLayout.RowItem(0);
  v8 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v48 = *(a1 + 8);
  v12 = *(a1 + 24);
  v13 = v11[2];
  v14 = MEMORY[0x277D84F90];
  v47 = v8;
  if (v13)
  {
    v44 = v5;
    v51 = MEMORY[0x277D84F90];
    swift_bridgeObjectRetain_n();
    sub_275950AB0(0, v13, 0);
    v15 = v51;
    v16 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v17 = *(v8 + 72);
    do
    {
      sub_27598D5D8(v16, v10);
      v50 = 0;
      v49 = 0;
      sub_2759B8F68();
      v4 = v18;
      sub_27598D63C(v10);
      v51 = v15;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_275950AB0((v19 > 1), v20 + 1, 1);
        v15 = v51;
      }

      *(v15 + 16) = v20 + 1;
      *(v15 + 8 * v20 + 32) = v4;
      v16 += v17;
      --v13;
    }

    while (v13);

    v14 = MEMORY[0x277D84F90];
    v21 = *(v15 + 16);
    if (v21)
    {
      goto LABEL_7;
    }
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
    v21 = *(MEMORY[0x277D84F90] + 16);
    if (v21)
    {
LABEL_7:
      v51 = v14;
      sub_275950A90(0, v21, 0);
      v22 = v51;
      v23 = *(v51 + 16);
      v24 = 32;
      v4 = INFINITY;
      do
      {
        v25 = *(v15 + v24);
        v51 = v22;
        v26 = *(v22 + 24);
        if (v23 >= v26 >> 1)
        {
          sub_275950A90((v26 > 1), v23 + 1, 1);
          v22 = v51;
        }

        *(v22 + 16) = v23 + 1;
        *(v22 + v23 + 32) = v25 == INFINITY;
        v24 += 8;
        ++v23;
        --v21;
      }

      while (v21);

      goto LABEL_14;
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_14:
  v27 = a3 - *&v48;
  v28 = *(v22 + 16);
  v29 = v47;
  if (!v28)
  {
    goto LABEL_28;
  }

  v30 = 0;
  v31 = 0;
  v32 = v22 + 32;
  do
  {
    v33 = *(v22 + v30 + 32);
    v34 = __OFADD__(v31, v33);
    v31 += v33;
    if (v34)
    {
      __break(1u);
      goto LABEL_37;
    }

    ++v30;
  }

  while (v28 != v30);
  if (v31 <= 0)
  {
LABEL_28:

    v39 = v11[2];
    v32 = v46;
    if (v39 >= 2)
    {
      v4 = (v39 - 1);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_30;
      }

      goto LABEL_39;
    }

    goto LABEL_35;
  }

  v35 = v11[2];
  v36 = v46;
  if (!v35)
  {
LABEL_34:

LABEL_35:
    v43 = v45;
    *v45 = v11;
    *(v43 + 1) = v48;
    v43[3] = v12;
    return;
  }

  if (v35 <= v28)
  {
    v37 = 0;
    v27 = v27 / v31;
    v4 = 0.0;
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_275893F80(v11);
      }

      if (v37 >= v11[2])
      {
        while (1)
        {
          __break(1u);
LABEL_39:
          v11 = sub_275893F80(v11);
LABEL_30:
          v40 = 1;
          while (1)
          {
            v41 = v11[2];
            if (v40 >= v41)
            {
              break;
            }

            v42 = v11 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v40;
            *(v42 + *(v32 + 20)) = v27 / v4 * v40++ + *(v42 + *(v32 + 20));
            if (v40 >= v41)
            {
              goto LABEL_35;
            }
          }

LABEL_37:
          __break(1u);
        }
      }

      v38 = v11 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v37;
      *(v38 + *(v36 + 20)) = v4 + *(v38 + *(v36 + 20));
      if (*(v32 + v37) == 1)
      {
        v4 = v27 + v4;
        *(v38 + *(v36 + 24)) = v27 + *(v38 + *(v36 + 24));
      }

      ++v37;
    }

    while (v35 != v37);
    goto LABEL_34;
  }

  __break(1u);
}

uint64_t sub_27598DAE8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2759B9028();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27598DB2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12780, &qword_2759CEF38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27598DB94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WrappingHStackLayout.RowItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_27598DC68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27598DCB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_27598DD18(uint64_t *a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 48);
  if (*(v1 + 56) == 1)
  {
    v8 = v7;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_2759BA658();
    v9 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();
    sub_27595CCC4(v7, 0);
    (*(v4 + 8))(v6, v3);
    v7 = v15;
    if (!v15)
    {
LABEL_7:
      v13 = 0;
      goto LABEL_8;
    }
  }

  v10 = *&v7[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_animationImage];
  v11 = v10;

  if (!v10)
  {
    goto LABEL_7;
  }

  v12 = v11;
  sub_2759B9C98();
  v13 = sub_2759B9CA8();

LABEL_8:
  *a1 = v13;
}

uint64_t sub_27598DED0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x646F4D6567616D69;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xEE00737265696669;
  }

  if (*a2)
  {
    v5 = 0x646F4D6567616D69;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xEE00737265696669;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2759BAAC8();
  }

  return v8 & 1;
}

uint64_t sub_27598DF78()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

double sub_27598DFFC(uint64_t a1)
{
  sub_2759BA328();

  return result;
}

uint64_t sub_27598E06C(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

void sub_27598E0EC(char *a2@<X8>)
{
  v3 = sub_2759BAA48();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_27598E14C(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x646F4D6567616D69;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xEE00737265696669;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_27598E18C()
{
  if (*v0)
  {
    return 0x646F4D6567616D69;
  }

  else
  {
    return 25705;
  }
}

void sub_27598E1C8(char *a3@<X8>)
{
  v4 = sub_2759BAA48();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_27598E22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27598EC48(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_27598E268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27598EC48(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_27598E2A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v46 = sub_2759B8C88();
  v41 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v47 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2759B85A8();
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A127C0, &qword_2759CF168);
  v45 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v55[3] = MEMORY[0x277D84F90];
  sub_2759B8C08();
  sub_27598EC9C(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  v48 = sub_2759B9168();
  v55[4] = v48;
  v55[5] = v9;
  v55[6] = swift_getKeyPath();
  v56 = 0;
  v53 = &type metadata for DefaultApplicationRecordProvider;
  v54 = &off_28847F8A0;
  v10 = type metadata accessor for DefaultIconLoader();
  v11 = objc_allocWithZone(v10);
  __swift_mutable_project_boxed_opaque_existential_1(&v52, &type metadata for DefaultApplicationRecordProvider);
  v51[3] = &type metadata for DefaultApplicationRecordProvider;
  v51[4] = &off_28847F8A0;
  sub_27586E058(v51, v11 + OBJC_IVAR___ICSDefaultIconLoader_applicationRecordProvider);
  v50.receiver = v11;
  v50.super_class = v10;
  v12 = objc_msgSendSuper2(&v50, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  v57[3] = v10;
  v57[4] = &off_28847F800;
  v57[0] = v12;
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27598EC48(v13, v14, v15);
  v16 = v49;
  sub_2759BAC18();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v17 = v44;
  LOBYTE(v52) = 0;
  v18 = sub_2759BAA58();
  v20 = v6;
  v40 = v8;
  if (!v19)
  {
    v22 = v5;
    sub_2759B8598();
    v23 = sub_2759B8588();
    v25 = v24;
    (v17[1])(v22, v42);
    v19 = v25;
    v18 = v23;
  }

  v26 = v47;
  v55[0] = v18;
  v55[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FD28, &qword_2759C56F8);
  LOBYTE(v52) = 1;
  sub_2758CD9FC();
  sub_2759BAA68();
  v27 = v51[0];
  v28 = MEMORY[0x277D84F90];
  v29 = v45;
  if (v51[0])
  {
    v30 = *(v51[0] + 16);
    if (v30)
    {
      v42 = v20;
      v44 = a1;
      v58 = MEMORY[0x277D84F90];
      sub_2759509F0(0, v30, 0);
      v28 = v58;
      v31 = v41 + 16;
      v49 = *(v41 + 16);
      v32 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v41 = v27;
      v33 = v27 + v32;
      v48 = *(v31 + 56);
      v34 = (v31 - 8);
      v35 = v46;
      do
      {
        v36 = v31;
        v49(v26, v33, v35);
        sub_2759B8C78();
        v35 = v46;
        (*v34)(v26, v46);
        v58 = v28;
        v38 = *(v28 + 16);
        v37 = *(v28 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_2759509F0((v37 > 1), v38 + 1, 1);
          v35 = v46;
          v28 = v58;
        }

        *(v28 + 16) = v38 + 1;
        sub_275827D1C(&v52, v28 + 40 * v38 + 32);
        v33 += v48;
        --v30;
        v31 = v36;
        v26 = v47;
      }

      while (v30);

      v39 = v43;
      a1 = v44;
      v20 = v42;
      v29 = v45;
      goto LABEL_15;
    }
  }

  v39 = v43;
LABEL_15:
  (*(v29 + 8))(v40, v20);
  v55[2] = v28;
  sub_27598ECE4(v55, v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_27598ED1C(v55);
}

uint64_t sub_27598E91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_27592DF2C(a1, a2, a3);

  return MEMORY[0x282182170](a1, v5, a2);
}

uint64_t sub_27598E970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_27598EAF0(a1, a2, a3);

  return MEMORY[0x282182168](a1, a2, v5);
}

uint64_t sub_27598E9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27598EAF0(a1, a2, a3);

  return MEMORY[0x2821822F0](a1, v4);
}

uint64_t sub_27598EA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_27598EBF4(a1, a2, a3);

  return MEMORY[0x282182160](a1, a2, v5);
}

uint64_t sub_27598EA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27592DF2C(a1, a2, a3);
  sub_27598EAF0(v6, v3, v4);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_27598EAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A127A0;
  if (!qword_280A127A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A127A0);
  }

  return result;
}

unint64_t sub_27598EB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A127A8;
  if (!qword_280A127A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A127A8);
  }

  return result;
}

unint64_t sub_27598EBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A127B0;
  if (!qword_280A127B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A127B0);
  }

  return result;
}

unint64_t sub_27598EBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A127B8;
  if (!qword_280A127B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A127B8);
  }

  return result;
}

unint64_t sub_27598EC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A127C8;
  if (!qword_280A127C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A127C8);
  }

  return result;
}

uint64_t sub_27598EC9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27598ED5C()
{
  result = qword_280A127D0;
  if (!qword_280A127D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A127D8, &qword_2759CF1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A127D0);
  }

  return result;
}

unint64_t sub_27598EDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A127E0;
  if (!qword_280A127E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A127E0);
  }

  return result;
}

unint64_t sub_27598EE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A127E8;
  if (!qword_280A127E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A127E8);
  }

  return result;
}

unint64_t sub_27598EE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A127F0;
  if (!qword_280A127F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A127F0);
  }

  return result;
}

double ManageStorageAppsListViewModel.performAction(_:componentContext:featureContext:)(void *a1, char *a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v72 - v9;
  v11 = *a2;
  LODWORD(v12) = *a3;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v13 = sub_2759B89A8();
  __swift_project_value_buffer(v13, qword_280A238A0);
  v14 = a1;
  v15 = sub_2759B8988();
  v16 = sub_2759BA668();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_275819000, v15, v16, "ManageStorageAppsListViewModel performing action %@", v17, 0xCu);
    sub_27586BF04(v18, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v18, -1, -1);
    MEMORY[0x277C85860](v17, -1, -1);
  }

  v21 = *&v14[OBJC_IVAR____TtC14iCloudSettings6Action_type];
  v20 = *&v14[OBJC_IVAR____TtC14iCloudSettings6Action_type + 8];

  v22._countAndFlagsBits = v21;
  v22._object = v20;
  iCloudSettingsActionType.init(rawValue:)(v22);
  switch(v73)
  {
    case 4u:
      v35 = sub_2759BA518();
      (*(*(v35 - 8) + 56))(v10, 1, 1, v35);
      v36 = swift_allocObject();
      v36[2] = 0;
      v36[3] = 0;
      v36[4] = v4;
      v36[5] = v14;
      v37 = v14;
      v38 = v4;
      sub_27587DA58(0, 0, v10, &unk_2759CF330, v36);
LABEL_46:

      return result;
    case 7u:
      v27 = sub_2759BA258();
      v28 = _ICQActionForString();

      v29 = MEMORY[0x277D85700];
      if (v28 == 115)
      {
        v44 = sub_2759B8988();
        v45 = sub_2759BA668();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_275819000, v44, v45, "attempting to launch LiftUI as drilldown", v46, 2u);
          MEMORY[0x277C85860](v46, -1, -1);
        }

        if (v12 == 1)
        {
          v23 = *&v14[OBJC_IVAR____TtC14iCloudSettings6Action_urlString];
          v24 = *&v14[OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8];
          LOBYTE(v73) = v11;
          v25 = 0;
          goto LABEL_9;
        }

        v53 = sub_2759B8988();
        v54 = sub_2759BA668();
        if (!os_log_type_enabled(v53, v54))
        {

          goto LABEL_45;
        }

        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v73 = v56;
        *v55 = 136315138;
        v57 = 0xE300000000000000;
        v58 = 7104878;
        if (v12 == 6)
        {
          v58 = 0x535F44554F4C4349;
          v57 = 0xEE00454741524F54;
        }

        v59 = 0xEB00000000505041;
        v60 = 0x5F4D55494D455250;
        if (v12 != 4)
        {
          v60 = 0xD000000000000013;
          v59 = 0x80000002759DCD20;
        }

        if (v12 <= 5)
        {
          v58 = v60;
          v57 = v59;
        }

        v61 = 0xEB000000004E414CLL;
        v62 = 0x505F4547414E414DLL;
        v63 = 0xED000059414C4552;
        v64 = 0x5F45544156495250;
        if (v12 != 2)
        {
          v64 = 0x5F594D5F45444948;
          v63 = 0xED00004C49414D45;
        }

        if (v12)
        {
          v62 = v64;
          v61 = v63;
        }

        LODWORD(v72) = v12;
        if (v12 <= 3)
        {
          v65 = v62;
        }

        else
        {
          v65 = v58;
        }

        if (v12 <= 3)
        {
          v66 = v61;
        }

        else
        {
          v66 = v57;
        }

        v12 = sub_2758937B8(v65, v66, &v73);

        *(v55 + 4) = v12;
        _os_log_impl(&dword_275819000, v53, v54, "feature %s does not have special handling, falling back", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x277C85860](v56, -1, -1);
        MEMORY[0x277C85860](v55, -1, -1);

        LOBYTE(v12) = v72;
      }

      else
      {
        if (v28 == 111)
        {
          v30 = sub_2759BA518();
          (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
          sub_2759BA4C8();
          v31 = v14;
          v32 = v4;
          v33 = sub_2759BA4B8();
          v34 = swift_allocObject();
          v34[2] = v33;
          v34[3] = v29;
          v34[4] = v32;
          v34[5] = v31;
          sub_27587D460(0, 0, v10, &unk_2759CF320, v34);

LABEL_45:
          v67 = sub_2759BA518();
          (*(*(v67 - 8) + 56))(v10, 1, 1, v67);
          sub_2759BA4C8();
          v68 = v14;
          v69 = v4;
          v70 = sub_2759BA4B8();
          v71 = swift_allocObject();
          *(v71 + 16) = v70;
          *(v71 + 24) = v29;
          *(v71 + 32) = v69;
          *(v71 + 40) = v68;
          *(v71 + 48) = v11;
          *(v71 + 49) = v12;
          sub_27587D460(0, 0, v10, &unk_2759CF310, v71);
          goto LABEL_46;
        }

        v47 = v14;
        v48 = sub_2759B8988();
        v49 = sub_2759BA668();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          LODWORD(v72) = v12;
          v12 = v51;
          v73 = v51;
          *v50 = 136315138;
          *(v50 + 4) = sub_2758937B8(v21, v20, &v73);
          _os_log_impl(&dword_275819000, v48, v49, "no special handling for action %s", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v12);
          v52 = v12;
          LOBYTE(v12) = v72;
          MEMORY[0x277C85860](v52, -1, -1);
          MEMORY[0x277C85860](v50, -1, -1);
        }
      }

      v29 = MEMORY[0x277D85700];
      goto LABEL_45;
    case 5u:
      v23 = *&v14[OBJC_IVAR____TtC14iCloudSettings6Action_urlString];
      v24 = *&v14[OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8];
      LOBYTE(v73) = v11;
      v25 = 1;
LABEL_9:
      ManageStorageAppsListViewModel.performFamilySharingAction(fallbackURL:refreshDataModels:componentContext:)(*&v23, v25, &v73);
      return result;
  }

  v39 = v14;
  v72 = sub_2759B8988();
  v40 = sub_2759BA648();

  if (os_log_type_enabled(v72, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v73 = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_2758937B8(v21, v20, &v73);
    _os_log_impl(&dword_275819000, v72, v40, "iCloudSettingsActionType %s is not yet supported in ManageStorageAppsListViewModel", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x277C85860](v42, -1, -1);
    MEMORY[0x277C85860](v41, -1, -1);
  }

  else
  {
    v43 = v72;
  }

  return result;
}

void sub_27598F76C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_275996FD8(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  *a2 = *(v3 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__healthEnabled);
}

Swift::Void __swiftcall ManageStorageAppsListViewModel.performFamilySharingAction(fallbackURL:refreshDataModels:componentContext:)(Swift::String_optional fallbackURL, Swift::Bool refreshDataModels, iCloudSettings::ICSAnalyticsComponentID componentContext)
{
  v4 = v3;
  v5 = componentContext;
  v6 = refreshDataModels;
  object = fallbackURL.value._object;
  countAndFlagsBits = fallbackURL.value._countAndFlagsBits;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v65 - v9;
  LODWORD(v11) = *v5;
  if (qword_280A0E338 != -1)
  {
LABEL_33:
    swift_once();
  }

  v12 = sub_2759B89A8();
  v71 = __swift_project_value_buffer(v12, qword_280A238A0);
  v13 = sub_2759B8988();
  v14 = sub_2759BA668();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_275819000, v13, v14, "ManageStorageAppsListViewModel performing family sharing action", v15, 2u);
    MEMORY[0x277C85860](v15, -1, -1);
  }

  if (*(v4 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_isFetchingAppsList) == 1)
  {
    v16 = sub_2759B8988();
    v17 = sub_2759BA668();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_275819000, v16, v17, "Attempting to launch familySharing but apps list is in progress, delaying presentation", v18, 2u);
      MEMORY[0x277C85860](v18, -1, -1);
    }

    v19 = sub_2759BA518();
    (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
    sub_2759BA4C8();
    v20 = v4;
    v21 = sub_2759BA4B8();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v20;
    sub_27587DA58(0, 0, v10, &unk_2759CF358, v22);

    v24 = *&v20[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete];
    v25 = *&v20[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete + 8];
    *&v20[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete] = xmmword_2759C8CA0;
    sub_2758ACC08(v24, v25);
    v26 = &v20[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_urlToShowWhenLoadingComplete];
    *v26 = countAndFlagsBits;
    v26[1] = object;
  }

  else
  {
    v70 = object;
    v66 = v11;
    v69 = v10;
    v10 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
    swift_beginAccess();
    v27 = *&v10[v4];
    v68 = v4;
    v67 = v6;
    if (v27 >> 62)
    {
      v11 = sub_2759BA9E8();
    }

    else
    {
      v11 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v11)
    {
      object = 0;
      v4 = v27 & 0xC000000000000001;
      v6 = v27 & 0xFFFFFFF8;
      do
      {
        if (v4)
        {
          v28 = MEMORY[0x277C846A0](object, v27);
          v10 = (object + 1);
          if (__OFADD__(object, 1))
          {
LABEL_25:
            __break(1u);
            break;
          }
        }

        else
        {
          if (object >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_33;
          }

          v28 = *(v27 + 8 * object + 32);
          v10 = (object + 1);
          if (__OFADD__(object, 1))
          {
            goto LABEL_25;
          }
        }

        v29 = (*&v28[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category);
        v30 = *v29;
        v31 = v29[1];
        if (v31 - 2 >= 3 && v31 != 0)
        {
          v73 = v28;
          if (v31 == 1)
          {

            sub_27585A8EC(v30, 1uLL);
            sub_27585A8EC(0, 1uLL);
            goto LABEL_28;
          }

          v28 = v73;
        }

        sub_27585A8EC(v30, v31);
        sub_27585A8EC(0, 1uLL);
        ++object;
      }

      while (v10 != v11);
    }

    v33 = v70;
    if (v70)
    {

      v34 = sub_2758A2A88(MEMORY[0x277D84F90]);
      v35 = objc_allocWithZone(type metadata accessor for ManageStorageApp());
      v36 = ManageStorageApp.init(_:)(v34);
      v37 = *&v36[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category];
      v38 = *&v36[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category + 8];
      *&v36[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category] = xmmword_2759C8CA0;
      v39 = v36;
      sub_27585A8EC(v37, v38);
      v40 = *&v39[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_action];
      *(v40 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionType) = 115;
      v41 = (v40 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionURL);
      *v41 = countAndFlagsBits;
      v41[1] = v33;

      v79 = &type metadata for DefaultApplicationRecordProvider;
      v80 = &off_28847F8A0;
      v42 = type metadata accessor for DefaultIconLoader();
      v43 = objc_allocWithZone(v42);
      __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
      v76 = &type metadata for DefaultApplicationRecordProvider;
      v77 = &off_28847F8A0;
      sub_27586E058(v75, v43 + OBJC_IVAR___ICSDefaultIconLoader_applicationRecordProvider);
      v74.receiver = v43;
      v74.super_class = v42;
      v44 = objc_msgSendSuper2(&v74, sel_init);
      __swift_destroy_boxed_opaque_existential_1(v75);
      __swift_destroy_boxed_opaque_existential_1(v78);
      v79 = v42;
      v80 = &off_28847F800;
      v78[0] = v44;
      v45 = __swift_mutable_project_boxed_opaque_existential_1(v78, v42);
      MEMORY[0x28223BE20](v45);
      v47 = (&v65 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v48 + 16))(v47);
      v49 = *v47;
      v76 = v42;
      v77 = &off_28847F800;
      v75[0] = v49;
      v50 = objc_allocWithZone(type metadata accessor for ManageStorageAppViewModel(0));
      v51 = __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
      MEMORY[0x28223BE20](v51);
      v53 = (&v65 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v54 + 16))(v53);
      v73 = sub_2758ACAE4(v39, -1, *v53, v50);

      __swift_destroy_boxed_opaque_existential_1(v75);
      __swift_destroy_boxed_opaque_existential_1(v78);
LABEL_28:
      v55 = sub_2759BA518();
      v56 = v69;
      (*(*(v55 - 8) + 56))(v69, 1, 1, v55);
      sub_2759BA4C8();
      v57 = v68;
      v58 = v73;
      v59 = sub_2759BA4B8();
      v60 = swift_allocObject();
      v61 = MEMORY[0x277D85700];
      *(v60 + 16) = v59;
      *(v60 + 24) = v61;
      *(v60 + 32) = v57;
      *(v60 + 40) = v58;
      *(v60 + 48) = v67 & 1;
      *(v60 + 49) = v66;
      sub_27587D460(0, 0, v56, &unk_2759CF348, v60);
    }

    else
    {
      v62 = sub_2759B8988();
      v63 = sub_2759BA648();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_275819000, v62, v63, "Missing a url to launch Family usage page, bailing.", v64, 2u);
        MEMORY[0x277C85860](v64, -1, -1);
      }
    }
  }
}

void ManageStorageAppsListViewModel.loadApp(app:refreshDataModels:from:)(char *a1, int a2, char *a3)
{
  v4 = v3;
  v84 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v83 - v8;
  v10 = *a3;
  sub_275920694(&v88);
  v11 = v88;
  v12 = v89;
  v13 = v90;
  sub_27591E640(v88, v89, v90);
  sub_2759BA4D8();
  v14 = sub_2759BA518();
  v15 = *(v14 - 8);
  v86 = *(v15 + 56);
  v87 = v14;
  v85 = v15 + 56;
  (v86)(v9, 0, 1);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v16;
  *(v17 + 40) = xmmword_2759C3450;
  *(v17 + 56) = 10;
  *(v17 + 57) = v10;
  *(v17 + 58) = 0;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 80) = v11;
  *(v17 + 88) = v12;
  *(v17 + 96) = v13;
  sub_27591E640(v11, v12, v13);
  sub_275931D20(0, 0, v9, &unk_2759C4530, v17);

  sub_27589F7F0(v11, v12, v13);
  sub_27589F7F0(v11, v12, v13);
  sub_27586BF04(v9, &unk_280A0E510, &qword_2759C33C0);
  swift_getKeyPath();
  v88 = a1;
  sub_275996FD8(&qword_280A12800, type metadata accessor for ManageStorageAppViewModel, &protocol conformance descriptor for ManageStorageAppViewModel);
  sub_2759B8638();

  if (a1[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__isLoading] == 1)
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v18 = sub_2759B89A8();
    __swift_project_value_buffer(v18, qword_280A238A0);
    v19 = a1;
    v20 = sub_2759B8988();
    v21 = sub_2759BA668();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_7;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v88 = v23;
    *v22 = 136315138;
    v24 = (*&v19[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label);
    v25 = *v24;
    v26 = v24[1];

    v27 = sub_2758937B8(v25, v26, &v88);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_275819000, v20, v21, "ManageStorageAppsListViewModel.loadApp already loading %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x277C85860](v23, -1, -1);
    v28 = v22;
LABEL_6:
    MEMORY[0x277C85860](v28, -1, -1);
LABEL_7:

    return;
  }

  v29 = v4;
  if (v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_isFetchingAppsList] == 1)
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v30 = sub_2759B89A8();
    __swift_project_value_buffer(v30, qword_280A238A0);
    v31 = a1;
    v32 = sub_2759B8988();
    v33 = sub_2759BA668();

    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_47;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v88 = v35;
    *v34 = 136315138;
    v36 = (*&v31[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category);
    v37 = v36[1];
    if (v37 <= 1)
    {
      if (!v37)
      {
        v39 = 0x70756B636162;
        v38 = 0xE600000000000000;
        goto LABEL_46;
      }

      if (v37 == 1)
      {
        v39 = 0x735F796C696D6166;
        v38 = 0xEE00676E69726168;
        goto LABEL_46;
      }
    }

    else
    {
      switch(v37)
      {
        case 2:
          v38 = 0xE600000000000000;
          v39 = 0x68746C616568;
          goto LABEL_46;
        case 3:
          v38 = 0xE800000000000000;
          v39 = 0x736567617373656DLL;
          goto LABEL_46;
        case 4:
          v38 = 0xE400000000000000;
          v39 = 1769105779;
LABEL_46:
          sub_27585A8D8(*v36, v37);
          v64 = sub_2758937B8(v39, v38, &v88);

          *(v34 + 4) = v64;
          _os_log_impl(&dword_275819000, v32, v33, "ManageStorageAppsListViewModel.loadApp but apps list is in progress, saving for later. app: %s", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v35);
          MEMORY[0x277C85860](v35, -1, -1);
          MEMORY[0x277C85860](v34, -1, -1);
LABEL_47:

          v86(v9, 1, 1, v87);
          sub_2759BA4C8();
          v65 = v31;
          v66 = v29;
          v67 = sub_2759BA4B8();
          v68 = swift_allocObject();
          v69 = MEMORY[0x277D85700];
          *(v68 + 16) = v67;
          *(v68 + 24) = v69;
          *(v68 + 32) = v65;
          *(v68 + 40) = 1;
          *(v68 + 48) = v66;
          sub_27587D460(0, 0, v9, &unk_2759CF3C0, v68);

          v70 = (*&v65[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category);
          v71 = *v70;
          v72 = v70[1];
          v73 = &v66[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete];
          v74 = *&v66[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete];
          v75 = *&v66[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete + 8];
          *v73 = v71;
          v73[1] = v72;
          sub_27585A8D8(v71, v72);
          sub_2758ACC08(v74, v75);
          return;
      }
    }

    v39 = *v36;
    v38 = v36[1];
    goto LABEL_46;
  }

  if (*&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_loadDataTask])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
    sub_2759BA538();
  }

  v40 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
  v41 = *&a1[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel];
  v42 = *(*(v41 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_action) + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionType);
  if (v42 != 115)
  {
    if (v42 != 126)
    {
      return;
    }

    if (*(v41 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category + 8) == 3)
    {
      sub_275992394(a1);
      return;
    }

    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v54 = sub_2759B89A8();
    __swift_project_value_buffer(v54, qword_2815ADE70);
    v55 = a1;
    v20 = sub_2759B8988();
    v56 = sub_2759BA648();

    if (!os_log_type_enabled(v20, v56))
    {
      goto LABEL_7;
    }

    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v88 = v58;
    v59 = *&a1[v40];
    *v57 = 136315138;
    v60 = (v59 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category);
    v61 = v60[1];
    if (v61 <= 1)
    {
      if (!v61)
      {
        v63 = 0x70756B636162;
        v62 = 0xE600000000000000;
        goto LABEL_70;
      }

      if (v61 == 1)
      {
        v63 = 0x735F796C696D6166;
        v62 = 0xEE00676E69726168;
        goto LABEL_70;
      }
    }

    else
    {
      switch(v61)
      {
        case 2:
          v62 = 0xE600000000000000;
          v63 = 0x68746C616568;
          goto LABEL_70;
        case 3:
          v62 = 0xE800000000000000;
          v63 = 0x736567617373656DLL;
          goto LABEL_70;
        case 4:
          v62 = 0xE400000000000000;
          v63 = 1769105779;
LABEL_70:
          sub_27585A8D8(*v60, v61);
          v82 = sub_2758937B8(v63, v62, &v88);

          *(v57 + 4) = v82;
          _os_log_impl(&dword_275819000, v20, v56, "No native handling for app %s", v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v58);
          MEMORY[0x277C85860](v58, -1, -1);
          v28 = v57;
          goto LABEL_6;
      }
    }

    v63 = *v60;
    v62 = v60[1];
    goto LABEL_70;
  }

  v87 = v4;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v43 = sub_2759B89A8();
  __swift_project_value_buffer(v43, qword_2815ADE70);
  v44 = a1;
  v45 = sub_2759B8988();
  v46 = sub_2759BA668();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v88 = v48;
    v49 = *&a1[v40];
    *v47 = 136315138;
    v50 = (v49 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category);
    v51 = v50[1];
    if (v51 <= 1)
    {
      if (!v51)
      {
        v53 = 0x70756B636162;
        v52 = 0xE600000000000000;
        goto LABEL_59;
      }

      if (v51 == 1)
      {
        v53 = 0x735F796C696D6166;
        v52 = 0xEE00676E69726168;
        goto LABEL_59;
      }
    }

    else
    {
      switch(v51)
      {
        case 2:
          v52 = 0xE600000000000000;
          v53 = 0x68746C616568;
          goto LABEL_59;
        case 3:
          v52 = 0xE800000000000000;
          v53 = 0x736567617373656DLL;
          goto LABEL_59;
        case 4:
          v52 = 0xE400000000000000;
          v53 = 1769105779;
LABEL_59:
          sub_27585A8D8(*v50, v51);
          v76 = sub_2758937B8(v53, v52, &v88);

          *(v47 + 4) = v76;
          _os_log_impl(&dword_275819000, v45, v46, "Launching LiftUI action with category: %s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v48);
          MEMORY[0x277C85860](v48, -1, -1);
          MEMORY[0x277C85860](v47, -1, -1);
          goto LABEL_60;
      }
    }

    v53 = *v50;
    v52 = v50[1];
    goto LABEL_59;
  }

LABEL_60:

  v77 = *(*&a1[v40] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category + 8);
  v78 = v87;
  if (v77)
  {
    if (v77 == 2)
    {
      v79 = swift_allocObject();
      *(v79 + 16) = v78;
      v80 = v78;
      sub_275992B60(v44, v84 & 1, &unk_2759CF3B0, v79);

      return;
    }

    v81 = &unk_2759CF398;
  }

  else
  {
    v81 = &unk_2759CF3A0;
  }

  sub_275992B60(v44, v84 & 1, v81, 0);
}

uint64_t sub_275990C9C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v2 = [objc_allocWithZone(MEMORY[0x277CCD128]) initWithHealthStore_];
  v0[13] = v2;

  v3 = swift_allocObject();
  v0[14] = v3;
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  v0[15] = v4;
  *(v4 + 16) = 0;
  v5 = swift_task_alloc();
  v0[16] = v5;
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_275990E1C;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, 0, 0, 0xD000000000000014, 0x80000002759E3E70, sub_275996FAC, v5, v7);
}

uint64_t sub_275990E1C()
{

  return MEMORY[0x2822009F8](sub_275990F34, 0, 0);
}

uint64_t sub_275990F34()
{
  v1 = v0[15];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2;
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v4 = sub_2759B89A8();
    __swift_project_value_buffer(v4, qword_280A238A0);
    v5 = v2;
    v6 = sub_2759B8988();
    v7 = sub_2759BA668();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_275819000, v6, v7, "Error encountered fetching health enabled status: %@", v8, 0xCu);
      sub_27586BF04(v9, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v9, -1, -1);
      MEMORY[0x277C85860](v8, -1, -1);
    }

    else
    {
    }
  }

  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v12 = sub_2759B89A8();
  __swift_project_value_buffer(v12, qword_280A238A0);

  v13 = sub_2759B8988();
  v14 = sub_2759BA668();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[14];
  if (v15)
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    swift_beginAccess();
    *(v17 + 4) = *(v16 + 16);

    _os_log_impl(&dword_275819000, v13, v14, "ManageStorageAppsListViewModel setting healthEnabled: %{BOOL}d", v17, 8u);
    MEMORY[0x277C85860](v17, -1, -1);
  }

  else
  {
  }

  v18 = v0[14];
  v19 = v0[12];
  swift_beginAccess();
  v20 = *(v18 + 16);
  v21 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__healthEnabled;
  v22 = v0[13];
  if (v20 == *(v19 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__healthEnabled))
  {

    *(v19 + v21) = v20;
  }

  else
  {
    v23 = v0[12];
    swift_getKeyPath();
    v24 = swift_task_alloc();
    *(v24 + 16) = v23;
    *(v24 + 24) = v20;
    v0[11] = v23;
    sub_275996FD8(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
    sub_2759B8628();
  }

  v25 = v0[1];

  return v25();
}

void sub_27599131C(uint64_t a1)
{
  swift_getKeyPath();
  sub_275996FD8(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_27591C038(a1);
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v4 = sub_2759B89A8();
    __swift_project_value_buffer(v4, qword_280A238A0);
    v3 = sub_2759B8988();
    v5 = sub_2759BA648();
    if (os_log_type_enabled(v3, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_275819000, v3, v5, "Unable to push without home view model", v6, 2u);
      MEMORY[0x277C85860](v6, -1, -1);
    }
  }
}

void sub_275991494(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_275996FD8(&qword_280A12800, type metadata accessor for ManageStorageAppViewModel, &protocol conformance descriptor for ManageStorageAppViewModel);
  sub_2759B8638();

  *a2 = *(v3 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__isLoading);
}

Swift::Void __swiftcall ManageStorageAppsListViewModel.cancelPendingTasks()()
{
  if (*(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_loadDataTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
    sub_2759BA538();
  }

  v1 = (v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete);
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete);
  v3 = *(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete + 8);
  if (v3 == 5)
  {
    sub_2758ACC18(*(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete), 5uLL);
    sub_2758ACC08(v2, 5uLL);
    sub_2758ACC08(0, 1uLL);
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete);
    v11 = v3;
    v9 = xmmword_2759C8CA0;
    sub_2758ACC18(v2, v3);
    sub_2758ACC18(v2, v3);
    v4 = _s14iCloudSettings24ManageStorageAppCategoryO2eeoiySbAC_ACtFZ_0(&v10, &v9);
    sub_27585A8EC(v9, *(&v9 + 1));
    sub_27585A8EC(v10, v11);
    sub_2758ACC08(v2, v3);
    if (v4)
    {
      swift_getKeyPath();
      v10 = v0;
      sub_275996FD8(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
      sub_2759B8638();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = Strong;
        [Strong didStopLoadingWithView_];
      }
    }
  }

  v7 = *v1;
  v8 = v1[1];
  *v1 = xmmword_2759C39E0;
  sub_2758ACC08(v7, v8);
}

uint64_t sub_275991740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2759917E0, 0, 0);
}

uint64_t sub_2759917E0()
{
  v1 = *(v0 + 32);
  swift_getKeyPath();
  *(v0 + 16) = v1;
  sub_275996FD8(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (!Strong)
  {
    **(v0 + 24) = 1;

    v5 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 64) = sub_2759BA4C8();
  *(v0 + 72) = sub_2759BA4B8();
  v4 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275991954, v4, v3);
}

uint64_t sub_275991954()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];

  sub_2759BA4E8();
  v4 = sub_2759BA518();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = v2;
  v6 = v3;
  v7 = sub_2759BA4B8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  *(v8 + 48) = 0;
  sub_27587D460(0, 0, v1, &unk_2759CF520, v8);

  return MEMORY[0x2822009F8](sub_275991A8C, 0, 0);
}

uint64_t sub_275991A8C()
{
  **(v0 + 24) = *(v0 + 56) == 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_275991AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v7 + 49) = a7;
  *(v7 + 48) = a6;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  sub_2759BA4C8();
  *(v7 + 40) = sub_2759BA4B8();
  v9 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275991B9C, v9, v8);
}

uint64_t sub_275991B9C()
{
  v18 = v0;
  v1 = *(v0 + 24);

  ManageStorageAppsListViewModel.cancelPendingTasks()();
  swift_getKeyPath();
  *(v0 + 16) = v1;
  sub_275996FD8(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 49);
    v5 = *(v0 + 32);
    v16 = *(v0 + 48);
    v17 = v4;
    sub_27590A460(v5, 0, &v16, &v17, 0);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 32);
    v7 = sub_2759B89A8();
    __swift_project_value_buffer(v7, qword_2815ADE70);
    v8 = v6;
    v3 = sub_2759B8988();
    v9 = sub_2759BA668();

    if (os_log_type_enabled(v3, v9))
    {
      v10 = *(v0 + 32);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_2758937B8(*(v10 + OBJC_IVAR____TtC14iCloudSettings6Action_type), *(v10 + OBJC_IVAR____TtC14iCloudSettings6Action_type + 8), &v15);
      _os_log_impl(&dword_275819000, v3, v9, "unable to perform action without homeViewModel: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x277C85860](v12, -1, -1);
      MEMORY[0x277C85860](v11, -1, -1);
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_275991DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_2759BA4C8();
  v5[5] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275991E80, v7, v6);
}

uint64_t sub_275991E80()
{
  v14 = v0;
  v1 = *(v0 + 24);

  swift_getKeyPath();
  *(v0 + 16) = v1;
  sub_275996FD8(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_275912078(*(*(v0 + 32) + OBJC_IVAR____TtC14iCloudSettings6Action_actionParameters), *(v0 + 24));
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 32);
    v5 = sub_2759B89A8();
    __swift_project_value_buffer(v5, qword_2815ADE70);
    v6 = v4;
    v3 = sub_2759B8988();
    v7 = sub_2759BA648();

    if (os_log_type_enabled(v3, v7))
    {
      v8 = *(v0 + 32);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_2758937B8(*(v8 + OBJC_IVAR____TtC14iCloudSettings6Action_type), *(v8 + OBJC_IVAR____TtC14iCloudSettings6Action_type + 8), &v13);
      _os_log_impl(&dword_275819000, v3, v7, "unable to perform action without homeViewModel: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x277C85860](v10, -1, -1);
      MEMORY[0x277C85860](v9, -1, -1);
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2759920B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  sub_2759BA4C8();
  v4[5] = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27599214C, v6, v5);
}

uint64_t sub_27599214C()
{
  v1 = *(v0 + 32);

  swift_getKeyPath();
  *(v0 + 16) = v1;
  sub_275996FD8(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    [Strong didStartLoadingWithView_];
  }

  **(v0 + 24) = v3 == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_275992264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v7 + 41) = a7;
  *(v7 + 40) = a6;
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  sub_2759BA4C8();
  *(v7 + 32) = sub_2759BA4B8();
  v9 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275992304, v9, v8);
}

uint64_t sub_275992304()
{
  v7 = v0;
  v1 = *(v0 + 24);
  v2 = *(v0 + 41);
  v3 = *(v0 + 40);

  v6 = v2;
  ManageStorageAppsListViewModel.loadApp(app:refreshDataModels:from:)(v1, v3, &v6);
  v4 = *(v0 + 8);

  return v4();
}

void sub_275992394(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v20 = [objc_opt_self() messagesSettingsSpecifier];
  [v20 detailControllerClass];
  v5 = CreateDetailControllerInstanceWithClass();
  if (v5)
  {
    v6 = v5;
    [v5 setSpecifier_];
    v7 = sub_2759BA518();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2759BA4C8();

    v9 = v6;
    v10 = a1;
    v11 = sub_2759BA4B8();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v8;
    v12[5] = v9;
    v12[6] = v10;

    sub_27587D460(0, 0, v4, &unk_2759CF440, v12);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v14 = sub_2759B89A8();
    __swift_project_value_buffer(v14, qword_2815ADE70);
    v15 = sub_2759B8988();
    v16 = sub_2759BA668();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_275819000, v15, v16, "Unable to push messages drilldown, no detail controller", v17, 2u);
      MEMORY[0x277C85860](v17, -1, -1);
    }

    v18 = v20;
  }
}

uint64_t sub_275992650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v6[15] = swift_task_alloc();
  sub_2759BA4C8();
  v6[16] = sub_2759BA4B8();
  v8 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275992724, v8, v7);
}

uint64_t sub_275992724()
{
  v27 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, swift_getKeyPath(), *(v0 + 88) = v2, sub_275996FD8(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel), sub_2759B8638(), , v3 = swift_unknownObjectWeakLoadStrong(), v2, v3))
  {
    sub_27590C4A0(*(v0 + 104), 1, 0, 0xD000000000000021, 0x80000002759E3EC0);
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = *(v4 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityBarButtonItem);
      if (v6)
      {
        [v6 setHidden_];
      }

      v7 = *&v5[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityIndicator];
      if (v7)
      {
        v8 = v7;
        [v8 stopAnimating];
      }
    }

    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = *(v0 + 120);
      v11 = v9;
      v12 = *(v9 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_analyticsController);

      sub_275920694(v25);
      v13 = v25[0];
      v14 = v25[1];
      v15 = v26;
      sub_2759BA4D8();
      v16 = sub_2759BA518();
      (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      *(v18 + 32) = v17;
      *(v18 + 40) = v13;
      *(v18 + 48) = v14;
      *(v18 + 56) = v15;
      *(v18 + 57) = 282;
      *(v18 + 64) = 0;
      *(v18 + 72) = 1;
      *(v18 + 80) = 0;
      *(v18 + 88) = 0;
      *(v18 + 96) = -1;
      sub_27591E640(v13, v14, v15);
      sub_275931D20(0, 0, v10, &unk_2759C5998, v18);

      sub_27589F7F0(v13, v14, v15);
      sub_27586BF04(v10, &unk_280A0E510, &qword_2759C33C0);
    }

    else
    {
    }
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v19 = sub_2759B89A8();
    __swift_project_value_buffer(v19, qword_280A238A0);
    v20 = sub_2759B8988();
    v21 = sub_2759BA668();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_275819000, v20, v21, "Unable to push messages drilldown, no homeViewModel", v22, 2u);
      MEMORY[0x277C85860](v22, -1, -1);
    }
  }

  v23 = *(v0 + 8);

  return v23();
}

double sub_275992B60(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v46 = a3;
  v45 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - v9;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v11 = sub_2759B89A8();
  __swift_project_value_buffer(v11, qword_280A238A0);
  v12 = a1;
  v13 = sub_2759B8988();
  v14 = sub_2759BA668();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v44 = a4;
    v17 = v16;
    v47 = v16;
    *v15 = 136315394;
    v18 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
    v19 = (*&v12[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label);
    v20 = *v19;
    v21 = v19[1];

    v22 = sub_2758937B8(v20, v21, &v47);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2080;
    v23 = (*(*&v12[v18] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_action) + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionURL);
    v24 = *v23;
    v25 = v23[1];

    v26 = sub_2758937B8(v24, v25, &v47);

    *(v15 + 14) = v26;
    _os_log_impl(&dword_275819000, v13, v14, "Loading LiftUI Drilldown for app %s %s", v15, 0x16u);
    swift_arrayDestroy();
    v27 = v17;
    a4 = v44;
    MEMORY[0x277C85860](v27, -1, -1);
    MEMORY[0x277C85860](v15, -1, -1);
  }

  v28 = *&v5[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_liftUIDataSource + 8];
  ObjectType = swift_getObjectType();
  v30 = *&v5[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_account];
  swift_unknownObjectRetain();
  v31 = v30;
  v32 = sub_275858C5C(v12, v31, ObjectType, v28);

  swift_unknownObjectRelease();
  if (v32)
  {
    v34 = sub_2759BA518();
    v35 = *(*(v34 - 8) + 56);
    v35(v10, 1, 1, v34);
    sub_2759BA4C8();
    v36 = v12;
    v37 = v5;
    v38 = sub_2759BA4B8();
    v39 = swift_allocObject();
    v40 = MEMORY[0x277D85700];
    *(v39 + 16) = v38;
    *(v39 + 24) = v40;
    *(v39 + 32) = v36;
    *(v39 + 40) = 1;
    *(v39 + 48) = v37;
    sub_27587D460(0, 0, v10, &unk_2759CF478, v39);

    *&v37[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_loadDataTask] = v32;

    __swift_project_boxed_opaque_existential_1(&v37[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController], *&v37[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController + 24]);
    sub_27598AC44();
    sub_2759BA4E8();
    v35(v10, 0, 1, v34);
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    *(v41 + 32) = v37;
    *(v41 + 40) = v36;
    *(v41 + 48) = v45 & 1;
    *(v41 + 56) = v46;
    *(v41 + 64) = a4;
    v42 = v36;
    v43 = v37;

    sub_27587D460(0, 0, v10, &unk_2759CF488, v41);
  }

  return result;
}

uint64_t sub_275992FC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_275993054;

  return ManageStorageAppsListViewModel.fetchHealthEnabled()();
}

uint64_t sub_275993054()
{
  v4 = *v0;

  v1 = *(v4 + 8);
  v2 = MEMORY[0x277D84F98];

  return v1(v2);
}

uint64_t sub_275993150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_275993174, 0, 0);
}

uint64_t sub_275993174()
{
  v1 = v0[4];
  v2 = v0[5];
  type metadata accessor for ManageStorageBackupsDataModel();
  swift_allocObject();
  sub_2758755BC(v1, v2);
  v0[6] = sub_2758BF818(v1, v2);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_275993248;

  return sub_2758C2074();
}

uint64_t sub_275993248(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_275993348, 0, 0);
}

uint64_t sub_275993348()
{
  v1 = v0[8];
  v2 = v0[3];
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[2] = v2;
  sub_275996FD8(&qword_280A12800, type metadata accessor for ManageStorageAppViewModel, &protocol conformance descriptor for ManageStorageAppViewModel);
  sub_2759B8628();

  v4 = sub_2758C1BAC();

  v5 = v0[1];

  return v5(v4);
}

double sub_275993494(uint64_t a1, uint64_t a2)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = sub_2759B8528();
  v19[0] = 0;
  v4 = [v2 JSONObjectWithData:v3 options:0 error:v19];

  if (v4)
  {
    v5 = v19[0];
    sub_2759BA818();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
    if (swift_dynamicCast())
    {
      v6 = v18;
      if (!*(v18 + 16))
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = v19[0];
    v8 = sub_2759B8448();

    swift_willThrow();
  }

  v6 = sub_2758A2A88(MEMORY[0x277D84F90]);
  if (!*(v6 + 16))
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_7:
  v9 = sub_27586F8A0(1635017060, 0xE400000000000000);
  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_275864C94(*(v6 + 56) + 32 * v9, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if (swift_dynamicCast())
  {
    v11 = v18;
    if (!*(v18 + 16))
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

LABEL_12:
  v11 = sub_2758A2A88(MEMORY[0x277D84F90]);
  if (!*(v11 + 16))
  {
LABEL_17:

    goto LABEL_18;
  }

LABEL_13:
  v12 = sub_27586F8A0(0x726564616568, 0xE600000000000000);
  if ((v13 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_275864C94(*(v11 + 56) + 32 * v12, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if (swift_dynamicCast())
  {
    v14 = v18;
    if (!*(v18 + 16))
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_18:
  v14 = sub_2758A2A88(MEMORY[0x277D84F90]);
  if (!*(v14 + 16))
  {
LABEL_21:

    goto LABEL_22;
  }

LABEL_19:
  v15 = sub_27586F8A0(0x4C52556567616D69, 0xE800000000000000);
  if ((v16 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_275864C94(*(v14 + 56) + 32 * v15, v19);

  swift_dynamicCast();
LABEL_22:
  sub_2759B84F8();

  return result;
}

uint64_t sub_2759937A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a6;
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_27585A7E4;

  return sub_275993868(a5, v11, a7, a8);
}

uint64_t sub_275993868(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = v4;
  *(v5 + 224) = a2;
  *(v5 + 32) = a1;
  *(v5 + 40) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  *(v5 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  *(v5 + 72) = swift_task_alloc();
  v6 = sub_2759B8AF8();
  *(v5 + 80) = v6;
  *(v5 + 88) = *(v6 - 8);
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2759939AC, 0, 0);
}

uint64_t sub_2759939AC()
{
  v1 = *(v0[7] + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_loadDataTask);
  v0[14] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[15] = v2;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
    *v2 = v0;
    v2[1] = sub_275993AF8;
    v4 = MEMORY[0x277CC9318];
    v5 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 2, v1, v4, v3, v5);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_275993AF8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_275994C68;
  }

  else
  {
    v2 = sub_275993C2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_275993C2C(uint64_t a1)
{
  v2 = v1[16];
  v4 = v1[2];
  v3 = v1[3];
  v1[17] = v4;
  v1[18] = v3;
  sub_2759BA558();
  v1[19] = v2;
  if (v2)
  {
    sub_27585A900(v4, v3);
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v5 = sub_2759B89A8();
    __swift_project_value_buffer(v5, qword_280A238A0);
    v6 = v2;
    v7 = sub_2759B8988();
    v8 = sub_2759BA648();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_275819000, v7, v8, "Error while loading LiftUI drilldown, aborting: %@", v9, 0xCu);
      sub_27586BF04(v10, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v10, -1, -1);
      MEMORY[0x277C85860](v9, -1, -1);
    }

    v14 = v1[7];
    v13 = v1[8];
    v15 = v1[4];

    v16 = sub_2759BA518();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    sub_2759BA4C8();
    v17 = v15;
    v18 = v14;
    v19 = sub_2759BA4B8();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    *(v20 + 16) = v19;
    *(v20 + 24) = v21;
    *(v20 + 32) = v17;
    *(v20 + 40) = 0;
    *(v20 + 48) = v18;
    sub_27587D460(0, 0, v13, &unk_2759CF4A0, v20);

    __swift_project_boxed_opaque_existential_1(&v18[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController], *&v18[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController + 24]);
    sub_27598AEBC();

    v22 = v1[1];

    return v22();
  }

  else
  {
    v26 = (v1[5] + *v1[5]);
    v24 = swift_task_alloc();
    v1[20] = v24;
    *v24 = v1;
    v24[1] = sub_275993FC0;
    v25 = v1[4];

    return v26(v25, v4, v3);
  }
}

uint64_t sub_275993FC0(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_2759940C0, 0, 0);
}

uint64_t sub_2759940C0()
{
  v1 = *(v0 + 168);
  v38 = *(v0 + 144);
  v39 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 32);
  v8 = swift_allocObject();
  v9 = (*(*(v7 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_action) + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionURL);
  v10 = v9[1];
  *(v8 + 16) = *v9;
  *(v8 + 24) = v10;
  *v4 = v8;
  (*(v5 + 104))(v4, *MEMORY[0x277D232A0], v6);
  (*(v5 + 32))(v3, v4, v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2759068D8(v3, 0x725564616F6C6572, 0xE90000000000006CLL, isUniquelyReferenced_nonNull_native);
  *(v0 + 176) = v1;
  sub_275993494(v2, v38);
  sub_2759BA558();
  if (v39)
  {
    v12 = *(v0 + 136);
    v13 = *(v0 + 144);
    sub_27586BF04(*(v0 + 72), &unk_280A0EB10, &qword_2759C0740);
    sub_27585A900(v12, v13);

    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v14 = sub_2759B89A8();
    __swift_project_value_buffer(v14, qword_280A238A0);
    v15 = v39;
    v16 = sub_2759B8988();
    v17 = sub_2759BA648();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v39;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_275819000, v16, v17, "Error while loading LiftUI drilldown, aborting: %@", v18, 0xCu);
      sub_27586BF04(v19, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v19, -1, -1);
      MEMORY[0x277C85860](v18, -1, -1);
    }

    v23 = *(v0 + 56);
    v22 = *(v0 + 64);
    v24 = *(v0 + 32);

    v25 = sub_2759BA518();
    (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
    sub_2759BA4C8();
    v26 = v24;
    v27 = v23;
    v28 = sub_2759BA4B8();
    v29 = swift_allocObject();
    v30 = MEMORY[0x277D85700];
    *(v29 + 16) = v28;
    *(v29 + 24) = v30;
    *(v29 + 32) = v26;
    *(v29 + 40) = 0;
    *(v29 + 48) = v27;
    sub_27587D460(0, 0, v22, &unk_2759CF4A0, v29);

    __swift_project_boxed_opaque_existential_1(&v27[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController], *&v27[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController + 24]);
    sub_27598AEBC();

    v31 = *(v0 + 8);

    return v31();
  }

  else if (*(v0 + 224) == 1)
  {
    v33 = swift_task_alloc();
    *(v0 + 184) = v33;
    *v33 = v0;
    v33[1] = sub_2759945D0;
    v34 = *(v0 + 32);

    return sub_2759951BC(v34);
  }

  else
  {
    v35 = *(v0 + 32);
    *(v0 + 200) = 0;
    *(v0 + 208) = v35;
    v35;
    v36 = swift_task_alloc();
    *(v0 + 216) = v36;
    *v36 = v0;
    v36[1] = sub_275994764;
    v37 = *(v0 + 72);

    return sub_275921A1C(v37);
  }
}

uint64_t sub_2759945D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_275994F00, 0, 0);
  }

  else
  {
    v4[25] = 0;
    v4[26] = a1;
    v6 = swift_task_alloc();
    v4[27] = v6;
    *v6 = v5;
    v6[1] = sub_275994764;
    v7 = v4[9];

    return sub_275921A1C(v7);
  }
}

uint64_t sub_275994764()
{

  return MEMORY[0x2822009F8](sub_275994860, 0, 0);
}

uint64_t sub_275994860(uint64_t a1)
{
  v2 = v1[25];
  sub_2759BA558();
  v3 = v1[26];
  v4 = v1[22];
  v6 = v1[17];
  v5 = v1[18];
  v7 = v1[9];
  if (v2)
  {
    sub_27586BF04(v1[9], &unk_280A0EB10, &qword_2759C0740);
    sub_27585A900(v6, v5);

    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_280A238A0);
    v9 = v2;
    v10 = sub_2759B8988();
    v11 = sub_2759BA648();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_275819000, v10, v11, "Error while loading LiftUI drilldown, aborting: %@", v12, 0xCu);
      sub_27586BF04(v13, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v13, -1, -1);
      MEMORY[0x277C85860](v12, -1, -1);
    }

    v17 = v1[7];
    v16 = v1[8];
    v18 = v1[4];

    v19 = sub_2759BA518();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
    sub_2759BA4C8();
    v20 = v18;
    v21 = v17;
    v22 = sub_2759BA4B8();
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    *(v23 + 16) = v22;
    *(v23 + 24) = v24;
    *(v23 + 32) = v20;
    *(v23 + 40) = 0;
    *(v23 + 48) = v21;
    sub_27587D460(0, 0, v16, &unk_2759CF4A0, v23);

    __swift_project_boxed_opaque_existential_1(&v21[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController], *&v21[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController + 24]);
    sub_27598AEBC();
  }

  else
  {
    v26 = v1[7];
    v25 = v1[8];
    v27 = sub_2759BA518();
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
    sub_2759BA4C8();
    v28 = v26;
    sub_2758755BC(v6, v5);
    v29 = v3;
    v30 = sub_2759BA4B8();
    v31 = swift_allocObject();
    v32 = MEMORY[0x277D85700];
    v31[2] = v30;
    v31[3] = v32;
    v31[4] = v28;
    v31[5] = v6;
    v31[6] = v5;
    v31[7] = v29;
    v31[8] = v4;
    sub_27587D460(0, 0, v25, &unk_2759CF4B0, v31);

    __swift_project_boxed_opaque_existential_1(&v28[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController], *&v28[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController + 24]);
    sub_27598AEBC();

    sub_27585A900(v6, v5);
    sub_27586BF04(v7, &unk_280A0EB10, &qword_2759C0740);
  }

  v33 = v1[1];

  return v33();
}

uint64_t sub_275994C68()
{
  v1 = v0[16];
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_280A238A0);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA648();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_275819000, v4, v5, "Error while loading LiftUI drilldown, aborting: %@", v6, 0xCu);
    sub_27586BF04(v7, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v7, -1, -1);
    MEMORY[0x277C85860](v6, -1, -1);
  }

  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[4];

  v13 = sub_2759BA518();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_2759BA4C8();
  v14 = v12;
  v15 = v11;
  v16 = sub_2759BA4B8();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = v14;
  *(v17 + 40) = 0;
  *(v17 + 48) = v15;
  sub_27587D460(0, 0, v10, &unk_2759CF4A0, v17);

  __swift_project_boxed_opaque_existential_1(&v15[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController], *&v15[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController + 24]);
  sub_27598AEBC();

  v19 = v0[1];

  return v19();
}

uint64_t sub_275994F00()
{
  v1 = v0[9];
  sub_27585A900(v0[17], v0[18]);
  sub_27586BF04(v1, &unk_280A0EB10, &qword_2759C0740);
  v2 = v0[24];
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v3 = sub_2759B89A8();
  __swift_project_value_buffer(v3, qword_280A238A0);
  v4 = v2;
  v5 = sub_2759B8988();
  v6 = sub_2759BA648();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_275819000, v5, v6, "Error while loading LiftUI drilldown, aborting: %@", v7, 0xCu);
    sub_27586BF04(v8, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  v12 = v0[7];
  v11 = v0[8];
  v13 = v0[4];

  v14 = sub_2759BA518();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  sub_2759BA4C8();
  v15 = v13;
  v16 = v12;
  v17 = sub_2759BA4B8();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  *(v18 + 32) = v15;
  *(v18 + 40) = 0;
  *(v18 + 48) = v16;
  sub_27587D460(0, 0, v11, &unk_2759CF4A0, v18);

  __swift_project_boxed_opaque_existential_1(&v16[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController], *&v16[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController + 24]);
  sub_27598AEBC();

  v20 = v0[1];

  return v20();
}

uint64_t sub_2759951BC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = swift_task_alloc();
  v2[7] = v3;
  *v3 = v2;
  v3[1] = sub_275995258;

  return ManageStorageAppsListViewModel.fetchAppsList(fetchHomeViewModel:loadImages:)(1, 1);
}

uint64_t sub_275995258()
{

  return MEMORY[0x2822009F8](sub_275995354, 0, 0);
}

uint64_t sub_275995354()
{
  v1 = v0[5];
  v2 = &OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
  v37 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
  v3 = *(*(v1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds);
  if (v3[2])
  {
    v5 = v3[4];
    v4 = v3[5];
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = v0[6];
  v7 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 >> 62)
  {
LABEL_61:
    v9 = sub_2759BA9E8();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v9)
  {
LABEL_53:

    sub_275997388(v30, v31, v32);
    swift_allocError();
    swift_willThrow();
    v33 = v0[1];

    return v33();
  }

  v10 = 0;
  v11 = v8 & 0xC000000000000001;
  v35 = v9;
  v36 = v1;
  while (v11)
  {
    v12 = MEMORY[0x277C846A0](v10, v8);
    v13 = __OFADD__(v10++, 1);
    if (v13)
    {
      goto LABEL_48;
    }

LABEL_12:
    v14 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
    v38 = v12;
    v15 = (*(v12 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(v1 + v37) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category;
    v20 = *v18;
    v19 = *(v18 + 8);
    if (v17 <= 1)
    {
      if (v17)
      {
        if (v17 != 1)
        {
          goto LABEL_38;
        }

        if (v19 == 1)
        {

          sub_27585A8EC(v16, 1uLL);
          sub_27585A8EC(v20, 1uLL);
          goto LABEL_59;
        }
      }

      else if (!v19)
      {

        sub_27585A8EC(v16, 0);
        sub_27585A8EC(v20, 0);
        goto LABEL_59;
      }

LABEL_27:
      v21 = *v18;
      v22 = *(v18 + 8);
LABEL_28:
      sub_27585A8D8(v21, v22);
      sub_27585A8EC(v16, v17);
      sub_27585A8EC(v20, v19);
      goto LABEL_29;
    }

    switch(v17)
    {
      case 2:
        if (v19 == 2)
        {

          sub_27585A8EC(v16, 2uLL);
          sub_27585A8EC(v20, 2uLL);
          goto LABEL_59;
        }

        goto LABEL_27;
      case 3:
        if (v19 == 3)
        {

          sub_27585A8EC(v16, 3uLL);
          sub_27585A8EC(v20, 3uLL);
          goto LABEL_59;
        }

        goto LABEL_27;
      case 4:
        if (v19 == 4)
        {

          sub_27585A8EC(v16, 4uLL);
          sub_27585A8EC(v20, 4uLL);
          goto LABEL_59;
        }

        goto LABEL_27;
    }

LABEL_38:
    if (v19 < 5)
    {
      sub_27585A8D8(*v18, *(v18 + 8));
      v21 = v16;
      v22 = v17;
      goto LABEL_28;
    }

    if (v16 == v20 && v17 == v19)
    {
      sub_27585A8D8(v16, v17);
      sub_27585A8D8(v16, v17);
      sub_27585A8EC(v16, v17);
      sub_27585A8EC(v16, v17);
LABEL_58:

LABEL_59:
      v2 = v38;
      goto LABEL_50;
    }

    v34 = sub_2759BAAC8();
    sub_27585A8D8(v20, v19);
    sub_27585A8D8(v16, v17);
    sub_27585A8EC(v16, v17);
    sub_27585A8EC(v20, v19);
    if (v34)
    {
      goto LABEL_58;
    }

LABEL_29:
    v2 = v38;
    if (v4)
    {
      v23 = *(*(v38 + v14) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds);
      v24 = (v23 + 40);
      v25 = *(v23 + 16) + 1;
      while (--v25)
      {
        if (v5 != *(v24 - 1) || v4 != *v24)
        {
          v24 += 2;
          if ((sub_2759BAAC8() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_49;
      }
    }

    v1 = v36;
    v2 = &OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
    v11 = v8 & 0xC000000000000001;
    if (v10 == v35)
    {
      goto LABEL_53;
    }
  }

  if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_61;
  }

  v12 = *(v8 + 32 + 8 * v10);
  v13 = __OFADD__(v10++, 1);
  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_48:
  __break(1u);
LABEL_49:

LABEL_50:
  v28 = v0[1];

  return v28(v2);
}

uint64_t sub_275995830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[42] = a7;
  v8[43] = a8;
  v8[40] = a5;
  v8[41] = a6;
  v8[39] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v8[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10DE0, &unk_2759CF4C0);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = type metadata accessor for ManageStorageLiftUIDrilldownView(0);
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v8[50] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A12840, &qword_2759C8E78);
  v8[51] = swift_task_alloc();
  v8[52] = sub_2759BA4C8();
  v8[53] = sub_2759BA4B8();
  v10 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2759959C8, v10, v9);
}

uint64_t sub_2759959C8()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v3 = *(v0 + 344);
  v42 = *(v0 + 336);
  v4 = *(v0 + 320);
  v41 = *(v0 + 328);
  v5 = *(v0 + 312);

  swift_getKeyPath();
  *(v0 + 248) = v5;
  sub_275996FD8(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10040, &qword_2759C2630);
  v7 = sub_2758DC754();
  *(v0 + 16) = v3;
  *(v0 + 48) = v7;
  sub_2759B8C08();
  swift_allocObject();

  v8 = sub_2759B8BF8();
  *(v0 + 256) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E7F0, &unk_2759C1230);
  sub_2759B9D58();
  v39 = *(v0 + 120);
  v9 = *(v1 + 36);
  *(v2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  swift_storeEnumTagMultiPayload();
  *(v0 + 136) = v4;
  *(v0 + 144) = v41;
  sub_2758755BC(v4, v41);
  sub_2759B9D58();
  v10 = *(v0 + 112);
  *v2 = *(v0 + 96);
  *(v2 + 16) = v10;
  *(v0 + 264) = v42;
  type metadata accessor for ManageStorageAppViewModel(0);
  v11 = v42;
  sub_2759B9D58();
  v12 = *(v0 + 160);
  *(v2 + 24) = *(v0 + 152);
  *(v2 + 32) = v12;
  *(v0 + 272) = Strong;
  v40 = Strong;
  sub_2759B9D58();

  *(v2 + 40) = *(v0 + 168);
  *(v0 + 280) = v5;
  type metadata accessor for ManageStorageAppsListViewModel(0);
  v13 = v5;
  sub_2759B9D58();
  v14 = *(v0 + 192);
  *(v2 + 56) = *(v0 + 184);
  *(v2 + 64) = v14;
  *(v0 + 288) = v8;

  sub_2759B9D58();
  v16 = *(v0 + 200);
  v15 = *(v0 + 208);
  *(v2 + 72) = v16;
  *(v2 + 80) = v15;
  *(v0 + 216) = v16;
  *(v0 + 224) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE98, &unk_2759C59F0);
  sub_2759B9D68();
  sub_2759973DC(v0 + 16, v0 + 56);
  v17 = *(v0 + 368);
  if (*(v0 + 80))
  {
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));

    sub_2759B8B08();
    v18 = sub_2759B8AF8();
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  else
  {

    sub_27586BF04(v0 + 56, &qword_280A0FEA0, &qword_2759CF500);
    v18 = sub_2759B8AF8();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  }

  v19 = *(v0 + 408);
  v33 = *(v0 + 384);
  v34 = *(v0 + 392);
  v20 = *(v0 + 360);
  v38 = *(v0 + 352);
  v36 = *(v0 + 336);
  v37 = *(v0 + 400);
  v35 = *(v0 + 312);
  sub_2759B8C28();

  *(v0 + 232) = v16;
  *(v0 + 240) = v15;
  sub_2759B9D68();

  sub_2758F649C();
  sub_2759BA208();

  sub_2759B8AF8();
  (*(*(v18 - 8) + 56))(v20, 0, 1, v18);
  sub_2759B8C28();

  sub_27586BF04(v0 + 16, &qword_280A0FEA0, &qword_2759CF500);
  sub_2758D5EC4(v33, v34);
  v21 = swift_allocObject();
  *(v21 + 16) = v35;
  *(v21 + 24) = v36;
  sub_2758D5EC4(v34, v19);
  v22 = (v19 + *(v37 + 36));
  *v22 = sub_27599744C;
  v22[1] = v21;
  v22[2] = 0;
  v22[3] = 0;
  v23 = v36;
  v24 = v35;
  sub_27599131C(v19);
  sub_27586BF04(v19, &unk_280A12840, &qword_2759C8E78);
  v25 = sub_2759BA518();
  (*(*(v25 - 8) + 56))(v38, 1, 1, v25);
  v26 = v23;
  v27 = v24;
  v28 = sub_2759BA4B8();
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D85700];
  *(v29 + 16) = v28;
  *(v29 + 24) = v30;
  *(v29 + 32) = v26;
  *(v29 + 40) = 0;
  *(v29 + 48) = v27;
  sub_27587D460(0, 0, v38, &unk_2759CF508, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_275996070()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11[-1] - v1;
  sub_275920694(v11);
  v3 = v11[0];
  v4 = v11[1];
  v5 = v12;
  sub_2759BA4D8();
  v6 = sub_2759BA518();
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v7;
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;
  *(v8 + 57) = 282;
  *(v8 + 64) = 0;
  *(v8 + 72) = 1;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 96) = -1;
  sub_27591E640(v3, v4, v5);
  sub_275931D20(0, 0, v2, &unk_2759CF510, v8);

  sub_27589F7F0(v3, v4, v5);
  return sub_27586BF04(v2, &unk_280A0E510, &qword_2759C33C0);
}

uint64_t sub_275996240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  sub_2759BA4C8();
  *(v6 + 40) = sub_2759BA4B8();
  v8 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2759962DC, v8, v7);
}

uint64_t sub_2759962DC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);

  v3 = *(v0 + 48);
  if (v1 == *(v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__isLoading))
  {
    *(v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__isLoading) = v3;
    if (*(v0 + 48))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = *(v0 + 24);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v0 + 16) = v4;
    sub_275996FD8(&qword_280A12800, type metadata accessor for ManageStorageAppViewModel, &protocol conformance descriptor for ManageStorageAppViewModel);
    sub_2759B8628();

    if (*(v0 + 48))
    {
      goto LABEL_9;
    }
  }

  v6 = *(v0 + 32);
  v7 = *(v6 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityBarButtonItem);
  if (v7)
  {
    [v7 setHidden_];
    v6 = *(v0 + 32);
  }

  v8 = *(v6 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityIndicator);
  if (v8)
  {
    [v8 stopAnimating];
  }

LABEL_9:
  v9 = *(*(v0 + 24) + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category;
  v10 = *v9;
  v11 = *(v9 + 8);
  if (v11 != 1)
  {
    sub_27585A8D8(*v9, *(v9 + 8));
    sub_27585A8EC(v10, v11);
    sub_27585A8EC(0, 1uLL);
    goto LABEL_17;
  }

  v12 = *(v0 + 48);
  sub_27585A8EC(*v9, 1uLL);
  sub_27585A8EC(0, 1uLL);
  swift_getKeyPath();
  *(v0 + 16) = *(v0 + 32);
  sub_275996FD8(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (v12 == 1)
  {
    if (!Strong)
    {
      goto LABEL_17;
    }

    v14 = sel_didStartLoadingWithView_;
  }

  else
  {
    if (!Strong)
    {
      goto LABEL_17;
    }

    v14 = sel_didStopLoadingWithView_;
  }

  v15 = Strong;
  [Strong v14];

LABEL_17:
  v16 = *(v0 + 8);

  return v16();
}

void sub_2759965B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12818, &qword_2759CF420);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - v10;
  (*(v9 + 16))(aBlock - v10, a1, v8);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  (*(v9 + 32))(v13 + v12, v11, v8);
  aBlock[4] = sub_275997020;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275996830;
  aBlock[3] = &block_descriptor_17;
  v14 = _Block_copy(aBlock);

  [a2 fetchCloudSyncStatusWithCompletion_];
  _Block_release(v14);
}

uint64_t sub_275996788(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v11 = *(a6 + 16);
  *(a6 + 16) = a5;
  v12 = a5;

  swift_beginAccess();
  *(a7 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12818, &qword_2759CF420);
  return sub_2759BA488();
}

uint64_t sub_275996830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A12820, &qword_2759CF428);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = *(a1 + 32);
  if (a3)
  {
    sub_2759B8558();
    v19 = sub_2759B8578();
    (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  }

  else
  {
    v20 = sub_2759B8578();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  }

  if (a4)
  {
    sub_2759B8558();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = sub_2759B8578();
  (*(*(v22 - 8) + 56))(v15, v21, 1, v22);

  v23 = a6;
  v18(a2, v17, v15, a5, a6);

  sub_27586BF04(v15, &unk_280A12820, &qword_2759CF428);
  return sub_27586BF04(v17, &unk_280A12820, &qword_2759CF428);
}

uint64_t sub_275996A48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 49);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_27585F7A0;

  return sub_275991AFC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_275996B20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_275991DE8(a1, v4, v5, v7, v6);
}

uint64_t sub_275996BE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_275991740(a1, v4, v5, v7, v6);
}

uint64_t sub_275996CA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 49);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_27585F7A0;

  return sub_275992264(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_275996D78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2759920B4(a1, v4, v5, v6);
}

uint64_t sub_275996E2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_275874DDC;

  return sub_275992FC4();
}

uint64_t sub_275996EE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585F7A0;

  return sub_275996240(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_275996FD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_275997020(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12818, &qword_2759CF420);
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);

  return sub_275996788(a1, a2, a3, a4, a5, v11, v12);
}

double block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_275997108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585F7A0;

  return sub_275992650(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2759971D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_27585F7A0;

  return sub_2759937A4(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_2759972AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_27585F7A0;

  return sub_275995830(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_275997388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12830;
  if (!qword_280A12830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12830);
  }

  return result;
}

uint64_t sub_2759973DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEA0, &qword_2759CF500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_30Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_2759974B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12860;
  if (!qword_280A12860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12860);
  }

  return result;
}

void sub_275997530(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FCB8, &qword_2759C5660);
  MEMORY[0x28223BE20](v6);
  v8 = v14 - v7;
  v15 = a1;
  v16 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v9 = v14[1];
  swift_getKeyPath();
  v15 = v9;
  sub_275997B18(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v10 = *&v9[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__ADPView];

  if (!v10)
  {
    sub_2759B8E88();
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    v12 = &v8[*(v6 + 36)];
    sub_2759B8FD8();

    v13 = a1;
    sub_2759BA4E8();
    *v12 = &unk_2759CF6C8;
    *(v12 + 1) = v11;
    sub_2758CD014();
    v10 = sub_2759B9E68();
  }

  *a3 = v10;
}

uint64_t sub_2759976F8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v2[7] = swift_task_alloc();
  v2[8] = sub_2759BA4C8();
  v2[9] = sub_2759BA4B8();
  v4 = sub_2759BA468();
  v2[10] = v4;
  v2[11] = v3;

  return MEMORY[0x2822009F8](sub_2759977CC, v4, v3);
}

uint64_t sub_2759977CC()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v0[12] = v0[4];
  v0[13] = sub_2759BA4B8();
  v3 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27599788C, v3, v2);
}

uint64_t sub_27599788C()
{
  v1 = v0[12];
  v2 = v0[7];

  v3 = sub_2759BA518();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = v1;
  v5 = sub_2759BA4B8();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  sub_27590A1A4(0, 0, v2, &unk_2759CF6D0, v6);

  v8 = v0[10];
  v9 = v0[11];

  return MEMORY[0x2822009F8](sub_2759979A8, v8, v9);
}

uint64_t sub_2759979A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_275997A1C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27585A7E4;

  return sub_2759976F8(v2, v3);
}

unint64_t sub_275997AB4()
{
  result = qword_280A0FD00;
  if (!qword_280A0FD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FD08, &qword_2759C56A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FD00);
  }

  return result;
}

uint64_t sub_275997B18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_275997B60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585A7E4;

  return sub_275883E80(a1, v4, v5, v6);
}

uint64_t sub_275997C40@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2759B8858();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v32 = sub_2759B87E8();
  v10 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12870, &qword_2759CF798);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v18 = *(a1 + 3);
  if ((sub_275881FD0() & 1) == 0)
  {
    v23 = 1;
LABEL_6:
    v22 = v32;
    goto LABEL_7;
  }

  v30 = a2;
  swift_getKeyPath();
  *&v34 = v18;
  sub_27586BDE8();
  sub_2759B8638();

  if (!swift_unknownObjectWeakLoadStrong())
  {
    v23 = 1;
    a2 = v30;
    goto LABEL_6;
  }

  v34 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12878, &qword_2759CF7A0);
  sub_2759B9D68();
  v19 = v31;
  sub_2759B87D8();
  v20 = v19;
  v21 = v32;
  (*(v10 + 32))(v17, v20, v32);
  v22 = v21;
  v23 = 0;
  a2 = v30;
LABEL_7:
  (*(v10 + 56))(v17, v23, 1, v22);
  v34 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12878, &qword_2759CF7A0);
  sub_2759B9D68();
  sub_2759B8848();
  sub_275998048(v17, v15);
  v24 = *(v5 + 16);
  v25 = v33;
  v24(v33, v9, v4);
  sub_275998048(v15, a2);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12880, &qword_2759CF7A8);
  v24((a2 + *(v26 + 48)), v25, v4);
  v27 = *(v5 + 8);
  v27(v9, v4);
  sub_2759980B8(v17);
  v27(v25, v4);
  return sub_2759980B8(v15);
}

uint64_t sub_275998014@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v4[0] = *v1;
  v4[1] = v2;
  v4[2] = v1[2];
  return sub_275997C40(v4, a1);
}

uint64_t sub_275998048(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12870, &qword_2759CF798);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2759980B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12870, &qword_2759CF798);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_275998120()
{
  result = qword_280A12888;
  if (!qword_280A12888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12890, &qword_2759CF7D8);
    sub_2759981A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12888);
  }

  return result;
}

unint64_t sub_2759981A4()
{
  result = qword_280A12898;
  if (!qword_280A12898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A128A0, qword_2759CF7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12898);
  }

  return result;
}

uint64_t type metadata accessor for ManageStorageLiftUIDrilldownView(uint64_t a1)
{
  result = qword_280A128C8;
  if (!qword_280A128C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27599827C(uint64_t a1)
{
  sub_275998420();
  if (v1 <= 0x3F)
  {
    sub_2759984D4(319, &qword_280A128E0, type metadata accessor for ManageStorageAppViewModel, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_275998470(319);
      if (v3 <= 0x3F)
      {
        sub_2759984D4(319, &qword_280A11A28, type metadata accessor for ManageStorageAppsListViewModel, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_2759984D4(319, &qword_280A128F0, MEMORY[0x277D23330], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_2759984D4(319, &qword_280A0F928, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_275998420()
{
  if (!qword_280A128D8)
  {
    v0 = sub_2759B9D98();
    if (!v1)
    {
      atomic_store(v0, &qword_280A128D8);
    }
  }
}

void sub_275998470(uint64_t a1)
{
  if (!qword_280A128E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E7F0, &unk_2759C1230);
    v1 = sub_2759B9D98();
    if (!v2)
    {
      atomic_store(v1, &qword_280A128E8);
    }
  }
}

void sub_2759984D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_275998554@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ManageStorageLiftUIDrilldownView(0);
  sub_2759999B0(v1 + *(v10 + 36), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2759B8DA8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2759BA658();
    v13 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_275998744@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v95 = a1;
  v3 = type metadata accessor for ManageStorageLiftUIDrilldownView(0);
  v96 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v97 = v4;
  v98 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A128F8, &qword_2759CF880);
  MEMORY[0x28223BE20](v93);
  v94 = &v80 - v5;
  v83 = sub_2759B8DA8();
  v82 = *(v83 - 8);
  v6 = MEMORY[0x28223BE20](v83);
  v81 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v80 = &v80 - v8;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12900, &qword_2759CF888);
  MEMORY[0x28223BE20](v91);
  v84 = &v80 - v9;
  v101 = sub_2759B85A8();
  v10 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12908, &qword_2759CF890);
  MEMORY[0x28223BE20](v86);
  v14 = &v80 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12910, &qword_2759CF898);
  v16 = *(v15 - 8);
  v88 = v15;
  v89 = v16;
  MEMORY[0x28223BE20](v15);
  v85 = &v80 - v17;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12918, &qword_2759CF8A0);
  MEMORY[0x28223BE20](v99);
  v87 = &v80 - v18;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12920, &qword_2759CF8A8);
  v92 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v100 = &v80 - v19;
  v20 = *(v1 + 16);
  v103 = *v1;
  v104 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12928, &qword_2759CF8B0);
  sub_2759B9D68();
  v21 = *(v1 + 80);
  *&v103 = *(v1 + 72);
  *(&v103 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE98, &unk_2759C59F0);
  sub_2759B9D68();
  sub_2759B8598();
  sub_2759B8588();
  (*(v10 + 8))(v12, v101);
  sub_2759B8BB8();
  swift_allocObject();
  sub_2759B8BA8();
  sub_2759B8C58();
  v23 = *(v1 + 64);
  *&v103 = *(v1 + 56);
  v22 = v103;
  *(&v103 + 1) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v24 = v102;
  KeyPath = swift_getKeyPath();
  v26 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12930, &qword_2759CF8E0) + 36)];
  *v26 = KeyPath;
  v26[1] = v24;
  v103 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12938, &qword_2759CF8E8);
  sub_2759B9D68();
  v27 = v102;
  v28 = swift_getKeyPath();
  v29 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12940, &qword_2759CF918) + 36)];
  *v29 = v28;
  v29[1] = v27;
  v30 = *(v2 + 24);
  v31 = *(v2 + 32);
  v101 = v2;
  *&v103 = v30;
  *(&v103 + 1) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12948, &qword_2759CF920);
  sub_2759B9D68();
  v32 = v102;
  v33 = swift_getKeyPath();
  v34 = v86;
  v35 = &v14[*(v86 + 36)];
  *v35 = v33;
  v35[1] = v32;
  v36 = sub_27592D168();
  v37 = sub_2759992C4();
  v38 = v85;
  MEMORY[0x277C83780](v36, v34, v37);

  sub_275999544(v14);
  *&v103 = v22;
  *(&v103 + 1) = v23;
  sub_2759B9D68();
  v39 = v102;
  v41 = *&v102[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_liftUIDataSource];
  v40 = *&v102[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_liftUIDataSource + 8];
  swift_unknownObjectRetain();

  *&v103 = v34;
  *(&v103 + 1) = v37;
  v42 = v100;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v87;
  v44 = v88;
  MEMORY[0x277C83770](v41, v40, v88, OpaqueTypeConformance2);
  v46 = v99;
  swift_unknownObjectRelease();
  (*(v89 + 8))(v38, v44);
  v47 = swift_getKeyPath();
  v48 = v45;
  v49 = &v45[*(v46 + 36)];
  *v49 = v47;
  v49[1] = 0;
  v50 = sub_2759995AC();
  sub_2759B9A08();
  sub_27586BF04(v48, &qword_280A12918, &qword_2759CF8A0);
  v51 = [objc_opt_self() currentDevice];
  v52 = [v51 userInterfaceIdiom];

  if (v52 == 1)
  {
    v89 = v50;
    v54 = v90;
    v53 = v91;
    v55 = v94;
    v56 = v80;
    sub_275998554(v80);
    v57 = v82;
    v58 = v81;
    v59 = v83;
    (*(v82 + 104))(v81, *MEMORY[0x277CDF3D0], v83);
    v60 = sub_2759B8D98();
    v61 = *(v57 + 8);
    v61(v58, v59);
    v61(v56, v59);
    if (v60)
    {
      v62 = v55;
      if (qword_280A0E3D8 != -1)
      {
        swift_once();
      }

      v63 = &qword_280A239D8;
    }

    else
    {
      v62 = v55;
      if (qword_280A0E3D0 != -1)
      {
        swift_once();
      }

      v63 = &qword_280A239D0;
    }

    v67 = v89;
    v68 = *v63;

    v69 = sub_2759B97D8();
    v66 = v92;
    v70 = v84;
    v42 = v100;
    (*(v92 + 16))(v84, v100, v54);
    v71 = v70 + *(v53 + 36);
    *v71 = v68;
    *(v71 + 8) = v69;
    sub_275826DF4(v70, v62);
    swift_storeEnumTagMultiPayload();
    sub_2759996E4();
    *&v103 = v99;
    *(&v103 + 1) = v67;
    swift_getOpaqueTypeConformance2();
    v65 = v95;
    sub_2759B95E8();
    sub_27586BF04(v70, &qword_280A12900, &qword_2759CF888);
  }

  else
  {
    v64 = v92;
    v54 = v90;
    (*(v92 + 16))(v94, v42, v90);
    swift_storeEnumTagMultiPayload();
    sub_2759996E4();
    *&v103 = v46;
    *(&v103 + 1) = v50;
    swift_getOpaqueTypeConformance2();
    v65 = v95;
    sub_2759B95E8();
    v66 = v64;
  }

  (*(v66 + 8))(v42, v54);
  v72 = v101;
  v73 = v98;
  sub_27591EF5C(v101, v98);
  v74 = (*(v96 + 80) + 16) & ~*(v96 + 80);
  v75 = swift_allocObject();
  sub_2758D5EC4(v73, v75 + v74);
  v76 = (v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12980, &qword_2759CF9A0) + 36));
  *v76 = sub_2759997D8;
  v76[1] = v75;
  v76[2] = 0;
  v76[3] = 0;
  sub_27591EF5C(v72, v73);
  v77 = swift_allocObject();
  sub_2758D5EC4(v73, v77 + v74);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12988, &qword_2759CF9A8);
  v79 = (v65 + *(result + 36));
  *v79 = 0;
  v79[1] = 0;
  v79[2] = sub_275999944;
  v79[3] = v77;
  return result;
}

void sub_275999258(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12948, &qword_2759CF920);
  sub_2759B9D68();
  v3[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_isPresented] = a2;
}

unint64_t sub_2759992C4()
{
  result = qword_280A12950;
  if (!qword_280A12950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12908, &qword_2759CF890);
    sub_27599937C();
    sub_27589B02C(&qword_280A0E7A0, &qword_280A0E798, &qword_2759C1210, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12950);
  }

  return result;
}

unint64_t sub_27599937C()
{
  result = qword_280A12958;
  if (!qword_280A12958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12940, &qword_2759CF918);
    sub_275999434();
    sub_27589B02C(&qword_280A0E7B0, &qword_280A0E7A8, &qword_2759C1218, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12958);
  }

  return result;
}

unint64_t sub_275999434()
{
  result = qword_280A12960;
  if (!qword_280A12960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12930, &qword_2759CF8E0);
    sub_2759994EC();
    sub_27589B02C(&qword_280A0E790, &qword_280A0E788, &qword_2759CF950, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12960);
  }

  return result;
}

unint64_t sub_2759994EC()
{
  result = qword_280A12968;
  if (!qword_280A12968)
  {
    sub_2759B8C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12968);
  }

  return result;
}

uint64_t sub_275999544(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12908, &qword_2759CF890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2759995AC()
{
  result = qword_280A12970;
  if (!qword_280A12970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12918, &qword_2759CF8A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12910, &qword_2759CF898);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12908, &qword_2759CF890);
    sub_2759992C4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_27589B02C(&qword_280A12180, &qword_280A12188, &qword_2759CE5E8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12970);
  }

  return result;
}

unint64_t sub_2759996E4()
{
  result = qword_280A12978;
  if (!qword_280A12978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12900, &qword_2759CF888);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12918, &qword_2759CF8A0);
    sub_2759995AC();
    swift_getOpaqueTypeConformance2();
    sub_27589B02C(&qword_280A11650, &qword_280A11658, &unk_2759CF990, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12978);
  }

  return result;
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for ManageStorageLiftUIDrilldownView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_27585A900(*(v0 + v3), *(v0 + v3 + 8));

  v5 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2759B8DA8();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2759999B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275999A50(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_275999AD4()
{
  result = qword_280A129A0;
  if (!qword_280A129A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A129A8, &qword_2759CF9B0);
    sub_2759996E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12918, &qword_2759CF8A0);
    sub_2759995AC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A129A0);
  }

  return result;
}

uint64_t sub_275999BD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000656761726FLL;
  v3 = 0x74536567616E616DLL;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x366C6961746564;
  if (a1 != 6)
  {
    v6 = 0x764F70756B636162;
    v5 = 0xED000079616C7265;
  }

  v7 = 0x346C6961746564;
  v8 = 0xE700000000000000;
  if (a1 != 4)
  {
    v7 = 0x356C6961746564;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v9 = 0xE700000000000000;
  v10 = 0x326C6961746564;
  if (a1 != 2)
  {
    v10 = 0x336C6961746564;
    v9 = 0xE700000000000000;
  }

  v11 = 0x316C6961746564;
  if (!a1)
  {
    v11 = 0x74536567616E616DLL;
    v8 = 0xED0000656761726FLL;
  }

  if (a1 <= 1u)
  {
    v10 = v11;
    v9 = v8;
  }

  if (a1 <= 3u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 3)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE700000000000000;
        if (v12 != 0x366C6961746564)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xED000079616C7265;
        if (v12 != 0x764F70756B636162)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v2 = 0xE700000000000000;
      if (a2 == 4)
      {
        if (v12 != 0x346C6961746564)
        {
          goto LABEL_41;
        }
      }

      else if (v12 != 0x356C6961746564)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      v2 = 0xE700000000000000;
      if (a2 == 2)
      {
        if (v12 != 0x326C6961746564)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x336C6961746564;
    }

    else if (a2)
    {
      v2 = 0xE700000000000000;
      if (v12 != 0x316C6961746564)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v12 != v3)
    {
LABEL_41:
      v14 = sub_2759BAAC8();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v13 != v2)
  {
    goto LABEL_41;
  }

  v14 = 1;
LABEL_42:

  return v14 & 1;
}

uint64_t sub_275999E48(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x444977656976;
    }

    else
    {
      v3 = 0x746E657665;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6E656E6F706D6F63;
    v4 = 0xEB00000000444974;
  }

  else if (a1 == 3)
  {
    v3 = 0x79546E6F69746361;
    v4 = 0xEA00000000006570;
  }

  else
  {
    v3 = 0x6956746567726174;
    v4 = 0xEC00000044497765;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x444977656976;
    }

    else
    {
      v9 = 0x746E657665;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x79546E6F69746361;
    v6 = 0xEA00000000006570;
    if (a2 != 3)
    {
      v5 = 0x6956746567726174;
      v6 = 0xEC00000044497765;
    }

    if (a2 == 2)
    {
      v7 = 0x6E656E6F706D6F63;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xEB00000000444974;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_2759BAAC8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_275999FF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6554726564616568;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xEA00000000007478;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x7865546567617375;
    v4 = 0xE900000000000074;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6449656C646E7562;
    }

    else
    {
      v3 = 0x616D696E41657375;
    }

    if (v2 == 3)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xEC0000006E6F6974;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6554726564616568;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xEA00000000007478;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE900000000000074;
    if (v3 != 0x7865546567617375)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x6449656C646E7562)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEC0000006E6F6974;
    if (v3 != 0x616D696E41657375)
    {
LABEL_34:
      v7 = sub_2759BAAC8();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_27599A1A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 1702063205;
    }

    else
    {
      v3 = 0x73616C6361746164;
    }

    if (v2 == 2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xEB00000000644973;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 1852139636;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE400000000000000;
  v8 = 1702063205;
  if (a2 != 2)
  {
    v8 = 0x73616C6361746164;
    v7 = 0xEB00000000644973;
  }

  if (a2)
  {
    v6 = 1852139636;
    v5 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2759BAAC8();
  }

  return v11 & 1;
}

uint64_t sub_27599A2D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 7107189;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000002759DCD70;
  }

  else if (a1 == 3)
  {
    v3 = 0x6C6F686563616C70;
    v4 = 0xEB00000000726564;
  }

  else
  {
    v3 = 0x646F4D6567616D69;
    v4 = 0xEE00737265696669;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 7107189;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000002759DCD70;
    if (v3 != 0xD000000000000010)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEB00000000726564;
    if (v3 != 0x6C6F686563616C70)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEE00737265696669;
    if (v3 != 0x646F4D6567616D69)
    {
LABEL_31:
      v7 = sub_2759BAAC8();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_27599A484(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7070417261656C63;
    }

    else
    {
      v3 = 0x77656956706F70;
    }

    if (v2)
    {
      v4 = 0xED00007473694C73;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6D6F487261656C63;
    v4 = 0xED00006174614465;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000014;
    v4 = 0x80000002759DD100;
  }

  else
  {
    v3 = 0x656C706D6F436E6FLL;
    v4 = 0xEC0000006E6F6974;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x7070417261656C63;
    }

    else
    {
      v6 = 0x77656956706F70;
    }

    if (a2)
    {
      v5 = 0xED00007473694C73;
    }

    else
    {
      v5 = 0xE700000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xED00006174614465;
    if (v3 != 0x6D6F487261656C63)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000002759DD100;
    if (v3 != 0xD000000000000014)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEC0000006E6F6974;
    if (v3 != 0x656C706D6F436E6FLL)
    {
LABEL_31:
      v7 = sub_2759BAAC8();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_27599A668(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 1u)
  {
    v4 = a1 == 2;
    v2 = 0xEB00000000736E6FLL;
    v3 = 0xEC0000006E6F6974;
    if (a1 == 2)
    {
      v5 = 0x697463416E6F6369;
    }

    else
    {
      v5 = 0x616D696E41657375;
    }
  }

  else
  {
    v2 = 0xE200000000000000;
    v3 = 0xE500000000000000;
    v4 = a1 == 0;
    if (a1)
    {
      v5 = 0x6C6562616CLL;
    }

    else
    {
      v5 = 25705;
    }
  }

  if (v4)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  v7 = 0xE200000000000000;
  v8 = 25705;
  v9 = 0x697463416E6F6369;
  v10 = 0xEB00000000736E6FLL;
  if (a2 != 2)
  {
    v9 = 0x616D696E41657375;
    v10 = 0xEC0000006E6F6974;
  }

  if (a2)
  {
    v8 = 0x6C6562616CLL;
    v7 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v7;
  }

  else
  {
    v12 = v10;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_2759BAAC8();
  }

  return v13 & 1;
}

uint64_t sub_27599A7B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006E6F6974;
  v3 = 0x656C706D6F436E6FLL;
  v4 = a1;
  v5 = 0x7245636E79536E6FLL;
  v6 = 0xEB00000000726F72;
  v7 = 0x5255796669746F6ELL;
  if (a1 == 4)
  {
    v8 = 0xE90000000000004CLL;
  }

  else
  {
    v7 = 0x6573624F70696B73;
    v8 = 0xEF6E6F6974617672;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x7365636375536E6FLL;
  v10 = 0xE900000000000073;
  if (a1 != 1)
  {
    v9 = 0x746E65696C436E6FLL;
    v10 = 0xED0000726F727245;
  }

  if (!a1)
  {
    v9 = 0x656C706D6F436E6FLL;
    v10 = 0xEC0000006E6F6974;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEB00000000726F72;
      if (v11 != 0x7245636E79536E6FLL)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE90000000000004CLL;
      if (v11 != 0x5255796669746F6ELL)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xEF6E6F6974617672;
      if (v11 != 0x6573624F70696B73)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE900000000000073;
        if (v11 != 0x7365636375536E6FLL)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0x746E65696C436E6FLL;
      v2 = 0xED0000726F727245;
    }

    if (v11 != v3)
    {
LABEL_32:
      v13 = sub_2759BAAC8();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v12 != v2)
  {
    goto LABEL_32;
  }

  v13 = 1;
LABEL_33:

  return v13 & 1;
}

uint64_t sub_27599A9E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 1702063205;
    }

    else
    {
      v3 = 0x6449656C646E7562;
    }

    if (v2 == 2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE900000000000073;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 1852139636;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE400000000000000;
  v8 = 1702063205;
  if (a2 != 2)
  {
    v8 = 0x6449656C646E7562;
    v7 = 0xE900000000000073;
  }

  if (a2)
  {
    v6 = 1852139636;
    v5 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2759BAAC8();
  }

  return v11 & 1;
}

uint64_t sub_27599AB08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF6C69616D45794DLL;
  v3 = 0x65646948776F6873;
  v4 = a1;
  if (a1 <= 2u)
  {
    v11 = 0x6D657250776F6873;
    v12 = 0xEE007070416D7569;
    if (a1 == 1)
    {
      v11 = 0x65646948776F6873;
      v12 = 0xEF6C69616D45794DLL;
    }

    if (a1)
    {
      v9 = v11;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (v4)
    {
      v10 = v12;
    }

    else
    {
      v10 = 0x80000002759DCC20;
    }
  }

  else
  {
    v5 = 0x80000002759DCC80;
    v6 = 0xD000000000000017;
    if (a1 != 5)
    {
      v6 = 0x566265576E65706FLL;
      v5 = 0xEB00000000776569;
    }

    v7 = 0x80000002759DCC50;
    v8 = 0xD000000000000015;
    if (a1 != 3)
    {
      v8 = 0x616E614D776F6873;
      v7 = 0xEE00736275536567;
    }

    if (a1 <= 4u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 4)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x80000002759DCC20;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    if (a2 != 1)
    {
      v2 = 0xEE007070416D7569;
      if (v9 != 0x6D657250776F6873)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x80000002759DCC80;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v2 = 0xEB00000000776569;
        if (v9 != 0x566265576E65706FLL)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_36;
    }

    if (a2 == 3)
    {
      v2 = 0x80000002759DCC50;
      if (v9 != 0xD000000000000015)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v3 = 0x616E614D776F6873;
    v2 = 0xEE00736275536567;
  }

  if (v9 != v3)
  {
LABEL_39:
    v13 = sub_2759BAAC8();
    goto LABEL_40;
  }

LABEL_36:
  if (v10 != v2)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_27599AD98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000004E414CLL;
  v3 = 0x505F4547414E414DLL;
  v4 = a1;
  v5 = 0xD000000000000013;
  v6 = 0x80000002759DCD20;
  if (a1 != 5)
  {
    v5 = 0x535F44554F4C4349;
    v6 = 0xEE00454741524F54;
  }

  v7 = 0x5F594D5F45444948;
  v8 = 0xED00004C49414D45;
  if (a1 != 3)
  {
    v7 = 0x5F4D55494D455250;
    v8 = 0xEB00000000505041;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x535F594C494D4146;
  v10 = 0xEE00474E49524148;
  if (a1 != 1)
  {
    v9 = 0x5F45544156495250;
    v10 = 0xED000059414C4552;
  }

  if (!a1)
  {
    v9 = 0x505F4547414E414DLL;
    v10 = 0xEB000000004E414CLL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      goto LABEL_31;
    }

    if (a2 != 1)
    {
      v13 = 0x5F45544156495250;
      v14 = 0x59414C4552;
LABEL_28:
      v2 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      if (v11 != v13)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v15 = 0x535F594C494D4146;
    v16 = 0x474E49524148;
  }

  else
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v13 = 0x5F594D5F45444948;
        v14 = 0x4C49414D45;
        goto LABEL_28;
      }

      v3 = 0x5F4D55494D455250;
      v2 = 0xEB00000000505041;
LABEL_31:
      if (v11 != v3)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    if (a2 == 5)
    {
      v2 = 0x80000002759DCD20;
      if (v11 != 0xD000000000000013)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v15 = 0x535F44554F4C4349;
    v16 = 0x454741524F54;
  }

  v2 = v16 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
  if (v11 != v15)
  {
LABEL_37:
    v17 = sub_2759BAAC8();
    goto LABEL_38;
  }

LABEL_35:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v17 = 1;
LABEL_38:

  return v17 & 1;
}

void sub_27599B03C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_27599B088@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v94 = a1;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A129B0, &qword_2759CFA70);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v4 = &v74 - v3;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A129B8, &qword_2759CFA78);
  MEMORY[0x28223BE20](v93);
  v85 = &v74 - v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A129C0, &qword_2759CFA80);
  MEMORY[0x28223BE20](v90);
  v92 = &v74 - v6;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A129C8, &qword_2759CFA88);
  MEMORY[0x28223BE20](v91);
  v81 = &v74 - v7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A129D0, &qword_2759CFA90);
  v79 = *(v80 - 8);
  v8 = MEMORY[0x28223BE20](v80);
  v77 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v78 = &v74 - v10;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A129D8, &qword_2759CFA98);
  MEMORY[0x28223BE20](v87);
  v12 = &v74 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A129E0, &qword_2759CFAA0);
  v75 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v74 - v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A129E8, &qword_2759CFAA8);
  v16 = MEMORY[0x28223BE20](v74);
  v76 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v82 = &v74 - v18;
  v19 = *v1;
  v88 = v1[1];
  v89 = v19;
  v99 = v19;
  v100 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v20 = v97;
  swift_getKeyPath();
  v99 = v20;
  v86 = sub_2759A4AEC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v21 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v22 = *&v20[v21];
  v23 = v22;

  if (!v22)
  {
    goto LABEL_6;
  }

  if (v23[OBJC_IVAR___ICSHomeDataModel_underMaintenance] != 1)
  {

    goto LABEL_6;
  }

  v25 = *&v23[OBJC_IVAR___ICSHomeDataModel_informationCard];
  v26 = v25;

  if (!v25)
  {
LABEL_6:
    MEMORY[0x28223BE20](v24);
    *(&v74 - 2) = v2;
    sub_27599BF34(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A129F0, &qword_2759CFAD8);
    sub_2759A4504(&qword_280A129F8, &qword_280A129D8, &qword_2759CFA98, sub_2759A3624);
    v82 = MEMORY[0x277CE14C0];
    sub_27589B02C(&qword_280A12A70, &qword_280A129F0, &qword_2759CFAD8, MEMORY[0x277CE14C0]);
    sub_2759B9F28();
    v59 = v88;
    v58 = v89;
    v97 = v89;
    v98 = v88;
    sub_2759B9D68();
    v60 = v102;
    swift_getKeyPath();
    v97 = v60;
    sub_2759B8638();

    v61 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
    swift_beginAccess();
    v62 = *&v60[v61];
    v63 = v62;

    v96 = v62;
    v103 = v59;
    v64 = v2[1];
    v101 = v2[2];
    v102 = v64;
    v65 = swift_allocObject();
    v66 = v2[1];
    v65[1] = *v2;
    v65[2] = v66;
    v65[3] = v2[2];
    v89 = v58;
    sub_27586FBC8(&v103, v95, &qword_280A10938, &qword_2759C77C8);
    sub_27586FBC8(&v102, v95, &qword_280A0F280, &qword_2759C3728);
    sub_27586FBC8(&v101, v95, &qword_280A0F280, &qword_2759C3728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10858, &qword_2759C7690);
    sub_2759A387C();
    sub_2758FB220();
    v67 = v85;
    v68 = v84;
    sub_2759B9B88();

    (*(v83 + 8))(v4, v68);
    v69 = swift_allocObject();
    v70 = v2[1];
    v69[1] = *v2;
    v69[2] = v70;
    v69[3] = v2[2];
    v71 = (v67 + *(v93 + 36));
    sub_2759B8FD8();
    v72 = v89;
    sub_27586FBC8(&v103, v95, &qword_280A10938, &qword_2759C77C8);
    sub_27586FBC8(&v102, v95, &qword_280A0F280, &qword_2759C3728);
    sub_27586FBC8(&v101, v95, &qword_280A0F280, &qword_2759C3728);
    sub_2759BA4E8();
    *v71 = &unk_2759CFB20;
    v71[1] = v69;
    sub_27586FBC8(v67, v92, &qword_280A129B8, &qword_2759CFA78);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A12A80, &qword_280A129C8, &qword_2759CFA88, v82);
    sub_2759A3A00();
    sub_2759B95E8();
    v55 = v67;
    v56 = &qword_280A129B8;
    v57 = &qword_2759CFA78;
    return sub_27586BF04(v55, v56, v57);
  }

  MEMORY[0x28223BE20](v27);
  *(&v74 - 2) = v2;
  sub_27599BF34(v12);
  v28 = sub_2759A4504(&qword_280A129F8, &qword_280A129D8, &qword_2759CFA98, sub_2759A3624);
  sub_2759A3B2C(v28, v29, v30);
  sub_2759B9F28();
  v31 = v88;
  v32 = v89;
  v97 = v89;
  v98 = v88;
  sub_2759B9D68();
  v33 = v102;
  swift_getKeyPath();
  v97 = v33;
  sub_2759B8638();

  v34 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v35 = *&v33[v34];
  v36 = v35;

  v96 = v35;
  v103 = v31;
  v37 = v2[1];
  v101 = v2[2];
  v102 = v37;
  v38 = swift_allocObject();
  v39 = v2[1];
  v38[1] = *v2;
  v38[2] = v39;
  v38[3] = v2[2];
  v89 = v32;
  sub_27586FBC8(&v103, v95, &qword_280A10938, &qword_2759C77C8);
  sub_27586FBC8(&v102, v95, &qword_280A0F280, &qword_2759C3728);
  sub_27586FBC8(&v101, v95, &qword_280A0F280, &qword_2759C3728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10858, &qword_2759C7690);
  sub_2759A3BDC();
  sub_2758FB220();
  v40 = v82;
  sub_2759B9B88();

  (*(v75 + 8))(v15, v13);
  v41 = swift_allocObject();
  v42 = v2[1];
  v41[1] = *v2;
  v41[2] = v42;
  v41[3] = v2[2];
  v43 = (v40 + *(v74 + 36));
  sub_2759B8FD8();
  v44 = v89;
  sub_27586FBC8(&v103, v95, &qword_280A10938, &qword_2759C77C8);
  sub_27586FBC8(&v102, v95, &qword_280A0F280, &qword_2759C3728);
  sub_27586FBC8(&v101, v95, &qword_280A0F280, &qword_2759C3728);
  v45 = sub_2759BA4E8();
  *v43 = &unk_2759CFB30;
  v43[1] = v41;
  MEMORY[0x28223BE20](v45);
  *(&v74 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A129F0, &qword_2759CFAD8);
  v89 = MEMORY[0x277CE14C0];
  sub_27589B02C(&qword_280A12A70, &qword_280A129F0, &qword_2759CFAD8, MEMORY[0x277CE14C0]);
  v46 = v78;
  sub_2759B9F38();
  v47 = v76;
  sub_27586FBC8(v40, v76, &qword_280A129E8, &qword_2759CFAA8);
  v48 = v79;
  v49 = *(v79 + 16);
  v50 = v77;
  v51 = v80;
  v49(v77, v46, v80);
  v52 = v81;
  sub_27586FBC8(v47, v81, &qword_280A129E8, &qword_2759CFAA8);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AA0, &qword_2759CFB38);
  v49((v52 + *(v53 + 48)), v50, v51);
  v54 = *(v48 + 8);
  v54(v50, v51);
  sub_27586BF04(v47, &qword_280A129E8, &qword_2759CFAA8);
  sub_27586FBC8(v52, v92, &qword_280A129C8, &qword_2759CFA88);
  swift_storeEnumTagMultiPayload();
  sub_27589B02C(&qword_280A12A80, &qword_280A129C8, &qword_2759CFA88, v89);
  sub_2759A3A00();
  sub_2759B95E8();
  sub_27586BF04(v52, &qword_280A129C8, &qword_2759CFA88);
  v54(v46, v51);
  v55 = v82;
  v56 = &qword_280A129E8;
  v57 = &qword_2759CFAA8;
  return sub_27586BF04(v55, v56, v57);
}

void *sub_27599BEC4@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  type metadata accessor for iCloudHomeViewModel(0);
  result = sub_2759B9D58();
  *a2 = v4;
  return result;
}

uint64_t sub_27599BF34@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12C08, &qword_2759CFD58);
  MEMORY[0x28223BE20](v2);
  v4 = &v88 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12A28, &qword_2759CFAF0);
  MEMORY[0x28223BE20](v5);
  v89 = &v88 - v6;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12C10, &qword_2759CFD60);
  MEMORY[0x28223BE20](v92);
  v8 = &v88 - v7;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12A48, &qword_2759CFB00);
  MEMORY[0x28223BE20](v95);
  v90 = &v88 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12A58, &qword_2759CFB08);
  MEMORY[0x28223BE20](v10);
  v12 = &v88 - v11;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12A38, &qword_2759CFAF8);
  v13 = MEMORY[0x28223BE20](v99);
  v94 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v88 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12A18, &qword_2759CFAE8);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v96 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v98 = &v88 - v20;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12A08, &qword_2759CFAE0);
  MEMORY[0x28223BE20](v97);
  v100 = &v88 - v21;
  *v12 = sub_2759B9418();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12C18, &qword_2759CFD68);
  sub_2759A0DF8(v1, &v12[*(v22 + 44)]);
  v23 = sub_2759B97E8();
  sub_2759B8D78();
  v93 = v10;
  v24 = &v12[*(v10 + 36)];
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v29 = objc_opt_self();
  v30 = [v29 currentDevice];
  v31 = [v30 userInterfaceIdiom];

  v91 = v29;
  if (v31 == 1 || (v32 = [v29 currentDevice], v33 = objc_msgSend(v32, sel_userInterfaceIdiom), v32, v33 == 6))
  {
    v34 = sub_2759B97F8();
    sub_2759B8D78();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = v90;
    sub_27586FBC8(v12, v90, &qword_280A12A58, &qword_2759CFB08);
    v44 = v43 + *(v95 + 36);
    *v44 = v34;
    *(v44 + 8) = v36;
    *(v44 + 16) = v38;
    *(v44 + 24) = v40;
    *(v44 + 32) = v42;
    *(v44 + 40) = 0;
    sub_27586FBC8(v43, v8, &qword_280A12A48, &qword_2759CFB00);
    swift_storeEnumTagMultiPayload();
    sub_2759A4504(&qword_280A12A40, &qword_280A12A48, &qword_2759CFB00, sub_2759A37C4);
    sub_2759A37C4();
    v45 = v94;
    sub_2759B95E8();
    sub_27586BF04(v43, &qword_280A12A48, &qword_2759CFB00);
  }

  else
  {
    sub_27586FBC8(v12, v8, &qword_280A12A58, &qword_2759CFB08);
    swift_storeEnumTagMultiPayload();
    sub_2759A4504(&qword_280A12A40, &qword_280A12A48, &qword_2759CFB00, sub_2759A37C4);
    sub_2759A37C4();
    v45 = v94;
    sub_2759B95E8();
  }

  sub_27586BF04(v12, &qword_280A12A58, &qword_2759CFB08);
  sub_27589F26C(v45, v16, &qword_280A12A38, &qword_2759CFAF8);
  v46 = v91;
  v47 = [v91 currentDevice];
  v48 = [v47 userInterfaceIdiom];

  v49 = v96;
  if (v48 == 1 || (v50 = [v46 currentDevice], v51 = objc_msgSend(v50, sel_userInterfaceIdiom), v50, v51 == 6))
  {
    sub_27586FBC8(v16, v4, &qword_280A12A38, &qword_2759CFAF8);
    swift_storeEnumTagMultiPayload();
    sub_2759A4504(&qword_280A12A20, &qword_280A12A28, &qword_2759CFAF0, sub_2759A370C);
    sub_2759A370C();
    sub_2759B95E8();
  }

  else
  {
    v52 = sub_2759B97F8();
    sub_2759B8D78();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v61 = v89;
    sub_27586FBC8(v16, v89, &qword_280A12A38, &qword_2759CFAF8);
    v62 = v61 + *(v5 + 36);
    *v62 = v52;
    *(v62 + 8) = v54;
    *(v62 + 16) = v56;
    *(v62 + 24) = v58;
    *(v62 + 32) = v60;
    *(v62 + 40) = 0;
    sub_27586FBC8(v61, v4, &qword_280A12A28, &qword_2759CFAF0);
    swift_storeEnumTagMultiPayload();
    sub_2759A4504(&qword_280A12A20, &qword_280A12A28, &qword_2759CFAF0, sub_2759A370C);
    sub_2759A370C();
    sub_2759B95E8();
    sub_27586BF04(v61, &qword_280A12A28, &qword_2759CFAF0);
  }

  sub_27586BF04(v16, &qword_280A12A38, &qword_2759CFAF8);
  v63 = v98;
  sub_27589F26C(v49, v98, &qword_280A12A18, &qword_2759CFAE8);
  v64 = sub_2759B9808();
  sub_2759B8D78();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v63;
  v74 = v100;
  sub_27589F26C(v73, v100, &qword_280A12A18, &qword_2759CFAE8);
  v75 = v74 + *(v97 + 36);
  *v75 = v64;
  *(v75 + 8) = v66;
  *(v75 + 16) = v68;
  *(v75 + 24) = v70;
  *(v75 + 32) = v72;
  *(v75 + 40) = 0;
  v76 = sub_2759B9818();
  sub_2759B8D78();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v85 = v101;
  sub_27589F26C(v74, v101, &qword_280A12A08, &qword_2759CFAE0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A129D8, &qword_2759CFA98);
  v87 = v85 + *(result + 36);
  *v87 = v76;
  *(v87 + 8) = v78;
  *(v87 + 16) = v80;
  *(v87 + 24) = v82;
  *(v87 + 32) = v84;
  *(v87 + 40) = 0;
  return result;
}

uint64_t sub_27599C808(uint64_t a1)
{
  v1[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v1[13] = swift_task_alloc();
  v2 = sub_2759BA9A8();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = sub_2759BA4C8();
  v1[18] = sub_2759BA4B8();
  v4 = sub_2759BA468();
  v1[19] = v4;
  v1[20] = v3;

  return MEMORY[0x2822009F8](sub_27599C938, v4, v3);
}

uint64_t sub_27599C938()
{
  v1 = sub_2759BAC28();
  v3 = v2;
  sub_2759BAB68();
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  *v4 = v0;
  v4[1] = sub_27599CA14;

  return sub_2759A3E3C(v1, v3, 0, 0, 1);
}

uint64_t sub_27599CA14()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[16];
  v5 = v2[15];
  v6 = v2[14];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[19];
    v8 = v3[20];
    v9 = sub_2759A5A38;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[19];
    v8 = v3[20];
    v9 = sub_27599CBA8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_27599CBA8()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);

  v3 = sub_2759BA518();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = *v2;
  *(v0 + 80) = *(v2 + 8);
  *(v0 + 16) = *(v2 + 16);
  *(v0 + 32) = *(v2 + 32);
  v5 = v4;
  sub_27586FBC8(v0 + 80, v0 + 88, &qword_280A10938, &qword_2759C77C8);
  sub_27586FBC8(v0 + 16, v0 + 48, &qword_280A0F280, &qword_2759C3728);
  sub_27586FBC8(v0 + 32, v0 + 64, &qword_280A0F280, &qword_2759C3728);
  v6 = sub_2759BA4B8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  v10 = *(v2 + 16);
  v9 = *(v2 + 32);
  *(v7 + 32) = *v2;
  *(v7 + 48) = v10;
  *(v7 + 64) = v9;
  sub_27587D460(0, 0, v1, &unk_2759CFD40, v7);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_27599CD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  sub_2759BA4C8();
  *(v4 + 40) = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27599CDE0, v6, v5);
}

uint64_t sub_27599CDE0()
{
  v1 = *(v0 + 32);

  *(v0 + 16) = *(v1 + 32);
  *(v0 + 48) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F280, &qword_2759C3728);
  sub_2759B9D78();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27599CE78@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AA8, &qword_2759CFB40);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  *v9 = sub_2759B94F8();
  *(v9 + 1) = 0x4020000000000000;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AB0, &qword_2759CFB48);
  sub_27599D618(a1, &v9[*(v10 + 44)]);
  v18 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v11 = v17;
  v12 = sub_275881DE4();

  if (v12)
  {
    v18 = *a1;
    sub_2759B9D68();
    v13 = v17;
    v14 = v17;
  }

  else
  {
    v13 = 0;
  }

  sub_27586FBC8(v9, v7, &qword_280A12AA8, &qword_2759CFB40);
  sub_27586FBC8(v7, a2, &qword_280A12AA8, &qword_2759CFB40);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AB8, &qword_2759CFB50) + 48)) = v13;
  sub_27586BF04(v9, &qword_280A12AA8, &qword_2759CFB40);

  return sub_27586BF04(v7, &qword_280A12AA8, &qword_2759CFB40);
}

uint64_t sub_27599D040(uint64_t a1)
{
  v1[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v1[13] = swift_task_alloc();
  v2 = sub_2759BA9A8();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = sub_2759BA4C8();
  v1[18] = sub_2759BA4B8();
  v4 = sub_2759BA468();
  v1[19] = v4;
  v1[20] = v3;

  return MEMORY[0x2822009F8](sub_27599D170, v4, v3);
}

uint64_t sub_27599D170()
{
  v1 = sub_2759BAC28();
  v3 = v2;
  sub_2759BAB68();
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  *v4 = v0;
  v4[1] = sub_27599D24C;

  return sub_2759A3E3C(v1, v3, 0, 0, 1);
}

uint64_t sub_27599D24C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[16];
  v5 = v2[15];
  v6 = v2[14];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[19];
    v8 = v3[20];
    v9 = sub_2759A5A3C;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[19];
    v8 = v3[20];
    v9 = sub_27599D3E0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_27599D3E0()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);

  v3 = sub_2759BA518();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = *v2;
  *(v0 + 80) = *(v2 + 8);
  *(v0 + 16) = *(v2 + 16);
  *(v0 + 32) = *(v2 + 32);
  v5 = v4;
  sub_27586FBC8(v0 + 80, v0 + 88, &qword_280A10938, &qword_2759C77C8);
  sub_27586FBC8(v0 + 16, v0 + 48, &qword_280A0F280, &qword_2759C3728);
  sub_27586FBC8(v0 + 32, v0 + 64, &qword_280A0F280, &qword_2759C3728);
  v6 = sub_2759BA4B8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  v10 = *(v2 + 16);
  v9 = *(v2 + 32);
  *(v7 + 32) = *v2;
  *(v7 + 48) = v10;
  *(v7 + 64) = v9;
  sub_27587D460(0, 0, v1, &unk_2759CFD50, v7);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_27599D580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  sub_2759BA4C8();
  *(v4 + 40) = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2759A5A30, v6, v5);
}

uint64_t sub_27599D618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v171 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v168 = *(v3 - 8);
  v169 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v146 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AC0, &qword_2759CFB58);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v170 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v173 = &v146 - v9;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AC8, &qword_2759CFB60);
  MEMORY[0x28223BE20](v166);
  v11 = &v146 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AD0, &qword_2759CFB68);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v154 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v155 = &v146 - v15;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AD8, &qword_2759CFB70);
  v149 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v17 = &v146 - v16;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AE0, &qword_2759CFB78);
  MEMORY[0x28223BE20](v147);
  v151 = &v146 - v18;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AE8, &qword_2759CFB80);
  v19 = MEMORY[0x28223BE20](v150);
  v153 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v148 = &v146 - v22;
  MEMORY[0x28223BE20](v21);
  v156 = &v146 - v23;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AF0, &qword_2759CFB88);
  MEMORY[0x28223BE20](v164);
  v165 = &v146 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AF8, &qword_2759CFB90);
  v158 = *(v25 - 8);
  v159 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v146 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12B00, &qword_2759CFB98);
  MEMORY[0x28223BE20](v28 - 8);
  v160 = &v146 - v29;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12B08, &qword_2759CFBA0);
  MEMORY[0x28223BE20](v161);
  v31 = &v146 - v30;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12B10, &qword_2759CFBA8);
  MEMORY[0x28223BE20](v163);
  v162 = &v146 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12B18, &qword_2759CFBB0);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v167 = &v146 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v172 = &v146 - v36;
  v37 = *(a1 + 8);
  v177 = *a1;
  *&v188 = v177;
  v175 = v37;
  *(&v188 + 1) = v37;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v38 = v178;
  swift_getKeyPath();
  *&v188 = v38;
  v176 = sub_2759A4AEC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v39 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v40 = *&v38[v39];
  v157 = v5;
  if (v40)
  {
    v41 = (*(v40 + OBJC_IVAR___ICSHomeDataModel_headerCard) + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageState);
    v42 = *v41;
    v43 = v41[1];

    LOBYTE(v42) = sub_27598AB3C(v42, v43);

    if (!v42)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v44 = sub_2759BAAC8();

  if (v44)
  {
LABEL_13:
    v52 = v175;
    *&v200 = v175;
    v53 = *(a1 + 32);
    v199 = *(a1 + 16);
    v201 = v53;
    v54 = swift_allocObject();
    v55 = *(a1 + 16);
    v54[1] = *a1;
    v54[2] = v55;
    v54[3] = *(a1 + 32);
    MEMORY[0x28223BE20](v54);
    v56 = v177;
    sub_27586FBC8(&v200, &v188, &qword_280A10938, &qword_2759C77C8);
    sub_27586FBC8(&v199, &v188, &qword_280A0F280, &qword_2759C3728);
    sub_27586FBC8(&v201, &v188, &qword_280A0F280, &qword_2759C3728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12B88, &qword_2759CFC10);
    sub_2759A48F4();
    sub_2759B9DB8();
    sub_2759B9498();
    sub_27589B02C(&qword_280A12B70, &qword_280A12AF8, &qword_2759CFB90, MEMORY[0x277CDF028]);
    v58 = v159;
    v57 = v160;
    sub_2759B9AF8();

    (*(v158 + 8))(v27, v58);
    *&v188 = v56;
    *(&v188 + 1) = v52;
    sub_2759B9D68();
    v59 = v178;
    swift_getKeyPath();
    *&v188 = v59;
    sub_2759B8638();

    v60 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
    swift_beginAccess();
    v61 = *&v59[v60];
    v62 = v61;

    if (v61)
    {
    }

    v63 = v61 == 0;
    KeyPath = swift_getKeyPath();
    v65 = swift_allocObject();
    *(v65 + 16) = v63;
    sub_27589F26C(v57, v31, &qword_280A12B00, &qword_2759CFB98);
    v66 = &v31[*(v161 + 9)];
    *v66 = KeyPath;
    v66[1] = sub_2759A5A40;
    v66[2] = v65;
    sub_2759A46FC();
    v67 = v162;
    sub_2759B9B38();
    sub_27586BF04(v31, &qword_280A12B08, &qword_2759CFBA0);
    sub_27586FBC8(v67, v165, &qword_280A12B10, &qword_2759CFBA8);
    swift_storeEnumTagMultiPayload();
    sub_2759A4640();
    sub_27589B02C(&qword_280A12B78, &qword_280A12AC8, &qword_2759CFB60, MEMORY[0x277CE14C0]);
    v68 = v172;
    sub_2759B95E8();
    sub_27586BF04(v67, &qword_280A12B10, &qword_2759CFBA8);
    goto LABEL_16;
  }

  *&v188 = v177;
  *(&v188 + 1) = v175;
  sub_2759B9D68();
  v45 = v178;
  swift_getKeyPath();
  *&v188 = v45;
  sub_2759B8638();

  v46 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v47 = *&v45[v46];
  if (!v47)
  {

    goto LABEL_10;
  }

  v48 = (*(v47 + OBJC_IVAR___ICSHomeDataModel_headerCard) + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageState);
  v49 = *v48;
  v50 = v48[1];

  LOBYTE(v49) = sub_27598AB3C(v49, v50);

  if (v49 > 2u)
  {
LABEL_10:

    goto LABEL_13;
  }

  v51 = sub_2759BAAC8();

  if (v51)
  {
    goto LABEL_13;
  }

  v162 = v11;
  v108 = v175;
  v202[0] = v175;
  v109 = *(a1 + 16);
  v200 = *(a1 + 32);
  v201 = v109;
  v110 = swift_allocObject();
  v161 = &v146;
  v111 = *(a1 + 16);
  v110[1] = *a1;
  v110[2] = v111;
  v110[3] = *(a1 + 32);
  MEMORY[0x28223BE20](v110);
  v112 = v177;
  sub_27586FBC8(v202, &v188, &qword_280A10938, &qword_2759C77C8);
  sub_27586FBC8(&v201, &v188, &qword_280A0F280, &qword_2759C3728);
  sub_27586FBC8(&v200, &v188, &qword_280A0F280, &qword_2759C3728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12B20, &qword_2759CFBB8);
  sub_27589B02C(&qword_280A12B28, &qword_280A12B20, &qword_2759CFBB8, MEMORY[0x277CE1138]);
  sub_2759B9DB8();
  *&v188 = v112;
  *(&v188 + 1) = v108;
  sub_2759B9D68();
  v113 = v178;
  swift_getKeyPath();
  *&v188 = v113;
  sub_2759B8638();

  v114 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v115 = *&v113[v114];
  v116 = v115;

  if (v115)
  {
  }

  v117 = v115 == 0;
  v118 = swift_getKeyPath();
  v119 = swift_allocObject();
  *(v119 + 16) = v117;
  v120 = v151;
  (*(v149 + 32))(v151, v17, v152);
  v121 = (v120 + *(v147 + 36));
  *v121 = v118;
  v121[1] = sub_2759A44E4;
  v121[2] = v119;
  LOBYTE(v118) = sub_2759B97F8();
  sub_2759B8D78();
  v123 = v122;
  v125 = v124;
  v127 = v126;
  v129 = v128;
  v130 = v148;
  sub_27589F26C(v120, v148, &qword_280A12AE0, &qword_2759CFB78);
  v131 = v130 + *(v150 + 36);
  *v131 = v118;
  *(v131 + 8) = v123;
  *(v131 + 16) = v125;
  *(v131 + 24) = v127;
  *(v131 + 32) = v129;
  *(v131 + 40) = 0;
  v132 = v156;
  sub_27589F26C(v130, v156, &qword_280A12AE8, &qword_2759CFB80);
  v133 = swift_allocObject();
  v134 = *(a1 + 16);
  v133[1] = *a1;
  v133[2] = v134;
  v133[3] = *(a1 + 32);
  v135 = v112;
  sub_27586FBC8(v202, &v188, &qword_280A10938, &qword_2759C77C8);
  sub_27586FBC8(&v201, &v188, &qword_280A0F280, &qword_2759C3728);
  sub_27586FBC8(&v200, &v188, &qword_280A0F280, &qword_2759C3728);
  sub_2759BA028();
  sub_2759B9128();
  v136 = sub_2759B97F8();
  sub_2759B8D78();
  v198 = 0;
  *&v178 = sub_2759A44FC;
  *(&v178 + 1) = v133;
  v183 = v187[6];
  v184 = v187[7];
  v185 = v187[8];
  v179 = v187[2];
  v180 = v187[3];
  v181 = v187[4];
  v182 = v187[5];
  LOBYTE(v186) = v136;
  *(&v186 + 1) = v137;
  *&v187[0] = v138;
  *(&v187[0] + 1) = v139;
  *&v187[1] = v140;
  BYTE8(v187[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12B30, &qword_2759CFBF0);
  sub_2759A4504(&qword_280A12B38, &qword_280A12B30, &qword_2759CFBF0, sub_2759A4588);
  v141 = v155;
  sub_2759B9B38();
  v196 = v186;
  v197[0] = v187[0];
  *(v197 + 9) = *(v187 + 9);
  v192 = v182;
  v193 = v183;
  v194 = v184;
  v195 = v185;
  v188 = v178;
  v189 = v179;
  v190 = v180;
  v191 = v181;
  sub_27586BF04(&v188, &qword_280A12B30, &qword_2759CFBF0);
  v142 = v153;
  sub_27586FBC8(v132, v153, &qword_280A12AE8, &qword_2759CFB80);
  v143 = v154;
  sub_27586FBC8(v141, v154, &qword_280A12AD0, &qword_2759CFB68);
  v144 = v162;
  sub_27586FBC8(v142, v162, &qword_280A12AE8, &qword_2759CFB80);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12B50, &qword_2759CFC00);
  sub_27586FBC8(v143, v144 + *(v145 + 48), &qword_280A12AD0, &qword_2759CFB68);
  sub_27586BF04(v143, &qword_280A12AD0, &qword_2759CFB68);
  sub_27586BF04(v142, &qword_280A12AE8, &qword_2759CFB80);
  sub_27586FBC8(v144, v165, &qword_280A12AC8, &qword_2759CFB60);
  swift_storeEnumTagMultiPayload();
  sub_2759A4640();
  sub_27589B02C(&qword_280A12B78, &qword_280A12AC8, &qword_2759CFB60, MEMORY[0x277CE14C0]);
  v68 = v172;
  sub_2759B95E8();
  sub_27586BF04(v144, &qword_280A12AC8, &qword_2759CFB60);
  sub_27586BF04(v141, &qword_280A12AD0, &qword_2759CFB68);
  sub_27586BF04(v156, &qword_280A12AE8, &qword_2759CFB80);
  v52 = v175;
LABEL_16:
  v69 = v177;
  *&v188 = v177;
  *(&v188 + 1) = v52;
  sub_2759B9D68();
  v70 = v178;
  v71 = sub_275881A20();

  if ((v71 & 1) != 0 && (*&v188 = v69, *(&v188 + 1) = v52, sub_2759B9D68(), v72 = v178, swift_getKeyPath(), *&v188 = v72, sub_2759B8638(), , v73 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel, swift_beginAccess(), v74 = *&v72[v73], v75 = v74, v72, v74) && (v76 = *&v75[OBJC_IVAR___ICSHomeDataModel_headerCard], v75, v77 = *&v76[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_statefulHeader], v78 = v77, v76, v77))
  {
    v80 = *&v78[OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_subTitle];
    v79 = *&v78[OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_subTitle + 8];

    *&v188 = v80;
    *(&v188 + 1) = v79;
    sub_27589F2D4(v81, v82, v83);
    v84 = sub_2759B99C8();
    v86 = v85;
    LOBYTE(v80) = v87;
    sub_2759B9848();
    v88 = sub_2759B9988();
    v90 = v89;
    v92 = v91;

    sub_27589F328(v84, v86, v80 & 1);

    *&v188 = sub_2759B9C68();
    v93 = sub_2759B9958();
    v95 = v94;
    v97 = v96;
    v99 = v98;
    sub_27589F328(v88, v90, v92 & 1);

    v68 = v172;

    *&v188 = v93;
    *(&v188 + 1) = v95;
    v97 &= 1u;
    LOBYTE(v189) = v97;
    *(&v189 + 1) = v99;
    v100 = v157;
    sub_2759B9B38();
    sub_27589F328(v93, v95, v97);

    sub_27589F26C(v100, v173, &qword_280A0F600, &qword_2759C4210);
    v101 = 0;
  }

  else
  {
    v101 = 1;
  }

  v102 = v173;
  (*(v168 + 56))(v173, v101, 1, v169);
  v103 = v167;
  sub_27586FBC8(v68, v167, &qword_280A12B18, &qword_2759CFBB0);
  v104 = v170;
  sub_27586FBC8(v102, v170, &qword_280A12AC0, &qword_2759CFB58);
  v105 = v171;
  sub_27586FBC8(v103, v171, &qword_280A12B18, &qword_2759CFBB0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12B80, &qword_2759CFC08);
  sub_27586FBC8(v104, v105 + *(v106 + 48), &qword_280A12AC0, &qword_2759CFB58);
  sub_27586BF04(v102, &qword_280A12AC0, &qword_2759CFB58);
  sub_27586BF04(v68, &qword_280A12B18, &qword_2759CFBB0);
  sub_27586BF04(v104, &qword_280A12AC0, &qword_2759CFB58);
  return sub_27586BF04(v103, &qword_280A12B18, &qword_2759CFBB0);
}

uint64_t sub_27599EC70@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2759BA038();
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0x4010000000000000;
  *(a2 + 48) = 256;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12B88, &qword_2759CFC10);
  return sub_27599ECF4(a1, a2 + *(v5 + 44));
}

uint64_t sub_27599ECF4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12BA8, &qword_2759CFC20);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12BB0, &qword_2759CFC28);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  *v15 = sub_2759B9418();
  *(v15 + 1) = 0x4020000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12BB8, &qword_2759CFC30);
  sub_27599EF4C(a1, &v15[*(v16 + 44)]);
  *v9 = sub_2759B9418();
  *(v9 + 1) = 0x4020000000000000;
  v9[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12BC0, &qword_2759CFC38);
  sub_27599F788(a1, &v9[*(v17 + 44)]);
  sub_27586FBC8(v15, v13, &qword_280A12BB0, &qword_2759CFC28);
  sub_27586FBC8(v9, v7, &qword_280A12BA8, &qword_2759CFC20);
  sub_27586FBC8(v13, a2, &qword_280A12BB0, &qword_2759CFC28);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12BC8, &qword_2759CFC40);
  v19 = a2 + *(v18 + 48);
  *v19 = 0x4020000000000000;
  *(v19 + 8) = 0;
  sub_27586FBC8(v7, a2 + *(v18 + 64), &qword_280A12BA8, &qword_2759CFC20);
  sub_27586BF04(v9, &qword_280A12BA8, &qword_2759CFC20);
  sub_27586BF04(v15, &qword_280A12BB0, &qword_2759CFC28);
  sub_27586BF04(v7, &qword_280A12BA8, &qword_2759CFC20);
  return sub_27586BF04(v13, &qword_280A12BB0, &qword_2759CFC28);
}

uint64_t sub_27599EF4C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v70 = type metadata accessor for SimpleStorageMeter(0);
  MEMORY[0x28223BE20](v70);
  v4 = (v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12BD8, &qword_2759CFCE0);
  v5 = MEMORY[0x28223BE20](v71);
  v76 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v72 = v69 - v8;
  MEMORY[0x28223BE20](v7);
  v75 = v69 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v74 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v69 - v13;
  v86 = *a1;
  v79 = *a1;
  v69[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v15 = v78[5];
  swift_getKeyPath();
  *&v79 = v15;
  v69[0] = sub_2759A4AEC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v16 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v17 = *&v15[v16];
  v18 = v17;

  v73 = v14;
  if (v17)
  {
    v19 = *&v18[OBJC_IVAR___ICSHomeDataModel_headerCard];

    v20 = *&v19[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary];
    v21 = *&v20[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarLabel];
    v22 = *&v20[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarLabel + 8];
  }

  else
  {
    type metadata accessor for iCloudHomeViewModel(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    v21 = sub_2759B83C8();
    v22 = v24;
  }

  *&v79 = v21;
  *(&v79 + 1) = v22;
  sub_27589F2D4(v25, v26, v27);
  v28 = sub_2759B99C8();
  v30 = v29;
  v32 = v31;
  sub_2759B9858();
  v33 = sub_2759B9988();
  v35 = v34;
  v37 = v36;

  sub_27589F328(v28, v30, v32 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  *&v79 = qword_280A239B8;

  v38 = sub_2759B9958();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_27589F328(v33, v35, v37 & 1);

  *&v79 = v38;
  *(&v79 + 1) = v40;
  v45 = v42 & 1;
  LOBYTE(v80) = v42 & 1;
  *(&v80 + 1) = v44;
  v46 = v73;
  sub_2759B9B38();
  sub_27589F328(v38, v40, v45);

  v79 = v86;
  sub_2759B9D68();
  v47 = v78[0];
  sub_275881B64();
  v49 = v48;

  v79 = v86;
  sub_2759B9D68();
  v50 = v78[0];
  swift_getKeyPath();
  *&v79 = v50;
  sub_2759B8638();

  v51 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v52 = *&v50[v51];
  if (v52)
  {
    v53 = (*(*(v52 + OBJC_IVAR___ICSHomeDataModel_headerCard) + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary) + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarColor);
    v54 = *v53;
    v55 = v53[1];

    v56 = sub_27594972C(v54, v55);
  }

  else
  {
    v56 = sub_2759B9C38();
  }

  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  swift_storeEnumTagMultiPayload();
  v57 = v70;
  *(v4 + *(v70 + 20)) = v49;
  *(v4 + v57[6]) = v56;
  *(v4 + v57[7]) = 0x4024000000000000;
  *(v4 + v57[8]) = 0x4028000000000000;
  sub_2759BA028();
  sub_2759B9128();
  v58 = v72;
  sub_2759A49D8(v4, v72);
  v59 = (v58 + *(v71 + 36));
  v60 = v84;
  v59[4] = v83;
  v59[5] = v60;
  v59[6] = v85;
  v61 = v80;
  *v59 = v79;
  v59[1] = v61;
  v62 = v82;
  v59[2] = v81;
  v59[3] = v62;
  v63 = v75;
  sub_27589F26C(v58, v75, &qword_280A12BD8, &qword_2759CFCE0);
  v64 = v74;
  sub_27586FBC8(v46, v74, &qword_280A0F600, &qword_2759C4210);
  v65 = v76;
  sub_27586FBC8(v63, v76, &qword_280A12BD8, &qword_2759CFCE0);
  v66 = v77;
  sub_27586FBC8(v64, v77, &qword_280A0F600, &qword_2759C4210);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12BE0, &qword_2759CFD18);
  sub_27586FBC8(v65, v66 + *(v67 + 48), &qword_280A12BD8, &qword_2759CFCE0);
  sub_27586BF04(v63, &qword_280A12BD8, &qword_2759CFCE0);
  sub_27586BF04(v46, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v65, &qword_280A12BD8, &qword_2759CFCE0);
  return sub_27586BF04(v64, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_27599F788@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AB8, &qword_2759C7C48);
  v3 = MEMORY[0x28223BE20](v58);
  v62 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = (&v57 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v57 - v10;
  v63 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v11 = v66;
  swift_getKeyPath();
  *&v63 = v11;
  sub_2759A4AEC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v12 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v13 = *&v11[v12];
  v14 = v13;

  if (v13)
  {
    v18 = *&v14[OBJC_IVAR___ICSHomeDataModel_headerCard];

    v19 = *&v18[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary];
    v20 = *&v19[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_usageLabel];
    v21 = *&v19[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_usageLabel + 8];
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  *&v63 = v20;
  *(&v63 + 1) = v21;
  sub_27589F2D4(v15, v16, v17);
  v22 = sub_2759B99C8();
  v24 = v23;
  v26 = v25;
  sub_2759B9858();
  v27 = sub_2759B9988();
  v29 = v28;
  v31 = v30;

  sub_27589F328(v22, v24, v26 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  *&v63 = qword_280A239C0;

  v32 = sub_2759B9958();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_27589F328(v27, v29, v31 & 1);

  *&v63 = v32;
  *(&v63 + 1) = v34;
  v64 = v36 & 1;
  v65 = v38;
  v39 = v59;
  sub_2759B9B38();
  sub_27589F328(v32, v34, v36 & 1);

  v40 = sub_2759B9CB8();
  v41 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC0, &qword_2759C7C78) + 36));
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F1A8, &qword_2759C8C00) + 28);
  v43 = *MEMORY[0x277CE1050];
  v44 = sub_2759B9D18();
  (*(*(v44 - 8) + 104))(v41 + v42, v43, v44);
  *v41 = swift_getKeyPath();
  *v6 = v40;
  v45 = sub_2759B98F8();
  KeyPath = swift_getKeyPath();
  v47 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC8, &qword_2759C7CE0) + 36));
  *v47 = KeyPath;
  v47[1] = v45;
  v48 = [objc_opt_self() tertiaryLabelColor];
  v49 = sub_2759B9BD8();
  v50 = swift_getKeyPath();
  v51 = (v6 + *(v58 + 36));
  *v51 = v50;
  v51[1] = v49;
  v52 = v60;
  sub_27586FBC8(v39, v60, &qword_280A0F600, &qword_2759C4210);
  v53 = v62;
  sub_27586FBC8(v6, v62, &qword_280A10AB8, &qword_2759C7C48);
  v54 = v61;
  sub_27586FBC8(v52, v61, &qword_280A0F600, &qword_2759C4210);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12BD0, &qword_2759CFCD8);
  sub_27586FBC8(v53, v54 + *(v55 + 48), &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v6, &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v39, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v53, &qword_280A10AB8, &qword_2759C7C48);
  return sub_27586BF04(v52, &qword_280A0F600, &qword_2759C4210);
}

void sub_27599FD70(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  iCloudHomeViewModel.showManageStorageView(deeplinkPath:)(0);
}

uint64_t sub_27599FDD0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2759B9418();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12BE8, &qword_2759CFD20);
  return sub_27599FE28(a1, a2 + *(v4 + 44));
}

uint64_t sub_27599FE28@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AB8, &qword_2759C7C48);
  v3 = MEMORY[0x28223BE20](v92);
  v97 = v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v93 = (v91 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v95 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v94 = v91 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v99 = v91 - v12;
  MEMORY[0x28223BE20](v11);
  v98 = v91 - v13;
  v105 = *a1;
  v101 = *a1;
  v91[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v14 = v104;
  swift_getKeyPath();
  *&v101 = v14;
  v91[1] = sub_2759A4AEC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v15 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v16 = *&v14[v15];
  v17 = v16;

  if (v16)
  {
    v18 = *&v17[OBJC_IVAR___ICSHomeDataModel_headerCard];

    v19 = *&v18[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary];
    v20 = *&v19[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarLabel];
    v21 = *&v19[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarLabel + 8];
  }

  else
  {
    type metadata accessor for iCloudHomeViewModel(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    v20 = sub_2759B83C8();
    v21 = v23;
  }

  *&v101 = v20;
  *(&v101 + 1) = v21;
  sub_27589F2D4(v24, v25, v26);
  v27 = sub_2759B99C8();
  v29 = v28;
  v31 = v30;
  sub_2759B9858();
  v32 = sub_2759B9988();
  v34 = v33;
  v36 = v35;

  sub_27589F328(v27, v29, v31 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  *&v101 = qword_280A239B8;

  v37 = sub_2759B9958();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_27589F328(v32, v34, v36 & 1);

  *&v101 = v37;
  *(&v101 + 1) = v39;
  v102 = v41 & 1;
  v103 = v43;
  sub_2759B9B38();
  sub_27589F328(v37, v39, v41 & 1);

  v101 = v105;
  sub_2759B9D68();
  v44 = v100;
  swift_getKeyPath();
  *&v101 = v44;
  sub_2759B8638();

  v45 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v46 = *&v44[v45];
  v47 = v46;

  if (v46)
  {
    v48 = *&v47[OBJC_IVAR___ICSHomeDataModel_headerCard];

    v49 = *&v48[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary];
    v46 = *&v49[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_usageLabel];
    v50 = *&v49[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_usageLabel + 8];
  }

  else
  {
    v50 = 0xE000000000000000;
  }

  *&v101 = v46;
  *(&v101 + 1) = v50;
  v51 = sub_2759B99C8();
  v53 = v52;
  v55 = v54;
  sub_2759B9858();
  v56 = sub_2759B9988();
  v58 = v57;
  v60 = v59;

  sub_27589F328(v51, v53, v55 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  *&v101 = qword_280A239C0;

  v61 = sub_2759B9958();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  sub_27589F328(v56, v58, v60 & 1);

  *&v101 = v61;
  *(&v101 + 1) = v63;
  v102 = v65 & 1;
  v103 = v67;
  v68 = v99;
  sub_2759B9B38();
  sub_27589F328(v61, v63, v65 & 1);

  v69 = sub_2759B9CB8();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC0, &qword_2759C7C78);
  v71 = v93;
  v72 = (v93 + *(v70 + 36));
  v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F1A8, &qword_2759C8C00) + 28);
  v74 = *MEMORY[0x277CE1050];
  v75 = sub_2759B9D18();
  (*(*(v75 - 8) + 104))(v72 + v73, v74, v75);
  *v72 = swift_getKeyPath();
  *v71 = v69;
  v76 = sub_2759B98F8();
  KeyPath = swift_getKeyPath();
  v78 = (v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC8, &qword_2759C7CE0) + 36));
  *v78 = KeyPath;
  v78[1] = v76;
  v79 = [objc_opt_self() tertiaryLabelColor];
  v80 = sub_2759B9BD8();
  v81 = swift_getKeyPath();
  v82 = (v71 + *(v92 + 36));
  *v82 = v81;
  v82[1] = v80;
  v83 = v98;
  v84 = v94;
  sub_27586FBC8(v98, v94, &qword_280A0F600, &qword_2759C4210);
  v85 = v95;
  sub_27586FBC8(v68, v95, &qword_280A0F600, &qword_2759C4210);
  v86 = v97;
  sub_27586FBC8(v71, v97, &qword_280A10AB8, &qword_2759C7C48);
  v87 = v96;
  sub_27586FBC8(v84, v96, &qword_280A0F600, &qword_2759C4210);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12BF0, &qword_2759CFD28);
  v89 = v87 + v88[12];
  *v89 = 0x4020000000000000;
  *(v89 + 8) = 0;
  sub_27586FBC8(v85, v87 + v88[16], &qword_280A0F600, &qword_2759C4210);
  sub_27586FBC8(v86, v87 + v88[20], &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v71, &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v99, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v83, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v86, &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v85, &qword_280A0F600, &qword_2759C4210);
  return sub_27586BF04(v84, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_2759A07FC@<X0>(__int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_2759BA038();
  a3[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11118, &qword_2759CA070);
  return sub_2759A085C(a2, a3 + *(v6 + 44));
}

uint64_t sub_2759A085C@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v44 = a1;
  v50 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11120, &qword_2759CA078);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v43 = &v43 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11128, &qword_2759CA080);
  v5 = MEMORY[0x28223BE20](v46);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v45 = &v43 - v8;
  MEMORY[0x28223BE20](v7);
  v48 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11130, &qword_2759CA088);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v47 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - v14;
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_2759B94B8();
  v18 = *(*(v17 - 8) + 104);
  v18(v15, v16, v17);
  sub_2759B8F48();
  sub_2759B8F48();
  sub_2759BA028();
  sub_2759B8F18();
  v19 = &v15[*(v3 + 44)];
  v20 = v54;
  *v19 = v53;
  *(v19 + 1) = v20;
  *(v19 + 2) = v55;
  sub_2759B9C18();
  v21 = sub_2759B9C58();
  v22 = v43;

  KeyPath = swift_getKeyPath();
  v24 = &v15[*(v11 + 44)];
  *v24 = KeyPath;
  v24[1] = v21;
  v18(v22, v16, v17);
  sub_2759B8F48();
  v25 = v44;
  v56 = *v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v26 = v51;
  sub_275881B64();

  sub_2759BA028();
  sub_2759B8F18();
  v27 = (v22 + *(v3 + 44));
  v28 = v57;
  *v27 = v56;
  v27[1] = v28;
  v27[2] = v58;
  v51 = *v25;
  sub_2759B9D68();
  v29 = v52;
  swift_getKeyPath();
  *&v51 = v29;
  sub_2759A4AEC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v30 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v31 = *&v29[v30];
  if (v31)
  {
    v32 = (*(*(v31 + OBJC_IVAR___ICSHomeDataModel_headerCard) + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary) + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarColor);
    v33 = *v32;
    v34 = v32[1];

    v35 = sub_27594972C(v33, v34);
  }

  else
  {
    v35 = sub_2759B9C38();
  }

  v36 = v45;
  sub_27589F26C(v22, v45, &qword_280A11120, &qword_2759CA078);
  *(v36 + *(v46 + 36)) = v35;
  v37 = v48;
  sub_27589F26C(v36, v48, &qword_280A11128, &qword_2759CA080);
  v38 = v47;
  sub_27586FBC8(v15, v47, &qword_280A11130, &qword_2759CA088);
  v39 = v49;
  sub_27586FBC8(v37, v49, &qword_280A11128, &qword_2759CA080);
  v40 = v50;
  sub_27586FBC8(v38, v50, &qword_280A11130, &qword_2759CA088);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11138, &qword_2759CA0C0);
  sub_27586FBC8(v39, v40 + *(v41 + 48), &qword_280A11128, &qword_2759CA080);
  sub_27586BF04(v37, &qword_280A11128, &qword_2759CA080);
  sub_27586BF04(v15, &qword_280A11130, &qword_2759CA088);
  sub_27586BF04(v39, &qword_280A11128, &qword_2759CA080);
  return sub_27586BF04(v38, &qword_280A11130, &qword_2759CA088);
}

uint64_t sub_2759A0DF8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12C20, &qword_2759CFD70);
  v44 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v42 = (&v37 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12C28, &qword_2759CFD78);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v41 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12C30, &qword_2759CFD80);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12C38, &qword_2759CFD88);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  *v20 = sub_2759B94F8();
  *(v20 + 1) = 0xC000000000000000;
  v20[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12C40, &qword_2759CFD90);
  sub_2759A13D4(a1, &v20[*(v21 + 44)]);
  v48[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v22 = v46[0];
  v23 = iCloudHomeViewModel.canShowSubscriberBranding.getter();

  if (v23)
  {
    v24 = sub_2759BA028();
    v38 = v25;
    v39 = v24;
    sub_2759A23A4(*&a1, v48);
    memcpy(v49, v48, 0x179uLL);
    memcpy(v50, v48, 0x179uLL);
    sub_27586FBC8(v49, v46, &qword_280A12C50, &qword_2759CFDA0);
    sub_27586BF04(v50, &qword_280A12C50, &qword_2759CFDA0);
    memcpy(v47, v49, sizeof(v47));
    v48[0] = a1[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F280, &qword_2759C3728);
    sub_2759B9D68();
    if (LOBYTE(v46[0]))
    {
      v26 = 1.0;
    }

    else
    {
      v26 = 0.0;
    }

    v27 = sub_2759BA088();
    v40 = v3;
    v28 = v27;
    v48[0] = a1[1];
    sub_2759B9D68();
    v29 = v46[0];
    v46[0] = v39;
    v46[1] = v38;
    memcpy(&v46[2], v47, 0x179uLL);
    *&v46[50] = v26;
    v46[51] = v28;
    LOBYTE(v46[52]) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12C58, &qword_2759CFDA8);
    sub_2759A4C3C();
    v30 = v41;
    sub_2759B9B38();
    memcpy(v48, v46, 0x1A1uLL);
    sub_27586BF04(v48, &qword_280A12C58, &qword_2759CFDA8);
    v31 = v43;
    sub_27586FBC8(v30, v43, &qword_280A12C28, &qword_2759CFD78);
    v32 = v42;
    *v42 = 0x401C000000000000;
    *(v32 + 8) = 0;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12C98, &qword_2759CFDC8);
    sub_27586FBC8(v31, v32 + *(v33 + 48), &qword_280A12C28, &qword_2759CFD78);
    sub_27586BF04(v30, &qword_280A12C28, &qword_2759CFD78);
    sub_27586BF04(v31, &qword_280A12C28, &qword_2759CFD78);
    sub_27589F26C(v32, v14, &qword_280A12C20, &qword_2759CFD70);
    (*(v44 + 56))(v14, 0, 1, v40);
  }

  else
  {
    (*(v44 + 56))(v14, 1, 1, v3);
  }

  sub_27586FBC8(v20, v18, &qword_280A12C38, &qword_2759CFD88);
  sub_27586FBC8(v14, v12, &qword_280A12C30, &qword_2759CFD80);
  v34 = v45;
  sub_27586FBC8(v18, v45, &qword_280A12C38, &qword_2759CFD88);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12C48, &qword_2759CFD98);
  sub_27586FBC8(v12, v34 + *(v35 + 48), &qword_280A12C30, &qword_2759CFD80);
  sub_27586BF04(v14, &qword_280A12C30, &qword_2759CFD80);
  sub_27586BF04(v20, &qword_280A12C38, &qword_2759CFD88);
  sub_27586BF04(v12, &qword_280A12C30, &qword_2759CFD80);
  return sub_27586BF04(v18, &qword_280A12C38, &qword_2759CFD88);
}

uint64_t sub_2759A13D4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v148 = a2;
  v3 = sub_2759B9488();
  MEMORY[0x28223BE20](v3 - 8);
  *&v138 = v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CE8, &qword_2759CFE30);
  v145 = *(v154 - 8);
  v5 = MEMORY[0x28223BE20](v154);
  v143 = v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v133 = v129 - v7;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CF0, &qword_2759CFE38);
  v8 = MEMORY[0x28223BE20](v151);
  v139 = v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v131 = (v129 - v10);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CF8, &qword_2759CFE40);
  v11 = MEMORY[0x28223BE20](v149);
  v142 = v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = v129 - v13;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12D00, &qword_2759CFE48);
  v14 = MEMORY[0x28223BE20](v150);
  v141 = v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v136 = v129 - v16;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12D08, &qword_2759CFE50);
  v17 = MEMORY[0x28223BE20](v153);
  v140 = v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  *&v137 = v129 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12D10, &qword_2759CFE58);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v147 = v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v146 = v129 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v144 = v129 - v26;
  MEMORY[0x28223BE20](v25);
  v152 = v129 - v27;
  v166 = *a1;
  v163 = *a1;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v28 = v159;
  v29 = iCloudHomeViewModel.headerCardSubscriptionLabel.getter();
  v31 = v30;

  *&v163 = v29;
  *(&v163 + 1) = v31;
  sub_27589F2D4(v32, v33, v34);
  v35 = sub_2759B99C8();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = objc_opt_self();
  v43 = [v42 currentDevice];
  v44 = &selRef_ics_loadBundle_atPath_;
  v45 = [v43 userInterfaceIdiom];

  if (v45 == 1 || (v46 = [v42 currentDevice], v47 = objc_msgSend(v46, sel_userInterfaceIdiom), v46, v47 == 6))
  {
    sub_2759B9838();
    v48 = sub_2759B9988();
    v50 = v49;
    *&v135 = v41;
    v51 = v42;
    v53 = v52;
    v55 = v54;

    v56 = v53 & 1;
    v42 = v51;
    *&v159 = v48;
    *(&v159 + 1) = v50;
    *&v160 = v56;
    *(&v160 + 1) = v55;
    v161[0] = 0;
    sub_27589F3E4(v48, v50, v56);

    sub_27589F3E4(v48, v50, v56);

    sub_2759B95E8();
    sub_27589F328(v35, v37, v39 & 1);

    sub_27589F328(v48, v50, v56);

    v57 = v56;
    v44 = &selRef_ics_loadBundle_atPath_;
    sub_27589F328(v48, v50, v57);
  }

  else
  {
    *&v159 = v35;
    *(&v159 + 1) = v37;
    *&v160 = v39 & 1;
    *(&v160 + 1) = v41;
    v161[0] = 1;
    sub_2759B95E8();
  }

  v134 = v163;
  v135 = v164;
  v58 = v165[0];
  v59 = [v42 currentDevice];
  v60 = [v59 v44[468]];

  v61 = v145;
  if (v60 == 1 || (v62 = [v42 currentDevice], v63 = objc_msgSend(v62, v44[468]), v62, v63 == 6))
  {
    LOBYTE(v155) = v58;
    v162 = 1;
    v159 = v134;
    v160 = v135;
    v161[0] = v58;
    v161[24] = 1;
  }

  else
  {
    v64 = sub_2759B9868();
    KeyPath = swift_getKeyPath();
    LOBYTE(v155) = v58;
    v162 = 0;
    v159 = v134;
    v160 = v135;
    v161[0] = v58;
    *&v161[8] = KeyPath;
    *&v161[16] = v64;
    v161[24] = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12D18, &qword_2759CFE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12D20, &qword_2759CFE68);
  sub_2759A5498();
  sub_2759A5550();
  sub_2759B95E8();
  v159 = v163;
  v160 = v164;
  *v161 = v165[0];
  *&v161[9] = *(v165 + 9);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12D38, &qword_2759CFE70);
  v67 = sub_2759A55CC();
  v68 = v133;
  *&v135 = v66;
  *&v134 = v67;
  sub_2759B9B48();
  sub_27586BF04(&v163, &qword_280A12D38, &qword_2759CFE70);
  v69 = swift_getKeyPath();
  v70 = v131;
  v145 = v61[4];
  (v145)(v131, v68, v154);
  v71 = v70 + *(v151 + 36);
  *v71 = v69;
  *(v71 + 8) = 2;
  *(v71 + 16) = 0;
  v72 = swift_getKeyPath();
  v73 = v132;
  sub_27589F26C(v70, v132, &qword_280A12CF0, &qword_2759CFE38);
  v74 = v73 + *(v149 + 36);
  *v74 = v72;
  *(v74 + 8) = 0;
  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  v75 = qword_280A239B8;
  v76 = v136;
  sub_27589F26C(v73, v136, &qword_280A12CF8, &qword_2759CFE40);
  *(v76 + *(v150 + 36)) = v75;
  v77 = v137;
  v78 = (v137 + *(v153 + 36));
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12D48, &qword_2759CFED8);
  v79 = *(v133 + 7);
  v80 = sub_2759B9968();
  v81 = *(v80 - 8);
  v131 = *(v81 + 56);
  v132 = v80;
  v129[1] = v81 + 56;
  v131(v78 + v79, 1, 1);
  *v78 = swift_getKeyPath();
  sub_27589F26C(v76, v77, &qword_280A12D00, &qword_2759CFE48);
  v82 = sub_2759A5658();

  v136 = v82;
  sub_2759B9B38();
  sub_27586BF04(v77, &qword_280A12D08, &qword_2759CFE50);
  sub_2759B9478();
  sub_2759B9468();
  v159 = v166;
  sub_2759B9D68();
  v83 = v155;
  sub_27587E9C4();

  sub_2759B9458();

  sub_2759B9468();
  sub_2759B94A8();
  v84 = sub_2759B9998();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = &selRef_setNetworkError;
  v92 = [v42 currentDevice];
  v93 = [v92 userInterfaceIdiom];

  if (v93 == 1 || (v94 = [v42 currentDevice], v95 = objc_msgSend(v94, sel_userInterfaceIdiom), v94, v95 == 6))
  {
    sub_2759B9838();
    v96 = sub_2759B9988();
    v98 = v97;
    *&v138 = v90;
    v100 = v99;
    v130 = v42;
    v102 = v101;

    *&v155 = v96;
    *(&v155 + 1) = v98;
    *&v156 = v100 & 1;
    *(&v156 + 1) = v102;
    LOBYTE(v157[0]) = 0;
    sub_27589F3E4(v96, v98, v100 & 1);

    sub_27589F3E4(v96, v98, v100 & 1);

    sub_2759B95E8();
    sub_27589F328(v84, v86, v88 & 1);

    sub_27589F328(v96, v98, v100 & 1);

    v103 = v96;
    v91 = &selRef_setNetworkError;
    sub_27589F328(v103, v98, v100 & 1);
    v42 = v130;
  }

  else
  {
    *&v155 = v84;
    *(&v155 + 1) = v86;
    *&v156 = v88 & 1;
    *(&v156 + 1) = v90;
    LOBYTE(v157[0]) = 1;
    sub_2759B95E8();
  }

  v137 = v159;
  v138 = v160;
  v104 = v161[0];
  v105 = [v42 v91[419]];
  v106 = [v105 userInterfaceIdiom];

  if (v106 == 1 || (v107 = [v42 v91[419]], v108 = objc_msgSend(v107, sel_userInterfaceIdiom), v107, v108 == 6))
  {
    v162 = v104;
    v158 = 1;
    v155 = v137;
    v156 = v138;
    LOBYTE(v157[0]) = v104;
    BYTE8(v157[1]) = 1;
  }

  else
  {
    v109 = sub_2759B9868();
    v110 = swift_getKeyPath();
    v162 = v104;
    v158 = 0;
    v155 = v137;
    v156 = v138;
    LOBYTE(v157[0]) = v104;
    *(&v157[0] + 1) = v110;
    *&v157[1] = v109;
    BYTE8(v157[1]) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12D18, &qword_2759CFE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12D20, &qword_2759CFE68);
  sub_2759A5498();
  sub_2759A5550();
  sub_2759B95E8();
  v155 = v159;
  v156 = v160;
  v157[0] = *v161;
  *(v157 + 9) = *&v161[9];
  v111 = v143;
  sub_2759B9B48();
  sub_27586BF04(&v159, &qword_280A12D38, &qword_2759CFE70);
  v112 = swift_getKeyPath();
  v113 = v139;
  (v145)(v139, v111, v154);
  v114 = v113 + *(v151 + 36);
  *v114 = v112;
  *(v114 + 8) = 2;
  *(v114 + 16) = 0;
  v115 = swift_getKeyPath();
  v116 = v142;
  sub_27589F26C(v113, v142, &qword_280A12CF0, &qword_2759CFE38);
  v117 = v116 + *(v149 + 36);
  *v117 = v115;
  *(v117 + 8) = 0;
  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v118 = qword_280A239C0;
  v119 = v141;
  sub_27589F26C(v116, v141, &qword_280A12CF8, &qword_2759CFE40);
  *(v119 + *(v150 + 36)) = v118;
  v120 = v140;
  v121 = &v140[*(v153 + 36)];
  (v131)(v121 + *(v133 + 7), 1, 1, v132);
  *v121 = swift_getKeyPath();
  sub_27589F26C(v119, v120, &qword_280A12D00, &qword_2759CFE48);

  v122 = v144;
  sub_2759B9B38();
  sub_27586BF04(v120, &qword_280A12D08, &qword_2759CFE50);
  v123 = v152;
  v124 = v146;
  sub_27586FBC8(v152, v146, &qword_280A12D10, &qword_2759CFE58);
  v125 = v147;
  sub_27586FBC8(v122, v147, &qword_280A12D10, &qword_2759CFE58);
  v126 = v148;
  sub_27586FBC8(v124, v148, &qword_280A12D10, &qword_2759CFE58);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12D78, &qword_2759CFF10);
  sub_27586FBC8(v125, v126 + *(v127 + 48), &qword_280A12D10, &qword_2759CFE58);
  sub_27586BF04(v122, &qword_280A12D10, &qword_2759CFE58);
  sub_27586BF04(v123, &qword_280A12D10, &qword_2759CFE58);
  sub_27586BF04(v125, &qword_280A12D10, &qword_2759CFE58);
  return sub_27586BF04(v124, &qword_280A12D10, &qword_2759CFE58);
}

uint64_t sub_2759A23A4@<X0>(double a1@<X0>, void *a2@<X8>)
{
  v81 = a2;
  v82 = a1;
  v2 = sub_2759B9CC8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CA0, &qword_2759CFDD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v65 - v7;
  sub_2759A4E5C();
  sub_2759B9C98();
  v9 = *MEMORY[0x277CE1020];
  v10 = sub_2759B9CF8();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v8, v9, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  sub_2759B9CD8();

  sub_27586BF04(v8, &qword_280A12CA0, &qword_2759CFDD0);
  v12 = *(v3 + 104);
  v67 = *MEMORY[0x277CE0FE0];
  v68 = v3 + 104;
  v66 = v12;
  v12(v5);
  v13 = sub_2759B9D28();

  v14 = *(v3 + 8);
  v69 = *&v5;
  v71 = v3 + 8;
  v72 = v2;
  v65 = v14;
  v14(v5, v2);
  v15 = objc_opt_self();
  v16 = [v15 currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if (v17 == 1 || (v18 = [v15 currentDevice], v19 = objc_msgSend(v18, sel_userInterfaceIdiom), v18, v19 == 6))
  {
    sub_2759BA028();
    sub_2759B8F18();
    LOBYTE(v86) = v190;
    LOBYTE(v105) = v192;
    LOBYTE(v100[0]) = 0;
    *&v119 = v13;
    *(&v119 + 1) = v189;
    LOBYTE(v120) = v190;
    *(&v120 + 1) = v191;
    LOBYTE(v121[0]) = v192;
    *(v121 + 8) = v193;
    BYTE8(v121[1]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CA8, &qword_2759CFDD8);
    sub_2759A52B0();
    sub_2759B95E8();
  }

  else
  {
    LOBYTE(v105) = 1;
    *&v86 = v13;
    BYTE8(v89) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CA8, &qword_2759CFDD8);
    sub_2759A52B0();
    sub_2759B95E8();
    v200 = v119;
    v201 = v120;
    v202[0] = v121[0];
    *(v202 + 9) = *(v121 + 9);
  }

  v20 = [v15 currentDevice];
  v21 = [v20 userInterfaceIdiom];

  v22 = v82;
  if (v21 == 1 || (v23 = [v15 currentDevice], v24 = objc_msgSend(v23, sel_userInterfaceIdiom), v23, v24 == 6))
  {
    v119 = v200;
    v120 = v201;
    v121[0] = v202[0];
    *(v121 + 9) = *(v202 + 9);
    LOBYTE(v86) = 1;
    LOBYTE(v125) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CB8, &qword_2759CFDE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CC0, &qword_2759CFDE8);
    sub_2759A5334();
    sub_2759A53C0();
    sub_2759B95E8();
  }

  else
  {
    sub_2759BA028();
    sub_2759B8F18();
    *(v121 + 9) = *(v202 + 9);
    v121[0] = v202[0];
    v119 = v200;
    v120 = v201;
    v109 = v122;
    v110 = v123;
    v111 = v124;
    v105 = v200;
    v106 = v201;
    v107 = v202[0];
    v108 = v121[1];
    v90 = v122;
    v91 = v123;
    v92 = v124;
    v86 = v200;
    v87 = v201;
    v88 = v202[0];
    v89 = v121[1];
    sub_27586FBC8(&v200, v100, &qword_280A12CC0, &qword_2759CFDE8);
    sub_27586FBC8(&v105, v100, &qword_280A12CB8, &qword_2759CFDE0);
    sub_27586BF04(&v86, &qword_280A12CB8, &qword_2759CFDE0);
    v122 = v109;
    v123 = v110;
    v124 = v111;
    v119 = v105;
    v120 = v106;
    v121[1] = v108;
    v121[0] = v107;
    LOBYTE(v165) = 0;
    LOBYTE(v125) = 0;
    sub_27586FBC8(&v105, v100, &qword_280A12CB8, &qword_2759CFDE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CB8, &qword_2759CFDE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CC0, &qword_2759CFDE8);
    sub_2759A5334();
    sub_2759A53C0();
    sub_2759B95E8();
    sub_27586BF04(&v200, &qword_280A12CC0, &qword_2759CFDE8);
    v22 = v82;
    sub_27586BF04(&v105, &qword_280A12CB8, &qword_2759CFDE0);
  }

  v169 = v185;
  v170 = v186;
  v171 = v187;
  v172 = v188;
  v165 = v181;
  v166 = v182;
  v167 = v183;
  v168 = v184;
  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  v25 = qword_280A239B8;
  KeyPath = swift_getKeyPath();
  v80 = v25;
  v177 = v169;
  v178 = v170;
  v179 = v171;
  LOBYTE(v180) = v172;
  v173 = v165;
  v174 = v166;
  v175 = v167;
  v176 = v168;

  v78 = sub_2759B9C68();
  v199 = *(*&v22 + 16);
  v119 = *(*&v22 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F280, &qword_2759C3728);
  sub_2759B9D68();
  if (v86 != 1 || (v119 = *(*&v22 + 32), sub_2759B9D68(), v26 = 1.0, (v86 & 1) == 0))
  {
    v26 = 0.0;
  }

  v77 = v26;
  v119 = *(*&v22 + 16);
  sub_2759B9D68();
  if (v86 != 1 || (v119 = *(*&v22 + 32), sub_2759B9D68(), v27 = 1.0, (v86 & 1) == 0))
  {
    v27 = 0.0;
  }

  sub_2759BA118();
  v75 = v29;
  v76 = v28;
  v119 = *(*&v22 + 16);
  sub_2759B9D68();
  if (v86 != 1 || (v119 = *(*&v22 + 32), sub_2759B9D68(), v30 = 0, (v86 & 1) == 0))
  {
    v30 = 0xBFEBECDE5DA115A9;
  }

  v84 = v30;
  sub_2759BA118();
  v83 = v31;
  v74 = v32;
  v73 = sub_2759BA058();
  v119 = *(*&v22 + 16);
  sub_2759B9D68();
  if (v86 == 1)
  {
    v119 = *(*&v22 + 32);
    sub_2759B9D68();
    v70 = v86;
  }

  else
  {
    v70 = 0;
  }

  type metadata accessor for iCloudHomeViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = [objc_opt_self() bundleForClass_];
  sub_2759B9D38();
  v35 = v69;
  v36 = v72;
  v66(*&v69, v67, v72);
  v37 = sub_2759B9D28();

  v65(*&v35, v36);
  v38 = [v15 currentDevice];
  v39 = [v38 userInterfaceIdiom];

  if (v39 == 1 || (v40 = [v15 currentDevice], v41 = objc_msgSend(v40, sel_userInterfaceIdiom), v40, v41 == 6))
  {
    sub_2759BA028();
    sub_2759B8F18();
    LOBYTE(v86) = v195;
    LOBYTE(v105) = v197;
    LOBYTE(v100[0]) = 0;
    *&v119 = v37;
    *(&v119 + 1) = v194;
    LOBYTE(v120) = v195;
    *(&v120 + 1) = v196;
    LOBYTE(v121[0]) = v197;
    *(v121 + 8) = v198;
    BYTE8(v121[1]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CA8, &qword_2759CFDD8);
    sub_2759A52B0();
    sub_2759B95E8();
  }

  else
  {
    LOBYTE(v86) = 1;
    *&v119 = v37;
    BYTE8(v121[1]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CA8, &qword_2759CFDD8);
    sub_2759A52B0();
    sub_2759B95E8();
  }

  v42 = [v15 currentDevice];
  v43 = [v42 userInterfaceIdiom];

  if (v43 == 1 || (v44 = [v15 currentDevice], v45 = objc_msgSend(v44, sel_userInterfaceIdiom), v44, v45 == 6))
  {
    v119 = v162;
    v120 = v163;
    v121[0] = v164[0];
    *(v121 + 9) = *(v164 + 9);
    LOBYTE(v86) = 1;
    LOBYTE(v125) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CB8, &qword_2759CFDE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CC0, &qword_2759CFDE8);
    sub_2759A5334();
    sub_2759A53C0();
    sub_2759B95E8();
  }

  else
  {
    sub_2759BA028();
    sub_2759B8F18();
    *(v121 + 9) = *(v164 + 9);
    v121[0] = v164[0];
    v119 = v162;
    v120 = v163;
    v109 = v122;
    v110 = v123;
    v111 = v124;
    v105 = v162;
    v106 = v163;
    v107 = v164[0];
    v108 = v121[1];
    v90 = v122;
    v91 = v123;
    v92 = v124;
    v86 = v162;
    v87 = v163;
    v88 = v164[0];
    v89 = v121[1];
    sub_27586FBC8(&v162, v100, &qword_280A12CC0, &qword_2759CFDE8);
    sub_27586FBC8(&v105, v100, &qword_280A12CB8, &qword_2759CFDE0);
    sub_27586BF04(&v86, &qword_280A12CB8, &qword_2759CFDE0);
    v122 = v109;
    v123 = v110;
    v124 = v111;
    v119 = v105;
    v120 = v106;
    v121[1] = v108;
    v121[0] = v107;
    LOBYTE(v146) = 0;
    LOBYTE(v125) = 0;
    sub_27586FBC8(&v105, v100, &qword_280A12CB8, &qword_2759CFDE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CB8, &qword_2759CFDE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CC0, &qword_2759CFDE8);
    sub_2759A5334();
    sub_2759A53C0();
    v22 = v82;
    sub_2759B95E8();
    sub_27586BF04(&v162, &qword_280A12CC0, &qword_2759CFDE8);
    sub_27586BF04(&v105, &qword_280A12CB8, &qword_2759CFDE0);
  }

  v150 = v158;
  v151 = v159;
  v152 = v160;
  v153 = v161;
  v146 = v154;
  v147 = v155;
  v148 = v156;
  v149 = v157;
  v119 = v199;
  sub_2759B9D68();
  v46 = 0.0;
  v47 = 0.0;
  if (v86 == 1)
  {
    v119 = *(*&v22 + 32);
    sub_2759B9D68();
    v47 = v86;
  }

  v82 = v47;
  v119 = v199;
  sub_2759B9D68();
  if (v86 == 1)
  {
    v119 = *(*&v22 + 32);
    sub_2759B9D68();
    v46 = v86;
  }

  sub_2759BA118();
  v71 = v49;
  v72 = v48;
  v142 = v150;
  v143 = v151;
  v144 = v152;
  LOBYTE(v145) = v153;
  v138 = v146;
  v139 = v147;
  v140 = v148;
  v141 = v149;
  v50 = sub_2759BA058();
  v119 = v199;
  sub_2759B9D68();
  if (v86 == 1)
  {
    v119 = *(*&v22 + 32);
    sub_2759B9D68();
    v51 = v86;
  }

  else
  {
    v51 = 0;
  }

  v90 = v177;
  v91 = v178;
  v92 = v179;
  v86 = v173;
  v87 = v174;
  v88 = v175;
  v89 = v176;
  *&v93 = v180;
  v53 = KeyPath;
  v52 = v80;
  *(&v93 + 1) = KeyPath;
  *&v94 = v80;
  v54 = v78;
  *(&v94 + 1) = v78;
  v55 = v77;
  *&v95 = v77;
  *(&v95 + 1) = v27;
  v69 = v27;
  v57 = v75;
  v56 = v76;
  *&v96 = v76;
  *(&v96 + 1) = v75;
  *&v97 = v84;
  *(&v97 + 1) = v83;
  v58 = v74;
  *&v98 = v74;
  v59 = v73;
  *(&v98 + 1) = v73;
  v60 = v70;
  v99 = v70;
  LOBYTE(v85[13]) = v70;
  v85[2] = v175;
  v85[3] = v176;
  v85[4] = v177;
  v85[5] = v178;
  v85[0] = v173;
  v85[1] = v174;
  v85[10] = v96;
  v85[11] = v97;
  v85[12] = v98;
  v85[8] = v94;
  v85[9] = v95;
  v85[6] = v179;
  v85[7] = v93;
  *&v101 = v145;
  v100[4] = v142;
  v100[5] = v143;
  v100[6] = v144;
  v100[0] = v138;
  v100[1] = v139;
  v100[2] = v140;
  v100[3] = v141;
  v61 = v82;
  *(&v101 + 1) = v82;
  *&v102 = v46;
  v63 = v71;
  v62 = v72;
  *(&v102 + 1) = v72;
  *&v103 = v71;
  *(&v103 + 1) = v50;
  v104 = v51;
  *(&v85[21] + 8) = v102;
  *(&v85[22] + 8) = v103;
  *(&v85[19] + 8) = v144;
  *(&v85[20] + 8) = v101;
  *(&v85[17] + 8) = v142;
  *(&v85[18] + 8) = v143;
  *(&v85[16] + 8) = v141;
  BYTE8(v85[23]) = v51;
  *(&v85[15] + 8) = v140;
  *(&v85[14] + 8) = v139;
  *(&v85[13] + 8) = v138;
  memcpy(v81, v85, 0x179uLL);
  v109 = v142;
  v110 = v143;
  v111 = v144;
  v112 = v145;
  v105 = v138;
  v106 = v139;
  v107 = v140;
  v108 = v141;
  v113 = v61;
  v114 = v46;
  v115 = v62;
  v116 = v63;
  v117 = v50;
  v118 = v51;
  sub_27586FBC8(&v86, &v119, &qword_280A12CD8, &qword_2759CFE20);
  sub_27586FBC8(v100, &v119, &qword_280A12CE0, &qword_2759CFE28);
  sub_27586BF04(&v105, &qword_280A12CE0, &qword_2759CFE28);
  v122 = v177;
  v123 = v178;
  v124 = v179;
  v119 = v173;
  v120 = v174;
  v121[0] = v175;
  v121[1] = v176;
  v125 = v180;
  v126 = v53;
  v127 = v52;
  v128 = v54;
  v129 = v55;
  v130 = v69;
  v131 = v56;
  v132 = v57;
  v133 = v84;
  v134 = v83;
  v135 = v58;
  v136 = v59;
  v137 = v60;
  return sub_27586BF04(&v119, &qword_280A12CD8, &qword_2759CFE20);
}

void sub_2759A355C(void *a1, CGPDFPage *a2, CGFloat a3, CGFloat a4)
{
  c = [a1 CGContext];
  CGContextTranslateCTM(c, 0.0, a3);
  CGContextScaleCTM(c, a4, -a4);
  CGContextDrawPDFPage(c, a2);
}

unint64_t sub_2759A3654()
{
  result = qword_280A12A10;
  if (!qword_280A12A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12A18, &qword_2759CFAE8);
    sub_2759A4504(&qword_280A12A20, &qword_280A12A28, &qword_2759CFAF0, sub_2759A370C);
    sub_2759A370C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12A10);
  }

  return result;
}

unint64_t sub_2759A370C()
{
  result = qword_280A12A30;
  if (!qword_280A12A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12A38, &qword_2759CFAF8);
    sub_2759A4504(&qword_280A12A40, &qword_280A12A48, &qword_2759CFB00, sub_2759A37C4);
    sub_2759A37C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12A30);
  }

  return result;
}

unint64_t sub_2759A37C4()
{
  result = qword_280A12A50;
  if (!qword_280A12A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12A58, &qword_2759CFB08);
    sub_27589B02C(&qword_280A12A60, &qword_280A12A68, &qword_2759CFB10, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12A50);
  }

  return result;
}

unint64_t sub_2759A387C()
{
  result = qword_280A12A78;
  if (!qword_280A12A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A129B0, &qword_2759CFA70);
    sub_2759A4504(&qword_280A129F8, &qword_280A129D8, &qword_2759CFA98, sub_2759A3624);
    sub_27589B02C(&qword_280A12A70, &qword_280A129F0, &qword_2759CFAD8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12A78);
  }

  return result;
}

uint64_t sub_2759A396C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_27585F7A0;

  return sub_27599D040(v0 + 16);
}

unint64_t sub_2759A3A00()
{
  result = qword_280A12A88;
  if (!qword_280A12A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A129B8, &qword_2759CFA78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A129B0, &qword_2759CFA70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10858, &qword_2759C7690);
    sub_2759A387C();
    sub_2758FB220();
    swift_getOpaqueTypeConformance2();
    sub_2759A4AEC(&qword_280A0FCF0, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12A88);
  }

  return result;
}

unint64_t sub_2759A3B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12A90;
  if (!qword_280A12A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12A90);
  }

  return result;
}

unint64_t sub_2759A3BDC()
{
  result = qword_280A12A98;
  if (!qword_280A12A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A129E0, &qword_2759CFAA0);
    v3 = sub_2759A4504(&qword_280A129F8, &qword_280A129D8, &qword_2759CFA98, sub_2759A3624);
    sub_2759A3B2C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12A98);
  }

  return result;
}

uint64_t sub_2759A3CA0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_27585A7E4;

  return sub_27599C808(v0 + 16);
}

uint64_t sub_2759A3D74(uint64_t a1)
{
  v2 = sub_2759B8DA8();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2759B91B8();
}

uint64_t sub_2759A3E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2759BA998();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2759A3F3C, 0, 0);
}

uint64_t sub_2759A3F3C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_2759BA9A8();
  v5 = sub_2759A4AEC(&qword_280A12BF8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_2759BAB48();
  sub_2759A4AEC(&qword_280A12C00, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2759BA9B8();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_2759A40CC;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_2759A40CC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (!v0)
  {

    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2759A4288, 0, 0);
}

uint64_t sub_2759A4288()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2759A42F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2759B9368();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2759A4360@<X0>(uint64_t a1@<X8>)
{
  result = sub_2759B9388();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2759A43C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2759B92A8();
  *a1 = result;
  return result;
}

uint64_t sub_2759A4418(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12D80, &qword_2759CFF18);
  MEMORY[0x28223BE20](v2 - 8);
  sub_27586FBC8(a1, &v5 - v3, &qword_280A12D80, &qword_2759CFF18);
  return sub_2759B9358();
}

uint64_t sub_2759A4504(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2759A4588()
{
  result = qword_280A12B40;
  if (!qword_280A12B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12B48, &qword_2759CFBF8);
    sub_27589B02C(&qword_280A11108, &qword_280A11110, &qword_2759CA068, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12B40);
  }

  return result;
}

unint64_t sub_2759A4640()
{
  result = qword_280A12B58;
  if (!qword_280A12B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12B10, &qword_2759CFBA8);
    sub_2759A46FC();
    sub_2759A4AEC(&qword_280A0F688, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12B58);
  }

  return result;
}

unint64_t sub_2759A46FC()
{
  result = qword_280A12B60;
  if (!qword_280A12B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12B08, &qword_2759CFBA0);
    sub_2759A47B4();
    sub_27589B02C(&qword_280A0FF30, &qword_280A0FF38, &qword_2759C5B98, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12B60);
  }

  return result;
}

unint64_t sub_2759A47B4()
{
  result = qword_280A12B68;
  if (!qword_280A12B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12B00, &qword_2759CFB98);
    sub_27589B02C(&qword_280A12B70, &qword_280A12AF8, &qword_2759CFB90, MEMORY[0x277CDF028]);
    sub_2759A4AEC(&qword_280A0F688, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12B68);
  }

  return result;
}

uint64_t objectdestroyTm_10()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_2759A48F4()
{
  result = qword_280A12B90;
  if (!qword_280A12B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12B88, &qword_2759CFC10);
    sub_27589B02C(&qword_280A11538, &qword_280A11540, &qword_2759CB6B0, MEMORY[0x277CDF510]);
    sub_27589B02C(&qword_280A12B98, &qword_280A12BA0, &qword_2759CFC18, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12B90);
  }

  return result;
}

uint64_t sub_2759A49D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimpleStorageMeter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2759A4A3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27585F7A0;

  return sub_27599CD48(a1, v4, v5, v1 + 32);
}

uint64_t sub_2759A4AEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_50Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2759A4B8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27585F7A0;

  return sub_27599D580(a1, v4, v5, v1 + 32);
}

unint64_t sub_2759A4C3C()
{
  result = qword_280A12C60;
  if (!qword_280A12C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12C58, &qword_2759CFDA8);
    sub_2759A4CF4();
    sub_27589B02C(&qword_280A12C88, &qword_280A12C90, &qword_2759CFDC0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12C60);
  }

  return result;
}

unint64_t sub_2759A4CF4()
{
  result = qword_280A12C68;
  if (!qword_280A12C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12C70, &qword_2759CFDB0);
    sub_27589B02C(&qword_280A12C78, &qword_280A12C80, &qword_2759CFDB8, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12C68);
  }

  return result;
}

void *sub_2759A4DAC@<X0>(uint64_t a2@<X8>)
{
  sub_2759B9D58();
  sub_2759B9D58();
  type metadata accessor for iCloudHomeViewModel(0);
  result = sub_2759B9D58();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  return result;
}

void sub_2759A4E5C()
{
  v0 = sub_2759B8508();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for iCloudHomeDataModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_2759BA258();
  v7 = sub_2759BA258();
  v8 = [v5 URLForResource:v6 withExtension:v7];

  if (v8)
  {
    sub_2759B84C8();

    v9 = sub_2759B84B8();
    v10 = CGPDFDocumentCreateWithURL(v9);

    if (v10)
    {
      v11 = CGPDFDocumentGetPage(v10, 1uLL);
      if (v11)
      {
        v25 = v0;
        v12 = v11;
        BoxRect = CGPDFPageGetBoxRect(v11, kCGPDFMediaBox);
        if (72.0 / BoxRect.size.height >= 72.0 / BoxRect.size.width)
        {
          v13 = 72.0 / BoxRect.size.width;
        }

        else
        {
          v13 = 72.0 / BoxRect.size.height;
        }

        v14 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
        v15 = swift_allocObject();
        *(v15 + 16) = 0x4052000000000000;
        *(v15 + 24) = v13;
        *(v15 + 32) = v12;
        v16 = swift_allocObject();
        *(v16 + 16) = sub_2759A544C;
        *(v16 + 24) = v15;
        aBlock[4] = sub_2759A5458;
        aBlock[5] = v16;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_27599B03C;
        aBlock[3] = &block_descriptor_18;
        v17 = _Block_copy(aBlock);
        v18 = v12;

        [v14 imageWithActions_];

        _Block_release(v17);
        (*(v1 + 8))(v3, v25);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        return;
      }

      (*(v1 + 8))(v3, v0);
    }

    else
    {
      (*(v1 + 8))(v3, v0);
    }
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v20 = sub_2759B89A8();
  __swift_project_value_buffer(v20, qword_2815ADE70);
  v21 = sub_2759B8988();
  v22 = sub_2759BA668();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_275819000, v21, v22, "Unable to load subscriber badge asset", v23, 2u);
    MEMORY[0x277C85860](v23, -1, -1);
  }

  [objc_allocWithZone(MEMORY[0x277D755B8]) init];
}

unint64_t sub_2759A52B0()
{
  result = qword_280A12CB0;
  if (!qword_280A12CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12CA8, &qword_2759CFDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12CB0);
  }

  return result;
}

unint64_t sub_2759A5334()
{
  result = qword_280A12CC8;
  if (!qword_280A12CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12CB8, &qword_2759CFDE0);
    sub_2759A53C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12CC8);
  }

  return result;
}

unint64_t sub_2759A53C0()
{
  result = qword_280A12CD0;
  if (!qword_280A12CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12CC0, &qword_2759CFDE8);
    sub_2759A52B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12CD0);
  }

  return result;
}

double block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_2759A5498()
{
  result = qword_280A12D28;
  if (!qword_280A12D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12D18, &qword_2759CFE60);
    sub_2759A5550();
    sub_27589B02C(&qword_280A0F1E0, &qword_280A0F1E8, &unk_2759C3620, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12D28);
  }

  return result;
}

unint64_t sub_2759A5550()
{
  result = qword_280A12D30;
  if (!qword_280A12D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12D20, &qword_2759CFE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12D30);
  }

  return result;
}

unint64_t sub_2759A55CC()
{
  result = qword_280A12D40;
  if (!qword_280A12D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12D38, &qword_2759CFE70);
    sub_2759A5498();
    sub_2759A5550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12D40);
  }

  return result;
}

unint64_t sub_2759A5658()
{
  result = qword_280A12D50;
  if (!qword_280A12D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12D08, &qword_2759CFE50);
    sub_2759A5710();
    sub_27589B02C(&qword_280A12D70, &qword_280A12D48, &qword_2759CFED8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12D50);
  }

  return result;
}

unint64_t sub_2759A5710()
{
  result = qword_280A12D58;
  if (!qword_280A12D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12D00, &qword_2759CFE48);
    sub_2759A57C8();
    sub_27589B02C(&qword_280A0F1F0, &qword_280A0F1F8, &unk_2759CB7B0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12D58);
  }

  return result;
}

unint64_t sub_2759A57C8()
{
  result = qword_280A12D60;
  if (!qword_280A12D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12CF8, &qword_2759CFE40);
    sub_2759A5880();
    sub_27589B02C(&qword_280A122E0, &qword_280A122E8, &qword_2759CE6F8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12D60);
  }

  return result;
}

unint64_t sub_2759A5880()
{
  result = qword_280A12D68;
  if (!qword_280A12D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12CF0, &qword_2759CFE38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12D38, &qword_2759CFE70);
    sub_2759A55CC();
    swift_getOpaqueTypeConformance2();
    sub_27589B02C(&qword_280A12190, &qword_280A12198, &qword_2759CE5F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12D68);
  }

  return result;
}

unint64_t sub_2759A5974()
{
  result = qword_280A12D88;
  if (!qword_280A12D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12D90, &unk_2759CFF20);
    sub_27589B02C(&qword_280A12A80, &qword_280A129C8, &qword_2759CFA88, MEMORY[0x277CE14C0]);
    sub_2759A3A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12D88);
  }

  return result;
}

id sub_2759A5A74@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v5 = iCloudHomeViewModel.complianceSectionTitle.getter();
  v7 = v6;

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a3 = v8;
  a3[1] = v9;
  a3[2] = sub_2759A5C5C;
  a3[3] = v10;

  return a1;
}

void sub_2759A5B4C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  iCloudHomeViewModel.handleComplianceLinkAction()();
}

unint64_t sub_2759A5C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12D98;
  if (!qword_280A12D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12D98);
  }

  return result;
}

unint64_t sub_2759A5C64()
{
  result = qword_280A12DA0;
  if (!qword_280A12DA0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12DA8, qword_2759CFFE0);
    sub_2759A5C08(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12DA0);
  }

  return result;
}

id DeviceEnrollmentSettings.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceEnrollmentSettings.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceEnrollmentSettings();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DeviceEnrollmentSettings.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DeviceEnrollmentSettings();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2759A5DF0()
{
  v0 = sub_2759B89D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2759B89C8();
  v4 = sub_2759B89B8();
  (*(v1 + 8))(v3, v0);
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v5 = sub_2759B89A8();
  __swift_project_value_buffer(v5, qword_2815ADE70);
  v6 = sub_2759B8988();
  v7 = sub_2759BA638();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v4 & 1;
    _os_log_impl(&dword_275819000, v6, v7, "showDeviceEnrollmentDataclass: %{BOOL}d", v8, 8u);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  return v4 & 1;
}

uint64_t type metadata accessor for DrilldownThermometerView(uint64_t a1)
{
  result = qword_280A12DB0;
  if (!qword_280A12DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2759A61C4(uint64_t a1)
{
  sub_27595B234(319);
  if (v1 <= 0x3F)
  {
    sub_27585AF74(319);
    if (v2 <= 0x3F)
    {
      sub_2759A6300(319, &qword_280A10B38, &unk_280A11C70, qword_2759C1240, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2759B8C48();
        if (v4 <= 0x3F)
        {
          sub_2759A6300(319, &qword_280A0FC60, &qword_280A0FC68, &qword_2759C7830, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2759A6300(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *sub_2759A6364()
{
  v1 = sub_2759B93D8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_2759BA658();
    v7 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();
    sub_275827D68(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

void sub_2759A64B4(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  if (*(v1 + 24))
  {
    v6 = type metadata accessor for DrilldownThermometerView(0);

    v7 = sub_2759B8C38();
    v31 = v8;
    v32 = v7;

    v9 = sub_2759B8C38();
    v29 = v10;
    v30 = v9;

    v11 = sub_2759B8C38();
    v13 = v12;

    sub_27595C8BC(v1 + *(v6 + 44), v5);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v5, 1, v14) == 1)
    {
      sub_27595C92C(v5);
      v16 = 3;
    }

    else
    {

      sub_2759B8AA8();

      (*(v15 + 8))(v5, v14);
      if (v34)
      {
        v16 = 3;
      }

      else
      {
        v16 = 4;
      }
    }

    v17 = sub_2759A6364();
    v33 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A11C70, qword_2759C1240);
    sub_2759B9D58();
    v18 = v34;
    v19 = type metadata accessor for ManageStorageThermometerView(0);
    v20 = v19[9];
    *(a1 + v20) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
    swift_storeEnumTagMultiPayload();
    *(a1 + v19[10]) = 0x3FEBBE76C8B43958;
    v21 = (a1 + v19[11]);
    *v21 = 0x303838373837;
    v21[1] = 0xE600000000000000;
    *(a1 + v19[12]) = 0x3FD47AE147AE147BLL;
    v33 = v17;
    v22 = v17;
    sub_2759B9D58();

    *a1 = v34;
    LOBYTE(v33) = v16;
    sub_2759B9D58();

    v23 = *(&v34 + 1);
    *(a1 + 16) = v34;
    *(a1 + 24) = v23;
    *(a1 + 32) = v11;
    v25 = v31;
    v24 = v32;
    *(a1 + 40) = v13;
    *(a1 + 48) = v24;
    v26 = v29;
    v27 = v30;
    *(a1 + 56) = v25;
    *(a1 + 64) = v27;
    *(a1 + 72) = v26;
  }

  else
  {
    sub_2759B8C08();
    sub_2759A79B0(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    sub_2759B9158();
    __break(1u);
  }
}