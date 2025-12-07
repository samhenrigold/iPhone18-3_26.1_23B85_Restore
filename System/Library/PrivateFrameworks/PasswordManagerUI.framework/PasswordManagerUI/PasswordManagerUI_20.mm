uint64_t sub_21C94FDE8(void **a1, void **a2, void **a3, void **a4)
{
  v51 = sub_21CB80DD4();
  v8 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v45 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v52 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v54 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v52)
    {
      v46 = a4;
      v47 = (v8 + 8);
LABEL_27:
      v45 = a1;
      v29 = a1 - 1;
      v30 = (a3 - 1);
      v31 = v54;
      v48 = a1 - 1;
      do
      {
        v53 = v30;
        v32 = (v30 + 8);
        v33 = *--v31;
        v34 = *v29;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v35 = [v33 date];
        v36 = v49;
        sub_21CB80D94();

        v37 = [v34 date];
        v38 = v50;
        sub_21CB80D94();

        LOBYTE(v37) = sub_21CB80D34();
        v39 = *v47;
        v40 = v38;
        v41 = v51;
        (*v47)(v40, v51);
        v39(v36, v41);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v37)
        {
          a4 = v46;
          a3 = v53;
          v43 = v48;
          if (v32 != v45)
          {
            *v53 = *v48;
          }

          if (v54 <= a4 || (a1 = v43, v43 <= v52))
          {
            a1 = v43;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v46;
        v42 = v53;
        if (v32 != v54)
        {
          *v53 = *v31;
        }

        v30 = v42 - 8;
        v54 = v31;
        v29 = v48;
      }

      while (v31 > a4);
      v54 = v31;
      a1 = v45;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v54 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v52 = a1;
        v17 = *a2;
        v18 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v19 = [v17 date];
        v20 = v49;
        sub_21CB80D94();

        v21 = [v18 date];
        v22 = v50;
        sub_21CB80D94();

        LOBYTE(v21) = sub_21CB80D34();
        v23 = *v16;
        v24 = v22;
        v25 = v51;
        (*v16)(v24, v51);
        v23(v20, v25);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v21 & 1) == 0)
        {
          break;
        }

        v26 = a2;
        v27 = v52;
        v28 = v52 == a2++;
        if (!v28)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v27 + 1;
        if (a4 >= v54 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v26 = a4;
      v27 = v52;
      v28 = v52 == a4++;
      if (v28)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v27 = *v26;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v54 - a4 + (v54 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v54 - a4));
  }

  return 1;
}

unint64_t sub_21C950280(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_21CB85FA4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_21CAC8BB4(v3, 0);
  sub_21C950314(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21C950314(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21CB85FA4();
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
      result = sub_21CB85FA4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21C950910();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4160, &qword_21CBA3DF8);
            v9 = sub_21C9504A0(v13, i, a3);
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC238, &qword_21CBA3D90);
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

uint64_t (*sub_21C9504A0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CF15BD0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_21C950520;
  }

  __break(1u);
  return result;
}

unint64_t sub_21C950528(unint64_t result)
{
  v1 = result;
  v11 = MEMORY[0x277D84F90];
  v2 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_21:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

LABEL_20:
  result = sub_21CB85FA4();
  v3 = result;
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CF15BD0](v6, v1);
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_19;
        }

        swift_unknownObjectRetain();
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      result = swift_unknownObjectRelease();
      ++v6;
      if (v4 == v3)
      {
        goto LABEL_22;
      }
    }

    MEMORY[0x21CF15300]();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21CB85834();
    }

    result = sub_21CB85854();
    v5 = v11;
  }

  while (v4 != v3);
LABEL_22:
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

LABEL_29:

    return 0;
  }

  result = sub_21CB85FA4();
  if (!result)
  {
    goto LABEL_29;
  }

LABEL_24:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x21CF15BD0](0, v5);
    goto LABEL_27;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_27:
    v8 = v7;

    v9 = [v8 password];

    v10 = sub_21CB855C4();
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_21C950758(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v5 = a3 >> 1;
  v6 = a2;
  v7 = a2;
  while (1)
  {
    if (v5 == v7)
    {
      if (v4 >> 62)
      {
        goto LABEL_16;
      }

      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

LABEL_17:

      return 0;
    }

    if (v6 < a2 || v7 >= v5)
    {
      break;
    }

    ++v7;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v8 = swift_unknownObjectRetain();
      MEMORY[0x21CF15300](v8);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21CB85834();
      }

      result = sub_21CB85854();
      v4 = v13;
      v6 = v7;
    }
  }

  __break(1u);
LABEL_16:
  result = sub_21CB85FA4();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_11:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x21CF15BD0](0, v4);
LABEL_14:
    v10 = v9;

    v11 = [v10 password];

    v12 = sub_21CB855C4();
    return v12;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v4 + 32);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

unint64_t sub_21C950910()
{
  result = qword_27CDF20C0;
  if (!qword_27CDF20C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4160, &qword_21CBA3DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF20C0);
  }

  return result;
}

uint64_t sub_21C950990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9509F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21C94DE84(a1, v4, v5, v7, v6);
}

uint64_t _s19IdentifiableGroupIDVMa(uint64_t a1)
{
  result = qword_27CDF20C8;
  if (!qword_27CDF20C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C950B44(uint64_t a1)
{
  result = sub_21CB85C44();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21C950BB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  sub_21C950D6C(v2, &v12 - v5);
  v7 = sub_21CB85C44();
  v8 = *(v7 - 8);
  v9 = 1;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(a1, v6, v7);
    v9 = 0;
  }

  v10 = _s19IdentifiableGroupIDVMa(0);
  return (*(*(v10 - 8) + 56))(a1, v9, 1, v10);
}

uint64_t sub_21C950D04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB85C44();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21C950D6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C950DDC()
{
  swift_getKeyPath(byte_21CBB3460);
  swift_getKeyPath(byte_21CBB3488);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C950E50@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_21CBB3460);
  swift_getKeyPath(byte_21CBB3488);
  sub_21CB81DB4();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_21C950ED0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBB3460);
  swift_getKeyPath(byte_21CBB3488);

  return sub_21CB81DC4();
}

uint64_t sub_21C950F54(uint64_t a1, uint64_t a2, char a3)
{
  sub_21CB81DB4();

  v6 = *(v15[0] + 16);
  if (!v6)
  {
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = *(v15[0] + v7 + 64) == a1 && *(v15[0] + v7 + 72) == a2;
    if (v9 || (sub_21CB86344() & 1) != 0)
    {
      break;
    }

    ++v8;
    v7 += 112;
    if (v6 == v8)
    {
    }
  }

  v11 = sub_21CB81DA4();
  v13 = v12;
  v14 = *v12;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((result & 1) == 0)
  {
    result = sub_21CAA1154(v14);
    v14 = result;
    *v13 = result;
  }

  if (v8 >= *(v14 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v14 + v7 + 113) = a3;
    v11(v15, 0);
  }

  return result;
}

uint64_t sub_21C95110C()
{
  swift_getKeyPath(byte_21CBB3518);
  sub_21CB81DB4();
}

BOOL sub_21C951184()
{
  swift_getKeyPath(byte_21CBB3460);
  swift_getKeyPath(byte_21CBB3488);
  sub_21CB81DB4();

  v0 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v0 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v0)
  {
    return 1;
  }

  sub_21CB81DB4();

  v2 = *(v3 + 16);

  return v2 != 0;
}

uint64_t sub_21C951274()
{
  v1[191] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EA8, &unk_21CBB2A90);
  v1[197] = swift_task_alloc();
  v1[198] = swift_task_alloc();
  v1[199] = type metadata accessor for PMSharingGroup(0);
  v1[200] = swift_task_alloc();
  sub_21CB858B4();
  v1[201] = sub_21CB858A4();
  v3 = sub_21CB85874();
  v1[202] = v3;
  v1[203] = v2;

  return MEMORY[0x2822009F8](sub_21C951384, v3, v2);
}

uint64_t sub_21C951384()
{
  swift_getKeyPath(byte_21CBB35C8);
  *(v0 + 1640) = 1;

  sub_21CB81DC4();

  swift_asyncLet_begin();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EE8, &qword_21CBB95F0);
  swift_asyncLet_begin();
  v1 = *(v0 + 1600);

  return MEMORY[0x282200930](v0 + 16, v1, sub_21C9514C4, v0 + 1296);
}

uint64_t sub_21C9514C4()
{
  v1[204] = v0;
  if (v0)
  {
    v2 = v1[203];
    v3 = v1[202];

    return MEMORY[0x2822009F8](sub_21C9517EC, v3, v2);
  }

  else
  {
    sub_21C94B4A8(v1[200], v1[198]);

    return MEMORY[0x282200928](v1 + 82, v1 + 167, sub_21C951574, v1 + 180);
  }
}

uint64_t sub_21C951590(__n128 a1)
{
  v2 = v1[198];
  v3 = v1[197];
  v4 = v1[167];
  v5 = type metadata accessor for PMCreateGroupViewModel.GroupAndDeviceSharingAvailability(0);
  *(v2 + *(v5 + 20)) = v4;
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  swift_getKeyPath(byte_21CBB3518);
  sub_21C9534C4(v2, v3);
  v6 = v4;

  sub_21CB81DC4();
  sub_21C953534(v2);

  return MEMORY[0x282200920](v1 + 82, v1 + 167, sub_21C9516B0, v1 + 186);
}

uint64_t sub_21C951708()
{

  swift_getKeyPath(byte_21CBB35C8);
  *(v0 + 1642) = 0;

  sub_21CB81DC4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C951864()
{
  v19 = v0;
  v1 = *(v0 + 1632);
  *(v0 + 1384) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C82A2F0();
  result = swift_dynamicCast();
  if (result)
  {
    v4 = *(v0 + 1632);

    v5 = *(v0 + 1432);
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v6 = sub_21CB81C84();
    __swift_project_value_buffer(v6, qword_27CE186E0);
    v7 = v5;
    v8 = sub_21CB81C64();
    v9 = sub_21CB85AF4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136446210;
      v12 = [v7 safari_privacyPreservingDescription];
      v13 = sub_21CB855C4();
      v15 = v14;

      v16 = sub_21C98E004(v13, v15, &v18);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_21C6E5000, v8, v9, "Unable to create shared passwords group. %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x21CF16D90](v11, -1, -1);
      MEMORY[0x21CF16D90](v10, -1, -1);
    }

    swift_getKeyPath(byte_21CBB3580);
    swift_getKeyPath(byte_21CBB35A8);
    *(v0 + 1641) = 1;

    sub_21CB81DC4();
    swift_getKeyPath(byte_21CBB3538);
    swift_getKeyPath(byte_21CBB3560);
    *(v0 + 1480) = v7;

    sub_21CB81DC4();

    swift_getKeyPath(byte_21CBB35C8);
    *(v0 + 1642) = 0;

    sub_21CB81DC4();

    v17 = *(v0 + 8);

    return v17();
  }

  return result;
}

uint64_t sub_21C951BA0()
{
  swift_getKeyPath(byte_21CBB3538);
  swift_getKeyPath(byte_21CBB3560);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C951C14()
{
  sub_21CB81DB4();

  return v1;
}

void sub_21C951C88(uint64_t a1)
{
  v2 = v1;
  sub_21CB85C44();
  sub_21C953174(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
  sub_21CB85494();
  v3 = type metadata accessor for PMSharingGroup(0);
  sub_21CB854C4();
  v4 = *(v1 + *(v3 + 24));
  MEMORY[0x21CF15F90](*(v4 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      v8 = v6[2];
      v9 = *v6;
      v21 = v6[1];
      v22 = v8;
      v20 = v9;
      v10 = v6[3];
      v11 = v6[4];
      v12 = v6[6];
      v25 = v6[5];
      v26 = v12;
      v23 = v10;
      v24 = v11;
      if (*(&v9 + 1))
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v20, v19);
        sub_21CB854C4();
        if (*(&v21 + 1))
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v20, v19);
        if (*(&v21 + 1))
        {
LABEL_7:
          sub_21CB864A4();
          sub_21CB854C4();
          goto LABEL_10;
        }
      }

      sub_21CB864A4();
LABEL_10:
      sub_21CB854C4();
      sub_21CB854C4();
      sub_21CB854C4();
      v13 = v26;
      v14 = BYTE2(v25);
      v15 = BYTE1(v25);
      sub_21CB864A4();
      MEMORY[0x21CF15F90](v15);
      MEMORY[0x21CF15F90](v14);
      if (v13)
      {
        sub_21CB864A4();
        sub_21CB854C4();
        v16 = *(&v26 + 1);
        if (!*(&v26 + 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_21CB864A4();
        v16 = *(&v26 + 1);
        if (!*(&v26 + 1))
        {
LABEL_14:
          sub_21CB864A4();
          goto LABEL_4;
        }
      }

      sub_21CB864A4();
      v7 = v16;
      sub_21CB85DE4();

LABEL_4:
      sub_21C7A344C(&v20);
      v6 += 7;
      --v5;
    }

    while (v5);
  }

  sub_21CB854C4();
  v17 = *(v2 + *(type metadata accessor for PMCreateGroupViewModel.GroupAndDeviceSharingAvailability(0) + 20));
  sub_21CB864A4();
  if (v17)
  {
    v18 = v17;
    sub_21CB85DE4();
  }
}

uint64_t sub_21C951F50()
{
  sub_21CB86484();
  sub_21C951C88(v1);
  return sub_21CB864D4();
}

uint64_t sub_21C951F94(uint64_t a1)
{
  sub_21CB86484();
  sub_21C951C88(v2);
  return sub_21CB864D4();
}

uint64_t sub_21C951FD4@<X0>(void *a2@<X8>)
{
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C952054(uint64_t *a1, uint64_t *a2)
{

  return sub_21CB81DC4();
}

uint64_t sub_21C9520D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB018, &qword_21CBA0D90);
  inited = swift_initStackObject();
  v29 = xmmword_21CBA0690;
  *(inited + 16) = xmmword_21CBA0690;
  v7 = v3[9];
  v31[2] = v3[8];
  v31[3] = v7;
  v8 = v3[11];
  v31[4] = v3[10];
  v31[5] = v8;
  v31[6] = v3[12];
  v9 = v3[7];
  v31[0] = v3[6];
  v31[1] = v9;
  memmove((inited + 32), v3 + 6, 0x70uLL);
  sub_21C7A33F0(v31, v30);
  sub_21CB81DB4();

  v10 = v30[0];
  v30[0] = inited;
  sub_21CAE8E18(v10);
  v11 = v30[0];
  v12 = *(v30[0] + 16);
  if (v12)
  {
    v27 = a1;
    v28 = a2;
    v30[0] = MEMORY[0x277D84F90];
    sub_21C7B11CC(0, v12, 0);
    v13 = v30[0];
    v26[5] = v11;
    v14 = (v11 + 72);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v30[0] = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);

      if (v18 >= v17 >> 1)
      {
        sub_21C7B11CC((v17 > 1), v18 + 1, 1);
        v13 = v30[0];
      }

      *(v13 + 16) = v18 + 1;
      v19 = v13 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v14 += 14;
      --v12;
    }

    while (v12);

    a1 = v27;
    a2 = v28;
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v30[0] = a1;
  v30[1] = a2;
  MEMORY[0x28223BE20](v20);
  v26[2] = v30;
  v21 = sub_21C8A13AC(sub_21C8ADF40, v26, v13);

  if ((v21 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_0(v3 + 2, *(v3 + 5));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB028, &unk_21CBB3650);
    v23 = swift_initStackObject();
    *(v23 + 16) = v29;
    *(v23 + 32) = a1;
    *(v23 + 40) = a2;

    v24 = sub_21CA0EBC8(v23, 1u);
    swift_setDeallocating();
    sub_21C953B50(v23 + 32);
    v25 = sub_21CB81DA4();
    sub_21CAE8E18(v24);
    v25(v30, 0);
  }

  return result;
}

uint64_t sub_21C9523DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_21C9523FC, 0, 0);
}

uint64_t sub_21C9523FC()
{
  *(v0 + 56) = sub_21CB858B4();
  *(v0 + 64) = sub_21CB858A4();
  v2 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C952494, v2, v1);
}

uint64_t sub_21C952494()
{

  return MEMORY[0x2822009F8](sub_21C9524FC, 0, 0);
}

uint64_t sub_21C9524FC()
{
  v0[9] = __swift_project_boxed_opaque_existential_0((v0[6] + 56), *(v0[6] + 80));
  v0[10] = sub_21CB858A4();
  v2 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C952598, v2, v1);
}

uint64_t sub_21C952598()
{

  swift_getKeyPath(byte_21CBB3460);
  swift_getKeyPath(byte_21CBB3488);
  sub_21CB81DB4();

  v1 = v0[3];
  v0[11] = v0[2];
  v0[12] = v1;

  return MEMORY[0x2822009F8](sub_21C952658, 0, 0);
}

uint64_t sub_21C952658(uint64_t a1)
{
  *(v1 + 104) = sub_21CB858A4();
  v3 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C9526E4, v3, v2);
}

uint64_t sub_21C9526E4()
{

  sub_21CB81DB4();

  v1 = v0[4];
  v0[14] = v1;
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_21C9527E8;
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[5];

  return sub_21C9D6584(v5, v3, v4, v1);
}

uint64_t sub_21C9527E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21C95291C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_21C9529AC;

  return sub_21C95359C();
}

uint64_t sub_21C9529AC(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_21C952AAC, 0, 0);
}

uint64_t sub_21C952AD0(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_21C952BA8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v1 = *(v0 + 176);
  v16[4] = *(v0 + 160);
  v16[5] = v1;
  v16[6] = *(v0 + 192);
  v2 = *(v0 + 112);
  v16[0] = *(v0 + 96);
  v16[1] = v2;
  v3 = *(v0 + 144);
  v16[2] = *(v0 + 128);
  v16[3] = v3;
  sub_21C7A344C(v16);
  v4 = OBJC_IVAR____TtC17PasswordManagerUI22PMCreateGroupViewModel__groupName;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC17PasswordManagerUI22PMCreateGroupViewModel__addedGroupMembers;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EB0, &unk_21CBB2AA0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC17PasswordManagerUI22PMCreateGroupViewModel__isCreatingGroup;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v11 = OBJC_IVAR____TtC17PasswordManagerUI22PMCreateGroupViewModel__groupAndDeviceSharingAvailability;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EA0, &unk_21CBB3450);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v10(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMCreateGroupViewModel__groupCreationFailureAlertPresented, v9);
  v13 = OBJC_IVAR____TtC17PasswordManagerUI22PMCreateGroupViewModel__groupCreationFailureError;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1E98, &unk_21CBB2A80);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  return swift_deallocClassInstance();
}

