uint64_t sub_23E8DC734(int a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x2822009F8](sub_23E8DC758, 0, 0);
}

uint64_t sub_23E8DC758()
{
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_23E900764();
  __swift_project_value_buffer(v3, qword_27E367168);
  sub_23E882260(0xD000000000000067, 0x800000023E9093F0, 0xD000000000000026, 0x800000023E9094A0);
  v4 = *(*__swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72)) + 40);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = sub_23E8FA998(v2, 1);
  os_unfair_lock_unlock(*(v4 + 16));
  if (v5)
  {
    v6 = [v5 attributes];
    if (v6)
    {
      v7 = v6;
      v8 = sub_23E9009B4();
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    swift_unknownObjectRelease();
    v12 = *(v0 + 8);

    return v12(v8);
  }

  else
  {
    sub_23E8A9420();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_23E8DC92C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23E889AD8;

  return sub_23E8DA610(v2, v3, v5, v4);
}

uint64_t sub_23E8DC9F0(uint64_t a1)
{
  v2 = type metadata accessor for RenderTransactionAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E8DCA4C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E8DCA94()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E888F34;

  return sub_23E8DA1F8(v2, v3, v4);
}

uint64_t sub_23E8DCB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E9006D4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_23E8DF634(&qword_27E35E708, MEMORY[0x277CC9610]);
    v21 = sub_23E900844();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23E8DCD90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F620, &qword_23E9050B0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v29 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v29 = *(v8 + 72);
    while (1)
    {
      sub_23E8891B4(v13, v10, &unk_27E35F620, &qword_23E9050B0);
      sub_23E8891B4(v14, v7, &unk_27E35F620, &qword_23E9050B0);
      if ((sub_23E9006B4() & 1) == 0 || *&v10[v4[9]] != *&v7[v4[9]] || *&v10[v4[10]] != *&v7[v4[10]])
      {
LABEL_43:
        sub_23E87E458(v7, &unk_27E35F620, &qword_23E9050B0);
        sub_23E87E458(v10, &unk_27E35F620, &qword_23E9050B0);
        return 0;
      }

      v15 = v4[11];
      v16 = &v10[v15];
      v17 = &v7[v15];
      v18 = v10[v15 + 4];
      v19 = v7[v15 + 4];
      if (v18)
      {
        if (!v19)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (*v16 != *v17)
        {
          LOBYTE(v19) = 1;
        }

        if (v19)
        {
          goto LABEL_43;
        }
      }

      if (*&v10[v4[12]] != *&v7[v4[12]])
      {
        goto LABEL_43;
      }

      v31 = v13;
      v20 = &v10[v4[13]];
      v21 = *v20;
      v22 = *(v20 + 1);
      v23 = v20[16];
      sub_23E87E458(v10, &unk_27E35F620, &qword_23E9050B0);
      v24 = &v7[v4[13]];
      v25 = *(v24 + 1);
      v32 = *v24;
      v30 = v25;
      v26 = v24[16];
      sub_23E87E458(v7, &unk_27E35F620, &qword_23E9050B0);
      if (!v23)
      {
        break;
      }

      if (v23 == 1)
      {
        if (v26 != 1)
        {
          return 0;
        }

        goto LABEL_20;
      }

      if (v21 > 1)
      {
        if (v21 ^ 2 | v22)
        {
          v28 = v31;
          if (v26 != 2)
          {
            return 0;
          }

          result = 0;
          if (v32 != 3)
          {
            return result;
          }
        }

        else
        {
          v28 = v31;
          if (v26 != 2)
          {
            return 0;
          }

          result = 0;
          if (v32 != 2)
          {
            return result;
          }
        }

        goto LABEL_39;
      }

      if (v21 | v22)
      {
        v28 = v31;
        if (v26 != 2)
        {
          return 0;
        }

        result = 0;
        if (v32 != 1)
        {
          return result;
        }

LABEL_39:
        if (v30)
        {
          return result;
        }

        goto LABEL_40;
      }

      result = 0;
      v28 = v31;
      if (v26 != 2 || v30 | v32)
      {
        return result;
      }

LABEL_40:
      v14 += v29;
      v13 = v28 + v29;
      result = 1;
      if (!--v11)
      {
        return result;
      }
    }

    if (v26)
    {
      return 0;
    }

LABEL_20:
    result = 0;
    if (*&v21 != *&v32)
    {
      return result;
    }

    if (*(&v21 + 1) != *(&v32 + 1))
    {
      return result;
    }

    if (*&v22 != *&v30)
    {
      return result;
    }

    v28 = v31;
    if (*(&v22 + 1) != *(&v30 + 1))
    {
      return result;
    }

    goto LABEL_40;
  }

  return 1;
}

uint64_t sub_23E8DD17C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F660, &unk_23E9069D0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v52 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_23E8891B4(v13, v10, &unk_27E35F660, &unk_23E9069D0);
      sub_23E8891B4(v14, v7, &unk_27E35F660, &unk_23E9069D0);
      if ((sub_23E9006B4() & 1) == 0 || *&v10[v4[9]] != *&v7[v4[9]] || *&v10[v4[10]] != *&v7[v4[10]])
      {
LABEL_83:
        sub_23E87E458(v7, &unk_27E35F660, &unk_23E9069D0);
        sub_23E87E458(v10, &unk_27E35F660, &unk_23E9069D0);
        return 0;
      }

      v16 = v4[11];
      v17 = &v10[v16];
      v18 = &v7[v16];
      if (v17[24])
      {
        if ((v18[24] & 1) == 0)
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v18[24])
        {
          goto LABEL_83;
        }

        v19 = *v17;
        v20 = *(v17 + 1);
        v21 = *(v17 + 2);
        v22 = *(v18 + 1);
        v23 = *(v18 + 2);
        v24 = *&v19 == COERCE_FLOAT(*v18) && *(&v19 + 1) == COERCE_FLOAT(HIDWORD(*v18));
        v25 = v24 && *&v20 == *&v22;
        v26 = v25 && *(&v20 + 1) == *(&v22 + 1);
        v27 = v26 && *&v21 == *&v23;
        if (!v27 || *(&v21 + 1) != *(&v23 + 1))
        {
          goto LABEL_83;
        }
      }

      v29 = v4[12];
      v30 = &v10[v29];
      v31 = &v7[v29];
      if ((vminv_u16(vmovn_s32(vceqq_f32(*v30, *v31))) & 1) == 0)
      {
        goto LABEL_83;
      }

      if (v30[1].f32[0] != v31[1].f32[0] || v30[1].f32[1] != v31[1].f32[1])
      {
        goto LABEL_83;
      }

      v33 = v4[13];
      v35 = *&v10[v33];
      v34 = *&v10[v33 + 8];
      v36 = v10[v33 + 16];
      v37 = &v7[v33];
      v39 = *&v7[v33];
      v38 = *&v7[v33 + 8];
      v40 = v37[16];
      if (!v36)
      {
        break;
      }

      if (v36 == 1)
      {
        if (v40 != 1)
        {
          goto LABEL_83;
        }

        goto LABEL_40;
      }

      if (v35 > 1)
      {
        v44 = v35 ^ 2 | v34;
        v47 = v39 == 2 && v38 == 0 && v40 == 2;
        v50 = v39 == 3 && v38 == 0 && v40 == 2;
        if (v44)
        {
          v42 = v50;
        }

        else
        {
          v42 = v47;
        }

        goto LABEL_47;
      }

      if (v35 | v34)
      {
        v41 = v39 == 1 && v38 == 0 && v40 == 2;
        goto LABEL_44;
      }

      if (v40 != 2 || v38 | v39)
      {
        goto LABEL_83;
      }

      sub_23E87E458(v7, &unk_27E35F660, &unk_23E9069D0);
      sub_23E87E458(v10, &unk_27E35F660, &unk_23E9069D0);
LABEL_48:
      v14 += v15;
      v13 += v15;
      result = 1;
      if (!--v11)
      {
        return result;
      }
    }

    if (v40)
    {
      goto LABEL_83;
    }

LABEL_40:
    if (*&v35 != *&v39 || *(&v35 + 1) != *(&v39 + 1) || *&v34 != *&v38)
    {
      goto LABEL_83;
    }

    v41 = *(&v34 + 1) == *(&v38 + 1);
LABEL_44:
    v42 = v41;
LABEL_47:
    sub_23E87E458(v7, &unk_27E35F660, &unk_23E9069D0);
    sub_23E87E458(v10, &unk_27E35F660, &unk_23E9069D0);
    if ((v42 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_48;
  }

  return 1;
}

uint64_t sub_23E8DD588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F690, &unk_23E906F50);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v34 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v35 = *(v8 + 72);
    while (1)
    {
      sub_23E8891B4(v13, v10, &unk_27E35F690, &unk_23E906F50);
      sub_23E8891B4(v14, v7, &unk_27E35F690, &unk_23E906F50);
      if ((sub_23E9006B4() & 1) == 0 || *&v10[v4[9]] != *&v7[v4[9]] || *&v10[v4[10]] != *&v7[v4[10]])
      {
LABEL_50:
        sub_23E87E458(v7, &unk_27E35F690, &unk_23E906F50);
        sub_23E87E458(v10, &unk_27E35F690, &unk_23E906F50);
        return 0;
      }

      v15 = v4[11];
      v16 = &v10[v15];
      v17 = &v7[v15];
      if (v16[8])
      {
        if ((v17[8] & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v17[8])
        {
          goto LABEL_50;
        }

        v18 = *v16;
        if (*&v18 != COERCE_FLOAT(*v17) || *(&v18 + 1) != COERCE_FLOAT(HIDWORD(*v17)))
        {
          goto LABEL_50;
        }
      }

      v20 = v4[12];
      v21 = &v10[v20];
      v22 = &v7[v20];
      if (*v21 != *v22 || v21[1] != v22[1])
      {
        goto LABEL_50;
      }

      v36 = v13;
      v24 = &v10[v4[13]];
      v25 = *v24;
      v26 = *(v24 + 1);
      v27 = v24[16];
      sub_23E87E458(v10, &unk_27E35F690, &unk_23E906F50);
      v28 = &v7[v4[13]];
      v29 = *v28;
      v37 = *(v28 + 1);
      v30 = v28[16];
      sub_23E87E458(v7, &unk_27E35F690, &unk_23E906F50);
      if (v27)
      {
        if (v27 != 1)
        {
          if (v25 > 1)
          {
            if (v25 ^ 2 | v26)
            {
              if (v30 != 2)
              {
                return 0;
              }

              result = 0;
              if (v29 != 3)
              {
                return result;
              }
            }

            else
            {
              if (v30 != 2)
              {
                return 0;
              }

              result = 0;
              if (v29 != 2)
              {
                return result;
              }
            }
          }

          else
          {
            if (!(v25 | v26))
            {
              result = 0;
              if (v30 != 2)
              {
                return result;
              }

              v32 = v36;
              v33 = v37 | v29;
LABEL_46:
              if (v33)
              {
                return result;
              }

              goto LABEL_47;
            }

            if (v30 != 2)
            {
              return 0;
            }

            result = 0;
            if (v29 != 1)
            {
              return result;
            }
          }

          v32 = v36;
          v33 = v37;
          goto LABEL_46;
        }

        if (v30 != 1)
        {
          return 0;
        }
      }

      else if (v30)
      {
        return 0;
      }

      result = 0;
      if (*&v25 != *&v29)
      {
        return result;
      }

      if (*(&v25 + 1) != *(&v29 + 1))
      {
        return result;
      }

      if (*&v26 != *&v37)
      {
        return result;
      }

      v32 = v36;
      if (*(&v26 + 1) != *(&v37 + 1))
      {
        return result;
      }

LABEL_47:
      v14 += v35;
      v13 = v32 + v35;
      result = 1;
      if (!--v11)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t sub_23E8DD958(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6C0, &qword_23E9069E0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v49 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v50 = *(v8 + 72);
    while (1)
    {
      sub_23E8891B4(v13, v10, &unk_27E35F6C0, &qword_23E9069E0);
      sub_23E8891B4(v14, v7, &unk_27E35F6C0, &qword_23E9069E0);
      if ((sub_23E9006B4() & 1) == 0 || *&v10[v4[9]] != *&v7[v4[9]] || *&v10[v4[10]] != *&v7[v4[10]])
      {
        goto LABEL_84;
      }

      v15 = v4[11];
      v16 = &v10[v15];
      v17 = &v7[v15];
      v18 = *&v10[v15];
      v19 = *&v7[v15];
      v20 = v19 & 0xFF00000000;
      if ((~v18 & 0xFF00000000) != 0)
      {
        if (v20 == 0xFF00000000)
        {
          goto LABEL_84;
        }

        v21 = v16[12];
        v22 = *(v16 + 2);
        v23 = v17[12];
        v24 = *(v17 + 2);
        if (BYTE4(v18) > 1u)
        {
          if (BYTE4(v18) == 2)
          {
            if (BYTE4(v19) != 2)
            {
              goto LABEL_84;
            }
          }

          else if (BYTE4(v19) != 3)
          {
            goto LABEL_84;
          }
        }

        else if (BYTE4(v18))
        {
          if (BYTE4(v19) != 1)
          {
            goto LABEL_84;
          }
        }

        else if (BYTE4(v19))
        {
          goto LABEL_84;
        }

        if (*&v18 != *&v19)
        {
          goto LABEL_84;
        }

        v25 = v22 | (v21 << 32);
        v26 = v24 | (v23 << 32);
        if (BYTE4(v25) > 1u)
        {
          if (BYTE4(v25) == 2)
          {
            if (BYTE4(v26) != 2)
            {
              goto LABEL_84;
            }
          }

          else if (BYTE4(v26) != 3)
          {
            goto LABEL_84;
          }
        }

        else if (BYTE4(v25))
        {
          if (BYTE4(v26) != 1)
          {
            goto LABEL_84;
          }
        }

        else if (BYTE4(v26))
        {
          goto LABEL_84;
        }

        if (*&v25 != *&v26)
        {
          goto LABEL_84;
        }
      }

      else if (v20 != 0xFF00000000)
      {
        goto LABEL_84;
      }

      v27 = v4[12];
      v28 = &v10[v27];
      v29 = &v7[v27];
      v30 = *v28;
      v31 = v28[4];
      v32 = *(v28 + 2);
      v33 = v28[12];
      v34 = *v29;
      v35 = v29[4];
      v36 = *(v29 + 2);
      v37 = v29[12];
      if (v31 > 1)
      {
        if (v31 == 2)
        {
          if (v35 != 2)
          {
            goto LABEL_84;
          }
        }

        else if (v35 != 3)
        {
          goto LABEL_84;
        }
      }

      else if (v31)
      {
        if (v35 != 1)
        {
          goto LABEL_84;
        }
      }

      else if (v35)
      {
        goto LABEL_84;
      }

      if (v30 != v34)
      {
        goto LABEL_84;
      }

      if (v33 > 1)
      {
        if (v33 == 2)
        {
          if (v37 != 2)
          {
            goto LABEL_84;
          }
        }

        else if (v37 != 3)
        {
          goto LABEL_84;
        }
      }

      else if (v33)
      {
        if (v37 != 1)
        {
          goto LABEL_84;
        }
      }

      else if (v37)
      {
        goto LABEL_84;
      }

      if (v32 != v36)
      {
LABEL_84:
        sub_23E87E458(v7, &unk_27E35F6C0, &qword_23E9069E0);
        sub_23E87E458(v10, &unk_27E35F6C0, &qword_23E9069E0);
        return 0;
      }

      v51 = v14;
      v52 = v13;
      v38 = &v10[v4[13]];
      v39 = *v38;
      v40 = *(v38 + 1);
      v41 = v38[16];
      sub_23E87E458(v10, &unk_27E35F6C0, &qword_23E9069E0);
      v42 = &v7[v4[13]];
      v43 = *v42;
      v44 = *(v42 + 1);
      v45 = v42[16];
      sub_23E87E458(v7, &unk_27E35F6C0, &qword_23E9069E0);
      if (!v41)
      {
        break;
      }

      if (v41 == 1)
      {
        if (v45 != 1)
        {
          return 0;
        }

        goto LABEL_61;
      }

      if (v39 > 1)
      {
        if (v39 ^ 2 | v40)
        {
          if (v45 != 2)
          {
            return 0;
          }

          result = 0;
          if (v43 != 3)
          {
            return result;
          }
        }

        else
        {
          if (v45 != 2)
          {
            return 0;
          }

          result = 0;
          if (v43 != 2)
          {
            return result;
          }
        }

        goto LABEL_80;
      }

      if (v39 | v40)
      {
        if (v45 != 2)
        {
          return 0;
        }

        result = 0;
        if (v43 != 1)
        {
          return result;
        }

LABEL_80:
        v48 = v51;
        v47 = v52;
        if (v44)
        {
          return result;
        }

        goto LABEL_81;
      }

      result = 0;
      if (v45 != 2)
      {
        return result;
      }

      v48 = v51;
      v47 = v52;
      if (v44 | v43)
      {
        return result;
      }

LABEL_81:
      v14 = v48 + v50;
      v13 = v47 + v50;
      result = 1;
      if (!--v11)
      {
        return result;
      }
    }

    if (v45)
    {
      return 0;
    }

LABEL_61:
    result = 0;
    if (*&v39 != *&v43)
    {
      return result;
    }

    if (*(&v39 + 1) != *(&v43 + 1))
    {
      return result;
    }

    if (*&v40 != *&v44)
    {
      return result;
    }

    v48 = v51;
    v47 = v52;
    if (*(&v40 + 1) != *(&v44 + 1))
    {
      return result;
    }

    goto LABEL_81;
  }

  return 1;
}

uint64_t sub_23E8DDE68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6F0, qword_23E903D18);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v11 = &v83 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v86 = *(v9 + 72);
    v87 = v8;
    while (1)
    {
      sub_23E8891B4(v14, v11, &unk_27E35F6F0, qword_23E903D18);
      v88 = v14;
      v89 = v12;
      v90 = v15;
      sub_23E8891B4(v15, v7, &unk_27E35F6F0, qword_23E903D18);
      v16 = sub_23E9006B4();
      v17 = v87;
      if ((v16 & 1) == 0 || *&v11[v87[9]] != *&v7[v87[9]] || *&v11[v87[10]] != *&v7[v87[10]])
      {
LABEL_143:
        sub_23E87E458(v7, &unk_27E35F6F0, qword_23E903D18);
        sub_23E87E458(v11, &unk_27E35F6F0, qword_23E903D18);
        return 0;
      }

      v18 = v87[11];
      v19 = &v11[v18];
      v20 = &v7[v18];
      v21 = *&v11[v18 + 8];
      v22 = *&v7[v18 + 8];
      if (v11[v18 + 8] == -1)
      {
        if (v22 != 255)
        {
          goto LABEL_143;
        }

        goto LABEL_49;
      }

      if (v22 == 255)
      {
        goto LABEL_143;
      }

      v23 = *v19;
      v24 = v19[20];
      v25 = *(v19 + 4);
      v26 = *v20;
      v27 = v20[20];
      v28 = *(v20 + 4);
      if (!v21)
      {
        break;
      }

      if (v21 != 1)
      {
        if (v22 != 2)
        {
          goto LABEL_143;
        }

LABEL_21:
        if (*&v23 != *&v26)
        {
          goto LABEL_143;
        }

        goto LABEL_22;
      }

      if (v22 != 1)
      {
        goto LABEL_143;
      }

      v85 = v25;
      if (v23 > 1u)
      {
        if (v23 == 2)
        {
          v29 = 0xE400000000000000;
          v30 = 1952867692;
        }

        else
        {
          v29 = 0xE500000000000000;
          v30 = 0x7468676972;
        }
      }

      else if (v23)
      {
        v29 = 0xE800000000000000;
        v30 = 0x676E696C69617274;
      }

      else
      {
        v29 = 0xE700000000000000;
        v30 = 0x676E696461656CLL;
      }

      if (v26 > 1u)
      {
        if (v26 == 2)
        {
          v78 = 0xE400000000000000;
          v79 = 1952867692;
        }

        else
        {
          v78 = 0xE500000000000000;
          v79 = 0x7468676972;
        }
      }

      else if (v26)
      {
        v78 = 0xE800000000000000;
        v79 = 0x676E696C69617274;
      }

      else
      {
        v78 = 0xE700000000000000;
        v79 = 0x676E696461656CLL;
      }

      v80 = *(&v23 + 1);
      v81 = *(&v26 + 1);
      if (v30 == v79 && v29 == v78)
      {

        v25 = v85;
        if (v80 != v81)
        {
          goto LABEL_143;
        }
      }

      else
      {
        v84 = v24;
        v82 = sub_23E900E04();
        v24 = v84;

        v25 = v85;
        if ((v82 & 1) == 0 || v80 != v81)
        {
          goto LABEL_143;
        }
      }

LABEL_22:
      *(&v32 + 1) = v28 | (v27 << 32);
      *&v32 = v22;
      v31 = v32 >> 32;
      v33 = BYTE12(v32);
      *(&v32 + 1) = v25 | (v24 << 32);
      *&v32 = v21;
      v34 = v32 >> 32;
      if (!BYTE12(v32))
      {
        if (v33)
        {
          goto LABEL_143;
        }

        goto LABEL_43;
      }

      if (((v25 | (v24 << 32)) >> 32) != 1)
      {
        if (v33 != 2)
        {
          goto LABEL_143;
        }

LABEL_43:
        if (*&v34 != *&v31)
        {
          goto LABEL_143;
        }

        goto LABEL_49;
      }

      if (v33 != 1)
      {
        goto LABEL_143;
      }

      v35 = *(&v34 + 1);
      v36 = *(&v31 + 1);
      if (v34)
      {
        v37 = 0x6D6F74746F62;
      }

      else
      {
        v37 = 7368564;
      }

      if (v34)
      {
        v38 = 0xE600000000000000;
      }

      else
      {
        v38 = 0xE300000000000000;
      }

      if (v31)
      {
        v39 = 0x6D6F74746F62;
      }

      else
      {
        v39 = 7368564;
      }

      if (v31)
      {
        v40 = 0xE600000000000000;
      }

      else
      {
        v40 = 0xE300000000000000;
      }

      if (v37 == v39 && v38 == v40)
      {
      }

      else
      {
        v41 = sub_23E900E04();

        if ((v41 & 1) == 0)
        {
          goto LABEL_143;
        }
      }

      if (v35 != v36)
      {
        goto LABEL_143;
      }

LABEL_49:
      v42 = v17[12];
      v43 = &v7[v42];
      v44 = *&v11[v42];
      v45 = v11[v42 + 8];
      v46 = *&v11[v42 + 12];
      v47 = v11[v42 + 20];
      v48 = *&v7[v42];
      v49 = v43[8];
      v50 = *(v43 + 12);
      v51 = v43[20];
      if (!v45)
      {
        if (v43[8])
        {
          goto LABEL_143;
        }

        goto LABEL_58;
      }

      if (v45 != 1)
      {
        if (v49 != 2)
        {
          goto LABEL_143;
        }

LABEL_58:
        if (*&v44 != *&v48)
        {
          goto LABEL_143;
        }

        goto LABEL_76;
      }

      if (v49 != 1)
      {
        goto LABEL_143;
      }

      if (v44 > 1u)
      {
        if (v44 == 2)
        {
          v52 = 0xE400000000000000;
          v53 = 1952867692;
        }

        else
        {
          v52 = 0xE500000000000000;
          v53 = 0x7468676972;
        }
      }

      else if (v44)
      {
        v52 = 0xE800000000000000;
        v53 = 0x676E696C69617274;
      }

      else
      {
        v52 = 0xE700000000000000;
        v53 = 0x676E696461656CLL;
      }

      if (v48 > 1u)
      {
        if (v48 == 2)
        {
          v54 = 0xE400000000000000;
          v55 = 1952867692;
        }

        else
        {
          v54 = 0xE500000000000000;
          v55 = 0x7468676972;
        }
      }

      else if (v48)
      {
        v54 = 0xE800000000000000;
        v55 = 0x676E696C69617274;
      }

      else
      {
        v54 = 0xE700000000000000;
        v55 = 0x676E696461656CLL;
      }

      v56 = *(&v44 + 1);
      v57 = *(&v48 + 1);
      if (v53 == v55 && v52 == v54)
      {
      }

      else
      {
        v58 = sub_23E900E04();

        if ((v58 & 1) == 0)
        {
          goto LABEL_143;
        }
      }

      if (v56 != v57)
      {
        goto LABEL_143;
      }

LABEL_76:
      if (!v47)
      {
        if (v51)
        {
          goto LABEL_143;
        }

        goto LABEL_97;
      }

      if (v47 != 1)
      {
        if (v51 != 2)
        {
          goto LABEL_143;
        }

LABEL_97:
        if (*&v46 != *&v50)
        {
          goto LABEL_143;
        }

        goto LABEL_101;
      }

      if (v51 != 1)
      {
        goto LABEL_143;
      }

      if (v46)
      {
        v59 = 0x6D6F74746F62;
      }

      else
      {
        v59 = 7368564;
      }

      if (v46)
      {
        v60 = 0xE600000000000000;
      }

      else
      {
        v60 = 0xE300000000000000;
      }

      if (v50)
      {
        v61 = 0x6D6F74746F62;
      }

      else
      {
        v61 = 7368564;
      }

      if (v50)
      {
        v62 = 0xE600000000000000;
      }

      else
      {
        v62 = 0xE300000000000000;
      }

      if (v59 == v61 && v60 == v62)
      {
      }

      else
      {
        v63 = sub_23E900E04();

        if ((v63 & 1) == 0)
        {
          goto LABEL_143;
        }
      }

      if (*(&v46 + 1) != *(&v50 + 1))
      {
        goto LABEL_143;
      }

LABEL_101:
      v64 = &v11[v17[13]];
      v66 = *v64;
      v65 = *(v64 + 1);
      v67 = v64[16];
      sub_23E87E458(v11, &unk_27E35F6F0, qword_23E903D18);
      v68 = &v7[v17[13]];
      v70 = *v68;
      v69 = *(v68 + 1);
      v71 = v68[16];
      sub_23E87E458(v7, &unk_27E35F6F0, qword_23E903D18);
      if (!v67)
      {
        if (v71)
        {
          return 0;
        }

LABEL_106:
        result = 0;
        if (*&v66 != *&v70)
        {
          return result;
        }

        if (*(&v66 + 1) != *(&v70 + 1))
        {
          return result;
        }

        if (*&v65 != *&v69)
        {
          return result;
        }

        v73 = *(&v65 + 1) == *(&v69 + 1);
        v74 = v88;
        v75 = v89;
        v76 = v90;
        if (!v73)
        {
          return result;
        }

        goto LABEL_126;
      }

      if (v67 == 1)
      {
        if (v71 != 1)
        {
          return 0;
        }

        goto LABEL_106;
      }

      if (v66 > 1)
      {
        if (v66 ^ 2 | v65)
        {
          v75 = v89;
          v76 = v90;
          if (v71 != 2)
          {
            return 0;
          }

          result = 0;
          if (v70 != 3)
          {
            return result;
          }
        }

        else
        {
          v75 = v89;
          v76 = v90;
          if (v71 != 2)
          {
            return 0;
          }

          result = 0;
          if (v70 != 2)
          {
            return result;
          }
        }

        goto LABEL_125;
      }

      if (v66 | v65)
      {
        v75 = v89;
        v76 = v90;
        if (v71 != 2)
        {
          return 0;
        }

        result = 0;
        if (v70 != 1)
        {
          return result;
        }

LABEL_125:
        v74 = v88;
        if (v69)
        {
          return result;
        }

        goto LABEL_126;
      }

      result = 0;
      v75 = v89;
      v76 = v90;
      if (v71 != 2)
      {
        return result;
      }

      v77 = v69 | v70;
      v74 = v88;
      if (v77)
      {
        return result;
      }

LABEL_126:
      v15 = v76 + v86;
      v14 = v74 + v86;
      result = 1;
      v12 = v75 - 1;
      if (!v12)
      {
        return result;
      }
    }

    if (v22)
    {
      goto LABEL_143;
    }

    goto LABEL_21;
  }

  return 1;
}

