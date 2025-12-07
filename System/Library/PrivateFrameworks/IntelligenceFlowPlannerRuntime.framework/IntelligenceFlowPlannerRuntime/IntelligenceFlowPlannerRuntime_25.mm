void sub_22C5972AC()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE2F8, &qword_22C91D870);
  sub_22C374410();
  sub_22C9023BC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7CCC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C597374()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE2F0, &qword_22C91D868);
  sub_22C374410();
  sub_22C9024FC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7CE4(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C59743C()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BE2E8, &qword_22C91D860);
  sub_22C374410();
  sub_22C9026AC();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7CFC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C597504()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C598F0C(v2, v5, &qword_27D9BAC50, &unk_22C90D4F0);
  sub_22C374410();
  sub_22C902A7C();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7D14(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C5975CC()
{
  sub_22C38BB54();
  if (v4)
  {
    sub_22C371A04();
    if (v6 != v7)
    {
      sub_22C38319C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22C377F88();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22C37BAD8(v2, v5, &qword_27D9BAC58, &qword_22C91D890);
  sub_22C37F864();
  sub_22C3699C8();
  sub_22C36BA94();
  if (v1)
  {
    v9 = sub_22C386F18(v8);
    sub_22C3D7DE0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22C3704D0();
  }
}

void sub_22C597698()
{
  sub_22C3765A0();
  if ((v3 & 1) == 0 || (sub_22C37259C(), v4 == v5))
  {
LABEL_6:
    sub_22C3BD81C();
    if (v2)
    {
      v6 = sub_22C3A5908(&qword_27D9BE308, &qword_22C91D878);
      v7 = sub_22C375840(v6);
      sub_22C36998C(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22C388528();
        sub_22C3D874C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_22C3A5908(&qword_27D9BE310, &unk_22C91D880);
    sub_22C388E30(v11);
    goto LABEL_11;
  }

  sub_22C376594();
  if (!v4)
  {
    sub_22C388518();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_22C59774C()
{
  sub_22C386A28();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  sub_22C3A5908(&qword_27D9BAB20, &qword_22C90D3C0);
  v3 = swift_allocObject();
  sub_22C370238(v3);
  v3[2] = v2;
  v3[3] = 2 * (v4 / 24);
  return v3;
}

void *sub_22C5977C8()
{
  sub_22C386A28();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
  v3 = sub_22C3BD968();
  sub_22C370238(v3);
  sub_22C372374();
  v3[2] = v2;
  v3[3] = v4;
  return v3;
}

void *sub_22C5978A8()
{
  sub_22C386A28();
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22C386CE8(v2, v3, v4, v5);
  v6 = sub_22C3BD968();
  sub_22C373588(v6);
  v6[2] = v0;
  v6[3] = v7;
  return v6;
}

void *sub_22C5979E0()
{
  sub_22C386A28();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  sub_22C3A5908(&qword_27D9BAC80, &unk_22C90D520);
  v3 = sub_22C3BD968();
  sub_22C370238(v3);
  sub_22C372374();
  v3[2] = v2;
  v3[3] = v4;
  return v3;
}

void *sub_22C597AC0()
{
  sub_22C386A28();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
  v3 = sub_22C3BD968();
  sub_22C370238(v3);
  v3[2] = v2;
  v3[3] = (2 * (v4 / 8)) | 1;
  return v3;
}

void *sub_22C597BC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22C386CE8(a1, a2, a3, a4);
  v8 = a5(0);
  sub_22C3699B8(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = v5;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22C597CAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22C386CE8(a1, a2, a3, a4);
  v10 = sub_22C3A5908(a5, a6);
  sub_22C3699B8(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  result = j__malloc_size(v15);
  if (v12)
  {
    if ((result - v14) != 0x8000000000000000 || v12 != -1)
    {
      v15[2] = v6;
      v15[3] = 2 * ((result - v14) / v12);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C597DD8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C597E30(uint64_t a1, uint64_t a2)
{
  sub_22C374410();
  v5 = sub_22C9087BC();
  sub_22C3699B8(v5);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for PlannerServiceContext(0);
  sub_22C3699B8(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = *(v2 + 16);
  v15 = *(v2 + ((*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_22C422A58;

  return sub_22C58D840(v3, a2, v14, v2 + 24, v2 + v7, v2 + v12, v15);
}

uint64_t sub_22C597FAC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_22C597FF4()
{
  result = qword_27D9BE0A8;
  if (!qword_27D9BE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE0A8);
  }

  return result;
}

uint64_t sub_22C598048(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C5980A0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_22C5980B4()
{
  result = qword_27D9BE0E8;
  if (!qword_27D9BE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE0E8);
  }

  return result;
}

unint64_t sub_22C598108()
{
  result = qword_27D9BE0F0;
  if (!qword_27D9BE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE0F0);
  }

  return result;
}

unint64_t sub_22C59815C()
{
  result = qword_27D9BE0F8;
  if (!qword_27D9BE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE0F8);
  }

  return result;
}

unint64_t sub_22C5981B0()
{
  result = qword_27D9BE100;
  if (!qword_27D9BE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE100);
  }

  return result;
}

unint64_t sub_22C598204()
{
  result = qword_27D9BE130;
  if (!qword_27D9BE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE130);
  }

  return result;
}

unint64_t sub_22C598258()
{
  result = qword_27D9BE140;
  if (!qword_27D9BE140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE140);
  }

  return result;
}

uint64_t sub_22C5982AC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_22C5982C0()
{
  result = qword_27D9BE158;
  if (!qword_27D9BE158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE158);
  }

  return result;
}

uint64_t sub_22C598314(uint64_t a1, uint64_t a2)
{
  result = sub_22C597FAC(&qword_281434E38, a2, type metadata accessor for FullPlannerService, &protocol conformance descriptor for FullPlannerService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C5983C0(uint64_t a1)
{
  result = sub_22C90880C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22C598454(uint64_t a1)
{
  sub_22C5984C8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22C5984C8(uint64_t a1)
{
  if (!qword_27D9BBB88)
  {
    sub_22C908A0C();
    v1 = sub_22C90AC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BBB88);
    }
  }
}

uint64_t sub_22C598520(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22C598538(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C59858C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FullPlannerResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FullPlannerResponse.Status.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22C5987E0(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C598890()
{
  result = qword_27D9BE188;
  if (!qword_27D9BE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE188);
  }

  return result;
}

unint64_t sub_22C5988E8()
{
  result = qword_27D9BE190;
  if (!qword_27D9BE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE190);
  }

  return result;
}

unint64_t sub_22C598940()
{
  result = qword_27D9BE198;
  if (!qword_27D9BE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE198);
  }

  return result;
}

unint64_t sub_22C598998()
{
  result = qword_27D9BE1A0;
  if (!qword_27D9BE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE1A0);
  }

  return result;
}

unint64_t sub_22C5989F0()
{
  result = qword_27D9BE1A8;
  if (!qword_27D9BE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE1A8);
  }

  return result;
}

unint64_t sub_22C598A48()
{
  result = qword_27D9BE1B0;
  if (!qword_27D9BE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE1B0);
  }

  return result;
}

unint64_t sub_22C598AA0()
{
  result = qword_27D9BE1B8;
  if (!qword_27D9BE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE1B8);
  }

  return result;
}

unint64_t sub_22C598AF8()
{
  result = qword_27D9BE1C0;
  if (!qword_27D9BE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE1C0);
  }

  return result;
}

unint64_t sub_22C598B50()
{
  result = qword_27D9BE1C8;
  if (!qword_27D9BE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE1C8);
  }

  return result;
}

unint64_t sub_22C598BA8()
{
  result = qword_27D9BE1D0;
  if (!qword_27D9BE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE1D0);
  }

  return result;
}

unint64_t sub_22C598C00()
{
  result = qword_27D9BE1D8;
  if (!qword_27D9BE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE1D8);
  }

  return result;
}

unint64_t sub_22C598C58()
{
  result = qword_27D9BE1E0;
  if (!qword_27D9BE1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE1E0);
  }

  return result;
}

unint64_t sub_22C598CB0()
{
  result = qword_27D9BE1E8;
  if (!qword_27D9BE1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE1E8);
  }

  return result;
}

unint64_t sub_22C598D08()
{
  result = qword_27D9BE1F0;
  if (!qword_27D9BE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE1F0);
  }

  return result;
}

unint64_t sub_22C598D60()
{
  result = qword_27D9BE1F8;
  if (!qword_27D9BE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE1F8);
  }

  return result;
}

unint64_t sub_22C598DB8()
{
  result = qword_27D9BE200;
  if (!qword_27D9BE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE200);
  }

  return result;
}

uint64_t sub_22C598E0C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v6 = *(a3 + 48);
    v7 = type metadata accessor for CacheKeyHashableRepresentation(0);
    return sub_22C597DD8(v6 + *(*(v7 - 8) + 72) * v4, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22C598EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

void *sub_22C598F0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_22C597BC4(v5, a2, a3, a4, v4);
}

uint64_t sub_22C598F60(uint64_t a1, uint64_t a2)
{

  return sub_22C90B36C();
}

uint64_t SNLPLLMPlannerResponse.planEvents.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_22C599014(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6576456E616C70 && a2 == 0xEA00000000007374)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C5990B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C599014(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C5990E0(uint64_t a1)
{
  v2 = sub_22C5992F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C59911C(uint64_t a1)
{
  v2 = sub_22C5992F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SNLPLLMPlannerResponse.encode(to:)(void *a1)
{
  v3 = sub_22C3A5908(&qword_27D9BE580, &qword_22C91DC50);
  sub_22C369824();
  v5 = v4;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = *v1;
  sub_22C374168(a1, a1[3]);
  sub_22C5992F4();

  sub_22C90B6CC();
  v11[1] = v9;
  sub_22C3A5908(&qword_27D9BE590, &qword_22C91DC58);
  sub_22C59953C(&qword_27D9BE598, &qword_27D9BE5A0, &protocol conformance descriptor for SNLPLLMResponsePlanEvent, MEMORY[0x277D83948]);
  sub_22C90B41C();

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_22C5992F4()
{
  result = qword_27D9BE588;
  if (!qword_27D9BE588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE588);
  }

  return result;
}

uint64_t type metadata accessor for SNLPLLMResponsePlanEvent(uint64_t a1)
{
  result = qword_27D9BE5D8;
  if (!qword_27D9BE5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SNLPLLMPlannerResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_22C3A5908(&qword_27D9BE5A8, &qword_22C91DC60);
  sub_22C369824();
  v7 = v6;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v10 = v12 - v9;
  sub_22C374168(a1, a1[3]);
  sub_22C5992F4();
  sub_22C90B6BC();
  if (!v2)
  {
    sub_22C3A5908(&qword_27D9BE590, &qword_22C91DC58);
    sub_22C59953C(&qword_27D9BE5B0, &qword_27D9BE5B8, &protocol conformance descriptor for SNLPLLMResponsePlanEvent, MEMORY[0x277D83978]);
    sub_22C90B32C();
    (*(v7 + 8))(v10, v5);
    *a2 = v12[1];
  }

  return sub_22C36FF94(a1);
}

uint64_t sub_22C59953C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(&qword_27D9BE590, &qword_22C91DC58);
    sub_22C599EC4(a2, type metadata accessor for SNLPLLMResponsePlanEvent, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SNLPLLMResponsePlanEvent.transcriptEvent.getter@<X0>(uint64_t a1@<X8>)
{
  sub_22C908A0C();
  sub_22C36985C();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t SNLPLLMResponsePlanEvent.transcriptEvent.setter(uint64_t a1)
{
  sub_22C908A0C();
  sub_22C36985C();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t SNLPLLMResponsePlanEvent.planText.getter()
{
  v1 = *(v0 + *(type metadata accessor for SNLPLLMResponsePlanEvent(0) + 20));

  return v1;
}

uint64_t SNLPLLMResponsePlanEvent.planText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SNLPLLMResponsePlanEvent(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SNLPLLMResponsePlanEvent.init(transcriptEvent:planText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_22C908A0C();
  sub_22C36985C();
  (*(v8 + 32))(a4, a1);
  result = type metadata accessor for SNLPLLMResponsePlanEvent(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_22C599834(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697263736E617274 && a2 == 0xEF746E6576457470;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747865546E616C70 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C599904(char a1)
{
  if (a1)
  {
    return 0x747865546E616C70;
  }

  else
  {
    return 0x697263736E617274;
  }
}

uint64_t sub_22C599950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C599834(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C599978(uint64_t a1)
{
  v2 = sub_22C599B8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5999B4(uint64_t a1)
{
  v2 = sub_22C599B8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SNLPLLMResponsePlanEvent.encode(to:)(void *a1)
{
  v3 = sub_22C3A5908(&qword_27D9BE5C0, &qword_22C91DC68);
  sub_22C369824();
  v5 = v4;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  sub_22C374168(a1, a1[3]);
  sub_22C599B8C();
  sub_22C90B6CC();
  v12[15] = 0;
  sub_22C908A0C();
  sub_22C3735AC();
  sub_22C599EC4(v9, v10, MEMORY[0x277D1E898]);
  sub_22C90B41C();
  if (!v1)
  {
    type metadata accessor for SNLPLLMResponsePlanEvent(0);
    v12[14] = 1;
    sub_22C90B3CC();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_22C599B8C()
{
  result = qword_27D9BE5C8;
  if (!qword_27D9BE5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE5C8);
  }

  return result;
}

uint64_t SNLPLLMResponsePlanEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_22C908A0C();
  sub_22C369824();
  v30 = v5;
  v31 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22C3A5908(&qword_27D9BE5D0, &qword_22C91DC70);
  sub_22C369824();
  v29 = v8;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for SNLPLLMResponsePlanEvent(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C374168(a1, a1[3]);
  sub_22C599B8C();
  sub_22C90B6BC();
  if (v2)
  {
    return sub_22C36FF94(a1);
  }

  v27 = v13;
  v14 = v30;
  v34 = 0;
  sub_22C3735AC();
  sub_22C599EC4(v15, v16, MEMORY[0x277D1E8A8]);
  v17 = v31;
  sub_22C90B32C();
  (*(v14 + 32))(v27, v7, v17);
  v33 = 1;
  v18 = sub_22C90B2DC();
  v20 = v19;
  v21 = sub_22C59A440();
  v22(v21);
  v24 = v27;
  v23 = v28;
  v25 = &v27[*(v10 + 20)];
  *v25 = v18;
  v25[1] = v20;
  sub_22C599F0C(v24, v23);
  sub_22C36FF94(a1);
  return sub_22C599F70(v24);
}

uint64_t sub_22C599EC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C599F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SNLPLLMResponsePlanEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C599F70(uint64_t a1)
{
  v2 = type metadata accessor for SNLPLLMResponsePlanEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C59A034(uint64_t a1)
{
  result = sub_22C908A0C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNLPLLMResponsePlanEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNLPLLMPlannerResponse.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C59A234()
{
  result = qword_27D9BE5E8;
  if (!qword_27D9BE5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE5E8);
  }

  return result;
}

unint64_t sub_22C59A28C()
{
  result = qword_27D9BE5F0;
  if (!qword_27D9BE5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE5F0);
  }

  return result;
}

unint64_t sub_22C59A2E4()
{
  result = qword_27D9BE5F8;
  if (!qword_27D9BE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE5F8);
  }

  return result;
}

unint64_t sub_22C59A33C()
{
  result = qword_27D9BE600;
  if (!qword_27D9BE600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE600);
  }

  return result;
}

unint64_t sub_22C59A394()
{
  result = qword_27D9BE608;
  if (!qword_27D9BE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE608);
  }

  return result;
}

unint64_t sub_22C59A3EC()
{
  result = qword_27D9BE610;
  if (!qword_27D9BE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE610);
  }

  return result;
}

void sub_22C59A450()
{
  sub_22C36BA7C();
  v88 = v2;
  v78 = v3;
  v4 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C36D5B4();
  v82 = v6;
  sub_22C36BA0C();
  v7 = sub_22C90069C();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  v80 = v11;
  sub_22C36BA0C();
  v79 = sub_22C90580C();
  sub_22C369824();
  v85 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22C3698A8();
  v91 = v14;
  sub_22C36BA0C();
  sub_22C90572C();
  sub_22C369824();
  v83 = v16;
  v84 = v15;
  MEMORY[0x28223BE20](v15);
  sub_22C3698A8();
  v90 = v17;
  v18 = sub_22C3A5908(&qword_27D9BE640, &qword_22C91DFC0);
  sub_22C369914(v18);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v19);
  v21 = &v74 - v20;
  v22 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v23 = sub_22C369914(v22);
  MEMORY[0x28223BE20](v23);
  sub_22C3698E4();
  v81 = v24;
  sub_22C369930();
  MEMORY[0x28223BE20](v25);
  sub_22C36D8C4();
  v26 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v26);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v27);
  v28 = sub_22C90576C();
  sub_22C369824();
  v89 = v29;
  MEMORY[0x28223BE20](v30);
  sub_22C3772FC();
  MEMORY[0x28223BE20](v31);
  v33 = &v74 - v32;
  sub_22C90575C();
  v76 = sub_22C587C84(0);
  v34 = *(v76 + 28);
  sub_22C90624C();
  v86 = v9;
  v75 = *(v9 + 16);
  v87 = v7;
  v75(v0, v88 + v34, v7);
  v35 = sub_22C371A14();
  sub_22C36CD04(v35, v36, v37, v7);
  sub_22C90623C();
  v74 = sub_22C90625C();
  sub_22C36BECC();
  sub_22C36C640(v38, v39, v40, v41);
  sub_22C90538C();
  v42 = sub_22C9054EC();
  sub_22C36BBA8();
  (*(v43 + 104))(v21, **(&unk_278729698 + v78), v42);
  sub_22C36BECC();
  sub_22C36C640(v44, v45, v46, v42);
  sub_22C90573C();
  v47 = v90;
  sub_22C90571C();
  v48 = *(v89 + 16);
  v77 = v33;
  v78 = v28;
  v48(v1, v33, v28);
  sub_22C9056DC();
  v49 = v76;
  v50 = *(v76 + 36);
  sub_22C90624C();
  v51 = v88;
  v52 = v88 + v50;
  v53 = v87;
  v54 = v75;
  v75(v0, v52, v87);
  v55 = sub_22C371A14();
  sub_22C36CD04(v55, v56, v57, v53);
  sub_22C90623C();
  sub_22C36BECC();
  v58 = v80;
  sub_22C36C640(v59, v60, v61, v74);
  v62 = v79;
  sub_22C90570C();
  v92 = v47;
  sub_22C9062CC();
  v63 = v87;
  v54(v58, v51 + *(v49 + 20), v87);
  v64 = v82;
  sub_22C3ECF48(v51 + *(v49 + 24), v82);
  v65 = sub_22C90451C();
  sub_22C377F98(v65);
  if (v66)
  {
    sub_22C376B84(v64, &qword_27D9BB7A0, &qword_22C9110D0);
    v70 = v81;
    sub_22C36A748();
    sub_22C36C640(v67, v68, v69, v63);
  }

  else
  {
    v70 = v81;
    sub_22C90446C();
    sub_22C38BB64();
    v71 = sub_22C37170C();
    v72(v71);
  }

  v73 = v91;
  sub_22C59D250(v91, v58, v70);
  sub_22C376B84(v70, &qword_27D9BB190, qword_22C90DD90);
  (*(v86 + 8))(v58, v63);
  (*(v85 + 8))(v73, v62);
  (*(v89 + 8))(v77, v78);
  (*(v83 + 8))(v90, v84);
  sub_22C36CC48();
}

void sub_22C59AA70()
{
  sub_22C36BA7C();
  v3 = v2;
  v91 = v4;
  v92 = v5;
  v6 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C36D5B4();
  v97 = v8;
  sub_22C36BA0C();
  sub_22C90580C();
  sub_22C369824();
  v100 = v10;
  v101 = v9;
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  v95 = v11;
  sub_22C36BA0C();
  sub_22C90572C();
  sub_22C369824();
  v98 = v13;
  v99 = v12;
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  v93 = v14;
  v15 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v16 = sub_22C369914(v15);
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  v96 = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  sub_22C36D8C4();
  v19 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v19);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v20);
  sub_22C37F348();
  v21 = sub_22C90564C();
  sub_22C369824();
  v102 = v22;
  MEMORY[0x28223BE20](v23);
  sub_22C3698E4();
  v89 = v24;
  sub_22C369930();
  MEMORY[0x28223BE20](v25);
  v27 = &v86 - v26;
  v94 = sub_22C9063DC();
  sub_22C369824();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  sub_22C382784();
  v31 = sub_22C90069C();
  sub_22C369824();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  sub_22C3698E4();
  v90 = v35;
  sub_22C369930();
  MEMORY[0x28223BE20](v36);
  v38 = &v86 - v37;
  v39 = sub_22C9073DC();
  if (sub_22C370B74(v3, 1, v39) == 1)
  {
    sub_22C903F7C();
    v40 = sub_22C9063CC();
    v41 = sub_22C90AADC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_22C366000, v40, v41, "No preassigned event ID available for instrumentation - cannot log inference end event", v42, 2u);
      MEMORY[0x2318B9880](v42, -1, -1);
    }

    (*(v29 + 8))(v0, v94);
  }

  else
  {
    v94 = v21;
    v88 = v33;
    v43 = *(v33 + 16);
    v43(v38, v3, v31);
    sub_22C90563C();
    v87 = sub_22C587C84(0);
    v44 = *(v87 + 32);
    sub_22C90624C();
    v43(v1, v3 + v44, v31);
    v45 = sub_22C371A14();
    sub_22C36CD04(v45, v46, v47, v31);
    sub_22C90623C();
    v48 = sub_22C90625C();
    sub_22C36BECC();
    sub_22C36C640(v49, v50, v51, v48);
    sub_22C90538C();

    sub_22C90560C();
    sub_22C90624C();
    v91 = v38;
    v43(v1, v38, v31);
    v86 = v43;
    v52 = sub_22C371A14();
    sub_22C36CD04(v52, v53, v54, v31);
    sub_22C90623C();
    sub_22C36BECC();
    sub_22C36C640(v55, v56, v57, v48);
    sub_22C90561C();
    v58 = v93;
    sub_22C90571C();
    v59 = *(v102 + 16);
    v92 = v27;
    v59(v89, v27, v94);
    sub_22C9056EC();
    v60 = v87;
    v61 = *(v87 + 36);
    sub_22C90624C();
    v43(v1, v3 + v61, v31);
    v62 = sub_22C371A14();
    sub_22C36CD04(v62, v63, v64, v31);
    sub_22C90623C();
    sub_22C36BECC();
    v65 = v101;
    sub_22C36C640(v66, v67, v68, v48);
    v69 = sub_22C90570C();
    MEMORY[0x28223BE20](v69);
    *(&v86 - 2) = v58;
    v70 = v95;
    sub_22C9062CC();
    v71 = v60;
    v72 = v3 + *(v60 + 20);
    v73 = v90;
    v86(v90, v72, v31);
    v74 = v3 + *(v71 + 24);
    v75 = v97;
    sub_22C3ECF48(v74, v97);
    v76 = sub_22C90451C();
    sub_22C377F98(v76);
    if (v77)
    {
      sub_22C376B84(v75, &qword_27D9BB7A0, &qword_22C9110D0);
      v81 = v96;
      sub_22C36A748();
      sub_22C36C640(v78, v79, v80, v31);
    }

    else
    {
      v81 = v96;
      sub_22C90446C();
      sub_22C38BB64();
      v82 = sub_22C37170C();
      v83(v82);
    }

    v84 = v100;
    sub_22C59D250(v70, v73, v81);
    sub_22C376B84(v81, &qword_27D9BB190, qword_22C90DD90);
    v85 = *(v88 + 8);
    v85(v73, v31);
    (*(v84 + 8))(v70, v65);
    (*(v102 + 8))(v92, v94);
    v85(v91, v31);
    (*(v98 + 8))(v58, v99);
  }

  sub_22C36CC48();
}

void sub_22C59B1A0()
{
  sub_22C36BA7C();
  v79 = v3;
  v80 = v4;
  v77 = v5;
  v7 = v6;
  v8 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  sub_22C369914(v8);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C36D5B4();
  v85 = v10;
  sub_22C36BA0C();
  v78 = sub_22C90069C();
  sub_22C369824();
  v87 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  v81 = v13;
  sub_22C36BA0C();
  v89 = sub_22C90580C();
  sub_22C369824();
  v86 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22C3698A8();
  v88 = v16;
  v17 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v18 = sub_22C369914(v17);
  MEMORY[0x28223BE20](v18);
  sub_22C3698E4();
  v84 = v19;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  v76 = v75 - v21;
  v22 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v22);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  sub_22C36D5B4();
  v75[1] = v24;
  sub_22C36BA0C();
  sub_22C90572C();
  sub_22C369824();
  v82 = v26;
  v83 = v25;
  MEMORY[0x28223BE20](v25);
  sub_22C369838();
  sub_22C37B6BC();
  v27 = sub_22C901E8C();
  sub_22C369824();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  v33 = v32 - v31;
  v34 = sub_22C3A5908(&qword_27D9BE628, &unk_22C91E060);
  sub_22C369914(v34);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v35);
  sub_22C36D0FC();
  v36 = sub_22C9056CC();
  sub_22C369824();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  sub_22C3772FC();
  MEMORY[0x28223BE20](v40);
  v42 = v75 - v41;
  sub_22C9056BC();
  v43 = v7;
  sub_22C901E9C();
  sub_22C59D5D0();
  (*(v29 + 8))(v33, v27);
  sub_22C9057EC();
  sub_22C36BECC();
  sub_22C36C640(v44, v45, v46, v47);
  MEMORY[0x2318B2B70](v2);

  sub_22C9056AC();
  sub_22C90571C();
  v77 = v38;
  v48 = *(v38 + 16);
  v79 = v36;
  v48(v1, v42, v36);
  sub_22C9056FC();
  v49 = sub_22C587C84(0);
  v50 = *(v49 + 36);
  sub_22C90624C();
  v51 = *(v87 + 16);
  v52 = v80;
  v53 = v78;
  (v51)(v76, v80 + v50, v78);
  v54 = sub_22C371A14();
  sub_22C36CD04(v54, v55, v56, v53);
  sub_22C90623C();
  sub_22C90625C();
  sub_22C36BECC();
  sub_22C36C640(v57, v58, v59, v60);
  sub_22C90570C();
  v90 = v0;
  sub_22C9062CC();
  v61 = v52;
  v62 = v81;
  v51();
  v63 = v85;
  sub_22C3ECF48(v61 + *(v49 + 24), v85);
  v64 = sub_22C90451C();
  sub_22C377F98(v64);
  if (v65)
  {
    sub_22C376B84(v63, &qword_27D9BB7A0, &qword_22C9110D0);
    v69 = v84;
    sub_22C36A748();
    sub_22C36C640(v66, v67, v68, v53);
  }

  else
  {
    v69 = v84;
    sub_22C90446C();
    sub_22C38BB64();
    v70 = sub_22C37170C();
    v71(v70);
  }

  v72 = v88;
  sub_22C59D250(v88, v62, v69);
  sub_22C376B84(v69, &qword_27D9BB190, qword_22C90DD90);
  (*(v87 + 8))(v62, v53);
  (*(v86 + 8))(v72, v89);
  (*(v77 + 8))(v42, v79);
  v73 = sub_22C36FD4C();
  v74(v73);
  sub_22C36CC48();
}

void sub_22C59B7A0()
{
  sub_22C36BA7C();
  v4 = v3;
  v5 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  sub_22C369914(v5);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C36BF70(v7, v43);
  v44 = sub_22C90069C();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  sub_22C36D0FC();
  sub_22C90580C();
  sub_22C369824();
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  sub_22C37BAF4(v12);
  v13 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v14 = sub_22C369914(v13);
  MEMORY[0x28223BE20](v14);
  sub_22C3698E4();
  v45 = v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  sub_22C36D8C4();
  v17 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v17);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v18);
  sub_22C382784();
  sub_22C90568C();
  sub_22C369824();
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  sub_22C372380();
  sub_22C90567C();
  v20 = *(sub_22C587C84(0) + 32);
  sub_22C90624C();
  v21 = *(v9 + 16);
  v21(v0, v4 + v20, v44);
  v22 = sub_22C371A14();
  sub_22C36CD04(v22, v23, v24, v44);
  sub_22C90623C();
  sub_22C90625C();
  sub_22C36BECC();
  sub_22C36C640(v25, v26, v27, v28);
  sub_22C90538C();

  sub_22C90565C();
  sub_22C37299C();
  sub_22C59D02C();
  (v21)(v1);
  sub_22C38909C();
  v29 = sub_22C90451C();
  sub_22C377F98(v29);
  if (v30)
  {
    sub_22C376B84(v2, &qword_27D9BB7A0, &qword_22C9110D0);
    v34 = v45;
    sub_22C36A748();
    sub_22C36C640(v31, v32, v33, v44);
  }

  else
  {
    v34 = v45;
    sub_22C90446C();
    sub_22C38BB64();
    v35 = sub_22C37170C();
    v36(v35);
  }

  v37 = sub_22C37995C();
  sub_22C59D250(v37, v1, v34);
  sub_22C376B84(v34, &qword_27D9BB190, qword_22C90DD90);
  sub_22C59D020();
  v38(v1, v44);
  v39 = sub_22C59D00C();
  v40(v39);
  v41 = sub_22C36FD4C();
  v42(v41);
  sub_22C36CC48();
}