void sub_21C952E0C(uint64_t a1)
{
  sub_21C6F039C(319, &qword_27CDEAEC8, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21C6EA5CC(319, &qword_27CDF2118, &qword_27CDF1EB8, &qword_21CBB5E80);
    if (v2 <= 0x3F)
    {
      sub_21C6F039C(319, &qword_27CDEAEE0, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_21C6EA5CC(319, &qword_27CDF2120, &qword_27CDF1EA8, &unk_21CBB2A90);
        if (v4 <= 0x3F)
        {
          sub_21C6EA5CC(319, &qword_27CDF2128, &qword_27CDF1EC0, &qword_21CBB2AB0);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_21C953050(uint64_t a1)
{
  type metadata accessor for PMSharingGroup(319);
  if (v1 <= 0x3F)
  {
    sub_21C9530D4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C9530D4(uint64_t a1)
{
  if (!qword_27CDF2140)
  {
    type metadata accessor for PMDeviceSharingAvailability(255);
    v1 = sub_21CB85E54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF2140);
    }
  }
}

uint64_t sub_21C953174(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_21C9531BC(uint64_t a1, uint64_t a2)
{
  sub_21CB85C44();
  sub_21C953174(&qword_27CDECD58, MEMORY[0x277D49978], MEMORY[0x277D49998]);
  sub_21CB857F4();
  sub_21CB857F4();
  if (v26 == v24 && v27 == v25)
  {
  }

  else
  {
    v5 = sub_21CB86344();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = type metadata accessor for PMSharingGroup(0);
  v7 = v6[5];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  if ((sub_21C967680(*(a1 + v6[6]), *(a2 + v6[6])) & 1) == 0)
  {
    return 0;
  }

  v12 = v6[7];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v13 == *v15 && v14 == v15[1];
  if (!v16 && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for PMCreateGroupViewModel.GroupAndDeviceSharingAvailability(0) + 20);
  v18 = *(a1 + v17);
  v19 = *(a2 + v17);
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    type metadata accessor for PMDeviceSharingAvailability(0);
    v20 = v19;
    v21 = v18;
    v22 = sub_21CB85DD4();

    return (v22 & 1) != 0;
  }

  return !v19;
}

uint64_t sub_21C95338C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21C702EFC;

  return sub_21C9523DC(a1, v1);
}

uint64_t sub_21C953428(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21C6F35D0;

  return sub_21C95291C(a1);
}

uint64_t sub_21C9534C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EA8, &unk_21CBB2A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C953534(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EA8, &unk_21CBB2A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C95359C()
{
  sub_21CB858B4();
  v0[19] = sub_21CB858A4();
  v2 = sub_21CB85874();
  v0[20] = v2;
  v0[21] = v1;

  return MEMORY[0x2822009F8](sub_21C953630, v2, v1);
}

uint64_t sub_21C953630()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21C953758;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2150, &unk_21CBB3640);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21C952AD0;
  v0[13] = &block_descriptor_14;
  v0[14] = v2;
  [v1 fetchListsOfSharingDevicesSeparatedByAvailability_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21C953758()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  v3 = *(v1 + 168);
  v4 = *(v1 + 160);
  if (v2)
  {
    v5 = sub_21C9538EC;
  }

  else
  {
    v5 = sub_21C953888;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21C953888()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21C9538EC(uint64_t a1)
{
  v20 = v1;
  v2 = *(v1 + 176);
  swift_willThrow();
  *(v1 + 80) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C82A2F0();
  result = swift_dynamicCast();
  if (result)
  {
    v5 = *(v1 + 176);

    v6 = *(v1 + 144);
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v7 = sub_21CB81C84();
    __swift_project_value_buffer(v7, qword_27CE186E0);
    v8 = v6;
    v9 = sub_21CB81C64();
    v10 = sub_21CB85AF4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      v13 = [v8 safari_privacyPreservingDescription];
      v14 = sub_21CB855C4();
      v16 = v15;

      v17 = sub_21C98E004(v14, v16, &v19);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_21C6E5000, v9, v10, "Failed to get device list with error: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x21CF16D90](v12, -1, -1);
      MEMORY[0x21CF16D90](v11, -1, -1);
    }

    else
    {
    }

    v18 = *(v1 + 8);

    return v18(0);
  }

  return result;
}

uint64_t sub_21C953BA4(uint64_t a1)
{
  v21 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_21CB85FA4();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v26 = MEMORY[0x277D84F90];
    sub_21CB86154();
    result = sub_21CB85F54();
    v23 = result;
    v24 = v4;
    v25 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v26 = MEMORY[0x277D84F90];
  sub_21CB86154();
  result = sub_21CB85F24();
  v5 = *(a1 + 36);
  v23 = result;
  v24 = v5;
  v25 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v23;
    v9 = v24;
    v11 = v25;
    sub_21CA91A54(v23, v24, v25, a1);
    sub_21CB86134();
    sub_21CB86164();
    sub_21CB86174();
    result = sub_21CB86144();
    if (v21)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_21CB85F74())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2218, &unk_21CBB3810);
      v7 = sub_21CB85A04();
      sub_21CB86004();
      result = v7(v22, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_21C7AE858(v23, v24, v25);
        return v26;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_32;
      }

      v13 = v10 >> 6;
      v14 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v14 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v15 = v14 & (-2 << (v10 & 0x3F));
      if (v15)
      {
        v12 = __clz(__rbit64(v15)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v13 << 6;
        v17 = v13 + 1;
        v18 = (a1 + 64 + 8 * v13);
        while (v17 < (v12 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_21C7AE858(v10, v9, 0);
            v12 = __clz(__rbit64(v19)) + v16;
            goto LABEL_27;
          }
        }

        result = sub_21C7AE858(v10, v9, 0);
      }

LABEL_27:
      v23 = v12;
      v24 = v9;
      v25 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
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
  return result;
}

void sub_21C953EA0()
{
  swift_getKeyPath(byte_21CBB3778);
  swift_getKeyPath(byte_21CBB37A0);
  sub_21CB81DB4();

  v0 = *(v7 + 16);
  if (v0)
  {
    v1 = 0;
    while (v1 < *(v7 + 16))
    {
      v2 = *(v7 + 32 + 8 * v1);
      v3 = objc_opt_self();
      v4 = v2;
      v5 = [v3 sharedManager];
      v6 = [v5 extensionIsEnabled_];

      if (v6)
      {
        sub_21CB86134();
        sub_21CB86164();
        sub_21CB86174();
        sub_21CB86144();
      }

      else
      {
      }

      if (v0 == ++v1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
  }
}

uint64_t sub_21C954008()
{
  swift_getKeyPath(byte_21CBB3778);
  swift_getKeyPath(byte_21CBB37A0);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C95407C()
{
  swift_getKeyPath(byte_21CBB37C8);
  swift_getKeyPath(byte_21CBB37F0);
  sub_21CB81DB4();

  return v1;
}

id sub_21C9540F4()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2220, &qword_21CBA5890);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2228, &qword_21CBB3820);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC17PasswordManagerUI36PMCredentialProviderExtensionManager__extensions;
  v22 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF21F0, &qword_21CBBFE10);
  sub_21CB81D74();
  (*(v10 + 32))(&v0[v13], v12, v9);
  v14 = OBJC_IVAR____TtC17PasswordManagerUI36PMCredentialProviderExtensionManager__numberOfAutoFillProvidersEnabled;
  v22 = 0;
  v23 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2200, &qword_21CBB3690);
  sub_21CB81D74();
  (*(v6 + 32))(&v0[v14], v8, v5);
  v21.receiver = v0;
  v21.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v21, sel_init);
  v16 = sub_21CB858E4();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v15;
  v18 = v15;
  sub_21C98B308(0, 0, v4, &unk_21CBB3828, v17);

  v19 = [objc_opt_self() sharedManager];
  [v19 addWeakObserver_];

  return v18;
}

char *sub_21C954454()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v32 - v5;
  v7 = [objc_opt_self() sharedFeatureManager];
  v8 = [v7 shouldAutoFillPasswordsFromKeychain];

  if (v8)
  {
    sub_21CB81014();
    sub_21CB81014();
    v9 = sub_21CB80FF4();
    v11 = v10;
    v12 = *(v1 + 8);
    v12(v3, v0);
    v12(v6, v0);
    v13 = sub_21CA4F2EC(0, 1, 1, MEMORY[0x277D84F90]);
    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_21CA4F2EC((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v16 = &v13[16 * v15];
    *(v16 + 4) = v9;
    *(v16 + 5) = v11;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  sub_21C953EA0();
  v18 = *(v17 + 16);
  v32[1] = v17;
  if (v18)
  {
    v19 = (v17 + 32);
    do
    {
      v20 = *v19;
      v21 = objc_opt_self();
      v22 = v20;
      v23 = [v21 sharedManager];
      v24 = [v23 displayNameForExtension_];

      v25 = sub_21CB855C4();
      v27 = v26;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_21CA4F2EC(0, *(v13 + 2) + 1, 1, v13);
      }

      v29 = *(v13 + 2);
      v28 = *(v13 + 3);
      if (v29 >= v28 >> 1)
      {
        v13 = sub_21CA4F2EC((v28 > 1), v29 + 1, 1, v13);
      }

      *(v13 + 2) = v29 + 1;
      v30 = &v13[16 * v29];
      *(v30 + 4) = v25;
      *(v30 + 5) = v27;

      ++v19;
      --v18;
    }

    while (v18);
  }

  return v13;
}

uint64_t sub_21C954780()
{
  v1 = [objc_opt_self() sharedManager];
  v0[20] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21C9548C0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2210, &qword_21CBB37C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21C704620;
  v0[13] = &block_descriptor_15;
  v0[14] = v2;
  [v1 numberOfAutoFillProvidersEnabledWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21C9548C0()
{

  return MEMORY[0x2822009F8](sub_21C9549A0, 0, 0);
}

uint64_t sub_21C9549A0()
{
  v1 = v0[20];
  v0[21] = v0[18];

  sub_21CB858B4();
  v0[22] = sub_21CB858A4();
  v3 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C954A44, v3, v2);
}

uint64_t sub_21C954A44()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  swift_getKeyPath(byte_21CBB37C8);
  swift_getKeyPath(byte_21CBB37F0);
  *(v0 + 80) = v1;
  *(v0 + 88) = 0;
  v3 = v2;
  sub_21CB81DC4();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21C954AFC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = v22 - v5;
  v7 = [a1 extensions];
  if (v7)
  {
    v8 = v7;
    sub_21C95776C();
    sub_21C9577B8();
    v9 = sub_21CB859E4();
  }

  else if (MEMORY[0x277D84F90] >> 62 && sub_21CB85FA4())
  {
    sub_21C8D85C0(MEMORY[0x277D84F90]);
    v9 = v21;
  }

  else
  {
    v9 = MEMORY[0x277D84FA0];
  }

  v10 = sub_21C953BA4(v9);

  v22[0] = v10;

  sub_21C95540C(v22);

  v11 = v22[0];
  v12 = sub_21CB858E4();
  v13 = *(*(v12 - 8) + 56);
  v13(v6, 1, 1, v12);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v1;
  v15 = v1;
  sub_21C98B308(0, 0, v6, &unk_21CBB3760, v14);

  v13(v6, 1, 1, v12);
  sub_21CB858B4();
  v16 = v15;
  v17 = sub_21CB858A4();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v16;
  v18[5] = v11;
  sub_21C98B308(0, 0, v6, &unk_21CBB3770, v18);
}

uint64_t sub_21C954D84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_21C954EFC(*a1);
  if (v4 >= sub_21C954EFC(v3))
  {
    v6 = sub_21C954EFC(v2);
    if (sub_21C954EFC(v3) >= v6)
    {
      v7 = objc_opt_self();
      v8 = [v7 sharedManager];
      v9 = [v8 displayNameForExtension_];

      v10 = sub_21CB855C4();
      v12 = v11;

      v13 = [v7 sharedManager];
      v14 = [v13 displayNameForExtension_];

      v15 = sub_21CB855C4();
      v17 = v16;

      if (v10 == v15 && v12 == v17)
      {
        v5 = 0;
      }

      else
      {
        v5 = sub_21CB86344();
      }
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_21C954EFC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 sharedManager];
  v4 = [v3 extensionSupportsPasskeys_];

  if (v4)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v2 sharedManager];
  v7 = [v6 extensionSupportsPasswords_];

  if (v7)
  {
    v8 = v5 | 2;
  }

  else
  {
    v8 = v5;
  }

  v9 = [v2 sharedManager];
  v10 = [v9 extensionSupportsOneTimeCodes_];

  return v8 | v10;
}

uint64_t sub_21C954FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_21CB858B4();
  v5[5] = sub_21CB858A4();
  v7 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C955084, v7, v6);
}

uint64_t sub_21C955084()
{
  v1 = v0[4];
  v2 = v0[3];

  swift_getKeyPath(byte_21CBB3778);
  swift_getKeyPath(byte_21CBB37A0);
  v0[2] = v1;
  v3 = v2;

  sub_21CB81DC4();
  v4 = v0[1];

  return v4();
}

uint64_t type metadata accessor for PMCredentialProviderExtensionManager(uint64_t a1)
{
  result = qword_27CDF21D8;
  if (!qword_27CDF21D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C9552C4(uint64_t a1)
{
  sub_21C6EA5CC(319, &qword_27CDF21E8, &qword_27CDF21F0, &qword_21CBBFE10);
  if (v1 <= 0x3F)
  {
    sub_21C6EA5CC(319, &qword_27CDF21F8, &qword_27CDF2200, &qword_21CBB3690);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_21C9553CC@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_21CB81CF4();
  *a2 = result;
  return result;
}

uint64_t sub_21C95540C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_21C865168(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_21C9557FC(v6);
  return sub_21CB86144();
}

uint64_t sub_21C955488(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C6F35D0;

  return sub_21C954760(a1, v4, v5, v6);
}

uint64_t sub_21C95553C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21C954FEC(a1, v4, v5, v7, v6);
}

uint64_t sub_21C9555FC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_21CBB3778);
  swift_getKeyPath(byte_21CBB37A0);
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C95567C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath(byte_21CBB3778);
  swift_getKeyPath(byte_21CBB37A0);

  v3 = v2;
  return sub_21CB81DC4();
}

uint64_t sub_21C9556F4@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath(byte_21CBB37C8);
  swift_getKeyPath(byte_21CBB37F0);
  sub_21CB81DB4();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_21C95577C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath(byte_21CBB37C8);
  swift_getKeyPath(byte_21CBB37F0);
  v3 = v2;
  return sub_21CB81DC4();
}

void sub_21C9557FC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21CB862E4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_21CB85844();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_21C955DE8(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21C9558F4(0, v2, 1, a1);
  }
}

void sub_21C9558F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = objc_opt_self();
    v8 = v6 + 8 * v4 - 8;
    v9 = a1 - v4;
    v10 = &selRef_addedAt;
    v11 = &selRef_addedAt;
    v68 = v6;