uint64_t sub_23E8DE708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpriteSheetAnimation(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v11 = &v55 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v59 = *(v9 + 72);
    v60 = v8;
    v56 = v7;
    v57 = &v55 - v10;
    while (1)
    {
      sub_23E8DF678(v14, v11);
      v61 = v15;
      v62 = v14;
      sub_23E8DF678(v15, v7);
      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      v18 = *(v11 + 4);
      v19 = v11[40];
      v20 = v11[41];
      v22 = *(v7 + 2);
      v21 = *(v7 + 3);
      v23 = *(v7 + 4);
      v24 = v7[40];
      v25 = v7[41];
      if (*v11 != *v7 || *(v11 + 1) != *(v7 + 1))
      {
        v58 = v12;
        v26 = v25;
        v27 = v21;
        v28 = v24;
        v29 = sub_23E900E04();
        v24 = v28;
        v21 = v27;
        v7 = v56;
        v11 = v57;
        v25 = v26;
        v12 = v58;
        if ((v29 & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      if (v19)
      {
        if ((v24 & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (v24)
        {
          goto LABEL_74;
        }

        v30 = *&v17 == *&v22 && *(&v17 + 1) == *(&v22 + 1);
        v31 = v30 && *&v16 == *&v21;
        v32 = v31 && *(&v16 + 1) == *(&v21 + 1);
        if (!v32 || v18 != v23)
        {
          goto LABEL_74;
        }
      }

      v34 = v20 ? 0x504A2F6F65646976 : 0x6E702F6567616D69;
      v35 = v20 ? 0xEA00000000004745 : 0xE900000000000067;
      v36 = v25 ? 0x504A2F6F65646976 : 0x6E702F6567616D69;
      v37 = v25 ? 0xEA00000000004745 : 0xE900000000000067;
      if (v34 == v36 && v35 == v37)
      {
      }

      else
      {
        v38 = sub_23E900E04();

        if ((v38 & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      v39 = *(v60 + 20);
      v40 = &v11[v39];
      v41 = &v7[v39];
      if ((sub_23E9006B4() & 1) == 0 || (v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F1C8, &qword_23E906930), *&v40[v42[9]] != *&v41[v42[9]]) || (v43 = v42, *&v40[v42[10]] != *&v41[v42[10]]) || v40[v42[11]] != v41[v42[11]])
      {
LABEL_74:
        sub_23E8D0D1C(v7);
        sub_23E8D0D1C(v11);
        return 0;
      }

      v44 = &v40[v42[13]];
      v45 = *v44;
      v46 = *(v44 + 1);
      v47 = v44[16];
      sub_23E8D0D1C(v11);
      v48 = &v41[v43[13]];
      v50 = *v48;
      v49 = *(v48 + 1);
      v51 = v48[16];
      sub_23E8D0D1C(v7);
      if (!v47)
      {
        break;
      }

      if (v47 == 1)
      {
        if (v51 != 1)
        {
          return 0;
        }

        goto LABEL_51;
      }

      if (v45 > 1)
      {
        if (v45 ^ 2 | v46)
        {
          if (v51 != 2)
          {
            return 0;
          }

          result = 0;
          if (v50 != 3)
          {
            return result;
          }
        }

        else
        {
          if (v51 != 2)
          {
            return 0;
          }

          result = 0;
          if (v50 != 2)
          {
            return result;
          }
        }

        goto LABEL_70;
      }

      if (v45 | v46)
      {
        if (v51 != 2)
        {
          return 0;
        }

        result = 0;
        if (v50 != 1)
        {
          return result;
        }

LABEL_70:
        v54 = v61;
        v53 = v62;
        if (v49)
        {
          return result;
        }

        goto LABEL_71;
      }

      result = 0;
      if (v51 != 2)
      {
        return result;
      }

      v54 = v61;
      v53 = v62;
      if (v49 | v50)
      {
        return result;
      }

LABEL_71:
      v15 = v54 + v59;
      v14 = v53 + v59;
      result = 1;
      if (!--v12)
      {
        return result;
      }
    }

    if (v51)
    {
      return 0;
    }

LABEL_51:
    result = 0;
    if (*&v45 != *&v50)
    {
      return result;
    }

    if (*(&v45 + 1) != *(&v50 + 1))
    {
      return result;
    }

    if (*&v46 != *&v49)
    {
      return result;
    }

    v54 = v61;
    v53 = v62;
    if (*(&v46 + 1) != *(&v49 + 1))
    {
      return result;
    }

    goto LABEL_71;
  }

  return 1;
}

uint64_t sub_23E8DEB78(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v2 + 8))(v4, a1);
  if (EnumCaseMultiPayload == 1)
  {
    return 0x6574616D696E61;
  }

  else
  {
    return 0x6E41657461657263;
  }
}

uint64_t sub_23E8DEC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a1;
  v53 = a2;
  v47 = *(a4 + 8);
  v6 = type metadata accessor for Animation(0, a3, v47, a4);
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - v7;
  v10 = type metadata accessor for RenderAnimationActionType(0, a3, a4, v9);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = *(TupleTypeMetadata2 - 8);
  v18 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v20 = &v46 - v19;
  v21 = &v46 + *(v18 + 48) - v19;
  v51 = v11;
  v22 = *(v11 + 16);
  v22(&v46 - v19, v52, v10);
  v22(v21, v53, v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v22(v16, v20, v10);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v38 = v49;
      v37 = v50;
      (*(v49 + 32))(v8, v21, v50);
      v35 = static Animation.== infix(_:_:)(v16, v8, a3, v47);
      v39 = *(v38 + 8);
      v39(v8, v37);
      v39(v16, v37);
      v36 = v51;
      goto LABEL_32;
    }

    (*(v49 + 8))(v16, v50);
    goto LABEL_12;
  }

  v22(v14, v20, v10);
  v23 = v14[1];
  v24 = *(v14 + 1);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_12:
    v35 = 0;
    v36 = v48;
    v10 = TupleTypeMetadata2;
    goto LABEL_32;
  }

  v25 = v21[1];
  v26 = *(v21 + 1);
  v27 = *v14;
  v28 = *v21;
  v29 = sub_23E89CB38(v27);
  v31 = v30;
  if (v29 == sub_23E89CB38(v28) && v31 == v32)
  {

LABEL_15:
    v40 = 0xEB00000000646574;
    v41 = 0x616D696E416E6F6ELL;
    if (v23)
    {
      if (v23 == 1)
      {
        v42 = 0xE400000000000000;
        v43 = 1701015151;
        v36 = v51;
        if (!v25)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v43 = 0x6E69746165706572;
        v42 = 0xE900000000000067;
        v36 = v51;
        if (!v25)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v43 = 0x616D696E416E6F6ELL;
      v42 = 0xEB00000000646574;
      v36 = v51;
      if (!v25)
      {
        goto LABEL_24;
      }
    }

    if (v25 != 1)
    {
      v40 = 0xE900000000000067;
      if (v43 != 0x6E69746165706572)
      {
        goto LABEL_29;
      }

LABEL_27:
      if (v42 == v40)
      {

LABEL_30:
        v35 = sub_23E8DCB90(v24, v26);

        goto LABEL_32;
      }

LABEL_29:
      v44 = sub_23E900E04();

      if ((v44 & 1) == 0)
      {

        v35 = 0;
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v40 = 0xE400000000000000;
    v41 = 1701015151;
LABEL_24:
    if (v43 != v41)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v34 = sub_23E900E04();

  if (v34)
  {
    goto LABEL_15;
  }

  v35 = 0;
  v36 = v51;
LABEL_32:
  (*(v36 + 8))(v20, v10);
  return v35 & 1;
}

uint64_t sub_23E8DF1BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23E9006D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Animation(0, *(a2 + 16), *(*(a2 + 24) + 8), v10);
  v12 = *(v11 - 1);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v28 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v3, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *(v17 + 1);
    v20 = *v17;
    MEMORY[0x23EF17B90](1);
    sub_23E89CB38(v20);
    sub_23E900904();

    sub_23E900904();

    MEMORY[0x23EF17B90](*(v19 + 16));
    v21 = *(v19 + 16);
    if (v21)
    {
      v22 = v19;
      v23 = *(v7 + 16);
      v24 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v28[1] = v22;
      v25 = v22 + v24;
      v26 = *(v7 + 72);
      do
      {
        v23(v9, v25, v6);
        sub_23E8DF634(&qword_27E35E5B8, MEMORY[0x277CC9600]);
        sub_23E900824();
        (*(v7 + 8))(v9, v6);
        v25 += v26;
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v17, v11);
    MEMORY[0x23EF17B90](0);
    Animation.hash(into:)(a1, v11);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_23E8DF560(uint64_t a1)
{
  sub_23E900EB4();
  sub_23E8DF1BC(v3, a1);
  return sub_23E900F14();
}

uint64_t sub_23E8DF5B0(uint64_t a1, uint64_t a2)
{
  sub_23E900EB4();
  sub_23E8DF1BC(v4, a2);
  return sub_23E900F14();
}

uint64_t sub_23E8DF634(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_23E9006D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E8DF678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpriteSheetAnimation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23E8DF6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Animation(319, *(a1 + 16), *(*(a1 + 24) + 8), a4);
  if (v4 <= 0x3F)
  {
    sub_23E8DFB78(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_23E8DF758(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_23E9006D4();
  v7 = *(*(a3 + 16) - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = v9 + v8;
  if (!*(v7 + 84))
  {
    ++v10;
  }

  v11 = ((v9 + ((v10 + ((((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8)) & ~v8) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 17;
  v12 = 16;
  if (v11 > 0x10)
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v13 = v12 + 1;
  v14 = 8 * (v12 + 1);
  if ((v12 + 1) <= 3)
  {
    v17 = ((a2 + ~(-1 << v14) - 254) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v17 < 2)
    {
LABEL_27:
      v19 = *(a1 + v12);
      if (v19 >= 2)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_16:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return (v13 | v18) + 255;
}

void sub_23E8DF928(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23E9006D4() - 8);
  v9 = *(*(a4 + 16) - 8);
  v10 = *(v9 + 80);
  v11 = (((((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;
  v12 = *(v9 + 64);
  v13 = v12 + v10;
  if (!*(v9 + 84))
  {
    ++v13;
  }

  v14 = ((v12 + ((v13 + v11) & ~v10) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 17;
  if (v14 <= 0x10)
  {
    v14 = 16;
  }

  v15 = v14 + 1;
  if (a3 < 0xFF)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 + ~(-1 << (8 * v15)) - 254) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (a2 > 0xFE)
  {
    v17 = a2 - 255;
    if (v15 >= 4)
    {
      bzero(a1, v14 + 1);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v18 = (v17 >> (8 * v15)) + 1;
    if (v14 != -1)
    {
      v21 = v17 & ~(-1 << (8 * v15));
      bzero(a1, v15);
      if (v15 != 3)
      {
        if (v15 == 2)
        {
          *a1 = v21;
          if (v16 > 1)
          {
LABEL_41:
            if (v16 == 2)
            {
              *&a1[v15] = v18;
            }

            else
            {
              *&a1[v15] = v18;
            }

            return;
          }
        }

        else
        {
          *a1 = v17;
          if (v16 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v16)
        {
          a1[v15] = v18;
        }

        return;
      }

      *a1 = v21;
      a1[2] = BYTE2(v21);
    }

    if (v16 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v16 <= 1)
  {
    if (v16)
    {
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v14] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v16 == 2)
  {
    *&a1[v15] = 0;
    goto LABEL_26;
  }

  *&a1[v15] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

void sub_23E8DFB78(uint64_t a1)
{
  if (!qword_27E35F478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35F480, qword_23E906F80);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27E35F478);
    }
  }
}

uint64_t sub_23E8DFBF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701015151;
  if (v2 != 1)
  {
    v4 = 0x6E69746165706572;
    v3 = 0xE900000000000067;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x616D696E416E6F6ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB00000000646574;
  }

  v7 = 0xE400000000000000;
  v8 = 1701015151;
  if (*a2 != 1)
  {
    v8 = 0x6E69746165706572;
    v7 = 0xE900000000000067;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x616D696E416E6F6ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB00000000646574;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23E900E04();
  }

  return v11 & 1;
}

uint64_t sub_23E8DFCF8()
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8DFDA0(uint64_t a1)
{
  sub_23E900904();
}

uint64_t sub_23E8DFE34(uint64_t a1)
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

unint64_t sub_23E8DFED8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23E8DFFD4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23E8DFF08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646574;
  v4 = 0xE400000000000000;
  v5 = 1701015151;
  if (v2 != 1)
  {
    v5 = 0x6E69746165706572;
    v4 = 0xE900000000000067;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x616D696E416E6F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_23E8DFF80()
{
  result = qword_27E35F488;
  if (!qword_27E35F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F488);
  }

  return result;
}

unint64_t sub_23E8DFFD4(uint64_t a1, uint64_t a2)
{
  v2 = sub_23E900DA4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t VerticalEdge.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x676E696461656CLL;
  v2 = 1952867692;
  if (a1 != 2)
  {
    v2 = 0x7468676972;
  }

  if (a1)
  {
    v1 = 0x676E696C69617274;
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

uint64_t HorizontalEdge.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6D6F74746F62;
  }

  else
  {
    return 7368564;
  }
}

AirPlayKit::HorizontalEdge_optional __swiftcall HorizontalEdge.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_23E900DA4();

  if (v1 == 1)
  {
    v2.value = AirPlayKit_HorizontalEdge_bottom;
  }

  else
  {
    v2.value = AirPlayKit_HorizontalEdge_unknownDefault;
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

uint64_t sub_23E8E0110(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D6F74746F62;
  }

  else
  {
    v3 = 7368564;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6D6F74746F62;
  }

  else
  {
    v5 = 7368564;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23E900E04();
  }

  return v8 & 1;
}

uint64_t sub_23E8E01AC@<X0>(char *a2@<X8>)
{
  v3 = sub_23E900DA4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_23E8E020C(uint64_t *a1@<X8>)
{
  v2 = 7368564;
  if (*v1)
  {
    v2 = 0x6D6F74746F62;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_23E8E0244(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x676E696461656CLL;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0xE400000000000000;
  v6 = 1952867692;
  if (v3 != 2)
  {
    v6 = 0x7468676972;
    v5 = 0xE500000000000000;
  }

  v7 = 0x676E696C69617274;
  if (*a1)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v7 = 0x676E696461656CLL;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE700000000000000;
  v11 = 0xE400000000000000;
  v12 = 1952867692;
  if (*a2 != 2)
  {
    v12 = 0x7468676972;
    v11 = 0xE500000000000000;
  }

  if (*a2)
  {
    v2 = 0x676E696C69617274;
    v10 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_23E900E04();
  }

  return v15 & 1;
}

unint64_t sub_23E8E0370@<X0>(Swift::String *a1@<X0>, AirPlayKit::VerticalEdge_optional *a2@<X8>)
{
  result = _s10AirPlayKit12VerticalEdgeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_23E8E03A0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x676E696461656CLL;
  v4 = 0xE400000000000000;
  v5 = 1952867692;
  if (*v1 != 2)
  {
    v5 = 0x7468676972;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x676E696C69617274;
    v2 = 0xE800000000000000;
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

uint64_t sub_23E8E0414()
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8E048C(uint64_t a1)
{
  sub_23E900904();
}

uint64_t sub_23E8E04F0(uint64_t a1)
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8E0564()
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8E061C(uint64_t a1)
{
  sub_23E900904();
}

uint64_t sub_23E8E06C0(uint64_t a1)
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

unint64_t _s10AirPlayKit12VerticalEdgeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_23E900DA4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23E8E07C4()
{
  result = qword_27E35F490;
  if (!qword_27E35F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F490);
  }

  return result;
}

unint64_t sub_23E8E0818(uint64_t a1)
{
  result = sub_23E8E0840();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8E0840()
{
  result = qword_27E35F498;
  if (!qword_27E35F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F498);
  }

  return result;
}

unint64_t sub_23E8E0898()
{
  result = qword_27E35F4A0;
  if (!qword_27E35F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F4A0);
  }

  return result;
}

unint64_t sub_23E8E08EC(uint64_t a1)
{
  result = sub_23E8E0914();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8E0914()
{
  result = qword_27E35F4A8;
  if (!qword_27E35F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F4A8);
  }

  return result;
}

unint64_t sub_23E8E099C()
{
  result = qword_27E35F4B0;
  if (!qword_27E35F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F4B0);
  }

  return result;
}

uint64_t sub_23E8E09F0(unsigned __int8 a1)
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8E0B0C(uint64_t a1, unsigned __int8 a2)
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8E0C24(uint64_t a1, unsigned __int8 a2)
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t TextContent.init(content:font:color:numberOfLines:alignment:textLayout:truncationMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 a6@<W5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11)
{
  v16 = a3[1];
  v27 = *a3;
  v26 = *(a3 + 4);
  v17 = *a8;
  v18 = *a10;
  v19 = *a11;
  result = sub_23E900914();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v21 = result;
    v25 = v17;
    result = sub_23E900914();
    if ((result & 0x8000000000000000) == 0)
    {
      v22 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E860, &unk_23E905180);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23E902EF0;
      *(inited + 32) = v27;
      *(inited + 40) = v16;
      *(inited + 48) = v26;
      *(inited + 52) = 4;
      *(inited + 56) = 0;
      *(inited + 64) = v21;
      *(inited + 72) = a4;
      *(inited + 80) = a5;
      *(inited + 88) = a6;
      *(inited + 92) = 5;
      *(inited + 96) = 0;
      *(inited + 104) = v22;
      v24 = sub_23E8950E0(inited);
      swift_setDeallocating();
      result = swift_arrayDestroy();
      *a9 = v25;
      *(a9 + 8) = a1;
      *(a9 + 16) = a2;
      *(a9 + 24) = a7;
      *(a9 + 32) = v18;
      *(a9 + 33) = v19;
      *(a9 + 40) = v24;
      return result;
    }
  }

  __break(1u);
  return result;
}

void TextContent.init(_:numberOfLines:alignment:textLayout:truncationMode:)(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  v12 = [a1 string];
  v13 = sub_23E900884();
  v15 = v14;

  *(a6 + 8) = v13;
  *(a6 + 16) = v15;
  v16 = sub_23E896728();

  *(a6 + 40) = v16;
  *(a6 + 24) = a2;
  *a6 = v9;
  *(a6 + 32) = v10;
  *(a6 + 33) = v11;
}

uint64_t TextContent.init(content:attributes:numberOfLines:alignment:textLayout:truncationMode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a5;
  v9 = *a6;
  v10 = *a7;
  *(a8 + 8) = result;
  *(a8 + 16) = a2;
  *(a8 + 40) = a3;
  *(a8 + 24) = a4;
  *a8 = v8;
  *(a8 + 32) = v9;
  *(a8 + 33) = v10;
  return result;
}

unint64_t TextContent.TruncationMode.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x725764726F577962;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7257726168437962;
  if (v1 != 1)
  {
    v5 = 0x697070696C437962;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t TextContent.Alignment.rawValue.getter()
{
  v1 = *v0;
  v2 = 1952867692;
  v3 = 0x7468676972;
  v4 = 0x656966697473756ALL;
  if (v1 != 3)
  {
    v4 = 0x6C61727574616ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7265746E6563;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

AirPlayKit::TextContent::Alignment_optional __swiftcall TextContent.Alignment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E900DA4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23E8E1144()
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8E121C(uint64_t a1)
{
  sub_23E900904();
}

uint64_t sub_23E8E12E0(uint64_t a1)
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

void sub_23E8E13C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1952867692;
  v5 = 0xE500000000000000;
  v6 = 0x7468676972;
  v7 = 0xE900000000000064;
  v8 = 0x656966697473756ALL;
  if (v2 != 3)
  {
    v8 = 0x6C61727574616ELL;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7265746E6563;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

AirPlayKit::TextContent::Layout_optional __swiftcall TextContent.Layout.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E900DA4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t TextContent.Layout.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746C7561666564;
  v3 = 0x7865547473726966;
  if (v1 != 3)
  {
    v3 = 0x747865547473616CLL;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23E8E156C()
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8E1664(uint64_t a1)
{
  sub_23E900904();
}

uint64_t sub_23E8E1748(uint64_t a1)
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

void sub_23E8E1848(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746C7561666564;
  v5 = 0x800000023E908620;
  v6 = 0xEC00000070614374;
  v7 = 0x7865547473726966;
  if (v2 != 3)
  {
    v7 = 0x747865547473616CLL;
    v6 = 0xEB00000000706143;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x800000023E908600;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

AirPlayKit::TextContent::TruncationMode_optional __swiftcall TextContent.TruncationMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E900DA4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23E8E196C(uint64_t a1)
{
  sub_23E900904();
}

uint64_t TextContent.content.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TextContent.hash(into:)(__int128 *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  sub_23E900904();

  sub_23E900904();
  MEMORY[0x23EF17B90](v2);
  sub_23E900904();

  sub_23E900904();

  return sub_23E8E1F30(a1, v3);
}

uint64_t TextContent.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 3);
  v3 = *(v0 + 16);
  v4 = *(v0 + 5);
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_23E900EB4();
  TextContent.hash(into:)(v6);
  return sub_23E900F14();
}

uint64_t sub_23E8E1E10()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 3);
  v3 = *(v0 + 16);
  v4 = *(v0 + 5);
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_23E900EB4();
  TextContent.hash(into:)(v6);
  return sub_23E900F14();
}

uint64_t sub_23E8E1E80(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 3);
  v4 = *(v1 + 16);
  v5 = *(v1 + 5);
  v8 = *v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  sub_23E900EB4();
  TextContent.hash(into:)(v7);
  return sub_23E900F14();
}

BOOL sub_23E8E1EE8(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_23E8EBAF0(v7, v8);
}

uint64_t sub_23E8E1F30(__int128 *a1, uint64_t a2)
{
  v3 = a1[3];
  v28 = a1[2];
  v29 = v3;
  v30 = *(a1 + 8);
  v4 = a1[1];
  v26 = *a1;
  v27 = v4;
  sub_23E900F14();
  v22 = a2;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  for (i = 0; v8; v11 = v21 ^ v24)
  {
    v24 = v11;
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = *(v22 + 48) + 40 * (v14 | (v13 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v23 = *(v15 + 32);
    v20 = *(v15 + 20);
    sub_23E900EB4();
    sub_23E88FDE0(v16, v17, v18, v20);
    TextAttribute.hash(into:)(v25);
    MEMORY[0x23EF17B90](v19);
    MEMORY[0x23EF17B90](v23);
    v21 = sub_23E900F14();
    result = sub_23E88FDF8(v16, v17, v18, v20);
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return MEMORY[0x23EF17B90](v11);
    }

    v8 = *(v5 + 8 * v13);
    ++i;
    if (v8)
    {
      v24 = v11;
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23E8E20E4()
{
  result = qword_27E35F4B8;
  if (!qword_27E35F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F4B8);
  }

  return result;
}

unint64_t sub_23E8E213C()
{
  result = qword_27E35F4C0;
  if (!qword_27E35F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F4C0);
  }

  return result;
}

unint64_t sub_23E8E2194()
{
  result = qword_27E35F4C8;
  if (!qword_27E35F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F4C8);
  }

  return result;
}

unint64_t sub_23E8E21EC()
{
  result = qword_27E35F4D0;
  if (!qword_27E35F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F4D0);
  }

  return result;
}

unint64_t sub_23E8E2240(uint64_t a1)
{
  result = sub_23E8A7EFC();
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23E8E227C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23E8E22C4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for TextContent.TruncationMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TextContent.TruncationMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double static RenderNode<>.image(identifier:content:tintColor:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
  v13 = a6 + v12[9];
  sub_23E893B84(a2, v13);
  v14 = v13 + *(type metadata accessor for ImageContent(0) + 20);
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = a5;
  v15 = sub_23E9006D4();
  (*(*(v15 - 8) + 16))(a6, a1, v15);
  *(a6 + v12[10]) = 0;
  v16 = (a6 + v12[11]);
  *v16 = 0;
  v16[1] = 0;
  *(v16 + 14) = 0;
  v17 = a6 + v12[12];
  *v17 = 0;
  *(v17 + 12) = 0;
  *(v17 + 8) = 0;
  v18 = a6 + v12[13];
  *v18 = 0x3F0000003F000000;
  *(v18 + 8) = 0;
  v19 = a6 + v12[14];
  *&result = 1065353216;
  *v19 = xmmword_23E903320;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  v21 = a6 + v12[15];
  *v21 = 1065353216;
  *(v21 + 8) = 0;
  v22 = a6 + v12[16];
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 2;
  *(a6 + v12[17]) = 0;
  v23 = (a6 + v12[18]);
  *v23 = 0;
  v23[1] = 0;
  return result;
}

uint64_t RenderNode<>.withImageContent(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ImageContent(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
  v10 = v2 + *(v6 + 28) + *(v9 + 36);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  sub_23E893B84(a1, v8);
  v14 = &v8[*(v6 + 28)];
  *v14 = v11;
  *(v14 + 1) = v12;
  v14[16] = v13;
  sub_23E8E27EC(v2, a2);
  v15 = *(v9 + 36);
  sub_23E8E285C(a2 + v15);
  return sub_23E8E28B8(v8, a2 + v15);
}

uint64_t RenderNode<>.withImageContent(_:tintColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for ImageContent(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E893B84(a1, v14);
  v15 = &v14[*(v12 + 28)];
  *v15 = a2;
  *(v15 + 1) = a3;
  v15[16] = a4;
  sub_23E8E27EC(v5, a5);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90) + 36);
  sub_23E8E285C(a5 + v16);
  return sub_23E8E28B8(v14, a5 + v16);
}

uint64_t sub_23E8E27EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8E285C(uint64_t a1)
{
  v2 = type metadata accessor for ImageContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E8E28B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23E8E2920()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v9 = *(v0 + 44);
  v3 = *(v0 + 52);
  v4 = *(v0 + 40);
  v5 = *(v0 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E9075F0;
  *(inited + 32) = 0x6E615265756C6176;
  *(inited + 40) = 0xEA00000000006567;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F4E0, &qword_23E907658);
  sub_23E8E2C54();
  sub_23E900C64();
  strcpy((inited + 88), "definedRange");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  sub_23E900C64();
  *(inited + 144) = 0x6874646977;
  *(inited + 152) = 0xE500000000000000;
  sub_23E900C64();
  *(inited + 200) = 0x737569646172;
  *(inited + 208) = 0xE600000000000000;
  sub_23E900C64();
  *(inited + 256) = 0x726F6C6F63;
  *(inited + 264) = 0xE500000000000000;
  sub_23E8F6110(v1, v2, v4);
  sub_23E900C64();
  *(inited + 312) = 0x6F6C6F4365736162;
  *(inited + 320) = 0xE900000000000072;
  sub_23E8F6110(v9, v3, v5);
  sub_23E900C64();
  *(inited + 368) = 7364963;
  *(inited + 376) = 0xE300000000000000;
  sub_23E8E2CD0();
  sub_23E900C64();
  v7 = sub_23E88F1F4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  swift_arrayDestroy();
  return v7;
}

unint64_t sub_23E8E2BD0(uint64_t a1)
{
  *(a1 + 8) = sub_23E8AE8AC();
  result = sub_23E8E2C00();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23E8E2C00()
{
  result = qword_27E35F4D8;
  if (!qword_27E35F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F4D8);
  }

  return result;
}

unint64_t sub_23E8E2C54()
{
  result = qword_27E35F4E8;
  if (!qword_27E35F4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35F4E0, &qword_23E907658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F4E8);
  }

  return result;
}

unint64_t sub_23E8E2CD0()
{
  result = qword_27E35F4F0[0];
  if (!qword_27E35F4F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E35F4F0);
  }

  return result;
}

uint64_t static Animation.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v48 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23E900BD4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v49 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = &v40 - v15;
  if ((sub_23E9006B4() & 1) == 0)
  {
    goto LABEL_13;
  }

  v18 = type metadata accessor for Animation(0, a3, a4, v17);
  if (*(a1 + v18[9]) != *(a2 + v18[9]) || *(a1 + v18[10]) != *(a2 + v18[10]))
  {
    goto LABEL_13;
  }

  v45 = a4;
  v46 = a2;
  v19 = v11;
  v20 = v18[11];
  v21 = a1;
  v22 = *(TupleTypeMetadata2 + 48);
  v43 = v19;
  v23 = *(v19 + 16);
  v40 = v21;
  v41 = v18;
  v23(v16, v21 + v20, v10);
  v47 = v22;
  v24 = &v16[v22];
  v25 = v46;
  v42 = v23;
  v23(v24, v46 + v20, v10);
  v44 = v8;
  v26 = *(v8 + 48);
  if (v26(v16, 1, a3) == 1)
  {
    if (v26(&v16[v47], 1, a3) == 1)
    {
      (*(v43 + 8))(v16, v10);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v42(v13, v16, v10);
  v27 = v47;
  if (v26(&v16[v47], 1, a3) == 1)
  {
    (*(v44 + 8))(v13, a3);
LABEL_9:
    (*(v49 + 8))(v16, TupleTypeMetadata2);
LABEL_13:
    v38 = 0;
    return v38 & 1;
  }

  v28 = v44;
  v29 = v48;
  (*(v44 + 32))(v48, &v16[v27], a3);
  v30 = sub_23E900844();
  v31 = *(v28 + 8);
  v31(v29, a3);
  v31(v13, a3);
  (*(v43 + 8))(v16, v10);
  if ((v30 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v32 = v40;
  v33 = v41;
  if ((sub_23E900844() & 1) == 0)
  {
    goto LABEL_13;
  }

  v34 = v33[13];
  v35 = *(v32 + v34 + 16);
  v52 = *(v32 + v34);
  v53 = v35;
  v36 = (v25 + v34);
  v37 = *(v36 + 16);
  v50 = *v36;
  v51 = v37;
  v38 = _s10AirPlayKit14AnimationCurveO2eeoiySbAC_ACtFZ_0(&v52, &v50);
  return v38 & 1;
}

uint64_t Animation.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23E9006D4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Animation.fromValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_23E900BD4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

__n128 Animation.curve.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 52));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t Animation.init(identifier:duration:delay:toValue:fromValue:curve:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v17 = *a4;
  v18 = a4[1];
  v19 = *(a4 + 16);
  v20 = sub_23E9006D4();
  (*(*(v20 - 8) + 32))(a7, a1, v20);
  v22 = type metadata accessor for Animation(0, a5, a6, v21);
  *(a7 + v22[9]) = a8;
  (*(*(a5 - 8) + 32))(a7 + v22[12], a2, a5);
  *(a7 + v22[10]) = a9;
  v23 = v22[11];
  v24 = sub_23E900BD4();
  result = (*(*(v24 - 8) + 32))(a7 + v23, a3, v24);
  v26 = a7 + v22[13];
  *v26 = v17;
  *(v26 + 8) = v18;
  *(v26 + 16) = v19;
  return result;
}

uint64_t Animation.hash(into:)(uint64_t a1, int *a2)
{
  sub_23E9006D4();
  sub_23E88206C();
  sub_23E900824();
  v4 = *(v2 + a2[9]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v4);
  v5 = *(v2 + a2[10]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v5);
  sub_23E900BD4();
  sub_23E900BE4();
  sub_23E900824();
  v6 = v2 + a2[13];
  v8 = *v6;
  v7 = *(v6 + 8);
  v9 = *(v6 + 16);
  if (!v9)
  {
    v10 = 4;
    goto LABEL_9;
  }

  if (v9 == 1)
  {
    v10 = 5;
LABEL_9:
    MEMORY[0x23EF17B90](v10);
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
    return sub_23E900EE4();
  }

  if (v8 > 1)
  {
    if (v8 ^ 2 | v7)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = (v8 | v7) != 0;
  }

  return MEMORY[0x23EF17B90](v12);
}

uint64_t Animation.hashValue.getter(int *a1)
{
  sub_23E900EB4();
  Animation.hash(into:)(v3, a1);
  return sub_23E900F14();
}

uint64_t sub_23E8E3640(uint64_t a1, int *a2)
{
  sub_23E900EB4();
  Animation.hash(into:)(v4, a2);
  return sub_23E900F14();
}

uint64_t sub_23E8E36B4(uint64_t a1)
{
  result = sub_23E9006D4();
  if (v2 <= 0x3F)
  {
    result = sub_23E900BD4();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23E8E3774(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_23E9006D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v7 + 64);
  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (v10)
  {
    v14 = v10 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v8)
  {
    v15 = *(v7 + 84);
  }

  else
  {
    v15 = v14;
  }

  if (v10 > v15)
  {
    v15 = *(v9 + 84);
  }

  if (v15 <= 0xFD)
  {
    v15 = 253;
  }

  if (v10)
  {
    v16 = *(v9 + 64);
  }

  else
  {
    v16 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v12 + 8;
  v18 = v16 + v12;
  v19 = v13 + 3;
  if (v15 < a2)
  {
    v20 = ((v19 + ((v18 + ((v17 + ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & ~v12)) & 0xFFFFFFFFFFFFFFFCLL) + 17;
    if (v20 <= 3)
    {
      v21 = ((a2 - v15 + 255) >> 8) + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *&a1[v20];
        if (*&a1[v20])
        {
          goto LABEL_30;
        }
      }

      else
      {
        v24 = *&a1[v20];
        if (v24)
        {
          goto LABEL_30;
        }
      }
    }

    else if (v23)
    {
      v24 = a1[v20];
      if (a1[v20])
      {
LABEL_30:
        v25 = (v24 - 1) << (8 * v20);
        if (v20 <= 3)
        {
          v26 = *a1;
        }

        else
        {
          v25 = 0;
          v26 = *a1;
        }

        return v15 + (v26 | v25) + 1;
      }
    }
  }

  if (v8 == v15)
  {
    v27 = *(v7 + 48);

    return v27(a1, v8, v6);
  }

  v29 = (v17 + (((&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v12;
  if (v14 == v15)
  {
    if (v10 >= 2)
    {
      v32 = (*(v9 + 48))(v29);
      if (v32 >= 2)
      {
        return v32 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v30 = (v18 + v29) & ~v12;
  if (v10 == v15)
  {
    v31 = *(v9 + 48);

    return v31(v30);
  }

  else
  {
    v33 = *(((v19 + v30) & 0xFFFFFFFFFFFFFFFCLL) + 16);
    if (v33 > 2)
    {
      return (v33 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_23E8E3A38(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_23E9006D4();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 64);
  v15 = *(v12 + 80);
  v16 = *(v12 + 64);
  if (v13)
  {
    v17 = v13 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v17 <= v11)
  {
    v18 = *(v10 + 84);
  }

  else
  {
    v18 = v17;
  }

  if (v13 > v18)
  {
    v18 = *(v12 + 84);
  }

  if (v18 <= 0xFD)
  {
    v18 = 253;
  }

  if (v13)
  {
    v19 = *(v12 + 64);
  }

  else
  {
    v19 = v16 + 1;
  }

  v20 = v19 + v15;
  v21 = v16 + 3;
  v22 = ((v21 + ((v20 + ((v15 + 8 + ((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & ~v15)) & 0xFFFFFFFFFFFFFFFCLL) + 17;
  if (v18 < a3)
  {
    if (v22 <= 3)
    {
      v23 = ((a3 - v18 + 255) >> 8) + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v9 = v24;
    }

    else
    {
      v9 = 0;
    }
  }

  if (v18 < a2)
  {
    v25 = ~v18 + a2;
    bzero(a1, ((v21 + ((v20 + ((v15 + 8 + ((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & ~v15)) & 0xFFFFFFFFFFFFFFFCLL) + 17);
    if (v22 <= 3)
    {
      v26 = (v25 >> 8) + 1;
    }

    else
    {
      v26 = 1;
    }

    if (v22 <= 3)
    {
      *a1 = v25;
      if (v9 > 1)
      {
LABEL_32:
        if (v9 == 2)
        {
          *&a1[v22] = v26;
        }

        else
        {
          *&a1[v22] = v26;
        }

        return;
      }
    }

    else
    {
      *a1 = v25;
      if (v9 > 1)
      {
        goto LABEL_32;
      }
    }

    if (v9)
    {
      a1[v22] = v26;
    }

    return;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

LABEL_43:
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (v9 == 2)
  {
    *&a1[v22] = 0;
    goto LABEL_43;
  }

  *&a1[v22] = 0;
  if (!a2)
  {
    return;
  }

LABEL_44:
  if (v11 == v18)
  {
    v27 = *(v10 + 56);

    v27(a1, a2, v11, v8);
  }

  else
  {
    v28 = (v15 + 8 + (((&a1[v14 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
    if (v17 == v18)
    {
      v29 = *(v12 + 56);
      v30 = (a2 + 1);
    }

    else
    {
      v28 = (v20 + v28) & ~v15;
      if (v13 != v18)
      {
        v31 = (v21 + v28) & 0xFFFFFFFFFFFFFFFCLL;
        if (a2 > 0xFD)
        {
          *(v31 + 16) = 0;
          *v31 = (a2 - 254);
          *(v31 + 8) = 0;
        }

        else
        {
          *(v31 + 16) = -a2;
        }

        return;
      }

      v29 = *(v12 + 56);
      v30 = a2;
    }

    v29(v28, v30);
  }
}

uint64_t RenderActionsFileLogger.__allocating_init(directoryURL:queue:)(uint64_t a1, void *a2)
{
  swift_allocObject();
  v4 = sub_23E8E5768(a1, a2);

  return v4;
}

uint64_t RenderActionsFileLogger.init(directoryURL:queue:)(uint64_t a1, void *a2)
{
  v3 = sub_23E8E5768(a1, a2);

  return v3;
}

uint64_t RenderActionsFileLogger.deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_lock);
  os_unfair_lock_lock(*(v1 + 16));
  sub_23E8E4F88(v0);
  os_unfair_lock_unlock(*(v1 + 16));
  v2 = OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_directoryURL;
  v3 = sub_23E9005E4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_formatter);

  sub_23E8E59CC(*(v0 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_state));
  return v0;
}

Swift::Void __swiftcall RenderActionsFileLogger.deactivate()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_lock);
  os_unfair_lock_lock(*(v1 + 16));
  sub_23E8E4F88(v0);
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

uint64_t RenderActionsFileLogger.__deallocating_deinit()
{
  RenderActionsFileLogger.deinit();

  return swift_deallocClassInstance();
}

id sub_23E8E3F80(uint64_t a1, uint64_t a2)
{
  v70 = a1;
  v71 = a2;
  v77 = *MEMORY[0x277D85DE8];
  v2 = sub_23E900574();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23E9005E4();
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v69 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v68 = &v67 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v67 - v11;
  v74 = objc_opt_self();
  v13 = [v74 defaultManager];
  sub_23E9005C4();
  v14 = sub_23E900854();

  v15 = [v13 fileExistsAtPath_];

  if ((v15 & 1) == 0)
  {
    v16 = [v74 defaultManager];
    v17 = sub_23E9005A4();
    v75 = 0;
    v18 = [v16 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:&v75];

    if (!v18)
    {
      v45 = v75;
      sub_23E900564();

      swift_willThrow();
      return v45;
    }

    v19 = v75;
  }

  v20 = [objc_opt_self() mainBundle];
  v21 = [v20 bundleIdentifier];

  if (v21)
  {
    v22 = sub_23E900884();
    v24 = v23;
  }

  else
  {
    v24 = 0xE700000000000000;
    v22 = 0x6E776F6E6B6E75;
  }

  v75 = 0;
  v76 = 0xE000000000000000;
  sub_23E900CB4();

  v75 = 0x4B79616C50726941;
  v76 = 0xEB000000002D7469;
  MEMORY[0x23EF17600](v22, v24);

  MEMORY[0x23EF17600](45, 0xE100000000000000);
  MEMORY[0x23EF17600](v70, v71);
  MEMORY[0x23EF17600](1735355438, 0xE400000000000000);
  (*(v3 + 104))(v5, *MEMORY[0x277CC91D8], v2);
  sub_23E882570();
  sub_23E9005D4();
  (*(v3 + 8))(v5, v2);

  v25 = [v74 defaultManager];
  sub_23E9005C4();
  v26 = sub_23E900854();

  v27 = [v25 fileExistsAtPath_];

  p_prots = &OBJC_PROTOCOL___RWIProtocolCSSDomainHandler.prots;
  v30 = v72;
  v29 = v73;
  if (v27)
  {
    goto LABEL_15;
  }

  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v31 = sub_23E900764();
  __swift_project_value_buffer(v31, qword_27E367168);
  v32 = v68;
  (*(v30 + 16))(v68, v12, v29);
  v33 = sub_23E900744();
  v34 = sub_23E900B14();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = v32;
    v37 = swift_slowAlloc();
    v75 = v37;
    *v35 = 136315138;
    v38 = sub_23E9005C4();
    v40 = v39;
    v41 = *(v72 + 8);
    v41(v36, v73);
    v42 = v38;
    p_prots = (&OBJC_PROTOCOL___RWIProtocolCSSDomainHandler + 16);
    v43 = sub_23E887B9C(v42, v40, &v75);
    v30 = v72;

    *(v35 + 4) = v43;
    _os_log_impl(&dword_23E879000, v33, v34, "Attempting to create new file at %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x23EF18560](v37, -1, -1);
    v44 = v35;
    v29 = v73;
    MEMORY[0x23EF18560](v44, -1, -1);
  }

  else
  {

    v41 = *(v30 + 8);
    v41(v32, v29);
  }

  v45 = [v74 defaultManager];
  sub_23E9005C4();
  v46 = sub_23E900854();

  v47 = [v45 createFileAtPath:v46 contents:0 attributes:0];

  if (v47)
  {
LABEL_15:
    if (p_prots[49] != -1)
    {
      swift_once();
    }

    v48 = sub_23E900764();
    __swift_project_value_buffer(v48, qword_27E367168);
    v49 = *(v30 + 16);
    v50 = v69;
    v74 = v12;
    v49(v69, v12, v29);
    v51 = sub_23E900744();
    v52 = sub_23E900B14();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = v29;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v75 = v55;
      *v54 = 136315138;
      v56 = sub_23E9005C4();
      v57 = v50;
      v59 = v58;
      v60 = *(v30 + 8);
      v60(v57, v53);
      v61 = sub_23E887B9C(v56, v59, &v75);

      *(v54 + 4) = v61;
      _os_log_impl(&dword_23E879000, v51, v52, "Make OutputStream to %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x23EF18560](v55, -1, -1);
      MEMORY[0x23EF18560](v54, -1, -1);
    }

    else
    {

      v60 = *(v30 + 8);
      v60(v50, v29);
      v53 = v29;
    }

    v62 = v74;
    sub_23E9005C4();
    v63 = objc_allocWithZone(MEMORY[0x277CBEB78]);
    v64 = sub_23E900854();

    v45 = [v63 initToFileAtPath:v64 append:0];

    v60(v62, v53);
  }

  else
  {
    sub_23E8A7800();
    swift_allocError();
    *v65 = 4;
    swift_willThrow();
    v41(v12, v29);
  }

  return v45;
}

uint64_t sub_23E8E4814(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23E900784();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23E9007B4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_23E8E5E74;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E8906D8;
  aBlock[3] = &block_descriptor_6;
  v15 = _Block_copy(aBlock);

  sub_23E9007A4();
  v17[1] = MEMORY[0x277D84F90];
  sub_23E8E5EEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E7D0, &qword_23E903560);
  sub_23E8E5F44();
  sub_23E900C14();
  MEMORY[0x23EF17800](0, v13, v9, v15);
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
}

Swift::Void __swiftcall RenderActionsFileLogger.activate()()
{
  if (sub_23E8E59DC())
  {
    v1 = *(v0 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_lock);
    os_unfair_lock_lock(*(v1 + 16));
    if (!*(v0 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_state))
    {
      *(v0 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_state) = 1;
      sub_23E8E4814(sub_23E8E4B2C, 0);
    }

    v2 = *(v1 + 16);

    os_unfair_lock_unlock(v2);
  }
}

void sub_23E8E4B2C(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_state;
  if (*(a1 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_state) != 1)
  {
    return;
  }

  v3 = sub_23E8E3F80(0x63417265646E6552, 0xED0000736E6F6974);
  if (v3)
  {
    v31 = v3;
    v14 = v3;
    [v14 open];
    if ([v14 streamStatus] == 2)
    {

      if (qword_27E35E188 != -1)
      {
        swift_once();
      }

      v15 = sub_23E900764();
      __swift_project_value_buffer(v15, qword_27E367168);
      v16 = v14;
      v17 = sub_23E900744();
      v18 = sub_23E900B14();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v32[0] = v20;
        *v19 = 136446210;
        v21 = v16;
        v22 = [v21 description];
        v23 = sub_23E900884();
        v25 = v24;

        v26 = sub_23E887B9C(v23, v25, v32);

        *(v19 + 4) = v26;
        _os_log_impl(&dword_23E879000, v17, v18, "Activated Render Actions File Logger using stream: %{public}s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x23EF18560](v20, -1, -1);
        MEMORY[0x23EF18560](v19, -1, -1);
      }

      v27 = *(a1 + v1);
      *(a1 + v1) = v31;

      sub_23E8E59CC(v27);
      return;
    }

    v28 = [v14 streamError];

    if (!v28)
    {
      sub_23E8A7800();
      v28 = swift_allocError();
      *v30 = 5;
    }

    swift_willThrow();
  }

  else
  {
    sub_23E8A7800();
    v28 = swift_allocError();
    *v29 = 3;
    swift_willThrow();
  }

  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v4 = sub_23E900764();
  __swift_project_value_buffer(v4, qword_27E367168);
  v5 = v28;
  v6 = sub_23E900744();
  v7 = sub_23E900B04();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32[0] = v9;
    *v8 = 136446210;
    v10 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
    v11 = sub_23E9008D4();
    v13 = sub_23E887B9C(v11, v12, v32);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_23E879000, v6, v7, "Unable to create OutputStream for RenderActions Log: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x23EF18560](v9, -1, -1);
    MEMORY[0x23EF18560](v8, -1, -1);
  }

  else
  {
  }
}

void sub_23E8E4F88(uint64_t a1)
{
  v3 = sub_23E900784();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23E9007B4();
  v8 = MEMORY[0x28223BE20](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_state;
  v13 = *(a1 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_state);
  if (v13 >= 2)
  {
    v20[1] = *(a1 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_queue);
    v21 = v9;
    v22 = v8;
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    aBlock[4] = sub_23E8E5FE0;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23E8906D8;
    aBlock[3] = &block_descriptor_15;
    v15 = _Block_copy(aBlock);
    v24 = v1;
    v16 = v15;
    sub_23E8E5FF0(v13);
    v17 = v13;
    sub_23E9007A4();
    aBlock[7] = MEMORY[0x277D84F90];
    sub_23E8E5EEC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E7D0, &qword_23E903560);
    v23 = a1;
    sub_23E8E5F44();
    sub_23E900C14();
    MEMORY[0x23EF17800](0, v11, v6, v16);
    _Block_release(v16);
    sub_23E8E59CC(v13);
    (*(v4 + 8))(v6, v3);
    a1 = v23;
    (*(v21 + 8))(v11, v22);
  }

  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v18 = sub_23E900764();
  __swift_project_value_buffer(v18, qword_27E367168);
  sub_23E882260(0xD00000000000005DLL, 0x800000023E9095B0, 0x6176697463616564, 0xEC00000029286574);
  v19 = *(a1 + v12);
  *(a1 + v12) = 0;
  sub_23E8E59CC(v19);
}

uint64_t RenderActionsFileLogger.log(action:)(uint64_t a1)
{
  sub_23E8810DC(a1, v3);
  v1 = swift_allocObject();
  sub_23E881028(v3, v1 + 16);
  sub_23E8E4814(sub_23E8E5BF0, v1);
}

uint64_t sub_23E8E5340(uint64_t a1, void *a2)
{
  v4 = sub_23E900694();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_state);
  if (v9 >= 2)
  {
    v10 = *(a1 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_formatter);
    v9;
    sub_23E900684();
    v11 = sub_23E900664();
    (*(v5 + 8))(v8, v4);
    v12 = [v10 stringFromDate_];

    v13 = sub_23E900884();
    v15 = v14;

    v20 = 91;
    v21 = 0xE100000000000000;
    MEMORY[0x23EF17600](v13, v15);

    MEMORY[0x23EF17600](539828317, 0xE400000000000000);
    v16 = a2[3];
    v17 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v16);
    v18 = (*(v17 + 8))(v16, v17);
    MEMORY[0x23EF17600](v18);

    MEMORY[0x23EF17600](2570, 0xE200000000000000);
    sub_23E8A6F60(v20, v21);
    sub_23E8E59CC(v9);
  }

  return result;
}

uint64_t sub_23E8E56F0(uint64_t a1)
{
  sub_23E8810DC(a1, v3);
  v1 = swift_allocObject();
  sub_23E881028(v3, v1 + 16);
  sub_23E8E4814(sub_23E8E6004, v1);
}

uint64_t sub_23E8E5768(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_23E900704();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_state) = 0;
  v10 = OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_directoryURL;
  v11 = sub_23E9005E4();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v3 + v10, a1, v11);
  v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(v3 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_formatter) = v13;
  type metadata accessor for UnfairLock();
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *(v14 + 16) = v15;
  *v15 = 0;
  *(v3 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_lock) = v14;
  *(v3 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_queue) = a2;
  v16 = OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_formatter;
  v17 = *(v3 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_formatter);
  v18 = a2;
  v19 = v17;
  sub_23E9006E4();
  v20 = sub_23E9006F4();
  (*(v7 + 8))(v9, v6);
  [v19 setLocale_];

  v21 = *(v3 + v16);
  v22 = sub_23E900854();
  [v21 setDateFormat_];

  (*(v12 + 8))(a1, v11);
  return v3;
}

void sub_23E8E59CC(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_23E8E59DC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_23E900884();

    v2 = sub_23E9008E4();

    v1 = (v2 + 32);
  }

  v3 = [objc_opt_self() isInternal_];
  swift_unknownObjectRelease();
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = sub_23E900854();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_23E900C04();
    swift_unknownObjectRelease();
    sub_23E897508(&v12, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_23E8974A0(v13);
  v8 = [v4 standardUserDefaults];
  v9 = sub_23E900854();
  v10 = [v8 BOOLForKey_];

  if (v7)
  {
    return v10;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23E8E5BB8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t type metadata accessor for RenderActionsFileLogger(uint64_t a1)
{
  result = qword_27E35F578;
  if (!qword_27E35F578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E8E5C4C(uint64_t a1)
{
  result = sub_23E9005E4();
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

uint64_t get_enum_tag_for_layout_string_10AirPlayKit23RenderActionsFileLoggerC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23E8E5D54(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_23E8E5DA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_23E8E5E04(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_23E8E5E34()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_23E8E5E74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_lock);
  os_unfair_lock_lock(*(v3 + 16));
  v2(v1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23E8E5EEC()
{
  result = qword_27E35E7C8;
  if (!qword_27E35E7C8)
  {
    sub_23E900784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E7C8);
  }

  return result;
}

unint64_t sub_23E8E5F44()
{
  result = qword_27E35E7D8;
  if (!qword_27E35E7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35E7D0, &qword_23E903560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E7D8);
  }

  return result;
}

uint64_t sub_23E8E5FA8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_23E8E5FF0(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void *sub_23E8E6010(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v137 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v128 - v12;
  v14 = a6;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v128 - v17;
  v19 = a1;
  v21 = v20;
  sub_23E8891B4(v19, v13, a3, a4);
  if ((*(v16 + 48))(v13, 1, v21) == 1)
  {
    sub_23E87E458(v13, a3, a4);
    v22 = v135;
    v23 = v135 + v21[16];
    v24 = *v23;
    v133 = *(v23 + 8);
    v134 = v24;
    LODWORD(v132) = *(v23 + 16);
    *&v136 = v21;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E538, &unk_23E907970);
    v148[3] = v25;
    v148[4] = sub_23E8C88E0(&unk_27E35F5E0, &qword_27E35E538, &unk_23E907970, &unk_23E9059D8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v148);
    v27 = sub_23E9006D4();
    v28 = *(v27 - 8);
    v130 = *(v28 + 16);
    v131 = v28 + 16;
    v29 = v137;
    v128 = v27;
    v130(boxed_opaque_existential_1, v137, v27);
    *(boxed_opaque_existential_1 + *(v25 + 36)) = 5;
    v30 = boxed_opaque_existential_1 + *(v25 + 40);
    v31 = v133;
    *v30 = v134;
    *(v30 + 1) = v31;
    v30[16] = v132;
    v32 = v136;
    LODWORD(v134) = *(v22 + *(v136 + 40));
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E540, &qword_23E902E10);
    v149[3] = v33;
    v129 = &unk_23E9059D8;
    v149[4] = sub_23E8C88E0(&unk_27E35F5F0, &qword_27E35E540, &qword_23E902E10, &unk_23E9059D8);
    v34 = __swift_allocate_boxed_opaque_existential_1(v149);
    v35 = v27;
    v36 = v130;
    v130(v34, v29, v35);
    *(v34 + *(v33 + 36)) = 6;
    *(v34 + *(v33 + 40)) = v134;
    v37 = *(v22 + *(v32 + 68));
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E548, &unk_23E907980);
    v150[3] = v38;
    v150[4] = sub_23E8C88E0(&unk_27E35F600, &qword_27E35E548, &unk_23E907980, &unk_23E9059D8);
    v39 = __swift_allocate_boxed_opaque_existential_1(v150);
    v40 = v137;
    v41 = v128;
    v36(v39, v137, v128);
    *(v39 + *(v38 + 36)) = 7;
    *(v39 + *(v38 + 40)) = v37;
    v42 = (v22 + *(v136 + 72));
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E550, &qword_23E902E18);
    v151[3] = v43;
    v151[4] = sub_23E8C88E0(&unk_27E35F610, &qword_27E35E550, &qword_23E902E18, v129);
    v44 = __swift_allocate_boxed_opaque_existential_1(v151);
    v45 = *v42;
    v46 = v42[1];
    v36(v44, v40, v41);
    *(v44 + *(v43 + 36)) = 9;
    v47 = (v44 + *(v43 + 40));
    v48 = MEMORY[0x277D84F90];
    *v47 = v45;
    v47[1] = v46;
    for (i = 32; i != 192; i += 40)
    {
      sub_23E8891B4(&v147[i], &v144, &qword_27E35E558, &unk_23E907990);
      v138 = v144;
      v139 = v145;
      v140 = v146;
      if (*(&v145 + 1))
      {
        sub_23E881028(&v138, v141);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v152 = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v48 = sub_23E889F50(0, v48[2] + 1, 1, v48);
          v152 = v48;
        }

        v52 = v48[2];
        v51 = v48[3];
        if (v52 >= v51 >> 1)
        {
          v48 = sub_23E889F50((v51 > 1), v52 + 1, 1, v48);
          v152 = v48;
        }

        v53 = v142;
        v54 = v143;
        v55 = __swift_mutable_project_boxed_opaque_existential_1(v141, v142);
        MEMORY[0x28223BE20](v55);
        v57 = &v128 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v58 + 16))(v57);
        sub_23E8F2C70(v52, v57, &v152, v53, v54);
        __swift_destroy_boxed_opaque_existential_1(v141);
      }

      else
      {
        sub_23E87E458(&v138, &qword_27E35E558, &unk_23E907990);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E558, &unk_23E907990);
    swift_arrayDestroy();
  }

  else
  {
    v59 = v135;
    v60 = v14;
    v61 = v137;
    v132 = a5;
    v133 = v60;
    sub_23E87E3F0(v13, v18, a5, v60);
    v62 = v21[16];
    v63 = &v18[v62];
    v64 = *&v18[v62];
    v65 = *&v18[v62 + 8];
    v66 = v59;
    v67 = v59 + v62;
    v68 = *v67;
    v69 = *(v67 + 8);
    v70 = *(v67 + 16);
    v71 = _s10AirPlayKit5ColorO2eeoiySbAC_ACtFZ_0(v64, v65, v63[16], *v67, v69, v70);
    v134 = v18;
    if (v71)
    {
      v72 = MEMORY[0x277D84F90];
      v73 = v61;
    }

    else
    {
      *&v136 = v21;
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E538, &unk_23E907970);
      *(&v145 + 1) = v74;
      v146 = sub_23E8C88E0(&unk_27E35F5E0, &qword_27E35E538, &unk_23E907970, &unk_23E9059D8);
      v75 = __swift_allocate_boxed_opaque_existential_1(&v144);
      v76 = sub_23E9006D4();
      (*(*(v76 - 8) + 16))(v75, v61, v76);
      *(v75 + *(v74 + 36)) = 5;
      v77 = v75 + *(v74 + 40);
      *v77 = v68;
      *(v77 + 1) = v69;
      v77[16] = v70;
      v72 = sub_23E88A098(0, 1, 1, MEMORY[0x277D84F90]);
      v79 = v72[2];
      v78 = v72[3];
      if (v79 >= v78 >> 1)
      {
        v72 = sub_23E88A098((v78 > 1), v79 + 1, 1, v72);
      }

      v72[2] = v79 + 1;
      v80 = &v72[5 * v79];
      v81 = v144;
      v82 = v145;
      v80[8] = v146;
      *(v80 + 2) = v81;
      *(v80 + 3) = v82;
      v18 = v134;
      v73 = v61;
      v21 = v136;
    }

    v83 = v21[10];
    v84 = v66;
    v85 = *(v66 + v83);
    if ((sub_23E89A140(v18[v83], v85) & 1) == 0)
    {
      v86 = v72;
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E540, &qword_23E902E10);
      *(&v145 + 1) = v87;
      v146 = sub_23E8C88E0(&unk_27E35F5F0, &qword_27E35E540, &qword_23E902E10, &unk_23E9059D8);
      v88 = __swift_allocate_boxed_opaque_existential_1(&v144);
      v89 = sub_23E9006D4();
      (*(*(v89 - 8) + 16))(v88, v73, v89);
      *(v88 + *(v87 + 36)) = 6;
      v90 = *(v87 + 40);
      v72 = v86;
      *(v88 + v90) = v85;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_23E88A098(0, v86[2] + 1, 1, v86);
      }

      v92 = v72[2];
      v91 = v72[3];
      v18 = v134;
      if (v92 >= v91 >> 1)
      {
        v72 = sub_23E88A098((v91 > 1), v92 + 1, 1, v72);
      }

      v72[2] = v92 + 1;
      v93 = &v72[5 * v92];
      v94 = v144;
      v95 = v145;
      v93[8] = v146;
      *(v93 + 2) = v94;
      *(v93 + 3) = v95;
    }

    v96 = v21[17];
    v97 = *(v66 + v96);
    if (*&v18[v96] != v97)
    {
      v98 = v21;
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E548, &unk_23E907980);
      *(&v145 + 1) = v99;
      v146 = sub_23E8C88E0(&unk_27E35F600, &qword_27E35E548, &unk_23E907980, &unk_23E9059D8);
      v100 = __swift_allocate_boxed_opaque_existential_1(&v144);
      v101 = sub_23E9006D4();
      (*(*(v101 - 8) + 16))(v100, v73, v101);
      *(v100 + *(v99 + 36)) = 7;
      *(v100 + *(v99 + 40)) = v97;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_23E88A098(0, v72[2] + 1, 1, v72);
      }

      v103 = v72[2];
      v102 = v72[3];
      v21 = v98;
      if (v103 >= v102 >> 1)
      {
        v72 = sub_23E88A098((v102 > 1), v103 + 1, 1, v72);
      }

      v72[2] = v103 + 1;
      v104 = &v72[5 * v103];
      v105 = v144;
      v106 = v145;
      v104[8] = v146;
      *(v104 + 2) = v105;
      *(v104 + 3) = v106;
    }

    v107 = v21[18];
    if ((vminv_u16(vmovn_s32(vceqq_f32(*&v18[v107], *(v84 + v107)))) & 1) == 0)
    {
      v136 = *(v84 + v107);
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E550, &qword_23E902E18);
      *(&v145 + 1) = v108;
      v146 = sub_23E8C88E0(&unk_27E35F610, &qword_27E35E550, &qword_23E902E18, &unk_23E9059D8);
      v109 = __swift_allocate_boxed_opaque_existential_1(&v144);
      v110 = sub_23E9006D4();
      (*(*(v110 - 8) + 16))(v109, v73, v110);
      *(v109 + *(v108 + 36)) = 9;
      *(v109 + *(v108 + 40)) = v136;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_23E88A098(0, v72[2] + 1, 1, v72);
      }

      v112 = v72[2];
      v111 = v72[3];
      if (v112 >= v111 >> 1)
      {
        v72 = sub_23E88A098((v111 > 1), v112 + 1, 1, v72);
      }

      v72[2] = v112 + 1;
      v113 = &v72[5 * v112];
      v114 = v144;
      v115 = v145;
      v113[8] = v146;
      *(v113 + 2) = v114;
      *(v113 + 3) = v115;
    }

    v116 = v72[2];
    v137 = v72;
    if (v116)
    {
      v117 = (v72 + 4);
      v48 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8891B4(v117, &v144, &qword_27E35E558, &unk_23E907990);
        v138 = v144;
        v139 = v145;
        v140 = v146;
        if (*(&v145 + 1))
        {
          sub_23E881028(&v138, v141);
          v118 = swift_isUniquelyReferenced_nonNull_native();
          v152 = v48;
          if ((v118 & 1) == 0)
          {
            v48 = sub_23E889F50(0, v48[2] + 1, 1, v48);
            v152 = v48;
          }

          v120 = v48[2];
          v119 = v48[3];
          if (v120 >= v119 >> 1)
          {
            v48 = sub_23E889F50((v119 > 1), v120 + 1, 1, v48);
            v152 = v48;
          }

          v121 = v142;
          v122 = v143;
          v123 = __swift_mutable_project_boxed_opaque_existential_1(v141, v142);
          MEMORY[0x28223BE20](v123);
          v125 = &v128 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v126 + 16))(v125);
          sub_23E8F2C70(v120, v125, &v152, v121, v122);
          __swift_destroy_boxed_opaque_existential_1(v141);
        }

        else
        {
          sub_23E87E458(&v138, &qword_27E35E558, &unk_23E907990);
        }

        v117 += 40;
        --v116;
      }

      while (v116);
    }

    else
    {
      v48 = MEMORY[0x277D84F90];
    }

    sub_23E87E458(v134, v132, v133);
  }

  return v48;
}

void *sub_23E8E6D48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v10 = a3;
  v93 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v89 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v88 = &v81 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v86 = &v81 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v81 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v81 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v25 = v24[11];
  v96 = v6;
  v97 = a4;
  v26 = v6 + v25;
  v27 = *(v26 + 8);
  v87 = *v26;
  v83 = *(v26 + 16) | (*(v26 + 20) << 32);
  v84 = *(v26 + 21);
  v85 = v27;
  sub_23E8891B4(a1, v23, v10, a4);
  v28 = *(v24 - 1);
  v29 = *(v28 + 48);
  v94 = v28 + 48;
  v95 = v29;
  v30 = v29(v23, 1, v24);
  v90 = a1;
  v91 = a5;
  v92 = a6;
  if (v30 == 1)
  {
    sub_23E87E458(v23, v10, v97);
    v31 = 0;
    v32 = 0;
    v33 = 0xFF0000000000;
  }

  else
  {
    v34 = &v23[v24[11]];
    v31 = *v34;
    v32 = *(v34 + 1);
    v35 = *(v34 + 4) | (v34[20] << 32);
    v82 = v10;
    v36 = v34[21];
    sub_23E8811D8(v31, v32, v35, v34[21]);
    sub_23E87E458(v23, a5, a6);
    v33 = v35 | (v36 << 40);
    a1 = v90;
    v10 = v82;
  }

  v87 = sub_23E8E7358(v31, v32, v33 & 0xFFFFFFFFFFFFLL, v93, 0, v87, v85, v83 & 0xFFFFFFFFFFLL | (v84 << 40));
  sub_23E881140(v31, v32, v33);
  v37 = v96 + v24[12];
  v38 = *v37;
  v39 = *(v37 + 8) | (*(v37 + 12) << 32);
  v40 = *(v37 + 13);
  sub_23E8891B4(a1, v21, v10, v97);
  if (v95(v21, 1, v24) == 1)
  {
    sub_23E87E458(v21, v10, v97);
    v41 = 0;
    v42 = 0xFF0000000000;
  }

  else
  {
    v43 = &v21[v24[12]];
    v41 = *v43;
    v44 = *(v43 + 2) | (v43[12] << 32);
    v45 = v43[13];
    sub_23E881208(*v43, v44, v43[13]);
    sub_23E87E458(v21, v91, v92);
    v42 = v44 | (v45 << 40);
    a1 = v90;
  }

  v46 = v39 & 0xFFFFFFFFFFLL | (v40 << 40);
  v47 = v93;
  v85 = sub_23E8E7794(v41, v42 & 0xFFFFFFFFFFFFLL, v93, 1, v38, v46);
  sub_23E88116C(v41, v42);
  v48 = v96 + v24[13];
  v49 = *v48;
  v50 = *(v48 + 8);
  v51 = v86;
  sub_23E8891B4(a1, v86, v10, v97);
  if (v95(v51, 1, v24) == 1)
  {
    sub_23E87E458(v51, v10, v97);
    v52 = 0;
    v53 = -1;
  }

  else
  {
    v54 = &v51[v24[13]];
    v52 = *v54;
    v53 = v54[8];
    sub_23E8811F0(*v54, v53);
    sub_23E87E458(v51, v91, v92);
  }

  v86 = sub_23E8E7BB8(v52, v53, v47, 3, v49, v50);
  sub_23E881198(v52, v53);
  v55 = v96 + v24[14];
  v56 = *v55;
  v84 = *(v55 + 8);
  v57 = *(v55 + 16);
  v58 = *(v55 + 24);
  v59 = v88;
  sub_23E8891B4(a1, v88, v10, v97);
  if (v95(v59, 1, v24) == 1)
  {
    sub_23E87E458(v59, v10, v97);
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 255;
  }

  else
  {
    v64 = v59 + v24[14];
    v65 = v57;
    v66 = v56;
    v67 = v59;
    v60 = *v64;
    v61 = *(v64 + 8);
    v62 = *(v64 + 16);
    v63 = *(v64 + 24);
    sub_23E8811D8(*v64, v61, v62, *(v64 + 24));
    v68 = v67;
    v56 = v66;
    v57 = v65;
    sub_23E87E458(v68, v91, v92);
  }

  v80 = v57;
  v69 = v93;
  v70 = sub_23E8E8028(v60, v61, v62, v63, v93, 2, v56, v84, v80, v58);
  sub_23E8811C4(v60, v61, v62, v63);
  v71 = v96 + v24[15];
  v72 = *v71;
  v73 = *(v71 + 8);
  v74 = v89;
  sub_23E8891B4(v90, v89, v10, v97);
  if (v95(v74, 1, v24) == 1)
  {
    sub_23E87E458(v74, v10, v97);
    v75 = 0;
    v76 = -1;
  }

  else
  {
    v77 = v74 + v24[15];
    v75 = *v77;
    v76 = *(v77 + 8);
    sub_23E8811F0(*v77, v76);
    sub_23E87E458(v74, v91, v92);
  }

  v78 = sub_23E8E84DC(v75, v76, v69, 8, v72, v73);
  sub_23E881198(v75, v76);
  v98 = v87;
  sub_23E8EBFB4(v85);
  sub_23E8EBFB4(v86);
  sub_23E8EBFB4(v70);
  sub_23E8EBFB4(v78);
  return v98;
}

void *sub_23E8E7358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v11 = a5;
  v13 = a8 >> 40;
  if ((~a3 & 0xFF0000000000) != 0)
  {
    v14 = a3;
    sub_23E8811D8(a6, a7, a8, BYTE5(a8));
    LOBYTE(v14) = sub_23E89B274(a1, a2, v14 & 0xFFFFFFFFFFFFLL, a6, a7, a8 & 0xFFFFFFFFFFFFLL);
    sub_23E881154(a6, a7, a8, v13);
    if (v14)
    {
      return MEMORY[0x277D84F90];
    }
  }

  if (v13)
  {
    *&v40 = a6;

    sub_23E8F1580(&v40, &unk_27E35F6F0, qword_23E903D18, sub_23E8F2C34);
    if (v13 == 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    v17 = sub_23E8ED92C(v40, a4, v11, v18);
  }

  else
  {
    v19 = HIDWORD(a8);
    *(&v20 + 1) = a8;
    *&v20 = a7;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F6E0, &unk_23E907A00);
    v43[3] = v21;
    v43[4] = sub_23E8C88E0(&qword_27E35F6E8, &qword_27E35F6E0, &unk_23E907A00, &unk_23E9059D8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
    v23 = sub_23E9006D4();
    (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, a4, v23);
    *(boxed_opaque_existential_1 + *(v21 + 36)) = v11;
    v24 = boxed_opaque_existential_1 + *(v21 + 40);
    *v24 = a6;
    v24[8] = a7;
    *(v24 + 12) = v20 >> 32;
    v24[20] = v19;
    sub_23E8891B4(v43, &v40, &qword_27E35E558, &unk_23E907990);
    v35[1] = v41;
    v35[0] = v40;
    v36 = v42;
    if (*(&v41 + 1))
    {
      sub_23E881028(v35, v37);
      v17 = MEMORY[0x277D84F90];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35[0] = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_23E889F50(0, v17[2] + 1, 1, v17);
        *&v35[0] = v17;
      }

      v27 = v17[2];
      v26 = v17[3];
      if (v27 >= v26 >> 1)
      {
        v17 = sub_23E889F50((v26 > 1), v27 + 1, 1, v17);
        *&v35[0] = v17;
      }

      v28 = v38;
      v29 = v39;
      v30 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
      MEMORY[0x28223BE20](v30);
      v32 = v35 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v33 + 16))(v32);
      sub_23E8F2C70(v27, v32, v35, v28, v29);
      __swift_destroy_boxed_opaque_existential_1(v37);
    }

    else
    {
      sub_23E87E458(v35, &qword_27E35E558, &unk_23E907990);
      v17 = MEMORY[0x277D84F90];
    }

    sub_23E87E458(v43, &qword_27E35E558, &unk_23E907990);
  }

  return v17;
}

void *sub_23E8E7794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = a4;
  v10 = a6 >> 40;
  if ((~a2 & 0xFF0000000000) != 0)
  {
    v11 = a2;
    sub_23E881208(a5, a6, BYTE5(a6));
    LOBYTE(v11) = sub_23E89B474(a1, v11 & 0xFFFFFFFFFFFFLL, a5, a6 & 0xFFFFFFFFFFFFLL);
    sub_23E881180(a5, a6, v10);
    if (v11)
    {
      return MEMORY[0x277D84F90];
    }
  }

  if (v10)
  {
    *&v34 = a5;

    sub_23E8F1580(&v34, &unk_27E35F6C0, &qword_23E9069E0, sub_23E8F2C20);
    if (v10 == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    v13 = sub_23E8ED310(v34, a3, v8, v14);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F6B0, &qword_23E9079F0);
    v37[3] = v15;
    v37[4] = sub_23E8C88E0(&qword_27E35F6B8, &qword_27E35F6B0, &qword_23E9079F0, &unk_23E9059D8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
    v17 = sub_23E9006D4();
    (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, a3, v17);
    *(boxed_opaque_existential_1 + *(v15 + 36)) = v8;
    v18 = boxed_opaque_existential_1 + *(v15 + 40);
    *v18 = a5;
    v18[4] = BYTE4(a5);
    *(v18 + 2) = a6;
    v18[12] = BYTE4(a6);
    sub_23E8891B4(v37, &v34, &qword_27E35E558, &unk_23E907990);
    v29[1] = v35;
    v29[0] = v34;
    v30 = v36;
    if (*(&v35 + 1))
    {
      sub_23E881028(v29, v31);
      v13 = MEMORY[0x277D84F90];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v29[0] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_23E889F50(0, v13[2] + 1, 1, v13);
        *&v29[0] = v13;
      }

      v21 = v13[2];
      v20 = v13[3];
      if (v21 >= v20 >> 1)
      {
        v13 = sub_23E889F50((v20 > 1), v21 + 1, 1, v13);
        *&v29[0] = v13;
      }

      v22 = v32;
      v23 = v33;
      v24 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
      MEMORY[0x28223BE20](v24);
      v26 = v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v26);
      sub_23E8F2C70(v21, v26, v29, v22, v23);
      __swift_destroy_boxed_opaque_existential_1(v31);
    }

    else
    {
      sub_23E87E458(v29, &qword_27E35E558, &unk_23E907990);
      v13 = MEMORY[0x277D84F90];
    }

    sub_23E87E458(v37, &qword_27E35E558, &unk_23E907990);
  }

  return v13;
}

void *sub_23E8E7BB8(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v7 = a4;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (a6)
      {
        if (a6 == 1)
        {
LABEL_18:
          *&v35 = a5;

          sub_23E8F1580(&v35, &unk_27E35F690, &unk_23E906F50, sub_23E8F2C0C);
          v13 = v35;
          v14 = a3;
          v15 = v7;
          v16 = 1;
LABEL_26:
          v12 = sub_23E8ECCF4(v13, v14, v15, v16);

          return v12;
        }

        v10 = a1;

        LOBYTE(v10) = sub_23E8DD588(v10, a5);
        sub_23E8811AC(a5, 2u);
        if (v10)
        {
          return MEMORY[0x277D84F90];
        }

LABEL_25:
        *&v35 = a5;

        sub_23E8F1580(&v35, &unk_27E35F690, &unk_23E906F50, sub_23E8F2C0C);
        v13 = v35;
        v14 = a3;
        v15 = v7;
        v16 = 2;
        goto LABEL_26;
      }
    }

    else
    {
      v9 = a6;
      if (a6)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (!a2)
    {
      v9 = a6;
      if (!a6)
      {
        if (*&a1 != *&a5 || *(&a1 + 1) != *(&a5 + 1))
        {
          goto LABEL_19;
        }

        return MEMORY[0x277D84F90];
      }

LABEL_17:
      if (v9 == 1)
      {
        goto LABEL_18;
      }

      goto LABEL_25;
    }

    if (a6)
    {
      if (a6 == 1)
      {
        v11 = a1;

        LOBYTE(v11) = sub_23E8DD588(v11, a5);
        sub_23E8811AC(a5, 1u);
        if (v11)
        {
          return MEMORY[0x277D84F90];
        }

        goto LABEL_18;
      }

      goto LABEL_25;
    }
  }

LABEL_19:
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F680, &unk_23E9079D0);
  v38[3] = v17;
  v38[4] = sub_23E8C88E0(&qword_27E35F688, &qword_27E35F680, &unk_23E9079D0, &unk_23E9059D8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  v19 = sub_23E9006D4();
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, a3, v19);
  *(boxed_opaque_existential_1 + *(v17 + 36)) = v7;
  *(boxed_opaque_existential_1 + *(v17 + 40)) = a5;
  sub_23E8891B4(v38, &v35, &qword_27E35E558, &unk_23E907990);
  v30[1] = v36;
  v30[0] = v35;
  v31 = v37;
  if (*(&v36 + 1))
  {
    sub_23E881028(v30, v32);
    v12 = MEMORY[0x277D84F90];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v30[0] = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_23E889F50(0, v12[2] + 1, 1, v12);
      *&v30[0] = v12;
    }

    v22 = v12[2];
    v21 = v12[3];
    if (v22 >= v21 >> 1)
    {
      v12 = sub_23E889F50((v21 > 1), v22 + 1, 1, v12);
      *&v30[0] = v12;
    }

    v23 = v33;
    v24 = v34;
    v25 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
    MEMORY[0x28223BE20](v25);
    v27 = v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v27);
    sub_23E8F2C70(v22, v27, v30, v23, v24);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    sub_23E87E458(v30, &qword_27E35E558, &unk_23E907990);
    v12 = MEMORY[0x277D84F90];
  }

  sub_23E87E458(v38, &qword_27E35E558, &unk_23E907990);
  return v12;
}

void *sub_23E8E8028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v37 = a6;
  v13 = a4;
  v17 = ~a4;
  sub_23E8811D8(a7, a8, a9, a10);
  if (v17)
  {
    sub_23E8F2D08(a1, a2, a3, v13);
    v18 = sub_23E89B5D4(a1, a2, a3, v13, a7, a8, a9, a10);
    sub_23E881154(a7, a8, a9, a10);
    sub_23E8811C4(a1, a2, a3, v13);
    if (v18)
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    sub_23E8811C4(a1, a2, a3, 0xFFu);
    sub_23E8811C4(a7, a8, a9, a10);
  }

  if (!a10)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F650, &qword_23E9079C0);
    v46[3] = v21;
    v46[4] = sub_23E8C88E0(&qword_27E35F658, &qword_27E35F650, &qword_23E9079C0, &unk_23E9059D8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
    v23 = sub_23E9006D4();
    (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, a5, v23);
    *(boxed_opaque_existential_1 + *(v21 + 36)) = v37;
    v24 = (boxed_opaque_existential_1 + *(v21 + 40));
    *v24 = a7;
    v24[1] = a8;
    v24[2] = a9;
    sub_23E8891B4(v46, &v43, &qword_27E35E558, &unk_23E907990);
    v38[1] = v44;
    v38[0] = v43;
    v39 = v45;
    if (*(&v44 + 1))
    {
      sub_23E881028(v38, v40);
      v19 = MEMORY[0x277D84F90];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v38[0] = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_23E889F50(0, v19[2] + 1, 1, v19);
        *&v38[0] = v19;
      }

      v27 = v19[2];
      v26 = v19[3];
      if (v27 >= v26 >> 1)
      {
        v19 = sub_23E889F50((v26 > 1), v27 + 1, 1, v19);
        *&v38[0] = v19;
      }

      v28 = v41;
      v29 = v42;
      v30 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
      MEMORY[0x28223BE20](v30);
      v32 = &v36 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v33 + 16))(v32);
      sub_23E8F2C70(v27, v32, v38, v28, v29);
      __swift_destroy_boxed_opaque_existential_1(v40);
    }

    else
    {
      sub_23E87E458(v38, &qword_27E35E558, &unk_23E907990);
      v19 = MEMORY[0x277D84F90];
    }

    sub_23E87E458(v46, &qword_27E35E558, &unk_23E907990);
    return v19;
  }

  *&v43 = a7;

  sub_23E8F1580(&v43, &unk_27E35F660, &unk_23E9069D0, sub_23E8F2BF8);
  if (a10 == 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  v34 = sub_23E8EC6D8(v43, a5, v37, v20);

  return v34;
}

void *sub_23E8E84DC(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v7 = a4;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (a6)
      {
        if (a6 == 1)
        {
LABEL_17:
          *&v35 = a5;

          sub_23E8F1580(&v35, &unk_27E35F620, &qword_23E9050B0, sub_23E8F2BE4);
          v13 = v35;
          v14 = a3;
          v15 = v7;
          v16 = 1;
LABEL_19:
          v12 = sub_23E8EC0BC(v13, v14, v15, v16);

          return v12;
        }

        v10 = a1;

        LOBYTE(v10) = sub_23E8DCD90(v10, a5);
        sub_23E8811AC(a5, 2u);
        if (v10)
        {
          return MEMORY[0x277D84F90];
        }

LABEL_18:
        *&v35 = a5;

        sub_23E8F1580(&v35, &unk_27E35F620, &qword_23E9050B0, sub_23E8F2BE4);
        v13 = v35;
        v14 = a3;
        v15 = v7;
        v16 = 2;
        goto LABEL_19;
      }
    }

    else
    {
      v9 = a6;
      if (a6)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (!a2)
    {
      v9 = a6;
      if (!a6)
      {
        if (*&a1 != *&a5)
        {
          goto LABEL_20;
        }

        return MEMORY[0x277D84F90];
      }

LABEL_16:
      if (v9 == 1)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    if (a6)
    {
      if (a6 == 1)
      {
        v11 = a1;

        LOBYTE(v11) = sub_23E8DCD90(v11, a5);
        sub_23E8811AC(a5, 1u);
        if (v11)
        {
          return MEMORY[0x277D84F90];
        }

        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

LABEL_20:
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E548, &unk_23E907980);
  v38[3] = v17;
  v38[4] = sub_23E8C88E0(&unk_27E35F600, &qword_27E35E548, &unk_23E907980, &unk_23E9059D8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  v19 = sub_23E9006D4();
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, a3, v19);
  *(boxed_opaque_existential_1 + *(v17 + 36)) = v7;
  *(boxed_opaque_existential_1 + *(v17 + 40)) = a5;
  sub_23E8891B4(v38, &v35, &qword_27E35E558, &unk_23E907990);
  v30[1] = v36;
  v30[0] = v35;
  v31 = v37;
  if (*(&v36 + 1))
  {
    sub_23E881028(v30, v32);
    v12 = MEMORY[0x277D84F90];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v30[0] = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_23E889F50(0, v12[2] + 1, 1, v12);
      *&v30[0] = v12;
    }

    v22 = v12[2];
    v21 = v12[3];
    if (v22 >= v21 >> 1)
    {
      v12 = sub_23E889F50((v21 > 1), v22 + 1, 1, v12);
      *&v30[0] = v12;
    }

    v23 = v33;
    v24 = v34;
    v25 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
    MEMORY[0x28223BE20](v25);
    v27 = v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v27);
    sub_23E8F2C70(v22, v27, v30, v23, v24);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    sub_23E87E458(v30, &qword_27E35E558, &unk_23E907990);
    v12 = MEMORY[0x277D84F90];
  }

  sub_23E87E458(v38, &qword_27E35E558, &unk_23E907990);
  return v12;
}

void *sub_23E8E8934(void *a1, void *a2)
{
  v84 = a1;
  v3 = v2;
  v81 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v80 = &v78[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F708, &qword_23E907A28);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v78[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F710, &qword_23E907A30);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v85 = &v78[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v78[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v78[-v17];
  v82 = v3;
  sub_23E8891B4(v3, &v78[-v17], &qword_27E35E430, &unk_23E902C80);
  (*(v5 + 56))(v18, 0, 1, v4);
  v19 = *(v8 + 56);
  sub_23E8891B4(v18, v10, &qword_27E35F710, &qword_23E907A30);
  sub_23E8891B4(v84, &v10[v19], &qword_27E35F710, &qword_23E907A30);
  v20 = *(v5 + 48);
  if (v20(v10, 1, v4) == 1)
  {
    sub_23E87E458(v18, &qword_27E35F710, &qword_23E907A30);
    if (v20(&v10[v19], 1, v4) == 1)
    {
      sub_23E87E458(v10, &qword_27E35F710, &qword_23E907A30);
      return MEMORY[0x277D84F90];
    }

    goto LABEL_6;
  }

  sub_23E8891B4(v10, v16, &qword_27E35F710, &qword_23E907A30);
  if (v20(&v10[v19], 1, v4) == 1)
  {
    sub_23E87E458(v18, &qword_27E35F710, &qword_23E907A30);
    sub_23E87E458(v16, &qword_27E35E430, &unk_23E902C80);
LABEL_6:
    sub_23E87E458(v10, &qword_27E35F708, &qword_23E907A28);
    goto LABEL_7;
  }

  v50 = v80;
  sub_23E87E3F0(&v10[v19], v80, &qword_27E35E430, &unk_23E902C80);
  v79 = sub_23E8EB850(v16, v50);
  sub_23E87E458(v50, &qword_27E35E430, &unk_23E902C80);
  sub_23E87E458(v18, &qword_27E35F710, &qword_23E907A30);
  sub_23E87E458(v16, &qword_27E35E430, &unk_23E902C80);
  sub_23E87E458(v10, &qword_27E35F710, &qword_23E907A30);
  if (v79)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_7:
  v21 = v82 + *(v4 + 36);
  v22 = *(v21 + 8);
  v23 = *(v21 + 16);
  v24 = *(v21 + 24);
  v25 = *(v21 + 32);
  v26 = *(v21 + 40);
  LOBYTE(v93) = *v21;
  *(&v93 + 1) = v22;
  v94 = v23;
  v95 = v24;
  v96 = v25;
  v97 = v26;
  v27 = v85;
  sub_23E8891B4(v84, v85, &qword_27E35F710, &qword_23E907A30);
  v28 = v20(v27, 1, v4);
  v29 = v83;
  if (v28 == 1)
  {

    sub_23E87E458(v27, &qword_27E35F710, &qword_23E907A30);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v87 = 0;
    v91 = 0;
  }

  else
  {
    v34 = v27 + *(v4 + 36);
    v30 = *(v34 + 1);
    v31 = *(v34 + 2);
    v32 = *(v34 + 3);
    v35 = *(v34 + 16);
    v33 = *(v34 + 5);
    LOBYTE(v87) = *v34;
    LOWORD(v91) = v35;

    sub_23E87E458(v27, &qword_27E35E430, &unk_23E902C80);
  }

  v88 = v30;
  v89 = v31;
  v90 = v32;
  v92 = v33;
  v36 = sub_23E892C8C(&v87, v81);
  sub_23E893ADC(v87, v88, v89, v90, v91, v92);

  if (!v29)
  {
    v38 = *(v36 + 2);
    if (v38)
    {
      v39 = (v36 + 2);
      v85 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v39, &v93);
        sub_23E881028(&v93, &v87);
        v40 = v85;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v98 = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v85 = sub_23E889F50(0, v85[2] + 1, 1, v85);
          v98 = v85;
        }

        v43 = v85[2];
        v42 = v85[3];
        if (v43 >= v42 >> 1)
        {
          v85 = sub_23E889F50((v42 > 1), v43 + 1, 1, v85);
          v98 = v85;
        }

        v44 = v90;
        v45 = v91;
        v46 = __swift_mutable_project_boxed_opaque_existential_1(&v87, v90);
        MEMORY[0x28223BE20](v46);
        v48 = &v78[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v49 + 16))(v48);
        sub_23E8F2C70(v43, v48, &v98, v44, v45);
        __swift_destroy_boxed_opaque_existential_1(&v87);
        v39 += 40;
        --v38;
      }

      while (v38);
    }

    else
    {

      v85 = MEMORY[0x277D84F90];
    }

    v51 = v81;
    v52 = sub_23E8E6D48(v84, v81, &qword_27E35F710, &qword_23E907A30, &qword_27E35E430, &unk_23E902C80);
    v53 = v52[2];
    if (v53)
    {
      v83 = v52;
      v54 = (v52 + 4);
      v55 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v54, &v93);
        sub_23E881028(&v93, &v87);
        v56 = swift_isUniquelyReferenced_nonNull_native();
        v98 = v55;
        if ((v56 & 1) == 0)
        {
          v55 = sub_23E889F50(0, v55[2] + 1, 1, v55);
          v98 = v55;
        }

        v58 = v55[2];
        v57 = v55[3];
        if (v58 >= v57 >> 1)
        {
          v55 = sub_23E889F50((v57 > 1), v58 + 1, 1, v55);
          v98 = v55;
        }

        v59 = v90;
        v60 = v91;
        v61 = __swift_mutable_project_boxed_opaque_existential_1(&v87, v90);
        MEMORY[0x28223BE20](v61);
        v63 = &v78[-((v62 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v64 + 16))(v63);
        sub_23E8F2C70(v58, v63, &v98, v59, v60);
        __swift_destroy_boxed_opaque_existential_1(&v87);
        v54 += 40;
        --v53;
      }

      while (v53);

      v51 = v81;
    }

    else
    {

      v55 = MEMORY[0x277D84F90];
    }

    v65 = sub_23E8E6010(v84, v51, &qword_27E35F710, &qword_23E907A30, &qword_27E35E430, &unk_23E902C80);
    v83 = 0;
    v66 = v65[2];
    if (v66)
    {
      v84 = v65;
      v67 = (v65 + 4);
      v68 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v67, &v93);
        sub_23E881028(&v93, &v87);
        v69 = swift_isUniquelyReferenced_nonNull_native();
        v98 = v68;
        if ((v69 & 1) == 0)
        {
          v68 = sub_23E889F50(0, v68[2] + 1, 1, v68);
          v98 = v68;
        }

        v71 = v68[2];
        v70 = v68[3];
        if (v71 >= v70 >> 1)
        {
          v68 = sub_23E889F50((v70 > 1), v71 + 1, 1, v68);
          v98 = v68;
        }

        v72 = v90;
        v73 = v91;
        v74 = __swift_mutable_project_boxed_opaque_existential_1(&v87, v90);
        MEMORY[0x28223BE20](v74);
        v76 = &v78[-((v75 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v77 + 16))(v76);
        sub_23E8F2C70(v71, v76, &v98, v72, v73);
        __swift_destroy_boxed_opaque_existential_1(&v87);
        v67 += 40;
        --v66;
      }

      while (v66);
    }

    else
    {

      v68 = MEMORY[0x277D84F90];
    }

    v86 = v85;
    sub_23E8EBFB4(v68);
    sub_23E8EBFB4(v55);
    return v86;
  }

  return result;
}

uint64_t sub_23E8E939C(void *a1, void *a2)
{
  v86 = a1;
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E858, &qword_23E9035D8);
  MEMORY[0x28223BE20](v3 - 8);
  v82 = &v75[-v4];
  v5 = type metadata accessor for ImageContent(0);
  v79 = *(v5 - 8);
  v80 = v5;
  MEMORY[0x28223BE20](v5);
  v81 = &v75[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v77 = &v75[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F718, &qword_23E907A38);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v75[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F720, &unk_23E907A40);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v78 = &v75[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v75[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v75[-v20];
  v84 = v2;
  sub_23E8891B4(v2, &v75[-v20], &unk_27E35E440, &unk_23E902C90);
  (*(v8 + 56))(v21, 0, 1, v7);
  v22 = *(v11 + 56);
  sub_23E8891B4(v21, v13, &unk_27E35F720, &unk_23E907A40);
  sub_23E8891B4(v86, &v13[v22], &unk_27E35F720, &unk_23E907A40);
  v23 = *(v8 + 48);
  if (v23(v13, 1, v7) == 1)
  {
    sub_23E87E458(v21, &unk_27E35F720, &unk_23E907A40);
    if (v23(&v13[v22], 1, v7) == 1)
    {
      sub_23E87E458(v13, &unk_27E35F720, &unk_23E907A40);
      return MEMORY[0x277D84F90];
    }

    goto LABEL_6;
  }

  sub_23E8891B4(v13, v19, &unk_27E35F720, &unk_23E907A40);
  if (v23(&v13[v22], 1, v7) == 1)
  {
    sub_23E87E458(v21, &unk_27E35F720, &unk_23E907A40);
    sub_23E87E458(v19, &unk_27E35E440, &unk_23E902C90);
LABEL_6:
    sub_23E87E458(v13, &qword_27E35F718, &qword_23E907A38);
    goto LABEL_7;
  }

  v45 = &v13[v22];
  v46 = v77;
  sub_23E87E3F0(v45, v77, &unk_27E35E440, &unk_23E902C90);
  v76 = sub_23E8EB680(v19, v46);
  sub_23E87E458(v46, &unk_27E35E440, &unk_23E902C90);
  sub_23E87E458(v21, &unk_27E35F720, &unk_23E907A40);
  sub_23E87E458(v19, &unk_27E35E440, &unk_23E902C90);
  sub_23E87E458(v13, &unk_27E35F720, &unk_23E907A40);
  if (v76)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_7:
  v24 = v81;
  sub_23E8F2D1C(v84 + *(v7 + 36), v81, type metadata accessor for ImageContent);
  v25 = v78;
  sub_23E8891B4(v86, v78, &unk_27E35F720, &unk_23E907A40);
  if (v23(v25, 1, v7) == 1)
  {
    sub_23E87E458(v25, &unk_27E35F720, &unk_23E907A40);
    v26 = 1;
    v28 = v82;
    v27 = v83;
  }

  else
  {
    v28 = v82;
    sub_23E8F2D1C(&v25[*(v7 + 36)], v82, type metadata accessor for ImageContent);
    sub_23E87E458(v25, &unk_27E35E440, &unk_23E902C90);
    v26 = 0;
    v27 = v83;
  }

  (*(v79 + 56))(v28, v26, 1, v80);
  v29 = v85;
  v30 = sub_23E892558(v28, v27);
  sub_23E87E458(v28, &qword_27E35E858, &qword_23E9035D8);
  result = sub_23E8F2D84(v24, type metadata accessor for ImageContent);
  if (!v29)
  {
    v85 = 0;
    v32 = *(v30 + 16);
    if (v32)
    {
      v33 = v30 + 32;
      v34 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v33, v91);
        sub_23E881028(v91, v88);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v92 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = sub_23E889F50(0, v34[2] + 1, 1, v34);
          v92 = v34;
        }

        v37 = v34[2];
        v36 = v34[3];
        if (v37 >= v36 >> 1)
        {
          v38 = sub_23E889F50((v36 > 1), v37 + 1, 1, v34);
          v92 = v38;
        }

        else
        {
          v38 = v34;
        }

        v39 = v89;
        v40 = v90;
        v41 = __swift_mutable_project_boxed_opaque_existential_1(v88, v89);
        MEMORY[0x28223BE20](v41);
        v43 = &v75[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v44 + 16))(v43);
        sub_23E8F2C70(v37, v43, &v92, v39, v40);
        __swift_destroy_boxed_opaque_existential_1(v88);
        v33 += 40;
        --v32;
        v34 = v38;
      }

      while (v32);
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
    }

    v47 = sub_23E8E6D48(v86, v83, &unk_27E35F720, &unk_23E907A40, &unk_27E35E440, &unk_23E902C90);
    v48 = *(v47 + 2);
    if (v48)
    {
      v49 = v34;
      v82 = v47;
      v50 = (v47 + 32);
      v51 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v50, v91);
        sub_23E881028(v91, v88);
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v92 = v51;
        if ((v52 & 1) == 0)
        {
          v51 = sub_23E889F50(0, v51[2] + 1, 1, v51);
          v92 = v51;
        }

        v54 = v51[2];
        v53 = v51[3];
        if (v54 >= v53 >> 1)
        {
          v51 = sub_23E889F50((v53 > 1), v54 + 1, 1, v51);
          v92 = v51;
        }

        v55 = v89;
        v56 = v90;
        v57 = __swift_mutable_project_boxed_opaque_existential_1(v88, v89);
        MEMORY[0x28223BE20](v57);
        v59 = &v75[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v60 + 16))(v59);
        sub_23E8F2C70(v54, v59, &v92, v55, v56);
        __swift_destroy_boxed_opaque_existential_1(v88);
        v50 += 40;
        --v48;
      }

      while (v48);

      v34 = v49;
    }

    else
    {

      v51 = MEMORY[0x277D84F90];
    }

    v61 = v85;
    v62 = sub_23E8E6010(v86, v83, &unk_27E35F720, &unk_23E907A40, &unk_27E35E440, &unk_23E902C90);
    if (v61)
    {
    }

    else
    {
      v85 = 0;
      v86 = v34;
      v63 = v62[2];
      if (v63)
      {
        v84 = v62;
        v64 = (v62 + 4);
        v65 = MEMORY[0x277D84F90];
        do
        {
          sub_23E8810DC(v64, v91);
          sub_23E881028(v91, v88);
          v66 = swift_isUniquelyReferenced_nonNull_native();
          v92 = v65;
          if ((v66 & 1) == 0)
          {
            v65 = sub_23E889F50(0, v65[2] + 1, 1, v65);
            v92 = v65;
          }

          v68 = v65[2];
          v67 = v65[3];
          if (v68 >= v67 >> 1)
          {
            v65 = sub_23E889F50((v67 > 1), v68 + 1, 1, v65);
            v92 = v65;
          }

          v69 = v89;
          v70 = v90;
          v71 = __swift_mutable_project_boxed_opaque_existential_1(v88, v89);
          MEMORY[0x28223BE20](v71);
          v73 = &v75[-((v72 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v74 + 16))(v73);
          sub_23E8F2C70(v68, v73, &v92, v69, v70);
          __swift_destroy_boxed_opaque_existential_1(v88);
          v64 += 40;
          --v63;
        }

        while (v63);
      }

      else
      {

        v65 = MEMORY[0x277D84F90];
      }

      v87 = v86;
      sub_23E8EBFB4(v65);
      sub_23E8EBFB4(v51);
      return v87;
    }
  }

  return result;
}

void *sub_23E8E9EA4(void *a1, void *a2)
{
  v78 = a1;
  v3 = v2;
  v75 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v74 = &v72[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F5D0, &qword_23E907968);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v72[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v79 = &v72[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v72[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v72[-v17];
  v76 = v3;
  sub_23E8891B4(v3, &v72[-v17], &unk_27E35E630, &qword_23E903300);
  (*(v5 + 56))(v18, 0, 1, v4);
  v19 = *(v8 + 56);
  sub_23E8891B4(v18, v10, &unk_27E35F3D0, &qword_23E905770);
  sub_23E8891B4(v78, &v10[v19], &unk_27E35F3D0, &qword_23E905770);
  v20 = *(v5 + 48);
  if (v20(v10, 1, v4) == 1)
  {
    sub_23E87E458(v18, &unk_27E35F3D0, &qword_23E905770);
    if (v20(&v10[v19], 1, v4) == 1)
    {
      sub_23E87E458(v10, &unk_27E35F3D0, &qword_23E905770);
      return MEMORY[0x277D84F90];
    }

    goto LABEL_6;
  }

  sub_23E8891B4(v10, v16, &unk_27E35F3D0, &qword_23E905770);
  if (v20(&v10[v19], 1, v4) == 1)
  {
    sub_23E87E458(v18, &unk_27E35F3D0, &qword_23E905770);
    sub_23E87E458(v16, &unk_27E35E630, &qword_23E903300);
LABEL_6:
    sub_23E87E458(v10, &unk_27E35F5D0, &qword_23E907968);
    goto LABEL_7;
  }

  v45 = v74;
  sub_23E87E3F0(&v10[v19], v74, &unk_27E35E630, &qword_23E903300);
  v73 = sub_23E8EB4A8(v16, v45);
  sub_23E87E458(v45, &unk_27E35E630, &qword_23E903300);
  sub_23E87E458(v18, &unk_27E35F3D0, &qword_23E905770);
  sub_23E87E458(v16, &unk_27E35E630, &qword_23E903300);
  sub_23E87E458(v10, &unk_27E35F3D0, &qword_23E905770);
  if (v73)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_7:
  v21 = (v76 + *(v4 + 36));
  v22 = *v21;
  v23 = v21[1];
  v24 = v79;
  sub_23E8891B4(v78, v79, &unk_27E35F3D0, &qword_23E905770);
  v25 = v20(v24, 1, v4);
  v26 = v77;
  if (v25 == 1)
  {
    sub_23E87E458(v24, &unk_27E35F3D0, &qword_23E905770);
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v29 = (v24 + *(v4 + 36));
    v27 = *v29;
    v28 = v29[1];

    sub_23E87E458(v24, &unk_27E35E630, &qword_23E903300);
  }

  v30 = v75;
  *&v84[0] = v22;
  *(&v84[0] + 1) = v23;
  v81[0] = v27;
  v81[1] = v28;
  v31 = sub_23E8C61DC(v81, v75);

  if (!v26)
  {
    v33 = v31[2];
    if (v33)
    {
      v34 = (v31 + 4);
      v79 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v34, v84);
        sub_23E881028(v84, v81);
        v35 = v79;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85 = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v79 = sub_23E889F50(0, v79[2] + 1, 1, v79);
          v85 = v79;
        }

        v38 = v79[2];
        v37 = v79[3];
        if (v38 >= v37 >> 1)
        {
          v79 = sub_23E889F50((v37 > 1), v38 + 1, 1, v79);
          v85 = v79;
        }

        v39 = v82;
        v40 = v83;
        v41 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
        MEMORY[0x28223BE20](v41);
        v43 = &v72[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v44 + 16))(v43);
        sub_23E8F2C70(v38, v43, &v85, v39, v40);
        __swift_destroy_boxed_opaque_existential_1(v81);
        v34 += 40;
        --v33;
      }

      while (v33);

      v30 = v75;
    }

    else
    {

      v79 = MEMORY[0x277D84F90];
    }

    v46 = sub_23E8E6D48(v78, v30, &unk_27E35F3D0, &qword_23E905770, &unk_27E35E630, &qword_23E903300);
    v47 = v46[2];
    if (v47)
    {
      v77 = v46;
      v48 = (v46 + 4);
      v49 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v48, v84);
        sub_23E881028(v84, v81);
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v85 = v49;
        if ((v50 & 1) == 0)
        {
          v49 = sub_23E889F50(0, v49[2] + 1, 1, v49);
          v85 = v49;
        }

        v52 = v49[2];
        v51 = v49[3];
        if (v52 >= v51 >> 1)
        {
          v49 = sub_23E889F50((v51 > 1), v52 + 1, 1, v49);
          v85 = v49;
        }

        v53 = v82;
        v54 = v83;
        v55 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
        MEMORY[0x28223BE20](v55);
        v57 = &v72[-((v56 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v58 + 16))(v57);
        sub_23E8F2C70(v52, v57, &v85, v53, v54);
        __swift_destroy_boxed_opaque_existential_1(v81);
        v48 += 40;
        --v47;
      }

      while (v47);
    }

    else
    {

      v49 = MEMORY[0x277D84F90];
    }

    v59 = sub_23E8E6010(v78, v75, &unk_27E35F3D0, &qword_23E905770, &unk_27E35E630, &qword_23E903300);
    v77 = 0;
    v60 = v59[2];
    if (v60)
    {
      v78 = v59;
      v61 = (v59 + 4);
      v62 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v61, v84);
        sub_23E881028(v84, v81);
        v63 = swift_isUniquelyReferenced_nonNull_native();
        v85 = v62;
        if ((v63 & 1) == 0)
        {
          v62 = sub_23E889F50(0, v62[2] + 1, 1, v62);
          v85 = v62;
        }

        v65 = v62[2];
        v64 = v62[3];
        if (v65 >= v64 >> 1)
        {
          v62 = sub_23E889F50((v64 > 1), v65 + 1, 1, v62);
          v85 = v62;
        }

        v66 = v82;
        v67 = v83;
        v68 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
        MEMORY[0x28223BE20](v68);
        v70 = &v72[-((v69 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v71 + 16))(v70);
        sub_23E8F2C70(v65, v70, &v85, v66, v67);
        __swift_destroy_boxed_opaque_existential_1(v81);
        v61 += 40;
        --v60;
      }

      while (v60);
    }

    else
    {

      v62 = MEMORY[0x277D84F90];
    }

    v80 = v79;
    sub_23E8EBFB4(v62);
    sub_23E8EBFB4(v49);
    return v80;
  }

  return result;
}

void *sub_23E8EA874(void *a1, void *a2)
{
  v3 = v2;
  v71 = a2;
  v74 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v70 = &v68[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F730, &qword_23E907A50);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v68[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F738, &unk_23E907A58);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v75 = &v68[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v68[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v68[-v17];
  v72 = v3;
  sub_23E8891B4(v3, &v68[-v17], &qword_27E35E438, &unk_23E907E20);
  (*(v5 + 56))(v18, 0, 1, v4);
  v19 = *(v8 + 56);
  sub_23E8891B4(v18, v10, &qword_27E35F738, &unk_23E907A58);
  sub_23E8891B4(v74, &v10[v19], &qword_27E35F738, &unk_23E907A58);
  v20 = *(v5 + 48);
  if (v20(v10, 1, v4) == 1)
  {
    sub_23E87E458(v18, &qword_27E35F738, &unk_23E907A58);
    if (v20(&v10[v19], 1, v4) == 1)
    {
      sub_23E87E458(v10, &qword_27E35F738, &unk_23E907A58);
      return MEMORY[0x277D84F90];
    }

    goto LABEL_6;
  }

  sub_23E8891B4(v10, v16, &qword_27E35F738, &unk_23E907A58);
  if (v20(&v10[v19], 1, v4) == 1)
  {
    sub_23E87E458(v18, &qword_27E35F738, &unk_23E907A58);
    sub_23E87E458(v16, &qword_27E35E438, &unk_23E907E20);
LABEL_6:
    sub_23E87E458(v10, &qword_27E35F730, &qword_23E907A50);
    goto LABEL_7;
  }

  v41 = v70;
  sub_23E87E3F0(&v10[v19], v70, &qword_27E35E438, &unk_23E907E20);
  v69 = sub_23E8EB298(v16, v41);
  sub_23E87E458(v41, &qword_27E35E438, &unk_23E907E20);
  sub_23E87E458(v18, &qword_27E35F738, &unk_23E907A58);
  sub_23E87E458(v16, &qword_27E35E438, &unk_23E907E20);
  sub_23E87E458(v10, &qword_27E35F738, &unk_23E907A58);
  if (v69)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_7:
  v21 = (v72 + *(v4 + 36));
  v22 = v21[1];
  v80[0] = *v21;
  v80[1] = v22;
  v81[0] = v21[2];
  *(v81 + 14) = *(v21 + 46);
  v23 = v75;
  sub_23E8891B4(v74, v75, &qword_27E35F738, &unk_23E907A58);
  if (v20(v23, 1, v4) == 1)
  {
    sub_23E87E458(v23, &qword_27E35F738, &unk_23E907A58);
    v77 = 0u;
    v78 = 0u;
    memset(v79, 0, 28);
    *&v79[28] = 512;
  }

  else
  {
    v24 = (v23 + *(v4 + 36));
    v25 = v24[1];
    v77 = *v24;
    v78 = v25;
    *v79 = v24[2];
    *&v79[14] = *(v24 + 46);
    sub_23E87E458(v23, &qword_27E35E438, &unk_23E907E20);
  }

  v26 = v71;
  v27 = v73;
  result = sub_23E8D476C(&v77, v71);
  if (!v27)
  {
    v29 = result[2];
    if (v29)
    {
      v30 = result + 4;
      v75 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v30, v80);
        sub_23E881028(v80, &v77);
        v31 = v75;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v75 = sub_23E889F50(0, v75[2] + 1, 1, v75);
          v82 = v75;
        }

        v34 = v75[2];
        v33 = v75[3];
        if (v34 >= v33 >> 1)
        {
          v75 = sub_23E889F50((v33 > 1), v34 + 1, 1, v75);
          v82 = v75;
        }

        v35 = *(&v78 + 1);
        v36 = *v79;
        v37 = __swift_mutable_project_boxed_opaque_existential_1(&v77, *(&v78 + 1));
        MEMORY[0x28223BE20](v37);
        v39 = &v68[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v40 + 16))(v39);
        sub_23E8F2C70(v34, v39, &v82, v35, v36);
        __swift_destroy_boxed_opaque_existential_1(&v77);
        v30 += 5;
        --v29;
      }

      while (v29);

      v26 = v71;
    }

    else
    {

      v75 = MEMORY[0x277D84F90];
    }

    v42 = sub_23E8E6D48(v74, v26, &qword_27E35F738, &unk_23E907A58, &qword_27E35E438, &unk_23E907E20);
    v43 = v42[2];
    if (v43)
    {
      v73 = v42;
      v44 = (v42 + 4);
      v45 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v44, v80);
        sub_23E881028(v80, &v77);
        v46 = swift_isUniquelyReferenced_nonNull_native();
        v82 = v45;
        if ((v46 & 1) == 0)
        {
          v45 = sub_23E889F50(0, v45[2] + 1, 1, v45);
          v82 = v45;
        }

        v48 = v45[2];
        v47 = v45[3];
        if (v48 >= v47 >> 1)
        {
          v45 = sub_23E889F50((v47 > 1), v48 + 1, 1, v45);
          v82 = v45;
        }

        v49 = *(&v78 + 1);
        v50 = *v79;
        v51 = __swift_mutable_project_boxed_opaque_existential_1(&v77, *(&v78 + 1));
        MEMORY[0x28223BE20](v51);
        v53 = &v68[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v54 + 16))(v53);
        sub_23E8F2C70(v48, v53, &v82, v49, v50);
        __swift_destroy_boxed_opaque_existential_1(&v77);
        v44 += 40;
        --v43;
      }

      while (v43);
    }

    else
    {

      v45 = MEMORY[0x277D84F90];
    }

    v55 = sub_23E8E6010(v74, v71, &qword_27E35F738, &unk_23E907A58, &qword_27E35E438, &unk_23E907E20);
    v73 = 0;
    v56 = v55[2];
    if (v56)
    {
      v74 = v55;
      v57 = (v55 + 4);
      v58 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v57, v80);
        sub_23E881028(v80, &v77);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v82 = v58;
        if ((v59 & 1) == 0)
        {
          v58 = sub_23E889F50(0, v58[2] + 1, 1, v58);
          v82 = v58;
        }

        v61 = v58[2];
        v60 = v58[3];
        if (v61 >= v60 >> 1)
        {
          v58 = sub_23E889F50((v60 > 1), v61 + 1, 1, v58);
          v82 = v58;
        }

        v62 = *(&v78 + 1);
        v63 = *v79;
        v64 = __swift_mutable_project_boxed_opaque_existential_1(&v77, *(&v78 + 1));
        MEMORY[0x28223BE20](v64);
        v66 = &v68[-((v65 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v67 + 16))(v66);
        sub_23E8F2C70(v61, v66, &v82, v62, v63);
        __swift_destroy_boxed_opaque_existential_1(&v77);
        v57 += 40;
        --v56;
      }

      while (v56);
    }

    else
    {

      v58 = MEMORY[0x277D84F90];
    }

    v76 = v75;
    sub_23E8EBFB4(v58);
    sub_23E8EBFB4(v45);
    return v76;
  }

  return result;
}

uint64_t sub_23E8EB298(uint64_t a1, uint64_t a2)
{
  if (sub_23E9006B4() & 1) != 0 && (v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20), v5 = v4[9], v6 = (a1 + v5), v7 = (a2 + v5), v8 = v6[1], v16[0] = *v6, v16[1] = v8, v17[0] = v6[2], *(v17 + 14) = *(v6 + 46), v9 = v7[1], v18[0] = *v7, v18[1] = v9, v19[0] = v7[2], *(v19 + 14) = *(v7 + 46), sub_23E8EBA4C(v16, v18)) && (sub_23E89A140(*(a1 + v4[10]), *(a2 + v4[10])) & 1) != 0 && (v10 = v4[11], (sub_23E89B274(*(a1 + v10), *(a1 + v10 + 8), *(a1 + v10 + 16) | (*(a1 + v10 + 20) << 32) | (*(a1 + v10 + 21) << 40), *(a2 + v10), *(a2 + v10 + 8), *(a2 + v10 + 16) | (*(a2 + v10 + 20) << 32) | (*(a2 + v10 + 21) << 40))) && (v11 = v4[12], (sub_23E89B474(*(a1 + v11), *(a1 + v11 + 8) | (*(a1 + v11 + 12) << 32) | (*(a1 + v11 + 13) << 40), *(a2 + v11), *(a2 + v11 + 8) | (*(a2 + v11 + 12) << 32) | (*(a2 + v11 + 13) << 40))) && (sub_23E89B564(*(a1 + v4[13]), *(a1 + v4[13] + 8), *(a2 + v4[13]), *(a2 + v4[13] + 8)) & 1) != 0 && (v12 = v4[14], (sub_23E89B5D4(*(a1 + v12), *(a1 + v12 + 8), *(a1 + v12 + 16), *(a1 + v12 + 24), *(a2 + v12), *(a2 + v12 + 8), *(a2 + v12 + 16), *(a2 + v12 + 24))) && (sub_23E89B7E4(*(a1 + v4[15]), *(a1 + v4[15] + 8), *(a2 + v4[15]), *(a2 + v4[15] + 8)) & 1) != 0 && (v13 = v4[16], _s10AirPlayKit5ColorO2eeoiySbAC_ACtFZ_0(*(a1 + v13), *(a1 + v13 + 8), *(a1 + v13 + 16), *(a2 + v13), *(a2 + v13 + 8), *(a2 + v13 + 16))) && *(a1 + v4[17]) == *(a2 + v4[17]))
  {
    v14 = vminv_u16(vmovn_s32(vceqq_f32(*(a1 + v4[18]), *(a2 + v4[18]))));
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_23E8EB4A8(uint64_t a1, uint64_t a2)
{
  if (sub_23E9006B4() & 1) != 0 && (v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300), sub_23E8EBC98(*(a1 + v4[9]), *(a1 + v4[9] + 8), *(a2 + v4[9]), *(a2 + v4[9] + 8))) && (sub_23E89A140(*(a1 + v4[10]), *(a2 + v4[10])) & 1) != 0 && (v5 = v4[11], (sub_23E89B274(*(a1 + v5), *(a1 + v5 + 8), *(a1 + v5 + 16) | (*(a1 + v5 + 20) << 32) | (*(a1 + v5 + 21) << 40), *(a2 + v5), *(a2 + v5 + 8), *(a2 + v5 + 16) | (*(a2 + v5 + 20) << 32) | (*(a2 + v5 + 21) << 40))) && (v6 = v4[12], (sub_23E89B474(*(a1 + v6), *(a1 + v6 + 8) | (*(a1 + v6 + 12) << 32) | (*(a1 + v6 + 13) << 40), *(a2 + v6), *(a2 + v6 + 8) | (*(a2 + v6 + 12) << 32) | (*(a2 + v6 + 13) << 40))) && (sub_23E89B564(*(a1 + v4[13]), *(a1 + v4[13] + 8), *(a2 + v4[13]), *(a2 + v4[13] + 8)) & 1) != 0 && (v7 = v4[14], (sub_23E89B5D4(*(a1 + v7), *(a1 + v7 + 8), *(a1 + v7 + 16), *(a1 + v7 + 24), *(a2 + v7), *(a2 + v7 + 8), *(a2 + v7 + 16), *(a2 + v7 + 24))) && (sub_23E89B7E4(*(a1 + v4[15]), *(a1 + v4[15] + 8), *(a2 + v4[15]), *(a2 + v4[15] + 8)) & 1) != 0 && (v8 = v4[16], _s10AirPlayKit5ColorO2eeoiySbAC_ACtFZ_0(*(a1 + v8), *(a1 + v8 + 8), *(a1 + v8 + 16), *(a2 + v8), *(a2 + v8 + 8), *(a2 + v8 + 16))) && *(a1 + v4[17]) == *(a2 + v4[17]))
  {
    v9 = vminv_u16(vmovn_s32(vceqq_f32(*(a1 + v4[18]), *(a2 + v4[18]))));
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_23E8EB680(uint64_t a1, uint64_t a2)
{
  if (sub_23E9006B4() & 1) != 0 && (v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90), sub_23E8EBB80(a1 + v4[9], a2 + v4[9])) && (sub_23E89A140(*(a1 + v4[10]), *(a2 + v4[10])) & 1) != 0 && (v5 = v4[11], (sub_23E89B274(*(a1 + v5), *(a1 + v5 + 8), *(a1 + v5 + 16) | (*(a1 + v5 + 20) << 32) | (*(a1 + v5 + 21) << 40), *(a2 + v5), *(a2 + v5 + 8), *(a2 + v5 + 16) | (*(a2 + v5 + 20) << 32) | (*(a2 + v5 + 21) << 40))) && (v6 = v4[12], (sub_23E89B474(*(a1 + v6), *(a1 + v6 + 8) | (*(a1 + v6 + 12) << 32) | (*(a1 + v6 + 13) << 40), *(a2 + v6), *(a2 + v6 + 8) | (*(a2 + v6 + 12) << 32) | (*(a2 + v6 + 13) << 40))) && (sub_23E89B564(*(a1 + v4[13]), *(a1 + v4[13] + 8), *(a2 + v4[13]), *(a2 + v4[13] + 8)) & 1) != 0 && (v7 = v4[14], (sub_23E89B5D4(*(a1 + v7), *(a1 + v7 + 8), *(a1 + v7 + 16), *(a1 + v7 + 24), *(a2 + v7), *(a2 + v7 + 8), *(a2 + v7 + 16), *(a2 + v7 + 24))) && (sub_23E89B7E4(*(a1 + v4[15]), *(a1 + v4[15] + 8), *(a2 + v4[15]), *(a2 + v4[15] + 8)) & 1) != 0 && (v8 = v4[16], _s10AirPlayKit5ColorO2eeoiySbAC_ACtFZ_0(*(a1 + v8), *(a1 + v8 + 8), *(a1 + v8 + 16), *(a2 + v8), *(a2 + v8 + 8), *(a2 + v8 + 16))) && *(a1 + v4[17]) == *(a2 + v4[17]))
  {
    v9 = vminv_u16(vmovn_s32(vceqq_f32(*(a1 + v4[18]), *(a2 + v4[18]))));
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_23E8EB850(uint64_t a1, uint64_t a2)
{
  if (sub_23E9006B4() & 1) != 0 && (v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80), v5 = v4[9], v6 = (a1 + v5), v7 = (a2 + v5), v8 = v6[1], v18[0] = *v6, v18[1] = v8, v9 = *v7, v10 = v7[1], v18[2] = v6[2], v19[0] = v9, v11 = v7[2], v19[1] = v10, v19[2] = v11, sub_23E8EBAF0(v18, v19)) && (sub_23E89A140(*(a1 + v4[10]), *(a2 + v4[10])) & 1) != 0 && (v12 = v4[11], (sub_23E89B274(*(a1 + v12), *(a1 + v12 + 8), *(a1 + v12 + 16) | (*(a1 + v12 + 20) << 32) | (*(a1 + v12 + 21) << 40), *(a2 + v12), *(a2 + v12 + 8), *(a2 + v12 + 16) | (*(a2 + v12 + 20) << 32) | (*(a2 + v12 + 21) << 40))) && (v13 = v4[12], (sub_23E89B474(*(a1 + v13), *(a1 + v13 + 8) | (*(a1 + v13 + 12) << 32) | (*(a1 + v13 + 13) << 40), *(a2 + v13), *(a2 + v13 + 8) | (*(a2 + v13 + 12) << 32) | (*(a2 + v13 + 13) << 40))) && (sub_23E89B564(*(a1 + v4[13]), *(a1 + v4[13] + 8), *(a2 + v4[13]), *(a2 + v4[13] + 8)) & 1) != 0 && (v14 = v4[14], (sub_23E89B5D4(*(a1 + v14), *(a1 + v14 + 8), *(a1 + v14 + 16), *(a1 + v14 + 24), *(a2 + v14), *(a2 + v14 + 8), *(a2 + v14 + 16), *(a2 + v14 + 24))) && (sub_23E89B7E4(*(a1 + v4[15]), *(a1 + v4[15] + 8), *(a2 + v4[15]), *(a2 + v4[15] + 8)) & 1) != 0 && (v15 = v4[16], _s10AirPlayKit5ColorO2eeoiySbAC_ACtFZ_0(*(a1 + v15), *(a1 + v15 + 8), *(a1 + v15 + 16), *(a2 + v15), *(a2 + v15 + 8), *(a2 + v15 + 16))) && *(a1 + v4[17]) == *(a2 + v4[17]))
  {
    v16 = vminv_u16(vmovn_s32(vceqq_f32(*(a1 + v4[18]), *(a2 + v4[18]))));
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

BOOL sub_23E8EBA4C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v10[2] = *a1;
  v10[3] = v2;
  v11[0] = a1[2];
  *(v11 + 14) = *(a1 + 46);
  v3 = a2[1];
  v8 = *a2;
  v9 = v3;
  v10[0] = a2[2];
  *(v10 + 14) = *(a2 + 46);
  sub_23E900F24();
  RingContent.hash(into:)(v7);
  sub_23E900F24();
  RingContent.hash(into:)(&v6);
  v4 = sub_23E900F04();
  return v4 == sub_23E900F04();
}

BOOL sub_23E8EBAF0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  *&v7[15] = *a1;
  *&v7[17] = v2;
  *&v7[19] = a1[2];
  v3 = a2[1];
  *&v7[9] = *a2;
  *&v7[11] = v3;
  *&v7[13] = a2[2];
  sub_23E900F24();
  TextContent.hash(into:)(v7);
  sub_23E900F24();
  TextContent.hash(into:)(v6);
  v4 = sub_23E900F04();
  return v4 == sub_23E900F04();
}

BOOL sub_23E8EBB80(uint64_t a1, uint64_t a2)
{
  sub_23E900F24();
  ImageContent.ContentType.hash(into:)(v16);
  v4 = type metadata accessor for ImageContent(0);
  v5 = a1 + *(v4 + 20);
  v6 = *(v5 + 16);
  if (v6 == 255)
  {
    sub_23E900ED4();
  }

  else
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    sub_23E900ED4();
    Color.hash(into:)(v16, v8, v7, v6);
  }

  sub_23E900F24();
  ImageContent.ContentType.hash(into:)(v15);
  v9 = a2 + *(v4 + 20);
  v10 = *(v9 + 16);
  if (v10 == 255)
  {
    sub_23E900ED4();
  }

  else
  {
    v12 = *v9;
    v11 = *(v9 + 8);
    sub_23E900ED4();
    Color.hash(into:)(v15, v12, v11, v10);
  }

  v13 = sub_23E900F04();
  return v13 == sub_23E900F04();
}

BOOL sub_23E8EBC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v11 = a2;
  v8 = a3;
  v9 = a4;
  sub_23E900F24();
  ContainerContent.hash(into:)(v7);
  sub_23E900F24();
  ContainerContent.hash(into:)(&v6);
  v4 = sub_23E900F04();
  return v4 == sub_23E900F04();
}

uint64_t sub_23E8EBD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_23E8891B4(a3, v22 - v9, &qword_27E35E5E0, &qword_23E905750);
  v11 = sub_23E900A74();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_23E87E458(v10, &qword_27E35E5E0, &qword_23E905750);
  }

  else
  {
    sub_23E900A64();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23E900A34();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23E9008E4() + 32;

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
      v20 = swift_task_create();

      sub_23E87E458(a3, &qword_27E35E5E0, &qword_23E905750);

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

  sub_23E87E458(a3, &qword_27E35E5E0, &qword_23E905750);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void *sub_23E8EBFB4(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_23E889F50(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F5C0, &unk_23E905D80);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23E8EC0BC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F620, &qword_23E9050B0);
  v59 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = &v47 - v9;
  v10 = sub_23E9006D4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F630, &qword_23E9050C8);
  v54 = *(v58 - 8);
  v16 = MEMORY[0x28223BE20](v58);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  v21 = *(a1 + 16);
  if (v21)
  {
    v47 = a2;
    v52 = v15;
    v48 = &v47 - v19;
    v49 = a3;
    v50 = a4;
    v61 = MEMORY[0x277D84F90];
    v57 = v10;
    sub_23E8AF81C(0, v21, 0);
    v22 = v57;
    v23 = v61;
    v24 = a1 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v55 = (v11 + 16);
    v56 = v11;
    v59 = *(v59 + 72);
    v25 = v24;
    v26 = v21;
    do
    {
      v27 = v60;
      sub_23E8891B4(v25, v60, &unk_27E35F620, &qword_23E9050B0);
      v53 = *v55;
      v53(v18, v27, v22);
      sub_23E87E3F0(v27, &v18[*(v58 + 36)], &unk_27E35F620, &qword_23E9050B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F638, &unk_23E9079B0);
      swift_storeEnumTagMultiPayload();
      v61 = v23;
      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_23E8AF81C((v28 > 1), v29 + 1, 1);
        v23 = v61;
      }

      *(v23 + 16) = v29 + 1;
      sub_23E87E3F0(v18, v23 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v29, &qword_27E35F630, &qword_23E9050C8);
      v25 += v59;
      --v26;
      v22 = v57;
    }

    while (v26);
    v53(v52, v47, v57);
    v61 = MEMORY[0x277D84F90];
    sub_23E8AF7FC(0, v21, 0);
    v30 = v57;
    v31 = v61;
    v32 = (v56 + 32);
    v55 = ((v56 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
    v33 = v51;
    do
    {
      v34 = v60;
      sub_23E8891B4(v24, v60, &unk_27E35F620, &qword_23E9050B0);
      v35 = *v32;
      (*v32)(v33, v34, v30);
      v61 = v31;
      v37 = *(v31 + 16);
      v36 = *(v31 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_23E8AF7FC((v36 > 1), v37 + 1, 1);
        v30 = v57;
        v31 = v61;
      }

      *(v31 + 16) = v37 + 1;
      v35((v31 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v37), v33, v30);
      v24 += v59;
      --v21;
    }

    while (v21);
    LOBYTE(a3) = v49;
    v38 = v50;
    v20 = v48;
    v39 = v30;
    v40 = v52;
  }

  else
  {
    (*(v11 + 16))(v15, a2, v10);
    v35 = *(v11 + 32);
    v40 = v15;
    v23 = MEMORY[0x277D84F90];
    v38 = a4;
    v31 = MEMORY[0x277D84F90];
    v39 = v10;
  }

  v41 = v58;
  v42 = &v20[*(v58 + 36)];
  *v42 = a3;
  v42[1] = v38;
  *(v42 + 1) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F638, &unk_23E9079B0);
  swift_storeEnumTagMultiPayload();
  v35(v20, v40, v39);
  v43 = sub_23E8BCD50(v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F640, &unk_23E905090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903380;
  *(inited + 56) = v41;
  *(inited + 64) = sub_23E8C88E0(&qword_27E35F028, &qword_27E35F630, &qword_23E9050C8, &unk_23E905048);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_23E8891B4(v20, boxed_opaque_existential_1, &qword_27E35F630, &qword_23E9050C8);
  v61 = v43;
  sub_23E8EBFB4(inited);
  sub_23E87E458(v20, &qword_27E35F630, &qword_23E9050C8);
  return v61;
}

uint64_t sub_23E8EC6D8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F660, &unk_23E9069D0);
  v59 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = &v47 - v9;
  v10 = sub_23E9006D4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ED08, &unk_23E905D60);
  v54 = *(v58 - 8);
  v16 = MEMORY[0x28223BE20](v58);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  v21 = *(a1 + 16);
  if (v21)
  {
    v47 = a2;
    v52 = v15;
    v48 = &v47 - v19;
    v49 = a3;
    v50 = a4;
    v61 = MEMORY[0x277D84F90];
    v57 = v10;
    sub_23E8AF85C(0, v21, 0);
    v22 = v57;
    v23 = v61;
    v24 = a1 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v55 = (v11 + 16);
    v56 = v11;
    v59 = *(v59 + 72);
    v25 = v24;
    v26 = v21;
    do
    {
      v27 = v60;
      sub_23E8891B4(v25, v60, &unk_27E35F660, &unk_23E9069D0);
      v53 = *v55;
      v53(v18, v27, v22);
      sub_23E87E3F0(v27, &v18[*(v58 + 36)], &unk_27E35F660, &unk_23E9069D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F670, &qword_23E9079C8);
      swift_storeEnumTagMultiPayload();
      v61 = v23;
      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_23E8AF85C((v28 > 1), v29 + 1, 1);
        v23 = v61;
      }

      *(v23 + 16) = v29 + 1;
      sub_23E87E3F0(v18, v23 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v29, &qword_27E35ED08, &unk_23E905D60);
      v25 += v59;
      --v26;
      v22 = v57;
    }

    while (v26);
    v53(v52, v47, v57);
    v61 = MEMORY[0x277D84F90];
    sub_23E8AF7FC(0, v21, 0);
    v30 = v57;
    v31 = v61;
    v32 = (v56 + 32);
    v55 = ((v56 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
    v33 = v51;
    do
    {
      v34 = v60;
      sub_23E8891B4(v24, v60, &unk_27E35F660, &unk_23E9069D0);
      v35 = *v32;
      (*v32)(v33, v34, v30);
      v61 = v31;
      v37 = *(v31 + 16);
      v36 = *(v31 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_23E8AF7FC((v36 > 1), v37 + 1, 1);
        v30 = v57;
        v31 = v61;
      }

      *(v31 + 16) = v37 + 1;
      v35((v31 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v37), v33, v30);
      v24 += v59;
      --v21;
    }

    while (v21);
    LOBYTE(a3) = v49;
    v38 = v50;
    v20 = v48;
    v39 = v30;
    v40 = v52;
  }

  else
  {
    (*(v11 + 16))(v15, a2, v10);
    v35 = *(v11 + 32);
    v40 = v15;
    v23 = MEMORY[0x277D84F90];
    v38 = a4;
    v31 = MEMORY[0x277D84F90];
    v39 = v10;
  }

  v41 = v58;
  v42 = &v20[*(v58 + 36)];
  *v42 = a3;
  v42[1] = v38;
  *(v42 + 1) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F670, &qword_23E9079C8);
  swift_storeEnumTagMultiPayload();
  v35(v20, v40, v39);
  v43 = sub_23E8BCD6C(v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F640, &unk_23E905090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903380;
  *(inited + 56) = v41;
  *(inited + 64) = sub_23E8C88E0(&qword_27E35F030, &qword_27E35ED08, &unk_23E905D60, &unk_23E905048);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_23E8891B4(v20, boxed_opaque_existential_1, &qword_27E35ED08, &unk_23E905D60);
  v61 = v43;
  sub_23E8EBFB4(inited);
  sub_23E87E458(v20, &qword_27E35ED08, &unk_23E905D60);
  return v61;
}

uint64_t sub_23E8ECCF4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F690, &unk_23E906F50);
  v59 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = &v47 - v9;
  v10 = sub_23E9006D4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ED20, &qword_23E9079E0);
  v54 = *(v58 - 8);
  v16 = MEMORY[0x28223BE20](v58);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  v21 = *(a1 + 16);
  if (v21)
  {
    v47 = a2;
    v52 = v15;
    v48 = &v47 - v19;
    v49 = a3;
    v50 = a4;
    v61 = MEMORY[0x277D84F90];
    v57 = v10;
    sub_23E8AF89C(0, v21, 0);
    v22 = v57;
    v23 = v61;
    v24 = a1 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v55 = (v11 + 16);
    v56 = v11;
    v59 = *(v59 + 72);
    v25 = v24;
    v26 = v21;
    do
    {
      v27 = v60;
      sub_23E8891B4(v25, v60, &unk_27E35F690, &unk_23E906F50);
      v53 = *v55;
      v53(v18, v27, v22);
      sub_23E87E3F0(v27, &v18[*(v58 + 36)], &unk_27E35F690, &unk_23E906F50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6A0, &qword_23E9079E8);
      swift_storeEnumTagMultiPayload();
      v61 = v23;
      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_23E8AF89C((v28 > 1), v29 + 1, 1);
        v23 = v61;
      }

      *(v23 + 16) = v29 + 1;
      sub_23E87E3F0(v18, v23 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v29, &qword_27E35ED20, &qword_23E9079E0);
      v25 += v59;
      --v26;
      v22 = v57;
    }

    while (v26);
    v53(v52, v47, v57);
    v61 = MEMORY[0x277D84F90];
    sub_23E8AF7FC(0, v21, 0);
    v30 = v57;
    v31 = v61;
    v32 = (v56 + 32);
    v55 = ((v56 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
    v33 = v51;
    do
    {
      v34 = v60;
      sub_23E8891B4(v24, v60, &unk_27E35F690, &unk_23E906F50);
      v35 = *v32;
      (*v32)(v33, v34, v30);
      v61 = v31;
      v37 = *(v31 + 16);
      v36 = *(v31 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_23E8AF7FC((v36 > 1), v37 + 1, 1);
        v30 = v57;
        v31 = v61;
      }

      *(v31 + 16) = v37 + 1;
      v35((v31 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v37), v33, v30);
      v24 += v59;
      --v21;
    }

    while (v21);
    LOBYTE(a3) = v49;
    v38 = v50;
    v20 = v48;
    v39 = v30;
    v40 = v52;
  }

  else
  {
    (*(v11 + 16))(v15, a2, v10);
    v35 = *(v11 + 32);
    v40 = v15;
    v23 = MEMORY[0x277D84F90];
    v38 = a4;
    v31 = MEMORY[0x277D84F90];
    v39 = v10;
  }

  v41 = v58;
  v42 = &v20[*(v58 + 36)];
  *v42 = a3;
  v42[1] = v38;
  *(v42 + 1) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6A0, &qword_23E9079E8);
  swift_storeEnumTagMultiPayload();
  v35(v20, v40, v39);
  v43 = sub_23E8BCF4C(v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F640, &unk_23E905090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903380;
  *(inited + 56) = v41;
  *(inited + 64) = sub_23E8C88E0(&qword_27E35F038, &qword_27E35ED20, &qword_23E9079E0, &unk_23E905048);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_23E8891B4(v20, boxed_opaque_existential_1, &qword_27E35ED20, &qword_23E9079E0);
  v61 = v43;
  sub_23E8EBFB4(inited);
  sub_23E87E458(v20, &qword_27E35ED20, &qword_23E9079E0);
  return v61;
}

uint64_t sub_23E8ED310(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6C0, &qword_23E9069E0);
  v59 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = &v47 - v9;
  v10 = sub_23E9006D4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ED38, &unk_23E905D70);
  v54 = *(v58 - 8);
  v16 = MEMORY[0x28223BE20](v58);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  v21 = *(a1 + 16);
  if (v21)
  {
    v47 = a2;
    v52 = v15;
    v48 = &v47 - v19;
    v49 = a3;
    v50 = a4;
    v61 = MEMORY[0x277D84F90];
    v57 = v10;
    sub_23E8AF8DC(0, v21, 0);
    v22 = v57;
    v23 = v61;
    v24 = a1 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v55 = (v11 + 16);
    v56 = v11;
    v59 = *(v59 + 72);
    v25 = v24;
    v26 = v21;
    do
    {
      v27 = v60;
      sub_23E8891B4(v25, v60, &unk_27E35F6C0, &qword_23E9069E0);
      v53 = *v55;
      v53(v18, v27, v22);
      sub_23E87E3F0(v27, &v18[*(v58 + 36)], &unk_27E35F6C0, &qword_23E9069E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6D0, &qword_23E9079F8);
      swift_storeEnumTagMultiPayload();
      v61 = v23;
      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_23E8AF8DC((v28 > 1), v29 + 1, 1);
        v23 = v61;
      }

      *(v23 + 16) = v29 + 1;
      sub_23E87E3F0(v18, v23 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v29, &qword_27E35ED38, &unk_23E905D70);
      v25 += v59;
      --v26;
      v22 = v57;
    }

    while (v26);
    v53(v52, v47, v57);
    v61 = MEMORY[0x277D84F90];
    sub_23E8AF7FC(0, v21, 0);
    v30 = v57;
    v31 = v61;
    v32 = (v56 + 32);
    v55 = ((v56 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
    v33 = v51;
    do
    {
      v34 = v60;
      sub_23E8891B4(v24, v60, &unk_27E35F6C0, &qword_23E9069E0);
      v35 = *v32;
      (*v32)(v33, v34, v30);
      v61 = v31;
      v37 = *(v31 + 16);
      v36 = *(v31 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_23E8AF7FC((v36 > 1), v37 + 1, 1);
        v30 = v57;
        v31 = v61;
      }

      *(v31 + 16) = v37 + 1;
      v35((v31 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v37), v33, v30);
      v24 += v59;
      --v21;
    }

    while (v21);
    LOBYTE(a3) = v49;
    v38 = v50;
    v20 = v48;
    v39 = v30;
    v40 = v52;
  }

  else
  {
    (*(v11 + 16))(v15, a2, v10);
    v35 = *(v11 + 32);
    v40 = v15;
    v23 = MEMORY[0x277D84F90];
    v38 = a4;
    v31 = MEMORY[0x277D84F90];
    v39 = v10;
  }

  v41 = v58;
  v42 = &v20[*(v58 + 36)];
  *v42 = a3;
  v42[1] = v38;
  *(v42 + 1) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6D0, &qword_23E9079F8);
  swift_storeEnumTagMultiPayload();
  v35(v20, v40, v39);
  v43 = sub_23E8BCF68(v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F640, &unk_23E905090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903380;
  *(inited + 56) = v41;
  *(inited + 64) = sub_23E8C88E0(&qword_27E35F040, &qword_27E35ED38, &unk_23E905D70, &unk_23E905048);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_23E8891B4(v20, boxed_opaque_existential_1, &qword_27E35ED38, &unk_23E905D70);
  v61 = v43;
  sub_23E8EBFB4(inited);
  sub_23E87E458(v20, &qword_27E35ED38, &unk_23E905D70);
  return v61;
}

uint64_t sub_23E8ED92C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6F0, qword_23E903D18);
  v59 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = &v47 - v9;
  v10 = sub_23E9006D4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ED50, &qword_23E907A10);
  v54 = *(v58 - 8);
  v16 = MEMORY[0x28223BE20](v58);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  v21 = *(a1 + 16);
  if (v21)
  {
    v47 = a2;
    v52 = v15;
    v48 = &v47 - v19;
    v49 = a3;
    v50 = a4;
    v61 = MEMORY[0x277D84F90];
    v57 = v10;
    sub_23E8AF91C(0, v21, 0);
    v22 = v57;
    v23 = v61;
    v24 = a1 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v55 = (v11 + 16);
    v56 = v11;
    v59 = *(v59 + 72);
    v25 = v24;
    v26 = v21;
    do
    {
      v27 = v60;
      sub_23E8891B4(v25, v60, &unk_27E35F6F0, qword_23E903D18);
      v53 = *v55;
      v53(v18, v27, v22);
      sub_23E87E3F0(v27, &v18[*(v58 + 36)], &unk_27E35F6F0, qword_23E903D18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F700, &unk_23E907A18);
      swift_storeEnumTagMultiPayload();
      v61 = v23;
      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_23E8AF91C((v28 > 1), v29 + 1, 1);
        v23 = v61;
      }

      *(v23 + 16) = v29 + 1;
      sub_23E87E3F0(v18, v23 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v29, &qword_27E35ED50, &qword_23E907A10);
      v25 += v59;
      --v26;
      v22 = v57;
    }

    while (v26);
    v53(v52, v47, v57);
    v61 = MEMORY[0x277D84F90];
    sub_23E8AF7FC(0, v21, 0);
    v30 = v57;
    v31 = v61;
    v32 = (v56 + 32);
    v55 = ((v56 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
    v33 = v51;
    do
    {
      v34 = v60;
      sub_23E8891B4(v24, v60, &unk_27E35F6F0, qword_23E903D18);
      v35 = *v32;
      (*v32)(v33, v34, v30);
      v61 = v31;
      v37 = *(v31 + 16);
      v36 = *(v31 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_23E8AF7FC((v36 > 1), v37 + 1, 1);
        v30 = v57;
        v31 = v61;
      }

      *(v31 + 16) = v37 + 1;
      v35((v31 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v37), v33, v30);
      v24 += v59;
      --v21;
    }

    while (v21);
    LOBYTE(a3) = v49;
    v38 = v50;
    v20 = v48;
    v39 = v30;
    v40 = v52;
  }

  else
  {
    (*(v11 + 16))(v15, a2, v10);
    v35 = *(v11 + 32);
    v40 = v15;
    v23 = MEMORY[0x277D84F90];
    v38 = a4;
    v31 = MEMORY[0x277D84F90];
    v39 = v10;
  }

  v41 = v58;
  v42 = &v20[*(v58 + 36)];
  *v42 = a3;
  v42[1] = v38;
  *(v42 + 1) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F700, &unk_23E907A18);
  swift_storeEnumTagMultiPayload();
  v35(v20, v40, v39);
  v43 = sub_23E8BCF84(v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F640, &unk_23E905090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903380;
  *(inited + 56) = v41;
  *(inited + 64) = sub_23E8C88E0(&qword_27E35F048, &qword_27E35ED50, &qword_23E907A10, &unk_23E905048);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_23E8891B4(v20, boxed_opaque_existential_1, &qword_27E35ED50, &qword_23E907A10);
  v61 = v43;
  sub_23E8EBFB4(inited);
  sub_23E87E458(v20, &qword_27E35ED50, &qword_23E907A10);
  return v61;
}

uint64_t sub_23E8EDF48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E888F34;

  return sub_23E8EDFD8();
}

uint64_t sub_23E8EDFD8()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8EE074, 0, 0);
}