void sub_22C59BB68()
{
  sub_22C36BA7C();
  v2 = v1;
  v3 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  sub_22C369914(v3);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  sub_22C36BF70(v5, v45);
  v6 = sub_22C90069C();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  v46 = v10;
  sub_22C36BA0C();
  sub_22C90580C();
  sub_22C369824();
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  sub_22C37BAF4(v12);
  v13 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v14 = sub_22C369914(v13);
  MEMORY[0x28223BE20](v14);
  sub_22C3698E4();
  v49 = v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  sub_22C36D8C4();
  v17 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v17);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v18);
  sub_22C382784();
  v48 = sub_22C90546C();
  sub_22C369824();
  v47 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  v23 = v22 - v21;
  sub_22C90545C();
  v24 = *(sub_22C587C84(0) + 28);
  sub_22C90624C();
  v25 = *(v8 + 16);
  v25(v0, v2 + v24, v6);
  v26 = sub_22C371A14();
  sub_22C36CD04(v26, v27, v28, v6);
  sub_22C90623C();
  sub_22C90625C();
  sub_22C36BECC();
  sub_22C36C640(v29, v30, v31, v32);
  sub_22C90538C();

  sub_22C90543C();

  sub_22C90544C();
  sub_22C37299C();
  sub_22C59D02C();
  (v25)(v46);
  sub_22C38909C();
  v33 = sub_22C90451C();
  sub_22C377F98(v33);
  if (v34)
  {
    sub_22C376B84(v23, &qword_27D9BB7A0, &qword_22C9110D0);
    v38 = v49;
    sub_22C36A748();
    sub_22C36C640(v35, v36, v37, v6);
  }

  else
  {
    v38 = v49;
    sub_22C90446C();
    sub_22C38BB64();
    v39 = sub_22C37170C();
    v40(v39);
  }

  v41 = sub_22C37995C();
  sub_22C59D250(v41, v46, v38);
  sub_22C376B84(v38, &qword_27D9BB190, qword_22C90DD90);
  sub_22C59D020();
  v42(v46, v6);
  v43 = sub_22C59D00C();
  v44(v43);
  (*(v47 + 8))(v23, v48);
  sub_22C36CC48();
}

void sub_22C59BF68()
{
  sub_22C36BA7C();
  v3 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  sub_22C369914(v3);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  sub_22C36BF70(v5, v42);
  sub_22C90069C();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C36D0FC();
  sub_22C90580C();
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  sub_22C37BAF4(v8);
  v9 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v10 = sub_22C369914(v9);
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  v43 = v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v13);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  sub_22C37B6BC();
  sub_22C90557C();
  sub_22C369824();
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  sub_22C372380();
  MEMORY[0x2318B2A40](v16, v17, v18);
  v19 = *(sub_22C587C84(0) + 28);
  sub_22C90624C();
  v20 = sub_22C3831A8();
  v0(v20);
  sub_22C36BECC();
  sub_22C36C640(v21, v22, v23, v1);
  sub_22C90623C();
  sub_22C90625C();
  v24 = sub_22C371A14();
  sub_22C36CD04(v24, v25, v26, v27);
  sub_22C90538C();
  sub_22C37299C();
  sub_22C59D02C();
  v0(v19);
  sub_22C38909C();
  v28 = sub_22C90451C();
  sub_22C377F98(v28);
  if (v29)
  {
    sub_22C376B84(v2, &qword_27D9BB7A0, &qword_22C9110D0);
    v33 = v43;
    sub_22C36A748();
    sub_22C36C640(v30, v31, v32, v1);
  }

  else
  {
    v33 = v43;
    sub_22C90446C();
    sub_22C38BB64();
    v34 = sub_22C37170C();
    v35(v34);
  }

  v36 = sub_22C37995C();
  sub_22C59D250(v36, v19, v33);
  sub_22C376B84(v33, &qword_27D9BB190, qword_22C90DD90);
  sub_22C59D020();
  v37(v19, v1);
  v38 = sub_22C59D00C();
  v39(v38);
  v40 = sub_22C36FD4C();
  v41(v40);
  sub_22C36CC48();
}

void sub_22C59C304()
{
  sub_22C36BA7C();
  v3 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  sub_22C369914(v3);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  sub_22C36BF70(v5, v39);
  sub_22C90069C();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C36D0FC();
  sub_22C90580C();
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  sub_22C37BAF4(v8);
  v9 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v10 = sub_22C369914(v9);
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  v40 = v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v13);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  sub_22C37B6BC();
  sub_22C9054AC();
  sub_22C369824();
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  sub_22C372380();
  sub_22C90549C();
  v16 = *(sub_22C587C84(0) + 32);
  sub_22C90624C();
  v17 = sub_22C3831A8();
  v0(v17);
  sub_22C36BECC();
  sub_22C36C640(v18, v19, v20, v1);
  sub_22C90623C();
  sub_22C90625C();
  v21 = sub_22C371A14();
  sub_22C36CD04(v21, v22, v23, v24);
  sub_22C90548C();
  sub_22C37299C();
  sub_22C59D02C();
  v0(v16);
  sub_22C38909C();
  v25 = sub_22C90451C();
  sub_22C377F98(v25);
  if (v26)
  {
    sub_22C376B84(v2, &qword_27D9BB7A0, &qword_22C9110D0);
    v30 = v40;
    sub_22C36A748();
    sub_22C36C640(v27, v28, v29, v1);
  }

  else
  {
    v30 = v40;
    sub_22C90446C();
    sub_22C38BB64();
    v31 = sub_22C37170C();
    v32(v31);
  }

  v33 = sub_22C37995C();
  sub_22C59D250(v33, v16, v30);
  sub_22C376B84(v30, &qword_27D9BB190, qword_22C90DD90);
  sub_22C59D020();
  v34(v16, v1);
  v35 = sub_22C59D00C();
  v36(v35);
  v37 = sub_22C36FD4C();
  v38(v37);
  sub_22C36CC48();
}

void sub_22C59C6A0()
{
  sub_22C36BA7C();
  v51 = v1;
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C36BF70(v6, v49);
  v7 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v7);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C36D5B4();
  v56 = v9;
  sub_22C36BA0C();
  sub_22C90069C();
  sub_22C369824();
  v49 = v10;
  v50 = v11;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v14 = v13 - v12;
  v15 = sub_22C90580C();
  sub_22C369824();
  v54 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  sub_22C36D0FC();
  sub_22C901E8C();
  sub_22C369824();
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v19 = sub_22C3A5908(&qword_27D9BE628, &unk_22C91E060);
  sub_22C369914(v19);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - v21;
  v52 = sub_22C9054DC();
  sub_22C369824();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_22C369838();
  v28 = v27 - v26;
  sub_22C90533C();
  v29 = v3;
  sub_22C901E9C();
  sub_22C59D5D0();
  v30 = sub_22C37170C();
  v31(v30);
  v32 = v49;
  sub_22C9057EC();
  sub_22C36BECC();
  sub_22C36C640(v33, v34, v35, v36);
  MEMORY[0x2318B2990](v22);
  v57 = v28;
  v55 = v15;
  sub_22C9062CC();
  v37 = sub_22C587C84(0);
  v38 = v51;
  v39 = v50;
  v40 = v14;
  v41 = v14;
  v42 = v53;
  (*(v50 + 16))(v41, v51 + *(v37 + 20), v32);
  sub_22C3ECF48(v38 + *(v37 + 24), v42);
  v43 = sub_22C90451C();
  if (sub_22C370B74(v42, 1, v43) == 1)
  {
    sub_22C376B84(v42, &qword_27D9BB7A0, &qword_22C9110D0);
    v44 = v56;
    sub_22C36A748();
    sub_22C36C640(v45, v46, v47, v32);
  }

  else
  {
    v44 = v56;
    sub_22C90446C();
    sub_22C38BB64();
    (*(v48 + 8))(v42, v43);
  }

  sub_22C59D250(v0, v40, v44);
  sub_22C376B84(v44, &qword_27D9BB190, qword_22C90DD90);
  (*(v39 + 8))(v40, v32);
  (*(v54 + 8))(v0, v55);
  (*(v24 + 8))(v28, v52);
  sub_22C36CC48();
}

uint64_t sub_22C59CB3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), unsigned int *a4)
{
  v7 = sub_22C3A5908(&qword_27D9BE620, &qword_22C91DFA8);
  sub_22C369914(v7);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22C37F348();
  a3(v9);
  v10 = swift_allocBox();
  sub_22C36BBA8();
  (*(v11 + 16))();
  *v4 = v10;
  v12 = *a4;
  v13 = sub_22C90554C();
  sub_22C36BBA8();
  (*(v14 + 104))(v4, v12, v13);
  sub_22C36BECC();
  sub_22C36C640(v15, v16, v17, v13);
  return sub_22C90558C();
}

uint64_t sub_22C59CCD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  v10 = sub_22C3A5908(a3, a4);
  sub_22C369914(v10);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22C37F348();
  v13 = a5(v12);
  sub_22C36BBA8();
  (*(v14 + 16))(v6, a2, v13);
  sub_22C36BECC();
  sub_22C36C640(v15, v16, v17, v13);
  return a6(v6);
}