LABEL_6:
    v66 = v8;
    v67 = v4;
    v12 = *(v6 + 8 * v4);
    v65 = v9;
    v13 = v9;
    v14 = v8;
    while (1)
    {
      v70 = v13;
      v69 = v14;
      v15 = *v14;
      v16 = v12;
      v17 = v15;
      v18 = [v7 v10[347]];
      v19 = [v18 v11[188]];

      if (v19)
      {
        v20 = 4;
      }

      else
      {
        v20 = 0;
      }

      v21 = [v7 v10[347]];
      v22 = [v21 extensionSupportsPasswords_];

      if (v22)
      {
        v20 |= 2uLL;
      }

      v23 = [v7 v10[347]];
      v24 = [v23 extensionSupportsOneTimeCodes_];

      v25 = v20 | v24;
      v26 = [v7 v10[347]];
      v27 = [v26 v11[188]];

      v28 = v11;
      if (v27)
      {
        v29 = 4;
      }

      else
      {
        v29 = 0;
      }

      v30 = [v7 v10[347]];
      v31 = [v30 extensionSupportsPasswords_];

      if (v31)
      {
        v29 |= 2uLL;
      }

      v32 = [v7 v10[347]];
      v33 = [v32 extensionSupportsOneTimeCodes_];

      if (v25 < (v29 | v33))
      {

        v11 = v28;
        v6 = v68;
        goto LABEL_5;
      }

      v34 = [v7 v10[347]];
      v35 = [v34 v28 + 3783];

      v36 = 4;
      if (v35)
      {
        v37 = 4;
      }

      else
      {
        v37 = 0;
      }

      v38 = [v7 v10[347]];
      v39 = [v38 extensionSupportsPasswords_];

      if (v39)
      {
        v37 |= 2uLL;
      }

      v40 = [v7 v10[347]];
      v41 = [v40 extensionSupportsOneTimeCodes_];

      v42 = v37 | v41;
      v43 = [v7 v10[347]];
      v44 = [v43 v28 + 3783];

      if (!v44)
      {
        v36 = 0;
      }

      v45 = [v7 v10[347]];
      v46 = [v45 extensionSupportsPasswords_];

      if (v46)
      {
        v36 |= 2uLL;
      }

      v47 = [v7 v10[347]];
      v48 = [v47 extensionSupportsOneTimeCodes_];

      if ((v36 | v48) >= v42)
      {
        v51 = [v7 v10[347]];
        v52 = [v51 displayNameForExtension_];

        v53 = sub_21CB855C4();
        v55 = v54;

        v56 = [v7 v10[347]];
        v57 = [v56 displayNameForExtension_];

        v58 = sub_21CB855C4();
        v60 = v59;

        if (v53 == v58 && v55 == v60)
        {

          v6 = v68;
          v10 = &selRef_addedAt;
          v11 = &selRef_addedAt;
LABEL_5:
          v4 = v67 + 1;
          v8 = v66 + 8;
          v9 = v65 - 1;
          if (v67 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        v61 = sub_21CB86344();

        v6 = v68;
        v50 = v69;
        v10 = &selRef_addedAt;
        v11 = &selRef_addedAt;
        v49 = v70;
        if ((v61 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {

        v11 = &selRef_addedAt;
        v49 = v70;
        v6 = v68;
        v50 = v69;
      }

      if (!v6)
      {
        break;
      }

      v62 = *v50;
      v12 = v50[1];
      *v50 = v12;
      v50[1] = v62;
      v14 = v50 - 1;
      v63 = __CFADD__(v49, 1);
      v13 = v49 + 1;
      if (v63)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_21C955DE8(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v8 = &selRef_addedAt;
    while (1)
    {
      v9 = v6;
      v10 = v6 + 1;
      if (v6 + 1 >= v5)
      {
        goto LABEL_54;
      }

      v168 = v7;
      v11 = *a3;
      v185 = *(*a3 + 8 * v10);
      v184 = *(v11 + 8 * v6);
      v12 = v184;
      v13 = v185;
      v4 = v12;
      v174 = sub_21C954D84(&v185, &v184);
      if (v179)
      {

        return;
      }

      v10 = v9 + 2;
      if (v9 + 2 < v5)
      {
        v165 = v9;
        v14 = (v11 + 8 * v9 + 16);
        v172 = v5;
        while (1)
        {
          v177 = v10;
          v16 = *(v14 - 1);
          v15 = *v14;
          v180 = v14;
          v17 = objc_opt_self();
          v18 = v15;
          v19 = v16;
          v5 = &selRef_addedAt;
          v20 = [v17 sharedManager];
          LODWORD(v16) = [v20 extensionSupportsPasskeys_];

          if (v16)
          {
            v21 = 4;
          }

          else
          {
            v21 = 0;
          }

          v22 = [v17 sharedManager];
          v23 = [v22 extensionSupportsPasswords_];

          if (v23)
          {
            v21 |= 2uLL;
          }

          v24 = [v17 sharedManager];
          v182 = v18;
          v25 = [v24 extensionSupportsOneTimeCodes_];

          v26 = v21 | v25;
          v27 = [v17 sharedManager];
          v28 = [v27 extensionSupportsPasskeys_];

          if (v28)
          {
            v29 = 4;
          }

          else
          {
            v29 = 0;
          }

          v30 = [v17 sharedManager];
          v31 = [v30 extensionSupportsPasswords_];

          if (v31)
          {
            v29 |= 2uLL;
          }

          v32 = [v17 sharedManager];
          v4 = [v32 extensionSupportsOneTimeCodes_];

          if (v26 >= (v29 | v4))
          {
            v33 = [v17 sharedManager];
            v34 = [v33 extensionSupportsPasskeys_];

            if (v34)
            {
              v35 = 4;
            }

            else
            {
              v35 = 0;
            }

            v36 = [v17 sharedManager];
            v37 = [v36 extensionSupportsPasswords_];

            if (v37)
            {
              v35 |= 2uLL;
            }

            v38 = [v17 sharedManager];
            v39 = [v38 extensionSupportsOneTimeCodes_];

            v40 = v35 | v39;
            v41 = [v17 sharedManager];
            v42 = [v41 extensionSupportsPasskeys_];

            if (v42)
            {
              v43 = 4;
            }

            else
            {
              v43 = 0;
            }

            v44 = [v17 sharedManager];
            v45 = [v44 extensionSupportsPasswords_];

            if (v45)
            {
              v43 |= 2uLL;
            }

            v46 = [v17 sharedManager];
            v4 = [v46 extensionSupportsOneTimeCodes_];

            if ((v43 | v4) < v40)
            {

              v10 = v177;
              if ((v174 & 1) == 0)
              {
                v7 = v168;
                v8 = &selRef_addedAt;
                v9 = v165;
                goto LABEL_54;
              }

              goto LABEL_9;
            }

            v47 = [v17 sharedManager];
            v48 = [v47 displayNameForExtension_];

            v4 = sub_21CB855C4();
            v50 = v49;

            v51 = [v17 sharedManager];
            v52 = [v51 displayNameForExtension_];

            v53 = sub_21CB855C4();
            v55 = v54;

            if (v4 != v53 || v50 != v55)
            {
              v56 = sub_21CB86344();

              v57 = v174 ^ v56;
              v10 = v177;
              if (v57)
              {
                goto LABEL_41;
              }

              goto LABEL_9;
            }
          }

          else
          {
          }

          v10 = v177;
          if (v174)
          {
            v7 = v168;
            v8 = &selRef_addedAt;
            v9 = v165;
            if (v177 < v165)
            {
              goto LABEL_182;
            }

LABEL_46:
            if (v9 < v10)
            {
              v58 = 8 * v10 - 8;
              v59 = 8 * v9;
              v60 = v10;
              v61 = v9;
              while (1)
              {
                if (v61 != --v60)
                {
                  v63 = *a3;
                  if (!*a3)
                  {
                    goto LABEL_188;
                  }

                  v62 = *(v63 + v59);
                  *(v63 + v59) = *(v63 + v58);
                  *(v63 + v58) = v62;
                }

                ++v61;
                v58 -= 8;
                v59 += 8;
                if (v61 >= v60)
                {
                  goto LABEL_54;
                }
              }
            }

            goto LABEL_54;
          }

LABEL_9:
          ++v10;
          v14 = v180 + 1;
          v5 = v172;
          if (v172 == v10)
          {
            v10 = v172;
LABEL_41:
            v8 = &selRef_addedAt;
            v9 = v165;
            break;
          }
        }
      }

      v7 = v168;
      if (v174)
      {
        if (v10 < v9)
        {
          goto LABEL_182;
        }

        goto LABEL_46;
      }

LABEL_54:
      v64 = a3[1];
      if (v10 >= v64)
      {
        goto LABEL_97;
      }

      if (__OFSUB__(v10, v9))
      {
        goto LABEL_181;
      }

      if (v10 - v9 >= a4)
      {
        goto LABEL_97;
      }

      if (__OFADD__(v9, a4))
      {
        goto LABEL_183;
      }

      if (v9 + a4 >= v64)
      {
        v5 = a3[1];
      }

      else
      {
        v5 = v9 + a4;
      }

      if (v5 < v9)
      {
LABEL_184:
        __break(1u);
        goto LABEL_185;
      }

      if (v10 == v5)
      {
        goto LABEL_97;
      }

      v169 = v7;
      v65 = *a3;
      v66 = objc_opt_self();
      v181 = v65;
      v67 = v65 + 8 * v10 - 8;
      v166 = v9;
      v68 = v9 - v10;
      v171 = v5;
      while (2)
      {
        v178 = v10;
        v69 = *(v181 + 8 * v10);
        v173 = v68;
        v175 = v67;
        v70 = v68;
        while (1)
        {
          v183 = v70;
          v71 = *v67;
          v72 = v69;
          v73 = v71;
          v74 = [v66 v8[347]];
          v75 = [v74 extensionSupportsPasskeys_];

          if (v75)
          {
            v76 = 4;
          }

          else
          {
            v76 = 0;
          }

          v77 = [v66 v8[347]];
          v78 = [v77 extensionSupportsPasswords_];

          if (v78)
          {
            v76 |= 2uLL;
          }

          v79 = [v66 v8[347]];
          v80 = [v79 extensionSupportsOneTimeCodes_];

          v81 = v76 | v80;
          v82 = [v66 v8[347]];
          v83 = [v82 extensionSupportsPasskeys_];

          if (v83)
          {
            v84 = 4;
          }

          else
          {
            v84 = 0;
          }

          v85 = [v66 v8[347]];
          v86 = [v85 extensionSupportsPasswords_];

          if (v86)
          {
            v84 |= 2uLL;
          }

          v87 = [v66 v8[347]];
          v4 = [v87 extensionSupportsOneTimeCodes_];

          if (v81 < (v84 | v4))
          {

            goto LABEL_65;
          }

          v88 = [v66 v8[347]];
          v89 = [v88 extensionSupportsPasskeys_];

          v90 = 4;
          if (v89)
          {
            v91 = 4;
          }

          else
          {
            v91 = 0;
          }

          v92 = [v66 v8[347]];
          v93 = [v92 extensionSupportsPasswords_];

          if (v93)
          {
            v91 |= 2uLL;
          }

          v94 = [v66 v8[347]];
          v95 = [v94 extensionSupportsOneTimeCodes_];

          v96 = v91 | v95;
          v97 = [v66 v8[347]];
          v98 = [v97 extensionSupportsPasskeys_];

          if (!v98)
          {
            v90 = 0;
          }

          v99 = [v66 v8[347]];
          v100 = [v99 extensionSupportsPasswords_];

          if (v100)
          {
            v90 |= 2uLL;
          }

          v101 = [v66 v8[347]];
          v4 = [v101 extensionSupportsOneTimeCodes_];

          if ((v90 | v4) < v96)
          {

            goto LABEL_92;
          }

          v102 = [v66 v8[347]];
          v103 = [v102 displayNameForExtension_];

          v104 = v8;
          v105 = sub_21CB855C4();
          v107 = v106;

          v108 = [v66 v104 + 3448];
          v109 = [v108 displayNameForExtension_];

          v110 = sub_21CB855C4();
          v4 = v111;

          if (v105 == v110 && v107 == v4)
          {
            break;
          }

          v112 = sub_21CB86344();

          v8 = &selRef_addedAt;
          if ((v112 & 1) == 0)
          {
            goto LABEL_65;
          }

LABEL_92:
          if (!v181)
          {
            __break(1u);
LABEL_187:
            __break(1u);
LABEL_188:
            __break(1u);
            goto LABEL_189;
          }

          v113 = *v67;
          v69 = *(v67 + 8);
          *v67 = v69;
          *(v67 + 8) = v113;
          v67 -= 8;
          v70 = v183 + 1;
          if (v183 == -1)
          {
            goto LABEL_65;
          }
        }

        v8 = &selRef_addedAt;
LABEL_65:
        v10 = v178 + 1;
        v67 = v175 + 8;
        v68 = v173 - 1;
        v5 = v171;
        if (v178 + 1 != v171)
        {
          continue;
        }

        break;
      }

      v10 = v171;
      v7 = v169;
      v9 = v166;
LABEL_97:
      if (v10 < v9)
      {
        goto LABEL_180;
      }

      v114 = v7;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v7 = v114;
      }

      else
      {
        v7 = sub_21C86467C(0, *(v114 + 2) + 1, 1, v114);
      }

      v5 = *(v7 + 2);
      v115 = *(v7 + 3);
      v116 = v5 + 1;
      if (v5 >= v115 >> 1)
      {
        v7 = sub_21C86467C((v115 > 1), v5 + 1, 1, v7);
      }

      *(v7 + 2) = v116;
      v117 = &v7[16 * v5];
      *(v117 + 4) = v9;
      *(v117 + 5) = v10;
      v118 = *a1;
      if (!*a1)
      {
        goto LABEL_190;
      }

      v6 = v10;
      if (v5)
      {
        while (2)
        {
          v119 = v116 - 1;
          if (v116 >= 4)
          {
            v124 = &v7[16 * v116 + 32];
            v125 = *(v124 - 64);
            v126 = *(v124 - 56);
            v130 = __OFSUB__(v126, v125);
            v127 = v126 - v125;
            if (v130)
            {
              goto LABEL_167;
            }

            v129 = *(v124 - 48);
            v128 = *(v124 - 40);
            v130 = __OFSUB__(v128, v129);
            v122 = v128 - v129;
            v123 = v130;
            if (v130)
            {
              goto LABEL_168;
            }

            v131 = &v7[16 * v116];
            v133 = *v131;
            v132 = *(v131 + 1);
            v130 = __OFSUB__(v132, v133);
            v134 = v132 - v133;
            if (v130)
            {
              goto LABEL_170;
            }

            v130 = __OFADD__(v122, v134);
            v135 = v122 + v134;
            if (v130)
            {
              goto LABEL_173;
            }

            if (v135 >= v127)
            {
              v153 = &v7[16 * v119 + 32];
              v155 = *v153;
              v154 = *(v153 + 1);
              v130 = __OFSUB__(v154, v155);
              v156 = v154 - v155;
              if (v130)
              {
                goto LABEL_177;
              }

              if (v122 < v156)
              {
                v119 = v116 - 2;
              }
            }

            else
            {
LABEL_117:
              if (v123)
              {
                goto LABEL_169;
              }

              v136 = &v7[16 * v116];
              v138 = *v136;
              v137 = *(v136 + 1);
              v139 = __OFSUB__(v137, v138);
              v140 = v137 - v138;
              v141 = v139;
              if (v139)
              {
                goto LABEL_172;
              }

              v142 = &v7[16 * v119 + 32];
              v144 = *v142;
              v143 = *(v142 + 1);
              v130 = __OFSUB__(v143, v144);
              v145 = v143 - v144;
              if (v130)
              {
                goto LABEL_175;
              }

              if (__OFADD__(v140, v145))
              {
                goto LABEL_176;
              }

              if (v140 + v145 < v122)
              {
                goto LABEL_131;
              }

              if (v122 < v145)
              {
                v119 = v116 - 2;
              }
            }
          }

          else
          {
            if (v116 == 3)
            {
              v120 = *(v7 + 4);
              v121 = *(v7 + 5);
              v130 = __OFSUB__(v121, v120);
              v122 = v121 - v120;
              v123 = v130;
              goto LABEL_117;
            }

            v146 = &v7[16 * v116];
            v148 = *v146;
            v147 = *(v146 + 1);
            v130 = __OFSUB__(v147, v148);
            v140 = v147 - v148;
            v141 = v130;
LABEL_131:
            if (v141)
            {
              goto LABEL_171;
            }

            v149 = &v7[16 * v119];
            v151 = *(v149 + 4);
            v150 = *(v149 + 5);
            v130 = __OFSUB__(v150, v151);
            v152 = v150 - v151;
            if (v130)
            {
              goto LABEL_174;
            }

            if (v152 < v140)
            {
              break;
            }
          }

          v5 = v119 - 1;
          if (v119 - 1 >= v116)
          {
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
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
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
LABEL_183:
            __break(1u);
            goto LABEL_184;
          }

          if (!*a3)
          {
            goto LABEL_187;
          }

          v4 = v7;
          v157 = *&v7[16 * v5 + 32];
          v158 = *&v7[16 * v119 + 40];
          sub_21C956C68((*a3 + 8 * v157), (*a3 + 8 * *&v7[16 * v119 + 32]), *a3 + 8 * v158, v118);
          if (v179)
          {
            goto LABEL_161;
          }

          if (v158 < v157)
          {
            goto LABEL_165;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_21C864538(v4);
          }

          if (v5 >= v4[2])
          {
            goto LABEL_166;
          }

          v159 = &v4[2 * v5];
          v159[4] = v157;
          v159[5] = v158;
          v186 = v4;
          sub_21C8644AC(v119);
          v7 = v186;
          v116 = *(v186 + 2);
          if (v116 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v5 = a3[1];
      if (v6 >= v5)
      {
        goto LABEL_150;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_150:
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_191;
  }

  v5 = v7;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v160 = v5;
  }

  else
  {
LABEL_185:
    v160 = sub_21C864538(v5);
  }

  v186 = v160;
  v5 = *(v160 + 2);
  if (v5 < 2)
  {
LABEL_161:

    return;
  }

  while (*a3)
  {
    v161 = *&v160[16 * v5];
    v162 = v160;
    v163 = *&v160[16 * v5 + 24];
    sub_21C956C68((*a3 + 8 * v161), (*a3 + 8 * *&v160[16 * v5 + 16]), *a3 + 8 * v163, v4);
    if (v179)
    {
      goto LABEL_161;
    }

    if (v163 < v161)
    {
      goto LABEL_178;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v162 = sub_21C864538(v162);
    }

    if ((v5 - 2) >= *(v162 + 2))
    {
      goto LABEL_179;
    }

    v164 = &v162[16 * v5];
    *v164 = v161;
    *(v164 + 1) = v163;
    v186 = v162;
    sub_21C8644AC(v5 - 1);
    v160 = v186;
    v5 = *(v186 + 2);
    if (v5 <= 1)
    {
      goto LABEL_161;
    }
  }

LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
}

uint64_t sub_21C956C68(void **__dst, void **__src, unint64_t a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if ((a3 - __src) >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v14 = __src;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v129 = &v4[v12];
    if (v10 >= 8 && v14 > __dst)
    {
      v66 = &selRef_addedAt;
      v128 = v4;
LABEL_55:
      v120 = v14;
      v67 = v14 - 1;
      v68 = (v5 - 8);
      v69 = v129;
      v117 = v14 - 1;
      do
      {
        v126 = v68;
        v70 = *(v69 - 1);
        v118 = v69 - 1;
        v71 = *v67;
        v72 = objc_opt_self();
        v73 = v70;
        v74 = v71;
        v75 = [v72 sharedManager];
        LODWORD(v71) = [v75 v66[188]];

        if (v71)
        {
          v76 = 4;
        }

        else
        {
          v76 = 0;
        }

        v77 = [v72 sharedManager];
        v78 = [v77 extensionSupportsPasswords_];

        if (v78)
        {
          v76 |= 2uLL;
        }

        v79 = [v72 sharedManager];
        v124 = v73;
        v80 = [v79 extensionSupportsOneTimeCodes_];

        v81 = v76 | v80;
        v82 = [v72 sharedManager];
        v83 = [v82 v66[188]];

        v84 = v66;
        if (v83)
        {
          v85 = 4;
        }

        else
        {
          v85 = 0;
        }

        v86 = [v72 sharedManager];
        v87 = [v86 extensionSupportsPasswords_];

        if (v87)
        {
          v85 |= 2uLL;
        }

        v88 = [v72 sharedManager];
        v89 = [v88 extensionSupportsOneTimeCodes_];

        if (v81 >= (v85 | v89))
        {
          v90 = [v72 sharedManager];
          v91 = [v90 v84 + 3783];

          if (v91)
          {
            v92 = 4;
          }

          else
          {
            v92 = 0;
          }

          v93 = [v72 sharedManager];
          v94 = [v93 extensionSupportsPasswords_];

          if (v94)
          {
            v92 |= 2uLL;
          }

          v95 = [v72 sharedManager];
          v96 = [v95 extensionSupportsOneTimeCodes_];

          v97 = v92 | v96;
          v98 = [v72 sharedManager];
          v99 = [v98 v84 + 3783];

          if (v99)
          {
            v100 = 4;
          }

          else
          {
            v100 = 0;
          }

          v101 = [v72 sharedManager];
          v102 = [v101 extensionSupportsPasswords_];

          if (v102)
          {
            v100 |= 2uLL;
          }

          v103 = [v72 sharedManager];
          v104 = [v103 extensionSupportsOneTimeCodes_];

          if ((v100 | v104) < v97)
          {

            v66 = &selRef_addedAt;
            v4 = v128;
LABEL_87:
            v5 = v126;
            if (v126 + 1 != v120)
            {
              *v126 = *v117;
            }

            if (v129 <= v4 || (v14 = v117, v117 <= __dst))
            {
              v14 = v117;
              goto LABEL_95;
            }

            goto LABEL_55;
          }

          v105 = [v72 sharedManager];
          v106 = [v105 displayNameForExtension_];

          v107 = sub_21CB855C4();
          v109 = v108;

          v110 = [v72 sharedManager];
          v111 = [v110 displayNameForExtension_];

          v112 = sub_21CB855C4();
          v114 = v113;

          if (v107 == v112 && v109 == v114)
          {

            v4 = v128;
            v66 = &selRef_addedAt;
          }

          else
          {
            v115 = sub_21CB86344();

            v4 = v128;
            v66 = &selRef_addedAt;
            if (v115)
            {
              goto LABEL_87;
            }
          }
        }

        else
        {

          v66 = v84;
          v4 = v128;
        }

        v69 = v118;
        if (v126 + 1 != v129)
        {
          *v126 = *v118;
        }

        v68 = v126 - 1;
        v129 = v118;
        v67 = v117;
      }

      while (v118 > v4);
      v129 = v118;
      v14 = v120;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v129 = &v4[v9];
    if (v7 < 8)
    {
      v14 = __dst;
    }

    else
    {
      v14 = __dst;
      if (__src < v5)
      {
        v15 = __src;
        v16 = &selRef_addedAt;
        v125 = v5;
        while (1)
        {
          v119 = v15;
          v121 = v14;
          v17 = *v15;
          v127 = v4;
          v18 = *v4;
          v19 = objc_opt_self();
          v20 = v17;
          v21 = v18;
          v22 = [v19 sharedManager];
          v23 = [v22 v16[188]];

          if (v23)
          {
            v24 = 4;
          }

          else
          {
            v24 = 0;
          }

          v25 = [v19 sharedManager];
          v26 = [v25 extensionSupportsPasswords_];

          if (v26)
          {
            v24 |= 2uLL;
          }

          v27 = [v19 sharedManager];
          v123 = v20;
          v28 = [v27 extensionSupportsOneTimeCodes_];

          v29 = v24 | v28;
          v30 = [v19 &selRef__isEveryRecipientEligibleForSharing_];
          v31 = [v30 v16[188]];

          if (v31)
          {
            v32 = 4;
          }

          else
          {
            v32 = 0;
          }

          v33 = [v19 &selRef__isEveryRecipientEligibleForSharing_];
          v34 = [v33 extensionSupportsPasswords_];

          if (v34)
          {
            v32 |= 2uLL;
          }

          v35 = [v19 &selRef__isEveryRecipientEligibleForSharing_];
          v36 = [v35 extensionSupportsOneTimeCodes_];

          if (v29 < (v32 | v36))
          {
            break;
          }

          v40 = [v19 sharedManager];
          v41 = [v40 extensionSupportsPasskeys_];

          if (v41)
          {
            v42 = 4;
          }

          else
          {
            v42 = 0;
          }

          v43 = [v19 sharedManager];
          v44 = [v43 extensionSupportsPasswords_];

          if (v44)
          {
            v42 |= 2uLL;
          }

          v45 = [v19 &selRef__isEveryRecipientEligibleForSharing_];
          v46 = [v45 extensionSupportsOneTimeCodes_];

          v47 = v42 | v46;
          v48 = [v19 &selRef__isEveryRecipientEligibleForSharing_];
          v49 = [v48 extensionSupportsPasskeys_];

          if (v49)
          {
            v50 = 4;
          }

          else
          {
            v50 = 0;
          }

          v51 = [v19 &selRef__isEveryRecipientEligibleForSharing_];
          v52 = [v51 extensionSupportsPasswords_];

          if (v52)
          {
            v50 |= 2uLL;
          }

          v53 = [v19 &selRef__isEveryRecipientEligibleForSharing_];
          v54 = [v53 extensionSupportsOneTimeCodes_];

          if ((v50 | v54) >= v47)
          {
            v55 = [v19 sharedManager];
            v56 = [v55 displayNameForExtension_];

            v57 = sub_21CB855C4();
            v59 = v58;

            v60 = [v19 sharedManager];
            v61 = [v60 &selRef_hasChanges + 4];

            v62 = sub_21CB855C4();
            v64 = v63;

            if (v57 == v62 && v59 == v64)
            {

              goto LABEL_24;
            }

            v65 = sub_21CB86344();

            v16 = &selRef_addedAt;
            if ((v65 & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          else
          {

            v16 = &selRef_addedAt;
          }

          v38 = v121;
          v37 = v119;
          v15 = v119 + 1;
          v4 = v127;
          v39 = v125;
          if (v121 != v119)
          {
            goto LABEL_26;
          }

LABEL_27:
          v14 = v38 + 1;
          if (v4 >= v129 || v15 >= v39)
          {
            goto LABEL_95;
          }
        }

LABEL_24:
        v16 = &selRef_addedAt;
LABEL_25:
        v37 = v127;
        v4 = v127 + 1;
        v15 = v119;
        v38 = v121;
        v39 = v125;
        if (v121 == v127)
        {
          goto LABEL_27;
        }

LABEL_26:
        *v38 = *v37;
        goto LABEL_27;
      }
    }
  }

LABEL_95:
  if (v14 != v4 || v14 >= (v4 + ((v129 - v4 + (v129 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v14, v4, 8 * (v129 - v4));
  }

  return 1;
}

unint64_t sub_21C95776C()
{
  result = qword_280E22EE0[0];
  if (!qword_280E22EE0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_280E22EE0);
  }

  return result;
}

unint64_t sub_21C9577B8()
{
  result = qword_27CDF2208;
  if (!qword_27CDF2208)
  {
    sub_21C95776C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2208);
  }

  return result;
}

void sub_21C957858(uint64_t a1)
{
  sub_21C9578EC();
  if (v1 <= 0x3F)
  {
    sub_21C7086F8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C9578EC()
{
  if (!qword_27CDF2240)
  {
    v0 = sub_21CB85E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF2240);
    }
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21C957950(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_21C957998(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI16PMOnboardingViewV7ContentV0F4TypeO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21C957A24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_21C957A6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C957AE8()
{
  sub_21CB86484();
  sub_21CB854C4();
  sub_21CB854C4();
  return sub_21CB864D4();
}

uint64_t sub_21C957B50(uint64_t a1)
{
  sub_21CB854C4();

  return sub_21CB854C4();
}

uint64_t sub_21C957BA0(uint64_t a1)
{
  sub_21CB86484();
  sub_21CB854C4();
  sub_21CB854C4();
  return sub_21CB864D4();
}

uint64_t sub_21C957C04@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
  a1[4] = v6;
}

uint64_t sub_21C957C58(void *a1, void *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  if ((sub_21CB84C44() & 1) == 0)
  {
    return 0;
  }

  v10 = v2 == v6 && v4 == v8;
  if (!v10 && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v7 && v5 == v9)
  {
    return 1;
  }

  return sub_21CB86344();
}

uint64_t sub_21C957D30@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v89 = a2;
  v85 = sub_21CB83834();
  v81 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v70 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  MEMORY[0x28223BE20](v75);
  v82 = &v70 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = &v70 - v8;
  MEMORY[0x28223BE20](v9);
  v91 = &v70 - v10;
  v11 = type metadata accessor for PMOnboardingView.ButtonStack(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2258, &qword_21CBB3980);
  MEMORY[0x28223BE20](v78);
  v88 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v77 = &v70 - v17;
  MEMORY[0x28223BE20](v18);
  v84 = &v70 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2260, &qword_21CBB3988);
  v86 = *(v20 - 8);
  v87 = v20;
  MEMORY[0x28223BE20](v20);
  v83 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v70 - v23;
  v92 = a1;
  sub_21CB83CC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2268, &qword_21CBB3990);
  sub_21C95B1CC();
  v80 = v24;
  sub_21CB81FF4();
  v25 = *(a1 + 56);
  v26 = *(a1 + 64);
  v28 = *(a1 + 72);
  v27 = *(a1 + 80);
  v74 = *(a1 + 96);
  v29 = v74;
  v73 = *(a1 + 104);
  v30 = v73;
  v32 = *(a1 + 120);
  v72 = *(a1 + 112);
  v31 = v72;
  *v14 = v25;
  *(v14 + 1) = v26;
  *(v14 + 2) = v28;
  *(v14 + 3) = v27;
  v14[32] = *(a1 + 88);
  *(v14 + 5) = v29;
  *(v14 + 6) = v30;
  *(v14 + 7) = v31;
  *(v14 + 8) = v32;
  v76 = a1;
  v14[72] = *(a1 + 128);
  v33 = *(v12 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v34 = *(v12 + 36);
  v79 = v14;
  v35 = &v14[v34];
  type metadata accessor for PMGlobalAnimationNamespaceContainer(0);
  sub_21C95B284(v25, v26, v28, v27);
  sub_21C95B284(v74, v73, v72, v32);
  sub_21C95B318(&qword_27CDEADC8, type metadata accessor for PMGlobalAnimationNamespaceContainer, &unk_21CBA8E84);
  *v35 = sub_21CB82084();
  v35[8] = v36 & 1;
  LOBYTE(v26) = sub_21CB83CD4();
  v37 = sub_21CB83D24();
  sub_21CB83D24();
  if (sub_21CB83D24() != v26)
  {
    v37 = sub_21CB83D24();
  }

  LODWORD(v74) = v37;
  type metadata accessor for PMOnboardingView(0);
  v38 = v91;
  sub_21C728D50(v91);
  v39 = v81;
  v40 = v90;
  v41 = v85;
  (*(v81 + 104))(v90, *MEMORY[0x277CE0558], v85);
  (*(v39 + 56))(v40, 0, 1, v41);
  v42 = *(v75 + 48);
  v43 = v82;
  sub_21C6EDBAC(v38, v82, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v40, v43 + v42, &qword_27CDEC390, &qword_21CBA40E0);
  v44 = *(v39 + 48);
  if (v44(v43, 1, v41) != 1)
  {
    v45 = v71;
    sub_21C6EDBAC(v43, v71, &qword_27CDEC390, &qword_21CBA40E0);
    if (v44(v43 + v42, 1, v41) != 1)
    {
      v46 = v43 + v42;
      v47 = v70;
      (*(v39 + 32))(v70, v46, v41);
      sub_21C95B318(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      sub_21CB85574();
      v48 = *(v39 + 8);
      v48(v47, v41);
      sub_21C6EA794(v90, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v91, &qword_27CDEC390, &qword_21CBA40E0);
      v48(v45, v41);
      sub_21C6EA794(v43, &qword_27CDEC390, &qword_21CBA40E0);
      goto LABEL_10;
    }

    sub_21C6EA794(v90, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v91, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v39 + 8))(v45, v41);
    goto LABEL_8;
  }

  sub_21C6EA794(v40, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v38, &qword_27CDEC390, &qword_21CBA40E0);
  if (v44(v43 + v42, 1, v41) != 1)
  {
LABEL_8:
    sub_21C6EA794(v43, &qword_27CDEE530, &unk_21CBA9D80);
    goto LABEL_10;
  }

  sub_21C6EA794(v43, &qword_27CDEC390, &qword_21CBA40E0);
LABEL_10:
  sub_21CB81F24();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = v77;
  sub_21C95B768(v79, v77, type metadata accessor for PMOnboardingView.ButtonStack);
  v58 = v57 + *(v78 + 36);
  *v58 = v74;
  *(v58 + 8) = v50;
  *(v58 + 16) = v52;
  *(v58 + 24) = v54;
  *(v58 + 32) = v56;
  *(v58 + 40) = 0;
  v59 = v84;
  sub_21C716934(v57, v84, &qword_27CDF2258, &qword_21CBB3980);
  v61 = v86;
  v60 = v87;
  v62 = *(v86 + 16);
  v63 = v83;
  v64 = v80;
  v62(v83, v80, v87);
  v65 = v88;
  sub_21C6EDBAC(v59, v88, &qword_27CDF2258, &qword_21CBB3980);
  v66 = v89;
  v62(v89, v63, v60);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2288, &qword_21CBB39D8);
  sub_21C6EDBAC(v65, &v66[*(v67 + 48)], &qword_27CDF2258, &qword_21CBB3980);
  sub_21C6EA794(v59, &qword_27CDF2258, &qword_21CBB3980);
  v68 = *(v61 + 8);
  v68(v64, v60);
  sub_21C6EA794(v65, &qword_27CDF2258, &qword_21CBB3980);
  return (v68)(v63, v60);
}

__n128 sub_21C9586BC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB832E4();
  sub_21C958790(a1, v15);
  *&v14[7] = v15[0];
  *&v14[23] = v15[1];
  *&v14[39] = v15[2];
  *&v14[55] = v16;
  v5 = sub_21C958A6C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_21CB83CE4();
  *(a2 + 17) = *v14;
  *a2 = v4;
  *(a2 + 8) = 0x403A000000000000;
  *(a2 + 16) = 0;
  *(a2 + 33) = *&v14[16];
  *(a2 + 49) = *&v14[32];
  result = *&v14[41];
  *(a2 + 58) = *&v14[41];
  *(a2 + 80) = v12;
  *(a2 + 88) = v5;
  *(a2 + 96) = v7;
  *(a2 + 104) = v9;
  *(a2 + 112) = v11;
  *(a2 + 120) = 0;
  return result;
}

uint64_t sub_21C958790@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];

  sub_21C95888C(a1, &v13);
  v9 = v13;
  v10 = v15;
  v11 = v14;
  v16 = v15;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  *(a2 + 48) = v11;
  *(a2 + 49) = v10;

  sub_21C95B360(v9, v11, v10);
  sub_21C95B37C(v9, v11, v10);
}

uint64_t sub_21C95888C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  if (!*(a1 + 48))
  {
    if (*(v3 + 16))
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF22A8, &unk_21CBB39E8);
    sub_21C95B424();
    sub_21CB83494();
    goto LABEL_8;
  }

  if (*(a1 + 48) != 1)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2290, &qword_21CBB39E0);
    sub_21C95B398();
    result = sub_21CB83494();
    goto LABEL_9;
  }

  sub_21C95B4FC(v3, 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF22A8, &unk_21CBB39E8);
  sub_21C95B424();
  sub_21CB83494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2290, &qword_21CBB39E0);
  sub_21C95B398();
  sub_21CB83494();
  result = sub_21C95B518(v3, 1);
LABEL_9:
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 9) = v7;
  return result;
}

double sub_21C958A6C()
{
  v1 = sub_21CB83834();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v46 = &v43[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  MEMORY[0x28223BE20](v4);
  v57 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v43[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v9 - 8);
  v56 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v54 = &v43[-v12];
  MEMORY[0x28223BE20](v13);
  v55 = &v43[-v14];
  MEMORY[0x28223BE20](v15);
  v17 = &v43[-v16];
  MEMORY[0x28223BE20](v18);
  v20 = &v43[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v43[-v22];
  v24 = *(type metadata accessor for PMOnboardingView(0) + 28);
  v53 = v0;
  v51 = v24;
  sub_21C728D50(v23);
  v25 = v2[13];
  v50 = *MEMORY[0x277CE0558];
  v48 = v25;
  v49 = v2 + 13;
  v25(v20);
  v47 = v2[7];
  v47(v20, 0, 1, v1);
  v52 = v4;
  v26 = *(v4 + 48);
  sub_21C6EDBAC(v23, v8, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v20, &v8[v26], &qword_27CDEC390, &qword_21CBA40E0);
  v58 = v2;
  v27 = v2[6];
  if (v27(v8, 1, v1) == 1)
  {
    sub_21C6EA794(v20, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v23, &qword_27CDEC390, &qword_21CBA40E0);
    if (v27(&v8[v26], 1, v1) == 1)
    {
      sub_21C6EA794(v8, &qword_27CDEC390, &qword_21CBA40E0);
      v28 = 0x4050800000000000;
LABEL_7:
      v29 = *&v28;
      goto LABEL_11;
    }

LABEL_6:
    sub_21C6EA794(v8, &qword_27CDEE530, &unk_21CBA9D80);
    v28 = 0x4056800000000000;
    goto LABEL_7;
  }

  sub_21C6EDBAC(v8, v17, &qword_27CDEC390, &qword_21CBA40E0);
  if (v27(&v8[v26], 1, v1) == 1)
  {
    sub_21C6EA794(v20, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v23, &qword_27CDEC390, &qword_21CBA40E0);
    (v58[1])(v17, v1);
    goto LABEL_6;
  }

  v30 = v58[4];
  v45 = v27;
  v31 = v46;
  v30(v46, &v8[v26], v1);
  sub_21C95B318(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v44 = sub_21CB85574();
  v32 = v58[1];
  v33 = v31;
  v27 = v45;
  v32(v33, v1);
  sub_21C6EA794(v20, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v23, &qword_27CDEC390, &qword_21CBA40E0);
  v32(v17, v1);
  sub_21C6EA794(v8, &qword_27CDEC390, &qword_21CBA40E0);
  if (v44)
  {
    v29 = 66.0;
  }

  else
  {
    v29 = 90.0;
  }

LABEL_11:
  v35 = v56;
  v34 = v57;
  v36 = v55;
  sub_21C728D50(v55);
  v37 = v54;
  v48(v54, v50, v1);
  v47(v37, 0, 1, v1);
  v38 = *(v52 + 48);
  sub_21C6EDBAC(v36, v34, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v37, v34 + v38, &qword_27CDEC390, &qword_21CBA40E0);
  if (v27(v34, 1, v1) != 1)
  {
    sub_21C6EDBAC(v34, v35, &qword_27CDEC390, &qword_21CBA40E0);
    if (v27((v34 + v38), 1, v1) != 1)
    {
      v39 = v58;
      v40 = v46;
      (v58[4])(v46, v34 + v38, v1);
      sub_21C95B318(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      sub_21CB85574();
      v41 = v39[1];
      v41(v40, v1);
      sub_21C6EA794(v37, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v36, &qword_27CDEC390, &qword_21CBA40E0);
      v41(v35, v1);
      sub_21C6EA794(v34, &qword_27CDEC390, &qword_21CBA40E0);
      return v29;
    }

    sub_21C6EA794(v37, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v36, &qword_27CDEC390, &qword_21CBA40E0);
    (v58[1])(v35, v1);
    goto LABEL_16;
  }

  sub_21C6EA794(v37, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v36, &qword_27CDEC390, &qword_21CBA40E0);
  if (v27((v34 + v38), 1, v1) != 1)
  {
LABEL_16:
    sub_21C6EA794(v34, &qword_27CDEE530, &unk_21CBA9D80);
    return v29;
  }

  sub_21C6EA794(v34, &qword_27CDEC390, &qword_21CBA40E0);
  return v29;
}

uint64_t sub_21C95928C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v39 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2370, &qword_21CBB3D60);
  MEMORY[0x28223BE20](v2 - 8);
  v38 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v7 = sub_21CB84BD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CB84BE4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2378, &qword_21CBB3D68);
  MEMORY[0x28223BE20](v36);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2380, &qword_21CBB3D70);
  MEMORY[0x28223BE20](v17 - 8);
  v37 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v34 = &v33 - v20;
  sub_21CB84BC4();
  (*(v12 + 104))(v14, *MEMORY[0x277CE0FF0], v11);
  sub_21CB84BF4();

  (*(v12 + 8))(v14, v11);
  (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v7);
  v21 = sub_21CB84C64();

  (*(v8 + 8))(v10, v7);
  sub_21CB85214();
  sub_21CB82374();
  v41 = 1;
  *&v40[6] = v42;
  *&v40[22] = v43;
  *&v40[38] = v44;
  v22 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2388, &qword_21CBB3D78) + 36)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2390, &qword_21CBB3D80) + 28);
  sub_21CB83344();
  v24 = sub_21CB83354();
  (*(*(v24 - 8) + 56))(&v22[v23], 0, 1, v24);
  *v22 = swift_getKeyPath(byte_21CBB3D88);
  *v16 = v21;
  *(v16 + 1) = 0;
  *(v16 + 8) = 1;
  v25 = *&v40[16];
  *(v16 + 18) = *v40;
  *(v16 + 34) = v25;
  *(v16 + 50) = *&v40[32];
  *(v16 + 8) = *&v40[46];
  *&v16[*(v36 + 36)] = sub_21CB84A34();
  sub_21C95BE58();
  v26 = v34;
  sub_21CB84494();
  sub_21C6EA794(v16, &qword_27CDF2378, &qword_21CBB3D68);
  *v6 = sub_21CB832F4();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF23B0, &qword_21CBB3DC0);
  sub_21C959820(v35, &v6[*(v27 + 44)]);
  v28 = v37;
  sub_21C6EDBAC(v26, v37, &qword_27CDF2380, &qword_21CBB3D70);
  v29 = v38;
  sub_21C6EDBAC(v6, v38, &qword_27CDF2370, &qword_21CBB3D60);
  v30 = v39;
  sub_21C6EDBAC(v28, v39, &qword_27CDF2380, &qword_21CBB3D70);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF23B8, &qword_21CBB3DC8);
  sub_21C6EDBAC(v29, v30 + *(v31 + 48), &qword_27CDF2370, &qword_21CBB3D60);
  sub_21C6EA794(v6, &qword_27CDF2370, &qword_21CBB3D60);
  sub_21C6EA794(v26, &qword_27CDF2380, &qword_21CBB3D70);
  sub_21C6EA794(v29, &qword_27CDF2370, &qword_21CBB3D60);
  return sub_21C6EA794(v28, &qword_27CDF2380, &qword_21CBB3D70);
}