uint64_t sub_23E8EE074()
{
  v1 = v0[3];
  v2 = *(v0[2] + 136);
  v0[4] = v2;
  os_unfair_lock_lock(v2 + 17);
  sub_23E8F2F34(&v2[4], v1);
  os_unfair_lock_unlock(v2 + 17);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_23E8EE18C;
  v4 = v0[3];

  return sub_23E8EE604(v4);
}

uint64_t sub_23E8EE18C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_23E8EE37C;
  }

  else
  {
    v2 = sub_23E8EE2A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E8EE2A0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  os_unfair_lock_lock(v2 + 17);
  sub_23E8F2F4C(&v2[4]);
  os_unfair_lock_unlock(v2 + 17);

  sub_23E8EE400(v3);
  sub_23E87E458(v1, &unk_27E35E630, &qword_23E903300);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23E8EE37C()
{
  v1 = v0[3];
  sub_23E8EE400(v0[2]);
  sub_23E87E458(v1, &unk_27E35E630, &qword_23E903300);

  v2 = v0[1];

  return v2();
}

void sub_23E8EE400(uint64_t a1)
{
  v1 = *(a1 + 136);
  os_unfair_lock_lock(v1 + 17);
  sub_23E8EFD44(&v1[4]);

  os_unfair_lock_unlock(v1 + 17);
}

uint64_t sub_23E8EE604(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v2[38] = type metadata accessor for RenderTransactionAction(0);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  v2[42] = swift_task_alloc();
  v2[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v3 = sub_23E900694();
  v2[47] = v3;
  v2[48] = *(v3 - 8);
  v2[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8EE798, 0, 0);
}

uint64_t sub_23E8EE798()
{
  v62 = v0;
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];
  sub_23E900684();
  sub_23E900674();
  v5 = v4;
  v0[50] = v4;
  (*(v2 + 8))(v1, v3);
  if (qword_27E35E180 != -1)
  {
    swift_once();
  }

  v6 = v0[46];
  v7 = v0[36];
  v8 = sub_23E900764();
  v0[51] = __swift_project_value_buffer(v8, qword_27E367150);
  sub_23E8891B4(v7, v6, &unk_27E35E630, &qword_23E903300);
  v9 = sub_23E900744();
  v10 = sub_23E900B14();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[46];
  if (v11)
  {
    v13 = v0[45];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v61[0] = v15;
    *v14 = 134218242;
    *(v14 + 4) = v5;
    *(v14 + 12) = 2080;
    sub_23E8891B4(v12, v13, &unk_27E35E630, &qword_23E903300);
    v16 = sub_23E9008D4();
    v18 = v17;
    sub_23E87E458(v12, &unk_27E35E630, &qword_23E903300);
    v19 = sub_23E887B9C(v16, v18, v61);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_23E879000, v9, v10, "[%f] Apply Root -> %s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x23EF18560](v15, -1, -1);
    MEMORY[0x23EF18560](v14, -1, -1);
  }

  else
  {

    sub_23E87E458(v12, &unk_27E35E630, &qword_23E903300);
  }

  v20 = v0[42];
  v21 = v0[36];
  v22 = v0[37];
  v23 = OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_rootNode;
  swift_beginAccess();
  sub_23E8891B4(v22 + v23, v20, &unk_27E35F3D0, &qword_23E905770);
  v24 = sub_23E8E9EA4(v20, v21);
  v0[52] = v24;
  v27 = v24;
  v28 = v0[44];
  v29 = v0[36];
  sub_23E87E458(v0[42], &unk_27E35F3D0, &qword_23E905770);
  sub_23E8891B4(v29, v28, &unk_27E35E630, &qword_23E903300);

  v30 = sub_23E900744();
  v31 = sub_23E900B14();
  v32 = os_log_type_enabled(v30, v31);
  v33 = v0[44];
  if (v32)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v61[0] = v35;
    *v34 = 134218498;
    *(v34 + 4) = v5;
    *(v34 + 12) = 2048;
    *(v34 + 14) = v27[2];

    *(v34 + 22) = 2080;
    sub_23E9006D4();
    sub_23E8F1538(&qword_27E35F5C8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v36 = sub_23E900DD4();
    v38 = v37;
    sub_23E87E458(v33, &unk_27E35E630, &qword_23E903300);
    v39 = sub_23E887B9C(v36, v38, v61);

    *(v34 + 24) = v39;
    _os_log_impl(&dword_23E879000, v30, v31, "[%f] %ld actions created for %s", v34, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x23EF18560](v35, -1, -1);
    MEMORY[0x23EF18560](v34, -1, -1);
  }

  else
  {

    sub_23E87E458(v33, &unk_27E35E630, &qword_23E903300);
  }

  v40 = v0[41];
  v41 = v0[38];
  _s10AirPlayKit16ContainerContentV2id10Foundation4UUIDVvg_0();
  *(v40 + *(v41 + 20)) = v27;
  if (v27[2])
  {
    sub_23E8F2D1C(v0[41], v0[40], type metadata accessor for RenderTransactionAction);
    v42 = sub_23E900744();
    v43 = sub_23E900B14();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v0[40];
    if (v44)
    {
      v46 = swift_slowAlloc();
      *v46 = 134218240;
      *(v46 + 4) = v5;
      *(v46 + 12) = 2048;
      v47 = *(*(v45 + *(v41 + 20)) + 16);
      sub_23E8F2D84(v45, type metadata accessor for RenderTransactionAction);
      *(v46 + 14) = v47;
      _os_log_impl(&dword_23E879000, v42, v43, "[%f] Attempting to send %ld display tree actions", v46, 0x16u);
      MEMORY[0x23EF18560](v46, -1, -1);
    }

    else
    {
      sub_23E8F2D84(v0[40], type metadata accessor for RenderTransactionAction);
    }

    v53 = v0[41];
    v55 = v0[37];
    v54 = v0[38];

    v56 = v55[5];
    v57 = v55[6];
    __swift_project_boxed_opaque_existential_1(v55 + 2, v56);
    v0[11] = v54;
    v0[12] = sub_23E8F1538(&qword_27E35EFF8, type metadata accessor for RenderTransactionAction, &unk_23E906480);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 8);
    sub_23E8F2D1C(v53, boxed_opaque_existential_1, type metadata accessor for RenderTransactionAction);
    v60 = (*(v57 + 16) + **(v57 + 16));
    v59 = swift_task_alloc();
    v0[53] = v59;
    *v59 = v0;
    v59[1] = sub_23E8EEFEC;

    return v60(v0 + 8, v56, v57);
  }

  else
  {
    v48 = sub_23E900744();
    v49 = sub_23E900B14();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      *(v50 + 4) = v5;
      _os_log_impl(&dword_23E879000, v48, v49, "[%f] No actions for transaction!", v50, 0xCu);
      MEMORY[0x23EF18560](v50, -1, -1);
    }

    v51 = v0[41];

    sub_23E8F14E4();
    swift_allocError();
    *v52 = 3;
    swift_willThrow();
    sub_23E8F2D84(v51, type metadata accessor for RenderTransactionAction);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_23E8EEFEC()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = sub_23E8EF5E0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 64));
    v3 = sub_23E8EF108;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_23E8EF108()
{
  v33 = v0;
  sub_23E8891B4(v0[37] + 56, (v0 + 13), &unk_27E35F5B0, &unk_23E903040);
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[41];
    v3 = v0[38];
    v4 = v0[17];
    __swift_project_boxed_opaque_existential_1(v0 + 13, v0[16]);
    v0[31] = v3;
    v0[32] = &off_28511E6A0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 28);
    sub_23E8F2D1C(v2, boxed_opaque_existential_1, type metadata accessor for RenderTransactionAction);
    (*(v4 + 24))(v0 + 28, v1, v4);
    __swift_destroy_boxed_opaque_existential_1(v0 + 28);
    __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  }

  else
  {
    sub_23E87E458((v0 + 13), &unk_27E35F5B0, &unk_23E903040);
  }

  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_23E900854();
  v8 = [v6 BOOLForKey_];

  if (v8 && (v9 = v0[52], (v10 = *(v9 + 16)) != 0))
  {
    v11 = 0;
    v12 = v9 + 32;
    v31 = *(v9 + 16);
    while (v11 < *(v0[52] + 16))
    {
      v0[2] = v11;
      sub_23E8810DC(v12, (v0 + 3));
      sub_23E8810DC((v0 + 3), (v0 + 18));
      v13 = sub_23E900744();
      v14 = sub_23E900B14();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = v0[50];
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v32 = v17;
        *v16 = 134218498;
        *(v16 + 4) = v15;
        *(v16 + 12) = 2048;
        *(v16 + 14) = v11;
        *(v16 + 22) = 2080;
        sub_23E8810DC((v0 + 18), (v0 + 23));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F5C0, &unk_23E905D80);
        v18 = sub_23E9008D4();
        v20 = v19;
        __swift_destroy_boxed_opaque_existential_1(v0 + 18);
        v21 = sub_23E887B9C(v18, v20, &v32);

        *(v16 + 24) = v21;
        v10 = v31;
        _os_log_impl(&dword_23E879000, v13, v14, "[%f] %ld - %s", v16, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x23EF18560](v17, -1, -1);
        MEMORY[0x23EF18560](v16, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v0 + 18);
      }

      ++v11;
      sub_23E87E458((v0 + 2), qword_27E35EF48, &unk_23E9057F0);
      v12 += 40;
      if (v10 == v11)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    sub_23E8F2D1C(v0[41], v0[39], type metadata accessor for RenderTransactionAction);
    v22 = sub_23E900744();
    v23 = sub_23E900B14();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v0[50];
      v26 = v0[38];
      v25 = v0[39];
      v27 = swift_slowAlloc();
      *v27 = 134218240;
      *(v27 + 4) = v24;
      *(v27 + 12) = 2048;
      v28 = *(*(v25 + *(v26 + 20)) + 16);
      sub_23E8F2D84(v25, type metadata accessor for RenderTransactionAction);
      *(v27 + 14) = v28;
      _os_log_impl(&dword_23E879000, v22, v23, "[%f] Success sending %ld display tree actions", v27, 0x16u);
      MEMORY[0x23EF18560](v27, -1, -1);
    }

    else
    {
      sub_23E8F2D84(v0[39], type metadata accessor for RenderTransactionAction);
    }

    v29 = v0[41];

    sub_23E8F2D84(v29, type metadata accessor for RenderTransactionAction);

    v30 = v0[1];

    v30();
  }
}