_BYTE *sub_22C59CEC4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C59CFA0()
{
  result = qword_27D9BE650;
  if (!qword_27D9BE650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE650);
  }

  return result;
}

uint64_t sub_22C59D038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C369914(v8);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v11 = v22 - v10;
  sub_22C3E8FB4(a3, v22 - v10, &qword_27D9BBB48, &qword_22C910F00);
  v12 = sub_22C90A75C();
  v13 = sub_22C370B74(v11, 1, v12);

  if (v13 == 1)
  {
    sub_22C3FC848(v11);
  }

  else
  {
    sub_22C90A74C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_22C90A6DC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_22C90A1EC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = sub_22C59ED48();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return sub_22C59ED48();
}

uint64_t sub_22C59D250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v40 = a2;
  v38 = a1;
  v4 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v5 = sub_22C3699B8(v4);
  v41 = v6;
  MEMORY[0x28223BE20](v5);
  v39 = &v35 - v7;
  v8 = sub_22C90069C();
  sub_22C369824();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v36 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C369914(v14);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  v16 = sub_22C36D83C();
  v17 = type metadata accessor for PlanGenerationInstrumentation.PlanGenerationTelemetryWrapper(v16);
  v37 = *(v17 - 8);
  v18 = *(v37 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v20 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v35 - v21;
  sub_22C90580C();
  sub_22C36985C();
  (*(v23 + 16))(v22, v38);
  sub_22C90621C();
  sub_22C90A73C();
  sub_22C90A75C();
  sub_22C36BECC();
  sub_22C36C640(v24, v25, v26, v27);
  sub_22C59E764(v22, v20);
  v28 = v8;
  (*(v10 + 16))(&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v8);
  v29 = v39;
  sub_22C3E8FB4(v42, v39, &qword_27D9BB190, qword_22C90DD90);
  v30 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v31 = (v18 + *(v10 + 80) + v30) & ~*(v10 + 80);
  v32 = (v12 + *(v41 + 80) + v31) & ~*(v41 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  sub_22C59E7C8(v20, v33 + v30);
  (*(v10 + 32))(v33 + v31, v36, v28);
  sub_22C3CB76C(v29, v33 + v32);
  sub_22C59D038(0, 0, v3, &unk_22C91E0B0, v33);

  sub_22C3FC848(v3);
  return sub_22C59E9D8(v22);
}

uint64_t sub_22C59D5D0()
{
  sub_22C9057DC();
  v0 = sub_22C901E7C();
  v1 = [v0 domain];

  sub_22C90A11C();
  sub_22C9057CC();
  sub_22C901E8C();
  sub_22C59EA50(&qword_27D9BE658, MEMORY[0x277D1C2F0], MEMORY[0x277D1D750]);
  sub_22C90003C();
  return sub_22C9057BC();
}

uint64_t sub_22C59D6AC(uint64_t a1)
{
  v2 = sub_22C59ECF0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C59D6E8(uint64_t a1)
{
  v2 = sub_22C59ECF0();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C59D740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = sub_22C9063DC();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BE660, &qword_22C9254E0);
  v6[13] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BE668, &unk_22C91E0C0);
  v6[14] = swift_task_alloc();
  v8 = sub_22C90580C();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C59D8D0, 0, 0);
}

uint64_t sub_22C59D8D0()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 56);
  sub_22C90416C();
  swift_allocObject();
  v21 = *(v0 + 64);
  sub_22C90417C();
  (*(v2 + 16))(v1, v5, v3);
  v6 = sub_22C9055FC();
  *(swift_task_alloc() + 16) = v21;
  sub_22C9062CC();

  sub_22C36BECC();
  sub_22C36C640(v7, v8, v9, v6);
  sub_22C90547C();
  v10 = *(type metadata accessor for PlanGenerationInstrumentation.PlanGenerationTelemetryWrapper(0) + 20);
  v11 = sub_22C90622C();
  sub_22C36985C();
  (*(v12 + 16))(v4, v5 + v10, v11);
  sub_22C36BECC();
  sub_22C36C640(v13, v14, v15, v11);
  sub_22C9057FC();
  sub_22C9061DC();
  sub_22C59EA50(&qword_27D9BE670, MEMORY[0x277D20338], MEMORY[0x277D20330]);
  sub_22C90620C();
  v16 = *(v0 + 128);
  v17 = *(v0 + 136);
  v18 = *(v0 + 120);
  sub_22C374168((v0 + 16), *(v0 + 40));
  sub_22C9062BC();

  (*(v16 + 8))(v17, v18);
  sub_22C36FF94((v0 + 16));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22C59DCA4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D41D58];
  v3 = sub_22C90415C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22C59DD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v4 = sub_22C90069C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  sub_22C90624C();
  v25 = v5;
  v23 = *(v5 + 16);
  v23(v12, a2, v4);
  v19 = 1;
  sub_22C36C640(v12, 0, 1, v4);
  sub_22C90623C();
  v26 = sub_22C90625C();
  sub_22C36C640(v18, 0, 1, v26);
  sub_22C9055DC();
  sub_22C9073EC();
  sub_22C59EAEC(&v28);
  sub_22C9055EC();
  sub_22C3E8FB4(v27, v10, &qword_27D9BB190, qword_22C90DD90);
  if (sub_22C370B74(v10, 1, v4) != 1)
  {
    v20 = v24;
    v21 = v25;
    (*(v25 + 32))(v24, v10, v4);
    sub_22C90624C();
    v23(v12, v20, v4);
    sub_22C36C640(v12, 0, 1, v4);
    sub_22C90623C();
    (*(v21 + 8))(v20, v4);
    v19 = 0;
  }

  sub_22C36C640(v16, v19, 1, v26);
  return sub_22C90538C();
}

uint64_t sub_22C59E128(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(uint64_t), void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a2;
  v11 = sub_22C90580C();
  sub_22C369824();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v15 = sub_22C36D83C();
  v16 = a3(v15);
  sub_22C369824();
  v18 = v17;
  sub_22C36D5A8();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v24 - v21;
  a4(v20);
  a5(1);
  v26 = v22;
  sub_22C9062CC();
  sub_22C59D250(v6, a1, v25);
  (*(v13 + 8))(v6, v11);
  return (*(v18 + 8))(v22, v16);
}

uint64_t static PlanGenerationInstrumentation.Generic.GeneratePlan.failed(criticalError:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  sub_22C369A48();
  v4 = sub_22C90580C();
  sub_22C369824();
  v35 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = sub_22C901E8C();
  sub_22C369824();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v16 = v15 - v14;
  v17 = sub_22C3A5908(&qword_27D9BE628, &unk_22C91E060);
  sub_22C369914(v17);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  v21 = sub_22C90534C();
  sub_22C369824();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  sub_22C369838();
  v27 = v26 - v25;
  sub_22C90533C();
  v28 = v3;
  sub_22C901E9C();
  sub_22C59D5D0();
  (*(v12 + 8))(v16, v10);
  sub_22C9057EC();
  sub_22C36BECC();
  sub_22C36C640(v29, v30, v31, v32);
  MEMORY[0x2318B2800](v20);
  v38 = v27;
  sub_22C9062CC();
  sub_22C59D250(v9, v36, v37);
  (*(v35 + 8))(v9, v4);
  return (*(v23 + 8))(v27, v21);
}

uint64_t sub_22C59E598(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), unsigned int *a4)
{
  sub_22C369A48();
  v8 = sub_22C90535C();
  sub_22C369824();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v12 = sub_22C36D83C();
  v13 = a3(v12);
  v14 = swift_allocBox();
  (*(*(v13 - 8) + 16))(v15, a2, v13);
  *v4 = v14;
  (*(v10 + 104))(v4, *a4, v8);
  return sub_22C90536C();
}

uint64_t type metadata accessor for PlanGenerationInstrumentation.PlanGenerationTelemetryWrapper(uint64_t a1)
{
  result = qword_27D9BE680;
  if (!qword_27D9BE680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C59E764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlanGenerationInstrumentation.PlanGenerationTelemetryWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C59E7C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlanGenerationInstrumentation.PlanGenerationTelemetryWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C59E82C(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for PlanGenerationInstrumentation.PlanGenerationTelemetryWrapper(0);
  sub_22C3699B8(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_22C90069C();
  sub_22C3699B8(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = *(v13 + 64);
  v15 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v15);
  v17 = (v12 + v14 + *(v16 + 80)) & ~*(v16 + 80);
  v18 = *(v1 + 16);
  v19 = *(v1 + 24);
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_22C3B00E8;

  return sub_22C59D740(a1, v18, v19, v1 + v7, v1 + v12, v1 + v17);
}

uint64_t sub_22C59E9D8(uint64_t a1)
{
  v2 = type metadata accessor for PlanGenerationInstrumentation.PlanGenerationTelemetryWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C59EA50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22C59EA98()
{
  result = qword_27D9BE678;
  if (!qword_27D9BE678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE678);
  }

  return result;
}

_BYTE *sub_22C59EB40(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22C59EC10(uint64_t a1)
{
  result = sub_22C90580C();
  if (v2 <= 0x3F)
  {
    result = sub_22C90622C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22C59EC9C()
{
  result = qword_27D9BE690;
  if (!qword_27D9BE690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE690);
  }

  return result;
}

unint64_t sub_22C59ECF0()
{
  result = qword_27D9BE698;
  if (!qword_27D9BE698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE698);
  }

  return result;
}

uint64_t sub_22C59ED48()
{

  return swift_task_create();
}

uint64_t sub_22C59ED68(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C90580C();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22C9055BC();
  sub_22C369824();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v17[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C9053FC();
  sub_22C9053EC();
  v18 = v15;
  sub_22C9062CC();
  sub_22C59D250(v9, a1, a2);
  (*(v6 + 8))(v9, v4);
  return (*(v12 + 8))(v15, v10);
}

uint64_t sub_22C59EF7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unsigned int *a4)
{
  v7 = sub_22C3A5908(&qword_27D9BE6A0, &qword_22C91E208);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v16 - v8);
  v10 = a3(0);
  v11 = swift_allocBox();
  (*(*(v10 - 8) + 16))(v12, a2, v10);
  *v9 = v11;
  v13 = *a4;
  v14 = sub_22C90579C();
  (*(*(v14 - 8) + 104))(v9, v13, v14);
  sub_22C36C640(v9, 0, 1, v14);
  return sub_22C9057AC();
}

uint64_t sub_22C59F100(uint64_t a1, uint64_t a2)
{
  v5 = sub_22C90580C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = sub_22C90540C();
  sub_22C369824();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  sub_22C36A030();
  sub_22C9053FC();
  sub_22C9053EC();
  sub_22C9062CC();
  sub_22C59D250(v11, a1, a2);
  (*(v7 + 8))(v11, v5);
  return (*(v14 + 8))(v2, v12);
}

uint64_t sub_22C59F298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v5 = sub_22C90580C();
  sub_22C369824();
  v32 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v12 = sub_22C369914(v11);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  v19 = sub_22C369914(v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v32 - v20;
  v22 = sub_22C9053AC();
  sub_22C369824();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_22C369838();
  sub_22C36A030();
  MEMORY[0x2318B2870]();
  sub_22C59F604(a1, v17);
  v26 = sub_22C90069C();
  if (sub_22C370B74(v17, 1, v26) == 1)
  {
    sub_22C59F674(v17);
    v27 = 1;
  }

  else
  {
    sub_22C90624C();
    v28 = *(v26 - 8);
    (*(v28 + 16))(v15, v17, v26);
    sub_22C36C640(v15, 0, 1, v26);
    sub_22C90623C();
    (*(v28 + 8))(v17, v26);
    v27 = 0;
  }

  v29 = sub_22C90625C();
  sub_22C36C640(v21, v27, 1, v29);
  v30 = sub_22C90538C();
  MEMORY[0x28223BE20](v30);
  *(&v32 - 2) = v3;
  sub_22C9062CC();
  sub_22C59D250(v10, v33, v34);
  (*(v32 + 8))(v10, v5);
  return (*(v24 + 8))(v3, v22);
}

uint64_t sub_22C59F604(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C59F674(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C59F714(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v5 = sub_22C90580C();
  sub_22C369824();
  v30 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = sub_22C901E8C();
  sub_22C369824();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v17 = v16 - v15;
  v18 = sub_22C3A5908(&qword_27D9BE628, &unk_22C91E060);
  v19 = sub_22C369914(v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v29 - v20;
  v22 = sub_22C9053DC();
  sub_22C369824();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_22C369838();
  sub_22C36A030();
  sub_22C90533C();
  v26 = a1;
  sub_22C901E9C();
  sub_22C59D5D0();
  (*(v13 + 8))(v17, v11);
  v27 = sub_22C9057EC();
  sub_22C36C640(v21, 0, 1, v27);
  MEMORY[0x2318B2890](v21);
  v33 = v3;
  sub_22C9062CC();
  sub_22C59D250(v10, v31, v32);
  (*(v30 + 8))(v10, v5);
  return (*(v24 + 8))(v3, v22);
}

uint64_t sub_22C59F9AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unsigned int *a4)
{
  v7 = sub_22C3A5908(&qword_27D9BE6A8, &qword_22C91E210);
  v8 = sub_22C369914(v7);
  MEMORY[0x28223BE20](v8);
  v10 = (&v17 - v9);
  v11 = a3(0);
  v12 = swift_allocBox();
  (*(*(v11 - 8) + 16))(v13, a2, v11);
  *v10 = v12;
  v14 = *a4;
  v15 = sub_22C90537C();
  (*(*(v15 - 8) + 104))(v10, v14, v15);
  sub_22C36C640(v10, 0, 1, v15);
  return sub_22C90541C();
}

unint64_t sub_22C59FB64(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C90B21C();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22C59FBB0(char a1)
{
  result = 0x454E4F4850;
  switch(a1)
  {
    case 1:
      result = 4473168;
      break;
    case 2:
      result = 0x4E414D4553524F48;
      break;
    case 3:
      result = 1398097242;
      break;
    case 4:
      result = 0x4F454D4143;
      break;
    case 5:
      result = 0x4843544157;
      break;
    case 6:
      result = 5390659;
      break;
    case 7:
      result = 0x544952414752414DLL;
      break;
    case 8:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_22C59FCA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C59FB64(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_22C59FCD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C59FBB0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_22C59FD04()
{
  if (qword_27D9BA6E8 != -1)
  {
    swift_once();
  }

  v0 = off_27D9BE6B8;
  if (qword_27D9BA6E0 != -1)
  {
    swift_once();
  }

  if (v0[2] && (v1 = sub_22C628C20(dword_27D9BE6B0), (v2 & 1) != 0))
  {
    v3 = *(v0[7] + v1);
  }

  else
  {
    v3 = 8;
  }

  byte_27D9E3FC8 = v3;
}

void sub_22C59FDB8()
{
  v0 = sub_22C90A0EC();
  v1 = MGGetSInt32Answer();

  dword_27D9BE6B0 = v1;
}

void *sub_22C59FE0C()
{
  result = sub_22C909F0C();
  off_27D9BE6B8 = result;
  return result;
}

double sub_22C59FE4C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v6 = sub_22C9063DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v30 = 0;
  v13 = sub_22C90A0EC();
  v14 = MGCopyAnswerWithError();

  if (v14)
  {
    *(a3 + 24) = swift_getObjectType();
    *a3 = v14;
  }

  else
  {
    if (v30)
    {
      sub_22C903FBC();

      v16 = sub_22C9063CC();
      v17 = sub_22C90AACC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v31[0] = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_22C36F9F4(a1, a2, v31);
        _os_log_impl(&dword_22C366000, v16, v17, "MGCopyAnswerWithError found no answer for key: %s", v18, 0xCu);
        sub_22C36FF94(v19);
        MEMORY[0x2318B9880](v19, -1, -1);
        MEMORY[0x2318B9880](v18, -1, -1);
      }

      (*(v7 + 8))(v12, v6);
    }

    else
    {
      sub_22C903FBC();

      v20 = sub_22C9063CC();
      v21 = sub_22C90AACC();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v32[0] = v28;
        *v22 = 136315394;
        *(v22 + 4) = sub_22C36F9F4(a1, a2, v32);
        *(v22 + 12) = 2080;
        swift_beginAccess();
        v29 = v30;
        v23 = sub_22C90B47C();
        v25 = sub_22C36F9F4(v23, v24, v32);

        *(v22 + 14) = v25;
        _os_log_impl(&dword_22C366000, v20, v21, "MGCopyAnswerWithError error for key: %s -> %s", v22, 0x16u);
        v26 = v28;
        swift_arrayDestroy();
        MEMORY[0x2318B9880](v26, -1, -1);
        MEMORY[0x2318B9880](v22, -1, -1);
      }

      (*(v7 + 8))(v10, v6);
    }

    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22C5A0220(uint64_t a1, unint64_t a2)
{
  sub_22C59FE4C(a1, a2, v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_22C4C75A8(v4);
  }

  return 0;
}

_BYTE *storeEnumTagSinglePayload for MobileGestalt(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MobileGestalt.DeviceClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MobileGestalt.DeviceClass(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C5A04A0()
{
  result = qword_27D9BE6C0;
  if (!qword_27D9BE6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE6C0);
  }

  return result;
}

uint64_t sub_22C5A04F4(uint64_t a1, char a2)
{
  sub_22C909FFC();
}

uint64_t sub_22C5A0564(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
      sub_22C377FD4();
      break;
    default:
      break;
  }

  sub_22C909FFC();
}

uint64_t sub_22C5A062C(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C8B3A7C(a2);
  sub_22C38A050(v2, v3);
}

uint64_t sub_22C5A066C(uint64_t a1, char a2)
{
  sub_22C909FFC();
}

uint64_t sub_22C5A06AC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
      sub_22C377FD4();
      break;
    default:
      break;
  }

  sub_22C909FFC();
}

uint64_t sub_22C5A076C(uint64_t a1, unsigned __int8 a2)
{
  sub_22C909FFC();
}

uint64_t sub_22C5A080C()
{
  v0 = StructuredSearchQueryKeys.rawValue.getter();
  sub_22C38A050(v0, v1);
}

uint64_t sub_22C5A0858(uint64_t a1, char a2)
{
  sub_22C909FFC();
}

uint64_t sub_22C5A0900(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
      sub_22C3759E4();
      break;
    case 3:
      sub_22C5AD66C();
      break;
    case 4:
      sub_22C5AD7B0();
      break;
    default:
      break;
  }

  sub_22C909FFC();
}

uint64_t sub_22C5A09BC(uint64_t a1, char a2)
{
  sub_22C909FFC();
}

uint64_t sub_22C5A0A90(uint64_t a1, char a2)
{
  sub_22C909FFC();
}

uint64_t sub_22C5A0AF8()
{
  sub_22C386784();
  switch(v0)
  {
    case 1:
      sub_22C5AD7B0();
      break;
    case 2:
      sub_22C5AD66C();
      break;
    case 3:
    case 4:
      sub_22C3759E4();
      break;
    default:
      break;
  }

  sub_22C909FFC();
}

uint64_t sub_22C5A0BA4(uint64_t a1, char a2)
{
  sub_22C909FFC();
}

uint64_t sub_22C5A0C48(uint64_t a1, char a2)
{
  if (qword_22C91FE38[a2])
  {
    v2 = qword_22C91FE38[a2];
  }

  else
  {
    v2 = 0;
  }

  return MEMORY[0x2318B8B30](v2);
}

uint64_t sub_22C5A0C84(uint64_t a1, char a2)
{
  sub_22C909FFC();
}

uint64_t sub_22C5A0D64(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 8:
      sub_22C386784();
      break;
    default:
      break;
  }

  sub_22C909FFC();
}

uint64_t sub_22C5A0E5C(uint64_t a1, char a2)
{
  sub_22C909FFC();
}

uint64_t sub_22C5A0F2C(uint64_t a1, unsigned __int8 a2)
{
  sub_22C909FFC();
}

uint64_t sub_22C5A100C(uint64_t a1, char a2)
{
  sub_22C909FFC();
}

uint64_t PlanValue.init(programStatements:planText:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[1] = a3;
  a4[2] = result;
  *a4 = a2;
  return result;
}

uint64_t sub_22C5A10AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7265764F6E616C70 && a2 == 0xED00007365646972)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C5A1154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5A10AC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C5A1180(uint64_t a1)
{
  v2 = sub_22C5A133C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5A11BC(uint64_t a1)
{
  v2 = sub_22C5A133C();

  return MEMORY[0x2821FE720](a1, v2);
}

void PlanOverrideModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_22C3A5908(&qword_27D9BE6E0, &qword_22C91E300);
  sub_22C369824();
  v27 = v26;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = *v20;
  sub_22C387284(v24);
  sub_22C5A133C();

  sub_22C372390();
  sub_22C90B6CC();
  a10 = v31;
  sub_22C3A5908(&qword_27D9BE6F0, &qword_22C91E308);
  sub_22C5A1390();
  sub_22C386A34();
  sub_22C90B41C();

  (*(v27 + 8))(v30, v25);
  sub_22C36FB20();
}

unint64_t sub_22C5A133C()
{
  result = qword_27D9BE6E8;
  if (!qword_27D9BE6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE6E8);
  }

  return result;
}

unint64_t sub_22C5A1390()
{
  result = qword_27D9BE6F8;
  if (!qword_27D9BE6F8)
  {
    sub_22C3AC1A0(&qword_27D9BE6F0, &qword_22C91E308);
    sub_22C5A1414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE6F8);
  }

  return result;
}

unint64_t sub_22C5A1414()
{
  result = qword_27D9BE700;
  if (!qword_27D9BE700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE700);
  }

  return result;
}

void PlanOverrideModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C370030();
  sub_22C5AD7F0();
  sub_22C3A5908(&qword_27D9BE708, &qword_22C91E310);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C383814();
  sub_22C36A040();
  sub_22C5A133C();
  sub_22C372390();
  sub_22C90B6BC();
  if (!v11)
  {
    sub_22C3A5908(&qword_27D9BE6F0, &qword_22C91E308);
    v14 = sub_22C5A1580();
    sub_22C3882AC(v14, v15);
    v16 = sub_22C5AD7C4();
    v17(v16);
    *v12 = a10;
  }

  sub_22C36FF94(v10);
  sub_22C36FB20();
}

unint64_t sub_22C5A1580()
{
  result = qword_27D9BE710;
  if (!qword_27D9BE710)
  {
    sub_22C3AC1A0(&qword_27D9BE6F0, &qword_22C91E308);
    sub_22C5A1604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE710);
  }

  return result;
}

unint64_t sub_22C5A1604()
{
  result = qword_27D9BE718;
  if (!qword_27D9BE718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE718);
  }

  return result;
}

uint64_t PlanOverride.statements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_22C5A1724(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E656D6574617473 && a2 == 0xEA00000000007374)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C5A17A4()
{
  sub_22C37B5C8();
  MEMORY[0x2318B8B10](0);
  return sub_22C90B66C();
}

uint64_t sub_22C5A1800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5A1724(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C5A182C(uint64_t a1)
{
  v2 = sub_22C5A19E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5A1868(uint64_t a1)
{
  v2 = sub_22C5A19E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void PlanOverride.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_22C3A5908(&qword_27D9BE720, &qword_22C91E318);
  sub_22C369824();
  v27 = v26;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = *v20;
  sub_22C387284(v24);
  sub_22C5A19E8();

  sub_22C372390();
  sub_22C90B6CC();
  a10 = v31;
  sub_22C3A5908(&qword_27D9BE730, &qword_22C91E320);
  sub_22C5A1A3C();
  sub_22C386A34();
  sub_22C90B41C();

  (*(v27 + 8))(v30, v25);
  sub_22C36FB20();
}

unint64_t sub_22C5A19E8()
{
  result = qword_27D9BE728;
  if (!qword_27D9BE728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE728);
  }

  return result;
}

unint64_t sub_22C5A1A3C()
{
  result = qword_27D9BE738;
  if (!qword_27D9BE738)
  {
    sub_22C3AC1A0(&qword_27D9BE730, &qword_22C91E320);
    sub_22C5A1AC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE738);
  }

  return result;
}

unint64_t sub_22C5A1AC0()
{
  result = qword_27D9BE740;
  if (!qword_27D9BE740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE740);
  }

  return result;
}

uint64_t PlanOverride.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  result = MEMORY[0x2318B8B10](v4);
  if (v4)
  {
    v6 = (v3 + 32);
    do
    {
      memcpy(v7, v6, sizeof(v7));
      memcpy(__dst, v6, sizeof(__dst));
      sub_22C472384(v7, v8);
      Statement.hash(into:)(a1);
      memcpy(v8, __dst, sizeof(v8));
      result = sub_22C4723E0(v8);
      v6 += 208;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t PlanOverride.hashValue.getter()
{
  v0 = sub_22C37B5C8();
  v8 = sub_22C36ED3C(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12);
  sub_22C470F8C(v8, v9);
  return sub_22C90B66C();
}

void PlanOverride.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C370030();
  sub_22C5AD7F0();
  sub_22C3A5908(&qword_27D9BE748, &qword_22C91E328);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C383814();
  sub_22C36A040();
  sub_22C5A19E8();
  sub_22C372390();
  sub_22C90B6BC();
  if (!v11)
  {
    sub_22C3A5908(&qword_27D9BE730, &qword_22C91E320);
    v14 = sub_22C5AA5DC();
    sub_22C3882AC(v14, v15);
    v16 = sub_22C5AD7C4();
    v17(v16);
    *v12 = a10;
  }

  sub_22C36FF94(v10);
  sub_22C36FB20();
}

uint64_t sub_22C5A1D50(uint64_t a1)
{
  v2 = *v1;
  sub_22C90B62C();
  sub_22C470F8C(v4, v2);
  return sub_22C90B66C();
}

uint64_t Statement.id.setter()
{
  sub_22C370250();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Statement.utteranceRule.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_22C5AA6B4(v2, v3);
}

__n128 Statement.utteranceRule.setter(uint64_t a1)
{
  sub_22C472340(*(v1 + 16), *(v1 + 24));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  return result;
}

uint64_t Statement.eventRule.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t Statement.eventRule.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

uint64_t Statement.contextRules.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t Statement.dynamicEnumerationEntityRules.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t Statement.previousStepId.setter()
{
  sub_22C370250();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Statement.nextStepIds.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t Statement.planValue.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  *a1 = v1[13];
  a1[1] = v2;
  a1[2] = v3;
}

__n128 Statement.planValue.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *(v1 + 104) = v4;
  *(v1 + 120) = v2;
  return result;
}

uint64_t Statement.planTool.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  *a1 = v2;
  a1[1] = v3;
  return sub_22C5AA6F8(v2);
}

uint64_t Statement.planTool.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_22C5AA740(*(v1 + 128));
  *(v1 + 128) = v2;
  *(v1 + 136) = v3;
  return result;
}

uint64_t Statement.creationTimestamp.setter(uint64_t result, char a2)
{
  *(v2 + 144) = result;
  *(v2 + 152) = a2 & 1;
  return result;
}

uint64_t Statement.localeId.setter()
{
  sub_22C370250();

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t Statement.userInterfaceIdioms.setter(uint64_t a1)
{

  *(v1 + 176) = a1;
  return result;
}

uint64_t Statement.modelResponse.setter()
{
  sub_22C370250();

  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  return result;
}

__n128 Statement.init(id:utteranceRule:planValue:planTool:eventRule:contextRules:dynamicEnumerationEntityRules:previousStepId:nextStepIds:creationTimestamp:localeId:userInterfaceIdioms:applyToPromptScenarios:modelResponse:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, char a13, __n128 a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18)
{
  v19 = *a3;
  v20 = a3[1];
  v21 = *(a3 + 16);
  v22 = a3[3];
  v31 = *a4;
  v23 = *(a4 + 2);
  v25 = *a5;
  v24 = a5[1];
  v26 = *a6;
  v27 = *(a6 + 8);
  *a9 = a1;
  *(a9 + 8) = a2;
  v28 = sub_22C36FD58();
  sub_22C472340(v28, v29);
  *(a9 + 16) = v19;
  *(a9 + 24) = v20;
  *(a9 + 32) = v21;
  *(a9 + 40) = v22;
  *(a9 + 104) = v31;
  *(a9 + 120) = v23;

  *(a9 + 48) = v26;
  *(a9 + 56) = v27;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 96) = a11;
  sub_22C5AA740(1);
  *(a9 + 128) = v25;
  *(a9 + 136) = v24;
  *(a9 + 144) = a12;
  *(a9 + 152) = a13 & 1;
  result = a14;
  *(a9 + 160) = a14;
  *(a9 + 176) = a15;
  *(a9 + 184) = a16;
  *(a9 + 192) = a17;
  *(a9 + 200) = a18;
  return result;
}

uint64_t Statement.init(builder:)()
{
  sub_22C5AD7F0();
  v2 = sub_22C90069C();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  sub_22C90068C();
  v9 = sub_22C90065C();
  v11 = v10;
  (*(v4 + 8))(v8, v2);
  v12 = sub_22C36FD58();
  sub_22C472340(v12, v13);

  sub_22C5AA740(1);
  *v1 = v9;
  *(v1 + 8) = v11;
  *(v1 + 16) = xmmword_22C91E2F0;
  v14 = MEMORY[0x277D84F90];
  *(v1 + 32) = 0;
  *(v1 + 40) = v14;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
  *(v1 + 120) = v14;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 128) = 1;
  *(v1 + 152) = 1;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
  *(v1 + 184) = 2;
  *(v1 + 192) = xmmword_22C91E2F0;
  return v0(v1);
}

void __swiftcall UtteranceRule.init(pattern:type:spansForNamedCaptureGroups:)(IntelligenceFlowPlannerRuntime::UtteranceRule *__return_ptr retstr, Swift::String pattern, IntelligenceFlowPlannerRuntime::UtterancePatternType type, Swift::OpaquePointer spansForNamedCaptureGroups)
{
  v4 = *type;
  retstr->pattern = pattern;
  retstr->type = v4;
  *(&retstr->spansForNamedCaptureGroups.value._rawValue + 7) = spansForNamedCaptureGroups;
}