uint64_t sub_21C959820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_21CB83274();
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x28223BE20](v3);
  v66 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF23C0, &qword_21CBB3DD0);
  v65 = *(v69 - 1);
  MEMORY[0x28223BE20](v69);
  v6 = &v62 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF23C8, &qword_21CBB3DD8);
  MEMORY[0x28223BE20](v63);
  v8 = &v62 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF23D0, &qword_21CBB3DE0);
  MEMORY[0x28223BE20](v9 - 8);
  v70 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v62 - v12;
  v64 = a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  *&v97 = v14;
  *(&v97 + 1) = v15;
  v16 = sub_21C71F3FC();

  v62 = v16;
  v17 = sub_21CB84054();
  v19 = v18;
  LOBYTE(v16) = v20;
  v22 = v21;
  v24 = sub_21CB83E34();
  v25 = swift_getKeyPath(byte_21CBB3E18);
  LOBYTE(v85) = v16 & 1;
  *&v97 = v17;
  *(&v97 + 1) = v19;
  LOBYTE(v98) = v16 & 1;
  *(&v98 + 1) = v22;
  *&v99 = KeyPath;
  BYTE8(v99) = 0;
  *&v100 = v25;
  *(&v100 + 1) = v24;
  sub_21CB83DD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF23D8, &unk_21CBCBD30);
  sub_21C95BFC8();
  sub_21CB840D4();
  v116[0] = v97;
  v116[1] = v98;
  v116[2] = v99;
  v116[3] = v100;
  sub_21C6EA794(v116, &qword_27CDF23D8, &unk_21CBCBD30);
  sub_21CB85224();
  sub_21CB82AC4();
  (*(v65 + 32))(v8, v6, v69);
  v26 = &v8[*(v63 + 36)];
  v27 = v114;
  *(v26 + 4) = v113;
  *(v26 + 5) = v27;
  *(v26 + 6) = v115;
  v28 = v110;
  *v26 = v109;
  *(v26 + 1) = v28;
  v29 = v112;
  *(v26 + 2) = v111;
  *(v26 + 3) = v29;
  v30 = v66;
  sub_21CB83264();
  sub_21C95C080();
  v69 = v13;
  sub_21CB84594();
  (*(v67 + 8))(v30, v68);
  sub_21C6EA794(v8, &qword_27CDF23C8, &qword_21CBB3DD8);
  v31 = *(v64 + 32);
  if (v31)
  {
    *&v97 = *(v64 + 24);
    *(&v97 + 1) = v31;

    v32 = sub_21CB84054();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = sub_21CB83E34();
    v41 = swift_getKeyPath(byte_21CBB3E18);
    v42 = v36 & 1;
    LOBYTE(v97) = v36 & 1;
    v43 = sub_21CB84B34();
    v44 = swift_getKeyPath(byte_21CBB3E68);
    sub_21CB85224();
    sub_21CB82AC4();
    *&v85 = v32;
    *(&v85 + 1) = v34;
    LOBYTE(v86) = v42;
    *(&v86 + 1) = v38;
    *&v87 = v39;
    BYTE8(v87) = 0;
    *&v88 = v41;
    *(&v88 + 1) = v40;
    *&v89 = v44;
    *(&v89 + 1) = v43;
    nullsub_1();
    v105 = v93;
    v106 = v94;
    v107 = v95;
    v108 = v96;
    v101 = v89;
    v102 = v90;
    v103 = v91;
    v104 = v92;
    v97 = v85;
    v98 = v86;
    v99 = v87;
    v100 = v88;
  }

  else
  {
    sub_21C95C148(&v97);
  }

  v46 = v69;
  v45 = v70;
  sub_21C6EDBAC(v69, v70, &qword_27CDF23D0, &qword_21CBB3DE0);
  v80 = v105;
  v81 = v106;
  v82 = v107;
  v83 = v108;
  v76 = v101;
  v77 = v102;
  v78 = v103;
  v79 = v104;
  v72 = v97;
  v73 = v98;
  v74 = v99;
  v75 = v100;
  v47 = v71;
  sub_21C6EDBAC(v45, v71, &qword_27CDF23D0, &qword_21CBB3DE0);
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF23F0, &qword_21CBB3E58) + 48);
  v49 = v81;
  v84[8] = v80;
  v84[9] = v81;
  v50 = v82;
  v51 = v83;
  v84[10] = v82;
  v84[11] = v83;
  v52 = v76;
  v53 = v77;
  v84[4] = v76;
  v84[5] = v77;
  v54 = v78;
  v55 = v79;
  v84[6] = v78;
  v84[7] = v79;
  v56 = v72;
  v57 = v73;
  v84[0] = v72;
  v84[1] = v73;
  v58 = v74;
  v59 = v75;
  v84[2] = v74;
  v84[3] = v75;
  v60 = (v47 + v48);
  v60[8] = v80;
  v60[9] = v49;
  v60[10] = v50;
  v60[11] = v51;
  v60[4] = v52;
  v60[5] = v53;
  v60[6] = v54;
  v60[7] = v55;
  *v60 = v56;
  v60[1] = v57;
  v60[2] = v58;
  v60[3] = v59;
  sub_21C6EDBAC(v84, &v85, &qword_27CDF23F8, &qword_21CBB3E60);
  sub_21C6EA794(v46, &qword_27CDF23D0, &qword_21CBB3DE0);
  v93 = v80;
  v94 = v81;
  v95 = v82;
  v96 = v83;
  v89 = v76;
  v90 = v77;
  v91 = v78;
  v92 = v79;
  v85 = v72;
  v86 = v73;
  v87 = v74;
  v88 = v75;
  sub_21C6EA794(&v85, &qword_27CDF23F8, &qword_21CBB3E60);
  return sub_21C6EA794(v45, &qword_27CDF23D0, &qword_21CBB3DE0);
}