uint64_t sub_23E8EF5E0()
{
  sub_23E8F2D84(v0[41], type metadata accessor for RenderTransactionAction);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23E8EF6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  sub_23E8F14AC(a1, v34);
  if (v36)
  {
    sub_23E8F1408(v34);
    sub_23E8F14E4();
    swift_allocError();
    *v17 = 2;
    return swift_willThrow();
  }

  v40 = v3;
  v19 = v35;
  sub_23E881028(v34, v37);
  if (*(a2 + 144) == 1)
  {
    v31 = a3;
    v32 = v19;
    v33 = a2;
    v20 = v38;
    v21 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    (*(v21 + 8))(v20, v21);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_23E87E3F0(v12, v16, &unk_27E35E630, &qword_23E903300);
      v23 = *(v33 + 40);
      v24 = *(v33 + 48);
      __swift_project_boxed_opaque_existential_1((v33 + 16), v23);
      v25 = v40;
      (*(v24 + 8))(v23, v24);
      if (v25)
      {
        (*(v14 + 56))(v10, 1, 1, v13);
        v26 = OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_rootNode;
        v27 = v33;
        swift_beginAccess();
        sub_23E8F1354(v10, v27 + v26);
        swift_endAccess();
        swift_willThrow();
        swift_unknownObjectRelease();
        sub_23E87E458(v16, &unk_27E35E630, &qword_23E903300);
      }

      else
      {
        sub_23E8F1408(a1);
        v28 = v32;
        if (qword_27E35E180 != -1)
        {
          swift_once();
        }

        v29 = sub_23E900764();
        __swift_project_value_buffer(v29, qword_27E367150);
        sub_23E882260(0xD00000000000006ALL, 0x800000023E9096C0, 0xD000000000000018, 0x800000023E909790);
        *(v33 + 144) = 0;
        sub_23E8810DC(v37, a1);
        *(a1 + 40) = v28;
        *(a1 + 48) = 1;
        sub_23E87E3F0(v16, v31, &unk_27E35E630, &qword_23E903300);
      }

      return __swift_destroy_boxed_opaque_existential_1(v37);
    }

    sub_23E87E458(v12, &unk_27E35F3D0, &qword_23E905770);
  }

  sub_23E8F14E4();
  swift_allocError();
  *v22 = 3;
  swift_willThrow();
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_23E8EFAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18[-1] - v7;
  sub_23E8F14AC(a1, v18);
  if (v19 == 1)
  {
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v18);
    if (qword_27E35E180 != -1)
    {
      swift_once();
    }

    v9 = sub_23E900764();
    __swift_project_value_buffer(v9, qword_27E367150);
    sub_23E882260(0xD00000000000006ALL, 0x800000023E9096C0, 0xD000000000000016, 0x800000023E909770);
    sub_23E8891B4(a3, v8, &unk_27E35E630, &qword_23E903300);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
    v11 = OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_rootNode;
    swift_beginAccess();
    sub_23E8F1354(v8, a2 + v11);
    swift_endAccess();
    v12 = a2 + OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_onRootNodeUpdated;
    result = swift_beginAccess();
    v14 = *v12;
    if (*v12)
    {
      v15 = *(v12 + 8);

      v14(a3);
      return sub_23E882A30(v14, v15);
    }
  }

  else
  {
    sub_23E8F1408(v18);
    sub_23E8F14E4();
    swift_allocError();
    *v16 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_23E8EFD44(uint64_t a1)
{
  sub_23E8F14AC(a1, v6);
  if (v8 == 1)
  {
    sub_23E8F1408(a1);
    v2 = v7;
    sub_23E881028(v6, v9);
    if (qword_27E35E180 != -1)
    {
      swift_once();
    }

    v3 = sub_23E900764();
    __swift_project_value_buffer(v3, qword_27E367150);
    sub_23E882260(0xD00000000000006ALL, 0x800000023E9096C0, 0xD000000000000018, 0x800000023E909750);
    result = sub_23E881028(v9, a1);
    *(a1 + 40) = v2;
    *(a1 + 48) = 0;
  }

  else
  {
    sub_23E8F1408(v6);
    sub_23E8F14E4();
    swift_allocError();
    *v5 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_23E8EFE74()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_23E87E458(v0 + 56, &unk_27E35F5B0, &unk_23E903040);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  sub_23E87E458(v0 + OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_rootNode, &unk_27E35F3D0, &qword_23E905770);
  sub_23E882A30(*(v0 + OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_onRootNodeUpdated), *(v0 + OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_onRootNodeUpdated + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AirPlayOverlayDisplayTree(uint64_t a1)
{
  result = qword_27E35F588;
  if (!qword_27E35F588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23E8EFF80(uint64_t a1)
{
  sub_23E8F0048(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23E8F0048(uint64_t a1)
{
  if (!qword_27E35F810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E35E630, &qword_23E903300);
    v1 = sub_23E900BD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27E35F810);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10AirPlayKit0aB18OverlayDisplayTreeC5StateO(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_23E8F00E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23E8F0120(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_23E8F0170(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_23E8F01A8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8F0248, 0, 0);
}

uint64_t sub_23E8F0248()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = *(v1 + 136);
  v0[7] = v3;
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  os_unfair_lock_lock(v3 + 17);
  sub_23E8F1438(&v3[4]);
  os_unfair_lock_unlock(v3 + 17);

  if (qword_27E35E180 != -1)
  {
    swift_once();
  }

  v5 = v0[6];
  v6 = sub_23E900764();
  v0[8] = __swift_project_value_buffer(v6, qword_27E367150);
  sub_23E882260(0xD00000000000006ALL, 0x800000023E9096C0, 0xD00000000000001FLL, 0x800000023E909730);
  os_unfair_lock_lock(v3 + 17);
  sub_23E8F1454(&v3[4], v5);
  os_unfair_lock_unlock(v3 + 17);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_23E8F05CC;
  v8 = v0[6];

  return sub_23E8EE604(v8);
}

uint64_t sub_23E8F05CC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_23E8F098C;
  }

  else
  {
    v2 = sub_23E8F06E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E8F06E0()
{
  v22 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  *(swift_task_alloc() + 16) = *(v0 + 40);
  os_unfair_lock_lock(v2 + 17);
  sub_23E8F1490(&v2[4]);
  v3 = *(v0 + 56);
  if (v1)
  {
    v4 = *(v0 + 48);
    os_unfair_lock_unlock(v3 + 17);

    sub_23E87E458(v4, &unk_27E35E630, &qword_23E903300);
    v6 = v1;
    v7 = sub_23E900744();
    v8 = sub_23E900B04();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136446210;
      *(v0 + 16) = v1;
      v11 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
      v12 = sub_23E9008D4();
      v14 = sub_23E887B9C(v12, v13, &v21);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_23E879000, v7, v8, "Failed to send initial display tree: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x23EF18560](v10, -1, -1);
      MEMORY[0x23EF18560](v9, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    os_unfair_lock_unlock(v3 + 17);

    os_unfair_lock_lock(v3 + 17);
    sub_23E8EFD44(&v3[4]);
    v5 = *(v0 + 48);
    os_unfair_lock_unlock((*(v0 + 56) + 68));
    sub_23E87E458(v5, &unk_27E35E630, &qword_23E903300);
  }

  v15 = *(v0 + 56);
  v20 = *(v0 + 32);
  v16 = *(v0 + 24);
  v17 = swift_task_alloc();
  *(v17 + 16) = v20;
  *(v17 + 32) = v16;
  os_unfair_lock_lock(v15 + 17);
  sub_23E8F1470(&v15[4]);
  os_unfair_lock_unlock(v15 + 17);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_23E8F098C()
{
  v18 = v0;
  sub_23E87E458(*(v0 + 48), &unk_27E35E630, &qword_23E903300);
  v1 = *(v0 + 80);
  v2 = v1;
  v3 = sub_23E900744();
  v4 = sub_23E900B04();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    *(v0 + 16) = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
    v8 = sub_23E9008D4();
    v10 = sub_23E887B9C(v8, v9, &v17);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_23E879000, v3, v4, "Failed to send initial display tree: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x23EF18560](v6, -1, -1);
    MEMORY[0x23EF18560](v5, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 56);
  v16 = *(v0 + 32);
  v12 = *(v0 + 24);
  v13 = swift_task_alloc();
  *(v13 + 16) = v16;
  *(v13 + 32) = v12;
  os_unfair_lock_lock(v11 + 17);
  sub_23E8F1470(&v11[4]);
  os_unfair_lock_unlock(v11 + 17);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_23E8F0BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23E8F14AC(a1, v12);
  if (v15 == 2 && (v6 = vorrq_s8(v13, v14), !(*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v12[1] | v12[0])))
  {
    sub_23E8F1408(a1);
    sub_23E8F1408(v12);
    v9 = *(a2 + 120);
    v10 = *(a2 + 128);
    __swift_project_boxed_opaque_existential_1((a2 + 96), v9);
    v11 = DispatchSourceTimerProviding.makeTimer(fireInterval:handler:)(nullsub_1, 0, v9, v10, 0.0);
    result = sub_23E8810DC(a3, a1);
    *(a1 + 40) = v11;
    *(a1 + 48) = 0;
    *(a2 + 144) = 1;
  }

  else
  {
    sub_23E8F1408(v12);
    sub_23E8F14E4();
    swift_allocError();
    *v7 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_23E8F0CDC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_23E8F1408(a1);
  v8 = 1.0 / a2;
  v9 = a3[15];
  v10 = a3[16];
  __swift_project_boxed_opaque_existential_1(a3 + 12, v9);
  v11 = swift_allocObject();
  swift_weakInit();

  v12 = DispatchSourceTimerProviding.makeRepeatingTimer(fireInterval:handler:)(sub_23E8F2E1C, v11, v9, v10, v8);

  result = sub_23E8810DC(a4, a1);
  *(a1 + 40) = v12;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_23E8F0DD0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_23E900A74();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_23E8EBD08(0, 0, v3, &unk_23E907A70, v7);
  }

  return result;
}

uint64_t sub_23E8F0EF0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  *(a2 + 144) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_rootNode;
  swift_beginAccess();
  sub_23E8F1354(v5, a2 + v7);
  return swift_endAccess();
}

uint64_t sub_23E8F0FF8()
{
  v1 = (*v0 + OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_onRootNodeUpdated);
  swift_beginAccess();
  v2 = *v1;
  sub_23E8829CC(*v1, v1[1]);
  return v2;
}

uint64_t sub_23E8F1058(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_onRootNodeUpdated);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_23E882A30(v6, v7);
}