uint64_t sub_22C5A25E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C3890BC(), (sub_22C90B4FC() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v7 = a1 == sub_22C5AD6F0() && a2 == v6;
    if (v7 || (sub_22C3890BC(), (sub_22C90B4FC() & 1) != 0))
    {

      return 1;
    }

    else
    {
      v8 = a1 == 0x6C7552746E657665 && a2 == 0xE900000000000065;
      if (v8 || (sub_22C3890BC(), (sub_22C90B4FC() & 1) != 0))
      {

        return 2;
      }

      else
      {
        v10 = a1 == sub_22C388CF8() && a2 == v9;
        if (v10 || (sub_22C3890BC(), (sub_22C90B4FC() & 1) != 0))
        {

          return 3;
        }

        else
        {
          v11 = a1 == 0xD00000000000001DLL && 0x800000022C932720 == a2;
          if (v11 || (sub_22C3890BC(), (sub_22C90B4FC() & 1) != 0))
          {

            return 4;
          }

          else
          {
            v12 = a1 == 0x756C61566E616C70 && a2 == 0xE900000000000065;
            if (v12 || (sub_22C3890BC(), (sub_22C90B4FC() & 1) != 0))
            {

              return 5;
            }

            else
            {
              v13 = a1 == 0x6C6F6F546E616C70 && a2 == 0xE800000000000000;
              if (v13 || (sub_22C3890BC(), (sub_22C90B4FC() & 1) != 0))
              {

                return 6;
              }

              else
              {
                v15 = a1 == sub_22C5AD6CC() && a2 == v14;
                if (v15 || (sub_22C3890BC(), (sub_22C90B4FC() & 1) != 0))
                {

                  return 7;
                }

                else
                {
                  v17 = a1 == sub_22C5AD764() && a2 == v16;
                  if (v17 || (sub_22C3890BC(), (sub_22C90B4FC() & 1) != 0))
                  {

                    return 8;
                  }

                  else
                  {
                    v18 = a1 == 0xD000000000000011 && 0x800000022C932740 == a2;
                    if (v18 || (sub_22C3890BC(), (sub_22C90B4FC() & 1) != 0))
                    {

                      return 9;
                    }

                    else
                    {
                      v19 = a1 == 0x6449656C61636F6CLL && a2 == 0xE800000000000000;
                      if (v19 || (sub_22C3890BC(), (sub_22C90B4FC() & 1) != 0))
                      {

                        return 10;
                      }

                      else
                      {
                        v20 = a1 == 0xD000000000000013 && 0x800000022C932760 == a2;
                        if (v20 || (sub_22C3890BC(), (sub_22C90B4FC() & 1) != 0))
                        {

                          return 11;
                        }

                        else
                        {
                          v21 = a1 == 0xD000000000000016 && 0x800000022C932780 == a2;
                          if (v21 || (sub_22C3890BC(), (sub_22C90B4FC() & 1) != 0))
                          {

                            return 12;
                          }

                          else if (a1 == sub_22C5AD714() && a2 == v22)
                          {

                            return 13;
                          }

                          else
                          {
                            sub_22C3890BC();
                            sub_22C90B4FC();
                            sub_22C3743B4();
                            if (a1)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_22C5A2970(char a1)
{
  switch(a1)
  {
    case 1:
      sub_22C5AD6F0();
      break;
    case 3:
      sub_22C388CF8();
      break;
    case 7:
      sub_22C5AD6CC();
      break;
    case 8:
      sub_22C5AD764();
      break;
    case 9:
      sub_22C37EC5C();
      break;
    case 13:
      sub_22C5AD714();
      break;
    default:
      return;
  }
}

uint64_t sub_22C5A2B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5A25E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5A2B44(uint64_t a1)
{
  v2 = sub_22C5AA784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5A2B80(uint64_t a1)
{
  v2 = sub_22C5AA784();

  return MEMORY[0x2821FE720](a1, v2);
}

void Statement.encode(to:)()
{
  sub_22C370030();
  v3 = sub_22C3A5908(&qword_27D9BE760, &qword_22C91E330);
  sub_22C369824();
  v5 = v4;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C383814();
  v11 = v0[3];
  v12 = v0[2];
  v10 = v0[16];
  v7 = sub_22C36D39C();
  sub_22C3766E0(v7, v8);
  sub_22C5AA784();
  sub_22C90B6CC();
  sub_22C90B3CC();
  if (!v1)
  {
    sub_22C5AA6B4(v12, v11);
    sub_22C5AA7D8();
    sub_22C5AD600();
    sub_22C5AD68C();
    sub_22C90B3AC();
    sub_22C472340(v12, v11);
    sub_22C5AA82C();
    sub_22C5AD7D8();

    sub_22C5AD600();
    sub_22C5AD68C();
    sub_22C90B3AC();

    sub_22C3A5908(&qword_27D9BE780, &qword_22C91E338);
    sub_22C5AA880();
    sub_22C5AD600();
    sub_22C5AD68C();
    sub_22C90B3AC();
    sub_22C3A5908(&qword_27D9BE798, &unk_22C91E340);
    sub_22C5AA980();
    sub_22C5AD600();
    sub_22C5AD68C();
    sub_22C90B3AC();
    v9 = sub_22C5AAA58();

    sub_22C5AD600();
    sub_22C5AD68C();
    sub_22C90B41C();

    if (!v9)
    {
      sub_22C5AA6F8(v10);
      sub_22C5AAAAC();
      sub_22C5AD600();
      sub_22C5AD68C();
      sub_22C90B3AC();
      sub_22C5AA740(v10);
      sub_22C5AD7A4(7);
      sub_22C5AD68C();
      sub_22C90B37C();
      sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
      sub_22C379968(&qword_27D9BE7C0, MEMORY[0x277D837D8]);
      sub_22C5AD600();
      sub_22C90B3AC();
      sub_22C5AD7A4(9);
      sub_22C386D04();
      sub_22C90B3BC();
      sub_22C5AD7A4(10);
      sub_22C386D04();
      sub_22C90B37C();
      sub_22C386D04();
      sub_22C90B3AC();
      sub_22C386D04();
      sub_22C90B38C();
      sub_22C5AD7A4(13);
      sub_22C386D04();
      sub_22C90B37C();
    }
  }

  (*(v5 + 8))(v2, v3);
  sub_22C3816B8();
  sub_22C36FB20();
}

uint64_t static Statement.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_22C3707D8(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v8 = *(v3 + 40);
  v7 = *(v3 + 48);
  v146 = *(v3 + 56);
  v143 = *(v3 + 64);
  v141 = *(v3 + 72);
  v135 = *(v3 + 80);
  v139 = *(v3 + 88);
  v137 = *(v3 + 96);
  v131 = *(v3 + 104);
  v132 = *(v3 + 120);
  v133 = *(v3 + 112);
  v127 = *(v3 + 128);
  v123 = *(v3 + 136);
  v119 = *(v3 + 144);
  HIDWORD(v122) = *(v3 + 152);
  v115 = *(v3 + 160);
  v121 = *(v3 + 168);
  v117 = *(v3 + 176);
  HIDWORD(v113) = *(v3 + 184);
  v110 = *(v3 + 192);
  v112 = *(v3 + 200);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  v12 = *(v2 + 32);
  v13 = *(v2 + 40);
  v14 = *(v2 + 48);
  v145 = *(v2 + 56);
  v142 = *(v2 + 64);
  v140 = *(v2 + 72);
  v134 = *(v2 + 80);
  v138 = *(v2 + 88);
  v136 = *(v2 + 96);
  v130 = *(v2 + 112);
  v128 = *(v2 + 104);
  v129 = *(v2 + 120);
  v124 = *(v2 + 128);
  v144 = *(v2 + 136);
  v118 = *(v2 + 144);
  LODWORD(v122) = *(v2 + 152);
  v114 = *(v2 + 160);
  v120 = *(v2 + 168);
  v116 = *(v2 + 176);
  LODWORD(v113) = *(v2 + 184);
  v109 = *(v2 + 192);
  v111 = *(v2 + 200);
  if (!v11 && (sub_22C90B4FC() & 1) == 0)
  {
    return 0;
  }

  if (!v5)
  {
    v25 = sub_22C385E74();
    sub_22C5AA6B4(v25, v26);
    if (!v10)
    {
      v39 = sub_22C37AC54();
      sub_22C5AA6B4(v39, v40);
      v41 = sub_22C385E74();
      sub_22C472340(v41, v42);
      if (v7)
      {
        goto LABEL_10;
      }

LABEL_18:
      if (!v14)
      {

        goto LABEL_23;
      }

LABEL_19:

      return 0;
    }

    v27 = sub_22C381AD8();
    sub_22C5AA6B4(v27, v28);
LABEL_16:
    v35 = sub_22C377FC0();
    sub_22C472340(v35, v36);
    v37 = sub_22C381AD8();
    sub_22C472340(v37, v38);
    return 0;
  }

  v151 = v4;
  v152 = v5;
  v153 = v6;
  v154 = v8;
  if (!v10)
  {
    v29 = sub_22C377FC0();
    sub_22C5AA6B4(v29, v30);
    v31 = sub_22C37AC54();
    sub_22C5AA6B4(v31, v32);
    v33 = sub_22C377FC0();
    sub_22C5AA6B4(v33, v34);

    goto LABEL_16;
  }

  v147 = v9;
  v148 = v10;
  LOBYTE(v149) = v12 & 1;
  v150 = v13;
  v15 = sub_22C377FC0();
  sub_22C5AA6B4(v15, v16);
  v17 = sub_22C381AD8();
  sub_22C5AA6B4(v17, v18);
  v19 = sub_22C377FC0();
  sub_22C5AA6B4(v19, v20);
  v21 = static UtteranceRule.== infix(_:_:)(&v151);

  v22 = sub_22C377FC0();
  sub_22C472340(v22, v23);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_10:
  v151 = v7;
  LOBYTE(v152) = v146;
  if (!v14)
  {
    goto LABEL_19;
  }

  v147 = v14;
  LOBYTE(v148) = v145;
  swift_bridgeObjectRetain_n();

  v24 = static EventRule.== infix(_:_:)(&v151, &v147);

  if (!v24)
  {
    return 0;
  }

LABEL_23:
  if (v143)
  {
    if (!v142)
    {
      return 0;
    }

    sub_22C36BA00();
    sub_22C46C884();
    v45 = v44;

    if ((v45 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v142)
  {
    return 0;
  }

  if (v141)
  {
    if (!v140)
    {
      return 0;
    }

    sub_22C46CCC8(v141, v140);
    if ((v46 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v140)
  {
    return 0;
  }

  if (v139)
  {
    if (!v138)
    {
      return 0;
    }

    v47 = v135 == v134 && v139 == v138;
    if (!v47 && (sub_22C90B4FC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v138)
  {
    return 0;
  }

  if (v137)
  {
    if (!v136)
    {
      return 0;
    }

    sub_22C46CDD8();
    if ((v48 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v136)
  {
    return 0;
  }

  v151 = v131;
  v152 = v133;
  v153 = v132;
  v147 = v128;
  v148 = v130;
  v149 = v129;

  v49 = static PlanValue.== infix(_:_:)(&v151, &v147);

  if ((v49 & 1) == 0)
  {
    return 0;
  }

  if (v127 == 1)
  {
    sub_22C5AA6F8(1);
    v58 = v124;
    if (v124 == 1)
    {
      sub_22C5AA6F8(1);
      goto LABEL_51;
    }

    v61 = sub_22C37335C();
    sub_22C5AA6F8(v61);
    goto LABEL_57;
  }

  v58 = v124;
  if (v124 == 1)
  {
    v59 = sub_22C36BBCC();
    sub_22C5AA6F8(v59);
    sub_22C5AA6F8(1);
    v60 = sub_22C36BBCC();
    sub_22C5AA6F8(v60);

LABEL_57:
    v62 = sub_22C36BBCC();
    sub_22C5AA740(v62);
    v63 = sub_22C37335C();
LABEL_82:
    sub_22C5AA740(v63);
    return 0;
  }

  if (v127)
  {
    if (!v124)
    {
      v58 = v127;
      v81 = sub_22C36BBCC();
      sub_22C5AA6F8(v81);
      sub_22C5AA6F8(0);
      v82 = sub_22C36BBCC();
      sub_22C5AA6F8(v82);
      v66 = 0;
      goto LABEL_80;
    }

    sub_22C46CDD8();
    if ((v50 & 1) == 0)
    {
      v64 = sub_22C5AD6C0(v50, v51, v52, v53, v54, v55, v56, v57, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v127);
      sub_22C5AA6F8(v64);
      v65 = sub_22C37B9B0();
      sub_22C5AA6F8(v65);
      sub_22C5AA6F8(v58);
      v66 = v125;
LABEL_80:
      sub_22C5AA740(v66);
      goto LABEL_81;
    }
  }

  else if (v124)
  {
    sub_22C5AA6F8(0);
    v69 = sub_22C37B9B0();
    sub_22C5AA6F8(v69);
    sub_22C5AA6F8(0);
    v70 = sub_22C37B9B0();
    sub_22C5AA740(v70);
    v58 = 0;
    goto LABEL_81;
  }

  if (v123)
  {
    if (!v144)
    {
      v94 = sub_22C5AD6C0(v50, v51, v52, v53, v54, v55, v56, v57, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v127);
      sub_22C5AA6F8(v94);
      v95 = sub_22C37AC54();
      sub_22C5AA6F8(v95);
      sub_22C5AA6F8(v58);
      v96 = sub_22C37AC54();
      sub_22C5AA740(v96);
      goto LABEL_81;
    }

    sub_22C46CDD8();
    v72 = v71;
    v80 = sub_22C5AD6C0(v71, v73, v74, v75, v76, v77, v78, v79, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v127);
    sub_22C5AA6F8(v80);
    sub_22C5AA6F8(v126);
    sub_22C5AA6F8(v58);
    sub_22C5AA740(v126);
    if (v72)
    {
      goto LABEL_96;
    }

LABEL_81:

    v63 = v58;
    goto LABEL_82;
  }

  sub_22C5AA6F8(v127);
  if (v144)
  {
    v84 = sub_22C5AA6F8(v124);
    v92 = sub_22C5AD6C0(v84, v85, v86, v87, v88, v89, v90, v91, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v127);
    sub_22C5AA6F8(v92);
    v93 = sub_22C36BA00();
    sub_22C5AA740(v93);
    goto LABEL_81;
  }

  v97 = sub_22C37AC54();
  v98 = sub_22C5AA6F8(v97);
  v106 = sub_22C5AD6C0(v98, v99, v100, v101, v102, v103, v104, v105, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v127);
  sub_22C5AA6F8(v106);
  v107 = sub_22C37AC54();
  sub_22C5AA740(v107);
LABEL_96:

LABEL_51:
  sub_22C5AA740(v58);
  if ((v122 & 0x100000000) != 0)
  {
    if (!v122)
    {
      return 0;
    }
  }

  else
  {
    v67 = v122;
    if (v119 != v118)
    {
      v67 = 1;
    }

    if (v67)
    {
      return 0;
    }
  }

  if (v121)
  {
    if (!v120)
    {
      return 0;
    }

    v68 = v115 == v114 && v121 == v120;
    if (!v68 && (sub_22C90B4FC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v120)
  {
    return 0;
  }

  if (v117)
  {
    if (!v116)
    {
      return 0;
    }

    sub_22C46CDD8();
    if ((v83 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v116)
  {
    return 0;
  }

  if (HIDWORD(v113) == 2)
  {
    if (v113 == 2)
    {
      goto LABEL_99;
    }

    return 0;
  }

  result = 0;
  if (v113 != 2 && ((v113 ^ HIDWORD(v113)) & 1) == 0)
  {
LABEL_99:
    if (v112)
    {
      if (v111)
      {
        v108 = v110 == v109 && v112 == v111;
        if (v108 || (sub_22C90B4FC() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v111)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t static PlanValue.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (!v5)
    {
      return 0;
    }

    v7 = *a1 == *a2 && v3 == v5;
    if (!v7 && (sub_22C90B4FC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v4)
  {
    if (v6)
    {

      v8 = sub_22C36BBCC();
      sub_22C46CE5C(v8, v9);
      sub_22C3743B4();
      if (v4)
      {
        return 1;
      }
    }
  }

  else if (!v6)
  {
    return 1;
  }

  return 0;
}

uint64_t Statement.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v14 = *(v2 + 56);
  v15 = *(v2 + 64);
  v16 = *(v2 + 72);
  v7 = *(v2 + 88);
  v8 = *(v2 + 96);
  v10 = *(v2 + 112);
  v9 = *(v2 + 120);
  v18 = *(v2 + 128);
  v19 = *(v2 + 136);
  v13 = *(v2 + 144);
  v20 = *(v2 + 152);
  v17 = *(v2 + 168);
  v21 = *(v2 + 176);
  v22 = *(v2 + 184);
  v23 = *(v2 + 200);
  sub_22C909FFC();
  if (v4 && (sub_22C90B64C(), sub_22C909FFC(), sub_22C909FFC(), , v5))
  {
    sub_22C90B64C();
    sub_22C4714BC();
  }

  else
  {
    sub_22C90B64C();
  }

  if (v6 && (sub_22C90B64C(), sub_22C471388(), v14 != 3))
  {
    sub_22C90B64C();
    v11 = v17;
    sub_22C909FFC();
  }

  else
  {
    sub_22C90B64C();
    v11 = v17;
  }

  sub_22C90B64C();
  if (v15)
  {
    sub_22C37B9B0();
    sub_22C4711E4();
  }

  sub_22C90B64C();
  if (v16)
  {
    sub_22C36BBCC();
    sub_22C47113C();
  }

  sub_22C90B64C();
  if (v7)
  {
    sub_22C909FFC();
  }

  if (v8)
  {
    sub_22C90B64C();
    sub_22C4710DC();
    if (v10)
    {
      goto LABEL_17;
    }

LABEL_20:
    sub_22C90B64C();
    if (v9)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  sub_22C90B64C();
  if (!v10)
  {
    goto LABEL_20;
  }

LABEL_17:
  sub_22C90B64C();
  sub_22C909FFC();
  if (v9)
  {
LABEL_18:
    sub_22C90B64C();
    sub_22C4716F0(a1, v9);
    goto LABEL_22;
  }

LABEL_21:
  sub_22C90B64C();
LABEL_22:
  if (v18 != 1)
  {
    sub_22C90B64C();
    if (v18)
    {
      sub_22C90B64C();
      sub_22C4710DC();
      if (v19)
      {
LABEL_25:
        sub_22C90B64C();
        sub_22C4710DC();
        goto LABEL_28;
      }
    }

    else
    {
      sub_22C90B64C();
      if (v19)
      {
        goto LABEL_25;
      }
    }
  }

  sub_22C90B64C();
LABEL_28:
  if (v20)
  {
    sub_22C90B64C();
    if (v11)
    {
      goto LABEL_30;
    }

LABEL_33:
    sub_22C90B64C();
    if (v21)
    {
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  sub_22C90B64C();
  MEMORY[0x2318B8B30](v13);
  if (!v11)
  {
    goto LABEL_33;
  }

LABEL_30:
  sub_22C90B64C();
  sub_22C909FFC();
  if (v21)
  {
LABEL_31:
    sub_22C90B64C();
    sub_22C37B9B0();
    sub_22C4710DC();
    goto LABEL_35;
  }

LABEL_34:
  sub_22C90B64C();
LABEL_35:
  if (v22 != 2)
  {
    sub_22C90B64C();
  }

  sub_22C90B64C();
  if (!v23)
  {
    return sub_22C90B64C();
  }

  sub_22C90B64C();

  return sub_22C909FFC();
}

uint64_t Statement.hashValue.getter()
{
  sub_22C37B5C8();
  Statement.hash(into:)(v1);
  return sub_22C90B66C();
}

void Statement.init(from:)()
{
  sub_22C370030();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C3A5908(&qword_27D9BE7C8, &qword_22C91E350);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C3766E0(v2, v2[3]);
  sub_22C5AA784();
  sub_22C90B6BC();
  if (v0)
  {
    sub_22C38C3C8();
    sub_22C5AD784();
    sub_22C36FF94(v2);
    sub_22C472340(v44, v34);

    if (v5)
    {
    }

    sub_22C5AA740(v37);
  }

  else
  {
    LOBYTE(v47) = 0;
    sub_22C5AD5DC();
    v7 = sub_22C90B2DC();
    v32 = v8;
    sub_22C5AAB00();
    sub_22C36BF84();
    sub_22C90B2BC();
    v45 = v47;
    v35 = v48;
    v81 = v49;
    v29 = v50;
    v9 = sub_22C36FD58();
    sub_22C472340(v9, v10);
    sub_22C5AAB54();
    sub_22C36BF84();
    sub_22C90B2BC();
    v43 = v47;

    sub_22C3A5908(&qword_27D9BE780, &qword_22C91E338);
    sub_22C5AABA8();
    sub_22C5AD658();
    sub_22C382794();
    sub_22C90B2BC();
    v42 = v47;
    sub_22C3A5908(&qword_27D9BE798, &unk_22C91E340);
    sub_22C5AAC5C();
    sub_22C5AD658();
    sub_22C382794();
    sub_22C90B2BC();
    v41 = v47;
    sub_22C5AAD34();
    sub_22C36BF84();
    sub_22C90B32C();
    v28 = v48;
    v27 = v47;
    sub_22C5AAD88();
    sub_22C36BF84();
    sub_22C90B2BC();
    v30 = v49;
    v31 = v48;
    v38 = v47;
    v40 = v48;
    sub_22C5AA740(1);
    LOBYTE(v47) = 7;
    sub_22C5AD5DC();
    v11 = sub_22C90B26C();
    v39 = v12;
    sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    sub_22C5AD628(&qword_28142F9E8, MEMORY[0x277D83808]);
    sub_22C5AD658();
    sub_22C382794();
    sub_22C90B2BC();
    v25 = v11;
    v36 = v47;
    sub_22C5AD5DC();
    v24 = sub_22C90B2CC();
    v79 = v13 & 1;
    LOBYTE(v47) = 10;
    sub_22C5AD5DC();
    v23 = sub_22C90B26C();
    v15 = v14;
    LOBYTE(v46[0]) = 11;
    sub_22C5AD658();
    sub_22C382794();
    sub_22C90B2BC();
    v16 = v47;
    LOBYTE(v47) = 12;
    sub_22C5AD5DC();
    v26 = sub_22C90B27C();
    v76 = 13;
    sub_22C382794();
    v17 = sub_22C90B26C();
    v21 = v18;
    v22 = v17;
    v19 = sub_22C371A24();
    v20(v19);
    v46[0] = v7;
    v46[1] = v32;
    v46[2] = v45;
    v46[3] = v35;
    v46[4] = v81;
    v46[5] = v29;
    v46[6] = v43;
    LOBYTE(v46[7]) = v28;
    v46[8] = v42;
    v46[9] = v41;
    v46[10] = v25;
    v46[11] = v39;
    v46[12] = v36;
    v46[13] = v27;
    v46[14] = v31;
    v46[15] = v30;
    v46[16] = v38;
    v46[17] = v40;
    v46[18] = v24;
    v33 = v79;
    LOBYTE(v46[19]) = v79;
    HIDWORD(v46[19]) = *&v78[3];
    *(&v46[19] + 1) = *v78;
    v46[20] = v23;
    v46[21] = v15;
    v46[22] = v16;
    LOBYTE(v46[23]) = v26;
    HIDWORD(v46[23]) = *&v77[3];
    *(&v46[23] + 1) = *v77;
    v46[24] = v22;
    v46[25] = v21;
    memcpy(v4, v46, 0xD0uLL);
    sub_22C472384(v46, &v47);
    sub_22C36FF94(v2);
    v47 = v7;
    v48 = v32;
    v49 = v45;
    v50 = v35;
    v51 = v81;
    v52 = v29;
    v53 = v43;
    v54 = v28;
    *v55 = v80[0];
    *&v55[3] = *(v80 + 3);
    v56 = v42;
    v57 = v41;
    v58 = v25;
    v59 = v39;
    v60 = v36;
    v61 = v27;
    v62 = v31;
    v63 = v30;
    v64 = v38;
    v65 = v40;
    v66 = v24;
    v67 = v33;
    *&v68[3] = *&v78[3];
    *v68 = *v78;
    v69 = v23;
    v70 = v15;
    v71 = v16;
    v72 = v26;
    *&v73[3] = *&v77[3];
    *v73 = *v77;
    v74 = v22;
    v75 = v21;
    sub_22C4723E0(&v47);
  }

  sub_22C37B304();
  sub_22C36FB20();
}

uint64_t sub_22C5A45D4(uint64_t a1)
{
  sub_22C90B62C();
  Statement.hash(into:)(v2);
  return sub_22C90B66C();
}

uint64_t UtteranceRule.pattern.setter()
{
  sub_22C370250();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t UtteranceRule.spansForNamedCaptureGroups.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t UtteranceRule.init(builder:)@<X0>(void *a1@<X8>)
{
  v1 = sub_22C36D8D4(a1);
  *(v1 + 16) = 0;
  v1[3] = MEMORY[0x277D84F90];
  return v2();
}

uint64_t static UtteranceRule.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_22C3707D8(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (v8 || (sub_22C90B4FC()) && (sub_22C3D4540(v4, v6))
  {
    if (v5)
    {
      if (v7)
      {

        sub_22C36BBCC();
        sub_22C46DFC8();
        sub_22C3743B4();
        if (v5)
        {
          return 1;
        }
      }
    }

    else if (!v7)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_22C5A47E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E726574746170 && a2 == 0xE700000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001ALL && 0x800000022C9327A0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C90B4FC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C5A48FC(char a1)
{
  if (!a1)
  {
    return 0x6E726574746170;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 0xD00000000000001ALL;
}

uint64_t sub_22C5A4970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5A47E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5A4998(uint64_t a1)
{
  v2 = sub_22C5AAE48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5A49D4(uint64_t a1)
{
  v2 = sub_22C5AAE48();

  return MEMORY[0x2821FE720](a1, v2);
}

void UtteranceRule.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C370030();
  v26 = v25;
  sub_22C3A5908(&qword_27D9BE810, &qword_22C91E358);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v27);
  sub_22C3717BC();
  sub_22C3766E0(v26, v26[3]);
  sub_22C5AAE48();
  sub_22C37239C();
  sub_22C37B084();
  sub_22C90B6CC();
  sub_22C5AD6B4();
  sub_22C37A15C();
  sub_22C90B3CC();
  if (!v24)
  {
    sub_22C5AAE9C();
    sub_22C37A15C();
    sub_22C90B41C();
    sub_22C3A5908(&qword_27D9BE828, &qword_22C91E360);
    sub_22C5AAEF0();
    sub_22C5AD798();
    sub_22C37A15C();
    sub_22C90B3AC();
  }

  v28 = sub_22C37B5F4();
  v29(v28);
  sub_22C3816B8();
  sub_22C36FB20();
}

void UtteranceRule.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_22C909FFC();
  sub_22C909FFC();

  if (v2)
  {
    sub_22C90B64C();

    sub_22C4714BC();
  }

  else
  {
    sub_22C90B64C();
  }
}

uint64_t UtteranceRule.hashValue.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = v0[3];
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_22C37B5C8();
  UtteranceRule.hash(into:)(v5);
  return sub_22C90B66C();
}

void UtteranceRule.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_22C370030();
  sub_22C5AD698();
  v17 = v16;
  v18 = sub_22C3A5908(&qword_27D9BE840, &qword_22C91E368);
  sub_22C369824();
  v20 = v19;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v21);
  v23 = v27 - v22;
  sub_22C36A040();
  v24 = sub_22C5AAE48();
  sub_22C388798(&type metadata for UtteranceRule.CodingKeys, v25, v24);
  if (v13)
  {
    sub_22C36FF94(v12);
  }

  else
  {
    sub_22C37F880();
    sub_22C90B2DC();
    sub_22C386584();
    sub_22C5AAFC8();
    sub_22C37F880();
    sub_22C90B32C();
    sub_22C3A5908(&qword_27D9BE828, &qword_22C91E360);
    sub_22C5AB01C();
    sub_22C37F880();
    sub_22C90B2BC();
    (*(v20 + 8))(v23, v18);
    v26 = v27[1];
    *v17 = v15;
    *(v17 + 8) = v14;
    *(v17 + 16) = a12;
    *(v17 + 24) = v26;

    sub_22C386234();
  }

  sub_22C37B304();
  sub_22C36FB20();
}

uint64_t sub_22C5A4F18(uint64_t a1)
{
  v2 = v1[1];
  v3 = *(v1 + 16);
  v4 = v1[3];
  v7 = *v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_22C90B62C();
  UtteranceRule.hash(into:)(v6);
  return sub_22C90B66C();
}

uint64_t SpansForNamedCaptureGroups.captureGroupName.setter()
{
  sub_22C370250();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SpansForNamedCaptureGroups.labels.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SpansForNamedCaptureGroups.init(captureGroupName:labels:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void static SpansForNamedCaptureGroups.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_22C3707D8(a1);
  v4 = v1 == *v2 && *(v3 + 8) == v2[1];
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {
    sub_22C36BA00();

    sub_22C46D3DC();
  }
}

uint64_t sub_22C5A50E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000022C9327C0 == a2;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736C6562616CLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C5A51AC(char a1)
{
  if (a1)
  {
    return 0x736C6562616CLL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_22C5A5204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5A50E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5A522C(uint64_t a1)
{
  v2 = sub_22C5AB0F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5A5268(uint64_t a1)
{
  v2 = sub_22C5AB0F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void SpansForNamedCaptureGroups.encode(to:)()
{
  sub_22C370030();
  v2 = v1;
  sub_22C3A5908(&qword_27D9BE860, &qword_22C91E370);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C3717BC();
  sub_22C3766E0(v2, v2[3]);
  sub_22C5AB0F4();
  sub_22C37239C();
  sub_22C37B084();
  sub_22C90B6CC();
  sub_22C5AD6B4();
  sub_22C37A15C();
  sub_22C90B3CC();
  if (!v0)
  {
    sub_22C3890C8();
    sub_22C3A5908(&qword_27D9BE870, &qword_22C91E378);
    sub_22C5AB148();
    sub_22C386A34();
    sub_22C37A15C();
    sub_22C90B41C();
  }

  v4 = sub_22C371530();
  v5(v4);
  sub_22C3816B8();
  sub_22C36FB20();
}

void SpansForNamedCaptureGroups.hash(into:)()
{
  sub_22C5AD7FC();
  sub_22C909FFC();
  v0 = sub_22C36BA00();

  sub_22C4716A8(v0, v1);
}

uint64_t SpansForNamedCaptureGroups.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_22C37B5C8();
  sub_22C36ED3C(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12[0]);
  sub_22C909FFC();
  sub_22C4716A8(v12, v1);
  return sub_22C90B66C();
}

void SpansForNamedCaptureGroups.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C370030();
  sub_22C5AD698();
  v27 = v26;
  sub_22C3A5908(&qword_27D9BE888, &qword_22C91E380);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v28);
  sub_22C36A040();
  v29 = sub_22C5AB0F4();
  sub_22C388798(&type metadata for SpansForNamedCaptureGroups.CodingKeys, v30, v29);
  if (v23)
  {
    sub_22C36FF94(v22);
  }

  else
  {
    sub_22C3831C8();
    sub_22C90B2DC();
    sub_22C386584();
    sub_22C3A5908(&qword_27D9BE870, &qword_22C91E378);
    sub_22C3890C8();
    sub_22C5AB1FC();
    sub_22C5AD798();
    sub_22C37F880();
    sub_22C90B32C();
    v31 = sub_22C36A754();
    v32(v31);
    *v27 = v25;
    v27[1] = v24;
    v27[2] = v33;

    sub_22C386234();
  }

  sub_22C37B304();
  sub_22C36FB20();
}

uint64_t sub_22C5A5660(uint64_t a1)
{
  sub_22C90B62C();
  SpansForNamedCaptureGroups.hash(into:)();
  return sub_22C90B66C();
}

IntelligenceFlowPlannerRuntime::UtterancePatternType_optional __swiftcall UtterancePatternType.init(rawValue:)(Swift::String rawValue)
{
  sub_22C381320();
  sub_22C90B21C();
  sub_22C5AD7D8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *v1 = v4;
  return result;
}

void sub_22C5A575C(void *a1@<X8>)
{
  UtterancePatternType.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t EventRule.eventResultOutputEnum.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

IntelligenceFlowPlannerRuntime::EventRule __swiftcall EventRule.init(eventResultOutputEnum:eventMatchOption:)(IntelligenceFlowPlannerRuntime::EventRule eventResultOutputEnum, IntelligenceFlowPlannerRuntime::EventMatchOption eventMatchOption)
{
  v3 = *eventMatchOption;
  *v2 = eventResultOutputEnum.eventResultOutputEnum._rawValue;
  *(v2 + 8) = v3;
  eventResultOutputEnum.eventMatchOption.value = eventMatchOption;
  return eventResultOutputEnum;
}

uint64_t EventRule.init(builder:)@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_22C5AD64C(a1);
  *v1 = MEMORY[0x277D84F90];
  *(v1 + 8) = 0;
  return v2();
}

BOOL static EventRule.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_22C46CEA4();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  if (v2 != 3)
  {
    return v3 != 3 && (sub_22C3D3B8C(v2, v3) & 1) != 0;
  }

  return v3 == 3;
}

uint64_t sub_22C5A598C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x800000022C9327E0 == a2;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022C932800 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_22C5A5A68(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_22C5A5AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5A598C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5A5AD4(uint64_t a1)
{
  v2 = sub_22C5AB2B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5A5B10(uint64_t a1)
{
  v2 = sub_22C5AB2B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void EventRule.encode(to:)()
{
  sub_22C370030();
  v1 = v0;
  sub_22C3A5908(&qword_27D9BE8A0, &qword_22C91E388);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v2);
  sub_22C3717BC();
  sub_22C387284(v1);
  v3 = sub_22C5AB2B0();

  sub_22C37239C();
  sub_22C372390();
  sub_22C90B6CC();
  sub_22C3A5908(&qword_27D9BE8B0, &qword_22C91E390);
  sub_22C5AB304();
  sub_22C386A34();
  sub_22C37A15C();
  sub_22C90B41C();

  if (!v3)
  {
    sub_22C5AB3DC();
    sub_22C37A15C();
    sub_22C90B3AC();
  }

  v4 = sub_22C371530();
  v5(v4);
  sub_22C3816B8();
  sub_22C36FB20();
}

uint64_t EventRule.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_22C471388();
  if (v2 == 3)
  {
    return sub_22C90B64C();
  }

  sub_22C90B64C();
  sub_22C909FFC();
}

uint64_t EventRule.hashValue.getter()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_22C37B5C8();
  EventRule.hash(into:)(v3);
  return sub_22C90B66C();
}

void EventRule.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C370030();
  sub_22C5AD7F0();
  sub_22C3A5908(&qword_27D9BE8D0, &qword_22C91E398);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C36A040();
  sub_22C5AB2B0();
  sub_22C372390();
  sub_22C90B6BC();
  if (v11)
  {
    sub_22C36FF94(v10);
  }

  else
  {
    sub_22C3A5908(&qword_27D9BE8B0, &qword_22C91E390);
    sub_22C5AB430();
    sub_22C5AD798();
    sub_22C90B32C();
    sub_22C5AB508();
    sub_22C90B2BC();
    v14 = sub_22C36A754();
    v15(v14);
    *v12 = a10;
    *(v12 + 8) = v16;

    sub_22C36FF94(v10);
  }

  sub_22C3816B8();
  sub_22C36FB20();
}

uint64_t sub_22C5A5FC8(uint64_t a1)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  v6 = v2;
  sub_22C90B62C();
  EventRule.hash(into:)(v4);
  return sub_22C90B66C();
}

uint64_t ContextRule.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextRule(0) + 20);
  sub_22C90355C();
  sub_22C36985C();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t ContextRule.appEntityCriteria.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ContextRule(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_22C4722FC(v4, v5);
}

__n128 ContextRule.init(id:type:appEntityCriteria:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for ContextRule(0);
  v9 = *(v8 + 20);
  sub_22C90355C();
  sub_22C36985C();
  v13 = a4[1];
  v14 = *a4;
  (*(v10 + 32))(&a5[v9], a3);
  v11 = &a5[*(v8 + 24)];
  result = v14;
  *v11 = v14;
  *(v11 + 1) = v13;
  return result;
}

uint64_t ContextRule.init(builder:)@<X0>(uint64_t (*a1)(char *)@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for ContextRule(0);
  v5 = *(v4 + 20);
  v6 = *MEMORY[0x277D1EAB8];
  sub_22C90355C();
  sub_22C36985C();
  (*(v7 + 104))(&a2[v5], v6);
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v8 = &a2[*(v4 + 24)];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  return a1(a2);
}

BOOL static ContextRule.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22C90B4FC() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for ContextRule(0);
  if ((sub_22C3D394C(a1 + *(v5 + 20), a2 + *(v5 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v10 = *(a1 + v6 + 16);
  v9 = *(a1 + v6 + 24);
  v11 = (a2 + v6);
  v12 = v11[1];
  v14 = v11[2];
  v13 = v11[3];
  if (!v8)
  {
    sub_22C3890BC();
    sub_22C4722FC(v28, v29);
    if (!v12)
    {
      sub_22C5AD808();
      goto LABEL_28;
    }

    v30 = sub_22C38BB74();
    sub_22C4722FC(v30, v31);
    goto LABEL_23;
  }

  if (!v12)
  {
    v32 = sub_22C36A908();
    sub_22C4722FC(v32, v33);
    sub_22C5AD808();
    v34 = sub_22C36A908();
    sub_22C4722FC(v34, v35);

LABEL_23:
    v36 = sub_22C36A908();
    sub_22C472340(v36, v37);
    v38 = sub_22C38BB74();
LABEL_24:
    sub_22C472340(v38, v39);
    return 0;
  }

  if (v7 != *v11 || v8 != v12)
  {
    sub_22C37335C();
    if ((sub_22C90B4FC() & 1) == 0)
    {
      v51 = sub_22C36A908();
      sub_22C4722FC(v51, v52);
      v53 = sub_22C38BB74();
      sub_22C4722FC(v53, v54);
      v55 = sub_22C36A908();
      sub_22C4722FC(v55, v56);
      v57 = sub_22C38BB74();
      sub_22C472340(v57, v58);

      v38 = sub_22C36A908();
      goto LABEL_24;
    }
  }

  if (v10 != v14 || v9 != v13)
  {
    sub_22C36BBCC();
    v17 = sub_22C90B4FC();
    v18 = sub_22C36A908();
    sub_22C4722FC(v18, v19);
    v20 = sub_22C38BB74();
    sub_22C4722FC(v20, v21);
    v22 = sub_22C36A908();
    sub_22C4722FC(v22, v23);
    v24 = sub_22C38BB74();
    sub_22C472340(v24, v25);

    v26 = sub_22C36A908();
    sub_22C472340(v26, v27);
    return (v17 & 1) != 0;
  }

  v41 = sub_22C36A908();
  sub_22C4722FC(v41, v42);
  sub_22C3890BC();
  sub_22C4722FC(v43, v44);
  v45 = sub_22C36A908();
  sub_22C4722FC(v45, v46);
  sub_22C3890BC();
  sub_22C472340(v47, v48);

  sub_22C37335C();
LABEL_28:
  sub_22C3890BC();
  sub_22C472340(v49, v50);
  return 1;
}

uint64_t sub_22C5A6478(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x800000022C932820 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C90B4FC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C5A6588(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 0xD000000000000011;
}

uint64_t sub_22C5A65D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5A6478(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5A6600(uint64_t a1)
{
  v2 = sub_22C5AB55C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5A663C(uint64_t a1)
{
  v2 = sub_22C5AB55C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContextRule.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22C3A5908(&qword_27D9BE8F0, &qword_22C91E3A0);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C3717BC();
  sub_22C3766E0(a1, a1[3]);
  sub_22C5AB55C();
  sub_22C37239C();
  sub_22C90B6CC();
  sub_22C37A15C();
  sub_22C90B3CC();
  if (!v2)
  {
    v6 = type metadata accessor for ContextRule(0);
    sub_22C90355C();
    sub_22C5AD5C4();
    sub_22C5ABC90(v7, v8, MEMORY[0x277D1EB60]);
    sub_22C386A34();
    sub_22C37A15C();
    sub_22C90B41C();
    v9 = (v3 + *(v6 + 24));
    v13 = *v9;
    v14 = v9[1];
    sub_22C4722FC(*v9, v14);
    sub_22C5AB5B0();
    sub_22C37A15C();
    sub_22C90B3AC();
    sub_22C472340(v13, v14);
  }

  v10 = sub_22C371530();
  return v11(v10);
}

uint64_t ContextRule.hash(into:)()
{
  sub_22C5AD7FC();
  sub_22C909FFC();
  v1 = type metadata accessor for ContextRule(0);
  sub_22C90355C();
  sub_22C5AD5C4();
  sub_22C5ABC90(v2, v3, MEMORY[0x277D1EB68]);
  sub_22C36D39C();
  sub_22C909F8C();
  if (!*(v0 + *(v1 + 24) + 8))
  {
    return sub_22C90B64C();
  }

  sub_22C90B64C();
  sub_22C909FFC();
  sub_22C36D39C();

  return sub_22C909FFC();
}

uint64_t ContextRule.hashValue.getter()
{
  sub_22C37B5C8();
  ContextRule.hash(into:)();
  return sub_22C90B66C();
}

void ContextRule.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22C370030();
  v25 = v24;
  v45 = v26;
  v47 = sub_22C90355C();
  sub_22C369824();
  v46 = v27;
  MEMORY[0x28223BE20](v28);
  sub_22C369838();
  v31 = v30 - v29;
  sub_22C3A5908(&qword_27D9BE908, &qword_22C91E3A8);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v32);
  v33 = type metadata accessor for ContextRule(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v34);
  sub_22C369838();
  v37 = (v36 - v35);
  sub_22C3766E0(v25, v25[3]);
  sub_22C5AB55C();
  sub_22C90B6BC();
  if (v23)
  {
    sub_22C36FF94(v25);
  }

  else
  {
    *v37 = sub_22C90B2DC();
    v37[1] = v38;
    LOBYTE(v48) = 1;
    sub_22C5AD5C4();
    sub_22C5ABC90(v39, v40, MEMORY[0x277D1EB80]);
    sub_22C90B32C();
    (*(v46 + 32))(v37 + *(v33 + 20), v31, v47);
    sub_22C5AB604();
    sub_22C90B2BC();
    v41 = sub_22C5AD618();
    v42(v41);
    v43 = (v37 + *(v33 + 24));
    *v43 = v48;
    v43[1] = v49;
    sub_22C5AB658(v37, v45);
    v44 = sub_22C386234();
    sub_22C5AB6BC(v44);
  }

  sub_22C36FB20();
}

uint64_t sub_22C5A6D1C(uint64_t a1)
{
  sub_22C90B62C();
  ContextRule.hash(into:)();
  return sub_22C90B66C();
}

IntelligenceFlowPlannerRuntime::ContextRuleAppEntityCriteria __swiftcall ContextRuleAppEntityCriteria.init(bundleId:typeName:)(Swift::String bundleId, Swift::String typeName)
{
  *v2 = bundleId;
  v2[1] = typeName;
  result.typeName = typeName;
  result.bundleId = bundleId;
  return result;
}

uint64_t ContextRuleAppEntityCriteria.init(builder:)@<X0>(void *a1@<X8>)
{
  v1 = sub_22C36D8D4(a1);
  v1[2] = 0;
  v1[3] = v2;
  return v3();
}

uint64_t static ContextRuleAppEntityCriteria.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_22C3707D8(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (v8 || (v9 = sub_22C90B4FC(), result = 0, (v9 & 1) != 0))
  {
    if (v4 == v6 && v5 == v7)
    {
      return 1;
    }

    else
    {
      sub_22C36BA00();

      return sub_22C90B4FC();
    }
  }

  return result;
}

uint64_t sub_22C5A6E5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E65707974 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C5A6F2C(char a1)
{
  if (a1)
  {
    return 0x656D614E65707974;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_22C5A6F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5A6E5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5A6F8C(uint64_t a1)
{
  v2 = sub_22C5AB718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5A6FC8(uint64_t a1)
{
  v2 = sub_22C5AB718();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContextRuleAppEntityCriteria.encode(to:)()
{
  sub_22C370030();
  v2 = v1;
  sub_22C3A5908(&qword_27D9BE920, &qword_22C91E3B0);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C3717BC();
  sub_22C3766E0(v2, v2[3]);
  sub_22C5AB718();
  sub_22C37239C();
  sub_22C90B6CC();
  sub_22C5AD6B4();
  sub_22C37A15C();
  sub_22C90B3CC();
  if (!v0)
  {
    sub_22C3890C8();
    sub_22C37A15C();
    sub_22C90B3CC();
  }

  v4 = sub_22C371530();
  v5(v4);
  sub_22C3816B8();
  sub_22C36FB20();
}

uint64_t ContextRuleAppEntityCriteria.hash(into:)()
{
  sub_22C5AD7FC();
  sub_22C909FFC();

  return sub_22C909FFC();
}

uint64_t ContextRuleAppEntityCriteria.hashValue.getter()
{
  v0 = sub_22C37B5C8();
  sub_22C36ED3C(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_22C909FFC();
  sub_22C909FFC();
  return sub_22C90B66C();
}

void ContextRuleAppEntityCriteria.init(from:)()
{
  sub_22C370030();
  sub_22C5AD698();
  v5 = v4;
  v6 = sub_22C3A5908(&qword_27D9BE930, &qword_22C91E3B8);
  sub_22C369824();
  v8 = v7;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  sub_22C36A040();
  v12 = sub_22C5AB718();
  sub_22C388798(&type metadata for ContextRuleAppEntityCriteria.CodingKeys, v13, v12);
  if (v1)
  {
    sub_22C36FF94(v0);
  }

  else
  {
    sub_22C3831C8();
    sub_22C90B2DC();
    sub_22C386584();
    sub_22C3890C8();
    sub_22C37F880();
    v14 = sub_22C90B2DC();
    v16 = v15;
    v17 = *(v8 + 8);
    v19 = v14;
    v17(v11, v6);
    *v5 = v3;
    v5[1] = v2;
    v5[2] = v19;
    v5[3] = v16;

    sub_22C386234();
  }

  sub_22C37B304();
  sub_22C36FB20();
}

uint64_t sub_22C5A7398(uint64_t a1)
{
  sub_22C90B62C();
  ContextRuleAppEntityCriteria.hash(into:)();
  return sub_22C90B66C();
}

void __swiftcall DynamicEnumerationEntityRule.init(id:dynamicEnumerationEntityIdentifier:bundleId:)(IntelligenceFlowPlannerRuntime::DynamicEnumerationEntityRule *__return_ptr retstr, Swift::String id, Swift::String dynamicEnumerationEntityIdentifier, Swift::String bundleId)
{
  retstr->id = id;
  retstr->dynamicEnumerationEntityIdentifier = dynamicEnumerationEntityIdentifier;
  retstr->bundleId = bundleId;
}

uint64_t DynamicEnumerationEntityRule.init(builder:)@<X0>(void *a1@<X8>)
{
  v1 = sub_22C36D8D4(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = 0;
  v1[5] = v2;
  return v3();
}

uint64_t static DynamicEnumerationEntityRule.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_22C3707D8(a1);
  v4 = v3[2];
  v6 = v3[3];
  v5 = v3[4];
  v7 = v3[5];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v1 == *v2 && v3[1] == v2[1];
  if (!v12 && (sub_22C90B4FC() & 1) == 0)
  {
    return 0;
  }

  v13 = v4 == v8 && v6 == v9;
  if (!v13 && (sub_22C90B4FC() & 1) == 0)
  {
    return 0;
  }

  if (v5 == v10 && v7 == v11)
  {
    return 1;
  }

  sub_22C36BA00();

  return sub_22C90B4FC();
}

uint64_t sub_22C5A758C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000022 && 0x800000022C932840 == a2;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C90B4FC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C5A769C(unsigned __int8 a1)
{
  sub_22C37B5C8();
  MEMORY[0x2318B8B10](a1);
  return sub_22C90B66C();
}

uint64_t sub_22C5A76DC(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0xD000000000000022;
  }

  return 0x6449656C646E7562;
}

uint64_t sub_22C5A772C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_22C90B62C();
  a4(v8, v6);
  return sub_22C90B66C();
}

uint64_t sub_22C5A7780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5A758C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5A77A8(uint64_t a1)
{
  v2 = sub_22C5AB76C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5A77E4(uint64_t a1)
{
  v2 = sub_22C5AB76C();

  return MEMORY[0x2821FE720](a1, v2);
}

void DynamicEnumerationEntityRule.encode(to:)()
{
  sub_22C370030();
  v2 = v1;
  sub_22C3A5908(&qword_27D9BE938, &qword_22C91E3C0);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C3717BC();
  sub_22C387284(v2);
  sub_22C5AB76C();
  sub_22C37239C();
  sub_22C372390();
  sub_22C90B6CC();
  sub_22C5AD6B4();
  sub_22C90B3CC();
  if (!v0)
  {
    sub_22C3890C8();
    sub_22C37A15C();
    sub_22C90B3CC();
    sub_22C37A15C();
    sub_22C90B3CC();
  }

  v4 = sub_22C37B5F4();
  v5(v4);
  sub_22C3816B8();
  sub_22C36FB20();
}

uint64_t DynamicEnumerationEntityRule.hash(into:)()
{
  sub_22C5AD7FC();
  sub_22C909FFC();
  sub_22C909FFC();
  sub_22C36D39C();

  return sub_22C909FFC();
}

uint64_t DynamicEnumerationEntityRule.hashValue.getter()
{
  v0 = sub_22C37B5C8();
  sub_22C36ED3C(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_22C909FFC();
  sub_22C909FFC();
  sub_22C909FFC();
  return sub_22C90B66C();
}

void DynamicEnumerationEntityRule.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C370030();
  sub_22C5AD698();
  v27 = v26;
  v28 = sub_22C3A5908(&qword_27D9BE948, &qword_22C91E3C8);
  sub_22C369824();
  v30 = v29;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v31);
  v33 = &v45 - v32;
  sub_22C36A040();
  v34 = sub_22C5AB76C();
  sub_22C388798(&type metadata for DynamicEnumerationEntityRule.CodingKeys, v35, v34);
  if (v25)
  {
    sub_22C36FF94(v24);
  }

  else
  {
    sub_22C37F880();
    v36 = sub_22C90B2DC();
    v48 = v37;
    sub_22C3890C8();
    sub_22C37F880();
    v46 = sub_22C90B2DC();
    v47 = v38;
    v39 = sub_22C90B2DC();
    v41 = v40;
    v42 = v39;
    (*(v30 + 8))(v33, v28);
    v44 = v47;
    v43 = v48;
    *v27 = v36;
    v27[1] = v43;
    v27[2] = v46;
    v27[3] = v44;
    v27[4] = v42;
    v27[5] = v41;

    sub_22C386234();
  }

  sub_22C37B304();
  sub_22C36FB20();
}

uint64_t sub_22C5A7C94(uint64_t a1)
{
  sub_22C90B62C();
  DynamicEnumerationEntityRule.hash(into:)();
  return sub_22C90B66C();
}

IntelligenceFlowPlannerRuntime::EventResultOutputEnum_optional __swiftcall EventResultOutputEnum.init(rawValue:)(Swift::String rawValue)
{
  sub_22C381320();
  sub_22C90B21C();
  sub_22C5AD7D8();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_22C5A7DEC(void *a1@<X8>)
{
  EventResultOutputEnum.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

IntelligenceFlowPlannerRuntime::EventMatchOption_optional __swiftcall EventMatchOption.init(rawValue:)(Swift::String rawValue)
{
  sub_22C381320();
  sub_22C90B21C();
  sub_22C5AD7D8();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_22C5A7F90(void *a1@<X8>)
{
  EventMatchOption.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t PlanValue.programStatements.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t PlanValue.init(builder:)@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_22C5AD64C(a1);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + 16) = MEMORY[0x277D84F90];
  return v3();
}

uint64_t sub_22C5A8128(uint64_t a1)
{
  v1 = sub_22C90B21C();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C5A81A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C5A8128(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22C5A81D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C39B4E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22C5A8204@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C5A8128(a1);
  *a2 = result;
  return result;
}

uint64_t sub_22C5A822C(uint64_t a1)
{
  v2 = sub_22C5AB7C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5A8268(uint64_t a1)
{
  v2 = sub_22C5AB7C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void PlanValue.encode(to:)()
{
  sub_22C370030();
  v2 = v1;
  sub_22C3A5908(&qword_27D9BE950, &unk_22C91E3D0);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C3717BC();
  sub_22C3766E0(v2, v2[3]);
  sub_22C5AB7C0();
  sub_22C37239C();
  sub_22C90B6CC();
  sub_22C5AD6B4();
  sub_22C90B37C();
  if (!v0)
  {
    sub_22C3890C8();

    sub_22C3A5908(&qword_27D9BAC38, &qword_22C9190B0);
    sub_22C5AB814();
    sub_22C386A34();
    sub_22C37A15C();
    sub_22C90B41C();
  }

  v4 = sub_22C371530();
  v5(v4);
  sub_22C3816B8();
  sub_22C36FB20();
}

void PlanValue.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (!*(v1 + 8))
  {
    sub_22C5AD860();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_22C5AD860();
    return;
  }

  sub_22C5AD848();
  sub_22C909FFC();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_22C5AD848();
  v3 = sub_22C371530();

  sub_22C4716F0(v3, v4);
}

uint64_t PlanValue.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_22C37B5C8();
  sub_22C90B64C();
  if (v1)
  {
    sub_22C909FFC();
  }

  if (v2)
  {
    v3 = sub_22C90B64C();
    v11 = sub_22C36ED3C(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15);
    sub_22C4716F0(v11, v12);
  }

  else
  {
    sub_22C90B64C();
  }

  return sub_22C90B66C();
}

void PlanValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C370030();
  sub_22C5AD698();
  v27 = v26;
  sub_22C3A5908(&qword_27D9BE968, &qword_22C91E3E0);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v28);
  sub_22C36A040();
  v29 = sub_22C5AB7C0();
  sub_22C388798(&type metadata for PlanValue.CodingKeys, v30, v29);
  if (v23)
  {
    sub_22C36FF94(v22);
  }

  else
  {
    sub_22C3831C8();
    sub_22C90B26C();
    sub_22C386584();
    sub_22C3A5908(&qword_27D9BAC38, &qword_22C9190B0);
    sub_22C3890C8();
    sub_22C5AB8C8();
    sub_22C5AD798();
    sub_22C37F880();
    sub_22C90B2BC();
    v31 = sub_22C36A754();
    v32(v31);
    *v27 = v25;
    v27[1] = v24;
    v27[2] = v33;

    sub_22C386234();
  }

  sub_22C37B304();
  sub_22C36FB20();
}

uint64_t sub_22C5A86F8(uint64_t a1)
{
  v2 = *(v1 + 2);
  v5 = *v1;
  v6 = v2;
  sub_22C90B62C();
  PlanValue.hash(into:)(v4);
  return sub_22C90B66C();
}

uint64_t PlanTool.toolIds.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PlanTool.excludeToolIds.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t PlanTool.init(toolIds:excludeToolIds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t PlanTool.init(builder:)@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_22C5AD64C(a1);
  *v1 = MEMORY[0x277D84F90];
  v1[1] = 0;
  return v2();
}

uint64_t static PlanTool.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_22C3707D8(a1);
  v3 = *(v2 + 8);
  v5 = *v4;
  v7 = *(v6 + 8);
  if (v1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_22C46CDD8();
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v3)
  {
    if (v7)
    {
      sub_22C36BBCC();
      sub_22C46CDD8();
      if (v9)
      {
        return 1;
      }
    }
  }

  else if (!v7)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_22C5A8890(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7364496C6F6F74 && a2 == 0xE700000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x546564756C637865 && a2 == 0xEE007364496C6F6FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C5A8960(char a1)
{
  if (a1)
  {
    return 0x546564756C637865;
  }

  else
  {
    return 0x7364496C6F6F74;
  }
}

uint64_t sub_22C5A89A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_22C90B62C();
  a4(v8, v6);
  return sub_22C90B66C();
}

uint64_t sub_22C5A89F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5A8890(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5A8A20(uint64_t a1)
{
  v2 = sub_22C5AB97C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5A8A5C(uint64_t a1)
{
  v2 = sub_22C5AB97C();

  return MEMORY[0x2821FE720](a1, v2);
}

void PlanTool.encode(to:)()
{
  sub_22C370030();
  v1 = v0;
  sub_22C3A5908(&qword_27D9BE980, &qword_22C91E3E8);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v2);
  sub_22C3717BC();
  sub_22C387284(v1);
  v3 = sub_22C5AB97C();

  sub_22C37239C();
  sub_22C372390();
  sub_22C90B6CC();
  sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C379968(&qword_27D9BE7C0, MEMORY[0x277D837D8]);
  sub_22C37A15C();
  sub_22C90B3AC();

  if (!v3)
  {
    sub_22C37A15C();
    sub_22C90B3AC();
  }

  v4 = sub_22C371530();
  v5(v4);
  sub_22C3816B8();
  sub_22C36FB20();
}

void PlanTool.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  if (!*v1)
  {
    sub_22C5AD860();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_22C5AD860();
    return;
  }

  sub_22C5AD848();
  sub_22C4710DC();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_22C5AD848();
  sub_22C371530();

  sub_22C4710DC();
}

uint64_t PlanTool.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_22C37B5C8();
  sub_22C90B64C();
  if (v2)
  {
    sub_22C4710DC();
  }

  if (v1)
  {
    v3 = sub_22C90B64C();
    sub_22C36ED3C(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
    sub_22C4710DC();
  }

  else
  {
    sub_22C90B64C();
  }

  return sub_22C90B66C();
}

void PlanTool.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C370030();
  sub_22C5AD698();
  v13 = v12;
  v14 = sub_22C3A5908(&qword_27D9BE990, &unk_22C91E3F0);
  sub_22C369824();
  v16 = v15;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - v18;
  sub_22C36A040();
  v20 = sub_22C5AB97C();
  sub_22C388798(&type metadata for PlanTool.CodingKeys, v21, v20);
  if (v11)
  {
    sub_22C36FF94(v10);
  }

  else
  {
    v23 = v13;
    sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    v24 = 0;
    sub_22C5AD628(&qword_28142F9E8, MEMORY[0x277D83808]);
    sub_22C37B084();
    sub_22C37F880();
    sub_22C90B2BC();
    v24 = 1;
    sub_22C37B084();
    sub_22C37F880();
    sub_22C90B2BC();
    (*(v16 + 8))(v19, v14);
    v22 = v23;
    *v23 = a10;
    v22[1] = a10;

    sub_22C386234();
  }

  sub_22C37B304();
  sub_22C36FB20();
}

uint64_t sub_22C5A8F20(uint64_t a1)
{
  v4 = *v1;
  sub_22C90B62C();
  PlanTool.hash(into:)(v3);
  return sub_22C90B66C();
}

void sub_22C5A8F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v21;
  a20 = v22;
  v94 = v20;
  v24 = v23;
  v26 = v25;
  v92 = v27;
  v28 = sub_22C90A17C();
  MEMORY[0x28223BE20](v28 - 8);
  sub_22C369838();
  v89 = v30 - v29;
  v31 = sub_22C9063DC();
  sub_22C369824();
  v95 = v32;
  MEMORY[0x28223BE20](v33);
  sub_22C369ABC();
  v36 = (v34 - v35);
  v38 = MEMORY[0x28223BE20](v37);
  v91 = &v88 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v88 - v40;
  v42 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  sub_22C903FBC();

  v43 = sub_22C9063CC();
  v44 = sub_22C90AACC();

  v45 = os_log_type_enabled(v43, v44);
  v93 = v26;
  v90 = v36;
  if (v45)
  {
    v46 = sub_22C36FB44();
    v88 = v42;
    v47 = v46;
    v48 = swift_slowAlloc();
    a10 = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_22C36F9F4(v93, v24, &a10);
    _os_log_impl(&dword_22C366000, v43, v44, "Loading plan overrides json in %s", v47, 0xCu);
    sub_22C36FF94(v48);
    sub_22C36D69C();
    v49 = v31;
    v50 = v95;
    v51 = v88;
    sub_22C3699EC();

    v52 = *(v50 + 8);
    v53 = sub_22C37B9B0();
    v52(v53);
  }

  else
  {

    v52 = *(v95 + 8);
    (v52)(v41, v31);
    v49 = v31;
    v51 = v42;
  }

  v54 = v24;
  v55 = sub_22C90A0EC();
  v56 = [v51 fileExistsAtPath_];

  if (!v56 || (sub_22C90A43C() & 1) == 0)
  {
    v69 = v49;
    v70 = v91;
    sub_22C903FBC();

    v71 = sub_22C9063CC();
    v72 = sub_22C90AADC();

    if (os_log_type_enabled(v71, v72))
    {
      sub_22C36FB44();
      v73 = v51;
      v74 = v52;
      v75 = sub_22C375EEC();
      a10 = v75;
      *v56 = 136315138;
      *(v56 + 4) = sub_22C36F9F4(v93, v54, &a10);
      _os_log_impl(&dword_22C366000, v71, v72, "Plan override json file does not exist: %s", v56, 0xCu);
      sub_22C36FF94(v75);
      sub_22C3699EC();
      sub_22C36D69C();

      sub_22C5AD7E4();
      v74(v70, v69);
    }

    else
    {

      sub_22C5AD7E4();
      (v52)(v70, v69);
    }

    goto LABEL_16;
  }

  v57 = v51;
  sub_22C90A15C();
  v58 = v94;
  v59 = sub_22C90A0CC();
  if (v58)
  {
    v67 = v52;
    v94 = 0;
    v68 = v90;
    sub_22C903FBC();

    v76 = v58;
    v77 = sub_22C9063CC();
    v78 = sub_22C90AADC();

    if (os_log_type_enabled(v77, v78))
    {
      v80 = swift_slowAlloc();
      v91 = v49;
      v81 = v80;
      swift_slowAlloc();
      v82 = sub_22C375EEC();
      a10 = v82;
      *v81 = 136315394;
      *(v81 + 4) = sub_22C36F9F4(v93, v24, &a10);
      *(v81 + 12) = 2112;
      v83 = v58;
      v84 = _swift_stdlib_bridgeErrorToNSError();
      *(v81 + 14) = v84;
      *v68 = v84;
      _os_log_impl(&dword_22C366000, v77, v78, "Error parsing Plan Override JSON file at %s: %@", v81, 0x16u);
      sub_22C5AB9D0(v68);
      sub_22C36D69C();
      sub_22C36FF94(v82);
      sub_22C3699EC();
      sub_22C3699EC();

      sub_22C5AD7E4();
      v85 = v90;
      v86 = v91;
    }

    else
    {

      sub_22C5AD7E4();
      v85 = v68;
      v86 = v49;
    }

    v67(v85, v86);
LABEL_16:
    v87 = 0;
    goto LABEL_17;
  }

  sub_22C5A9928(v59, v60, v61, v62, v63, v64, v65, v66, v88, v89);
  v94 = 0;

  v87 = a10;
LABEL_17:
  *v92 = v87;
  sub_22C36FB20();
}

void sub_22C5A9504()
{
  sub_22C370030();
  v57 = v2;
  v58 = v0;
  v4 = v3;
  v6 = v5;
  v63 = *MEMORY[0x277D85DE8];
  v7 = sub_22C9063DC();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C369ABC();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v55 = &v52 - v15;
  v16 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v59 = v6;
  v60 = MEMORY[0x277D84F90];
  v17 = sub_22C90A0EC();
  v61 = 0;
  v18 = [v16 contentsOfDirectoryAtPath:v17 error:&v61];

  v19 = v61;
  if (v18)
  {
    v56 = v16;
    v52 = v13;
    v53 = v9;
    v54 = v7;
    v20 = sub_22C90A5EC();
    v21 = v19;

    v22 = 0;
    v23 = *(v20 + 16);
    v24 = (v20 + 40);
    while (v23 != v22)
    {
      if (v22 >= *(v20 + 16))
      {
        __break(1u);
      }

      v25 = *(v24 - 1);
      v26 = *v24;
      v61 = v59;
      v62 = v4;

      MEMORY[0x2318B7850](47, 0xE100000000000000);
      MEMORY[0x2318B7850](v25, v26);

      sub_22C5A8F84(v61, v62, v27, v28, v29, v30, v31, v32, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
      if (v1)
      {

        v37 = v52;
        sub_22C903FBC();

        v38 = sub_22C9063CC();
        v39 = sub_22C90AADC();

        if (os_log_type_enabled(v38, v39))
        {
          sub_22C36FB44();
          v40 = sub_22C375EEC();
          v61 = v40;
          *(v20 + 4) = sub_22C5AD828(4.8149e-34);
          sub_22C3729C4(&dword_22C366000, v41, v42, "Error parsing Plan Override JSON files in %s");
          sub_22C36FF94(v40);
          sub_22C3699EC();
          sub_22C36D69C();
        }

        (v53[1])(v37, v54);
        v35 = v57;
        goto LABEL_15;
      }

      if (v61)
      {
        sub_22C3CE380(v61);
      }

      v24 += 2;
      ++v22;
    }

    v36 = v60;
    if (*(v60 + 16))
    {

      *v57 = v36;
    }

    else
    {

      v43 = v55;
      sub_22C903FBC();

      v44 = sub_22C9063CC();
      v45 = sub_22C90AACC();

      v46 = os_log_type_enabled(v44, v45);
      v48 = v56;
      v47 = v57;
      if (v46)
      {
        sub_22C36FB44();
        v49 = sub_22C375EEC();
        v61 = v49;
        *(v20 + 4) = sub_22C5AD828(4.8149e-34);
        sub_22C3729C4(&dword_22C366000, v50, v51, "No Plan Overrides found at path: %s");
        sub_22C36FF94(v49);
        sub_22C3699EC();
        sub_22C36D69C();
      }

      (v53[1])(v43, v54);
      *v47 = 0;
    }
  }

  else
  {
    v33 = v61;
    v34 = sub_22C90030C();

    swift_willThrow();
    v35 = v57;
LABEL_15:
    *v35 = 0;
  }

  sub_22C37B304();
  sub_22C36FB20();
}

void sub_22C5A9928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22C370030();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v43 = v16;
  v42 = sub_22C9063DC();
  sub_22C369824();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22C369ABC();
  v22 = (v20 - v21);
  MEMORY[0x28223BE20](v23);
  v25 = &v41 - v24;
  sub_22C8FFECC();
  swift_allocObject();
  v44 = sub_22C8FFEBC();
  sub_22C903FBC();
  v26 = sub_22C9063CC();
  v27 = sub_22C90AACC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_22C366000, v26, v27, "Decoding Plan Override JSON", v28, 2u);
    v11 = v10;
    sub_22C3699EC();
  }

  v29 = *(v18 + 8);
  v30 = v25;
  v31 = v42;
  v29(v30, v42);

  sub_22C766760(v15, v13);
  sub_22C386584();
  sub_22C5AD524();
  sub_22C8FFEAC();
  if (v11)
  {
    sub_22C38B120(v15, v13);
    sub_22C903FBC();
    v32 = v11;
    v33 = sub_22C9063CC();
    v34 = sub_22C90AADC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = v29;
      v36 = sub_22C36FB44();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = v11;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&dword_22C366000, v33, v34, "Error parsing Plan Override JSON: %@", v36, 0xCu);
      sub_22C5AB9D0(v37);
      sub_22C3699EC();
      v29 = v35;
      sub_22C3699EC();
    }

    else
    {
    }

    v29(v22, v31);
    a10 = 0;
  }

  else
  {

    sub_22C38B120(v15, v13);
  }

  *v43 = a10;
  sub_22C36FB20();
}

uint64_t sub_22C5A9C5C()
{
  v0 = sub_22C3A5908(&qword_27D9BE998, &qword_22C91E400);
  sub_22C3F0160(v0, qword_27D9BE6C8);
  v1 = sub_22C36BA00();
  sub_22C37AA60(v1, v2);
  swift_getKeyPath();

  sub_22C90024C();
}

uint64_t static Statement.creationTimestampDesc.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D9BA6F0 != -1)
  {
    swift_once();
  }

  v2 = sub_22C3A5908(&qword_27D9BE998, &qword_22C91E400);
  v3 = sub_22C37AA60(v2, qword_27D9BE6C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

BOOL sub_22C5A9D9C()
{
  v1 = *(v0 + 176);
  if (!v1)
  {
    return 1;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
LABEL_4:
  v5 = v1 + 40 + 16 * v3;
  while (v2 != v3)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_18;
    }

    ++v3;
    v6 = v5 + 16;

    v7 = sub_22C90B21C();

    v5 = v6;
    if (v7 < 9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C593940(0, *(v4 + 16) + 1, 1, v4);
        v4 = v10;
      }

      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_22C593940(v8 > 1, v9 + 1, 1, v4);
        v4 = v11;
      }

      *(v4 + 16) = v9 + 1;
      *(v4 + v9 + 32) = v7;
      goto LABEL_4;
    }
  }

  if (qword_27D9BA6D8 == -1)
  {
    goto LABEL_14;
  }

LABEL_18:
  swift_once();
LABEL_14:
  sub_22C8B5340();
  sub_22C3743B4();
  return (&unk_283FAF570 & 1) != 0;
}

void sub_22C5A9F18()
{
  sub_22C370030();
  v2 = v1;
  v3 = sub_22C9063DC();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369ABC();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  v13 = sub_22C908EAC();
  sub_22C369824();
  v65 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22C369ABC();
  v63 = v16 - v17;
  v19 = MEMORY[0x28223BE20](v18);
  v68 = &v54 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v54 - v21;
  memcpy(v70, v0, 0xD0uLL);
  if (v70[16] == 1 || (v57 = v5, v64 = v70[16], v23 = v70[17], sub_22C908FFC(), v24 = sub_22C908FEC(), v1))
  {
LABEL_30:
    sub_22C37B304();
    sub_22C36FB20();
    return;
  }

  v58 = v23;
  v56 = v3;
  v66 = v24;
  v25 = v64;
  if (!v64)
  {
LABEL_15:
    v34 = v58;
    if (v58)
    {
      v35 = v12;
      v68 = v13;
      v36 = 0;
      v37 = *(v58 + 16);
      v38 = (v58 + 40);
      while (v37 != v36)
      {
        if (v36 >= *(v34 + 16))
        {
          goto LABEL_32;
        }

        v39 = *(v38 - 1);
        v40 = *v38;

        sub_22C90900C();
        if (!v2)
        {

          v49 = v35;
          sub_22C903FBC();

          sub_22C472384(v70, v69);
          v50 = sub_22C9063CC();
          v51 = sub_22C90AACC();

          sub_22C4723E0(v70);
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v69[0] = swift_slowAlloc();
            *v52 = 136315394;
            v53 = sub_22C36F9F4(v39, v40, v69);

            *(v52 + 4) = v53;
            *(v52 + 12) = 2080;
            *(v52 + 14) = sub_22C36F9F4(v70[0], v70[1], v69);
            _os_log_impl(&dword_22C366000, v50, v51, "PlanOverridesGraphService: Found excluded override plan tool id: %s. Skipping override: %s", v52, 0x16u);
            swift_arrayDestroy();
            sub_22C3699EC();
            sub_22C3699EC();
          }

          else
          {
          }

          (*(v57 + 8))(v49, v56);

          (*(v65 + 8))(v63, v68);
          goto LABEL_30;
        }

        ++v36;

        v2 = 0;
        v38 += 2;
        v34 = v58;
      }
    }

    goto LABEL_30;
  }

  v54 = v9;
  v55 = v12;
  v26 = 0;
  v27 = *(v64 + 16);
  v61 = (v65 + 16);
  v62 = v27;
  v59 = v65 + 32;
  v60 = v65 + 8;
  v28 = v64 + 40;
  v71 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v62 == v26)
    {
      v12 = v55;
      goto LABEL_15;
    }

    if (v26 >= *(v25 + 16))
    {
      break;
    }

    sub_22C37B5F4();
    sub_22C90900C();
    v67 = v2;
    if (v2)
    {

      v41 = v54;
      sub_22C903FBC();

      sub_22C472384(v70, v69);
      v42 = sub_22C9063CC();
      v43 = sub_22C90AACC();

      sub_22C4723E0(v70);
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v69[0] = swift_slowAlloc();
        *v44 = 136315394;
        v45 = sub_22C37B5F4();
        v48 = sub_22C36F9F4(v45, v46, v47);

        *(v44 + 4) = v48;
        *(v44 + 12) = 2080;
        *(v44 + 14) = sub_22C36F9F4(v70[0], v70[1], v69);
        _os_log_impl(&dword_22C366000, v42, v43, "PlanOverridesGraphService: Failed to find override plan tool id: %s. Skipping override: %s", v44, 0x16u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C3699EC();
      }

      else
      {
      }

      (*(v57 + 8))(v41, v56);

      goto LABEL_30;
    }

    (*v61)(v68, v22, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C591C4C();
      v71 = v32;
    }

    v29 = v67;
    v30 = *(v71 + 16);
    if (v30 >= *(v71 + 24) >> 1)
    {
      sub_22C591C4C();
      v71 = v33;
    }

    v31 = v65;
    (*(v65 + 8))(v22, v13);
    *(v71 + 16) = v30 + 1;
    (*(v31 + 32))(v71 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v30, v68, v13);
    v28 += 16;
    ++v26;
    v2 = v29;
    v25 = v64;
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

unint64_t sub_22C5AA5DC()
{
  result = qword_27D9BE750;
  if (!qword_27D9BE750)
  {
    sub_22C3AC1A0(&qword_27D9BE730, &qword_22C91E320);
    sub_22C5AA660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE750);
  }

  return result;
}

unint64_t sub_22C5AA660()
{
  result = qword_27D9BE758;
  if (!qword_27D9BE758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE758);
  }

  return result;
}

uint64_t sub_22C5AA6B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22C5AA6F8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_22C5AA740(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_22C5AA784()
{
  result = qword_27D9BE768;
  if (!qword_27D9BE768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE768);
  }

  return result;
}

unint64_t sub_22C5AA7D8()
{
  result = qword_27D9BE770;
  if (!qword_27D9BE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE770);
  }

  return result;
}

unint64_t sub_22C5AA82C()
{
  result = qword_27D9BE778;
  if (!qword_27D9BE778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE778);
  }

  return result;
}

unint64_t sub_22C5AA880()
{
  result = qword_27D9BE788;
  if (!qword_27D9BE788)
  {
    sub_22C3AC1A0(&qword_27D9BE780, &qword_22C91E338);
    sub_22C5ABC90(&qword_27D9BE790, type metadata accessor for ContextRule, &protocol conformance descriptor for ContextRule);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE788);
  }

  return result;
}

uint64_t type metadata accessor for ContextRule(uint64_t a1)
{
  result = qword_27D9BEA08;
  if (!qword_27D9BEA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22C5AA980()
{
  result = qword_27D9BE7A0;
  if (!qword_27D9BE7A0)
  {
    sub_22C3AC1A0(&qword_27D9BE798, &unk_22C91E340);
    sub_22C5AAA04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE7A0);
  }

  return result;
}

unint64_t sub_22C5AAA04()
{
  result = qword_27D9BE7A8;
  if (!qword_27D9BE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE7A8);
  }

  return result;
}

unint64_t sub_22C5AAA58()
{
  result = qword_27D9BE7B0;
  if (!qword_27D9BE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE7B0);
  }

  return result;
}

unint64_t sub_22C5AAAAC()
{
  result = qword_27D9BE7B8;
  if (!qword_27D9BE7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE7B8);
  }

  return result;
}

unint64_t sub_22C5AAB00()
{
  result = qword_27D9BE7D0;
  if (!qword_27D9BE7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE7D0);
  }

  return result;
}

unint64_t sub_22C5AAB54()
{
  result = qword_27D9BE7D8;
  if (!qword_27D9BE7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE7D8);
  }

  return result;
}

unint64_t sub_22C5AABA8()
{
  result = qword_27D9BE7E0;
  if (!qword_27D9BE7E0)
  {
    sub_22C3AC1A0(&qword_27D9BE780, &qword_22C91E338);
    sub_22C5ABC90(&qword_27D9BE7E8, type metadata accessor for ContextRule, &protocol conformance descriptor for ContextRule);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE7E0);
  }

  return result;
}

unint64_t sub_22C5AAC5C()
{
  result = qword_27D9BE7F0;
  if (!qword_27D9BE7F0)
  {
    sub_22C3AC1A0(&qword_27D9BE798, &unk_22C91E340);
    sub_22C5AACE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE7F0);
  }

  return result;
}

unint64_t sub_22C5AACE0()
{
  result = qword_27D9BE7F8;
  if (!qword_27D9BE7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE7F8);
  }

  return result;
}

unint64_t sub_22C5AAD34()
{
  result = qword_27D9BE800;
  if (!qword_27D9BE800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE800);
  }

  return result;
}

unint64_t sub_22C5AAD88()
{
  result = qword_27D9BE808;
  if (!qword_27D9BE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE808);
  }

  return result;
}

uint64_t sub_22C5AADDC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(&qword_27D9BB5D0, &unk_22C9112A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C5AAE48()
{
  result = qword_27D9BE818;
  if (!qword_27D9BE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE818);
  }

  return result;
}

unint64_t sub_22C5AAE9C()
{
  result = qword_27D9BE820;
  if (!qword_27D9BE820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE820);
  }

  return result;
}

unint64_t sub_22C5AAEF0()
{
  result = qword_27D9BE830;
  if (!qword_27D9BE830)
  {
    sub_22C3AC1A0(&qword_27D9BE828, &qword_22C91E360);
    sub_22C5AAF74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE830);
  }

  return result;
}

unint64_t sub_22C5AAF74()
{
  result = qword_27D9BE838;
  if (!qword_27D9BE838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE838);
  }

  return result;
}

unint64_t sub_22C5AAFC8()
{
  result = qword_27D9BE848;
  if (!qword_27D9BE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE848);
  }

  return result;
}

unint64_t sub_22C5AB01C()
{
  result = qword_27D9BE850;
  if (!qword_27D9BE850)
  {
    sub_22C3AC1A0(&qword_27D9BE828, &qword_22C91E360);
    sub_22C5AB0A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE850);
  }

  return result;
}

unint64_t sub_22C5AB0A0()
{
  result = qword_27D9BE858;
  if (!qword_27D9BE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE858);
  }

  return result;
}

unint64_t sub_22C5AB0F4()
{
  result = qword_27D9BE868;
  if (!qword_27D9BE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE868);
  }

  return result;
}

unint64_t sub_22C5AB148()
{
  result = qword_27D9BE878;
  if (!qword_27D9BE878)
  {
    sub_22C3AC1A0(&qword_27D9BE870, &qword_22C91E378);
    sub_22C5ABC90(&qword_27D9BE880, MEMORY[0x277D72D58], MEMORY[0x277D72D60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE878);
  }

  return result;
}

unint64_t sub_22C5AB1FC()
{
  result = qword_27D9BE890;
  if (!qword_27D9BE890)
  {
    sub_22C3AC1A0(&qword_27D9BE870, &qword_22C91E378);
    sub_22C5ABC90(&qword_27D9BE898, MEMORY[0x277D72D58], MEMORY[0x277D72D78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE890);
  }

  return result;
}

unint64_t sub_22C5AB2B0()
{
  result = qword_27D9BE8A8;
  if (!qword_27D9BE8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE8A8);
  }

  return result;
}

unint64_t sub_22C5AB304()
{
  result = qword_27D9BE8B8;
  if (!qword_27D9BE8B8)
  {
    sub_22C3AC1A0(&qword_27D9BE8B0, &qword_22C91E390);
    sub_22C5AB388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE8B8);
  }

  return result;
}

unint64_t sub_22C5AB388()
{
  result = qword_27D9BE8C0;
  if (!qword_27D9BE8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE8C0);
  }

  return result;
}

unint64_t sub_22C5AB3DC()
{
  result = qword_27D9BE8C8;
  if (!qword_27D9BE8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE8C8);
  }

  return result;
}

unint64_t sub_22C5AB430()
{
  result = qword_27D9BE8D8;
  if (!qword_27D9BE8D8)
  {
    sub_22C3AC1A0(&qword_27D9BE8B0, &qword_22C91E390);
    sub_22C5AB4B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE8D8);
  }

  return result;
}

unint64_t sub_22C5AB4B4()
{
  result = qword_27D9BE8E0;
  if (!qword_27D9BE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE8E0);
  }

  return result;
}

unint64_t sub_22C5AB508()
{
  result = qword_27D9BE8E8;
  if (!qword_27D9BE8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE8E8);
  }

  return result;
}

unint64_t sub_22C5AB55C()
{
  result = qword_27D9BE8F8;
  if (!qword_27D9BE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE8F8);
  }

  return result;
}

unint64_t sub_22C5AB5B0()
{
  result = qword_27D9BE900;
  if (!qword_27D9BE900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE900);
  }

  return result;
}

unint64_t sub_22C5AB604()
{
  result = qword_27D9BE918;
  if (!qword_27D9BE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE918);
  }

  return result;
}