uint64_t sub_21C959ECC@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v4;
  v8 = *(v2 + 32);
  *a2 = sub_21CB832E4();
  *(a2 + 8) = 0x4041800000000000;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2368, &qword_21CBB3D58);
  return sub_21C95928C(v7, a2 + *(v5 + 44));
}

uint64_t sub_21C959F3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v3;
  a2[4] = v5;
}

uint64_t sub_21C959F94@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21CB851D4();
  *(a1 + 8) = v2;
  *(a1 + 16) = 0x4010000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x4030000000000000;
  *(a1 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF22F0, &qword_21CBB3CC8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF22F8, &qword_21CBB3CD0);
  sub_21C6EADEC(&qword_27CDF2300, &qword_27CDF22F8, &qword_21CBB3CD0, MEMORY[0x277D83980]);
  sub_21C95BB8C();
  sub_21C95BBE0();
  sub_21CB84FF4();
  v3 = sub_21CB83D14();
  sub_21CB81F24();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2318, &unk_21CBB3CD8);
  v13 = a1 + *(result + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  return result;
}

uint64_t sub_21C95A10C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2450, &qword_21CBB3F20);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = *a1;
  v14 = sub_21CB83DC4();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);

  v15 = sub_21CB83E14();
  sub_21C6EA794(v5, &qword_27CDEBB58, &qword_21CBAF8A0);
  KeyPath = swift_getKeyPath(byte_21CBB3E18);
  v17 = sub_21CB84A34();
  v35[0] = v13;
  v35[1] = KeyPath;
  v35[2] = v15;
  v35[3] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4570, &unk_21CBBADB0);
  sub_21C8FD504();
  sub_21CB84494();

  sub_21CB85214();
  sub_21CB82374();
  v18 = &v12[*(v7 + 44)];
  v19 = v30;
  *v18 = v29;
  *(v18 + 1) = v19;
  *(v18 + 2) = v31;
  v20 = sub_21CB832E4();
  v28 = 1;
  sub_21C95A4E0(v25, v35);
  memcpy(v32, v35, sizeof(v32));
  memcpy(v33, v35, sizeof(v33));
  sub_21C6EDBAC(v32, v34, &qword_27CDF2458, &qword_21CBB3F28);
  sub_21C6EA794(v33, &qword_27CDF2458, &qword_21CBB3F28);
  memcpy(&v27[7], v32, 0x120uLL);
  LOBYTE(v15) = v28;
  sub_21C6EDBAC(v12, v9, &qword_27CDF2450, &qword_21CBB3F20);
  v21 = v26;
  sub_21C6EDBAC(v9, v26, &qword_27CDF2450, &qword_21CBB3F20);
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2460, &qword_21CBB3F30) + 48);
  v34[0] = v20;
  v34[1] = 0;
  LOBYTE(v34[2]) = v15;
  memcpy(&v34[2] + 1, v27, 0x127uLL);
  memcpy((v21 + v22), v34, 0x138uLL);
  sub_21C6EDBAC(v34, v35, &qword_27CDF2468, &qword_21CBB3F38);
  sub_21C6EA794(v12, &qword_27CDF2450, &qword_21CBB3F20);
  v35[0] = v20;
  v35[1] = 0;
  LOBYTE(v35[2]) = v15;
  memcpy(&v35[2] + 1, v27, 0x127uLL);
  sub_21C6EA794(v35, &qword_27CDF2468, &qword_21CBB3F38);
  return sub_21C6EA794(v9, &qword_27CDF2450, &qword_21CBB3F20);
}

uint64_t sub_21C95A4E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[2];
  v80 = a1[1];
  v81 = v3;
  sub_21C71F3FC();

  v4 = sub_21CB84054();
  v6 = v5;
  v8 = v7;
  sub_21CB83D94();
  v9 = sub_21CB84024();
  v11 = v10;
  v13 = v12;

  sub_21C74A72C(v4, v6, v8 & 1);

  sub_21CB83E04();
  v14 = sub_21CB83FA4();
  v38 = v15;
  v39 = v14;
  v17 = v16;
  v40 = v18;
  sub_21C74A72C(v9, v11, v13 & 1);

  sub_21CB85224();
  sub_21CB82AC4();
  v19 = v17 & 1;
  v102 = v17 & 1;
  v41 = v17 & 1;
  v20 = a1[4];
  v80 = a1[3];
  v81 = v20;

  v21 = sub_21CB84054();
  v23 = v22;
  v25 = v24;
  sub_21CB83D94();
  v26 = sub_21CB84024();
  v28 = v27;
  LOBYTE(v4) = v29;

  sub_21C74A72C(v21, v23, v25 & 1);

  sub_21CB84B34();
  v30 = sub_21CB83FB4();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_21C74A72C(v26, v28, v4 & 1);

  sub_21CB85224();
  sub_21CB82AC4();
  v93 = v34 & 1;
  *&v51 = v39;
  *(&v51 + 1) = v38;
  LOBYTE(v52) = v19;
  *(&v52 + 1) = *v101;
  DWORD1(v52) = *&v101[3];
  *(&v52 + 1) = v40;
  v57 = v98;
  v58 = v99;
  v59 = v100;
  v53 = v94;
  v54 = v95;
  v55 = v96;
  v56 = v97;
  __src[6] = v98;
  __src[7] = v99;
  __src[2] = v94;
  __src[3] = v95;
  __src[4] = v96;
  __src[5] = v97;
  __src[0] = v51;
  __src[1] = v52;
  *&v60 = v30;
  *(&v60 + 1) = v32;
  LOBYTE(v61) = v34 & 1;
  *(&v61 + 1) = *v92;
  DWORD1(v61) = *&v92[3];
  *(&v61 + 1) = v36;
  v66 = v48;
  v67 = v49;
  v68 = v50;
  v62 = v44;
  v63 = v45;
  v64 = v46;
  v65 = v47;
  __src[12] = v45;
  __src[13] = v46;
  __src[10] = v61;
  __src[11] = v44;
  __src[14] = v47;
  __src[15] = v48;
  __src[16] = v49;
  __src[17] = v50;
  __src[8] = v100;
  __src[9] = v60;
  memcpy(a2, __src, 0x120uLL);
  v69[0] = v30;
  v69[1] = v32;
  v70 = v34 & 1;
  *v71 = *v92;
  *&v71[3] = *&v92[3];
  v72 = v36;
  v77 = v48;
  v78 = v49;
  v79 = v50;
  v73 = v44;
  v74 = v45;
  v75 = v46;
  v76 = v47;
  sub_21C6EDBAC(&v51, &v80, &qword_27CDEB208, &unk_21CBB3F40);
  sub_21C6EDBAC(&v60, &v80, &qword_27CDEB208, &unk_21CBB3F40);
  sub_21C6EA794(v69, &qword_27CDEB208, &unk_21CBB3F40);
  v80 = v39;
  v81 = v38;
  v82 = v41;
  *v83 = *v101;
  *&v83[3] = *&v101[3];
  v84 = v40;
  v88 = v97;
  v89 = v98;
  v90 = v99;
  v91 = v100;
  v85 = v94;
  v86 = v95;
  v87 = v96;
  return sub_21C6EA794(&v80, &qword_27CDEB208, &unk_21CBB3F40);
}

uint64_t sub_21C95A950@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  *a1 = 0;
  *(a1 + 8) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2448, &unk_21CBB3F10);
  return sub_21C95A10C(v6, a1 + *(v4 + 36));
}

uint64_t sub_21C95A9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2338, &qword_21CBB3D00);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  sub_21C95AC38(&v25 - v6);
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v30 = v12;
  v28 = v11;
  v29 = v10;
  v26 = v9;
  if (v8)
  {
    v13 = v12 & 1;
    v14 = swift_allocObject();
    *(v14 + 16) = v9;
    *(v14 + 24) = v8;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
    *(v14 + 48) = v13;
    KeyPath = swift_getKeyPath(byte_21CBB3D10);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;

    v16 = sub_21C735744;
    v17 = sub_21C95C394;
    v18 = v9;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v14 = 0;
    KeyPath = 0;
    v16 = 0;
    v15 = 0;
  }

  v19 = v32;
  sub_21C6EDBAC(v7, v32, &qword_27CDF2338, &qword_21CBB3D00);
  v25 = v7;
  v20 = v31;
  sub_21C6EDBAC(v19, v31, &qword_27CDF2338, &qword_21CBB3D00);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2340, &qword_21CBB3D08) + 48));
  *v21 = v18;
  v21[1] = v8;
  v21[2] = v17;
  v21[3] = v14;
  v22 = v26;
  v23 = KeyPath;
  v21[4] = KeyPath;
  v21[5] = v16;
  v21[6] = v15;
  sub_21C95B284(v22, v8, v29, v28);
  sub_21C95BC34(v18, v8, v17, v14, v23, v16, v15);
  sub_21C6EA794(v25, &qword_27CDF2338, &qword_21CBB3D00);
  sub_21C95BC98(v18, v8, v17, v14, v23, v16, v15);
  return sub_21C6EA794(v19, &qword_27CDF2338, &qword_21CBB3D00);
}

uint64_t sub_21C95AC38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB82F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2348, &qword_21CBB3D40);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v28 - v11;
  v13 = *(v1 + 8);
  if (v13)
  {
    v29 = v4;
    v30 = v3;
    v32 = v12;
    v33 = v8;
    v34 = a1;
    v35 = v9;
    v14 = *(v1 + 16);
    v15 = *(v1 + 24);
    v16 = *v1;
    v17 = *(v1 + 32) & 1;
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v13;
    *(v18 + 32) = v14;
    *(v18 + 40) = v15;
    *(v18 + 48) = v17;
    KeyPath = swift_getKeyPath(byte_21CBB3D10);
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    v38 = v16;
    v39 = v13;
    v40 = sub_21C95BD24;
    v41 = v18;
    v31 = KeyPath;
    v42 = KeyPath;
    v43 = sub_21C87E800;
    v44 = v20;
    v36 = 0xD00000000000001BLL;
    v37 = 0x800000021CB93A80;
    v21 = *(v1 + *(type metadata accessor for PMOnboardingView.ButtonStack(0) + 28) + 8);
    swift_bridgeObjectRetain_n();
    sub_21C95B284(v16, v13, v14, v15);

    if ((v21 & 1) == 0)
    {
      sub_21CB85B04();
      v22 = sub_21CB83C94();
      sub_21CB81C14();

      sub_21CB82F74();
      swift_getAtKeyPath();

      (*(v29 + 8))(v6, v30);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2350, &unk_21CBB3D48);
    sub_21C95BD4C();
    v23 = v32;
    sub_21CB845E4();

    swift_bridgeObjectRelease_n();
    v24 = v34;
    v25 = v33;
    (*(v35 + 32))(v34, v23, v33);
    return (*(v35 + 56))(v24, 0, 1, v25);
  }

  else
  {
    v27 = *(v9 + 56);

    return v27(a1, 1, 1, v10);
  }
}

uint64_t sub_21C95B020@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_21CB832E4();
  *(a2 + 8) = 0x402E000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2320, &qword_21CBB3CE8);
  sub_21C95A9B8(v2, a2 + *(v4 + 44));
  v5 = sub_21CB83D24();
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2328, &qword_21CBB3CF0) + 36);
  *v6 = v5;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  v7 = sub_21CB83D04();
  sub_21CB81F24();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2330, &qword_21CBB3CF8);
  v17 = a2 + *(result + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

uint64_t sub_21C95B114@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_21CB832E4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2248, &qword_21CBB3968);
  sub_21C957D30(v2, (a2 + *(v4 + 44)));
  v5 = sub_21CB82934();
  v6 = sub_21CB83CE4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2250, &unk_21CBB3970);
  v8 = a2 + *(result + 36);
  *v8 = v5;
  *(v8 + 8) = v6;
  return result;
}

unint64_t sub_21C95B1CC()
{
  result = qword_27CDF2270;
  if (!qword_27CDF2270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2268, &qword_21CBB3990);
    sub_21C6EADEC(&qword_27CDF2278, &qword_27CDF2280, &qword_21CBB3998, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2270);
  }

  return result;
}

void sub_21C95B284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_21C95B318(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C95B360(uint64_t result, char a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_21C95B370(result, a2 & 1);
  }

  return result;
}

uint64_t sub_21C95B370(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_21C95B37C(uint64_t result, char a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_21C95B38C(result, a2 & 1);
  }

  return result;
}

uint64_t sub_21C95B38C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_21C95B398()
{
  result = qword_27CDF2298;
  if (!qword_27CDF2298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2290, &qword_21CBB39E0);
    sub_21C95B424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2298);
  }

  return result;
}

unint64_t sub_21C95B424()
{
  result = qword_27CDF22A0;
  if (!qword_27CDF22A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF22A8, &unk_21CBB39E8);
    sub_21C95B4A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF22A0);
  }

  return result;
}

unint64_t sub_21C95B4A8()
{
  result = qword_27CDF22B0;
  if (!qword_27CDF22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF22B0);
  }

  return result;
}

uint64_t sub_21C95B4FC(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return v2;
}

uint64_t sub_21C95B518(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return v2;
}

uint64_t sub_21C95B584@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21CB82F84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE8, &qword_21CBAE7D0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_21C6EDBAC(v2, &v13 - v9, &qword_27CDEDBE8, &qword_21CBAE7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21C95B768(v10, a1, type metadata accessor for PMDismissAction);
  }

  sub_21CB85B04();
  v12 = sub_21CB83C94();
  sub_21CB81C14();

  sub_21CB82F74();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21C95B768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21C95B808(uint64_t a1)
{
  sub_21C9578EC();
  if (v1 <= 0x3F)
  {
    sub_21C7086F8(319);
    if (v2 <= 0x3F)
    {
      sub_21C95B8A4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21C95B8A4(uint64_t a1)
{
  if (!qword_27CDEE7F0)
  {
    type metadata accessor for PMGlobalAnimationNamespaceContainer(255);
    v1 = sub_21CB82074();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEE7F0);
    }
  }
}

uint64_t sub_21C95B91C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21C95B964(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_21C95B9A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_21C95B9D0()
{
  result = qword_27CDF22C8;
  if (!qword_27CDF22C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2250, &unk_21CBB3970);
    sub_21C6EADEC(&qword_27CDF22D0, &qword_27CDF22D8, qword_21CBB3B30, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF22C8);
  }

  return result;
}

unint64_t sub_21C95BAC4()
{
  result = qword_27CDF22E0;
  if (!qword_27CDF22E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF22E0);
  }

  return result;
}

unint64_t sub_21C95BB1C()
{
  result = qword_27CDF22E8;
  if (!qword_27CDF22E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF22E8);
  }

  return result;
}

unint64_t sub_21C95BB8C()
{
  result = qword_27CDF2308;
  if (!qword_27CDF2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2308);
  }

  return result;
}

unint64_t sub_21C95BBE0()
{
  result = qword_27CDF2310;
  if (!qword_27CDF2310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2310);
  }

  return result;
}

void sub_21C95BC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

void sub_21C95BC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

unint64_t sub_21C95BD4C()
{
  result = qword_27CDF2358;
  if (!qword_27CDF2358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2350, &unk_21CBB3D48);
    sub_21C95BE04();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2358);
  }

  return result;
}

unint64_t sub_21C95BE04()
{
  result = qword_27CDF2360;
  if (!qword_27CDF2360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2360);
  }

  return result;
}

unint64_t sub_21C95BE58()
{
  result = qword_27CDF2398;
  if (!qword_27CDF2398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2378, &qword_21CBB3D68);
    sub_21C95BF10();
    sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2398);
  }

  return result;
}

unint64_t sub_21C95BF10()
{
  result = qword_27CDF23A0;
  if (!qword_27CDF23A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2388, &qword_21CBB3D78);
    sub_21C738A18();
    sub_21C6EADEC(&qword_27CDF23A8, &qword_27CDF2390, &qword_21CBB3D80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF23A0);
  }

  return result;
}

unint64_t sub_21C95BFC8()
{
  result = qword_27CDF23E0;
  if (!qword_27CDF23E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF23D8, &unk_21CBCBD30);
    sub_21C83A140();
    sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF23E0);
  }

  return result;
}

unint64_t sub_21C95C080()
{
  result = qword_27CDF23E8;
  if (!qword_27CDF23E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF23C8, &qword_21CBB3DD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF23D8, &unk_21CBCBD30);
    sub_21C95BFC8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF23E8);
  }

  return result;
}

double sub_21C95C148(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_21C95C178()
{
  result = qword_27CDF2400;
  if (!qword_27CDF2400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2318, &unk_21CBB3CD8);
    sub_21C6EADEC(&qword_27CDF2408, &qword_27CDF2410, &qword_21CBB3EA8, MEMORY[0x277CDE590]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2400);
  }

  return result;
}

unint64_t sub_21C95C230()
{
  result = qword_27CDF2418;
  if (!qword_27CDF2418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2330, &qword_21CBB3CF8);
    sub_21C95C2BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2418);
  }

  return result;
}

unint64_t sub_21C95C2BC()
{
  result = qword_27CDF2420;
  if (!qword_27CDF2420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2328, &qword_21CBB3CF0);
    sub_21C6EADEC(&qword_27CDF2428, &qword_27CDF2430, &qword_21CBB3EB0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2420);
  }

  return result;
}

id sub_21C95C39C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setTimeStyle_];
  [v0 setDateStyle_];
  if (sub_21CB85174())
  {
    [v0 setDateStyle_];
  }

  result = [v0 setFormattingContext_];
  qword_27CDF2480 = v0;
  return result;
}

id sub_21C95C42C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setTimeStyle_];
  [v0 setDateStyle_];
  [v0 setFormattingContext_];
  result = [v0 setDoesRelativeDateFormatting_];
  qword_27CDF2488 = v0;
  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_21C95C560(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_21C95C5A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PMDependencyStore.accountsState.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 8);
  swift_unknownObjectRetain();
  v4 = v3(ObjectType, v1);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_21C95C674()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    type metadata accessor for PMGlobalSearchModel(0);
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    *(v1 + 24) = 0xE000000000000000;
    *(v1 + 32) = 0;
    sub_21CB81104();
    *(v0 + 152) = v1;
  }

  return v1;
}

uint64_t sub_21C95C6FC()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 48);
  swift_unknownObjectRetain();
  v4 = v3(ObjectType, v1);
  swift_unknownObjectRelease();
  return v4;
}

id sub_21C95C78C()
{
  v1 = *(v0 + 16);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = objc_allocWithZone(MEMORY[0x277CBAA50]);
    v8[4] = sub_21C82CB18;
    v8[5] = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_21C95CD64;
    v8[3] = &block_descriptor_16;
    v4 = _Block_copy(v8);
    v2 = [v3 initWithAllowNetworkFetchingBlock_];
    _Block_release(v4);

    v5 = *(v0 + 16);
    *(v0 + 16) = v2;
    v6 = v2;
    sub_21C942960(v5);
  }

  sub_21C95CDA4(v1);
  return v2;
}

uint64_t sub_21C95C884()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    type metadata accessor for PMSignInWithAppleIconController();
    v1 = swift_allocObject();
    *(v1 + 16) = [objc_allocWithZone(PMSignInWithAppleController) init];
    *(v1 + 24) = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
    *(v0 + 24) = v1;
  }

  return v1;
}

id sub_21C95C934()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for PMCredentialProviderExtensionManager(0)) init];
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t PMDependencyStore.groupsStore.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t (*PMDependencyStore.lockPolicyEnforcer.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = PMDependencyStore.lockPolicyEnforcer.getter();
  return sub_21C95CAB8;
}

id PMDependencyStore.appDefaults.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);

  return v1;
}

void PMDependencyStore.appDefaults.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(v1 + 96) = a1;
}

uint64_t PMDependencyStore.debugSettingsManager.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
}

id *PMDependencyStore.deinit()
{
  sub_21C942960(v0[2]);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t PMDependencyStore.__deallocating_deinit()
{
  PMDependencyStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21C95CD64(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

id sub_21C95CDA4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_21C95CDC8@<X0>(_BYTE *a1@<X8>)
{
  sub_21C7D79CC();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

uint64_t sub_21C95CE64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBB4128);
  sub_21C95DE90(&qword_27CDED418, type metadata accessor for PMAppAccountDetailsModel, &unk_21CBA6850);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state;
  swift_beginAccess();
  return sub_21C95DED8(v3 + v4, a2, type metadata accessor for PMAppAccountDetailsModel.State);
}

uint64_t sub_21C95CF40(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PMAppAccountDetailsModel.State(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21C95DED8(a1, v6, type metadata accessor for PMAppAccountDetailsModel.State);
  v7 = *a2;
  swift_getKeyPath(byte_21CBB4128);
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_21C95DE90(&qword_27CDED418, type metadata accessor for PMAppAccountDetailsModel, &unk_21CBA6850);
  sub_21CB810C4();

  return sub_21C719420(v6, type metadata accessor for PMAppAccountDetailsModel.State);
}

uint64_t PMAppAccountDetailsWindowView.init(model:)@<X0>(uint64_t a2@<X8>)
{
  v3 = *(type metadata accessor for PMAppAccountDetailsWindowView(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2518, &qword_21CBB40D0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PMAppAccountDetailsWindowModel(0);
  sub_21C95DE90(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel, &protocol conformance descriptor for PMAppAccountDetailsWindowModel);

  return sub_21CB850A4();
}

uint64_t type metadata accessor for PMAppAccountDetailsWindowView(uint64_t a1)
{
  result = qword_27CDF2568;
  if (!qword_27CDF2568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PMAppAccountDetailsWindowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for PMAppAccountDetailsWindowView(0);
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMEmptyStateDetailView.Source(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2528, &qword_21CBB40D8);
  MEMORY[0x28223BE20](v33);
  v8 = (&v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2530, &qword_21CBB40E0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for PMAppAccountDetailsModel.State(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v15 - 8);
  v32 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2538, &qword_21CBB40E8);
  v30 = v1;
  sub_21CB85084();
  v17 = v35;
  swift_getKeyPath(byte_21CBB40F0);
  v35 = v17;
  sub_21C95DE90(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel, &protocol conformance descriptor for PMAppAccountDetailsWindowModel);
  sub_21CB810D4();

  v18 = *(v17 + 48);

  if (v18)
  {
    swift_getKeyPath(byte_21CBB4128);
    v35 = v18;
    sub_21C95DE90(&qword_27CDED418, type metadata accessor for PMAppAccountDetailsModel, &unk_21CBA6850);
    sub_21CB810D4();

    v19 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state;
    swift_beginAccess();
    sub_21C95DED8(v18 + v19, v14, type metadata accessor for PMAppAccountDetailsModel.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v32;
      sub_21C95DF40(v14, v32, type metadata accessor for PMAccount);
    }

    else
    {
      v20 = v32;
      sub_21CB81DB4();
    }

    KeyPath = swift_getKeyPath(byte_21CBB4150);
    *v11 = v18;
    *(v11 + 1) = KeyPath;
    v11[16] = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2540, &unk_21CBB4118);
    sub_21C95DC28();
    sub_21C95DD6C();
    sub_21CB83494();
    return sub_21C719420(v20, type metadata accessor for PMAccount);
  }

  else
  {
    v21 = sub_21CB85C44();
    (*(*(v21 - 8) + 56))(v6, 1, 6, v21);
    sub_21C9E14F8(v6, 0, v8);
    v22 = v31;
    sub_21C95DED8(v30, v31, type metadata accessor for PMAppAccountDetailsWindowView);
    v23 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v24 = swift_allocObject();
    sub_21C95DF40(v22, v24 + v23, type metadata accessor for PMAppAccountDetailsWindowView);
    v25 = (v8 + *(v33 + 36));
    *v25 = sub_21C95DBC8;
    v25[1] = v24;
    v25[2] = 0;
    v25[3] = 0;
    sub_21C6EDBAC(v8, v11, &qword_27CDF2528, &qword_21CBB40D8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2540, &unk_21CBB4118);
    sub_21C95DC28();
    sub_21C95DD6C();
    sub_21CB83494();
    return sub_21C95DE28(v8);
  }
}

uint64_t sub_21C95D7C4(uint64_t a1)
{
  v16 = sub_21CB82F84();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2518, &qword_21CBB40D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_21CB832B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMAppAccountDetailsWindowView(0);
  sub_21C6EDBAC(a1 + *(v12 + 20), v7, &qword_27CDF2518, &qword_21CBB40D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_21CB85B04();
    v13 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_21CB832A4();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21C95DA50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBB40F0);
  sub_21C95DE90(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel, &protocol conformance descriptor for PMAppAccountDetailsWindowModel);
  sub_21CB810D4();

  *a2 = *(v3 + 48);
}

uint64_t sub_21C95DAFC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBB40F0);
  sub_21C95DE90(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel, &protocol conformance descriptor for PMAppAccountDetailsWindowModel);
  sub_21CB810C4();
}

uint64_t sub_21C95DBC8()
{
  v1 = *(type metadata accessor for PMAppAccountDetailsWindowView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C95D7C4(v2);
}

unint64_t sub_21C95DC28()
{
  result = qword_27CDF2548;
  if (!qword_27CDF2548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2540, &unk_21CBB4118);
    sub_21C95DCB4();
    sub_21C95DD08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2548);
  }

  return result;
}

unint64_t sub_21C95DCB4()
{
  result = qword_27CDF2550;
  if (!qword_27CDF2550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2550);
  }

  return result;
}

unint64_t sub_21C95DD08()
{
  result = qword_27CDEB1B8;
  if (!qword_27CDEB1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB1C0, &unk_21CBA1390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB1B8);
  }

  return result;
}

unint64_t sub_21C95DD6C()
{
  result = qword_27CDF2558;
  if (!qword_27CDF2558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2528, &qword_21CBB40D8);
    sub_21C95DE90(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView, &unk_21CBBAF28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2558);
  }

  return result;
}

uint64_t sub_21C95DE28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2528, &qword_21CBB40D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C95DE90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C95DED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C95DF40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21C95DFEC(uint64_t a1)
{
  sub_21C95E0D0(319, &qword_27CDF2578, type metadata accessor for PMAppAccountDetailsWindowModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    sub_21C95E0D0(319, &qword_27CDF2580, MEMORY[0x277CDDEF0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C95E0D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21C95E134()
{
  result = qword_27CDF2588;
  if (!qword_27CDF2588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CDF2590, &unk_21CBB4240);
    sub_21C95DC28();
    sub_21C95DD6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2588);
  }

  return result;
}

uint64_t sub_21C95E1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21C95E290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22 = a3;
  v23 = a4;
  v24 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2618, &qword_21CBB4300);
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  swift_getWitnessTable();
  v11 = sub_21CB84E14();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - v16;
  v25 = a5;
  v26 = a6;
  v27 = a1;
  v28 = a2;
  v29 = v22;
  v30 = v23;
  sub_21CB83074();
  sub_21CB84E04();
  WitnessTable = swift_getWitnessTable();
  sub_21C72BE10(v14, v11, WitnessTable);
  v19 = *(v12 + 8);
  v19(v14, v11);
  sub_21C72BE10(v17, v11, WitnessTable);
  return (v19)(v17, v11);
}

uint64_t sub_21C95E4A8@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v54 = a3;
  v67 = a7;
  v12 = sub_21CB83634();
  v13 = *(v12 - 8);
  v65 = v12;
  v66 = v13;
  MEMORY[0x28223BE20](v12);
  v58 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2620, &qword_21CBB4308);
  v63 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v16 = &v51 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2618, &qword_21CBB4300);
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v68 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v55 = &v51 - v19;
  v20 = *(a5 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v56 = &v51 - v26;
  a1(v25);
  v57 = a6;
  sub_21C72BE10(v23, a5, a6);
  v27 = *(v20 + 8);
  v60 = v20 + 8;
  v61 = v27;
  v28 = v23;
  v53 = a5;
  v27(v23, a5);
  v29 = swift_allocObject();
  v29[2] = a5;
  v29[3] = a6;
  v29[4] = a1;
  v29[5] = a2;
  v29[6] = v54;
  v29[7] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2628, &qword_21CBB4310);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2630, &unk_21CBB4318);
  v31 = sub_21CB83094();
  v32 = sub_21C95EECC();
  v33 = sub_21C95EFB0(&qword_27CDEC0A8, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  v76 = v30;
  v77 = v31;
  v78 = v32;
  v79 = v33;
  swift_getOpaqueTypeConformance2();
  sub_21CB84DA4();
  v34 = v58;
  sub_21CB83624();
  v35 = sub_21C6EADEC(&qword_27CDF2650, &qword_27CDF2620, &qword_21CBB4308, MEMORY[0x277CDF028]);
  v36 = sub_21C95EFB0(&qword_27CDF2658, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v37 = v55;
  v38 = v59;
  v39 = v65;
  sub_21CB84124();
  (*(v66 + 8))(v34, v39);
  (*(v63 + 8))(v16, v38);
  v40 = *(v20 + 16);
  v41 = v28;
  v52 = v28;
  v42 = v28;
  v43 = v56;
  v44 = v53;
  v40(v42, v56, v53);
  v73 = 0x4000000000000000;
  v74 = 0;
  v75[0] = v41;
  v75[1] = &v73;
  v45 = v62;
  v46 = v68;
  v47 = v64;
  (*(v62 + 16))(v68, v37, v64);
  v75[2] = v46;
  v72[0] = v44;
  v72[1] = MEMORY[0x277CE1180];
  v72[2] = v47;
  v69 = v57;
  v70 = MEMORY[0x277CE1170];
  v76 = v38;
  v77 = v39;
  v78 = v35;
  v79 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21C74A55C(v75, 3uLL, v72);
  v48 = *(v45 + 8);
  v48(v37, v47);
  v49 = v61;
  v61(v43, v44);
  v48(v68, v47);
  return v49(v52, v44);
}

uint64_t sub_21C95EB0C@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_21CB83094();
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2630, &unk_21CBB4318);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_21CB81014();
  sub_21CB81014();
  v15 = sub_21CB80FF4();
  v17 = v16;
  v18 = *(v6 + 8);
  v18(v8, v5);
  v18(v11, v5);
  v29 = v15;
  v30 = v17;
  sub_21C71F3FC();
  sub_21CB84CB4();
  v19 = &v14[*(v12 + 36)];
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2648, &qword_21CBB4328) + 28);
  v21 = *MEMORY[0x277CE1048];
  v22 = sub_21CB84C54();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  *v19 = swift_getKeyPath(byte_21CBB4330);
  sub_21CB83084();
  sub_21C95EECC();
  sub_21C95EFB0(&qword_27CDEC0A8, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  v23 = v26;
  sub_21CB840E4();
  (*(v27 + 8))(v4, v23);
  return sub_21C95F0C0(v14);
}

unint64_t sub_21C95EECC()
{
  result = qword_27CDF2638;
  if (!qword_27CDF2638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2630, &unk_21CBB4318);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    sub_21C6EADEC(&qword_27CDF2640, &qword_27CDF2648, &qword_21CBB4328, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2638);
  }

  return result;
}

uint64_t sub_21C95EFB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C95EFF8(uint64_t a1)
{
  v2 = sub_21CB84C54();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_21CB82BB4();
}

uint64_t sub_21C95F0C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2630, &unk_21CBB4318);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

PMDeviceListController __swiftcall PMDeviceListController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for PMDeviceListController()
{
  result = qword_27CDF2660;
  if (!qword_27CDF2660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDF2660);
  }

  return result;
}

uint64_t sub_21C95F2F8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2698, &qword_21CBB4688);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - v3;
  type metadata accessor for PMPasswordOptionsViewModel(0);
  sub_21C744154(&qword_27CDF26B0, type metadata accessor for PMPasswordOptionsViewModel, &unk_21CBC6498);
  sub_21CB82684();
  swift_getKeyPath(byte_21CBB4628);
  sub_21CB82694();

  sub_21CB84EA4();
  v5 = [objc_opt_self() sharedFeatureManager];
  v6 = [v5 isUserAllowedToTogglePasswordAutoFillEnabledState];

  KeyPath = swift_getKeyPath(aP_58);
  v8 = swift_allocObject();
  *(v8 + 16) = v6 ^ 1;
  v9 = &v4[*(v2 + 36)];
  *v9 = KeyPath;
  v9[1] = sub_21C735744;
  v9[2] = v8;
  sub_21C9603D0();
  sub_21CB845C4();
  return sub_21C6EA794(v4, &qword_27CDF2698, &qword_21CBB4688);
}

uint64_t sub_21C95F534@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath(byte_21CBB4628);
  swift_getKeyPath(byte_21CBB4650);
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C95F5DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21C95F708()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0[1];
  v14 = *v0;
  v15 = v5;
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  v16 = v6;
  v17 = v8;
  sub_21C71F3FC();
  v16 = sub_21CB84054();
  v17 = v9;
  v18 = v10 & 1;
  v19 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2680, &qword_21CBB4680);
  sub_21C960314();
  return sub_21CB85064();
}

void *sub_21C95F894@<X0>(_OWORD *a1@<X8>)
{
  v17 = *v1;
  swift_getKeyPath(byte_21CBB4628);
  swift_getKeyPath(byte_21CBB4650);

  sub_21CB81DB4();

  if (v12 == 1)
  {
    v12 = v1[1];
    *&v13 = *(v1 + 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2678, &qword_21CBBFF20);
    sub_21CB84F54();
    result = sub_21CA40164(v9, v10, v11, *(&v17 + 1), &v12);
    v4 = v12;
    v5 = v13;
    v6 = v14;
    v7 = v15;
    v8 = v16;
  }

  else
  {
    result = sub_21C6EA794(&v17, &qword_27CDF2670, &unk_21CBB4670);
    v4 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  return result;
}

__n128 sub_21C95F9BC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 32);
  v10 = *(v1 + 16);
  v11.n128_u64[0] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2678, &qword_21CBBFF20);
  sub_21CB84F54();

  sub_21CA40164(v7, v8, v9, v3, &v10);
  v5 = v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = v5;
  *(a1 + 64) = v14;
  result = v11;
  *a1 = v10;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21C95FA68()
{
  type metadata accessor for PMOTPAuthHandlerManager(0);
  swift_allocObject();
  return sub_21CA92720();
}

uint64_t sub_21C95FAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF26B8, &qword_21CBB46D0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18[-1] - v10;
  type metadata accessor for PMOTPAuthHandlerManager(0);
  sub_21C744154(&qword_27CDF26C0, type metadata accessor for PMOTPAuthHandlerManager, &unk_21CBC4514);
  v12 = a3 & 1;
  sub_21CB82134();
  swift_getKeyPath(asc_21CBB46D8);
  swift_getKeyPath(asc_21CBB4700);
  sub_21CB81DB4();

  v13 = *(v18[0] + 16);

  if (v13)
  {
    MEMORY[0x28223BE20](v14);
    *(&v17 - 4) = a1;
    *(&v17 - 3) = a2;
    *(&v17 - 16) = v12;
    sub_21C95FDFC(v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF26C8, &unk_21CBB4720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC150, &unk_21CBA4F60);
    sub_21C9604C0();
    sub_21C7FC578();
    sub_21CB85064();
    (*(v9 + 32))(a4, v11, v8);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v9 + 56))(a4, v15, 1, v8);
}

uint64_t sub_21C95FD2C@<X0>(uint64_t *a4@<X8>)
{
  type metadata accessor for PMOTPAuthHandlerManager(0);
  sub_21C744154(&qword_27CDF26C0, type metadata accessor for PMOTPAuthHandlerManager, &unk_21CBC4514);
  v5 = sub_21CB82B84();
  v7 = v6;
  v8 = sub_21CB82134();
  result = sub_21CB81CE4();
  *a4 = v5;
  a4[1] = v7;
  a4[2] = result;
  a4[3] = v8;
  return result;
}

double sub_21C95FDFC@<D0>(uint64_t a4@<X8>)
{
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  type metadata accessor for PMOTPAuthHandlerManager(0);
  sub_21C744154(&qword_27CDF26C0, type metadata accessor for PMOTPAuthHandlerManager, &unk_21CBC4514);
  sub_21CB82134();
  swift_getKeyPath(byte_21CBB4738);
  swift_getKeyPath(byte_21CBB4760);
  sub_21CB81DB4();

  v12 = v40;
  if (v40)
  {
    v13 = [v40 localizedName];
    v14 = sub_21CB855C4();
    v16 = v15;

    sub_21CB81014();
    sub_21CB81004();
    (*(v6 + 8))(v11, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_21CBA0690;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_21C7C0050();
    *(v17 + 32) = v14;
    *(v17 + 40) = v16;
    v18 = sub_21CB85594();
    v20 = v19;

    *&v40 = v18;
    *(&v40 + 1) = v20;
    sub_21C71F3FC();
    v35 = sub_21CB84054();
    v36 = v21;
    v37 = v22 & 1;
    v38 = v23;
    v39 = 0;
  }

  else
  {
    sub_21CB81014();
    sub_21CB81014();
    v24 = sub_21CB80FF4();
    v26 = v25;
    v27 = *(v6 + 8);
    v27(v8, v5);
    v27(v11, v5);
    *&v40 = v24;
    *(&v40 + 1) = v26;
    sub_21C71F3FC();
    v35 = sub_21CB84054();
    v36 = v29;
    v37 = v28 & 1;
    v38 = v30;
    v39 = 1;
  }

  sub_21CB83494();
  result = *&v40;
  v32 = v41;
  v33 = v42;
  *a4 = v40;
  *(a4 + 16) = v32;
  *(a4 + 32) = v33;
  return result;
}

uint64_t sub_21C9601FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_21C960244(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21C960314()
{
  result = qword_27CDF2688;
  if (!qword_27CDF2688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2680, &qword_21CBB4680);
    sub_21C9603D0();
    sub_21C744154(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2688);
  }

  return result;
}

unint64_t sub_21C9603D0()
{
  result = qword_27CDF2690;
  if (!qword_27CDF2690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2698, &qword_21CBB4688);
    sub_21C6EADEC(&qword_27CDF26A0, &qword_27CDF26A8, &unk_21CBB4690, MEMORY[0x277CDF068]);
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2690);
  }

  return result;
}