uint64_t sub_22C5AB658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextRule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C5AB6BC(uint64_t a1)
{
  v2 = type metadata accessor for ContextRule(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C5AB718()
{
  result = qword_27D9BE928;
  if (!qword_27D9BE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE928);
  }

  return result;
}

unint64_t sub_22C5AB76C()
{
  result = qword_27D9BE940;
  if (!qword_27D9BE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE940);
  }

  return result;
}

unint64_t sub_22C5AB7C0()
{
  result = qword_27D9BE958;
  if (!qword_27D9BE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE958);
  }

  return result;
}

unint64_t sub_22C5AB814()
{
  result = qword_27D9BE960;
  if (!qword_27D9BE960)
  {
    sub_22C3AC1A0(&qword_27D9BAC38, &qword_22C9190B0);
    sub_22C5ABC90(&qword_27D9BDB88, MEMORY[0x277D1DF58], MEMORY[0x277D1DF60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE960);
  }

  return result;
}

unint64_t sub_22C5AB8C8()
{
  result = qword_27D9BE970;
  if (!qword_27D9BE970)
  {
    sub_22C3AC1A0(&qword_27D9BAC38, &qword_22C9190B0);
    sub_22C5ABC90(&qword_27D9BE978, MEMORY[0x277D1DF58], MEMORY[0x277D1DF78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE970);
  }

  return result;
}

unint64_t sub_22C5AB97C()
{
  result = qword_27D9BE988;
  if (!qword_27D9BE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE988);
  }

  return result;
}

uint64_t sub_22C5AB9D0(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB158, qword_22C910FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C5ABA3C()
{
  result = qword_27D9BE9A0;
  if (!qword_27D9BE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE9A0);
  }

  return result;
}

unint64_t sub_22C5ABA94()
{
  result = qword_27D9BE9A8;
  if (!qword_27D9BE9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE9A8);
  }

  return result;
}