unint64_t sub_21C9604C0()
{
  result = qword_27CDF26D0;
  if (!qword_27CDF26D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF26C8, &unk_21CBB4720);
    sub_21C960578();
    sub_21C6EADEC(&qword_27CDF26E0, &qword_27CDF26E8, &qword_21CBB4730, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF26D0);
  }

  return result;
}

unint64_t sub_21C960578()
{
  result = qword_27CDF26D8;
  if (!qword_27CDF26D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF26D8);
  }

  return result;
}

unint64_t sub_21C9605CC()
{
  result = qword_27CDF2700;
  if (!qword_27CDF2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2700);
  }

  return result;
}

unint64_t sub_21C960620()
{
  result = qword_27CDF2708;
  if (!qword_27CDF2708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2710, &qword_21CBB4790);
    sub_21C960314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2708);
  }

  return result;
}

uint64_t sub_21C9606B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_21C960734()
{
  result = qword_27CDF2728;
  if (!qword_27CDF2728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF26B8, &qword_21CBB46D0);
    sub_21C9604C0();
    sub_21C7FC578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2728);
  }

  return result;
}

uint64_t sub_21C960800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v33 = a2;
  v32 = a1;
  v39 = a4;
  v7 = sub_21CB829D4();
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2730, &qword_21CBB4838);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2738, &qword_21CBB4840);
  v35 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2740, &qword_21CBB4848);
  v18 = *(v17 - 8);
  v37 = v17;
  v38 = v18;
  MEMORY[0x28223BE20](v17);
  v31 = &v30 - v19;
  v43 = a1;
  v44 = a2;
  v45 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2748, &qword_21CBB4850);
  sub_21C6EADEC(&qword_27CDF2750, &qword_27CDF2748, &qword_21CBB4850, MEMORY[0x277CE14C0]);
  sub_21CB83EF4();
  sub_21CB85294();
  v20 = sub_21C6EADEC(&qword_27CDF2758, &qword_27CDF2730, &qword_21CBB4838, MEMORY[0x277CDE580]);
  v21 = sub_21C9630D4(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  sub_21CB849C4();
  (*(v36 + 8))(v9, v7);
  (*(v11 + 8))(v13, v10);
  v46 = v10;
  v47 = v7;
  v48 = v20;
  v49 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v31;
  sub_21CB84674();
  (*(v35 + 8))(v16, v14);
  v40 = v32;
  v41 = v33;
  v42 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2760, &qword_21CBB4858);
  v46 = v14;
  v47 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2768, &qword_21CBB4860);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDA80, &unk_21CBA81E0);
  v26 = sub_21C6EADEC(&qword_27CDF2770, &qword_27CDEDA80, &unk_21CBA81E0, MEMORY[0x277CDD7A8]);
  v46 = v25;
  v47 = v26;
  v27 = swift_getOpaqueTypeConformance2();
  v46 = v24;
  v47 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v37;
  sub_21CB84894();
  return (*(v38 + 8))(v23, v28);
}

uint64_t sub_21C960D54@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2778, &qword_21CBB4868);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v10);
  v12 = &v27[-v11 - 8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2780, &qword_21CBB4870);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v27[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v17);
  v19 = &v27[-v18 - 8];
  sub_21C9618DC(v28);
  memcpy(v27, v28, sizeof(v27));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2788, &qword_21CBB4878);
  sub_21C962C00();
  sub_21CB85034();
  v20 = &v19[*(v14 + 44)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB220, &qword_21CBA14F8) + 28);
  v22 = sub_21CB84004();
  (*(*(v22 - 8) + 56))(&v20[v21], 1, 1, v22);
  *v20 = swift_getKeyPath(a0_32);
  sub_21C96105C(a1, a2, a3, v12);
  sub_21C6EDBAC(v19, v16, &qword_27CDF2780, &qword_21CBB4870);
  sub_21C6EDBAC(v12, v9, &qword_27CDF2778, &qword_21CBB4868);
  v23 = v26;
  sub_21C6EDBAC(v16, v26, &qword_27CDF2780, &qword_21CBB4870);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF27B8, &qword_21CBB48C0);
  sub_21C6EDBAC(v9, v23 + *(v24 + 48), &qword_27CDF2778, &qword_21CBB4868);
  sub_21C6EA794(v12, &qword_27CDF2778, &qword_21CBB4868);
  sub_21C6EA794(v19, &qword_27CDF2780, &qword_21CBB4870);
  sub_21C6EA794(v9, &qword_27CDF2778, &qword_21CBB4868);
  return sub_21C6EA794(v16, &qword_27CDF2780, &qword_21CBB4870);
}

uint64_t sub_21C96105C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v56 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF27C0, &qword_21CBB48C8);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = v49 - v10;
  v11 = sub_21CB81024();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF27C8, &qword_21CBB48D0);
  v15 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v49 - v19;
  v58 = a1;
  v59 = a2;
  v52 = a2;
  v53 = a3;
  v60 = a3;
  sub_21CB81014();
  v21 = sub_21CB81004();
  v23 = v22;
  v50 = *(v12 + 8);
  v51 = v11;
  v50(v14, v11);
  v61 = v21;
  v62 = v23;
  v49[1] = sub_21C71F3FC();
  v61 = sub_21CB84054();
  v62 = v24;
  v63 = v25 & 1;
  v64 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF27D0, &qword_21CBB48D8);
  sub_21C6EADEC(&qword_27CDF27D8, &qword_27CDF27D0, &qword_21CBB48D8, MEMORY[0x277CDE5A0]);
  sub_21CB85034();
  v27 = [a1 devicesWithSharingAvailable];
  type metadata accessor for PMDevice(0);
  v28 = sub_21CB85824();

  if (v28 >> 62)
  {
    v29 = sub_21CB85FA4();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v29)
  {
    v49[0] = v49;
    MEMORY[0x28223BE20](v30);
    v32 = v52;
    v31 = v53;
    v49[-4] = a1;
    v49[-3] = v32;
    v49[-2] = v31;
    sub_21CB81014();
    v33 = sub_21CB81004();
    v34 = v17;
    v36 = v35;
    v50(v14, v51);
    v61 = v33;
    v62 = v36;
    v17 = v34;
    v61 = sub_21CB84054();
    v62 = v37;
    v63 = v38 & 1;
    v64 = v39;
    sub_21CB85034();
    v40 = v55;
    (*(v15 + 32))(v55, v17, v57);
    v41 = 0;
  }

  else
  {
    v41 = 1;
    v40 = v55;
  }

  v42 = v57;
  (*(v15 + 56))(v40, v41, 1, v57);
  v43 = *(v15 + 16);
  v43(v17, v20, v42);
  v44 = v54;
  sub_21C6EDBAC(v40, v54, &qword_27CDF27C0, &qword_21CBB48C8);
  v45 = v56;
  v43(v56, v17, v42);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF27E0, &qword_21CBB48E0);
  sub_21C6EDBAC(v44, &v45[*(v46 + 48)], &qword_27CDF27C0, &qword_21CBB48C8);
  sub_21C6EA794(v40, &qword_27CDF27C0, &qword_21CBB48C8);
  v47 = *(v15 + 8);
  v47(v20, v42);
  sub_21C6EA794(v44, &qword_27CDF27C0, &qword_21CBB48C8);
  return (v47)(v17, v42);
}

uint64_t sub_21C961610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[1] = a4;
  v7 = sub_21CB83604();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA80, &unk_21CBA81E0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2768, &qword_21CBB4860);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v19 - v14;
  sub_21CB835D4();
  v19[4] = a1;
  v19[5] = a2;
  v19[6] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  sub_21CB82194();
  v16 = sub_21C6EADEC(&qword_27CDF2770, &qword_27CDEDA80, &unk_21CBA81E0, MEMORY[0x277CDD7A8]);
  MEMORY[0x21CF131E0](v11, v8, v16);
  (*(v9 + 8))(v11, v8);
  v19[8] = v8;
  v19[9] = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF131E0](v15, v12, OpaqueTypeConformance2);
  return (*(v13 + 8))(v15, v12);
}

double sub_21C9618DC@<D0>(uint64_t a4@<X8>)
{
  v5 = sub_21CB832E4();
  v29 = 0;
  sub_21C961AE4(&v18);
  v36 = v24;
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v30 = v18;
  v31 = v19;
  v40[6] = v24;
  v40[7] = v25;
  v40[8] = v26;
  v40[9] = v27;
  v40[2] = v20;
  v40[3] = v21;
  v40[4] = v22;
  v40[5] = v23;
  v40[0] = v18;
  v40[1] = v19;
  sub_21C6EDBAC(&v30, v17, &qword_27CDF2860, &qword_21CBB4968);
  sub_21C6EA794(v40, &qword_27CDF2860, &qword_21CBB4968);
  *&v28[103] = v36;
  *&v28[119] = v37;
  *&v28[135] = v38;
  *&v28[151] = v39;
  *&v28[39] = v32;
  *&v28[55] = v33;
  *&v28[71] = v34;
  *&v28[87] = v35;
  *&v28[7] = v30;
  *&v28[23] = v31;
  v6 = v29;
  KeyPath = swift_getKeyPath(asc_21CBB4970);
  sub_21CB85214();
  sub_21CB82AC4();
  v8 = *&v28[96];
  *(a4 + 129) = *&v28[112];
  v9 = *&v28[144];
  *(a4 + 145) = *&v28[128];
  *(a4 + 161) = v9;
  v10 = *&v28[32];
  *(a4 + 65) = *&v28[48];
  v11 = *&v28[80];
  *(a4 + 81) = *&v28[64];
  *(a4 + 97) = v11;
  *(a4 + 113) = v8;
  v12 = *&v28[16];
  *(a4 + 17) = *v28;
  *(a4 + 33) = v12;
  *(a4 + 49) = v10;
  v13 = v20;
  *(a4 + 248) = v21;
  v14 = v23;
  *(a4 + 264) = v22;
  *(a4 + 280) = v14;
  *(a4 + 296) = v24;
  result = *&v18;
  v16 = v19;
  *(a4 + 200) = v18;
  *(a4 + 216) = v16;
  *a4 = v5;
  *(a4 + 8) = 0x402E000000000000;
  *(a4 + 16) = v6;
  *(a4 + 176) = *&v28[159];
  *(a4 + 184) = KeyPath;
  *(a4 + 192) = 1;
  *(a4 + 232) = v13;
  return result;
}

uint64_t sub_21C961AE4@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v1 = sub_21CB81024();
  v63 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v60 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC580, &qword_21CBBA870);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v60 - v9;
  sub_21CB84BB4();
  sub_21CB83344();
  v11 = sub_21CB83354();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v73 = sub_21CB84C24();

  sub_21C6EA794(v10, &qword_27CDEC580, &qword_21CBBA870);
  v72 = sub_21CB84A34();
  v12 = sub_21CB83DC4();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v71 = sub_21CB83E14();
  sub_21C6EA794(v7, &qword_27CDEBB58, &qword_21CBAF8A0);
  KeyPath = swift_getKeyPath(byte_21CBB4910);
  v60 = v4;
  sub_21CB81014();
  v13 = sub_21CB81004();
  v15 = v14;
  v16 = *(v2 + 8);
  v62 = v2 + 8;
  v64 = v16;
  v16(v4, v1);
  v100 = v13;
  v101 = v15;
  v61 = sub_21C71F3FC();
  v17 = sub_21CB84054();
  v19 = v18;
  LOBYTE(v10) = v20;
  sub_21CB83DB4();
  v21 = sub_21CB84024();
  v23 = v22;
  LOBYTE(v4) = v24;

  sub_21C74A72C(v17, v19, v10 & 1);

  sub_21CB83E04();
  v25 = sub_21CB83FA4();
  v68 = v26;
  v69 = v25;
  v27 = v26;
  v29 = v28;
  v75 = v30;
  sub_21C74A72C(v21, v23, v4 & 1);

  v31 = sub_21CB84B14();
  v66 = v31;
  v32 = swift_getKeyPath(a8_24);
  v65 = v32;
  v33 = v29 & 1;
  LOBYTE(v100) = v33;
  v67 = v33;
  v34 = v60;
  sub_21CB81014();
  v35 = sub_21CB81004();
  v37 = v36;
  v64(v34, v63);
  v100 = v35;
  v101 = v37;
  v38 = sub_21CB84054();
  v62 = v39;
  v63 = v38;
  LOBYTE(v35) = v40;
  v64 = v41;
  v61 = sub_21CB83D94();
  v42 = swift_getKeyPath(byte_21CBB4910);
  LOBYTE(v35) = v35 & 1;
  LOBYTE(v100) = v35;
  v43 = sub_21CB84B14();
  v44 = swift_getKeyPath(a8_24);
  *&v91 = v25;
  *(&v91 + 1) = v27;
  LOBYTE(v92) = v33;
  *(&v92 + 1) = *v90;
  DWORD1(v92) = *&v90[3];
  v45 = v74;
  *(&v92 + 1) = v75;
  *(&v93 + 2) = v88;
  WORD3(v93) = v89;
  *(&v93 + 1) = v32;
  v94 = v31;
  DWORD1(v96) = *(v87 + 3);
  v46 = v87[0];
  *(&v96 + 1) = v87[0];
  WORD3(v97) = v86;
  v47 = v85;
  *(&v97 + 2) = v85;
  *(v74 + 80) = v31;
  LOWORD(v93) = 256;
  v49 = v62;
  v48 = v63;
  *&v95 = v63;
  *(&v95 + 1) = v62;
  LOBYTE(v96) = v35;
  v50 = v64;
  *(&v96 + 1) = v64;
  LOWORD(v97) = 256;
  v51 = v61;
  *(&v97 + 1) = v42;
  *&v98 = v61;
  v52 = v72;
  *v45 = v73;
  *(v45 + 8) = v52;
  v53 = v71;
  *(v45 + 16) = KeyPath;
  *(v45 + 24) = v53;
  v54 = v91;
  v55 = v93;
  *(v45 + 48) = v92;
  *(v45 + 64) = v55;
  *(v45 + 32) = v54;
  *(v45 + 88) = v95;
  v56 = v96;
  v57 = v97;
  *(&v98 + 1) = v44;
  v99 = v43;
  v58 = v98;
  *(v45 + 152) = v43;
  *(v45 + 136) = v58;
  *(v45 + 120) = v57;
  *(v45 + 104) = v56;
  v100 = v48;
  v101 = v49;
  v102 = v35;
  *&v103[3] = *(v87 + 3);
  *v103 = v46;
  v104 = v50;
  v105 = 256;
  v107 = v86;
  v106 = v47;
  v108 = v42;
  v109 = v51;
  v110 = v44;
  v111 = v43;

  sub_21C6EDBAC(&v91, v76, &qword_27CDF2868, &qword_21CBB49D0);
  sub_21C6EDBAC(&v95, v76, &qword_27CDF2870, &qword_21CBB49D8);
  sub_21C6EA794(&v100, &qword_27CDF2870, &qword_21CBB49D8);
  v76[0] = v69;
  v76[1] = v68;
  v77 = v67;
  *v78 = *v90;
  *&v78[3] = *&v90[3];
  v79 = v75;
  v80 = 256;
  v81 = v88;
  v82 = v89;
  v83 = v65;
  v84 = v66;
  sub_21C6EA794(v76, &qword_27CDF2868, &qword_21CBB49D0);
}

uint64_t sub_21C962174(void *a1, uint64_t a2, uint64_t a3, SEL *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = [a1 *a4];
  type metadata accessor for PMDevice(0);
  sub_21CB85824();

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v12 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF27E8, &qword_21CBB48E8);
  sub_21C962FE8();
  sub_21CB83F34();
}

uint64_t sub_21C96227C@<X0>(void **a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v3 = a2;
  v5 = *a1;
  *a3 = sub_21CB83074();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2820, &qword_21CBB4900);
  return sub_21C9624BC(v5, v3, (a3 + *(v6 + 44)));
}

uint64_t sub_21C9622E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[1] = a4;
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  sub_21CB81014();
  sub_21CB81014();
  v14 = sub_21CB80FF4();
  v16 = v15;
  v17 = *(v8 + 8);
  v17(v10, v7);
  v17(v13, v7);
  v21[2] = v14;
  v21[3] = v16;
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  sub_21C71F3FC();
  v19 = a1;

  return sub_21CB84DE4();
}

uint64_t sub_21C9624BC@<X0>(void *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2828, &qword_21CBB4908);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v25 - v11;
  v13 = [a1 deviceImageSymbolName];
  sub_21CB855C4();

  v14 = sub_21CB84BB4();
  v15 = sub_21CB837E4();
  v26 = sub_21CB83DB4();
  KeyPath = swift_getKeyPath(byte_21CBB4910);
  sub_21CB85214();
  sub_21CB82374();
  *v12 = sub_21CB832F4();
  *(v12 + 1) = 0;
  v12[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2830, &qword_21CBB4940);
  v27 = a1;
  v28 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2838, &qword_21CBB4948);
  sub_21C6EADEC(&qword_27CDF2840, &qword_27CDF2838, &qword_21CBB4948, MEMORY[0x277CE14C0]);
  sub_21CB81FC4();
  v17 = v8;
  sub_21C6EDBAC(v12, v8, &qword_27CDF2828, &qword_21CBB4908);
  *&v32 = v14;
  DWORD2(v32) = v15;
  *&v33 = KeyPath;
  v18 = KeyPath;
  v19 = v26;
  *(&v33 + 1) = v26;
  v20 = v30;
  v34 = v29;
  v35 = v30;
  v21 = v31;
  v36 = v31;
  a3[2] = v29;
  a3[3] = v20;
  a3[4] = v21;
  v22 = v33;
  *a3 = v32;
  a3[1] = v22;
  v23 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2848, &qword_21CBB4950) + 48);
  sub_21C6EDBAC(v17, v23, &qword_27CDF2828, &qword_21CBB4908);
  sub_21C6EDBAC(&v32, &v37, &qword_27CDF2850, &qword_21CBB4958);
  sub_21C6EA794(v12, &qword_27CDF2828, &qword_21CBB4908);
  sub_21C6EA794(v17, &qword_27CDF2828, &qword_21CBB4908);
  v37 = v14;
  v38 = v15;
  v39 = v18;
  v40 = v19;
  v41 = v29;
  v42 = v30;
  v43 = v31;
  return sub_21C6EA794(&v37, &qword_27CDF2850, &qword_21CBB4958);
}

uint64_t sub_21C9627DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = [a1 deviceName];
  v7 = sub_21CB855C4();
  v9 = v8;

  v32 = v7;
  *&v33 = v9;
  sub_21C71F3FC();
  v10 = sub_21CB84054();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_21CB83034();
  sub_21C962974(v3, a1, &v32);
  v18 = v32;
  v20 = v33;
  v19 = v34;
  v21 = v35;
  v22 = *(&v35 + 1);
  v26[72] = v14 & 1;
  *&v27 = v17;
  *(&v27 + 1) = 0x4010000000000000;
  LOBYTE(v28) = 0;
  *(&v28 + 1) = v32;
  v29 = v33;
  *&v30 = v34;
  BYTE8(v30) = v35;
  v31 = *(&v35 + 1);
  v32 = v17;
  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = v14 & 1;
  *(a3 + 24) = v16;
  *(a3 + 96) = v22;
  v23 = v28;
  *(a3 + 32) = v27;
  *(a3 + 48) = v23;
  v24 = v30;
  *(a3 + 64) = v29;
  *(a3 + 80) = v24;
  *&v33 = 0x4010000000000000;
  BYTE8(v33) = 0;
  v34 = v18;
  v35 = v20;
  v36 = v19;
  v37 = v21;
  v38 = v22;
  sub_21C79B058(v10, v12, v14 & 1);

  sub_21C6EDBAC(&v27, v26, &qword_27CDF2858, &qword_21CBB4960);
  sub_21C6EA794(&v32, &qword_27CDF2858, &qword_21CBB4960);
  sub_21C74A72C(v10, v12, v14 & 1);
}

uint64_t sub_21C962974@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21CB83124();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = 0;
  v8 = 0;
  if (a1)
  {
    v7 = sub_21CB84BB4();
    v8 = sub_21CB84AF4();
  }

  sub_21CB83114();
  sub_21CB83104();
  v9 = [a2 operatingSystemName];
  sub_21CB855C4();

  sub_21CB830F4();

  sub_21CB83104();
  v10 = [a2 operatingSystemVersion];
  sub_21CB855C4();

  sub_21CB830F4();

  sub_21CB83104();
  sub_21CB83144();
  v11 = sub_21CB84034();
  v13 = v12;
  LOBYTE(v9) = v14;
  v16 = v15;
  sub_21C963128(v7, v8);
  LOBYTE(v9) = v9 & 1;
  sub_21C79B058(v11, v13, v9);

  sub_21C963168(v7, v8);
  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = v11;
  *(a3 + 24) = v13;
  *(a3 + 32) = v9;
  *(a3 + 40) = v16;
  sub_21C74A72C(v11, v13, v9);

  return sub_21C963168(v7, v8);
}

unint64_t sub_21C962C00()
{
  result = qword_27CDF2790;
  if (!qword_27CDF2790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2788, &qword_21CBB4878);
    sub_21C962C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2790);
  }

  return result;
}

unint64_t sub_21C962C8C()
{
  result = qword_27CDF2798;
  if (!qword_27CDF2798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF27A0, &qword_21CBB4880);
    sub_21C6EADEC(&qword_27CDF27A8, &qword_27CDF27B0, &qword_21CBB4888, MEMORY[0x277CE1198]);
    sub_21C6EADEC(&qword_27CDED860, &qword_27CDED868, &unk_21CBA7B50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2798);
  }

  return result;
}

uint64_t sub_21C962E44(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2808, &qword_21CBB48F8);
  type metadata accessor for PMDevice(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2800, &qword_21CBB48F0);
  sub_21C6EADEC(&qword_27CDF2810, &qword_27CDF2808, &qword_21CBB48F8, MEMORY[0x277D83980]);
  sub_21C6EADEC(&qword_27CDF27F8, &qword_27CDF2800, &qword_21CBB48F0, MEMORY[0x277CE1138]);
  sub_21C9630D4(&qword_27CDF2818, type metadata accessor for PMDevice, &protocol conformance descriptor for PMDevice);
  return sub_21CB84FF4();
}

unint64_t sub_21C962FE8()
{
  result = qword_27CDF27F0;
  if (!qword_27CDF27F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF27E8, &qword_21CBB48E8);
    sub_21C6EADEC(&qword_27CDF27F8, &qword_27CDF2800, &qword_21CBB48F0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF27F0);
  }

  return result;
}

uint64_t sub_21C963098(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_21C9630D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C963128(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21C963168(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_21C963200()
{

  v0 = sub_21CB85584();

  return v0;
}

id sub_21C963420@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

id sub_21C963444(uint64_t a1)
{
  type metadata accessor for PMDevice(a1);

  v1 = sub_21CB85814();

  return v1;
}

uint64_t sub_21C9635DC(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_21C963818(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_21C9638C0;

  return sub_21C9658B0();
}

uint64_t sub_21C9638C0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    if (v6)
    {
      v8 = *(v5 + 16);
      v9 = sub_21CB80B04();

      (v8)[2](v8, 0, v9);
      _Block_release(v8);
    }

    else
    {
    }
  }

  else if (v6)
  {
    v10 = *(v5 + 16);
    (v10)[2](v10, a1, 0);

    _Block_release(v10);
  }

  else
  {
  }

  v11 = *(v7 + 8);

  return v11();
}

id sub_21C963A60()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = sub_21CB85584();

  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() symbolForTypeIdentifier:v0 error:v5];

  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_21CB80B14();

    swift_willThrow();
  }

  return v1;
}

id sub_21C963B3C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_21C963BB0()
{
  result = qword_27CDF2878;
  if (!qword_27CDF2878)
  {
    type metadata accessor for PMDevice(0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2878);
  }

  return result;
}

uint64_t sub_21C963C78()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21C6F35D0;

  return sub_21C963818(v2);
}

uint64_t sub_21C963D24(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_21C6F35D0;

  return v6();
}

uint64_t sub_21C963E0C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_21C702EFC;

  return v7();
}

uint64_t sub_21C963EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_21C9641E0(a3, v23 - v10);
  v12 = sub_21CB858E4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21C6EA794(v11, &qword_27CDF1D50, &qword_21CBA0C00);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_21CB858D4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_21CB85874();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_21CB85644() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_21C6EA794(a3, &qword_27CDF1D50, &qword_21CBA0C00);

    return v21;
  }

LABEL_8:
  sub_21C6EA794(a3, &qword_27CDF1D50, &qword_21CBA0C00);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_21C9641E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C964250(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21C6F35D0;

  return sub_21C6EE100(a1, v4);
}

uint64_t sub_21C964308(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21C702EFC;

  return sub_21C6EE100(a1, v4);
}

unint64_t sub_21C9643C0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_21CB857B4();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_21CA4F920(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_21CA4F920((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_21CB85794();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_21CB856A4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_21CB856A4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_21CB857B4();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_21CA4F920(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_21CB857B4();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_21CA4F920(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_21CA4F920((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_21CB856A4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_21C964780(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF28E8, &unk_21CBB6D70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_21C9647F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_21CB857A4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21C964D80(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21CB86114();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_21C964D80(uint64_t a1, unint64_t a2)
{
  v2 = sub_21CB857B4();
  v6 = sub_21C964E00(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_21C964E00(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_21CB85E74();
    if (!v9 || (v10 = v9, v11 = sub_21C964780(v9, 0), v12 = sub_21C964F58(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_21CB85674();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_21CB85674();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_21CB86114();
LABEL_4:

  return sub_21CB85674();
}

unint64_t sub_21C964F58(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_21C965178(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21CB85754();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_21CB86114();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_21C965178(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_21CB85734();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_21C965178(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21CB85764();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x21CF15240](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_21C9651F4(void *a1)
{
  result = [a1 operatingSystemVersion];
  if (result)
  {
    v2 = result;
    v3 = sub_21CB855C4();
    v5 = v4;

    v41 = 46;
    v42 = 0xE100000000000000;
    MEMORY[0x28223BE20](v6);
    v39[2] = &v41;
    v7 = sub_21C9643C0(0x7FFFFFFFFFFFFFFFLL, 1, sub_21C8ADF40, v39, v3, v5, v40);
    if (!v7[2] || ((v8 = v7[4], v9 = v7[5], v10 = v7[6], v11 = v7[7], swift_bridgeObjectRetain_n(), , v12 = MEMORY[0x21CF15150](v8, v9, v10, v11), v14 = v13, result = swift_bridgeObjectRelease_n(), v15 = HIBYTE(v14) & 0xF, v16 = v12 & 0xFFFFFFFFFFFFLL, (v14 & 0x2000000000000000) != 0) ? (v17 = HIBYTE(v14) & 0xF) : (v17 = v12 & 0xFFFFFFFFFFFFLL), !v17))
    {

      return 0;
    }

    if ((v14 & 0x1000000000000000) != 0)
    {
      v40[0] = 0;

      v19 = sub_21C9647F4(v12, v14, 10);
      v37 = v38;
      swift_bridgeObjectRelease_n();
LABEL_65:
      if (v37)
      {
        return 0;
      }

      else
      {
        return v19;
      }
    }

    if ((v14 & 0x2000000000000000) != 0)
    {
      v41 = v12;
      v42 = v14 & 0xFFFFFFFFFFFFFFLL;
      if (v12 == 43)
      {
        if (v15)
        {
          if (--v15)
          {
            v19 = 0;
            v29 = &v41 + 1;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                break;
              }

              v31 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                break;
              }

              v19 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                break;
              }

              ++v29;
              if (!--v15)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_75:
        __break(1u);
        return result;
      }

      if (v12 != 45)
      {
        if (v15)
        {
          v19 = 0;
          v34 = &v41;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              break;
            }

            v36 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              break;
            }

            v34 = (v34 + 1);
            if (!--v15)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v15)
      {
        if (--v15)
        {
          v19 = 0;
          v23 = &v41 + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v15)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((v12 & 0x1000000000000000) != 0)
      {
        result = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_21CB86114();
      }

      v18 = *result;
      if (v18 == 43)
      {
        if (v16 >= 1)
        {
          v15 = v16 - 1;
          if (v16 != 1)
          {
            v19 = 0;
            if (result)
            {
              v26 = result + 1;
              while (1)
              {
                v27 = *v26 - 48;
                if (v27 > 9)
                {
                  goto LABEL_63;
                }

                v28 = 10 * v19;
                if ((v19 * 10) >> 64 != (10 * v19) >> 63)
                {
                  goto LABEL_63;
                }

                v19 = v28 + v27;
                if (__OFADD__(v28, v27))
                {
                  goto LABEL_63;
                }

                ++v26;
                if (!--v15)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_74;
      }

      if (v18 != 45)
      {
        if (v16)
        {
          v19 = 0;
          if (result)
          {
            while (1)
            {
              v32 = *result - 48;
              if (v32 > 9)
              {
                goto LABEL_63;
              }

              v33 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_63;
              }

              v19 = v33 + v32;
              if (__OFADD__(v33, v32))
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v16)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v19 = 0;
        LOBYTE(v15) = 1;
        goto LABEL_64;
      }

      if (v16 >= 1)
      {
        v15 = v16 - 1;
        if (v16 != 1)
        {
          v19 = 0;
          if (result)
          {
            v20 = result + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                goto LABEL_63;
              }

              v22 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_63;
              }

              v19 = v22 - v21;
              if (__OFSUB__(v22, v21))
              {
                goto LABEL_63;
              }

              ++v20;
              if (!--v15)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v15) = 0;
LABEL_64:
          v40[0] = v15;
          v37 = v15;

          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  return result;
}

void sub_21C9655F4(void *a1)
{
  v2 = [a1 model];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() _typeWithDeviceModelCode_];

    if (v4)
    {
      v5 = [v4 identifier];

      sub_21CB855C4();
      sub_21C6E8F4C(0, &qword_27CDF28E0, 0x277D1B1D8);
      v17 = sub_21C963A60();
      v18 = [v17 name];

      sub_21CB855C4();
      return;
    }
  }

  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v6 = sub_21CB81C84();
  __swift_project_value_buffer(v6, qword_27CE186E0);
  v7 = a1;
  v8 = sub_21CB81C64();
  v9 = sub_21CB85AF4();
  if (!os_log_type_enabled(v8, v9))
  {

    goto LABEL_10;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v19 = v11;
  *v10 = 136315138;
  v12 = [v7 name];

  if (v12)
  {
    v13 = sub_21CB855C4();
    v15 = v14;

    v16 = sub_21C98E004(v13, v15, &v19);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_21C6E5000, v8, v9, "Failed to get info required to fetch symbol for a device %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x21CF16D90](v11, -1, -1);
    MEMORY[0x21CF16D90](v10, -1, -1);
LABEL_10:

    return;
  }

  __break(1u);
}

uint64_t sub_21C9658B0()
{
  v1 = sub_21CB80F14();
  v0[19] = v1;
  v0[20] = *(v1 - 8);
  v0[21] = swift_task_alloc();
  v2 = sub_21CB80F24();
  v0[22] = v2;
  v0[23] = *(v2 - 8);
  v0[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v0[25] = swift_task_alloc();
  v3 = sub_21CB80DD4();
  v0[26] = v3;
  v0[27] = *(v3 - 8);
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21C965A74, 0, 0);
}

uint64_t sub_21C965A74()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 primaryAuthKitAccount];
  v0[31] = v2;

  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = [v2 aa_altDSID];
  if (!v3)
  {

LABEL_8:
    sub_21C966A18();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [objc_allocWithZone(MEMORY[0x277CF0220]) init];
  v0[32] = v5;
  [v5 setAltDSID_];

  v6 = sub_21CB85814();
  [v5 setOperatingSystems_];

  v7 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  v0[33] = v7;
  if (v7)
  {
    v8 = v7;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_21C965D74;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF28D0, &qword_21CBB4A88);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21C9635DC;
    v0[13] = &block_descriptor_17;
    v0[14] = v9;
    [v8 deviceListWithContext:v5 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  v13 = v0[31];
  v12 = v0[32];
  sub_21C966A18();
  swift_allocError();
  *v14 = 1;
  swift_willThrow();

LABEL_9:

  v11 = v0[1];

  return v11();
}

uint64_t sub_21C965D74()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_21C96694C;
  }

  else
  {
    v2 = sub_21C965E84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21C965E84()
{
  v1 = *(v0 + 144);

  if (!v1)
  {

LABEL_8:
    v18 = *(v0 + 248);
    v17 = *(v0 + 256);
    sub_21C966A18();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();

    v20 = *(v0 + 8);

    return v20();
  }

  v2 = [v1 deviceList];
  if (!v2)
  {
    v16 = *(v0 + 264);

    goto LABEL_8;
  }

  v3 = v2;
  v78 = v1;
  v4 = *(v0 + 232);
  v5 = *(v0 + 216);
  v79 = *(v0 + 208);
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  v83 = *(v0 + 176);
  v9 = *(v0 + 160);
  v10 = *(v0 + 168);
  v11 = *(v0 + 152);
  sub_21C6E8F4C(0, &qword_27CDF28D8, 0x277CF02C8);
  v81 = sub_21CB85824();

  v84 = MEMORY[0x277D84F90];
  v85 = MEMORY[0x277D84F90];
  sub_21CB80F04();
  (*(v9 + 104))(v10, *MEMORY[0x277CC9968], v11);
  sub_21CB80DA4();
  sub_21CB80EF4();
  v82 = *(v5 + 8);
  v82(v4, v79);
  (*(v9 + 8))(v10, v11);
  (*(v8 + 8))(v6, v83);
  v12 = *(v5 + 48);
  if (v12(v7, 1, v79) == 1)
  {
    v13 = *(v0 + 200);
    v14 = *(v0 + 208);
    sub_21CB80D14();
    result = v12(v13, 1, v14);
    if (result != 1)
    {
      result = sub_21C6EA794(*(v0 + 200), &unk_27CDED250, &qword_21CBA64C0);
    }
  }

  else
  {
    result = (*(*(v0 + 216) + 32))(*(v0 + 240), *(v0 + 200), *(v0 + 208));
  }

  v21 = v81;
  if (v81 >> 62)
  {
    result = sub_21CB85FA4();
    v22 = result;
    if (result)
    {
      goto LABEL_14;
    }

LABEL_61:
    v66 = *(v0 + 264);
    v68 = *(v0 + 240);
    v67 = *(v0 + 248);
    v76 = *(v0 + 256);
    v69 = *(v0 + 208);

    v70 = objc_allocWithZone(PMDeviceSharingAvailability);
    type metadata accessor for PMDevice(v70);
    v71 = sub_21CB85814();

    v72 = sub_21CB85814();

    v73 = [v70 initWithDevicesWithSharingAvailable:v71 devicesWithSharingUnavailable:v72];

    v82(v68, v69);

    v74 = *(v0 + 8);

    return v74(v73);
  }

  v22 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_61;
  }

LABEL_14:
  if (v22 >= 1)
  {
    v23 = 0;
    v80 = v22;
    while (1)
    {
      if ((v81 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x21CF15BD0](v23, v21);
      }

      else
      {
        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = [v24 lastUpdatedDate];
      if (!v26)
      {
        if (qword_27CDEA470 != -1)
        {
          swift_once();
        }

        v39 = sub_21CB81C84();
        __swift_project_value_buffer(v39, qword_27CE186E0);
        v40 = v25;
        v41 = sub_21CB81C64();
        v42 = sub_21CB85AF4();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138412290;
          *(v43 + 4) = v40;
          *v44 = v40;
          v45 = v40;
          _os_log_impl(&dword_21C6E5000, v41, v42, "Skipping remote device with invalid last updated date: %@", v43, 0xCu);
          sub_21C6EA794(v44, &unk_27CDF76B0, &qword_21CBA2BE0);
          v46 = v44;
          v22 = v80;
          MEMORY[0x21CF16D90](v46, -1, -1);
          MEMORY[0x21CF16D90](v43, -1, -1);
        }

        else
        {
        }

        goto LABEL_17;
      }

      v27 = v26;
      sub_21CB80D94();

      if ((sub_21CB80D44() & 1) == 0)
      {
        break;
      }

      v82(*(v0 + 224), *(v0 + 208));

LABEL_17:
      if (v22 == ++v23)
      {
        goto LABEL_61;
      }
    }

    v28 = [v25 name];
    if (!v28)
    {
      goto LABEL_36;
    }

    v29 = v28;
    v30 = [v25 operatingSystemName];
    if (!v30)
    {
      goto LABEL_35;
    }

    v31 = v30;
    v32 = sub_21CB855C4();
    v34 = v33;
    v35 = [v25 operatingSystemVersion];
    if (!v35)
    {
      v36 = v31;
      goto LABEL_34;
    }

    v36 = v35;
    v37 = sub_21C9651F4(v25);
    if (v38)
    {

      v29 = v31;
LABEL_34:

      v29 = v36;
LABEL_35:

LABEL_36:
      if (qword_27CDEA470 != -1)
      {
        swift_once();
      }

      v47 = sub_21CB81C84();
      __swift_project_value_buffer(v47, qword_27CE186E0);
      v48 = v25;
      v49 = sub_21CB81C64();
      v50 = sub_21CB85AF4();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v51 = 138412290;
        *(v51 + 4) = v48;
        *v52 = v48;
        v53 = v48;
        _os_log_impl(&dword_21C6E5000, v49, v50, "Skipping remote device with invalid attributes: %@", v51, 0xCu);
        sub_21C6EA794(v52, &unk_27CDF76B0, &qword_21CBA2BE0);
        v54 = v52;
        v22 = v80;
        MEMORY[0x21CF16D90](v54, -1, -1);
        MEMORY[0x21CF16D90](v51, -1, -1);
      }

      else
      {
        v53 = v49;
        v49 = v48;
      }

      v21 = v81;
      v55 = *(v0 + 224);
      v56 = *(v0 + 208);

      v82(v55, v56);
      goto LABEL_17;
    }

    v75 = v37;
    sub_21C9655F4(v25);
    v77 = v34;
    v57 = v32;
    v58 = objc_allocWithZone(PMDevice);
    v59 = sub_21CB85584();

    v60 = [v58 initWithDeviceName:v29 operatingSystemName:v31 operatingSystemVersion:v36 deviceImageSymbolName:v59];

    if (v57 == 5459817 && v77 == 0xE300000000000000)
    {

      v21 = v81;
    }

    else
    {
      v61 = v60;
      v22 = v80;
      v21 = v81;
      if ((sub_21CB86344() & 1) == 0)
      {
        if (v57 == 0x534F63616DLL && v77 == 0xE500000000000000)
        {
        }

        else
        {
          v65 = sub_21CB86344();

          if ((v65 & 1) == 0)
          {
            v82(*(v0 + 224), *(v0 + 208));

            goto LABEL_17;
          }
        }

        v62 = v61;
        if (v75 <= 13)
        {
          goto LABEL_48;
        }

        goto LABEL_56;
      }

      v60 = v61;
    }

    v62 = v60;
    if (v75 <= 16)
    {
LABEL_48:
      MEMORY[0x21CF15300]();
      if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21CB85834();
      }

LABEL_50:
      v63 = *(v0 + 224);
      v64 = *(v0 + 208);
      sub_21CB85854();

      v82(v63, v64);
      v22 = v80;
      goto LABEL_17;
    }

LABEL_56:
    MEMORY[0x21CF15300]();
    if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21CB85834();
    }

    goto LABEL_50;
  }

  __break(1u);
  return result;
}