unint64_t sub_22C5ABAEC()
{
  result = qword_27D9BE9B0;
  if (!qword_27D9BE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE9B0);
  }

  return result;
}

unint64_t sub_22C5ABB44()
{
  result = qword_27D9BE9B8;
  if (!qword_27D9BE9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE9B8);
  }

  return result;
}

unint64_t sub_22C5ABB9C()
{
  result = qword_27D9BE9C0;
  if (!qword_27D9BE9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE9C0);
  }

  return result;
}

unint64_t sub_22C5ABBF4()
{
  result = qword_27D9BE9C8;
  if (!qword_27D9BE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE9C8);
  }

  return result;
}

uint64_t sub_22C5ABC90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22C5ABCDC()
{
  result = qword_27D9BE9D8;
  if (!qword_27D9BE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE9D8);
  }

  return result;
}

unint64_t sub_22C5ABD34()
{
  result = qword_27D9BE9E0;
  if (!qword_27D9BE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE9E0);
  }

  return result;
}

unint64_t sub_22C5ABD8C()
{
  result = qword_27D9BE9E8;
  if (!qword_27D9BE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE9E8);
  }

  return result;
}

unint64_t sub_22C5ABDE4()
{
  result = qword_27D9BE9F0;
  if (!qword_27D9BE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE9F0);
  }

  return result;
}

unint64_t sub_22C5ABE3C()
{
  result = qword_27D9BE9F8;
  if (!qword_27D9BE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BE9F8);
  }

  return result;
}

unint64_t sub_22C5ABE94()
{
  result = qword_27D9BEA00;
  if (!qword_27D9BEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA00);
  }

  return result;
}

uint64_t sub_22C5ABF08(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22C5ABF20(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C5ABF4C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 208))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C5ABF8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C5AC040(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C5AC080(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22C5AC0F8(uint64_t a1)
{
  sub_22C90355C();
  if (v1 <= 0x3F)
  {
    sub_22C5AC18C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C5AC18C()
{
  if (!qword_27D9BEA18)
  {
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BEA18);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for EventResultOutputEnum(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}