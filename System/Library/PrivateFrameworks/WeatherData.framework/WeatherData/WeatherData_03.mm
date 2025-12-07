Swift::Int sub_272B6A884(unsigned __int8 *a1, Swift::Int a2)
{
  v5 = sub_272B87720();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v54 - v10;
  result = sub_272B54DD0(a1, a2);
  if (v2)
  {
    return result;
  }

  v14 = result;
  v55 = v6;
  v59 = v5;
  v15 = result + v13;
  if (result >= result + v13)
  {
    return result;
  }

  v16 = *a1;
  while (1)
  {
    v17 = v14 + 4;
    if (__OFADD__(v14, 4))
    {
      if (v16)
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_9;
      }

      v19 = 0;
      v18 = 0x7FFFFFFFFFFFFFFFLL;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_11:
      v17 = -v17;
      goto LABEL_12;
    }

    v18 = v14 + 4;
    if (!v16)
    {
      v19 = 0;
      v18 = v14 + 4;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_9:
    if (((*(*(a1 + 5) + 24) + v14) & 3) != 0)
    {
      *&v56 = MEMORY[0x277D84CC0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
      v47 = sub_272B87730();
      v49 = v48;
      sub_272B5C86C();
      swift_allocError();
      *v50 = v14;
      goto LABEL_62;
    }

    v19 = 1;
    if ((v17 & 0x8000000000000000) != 0)
    {
      goto LABEL_11;
    }

LABEL_12:
    v20 = *(a1 + 5);
    v21 = *(v20 + 32);
    if ((v21 & 0x8000000000000000) != 0 || v21 < v17)
    {
      v33 = *(a1 + 1);
      sub_272B5C86C();
      swift_allocError();
      *v34 = v17;
      goto LABEL_54;
    }

    v22 = *(a1 + 4);
    *(a1 + 4) = v22 + 4;
    v23 = *(a1 + 16);
    if (v23 < v22 + 4)
    {
      goto LABEL_47;
    }

    v24 = *(v20 + 24);
    v25 = v14 + *(v24 + v14);
    v26 = v25 >= 0 ? v14 + *(v24 + v14) : -v25;
    if ((v26 & 0x8000000000000000) == 0)
    {
      break;
    }

    v26 = 0x7FFFFFFFFFFFFFFFLL;
    if (v19)
    {
      goto LABEL_20;
    }

    v27 = 0x8000000000000003;
LABEL_22:
    v27 = -v27;
LABEL_23:
    if (v21 < v27)
    {
      goto LABEL_48;
    }

    v28 = v22 + 8;
    *(a1 + 4) = v28;
    if (v23 < v28)
    {
LABEL_47:
      sub_272B5C86C();
      swift_allocError();
      *v34 = 6;
      *(v34 + 8) = 0u;
      *(v34 + 24) = 0u;
      *(v34 + 40) = 0u;
      *(v34 + 56) = 0;
      v35 = 7;
      goto LABEL_56;
    }

    v29 = *(v24 + v26);
    result = -4 - v26;
    if (v26 + 4 >= 0)
    {
      v30 = v26 + 4;
    }

    else
    {
      v30 = -4 - v26;
    }

    if ((v30 & 0x8000000000000000) == 0)
    {
      v31 = v30 + v29;
      v27 = v30 + v29;
      if (v30 + v29 >= 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v31 = v29 + 0x7FFFFFFFFFFFFFFFLL;
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    if (v29 + 0x7FFFFFFFFFFFFFFFLL < 0)
    {
      v30 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_30:
      v27 = -v31;
      goto LABEL_31;
    }

    v30 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_31:
    if (v21 < v27)
    {
LABEL_48:
      v36 = *(a1 + 1);
      sub_272B5C86C();
      swift_allocError();
      *v34 = v27;
      *(v34 + 8) = v36;
      goto LABEL_55;
    }

    *(a1 + 4) = v29 + v28;
    if (v23 < v29 + v28)
    {
      goto LABEL_47;
    }

    v32 = v30 + v29;
    v33 = *(a1 + 1);
    if (v30 + v29 >= v33)
    {
      if (v32 >= 0)
      {
        v37 = v30 + v29;
      }

      else
      {
        v37 = -v32;
      }

      sub_272B5C86C();
      swift_allocError();
      *v34 = v37;
LABEL_54:
      *(v34 + 8) = v33;
LABEL_55:
      v39 = v57;
      v38 = v58;
      *(v34 + 16) = v56;
      *(v34 + 32) = v39;
      *(v34 + 48) = v38;
      v35 = 1;
LABEL_56:
      *(v34 + 64) = v35;
      return swift_willThrow();
    }

    if ((a1[76] & 1) == 0 && *(v24 + v32))
    {
      sub_272B87710();
      *&v56 = sub_272B51468((*(v20 + 24) + v30), v29);
      v40 = v55;
      v41 = v59;
      (*(v55 + 16))(v9, v11, v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3210, &qword_272B89868);
      sub_272B549E8();
      v42 = sub_272B87700();
      v44 = v43;

      (*(v40 + 8))(v11, v41);
      sub_272B5C86C();
      swift_allocError();
      *v34 = v26;
      *(v34 + 8) = v42;
      *(v34 + 16) = v44;
      v45 = v58;
      v46 = v57;
      *(v34 + 24) = v56;
      *(v34 + 40) = v46;
      *(v34 + 56) = v45;
      v35 = 4;
      goto LABEL_56;
    }

    v14 = v18;
    if (v18 >= v15)
    {
      return result;
    }
  }

  if (!v19)
  {
    goto LABEL_21;
  }

LABEL_20:
  if (((v24 + v26) & 3) == 0)
  {
LABEL_21:
    v27 = v26 + 4;
    if (v26 + 4 >= 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  *&v56 = MEMORY[0x277D84CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
  v47 = sub_272B87730();
  v49 = v51;
  sub_272B5C86C();
  swift_allocError();
  *v50 = v26;
LABEL_62:
  *(v50 + 8) = v47;
  *(v50 + 16) = v49;
  v52 = v58;
  v53 = v57;
  *(v50 + 24) = v56;
  *(v50 + 40) = v53;
  *(v50 + 56) = v52;
  *(v50 + 64) = 0;
  return swift_willThrow();
}

void sub_272B6ADBC(uint64_t a1, Swift::Int a2)
{
  v4 = sub_272B54DD0(a1, a2);
  if (!v2)
  {
    v6 = v4;
    v7 = v4 + v5;
    if (v4 < v4 + v5)
    {
      do
      {
        v8 = v6 + 4;
        if (__OFADD__(v6, 4))
        {
          v9 = 0x7FFFFFFFFFFFFFFFLL;
          if ((*a1 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v9 = v6 + 4;
          if (!*a1)
          {
            goto LABEL_9;
          }
        }

        if (((*(*(a1 + 40) + 24) + v6) & 3) != 0)
        {
          *__src = MEMORY[0x277D84CC0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
          v30 = sub_272B87730();
          v32 = v31;
          sub_272B5C86C();
          swift_allocError();
          *v33 = v6;
          *(v33 + 8) = v30;
          *(v33 + 16) = v32;
          v34 = *&__src[32];
          v35 = *&__src[16];
          *(v33 + 24) = *__src;
          *(v33 + 40) = v35;
          *(v33 + 56) = v34;
          *(v33 + 64) = 0;
          goto LABEL_44;
        }

LABEL_9:
        if ((v8 & 0x8000000000000000) != 0)
        {
          v8 = -v8;
        }

        v10 = *(a1 + 40);
        v11 = *(v10 + 32);
        if ((v11 & 0x8000000000000000) != 0 || v11 < v8)
        {
          v20 = *(a1 + 8);
          sub_272B5C86C();
          swift_allocError();
          *v21 = v8;
          *(v21 + 8) = v20;
          v22 = *&__src[32];
          v23 = *&__src[16];
          *(v21 + 16) = *__src;
          *(v21 + 32) = v23;
          *(v21 + 48) = v22;
          v24 = 1;
          goto LABEL_38;
        }

        v12 = *(a1 + 16) + 4;
        *(a1 + 16) = v12;
        if (*(a1 + 64) < v12)
        {
          sub_272B5C86C();
          swift_allocError();
          *v21 = 6;
          *(v21 + 8) = 0u;
          *(v21 + 24) = 0u;
          *(v21 + 40) = 0u;
          *(v21 + 56) = 0;
          v24 = 7;
LABEL_38:
          *(v21 + 64) = v24;
LABEL_44:
          swift_willThrow();
          return;
        }

        v13 = v6 + *(*(v10 + 24) + v6);
        if (v13 < 0)
        {
          v13 = -v13;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        Verifier.visitTable(at:)(v14, __src);
        if (*&__src[16] > 4)
        {
          v15 = *&__src[8] + 4;
          if (__src[24] == 1 && ((*(*&__src[64] + 24) + v15) & 1) != 0)
          {
            *v42 = MEMORY[0x277D84C58];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
            v36 = sub_272B87730();
            v38 = v37;
            sub_272B5C86C();
            swift_allocError();
            *v39 = v15;
            *(v39 + 8) = v36;
            *(v39 + 16) = v38;
            v40 = *&v42[32];
            v41 = *&v42[16];
            *(v39 + 24) = *v42;
            *(v39 + 40) = v41;
            *(v39 + 56) = v40;
            *(v39 + 64) = 0;
            goto LABEL_42;
          }

          v16 = *&__src[8] + 6;
          if (*&__src[8] + 6 < 0)
          {
            v16 = -v16;
          }

          v17 = *(*&__src[64] + 32);
          if ((v17 & 0x8000000000000000) != 0 || v17 < v16)
          {
LABEL_39:
            v25 = *&__src[32];
            sub_272B5C86C();
            swift_allocError();
            *v26 = v16;
            *(v26 + 8) = v25;
            v28 = *&v42[16];
            v27 = *&v42[32];
            *(v26 + 16) = *v42;
            *(v26 + 32) = v28;
            *(v26 + 48) = v27;
            v29 = 1;
            goto LABEL_41;
          }

          v18 = *&__src[40];
          *&__src[40] += 2;
          if (*&__src[88] < *&__src[40])
          {
            goto LABEL_40;
          }

          if (*(*(*&__src[64] + 24) + v15))
          {
            v19 = *__src + *(*(*&__src[64] + 24) + v15);
            if (v19 + 1 >= 0)
            {
              v16 = v19 + 1;
            }

            else
            {
              v16 = ~v19;
            }

            if (v17 < v16)
            {
              goto LABEL_39;
            }

            *&__src[40] = v18 + 3;
            if (*&__src[88] < (v18 + 3))
            {
LABEL_40:
              sub_272B5C86C();
              swift_allocError();
              *v26 = 6;
              *(v26 + 8) = 0u;
              *(v26 + 24) = 0u;
              *(v26 + 40) = 0u;
              *(v26 + 56) = 0;
              v29 = 7;
LABEL_41:
              *(v26 + 64) = v29;
LABEL_42:
              swift_willThrow();
              memcpy(v42, __src, sizeof(v42));
              sub_272B522C4(v42);
              return;
            }
          }
        }

        sub_272B53EA4(6, 0x73646F69726570, 0xE700000000000000, 1, sub_272B57734);
        if (__OFSUB__(*&__src[56], 1))
        {
          __break(1u);
          return;
        }

        --*&__src[56];
        memcpy(v42, __src, sizeof(v42));
        sub_272B522C4(v42);
        v6 = v9;
      }

      while (v9 < v7);
    }
  }
}

void sub_272B6B448(uint64_t a1, Swift::Int a2)
{
  v4 = sub_272B54DD0(a1, a2);
  if (!v2)
  {
    v6 = v4;
    v7 = v4 + v5;
    if (v4 < v4 + v5)
    {
      do
      {
        v8 = v6 + 4;
        if (__OFADD__(v6, 4))
        {
          v9 = 0x7FFFFFFFFFFFFFFFLL;
          if ((*a1 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v9 = v6 + 4;
          if (!*a1)
          {
            goto LABEL_9;
          }
        }

        if (((*(*(a1 + 40) + 24) + v6) & 3) != 0)
        {
          *&__src[0] = MEMORY[0x277D84CC0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
          v43 = sub_272B87730();
          v45 = v44;
          sub_272B5C86C();
          swift_allocError();
          *v46 = v6;
          *(v46 + 8) = v43;
          *(v46 + 16) = v45;
          v47 = *&__src[2];
          v48 = __src[1];
          *(v46 + 24) = __src[0];
          *(v46 + 40) = v48;
          *(v46 + 56) = v47;
          *(v46 + 64) = 0;
          goto LABEL_74;
        }

LABEL_9:
        if ((v8 & 0x8000000000000000) != 0)
        {
          v8 = -v8;
        }

        v10 = *(a1 + 40);
        v11 = *(v10 + 32);
        if ((v11 & 0x8000000000000000) != 0 || v11 < v8)
        {
          v35 = *(a1 + 8);
          sub_272B5C86C();
          swift_allocError();
          *v36 = v8;
          *(v36 + 8) = v35;
          v38 = __src[1];
          v37 = __src[2];
          *(v36 + 16) = __src[0];
          *(v36 + 32) = v38;
          *(v36 + 48) = v37;
          v39 = 1;
          goto LABEL_71;
        }

        v12 = *(a1 + 16) + 4;
        *(a1 + 16) = v12;
        if (*(a1 + 64) < v12)
        {
          sub_272B5C86C();
          swift_allocError();
          *v36 = 6;
          *(v36 + 8) = 0u;
          *(v36 + 24) = 0u;
          *(v36 + 40) = 0u;
          *(v36 + 56) = 0;
          v39 = 7;
LABEL_71:
          *(v36 + 64) = v39;
LABEL_74:
          swift_willThrow();
          return;
        }

        v13 = v6 + *(*(v10 + 24) + v6);
        if (v13 < 0)
        {
          v13 = -v13;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        Verifier.visitTable(at:)(v14, __src);
        v15 = *&__src[1];
        if (*&__src[1] >= 5)
        {
          v16 = *(&__src[0] + 1) + 4;
          v17 = BYTE8(__src[1]);
          if (BYTE8(__src[1]) == 1 && ((*(*&__src[4] + 24) + v16) & 1) != 0)
          {
LABEL_76:
            *__dst = MEMORY[0x277D84C58];
            v49 = &qword_2808A3160;
            v50 = &unk_272B87CC0;
            goto LABEL_77;
          }

          v18 = *(&__src[0] + 1) + 6;
          if (*(&__src[0] + 1) + 6 < 0)
          {
            v18 = -v18;
          }

          v19 = *(*&__src[4] + 32);
          if ((v19 & 0x8000000000000000) != 0 || v19 < v18)
          {
LABEL_72:
            v42 = *&__src[2];
            sub_272B5C86C();
            swift_allocError();
            *v40 = v18;
LABEL_79:
            *(v40 + 8) = v42;
            v57 = *&__dst[32];
            v58 = *&__dst[16];
            *(v40 + 16) = *__dst;
            *(v40 + 32) = v58;
            *(v40 + 48) = v57;
            v41 = 1;
LABEL_80:
            *(v40 + 64) = v41;
            goto LABEL_81;
          }

          v20 = DWORD2(__src[2]);
          DWORD2(__src[2]) += 2;
          if (DWORD2(__src[5]) < DWORD2(__src[2]))
          {
            goto LABEL_69;
          }

          v21 = *(*&__src[4] + 24);
          v22 = *(v21 + v16);
          if (*(v21 + v16))
          {
            v16 = *&__src[0] + v22;
            v23 = (v21 + *&__src[0] + v22);
            if ((v23 & 3) == 0)
            {
              v17 = 0;
            }

            if (v17 == 1)
            {
LABEL_75:
              *__dst = MEMORY[0x277D84CC0];
              v49 = &qword_2808A3170;
              v50 = &unk_272B89910;
LABEL_77:
              __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
              v51 = sub_272B87730();
              v53 = v52;
              sub_272B5C86C();
              swift_allocError();
              *v54 = v16;
              *(v54 + 8) = v51;
              *(v54 + 16) = v53;
              v55 = *&__dst[32];
              v56 = *&__dst[16];
              *(v54 + 24) = *__dst;
              *(v54 + 40) = v56;
              *(v54 + 56) = v55;
              *(v54 + 64) = 0;
LABEL_81:
              swift_willThrow();
              memcpy(__dst, __src, sizeof(__dst));
              sub_272B522C4(__dst);
              return;
            }

            if (v16 + 4 >= 0)
            {
              v18 = v16 + 4;
            }

            else
            {
              v18 = -4 - v16;
            }

            if (v19 < v18)
            {
              goto LABEL_72;
            }

            DWORD2(__src[2]) = v20 + 6;
            if (DWORD2(__src[5]) < v20 + 6)
            {
              goto LABEL_69;
            }

            v24 = v16 + *v23;
            if (v24 < 0)
            {
              v24 = -v24;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFFFLL)
            {
              v25 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v24;
            }

            sub_272B54784(&__src[1] + 8, v25);
          }

          if (v15 > 6)
          {
            v16 = *(&__src[0] + 1) + 6;
            v26 = BYTE8(__src[1]);
            if (BYTE8(__src[1]) == 1 && ((*(*&__src[4] + 24) + v16) & 1) != 0)
            {
              goto LABEL_76;
            }

            v27 = *(&__src[0] + 1) + 8;
            if (*(&__src[0] + 1) + 8 < 0)
            {
              v27 = -v27;
            }

            v28 = *(*&__src[4] + 32);
            if ((v28 & 0x8000000000000000) != 0 || v28 < v27)
            {
LABEL_78:
              v42 = *&__src[2];
              sub_272B5C86C();
              swift_allocError();
              *v40 = v27;
              goto LABEL_79;
            }

            v29 = DWORD2(__src[2]);
            DWORD2(__src[2]) += 2;
            if (DWORD2(__src[5]) < DWORD2(__src[2]))
            {
              goto LABEL_69;
            }

            v30 = *(*&__src[4] + 24);
            v31 = *(v30 + v16);
            if (*(v30 + v16))
            {
              v16 = *&__src[0] + v31;
              v32 = (v30 + *&__src[0] + v31);
              if ((v32 & 3) == 0)
              {
                v26 = 0;
              }

              if (v26 == 1)
              {
                goto LABEL_75;
              }

              if (v16 + 4 >= 0)
              {
                v27 = v16 + 4;
              }

              else
              {
                v27 = -4 - v16;
              }

              if (v28 < v27)
              {
                goto LABEL_78;
              }

              DWORD2(__src[2]) = v29 + 6;
              if (DWORD2(__src[5]) < v29 + 6)
              {
LABEL_69:
                sub_272B5C86C();
                swift_allocError();
                *v40 = 6;
                *(v40 + 8) = 0u;
                *(v40 + 24) = 0u;
                *(v40 + 40) = 0u;
                *(v40 + 56) = 0;
                v41 = 7;
                goto LABEL_80;
              }

              v33 = v16 + *v32;
              if (v33 < 0)
              {
                v33 = -v33;
              }

              if (v33 >= 0x7FFFFFFFFFFFFFFFLL)
              {
                v34 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v34 = v33;
              }

              sub_272B54784(&__src[1] + 8, v34);
            }
          }
        }

        if (__OFSUB__(*(&__src[3] + 1), 1))
        {
          __break(1u);
          return;
        }

        --*(&__src[3] + 1);
        memcpy(__dst, __src, sizeof(__dst));
        sub_272B522C4(__dst);
        v6 = v9;
      }

      while (v9 < v7);
    }
  }
}

void sub_272B6B9C8(uint64_t a1, Swift::Int a2)
{
  v4 = sub_272B54DD0(a1, a2);
  if (!v2)
  {
    v6 = v4;
    v7 = v4 + v5;
    if (v4 < v4 + v5)
    {
      do
      {
        v8 = v6 + 4;
        if (__OFADD__(v6, 4))
        {
          v9 = 0x7FFFFFFFFFFFFFFFLL;
          if ((*a1 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v9 = v6 + 4;
          if (!*a1)
          {
            goto LABEL_9;
          }
        }

        if (((*(*(a1 + 40) + 24) + v6) & 3) != 0)
        {
          *&__src[0] = MEMORY[0x277D84CC0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
          v30 = sub_272B87730();
          v32 = v31;
          sub_272B5C86C();
          swift_allocError();
          *v33 = v6;
          *(v33 + 8) = v30;
          *(v33 + 16) = v32;
          v34 = *&__src[2];
          v35 = __src[1];
          *(v33 + 24) = __src[0];
          *(v33 + 40) = v35;
          *(v33 + 56) = v34;
          *(v33 + 64) = 0;
          goto LABEL_42;
        }

LABEL_9:
        if ((v8 & 0x8000000000000000) != 0)
        {
          v8 = -v8;
        }

        v10 = *(a1 + 40);
        v11 = *(v10 + 32);
        if ((v11 & 0x8000000000000000) != 0 || v11 < v8)
        {
          v23 = *(a1 + 8);
          sub_272B5C86C();
          swift_allocError();
          *v24 = v8;
          *(v24 + 8) = v23;
          v26 = __src[1];
          v25 = __src[2];
          *(v24 + 16) = __src[0];
          *(v24 + 32) = v26;
          *(v24 + 48) = v25;
          v27 = 1;
          goto LABEL_39;
        }

        v12 = *(a1 + 16) + 4;
        *(a1 + 16) = v12;
        if (*(a1 + 64) < v12)
        {
          sub_272B5C86C();
          swift_allocError();
          *v24 = 6;
          *(v24 + 8) = 0u;
          *(v24 + 24) = 0u;
          *(v24 + 40) = 0u;
          *(v24 + 56) = 0;
          v27 = 7;
LABEL_39:
          *(v24 + 64) = v27;
LABEL_42:
          swift_willThrow();
          return;
        }

        v13 = v6 + *(*(v10 + 24) + v6);
        if (v13 < 0)
        {
          v13 = -v13;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        Verifier.visitTable(at:)(v14, __src);
        if (*&__src[1] > 4)
        {
          v15 = *(&__src[0] + 1) + 4;
          if (BYTE8(__src[1]) == 1 && ((*(*&__src[4] + 24) + v15) & 1) != 0)
          {
            *__dst = MEMORY[0x277D84C58];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
            v44 = sub_272B87730();
            v39 = v45;
            sub_272B5C86C();
            swift_allocError();
            *v40 = v15;
            *(v40 + 8) = v44;
            goto LABEL_49;
          }

          v16 = *(&__src[0] + 1) + 6;
          if (*(&__src[0] + 1) + 6 < 0)
          {
            v16 = -v16;
          }

          v17 = *(*&__src[4] + 32);
          if ((v17 & 0x8000000000000000) != 0 || v17 < v16)
          {
            v36 = *&__src[2];
            sub_272B5C86C();
            swift_allocError();
            *v28 = v16;
            *(v28 + 8) = v36;
            goto LABEL_46;
          }

          v18 = DWORD2(__src[2]);
          DWORD2(__src[2]) += 2;
          if (DWORD2(__src[5]) < DWORD2(__src[2]))
          {
            goto LABEL_40;
          }

          v19 = *(*&__src[4] + 24);
          v20 = *(v19 + v15);
          if (*(v19 + v15))
          {
            v21 = *&__src[0] + v20;
            if ((BYTE8(__src[1]) & (v19 + LODWORD(__src[0]) + v20)) == 1)
            {
              *__dst = MEMORY[0x277D84958];
              __swift_instantiateConcreteTypeFromMangledNameV2(qword_2808A3220, &qword_272B89920);
              v37 = sub_272B87730();
              v39 = v38;
              sub_272B5C86C();
              swift_allocError();
              *v40 = v21;
              *(v40 + 8) = v37;
LABEL_49:
              *(v40 + 16) = v39;
              v46 = *&__dst[32];
              v47 = *&__dst[16];
              *(v40 + 24) = *__dst;
              *(v40 + 40) = v47;
              *(v40 + 56) = v46;
              *(v40 + 64) = 0;
              goto LABEL_50;
            }

            if (v21 + 2 >= 0)
            {
              v22 = v21 + 2;
            }

            else
            {
              v22 = -2 - v21;
            }

            if (v17 < v22)
            {
              v41 = *&__src[2];
              sub_272B5C86C();
              swift_allocError();
              *v28 = v22;
              *(v28 + 8) = v41;
LABEL_46:
              v42 = *&__dst[32];
              v43 = *&__dst[16];
              *(v28 + 16) = *__dst;
              *(v28 + 32) = v43;
              *(v28 + 48) = v42;
              v29 = 1;
LABEL_47:
              *(v28 + 64) = v29;
LABEL_50:
              swift_willThrow();
              memcpy(__dst, __src, sizeof(__dst));
              sub_272B522C4(__dst);
              return;
            }

            DWORD2(__src[2]) = v18 + 4;
            if (DWORD2(__src[5]) < v18 + 4)
            {
LABEL_40:
              sub_272B5C86C();
              swift_allocError();
              *v28 = 6;
              *(v28 + 8) = 0u;
              *(v28 + 24) = 0u;
              *(v28 + 40) = 0u;
              *(v28 + 56) = 0;
              v29 = 7;
              goto LABEL_47;
            }
          }
        }

        sub_272B544C8(6, 0x74617265706D6574, 0xEB00000000657275, 1, sub_272B6C18C);
        if (__OFSUB__(*(&__src[3] + 1), 1))
        {
          __break(1u);
          return;
        }

        --*(&__src[3] + 1);
        memcpy(__dst, __src, sizeof(__dst));
        sub_272B522C4(__dst);
        v6 = v9;
      }

      while (v9 < v7);
    }
  }
}

void sub_272B6BEC8(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    v3 = __src[2];
    if (__src[2] < 5)
    {
      goto LABEL_29;
    }

    v4 = __src[1] + 4;
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      if (v5)
      {
        goto LABEL_33;
      }

      if (*(*(__src[8] + 24) + v4))
      {
        Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v4), 1);
        if (v6)
        {
          goto LABEL_33;
        }
      }

      if (v3 < 7)
      {
        goto LABEL_29;
      }

      v4 = __src[1] + 6;
      v7 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
        if (v8)
        {
          goto LABEL_33;
        }

        v9 = *(__src[8] + 24);
        v10 = *(v9 + v4);
        if (*(v9 + v4))
        {
          v4 = __src[0] + v10;
          if (((v9 + LOBYTE(__src[0]) + v10) & 3) != 0)
          {
            v11 = v7;
          }

          else
          {
            v11 = 0;
          }

          if (v11 == 1)
          {
            goto LABEL_17;
          }

          Verifier.rangeInBuffer(position:size:)(__src[0] + v10, 4);
          if (v14)
          {
            goto LABEL_33;
          }
        }

        if (v3 < 9)
        {
          goto LABEL_29;
        }

        v4 = __src[1] + 8;
        v15 = LOBYTE(__src[3]);
        if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
        {
          Verifier.rangeInBuffer(position:size:)(__src[1] + 8, 2);
          if (!v16)
          {
            v17 = *(__src[8] + 24);
            v18 = *(v17 + v4);
            if (!*(v17 + v4))
            {
              goto LABEL_29;
            }

            v4 = __src[0] + v18;
            if (((v17 + LOBYTE(__src[0]) + v18) & 3) != 0)
            {
              v19 = v15;
            }

            else
            {
              v19 = 0;
            }

            if (v19 == 1)
            {
LABEL_17:
              *v27 = MEMORY[0x277D83A90];
              v12 = &unk_2808A3178;
              v13 = &unk_272B87CD0;
LABEL_32:
              __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
              v21 = sub_272B87730();
              v23 = v22;
              sub_272B5C86C();
              swift_allocError();
              *v24 = v4;
              *(v24 + 8) = v21;
              *(v24 + 16) = v23;
              v25 = *&v27[32];
              v26 = *&v27[16];
              *(v24 + 24) = *v27;
              *(v24 + 40) = v26;
              *(v24 + 56) = v25;
              *(v24 + 64) = 0;
              swift_willThrow();
              goto LABEL_33;
            }

            Verifier.rangeInBuffer(position:size:)(__src[0] + v18, 4);
            if (!v20)
            {
LABEL_29:
              if (__OFSUB__(__src[7], 1))
              {
                __break(1u);
                return;
              }

              --__src[7];
            }
          }

LABEL_33:
          memcpy(v27, __src, sizeof(v27));
          sub_272B522C4(v27);
          return;
        }
      }
    }

    *v27 = MEMORY[0x277D84C58];
    v12 = &qword_2808A3160;
    v13 = &unk_272B87CC0;
    goto LABEL_32;
  }
}

void sub_272B6C18C(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    v3 = __src[2];
    if (__src[2] < 5)
    {
      goto LABEL_33;
    }

    v4 = __src[1] + 4;
    v5 = LOBYTE(__src[3]);
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      if (v6)
      {
        goto LABEL_37;
      }

      v7 = *(__src[8] + 24);
      v8 = *(v7 + v4);
      if (*(v7 + v4))
      {
        v4 = __src[0] + v8;
        if (((v7 + LOBYTE(__src[0]) + v8) & 3) != 0)
        {
          v9 = v5;
        }

        else
        {
          v9 = 0;
        }

        if (v9 == 1)
        {
          goto LABEL_11;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v8, 4);
        if (v12)
        {
          goto LABEL_37;
        }
      }

      if (v3 < 7)
      {
        goto LABEL_33;
      }

      v4 = __src[1] + 6;
      v13 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
        if (v14)
        {
          goto LABEL_37;
        }

        v15 = *(__src[8] + 24);
        v16 = *(v15 + v4);
        if (*(v15 + v4))
        {
          v4 = __src[0] + v16;
          if (((v15 + LOBYTE(__src[0]) + v16) & 3) != 0)
          {
            v17 = v13;
          }

          else
          {
            v17 = 0;
          }

          if (v17 == 1)
          {
            goto LABEL_11;
          }

          Verifier.rangeInBuffer(position:size:)(__src[0] + v16, 4);
          if (v18)
          {
            goto LABEL_37;
          }
        }

        if (v3 < 9)
        {
LABEL_33:
          if (__OFSUB__(__src[7], 1))
          {
            __break(1u);
            return;
          }

          --__src[7];
          goto LABEL_37;
        }

        v4 = __src[1] + 8;
        v19 = LOBYTE(__src[3]);
        if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
        {
          Verifier.rangeInBuffer(position:size:)(__src[1] + 8, 2);
          if (v20)
          {
            goto LABEL_37;
          }

          v21 = *(__src[8] + 24);
          v22 = *(v21 + v4);
          if (*(v21 + v4))
          {
            v4 = __src[0] + v22;
            if (((v21 + LOBYTE(__src[0]) + v22) & 3) != 0)
            {
              v23 = v19;
            }

            else
            {
              v23 = 0;
            }

            if (v23 != 1)
            {
              Verifier.rangeInBuffer(position:size:)(__src[0] + v22, 4);
              if (!v24)
              {
                goto LABEL_33;
              }

LABEL_37:
              memcpy(v31, __src, sizeof(v31));
              sub_272B522C4(v31);
              return;
            }

LABEL_11:
            *v31 = MEMORY[0x277D83A90];
            v10 = &unk_2808A3178;
            v11 = &unk_272B87CD0;
LABEL_36:
            __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
            v25 = sub_272B87730();
            v27 = v26;
            sub_272B5C86C();
            swift_allocError();
            *v28 = v4;
            *(v28 + 8) = v25;
            *(v28 + 16) = v27;
            v29 = *&v31[32];
            v30 = *&v31[16];
            *(v28 + 24) = *v31;
            *(v28 + 40) = v30;
            *(v28 + 56) = v29;
            *(v28 + 64) = 0;
            swift_willThrow();
            goto LABEL_37;
          }

          goto LABEL_33;
        }
      }
    }

    *v31 = MEMORY[0x277D84C58];
    v10 = &qword_2808A3160;
    v11 = &unk_272B87CC0;
    goto LABEL_36;
  }
}

void sub_272B6C468(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    v3 = __src[2];
    if (__src[2] < 5)
    {
      goto LABEL_23;
    }

    v4 = __src[1] + 4;
    v5 = LOBYTE(__src[3]);
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      if (v6)
      {
        goto LABEL_27;
      }

      v7 = *(__src[8] + 24);
      v8 = *(v7 + v4);
      if (*(v7 + v4))
      {
        v4 = __src[0] + v8;
        if (((v7 + LOBYTE(__src[0]) + v8) & 3) != 0)
        {
          v9 = v5;
        }

        else
        {
          v9 = 0;
        }

        if (v9 == 1)
        {
          goto LABEL_11;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v8, 4);
        if (v12)
        {
          goto LABEL_27;
        }
      }

      if (v3 < 7)
      {
        goto LABEL_23;
      }

      v4 = __src[1] + 6;
      v13 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
        if (!v14)
        {
          v15 = *(__src[8] + 24);
          v16 = *(v15 + v4);
          if (!*(v15 + v4))
          {
            goto LABEL_23;
          }

          v4 = __src[0] + v16;
          if (((v15 + LOBYTE(__src[0]) + v16) & 3) != 0)
          {
            v17 = v13;
          }

          else
          {
            v17 = 0;
          }

          if (v17 == 1)
          {
LABEL_11:
            *v25 = MEMORY[0x277D83A90];
            v10 = &unk_2808A3178;
            v11 = &unk_272B87CD0;
LABEL_26:
            __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
            v19 = sub_272B87730();
            v21 = v20;
            sub_272B5C86C();
            swift_allocError();
            *v22 = v4;
            *(v22 + 8) = v19;
            *(v22 + 16) = v21;
            v23 = *&v25[32];
            v24 = *&v25[16];
            *(v22 + 24) = *v25;
            *(v22 + 40) = v24;
            *(v22 + 56) = v23;
            *(v22 + 64) = 0;
            swift_willThrow();
            goto LABEL_27;
          }

          Verifier.rangeInBuffer(position:size:)(__src[0] + v16, 4);
          if (!v18)
          {
LABEL_23:
            if (__OFSUB__(__src[7], 1))
            {
              __break(1u);
              return;
            }

            --__src[7];
          }
        }

LABEL_27:
        memcpy(v25, __src, sizeof(v25));
        sub_272B522C4(v25);
        return;
      }
    }

    *v25 = MEMORY[0x277D84C58];
    v10 = &qword_2808A3160;
    v11 = &unk_272B87CC0;
    goto LABEL_26;
  }
}

void sub_272B6C6B4(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  v3 = v2;
  if (!v2)
  {
    if (__src[2] >= 5)
    {
      v4 = __src[1] + 4;
      v5 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v4) & 1) != 0)
      {
        *v18 = MEMORY[0x277D84C58];
        v9 = &qword_2808A3160;
        v10 = &unk_272B87CC0;
        goto LABEL_10;
      }

      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      v3 = v6;
      if (v6)
      {
LABEL_15:
        memcpy(v18, __src, sizeof(v18));
        sub_272B522C4(v18);
        return;
      }

      v7 = *(__src[8] + 24);
      v8 = *(v7 + v4);
      if (*(v7 + v4))
      {
        v4 = __src[0] + v8;
        if ((v5 & (v7 + LODWORD(__src[0]) + v8)) == 1)
        {
          *v18 = MEMORY[0x277D84958];
          v9 = qword_2808A3220;
          v10 = &qword_272B89920;
LABEL_10:
          __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
          v11 = sub_272B87730();
          v13 = v12;
          sub_272B5C86C();
          swift_allocError();
          *v14 = v4;
          *(v14 + 8) = v11;
          *(v14 + 16) = v13;
          v15 = *&v18[32];
          v16 = *&v18[16];
          *(v14 + 24) = *v18;
          *(v14 + 40) = v16;
          *(v14 + 56) = v15;
          *(v14 + 64) = 0;
          swift_willThrow();
          goto LABEL_15;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v8, 2);
        v3 = v17;
        if (v17)
        {
          goto LABEL_15;
        }
      }
    }

    sub_272B544C8(6, 0x74617265706D6574, 0xEB00000000657275, 0, sub_272B6C468);
    if (!v3)
    {
      sub_272B544C8(8, 0x7469706963657270, 0xED00006E6F697461, 0, sub_272B6BEC8);
      if (__OFSUB__(__src[7], 1))
      {
        __break(1u);
        return;
      }

      --__src[7];
    }

    goto LABEL_15;
  }
}

void sub_272B6C900(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    v3 = __src[2];
    if (__src[2] < 5)
    {
      goto LABEL_54;
    }

    v4 = __src[1] + 4;
    v5 = LOBYTE(__src[3]);
    if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      if (v6)
      {
        goto LABEL_58;
      }

      v7 = *(__src[8] + 24);
      v8 = *(v7 + v4);
      if (*(v7 + v4))
      {
        v4 = __src[0] + v8;
        if (((v7 + LOBYTE(__src[0]) + v8) & 3) != 0)
        {
          v9 = v5;
        }

        else
        {
          v9 = 0;
        }

        if (v9 == 1)
        {
          *v43 = MEMORY[0x277D84CC0];
          v10 = &qword_2808A3170;
          v11 = &unk_272B89910;
LABEL_57:
          __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
          v37 = sub_272B87730();
          v39 = v38;
          sub_272B5C86C();
          swift_allocError();
          *v40 = v4;
          *(v40 + 8) = v37;
          *(v40 + 16) = v39;
          v41 = *&v43[32];
          v42 = *&v43[16];
          *(v40 + 24) = *v43;
          *(v40 + 40) = v42;
          *(v40 + 56) = v41;
          *(v40 + 64) = 0;
          swift_willThrow();
          goto LABEL_58;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v8, 4);
        if (v12)
        {
          goto LABEL_58;
        }
      }

      if (v3 <= 6)
      {
        goto LABEL_54;
      }

      v4 = __src[1] + 6;
      v13 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
        if (v14)
        {
          goto LABEL_58;
        }

        v15 = *(__src[8] + 24);
        v16 = *(v15 + v4);
        if (*(v15 + v4))
        {
          v4 = __src[0] + v16;
          if (((v15 + LOBYTE(__src[0]) + v16) & 3) != 0)
          {
            v17 = v13;
          }

          else
          {
            v17 = 0;
          }

          if (v17 == 1)
          {
            goto LABEL_22;
          }

          Verifier.rangeInBuffer(position:size:)(__src[0] + v16, 4);
          if (v18)
          {
            goto LABEL_58;
          }
        }

        if (v3 <= 8)
        {
          goto LABEL_54;
        }

        v4 = __src[1] + 8;
        v19 = LOBYTE(__src[3]);
        if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
        {
          Verifier.rangeInBuffer(position:size:)(__src[1] + 8, 2);
          if (v20)
          {
            goto LABEL_58;
          }

          v21 = *(__src[8] + 24);
          v22 = *(v21 + v4);
          if (*(v21 + v4))
          {
            v4 = __src[0] + v22;
            if (((v21 + LOBYTE(__src[0]) + v22) & 3) != 0)
            {
              v23 = v19;
            }

            else
            {
              v23 = 0;
            }

            if (v23 == 1)
            {
              goto LABEL_22;
            }

            Verifier.rangeInBuffer(position:size:)(__src[0] + v22, 4);
            if (v24)
            {
              goto LABEL_58;
            }
          }

          if (v3 <= 0xA)
          {
            goto LABEL_54;
          }

          v4 = __src[1] + 10;
          v25 = LOBYTE(__src[3]);
          if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
          {
            Verifier.rangeInBuffer(position:size:)(__src[1] + 10, 2);
            if (v26)
            {
              goto LABEL_58;
            }

            v27 = *(__src[8] + 24);
            v28 = *(v27 + v4);
            if (*(v27 + v4))
            {
              v4 = __src[0] + v28;
              if (((v27 + LOBYTE(__src[0]) + v28) & 3) != 0)
              {
                v29 = v25;
              }

              else
              {
                v29 = 0;
              }

              if (v29 == 1)
              {
                goto LABEL_22;
              }

              Verifier.rangeInBuffer(position:size:)(__src[0] + v28, 4);
              if (v30)
              {
                goto LABEL_58;
              }
            }

            if (v3 <= 0xC)
            {
LABEL_54:
              if (__OFSUB__(__src[7], 1))
              {
                __break(1u);
                return;
              }

              --__src[7];
              goto LABEL_58;
            }

            v4 = __src[1] + 12;
            v31 = LOBYTE(__src[3]);
            if (LOBYTE(__src[3]) != 1 || ((*(__src[8] + 24) + v4) & 1) == 0)
            {
              Verifier.rangeInBuffer(position:size:)(__src[1] + 12, 2);
              if (v32)
              {
                goto LABEL_58;
              }

              v33 = *(__src[8] + 24);
              v34 = *(v33 + v4);
              if (*(v33 + v4))
              {
                v4 = __src[0] + v34;
                if (((v33 + LOBYTE(__src[0]) + v34) & 3) != 0)
                {
                  v35 = v31;
                }

                else
                {
                  v35 = 0;
                }

                if (v35 != 1)
                {
                  Verifier.rangeInBuffer(position:size:)(__src[0] + v34, 4);
                  if (!v36)
                  {
                    goto LABEL_54;
                  }

LABEL_58:
                  memcpy(v43, __src, sizeof(v43));
                  sub_272B522C4(v43);
                  return;
                }

LABEL_22:
                *v43 = MEMORY[0x277D83A90];
                v10 = &unk_2808A3178;
                v11 = &unk_272B87CD0;
                goto LABEL_57;
              }

              goto LABEL_54;
            }
          }
        }
      }
    }

    *v43 = MEMORY[0x277D84C58];
    v10 = &qword_2808A3160;
    v11 = &unk_272B87CC0;
    goto LABEL_57;
  }
}

void sub_272B6CD1C(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  v3 = v2;
  if (!v2)
  {
    if (__src[2] < 5)
    {
      goto LABEL_8;
    }

    v4 = __src[1] + 4;
    if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v4) & 1) != 0)
    {
      *v13 = MEMORY[0x277D84C58];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
      v7 = sub_272B87730();
      v9 = v8;
      sub_272B5C86C();
      swift_allocError();
      *v10 = v4;
      *(v10 + 8) = v7;
      *(v10 + 16) = v9;
      v11 = *&v13[32];
      v12 = *&v13[16];
      *(v10 + 24) = *v13;
      *(v10 + 40) = v12;
      *(v10 + 56) = v11;
      *(v10 + 64) = 0;
      swift_willThrow();
    }

    else
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      v3 = v5;
      if (!v5)
      {
        if (!*(*(__src[8] + 24) + v4) || (Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v4), 1), (v3 = v6) == 0))
        {
LABEL_8:
          sub_272B544C8(6, 0x74617265706D6574, 0xEB00000000657275, 0, sub_272B6C468);
          if (!v3)
          {
            sub_272B544C8(8, 0x7469706963657270, 0xED00006E6F697461, 0, sub_272B6BEC8);
            if (__OFSUB__(__src[7], 1))
            {
              __break(1u);
              return;
            }

            --__src[7];
          }
        }
      }
    }

    memcpy(v13, __src, sizeof(v13));
    sub_272B522C4(v13);
  }
}

void sub_272B6CF2C(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B5D54C(4, 0x7365747962, 0xE500000000000000, 1);
    if (__OFSUB__(__src[7], 1))
    {
      __break(1u);
    }

    else
    {
      --__src[7];
      memcpy(v3, __src, 0x65uLL);
      sub_272B522C4(v3);
    }
  }
}

void sub_272B6CFC4(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (v2)
  {
    return;
  }

  sub_272B544C8(4, 0x617461646174656DLL, 0xE800000000000000, 1, sub_272B51C30);
  sub_272B544C8(6, 0x55736C6961746564, 0xEA00000000006C72, 0, sub_272B54784);
  if (__src[2] <= 8)
  {
    goto LABEL_12;
  }

  v3 = __src[1] + 8;
  v4 = LOBYTE(__src[3]);
  if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v3) & 1) != 0)
  {
    *__dst = MEMORY[0x277D84C58];
    v10 = &qword_2808A3160;
    v11 = &unk_272B87CC0;
    goto LABEL_14;
  }

  Verifier.rangeInBuffer(position:size:)(__src[1] + 8, 2);
  if (v5)
  {
    goto LABEL_17;
  }

  v6 = __src[8];
  v7 = *(__src[8] + 24);
  v8 = *(v7 + v3);
  if (!*(v7 + v3))
  {
LABEL_12:
    sub_272B5C86C();
    swift_allocError();
    *v12 = 8;
    *(v12 + 6) = v43;
    *(v12 + 2) = v42;
    *(v12 + 8) = 0x737472656C61;
    *(v12 + 16) = 0xE600000000000000;
    v13 = *&__dst[32];
    v14 = *&__dst[16];
    *(v12 + 24) = *__dst;
    *(v12 + 40) = v14;
    *(v12 + 56) = v13;
    *(v12 + 64) = 3;
    goto LABEL_16;
  }

  v3 = __src[0] + v8;
  if (((v7 + LOBYTE(__src[0]) + v8) & 3) != 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  if (v9 == 1)
  {
    *__dst = MEMORY[0x277D84CC0];
    v10 = &qword_2808A3170;
    v11 = &unk_272B89910;
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    v15 = sub_272B87730();
    v17 = v16;
    sub_272B5C86C();
    swift_allocError();
    *v18 = v3;
    *(v18 + 8) = v15;
    *(v18 + 16) = v17;
    goto LABEL_15;
  }

  Verifier.rangeInBuffer(position:size:)(__src[0] + v8, 4);
  if (v21)
  {
    goto LABEL_17;
  }

  v22 = v3 + *(*(v6 + 24) + v3);
  if (v22 < 0)
  {
    v22 = -v22;
  }

  if (v22 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v23 = v22;
  }

  v24 = sub_272B54DD0(&__src[3], v23);
  v26 = v24 + v25;
  if (v24 < v24 + v25)
  {
    do
    {
      v27 = v24 + 4;
      if (__OFADD__(v24, 4))
      {
        v28 = 0x7FFFFFFFFFFFFFFFLL;
        if ((__src[3] & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v28 = v24 + 4;
        if (!LOBYTE(__src[3]))
        {
          goto LABEL_32;
        }
      }

      if (((*(__src[8] + 24) + v24) & 3) != 0)
      {
        *__dst = MEMORY[0x277D84CC0];
        v38 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
        v39 = sub_272B87730();
        v41 = v40;
        sub_272B5C86C();
        swift_allocError();
        *v18 = v38;
        *(v18 + 8) = v39;
        *(v18 + 16) = v41;
LABEL_15:
        v19 = *&__dst[32];
        v20 = *&__dst[16];
        *(v18 + 24) = *__dst;
        *(v18 + 40) = v20;
        *(v18 + 56) = v19;
        *(v18 + 64) = 0;
LABEL_16:
        swift_willThrow();
LABEL_17:
        memcpy(__dst, __src, sizeof(__dst));
        sub_272B522C4(__dst);
        return;
      }

LABEL_32:
      if ((v27 & 0x8000000000000000) != 0)
      {
        v27 = -v27;
      }

      v29 = *(__src[8] + 32);
      if ((v29 & 0x8000000000000000) != 0 || v29 < v27)
      {
        v32 = __src[4];
        v33 = v27;
        sub_272B5C86C();
        swift_allocError();
        *v34 = v33;
        *(v34 + 8) = v32;
        v36 = *&__dst[16];
        v35 = *&__dst[32];
        *(v34 + 16) = *__dst;
        *(v34 + 32) = v36;
        *(v34 + 48) = v35;
        v37 = 1;
LABEL_47:
        *(v34 + 64) = v37;
        goto LABEL_16;
      }

      LODWORD(__src[5]) += 4;
      if (LODWORD(__src[11]) < LODWORD(__src[5]))
      {
        sub_272B5C86C();
        swift_allocError();
        *v34 = 6;
        *(v34 + 8) = 0u;
        *(v34 + 24) = 0u;
        *(v34 + 40) = 0u;
        *(v34 + 56) = 0;
        v37 = 7;
        goto LABEL_47;
      }

      v30 = v24 + *(*(__src[8] + 24) + v24);
      if (v30 < 0)
      {
        v30 = -v30;
      }

      if (v30 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v31 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v30;
      }

      sub_272B84900(&__src[3], v31);
      v24 = v28;
    }

    while (v28 < v26);
  }

  if (!__OFSUB__(__src[7], 1))
  {
    --__src[7];
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_272B6D4A0()
{
  result = qword_2808A3180;
  if (!qword_2808A3180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3180);
  }

  return result;
}

unint64_t sub_272B6D510()
{
  result = qword_2808A3188;
  if (!qword_2808A3188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3188);
  }

  return result;
}

unint64_t sub_272B6D568()
{
  result = qword_2808A3190;
  if (!qword_2808A3190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3190);
  }

  return result;
}

unint64_t sub_272B6D5C0()
{
  result = qword_2808A3198;
  if (!qword_2808A3198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3198);
  }

  return result;
}

unint64_t sub_272B6D618()
{
  result = qword_2808A31A0;
  if (!qword_2808A31A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31A0);
  }

  return result;
}

unint64_t sub_272B6D670()
{
  result = qword_2808A31A8;
  if (!qword_2808A31A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31A8);
  }

  return result;
}

unint64_t sub_272B6D6C8()
{
  result = qword_2808A31B0;
  if (!qword_2808A31B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31B0);
  }

  return result;
}

unint64_t sub_272B6D720()
{
  result = qword_2808A31B8;
  if (!qword_2808A31B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31B8);
  }

  return result;
}

unint64_t sub_272B6D778()
{
  result = qword_2808A31C0;
  if (!qword_2808A31C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31C0);
  }

  return result;
}

unint64_t sub_272B6D7D0()
{
  result = qword_2808A31C8;
  if (!qword_2808A31C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31C8);
  }

  return result;
}

unint64_t sub_272B6D828()
{
  result = qword_2808A31D0;
  if (!qword_2808A31D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31D0);
  }

  return result;
}

unint64_t sub_272B6D880()
{
  result = qword_2808A31D8;
  if (!qword_2808A31D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31D8);
  }

  return result;
}

unint64_t sub_272B6D8D8()
{
  result = qword_2808A31E0;
  if (!qword_2808A31E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31E0);
  }

  return result;
}

unint64_t sub_272B6D930()
{
  result = qword_2808A31E8;
  if (!qword_2808A31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31E8);
  }

  return result;
}

unint64_t sub_272B6D988()
{
  result = qword_2808A31F0;
  if (!qword_2808A31F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31F0);
  }

  return result;
}

unint64_t sub_272B6D9E0()
{
  result = qword_2808A31F8;
  if (!qword_2808A31F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A31F8);
  }

  return result;
}

unint64_t sub_272B6DA38()
{
  result = qword_2808A3200;
  if (!qword_2808A3200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3200);
  }

  return result;
}

unint64_t sub_272B6DA90()
{
  result = qword_2808A3208;
  if (!qword_2808A3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3208);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WK2_ConditionCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDF)
  {
    if (a2 + 33 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 33) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 34;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v5 = v6 - 34;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WK2_ConditionCode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDE)
  {
    v6 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
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
          *result = a2 + 33;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WK2_Placement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WK2_Placement(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WK2_ComparisonCondition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WK2_ComparisonCondition(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WK2_Deviation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WK2_Deviation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WK2_ComparisonBaselineType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for WK2_ComparisonBaselineType(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for WK2_PrecipitationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WK2_PrecipitationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WK2_MoonPhase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WK2_MoonPhase(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_272B6E400(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_215(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_215(v8);
}

_BYTE *sub_272B6E484(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_214(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_212(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_213(result, v6);
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
          result = OUTLINED_FUNCTION_182(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_272B6E54C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_215(-1);
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
      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 6);
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

  return OUTLINED_FUNCTION_215(v8);
}

uint64_t sub_272B6E5D0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_215(-1);
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 13);
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

      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 13);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 13);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_215(v8);
}

_BYTE *sub_272B6E654(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_214(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_212(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_213(result, v6);
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
          result = OUTLINED_FUNCTION_182(result, a2 + 12);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_272B6E71C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_215(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_215((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_215(v8);
}

_BYTE *sub_272B6E7A0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_214(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_212(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_213(result, v6);
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
          result = OUTLINED_FUNCTION_182(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WK2_TimeOfDay(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WK2_TimeOfDay(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WK2_StatementParameterType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WK2_StatementParameterType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void static WK2_PeriodicForecasts.add(metadata:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(metadata:_:)();
}

void static WK2_PeriodicForecasts.addVectorOf(forecasts:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(currentWeather:_:)();
}

void static WK2_PeriodicForecast.addVectorOf(periods:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(currentWeather:_:)();
}

void static WK2_News.add(metadata:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(metadata:_:)();
}

void static WK2_News.addVectorOf(placements:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(currentWeather:_:)();
}

void static WK2_WeatherChanges.add(forecastStart:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(asOf:_:)();
}

void static WK2_HistoricalComparisons.add(metadata:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(metadata:_:)();
}

void static WK2_HistoricalComparisons.addVectorOf(comparisons:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(currentWeather:_:)();
}

void static WK2_LocationInfo.add(preciseName:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(currentWeather:_:)();
}

void static WK2_LocationInfo.add(secondaryName:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(news:_:)();
}

void static WK2_HourlyMarineConditions.add(metadata:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(metadata:_:)();
}

void static WK2_HourlyMarineConditions.addVectorOf(hours:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(currentWeather:_:)();
}

void static WK2_HourlyMarineConditions.add(closestWaterLocation:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(forecastDaily:_:)();
}

void static WK2_TideEvents.add(metadata:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(metadata:_:)();
}

void static WK2_TideEvents.addVectorOf(events:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(currentWeather:_:)();
}

void static WK2_TideEvents.addVectorOf(hours:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(forecastDaily:_:)();
}

void static WK2_TideEvents.add(tideStationName:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(forecastHourly:_:)();
}

void static WK2_TideEvents.add(closestWaterLocation:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(forecastNextHour:_:)();
}

void static WK2_PrecipitationRange.add(precipitationType:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Pollutant.add(pollutantType:_:)();
}

void static WK2_PrecipitationRange.add(expected:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_HourTide.add(height:_:)();
}

void static WK2_DayWeatherConditions.add(forecastEnd:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(asOf:_:)();
}

void static WK2_DayWeatherConditions.add(humidityMin:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(cloudCoverMidAltPct:_:)();
}

void static WK2_AirQuality.add(previousDayComparison:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_HourWeatherConditions.add(conditionCode:_:)();
}

void static WK2_HourWeatherConditions.add(precipitationIntensity:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(precipitationAmount1h:_:)();
}

void static WK2_HourWeatherConditions.add(pressure:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(precipitationAmountNext1h:_:)();
}

void static WK2_HourWeatherConditions.add(snowfallIntensity:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(precipitationAmountNext24h:_:)();
}

void static WK2_ForecastPeriodSummary.add(startTime:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_DayWeatherConditions.add(forecastStart:_:)();
}

void static WK2_ForecastPeriodSummary.add(endTime:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_ForecastCondition.add(endTime:_:)();
}

void static WK2_ForecastPeriodSummary.add(condition:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_DayWeatherConditions.add(conditionCode:_:)();
}

void static WK2_ForecastPeriodSummary.add(precipitationChance:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(cloudCoverLowAltPct:_:)();
}

void static WK2_ForecastPeriodSummary.add(precipitationIntensity:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_PrecipitationRange.add(expectedSnow:_:)();
}

void static WK2_PrecipitationRange.add(minimumSnow:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_ForecastMinute.add(precipitationIntensity:_:)();
}

void static WK2_PrecipitationRange.add(maximumSnow:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_ForecastMinute.add(perceivedPrecipitationIntensity:_:)();
}

void static WK2_PeriodicForecast.add(periodLength:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_NewsPlacement.add(priority:_:)();
}

void static WK2_NewsPlacement.addVectorOf(articles:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(currentWeather:_:)();
}

void static WK2_NewsPlacement.add(placement:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_DayWeatherConditions.add(conditionCode:_:)();
}

void static WK2_TrendDeviation.add(forecastStart:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_DayWeatherConditions.add(forecastStart:_:)();
}

void static WK2_TrendDeviation.add(forecastEnd:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(asOf:_:)();
}

void static WK2_TrendDeviation.add(maxTemperatureChange:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_DayWeatherConditions.add(conditionCode:_:)();
}

void static WK2_TrendDeviation.add(nightPrecipitationChange:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_HourWeatherConditions.add(conditionCode:_:)();
}

void static WK2_HistoricalComparison.add(condition:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Pollutant.add(pollutantType:_:)();
}

void static WK2_HistoricalComparison.add(currentValue:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_HourTide.add(height:_:)();
}

void static WK2_HistoricalComparison.add(baselineValue:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_ForecastMinute.add(precipitationIntensity:_:)();
}

void static WK2_HistoricalComparison.add(deviation:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_TrendDeviation.add(minTemperatureChange:_:)();
}

void static WK2_HourMarineConditions.add(date:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_DayWeatherConditions.add(forecastStart:_:)();
}

void static WK2_HourMarineConditions.add(primarySwell:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(currentWeather:_:)();
}

void static WK2_HourMarineConditions.add(waterTemperature:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_ForecastMinute.add(precipitationIntensity:_:)();
}

void static WK2_TideEvent.add(date:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_DayWeatherConditions.add(forecastStart:_:)();
}

void static WK2_TideEvent.add(height:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_HourTide.add(height:_:)();
}

void static WK2_TideEvent.add(eventType:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Pollutant.add(units:_:)();
}

void static WK2_HourTide.add(date:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_DayWeatherConditions.add(forecastStart:_:)();
}

void static WK2_Location.add(longitude:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_HourTide.add(height:_:)();
}

void static WK2_DayPartForecast.add(forecastStart:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_DayWeatherConditions.add(forecastStart:_:)();
}

void static WK2_DayPartForecast.add(forecastEnd:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(asOf:_:)();
}

void static WK2_DayPartForecast.add(humidity:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_HourWeatherConditions.add(humidity:_:)();
}

void static WK2_DayPartForecast.add(precipitationAmount:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(precipitationAmount1h:_:)();
}

void static WK2_DayPartForecast.add(temperatureMax:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(precipitationAmountNext24h:_:)();
}

void static WK2_DayPartForecast.add(temperatureMin:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_HourWeatherConditions.add(snowfallAmount:_:)();
}

void static WK2_DayPartForecast.add(precipitationIntensityMax:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(pressure:_:)();
}

void static WK2_DayPartForecast.add(perceivedPrecipitationIntensityMax:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_DayWeatherConditions.add(temperatureMax:_:)();
}

void static WK2_DayPartForecast.add(temperatureApparentMin:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(snowfallAmount24h:_:)();
}

void static WK2_DayPartForecast.add(temperatureApparentMax:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(snowfallAmountNext1h:_:)();
}

void static WK2_PrecipitationConditionParameter.add(date:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(asOf:_:)();
}

void static WK2_Article.add(id:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(metadata:_:)();
}

void static WK2_Article.addVectorOf(supportedStorefronts:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(currentWeather:_:)();
}

void static WK2_Article.addVectorOf(alertIds:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(forecastDaily:_:)();
}

void static WK2_Article.addVectorOf(phenomena:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(forecastHourly:_:)();
}

void static WK2_Article.add(headlineOverride:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(forecastNextHour:_:)();
}

void static WK2_Article.add(locale:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(news:_:)();
}

void static WK2_Article.add(cta:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(weatherAlerts:_:)();
}

void static WK2_Swell.add(height:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Location.add(latitude:_:)();
}

void static WK2_Swell.add(direction:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_HourTide.add(height:_:)();
}

void static WK2_Swell.add(timeIntervalSeconds:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(cloudCover:_:)();
}

void static WK2_CallToAction.add(label:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(metadata:_:)();
}

void static WK2_CallToAction.add(url:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(currentWeather:_:)();
}

__n128 OUTLINED_FUNCTION_9_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a10, __int128 a9, __n128 a11, uint64_t a12)
{
  *(a2 + 16) = v12;
  result = a11;
  *(a2 + 24) = a9;
  *(a2 + 40) = a11;
  *(a2 + 56) = a12;
  *(a2 + 64) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a10, __int128 a9, __n128 a11, uint64_t a12)
{
  result = a11;
  *(a2 + 24) = a9;
  *(a2 + 40) = a11;
  *(a2 + 56) = a12;
  *(a2 + 64) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_18_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, __int128 a10, __n128 a12, uint64_t a13)
{
  result = a12;
  *(a2 + 24) = a10;
  *(a2 + 40) = a12;
  *(a2 + 56) = a13;
  return result;
}

void OUTLINED_FUNCTION_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_272B544C8(4, 0x617461646174656DLL, 0xE800000000000000, 1, a5);
}

void OUTLINED_FUNCTION_37(uint64_t a1@<X1>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  *(a1 + 24) = a4;
  *(a1 + 40) = a3;
  *(a1 + 56) = a2;
  *(a1 + 64) = 3;
}

uint64_t OUTLINED_FUNCTION_68@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  *(v2 + 48) = 0;
  *(v2 + 56) = v3;
  return result;
}

void OUTLINED_FUNCTION_88()
{

  sub_272B52E68(v0);
}

void OUTLINED_FUNCTION_90()
{

  Verifier.rangeInBuffer(position:size:)(v0, 4);
}

void OUTLINED_FUNCTION_94()
{

  sub_272B52E68(v0);
}

void OUTLINED_FUNCTION_126(uint64_t a1, void *a2)
{
  *a2 = v4;
  a2[1] = v2;
  a2[2] = v3;
}

void OUTLINED_FUNCTION_162(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{

  Verifier.rangeInBuffer(position:size:)(v23, 2);
}

double OUTLINED_FUNCTION_167(uint64_t a1, uint64_t a2)
{
  *a2 = 6;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  return result;
}

void OUTLINED_FUNCTION_174(Swift::Int a1)
{

  Verifier.rangeInBuffer(position:size:)(a1, 1);
}

unint64_t OUTLINED_FUNCTION_185()
{

  return sub_272B5C86C();
}

uint64_t OUTLINED_FUNCTION_195(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_272B87730();
}

void OUTLINED_FUNCTION_209()
{

  JUMPOUT(0x2743D4FD0);
}

void OUTLINED_FUNCTION_224(uint64_t a1, void *a2)
{
  *a2 = v4;
  a2[1] = v2;
  a2[2] = v3;
}

void *OUTLINED_FUNCTION_236(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t __dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va1, a22);
  va_start(__srca, a22);
  __src = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);

  return memcpy(&__dst, __srca, 0x65uLL);
}

void OUTLINED_FUNCTION_279()
{

  static WK2_ForecastCondition.add(endTime:_:)();
}

Swift::Int static Verifiable.verifyRange<A>(_:at:of:)(uint64_t a1, Swift::Int position, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = position;
  if (*a1 == 1 && ((*(*(a1 + 40) + 24) + position) & 3) != 0)
  {
    v16.n128_u64[0] = MEMORY[0x277D84CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
    v7 = sub_272B87730();
    v9 = v8;
    v10 = sub_272B5C86C();
    OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v10);
    *v11 = v5;
    v11[1] = v7;
    v11[2] = v9;
    OUTLINED_FUNCTION_21(v11, v18, v17, v16);
    swift_willThrow();
  }

  else
  {
    Verifier.rangeInBuffer(position:size:)(position, 4);
    if (!v12)
    {
      v13 = *(*(*(a1 + 40) + 24) + v5);
      v14 = v5 + 4;
      if (v5 + 4 < 0)
      {
        v14 = -4 - v5;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v5 = v14;
      }

      Verifier.isAligned<A>(position:type:)(v5);
      Verifier.rangeInBuffer(position:size:)(v5, v13);
    }
  }

  return v5;
}

uint64_t static Vector.verify<A>(_:at:of:)(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for ForwardOffset(0, a5, a8, a4);
  if (!swift_dynamicCastMetatype())
  {
    return static Verifiable.verifyRange<A>(_:at:of:)(a1, a2, a5, v15, a5);
  }

  v22[0] = a4;
  v22[1] = a5;
  v22[2] = a7;
  v22[3] = a8;
  type metadata accessor for Vector(0, v22);
  result = static Verifiable.verifyRange<A>(_:at:of:)(a1, a2, MEMORY[0x277D84CC0], v16, MEMORY[0x277D84CC0]);
  if (!v8)
  {
    v19 = result;
    v20 = result + v18;
    if (result < result + v18)
    {
      v21 = *(a7 + 8);
      do
      {
        result = v21(a1, v19, a4, a4, a7, a4, a7);
        if (__OFADD__(v19, 4))
        {
          v19 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 += 4;
        }
      }

      while (v19 < v20);
    }
  }

  return result;
}

void static UnionVector.verify(_:keyPosition:fieldPosition:unionKeyName:fieldName:completion:)(unsigned __int8 *a1, Swift::Int a2, Swift::Int a3, unint64_t a4, uint64_t a5, Swift::Int a6, unint64_t a7, void (*a8)(unsigned __int8 *, char *, Swift::Int), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v75 = a5;
  v76 = a7;
  v73 = a4;
  v74 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v77 = &v64 - v16;
  v17 = sub_272B878A0();
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v24 = *a1;
  if (v24 == 1 && ((*(*(a1 + 5) + 24) + a2) & 3) != 0)
  {
    v78.n128_u64[0] = MEMORY[0x277D84CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
    v25 = sub_272B87730();
    v27 = v26;
    v28 = sub_272B5C86C();
    OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v28);
    *v29 = a2;
    goto LABEL_10;
  }

  v69 = v23;
  v70 = v22;
  v71 = a11;
  v72 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v21;
  v68 = v19;
  Verifier.rangeInBuffer(position:size:)(a2, 4);
  if (v30)
  {
    return;
  }

  v66 = a8;
  v31 = *(a1 + 5);
  v32 = *(v31 + 24);
  if (((v32 + a3) & 3) != 0)
  {
    v33 = v24;
  }

  else
  {
    v33 = 0;
  }

  if (v33 == 1)
  {
    v78.n128_u64[0] = MEMORY[0x277D84CC0];
    v34 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
    v25 = sub_272B87730();
    v27 = v35;
    v36 = sub_272B5C86C();
    OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v36);
    *v29 = v34;
LABEL_10:
    v29[1] = v25;
    v29[2] = v27;
    OUTLINED_FUNCTION_21(v29, v80, v79, v78);
LABEL_11:
    swift_willThrow();
    return;
  }

  v37 = *(v32 + a2);
  Verifier.rangeInBuffer(position:size:)(a3, 4);
  if (!v39)
  {
    v40 = *(*(v31 + 24) + a3);
    v41 = static Verifiable.verifyRange<A>(_:at:of:)(a1, v37 + a2, AssociatedTypeWitness, v38, AssociatedTypeWitness);
    v43 = v42;
    v44 = sub_272B6EC90(a1, v40 + a3);
    v46 = v45;
    if (v43 == v45)
    {
      v47 = 0;
      v48 = 0;
      v73 = v71 + 16;
      v74 = v41;
      v64 = a9;
      v65 = (v69 + 4);
      ++v69;
      v75 = v43 & ~(v43 >> 63);
      while (v75 != v48)
      {
        if ((v15 * v48) >> 64 != (v15 * v48) >> 63)
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }

        v76 = v48;
        v49 = v71;
        if (__OFADD__(v74, v15 * v48))
        {
          goto LABEL_26;
        }

        v50 = v44;
        v51 = v47;
        v52 = v77;
        sub_272B878B0();
        v53 = v70;
        (*(v49 + 16))(v52, a10, v49);
        if (__swift_getEnumTagSinglePayload(v53, 1, a10) == 1)
        {
          (*(v67 + 8))(v53, v68);
          v62 = sub_272B5C86C();
          OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v62);
          *v63 = 5;
          *(v63 + 8) = 0u;
          *(v63 + 24) = 0u;
          *(v63 + 40) = 0u;
          *(v63 + 56) = 0;
          *(v63 + 64) = 7;
          goto LABEL_11;
        }

        (*v65)(v72, v53, a10);
        if (v76 == 0x2000000000000000)
        {
          goto LABEL_27;
        }

        v54 = v50 + v51;
        if (__OFADD__(v50, v51))
        {
          goto LABEL_28;
        }

        v55 = v51;
        v56 = v72;
        v66(a1, v72, v54);
        (*v69)(v56, a10);
        v48 = v76 + 1;
        v47 = v55 + 4;
        v44 = v50;
      }
    }

    else
    {
      v57 = sub_272B5C86C();
      OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v57);
      v58->n128_u64[0] = v43;
      v58->n128_u64[1] = v46;
      v59 = v74;
      v61 = v75;
      v60 = v76;
      v58[1].n128_u64[0] = v73;
      v58[1].n128_u64[1] = v61;
      v58[2].n128_u64[0] = v59;
      v58[2].n128_u64[1] = v60;
      v58[3] = v78;
      v58[4].n128_u8[0] = 6;
      swift_willThrow();
    }
  }
}

_BYTE *sub_272B719C8(_BYTE *result, int a2, int a3)
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

uint64_t WK2_HourlyWeatherStatistics.init(_:o:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t WK2_HourlyWeatherStatistics.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 24);
  v4 = *(*v1 + 24);
  v5 = *(v4 + v3);
  v6 = __OFSUB__(v3, v5);
  v7 = v3 - v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v4 + v7) < 5u)
  {
    v9 = 0;
LABEL_6:
    v6 = __OFADD__(v9, v3);
    v10 = v9 + v3;
    if (!v6)
    {
      if (!__OFADD__(v10, *(v4 + v10)))
      {
        return OUTLINED_FUNCTION_56(result, a1, *(v1 + 8));
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFADD__(v7, 4);
  v8 = v7 + 4;
  if (!v6)
  {
    v9 = *(v4 + v8);
    goto LABEL_6;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t WK2_HourlyWeatherStatistics.baselineStart.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 7u)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 6);
    v6 = v5 + 6;
    if (!v4)
    {
      v7 = *(v2 + v6);
      if (v7)
      {
        v4 = __OFADD__(v7, v1);
        v8 = v7 + v1;
        if (!v4)
        {
          return *(v2 + v8);
        }

        goto LABEL_10;
      }

      return OUTLINED_FUNCTION_32_0();
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t WK2_HourlyWeatherStatistics.hasHours.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 9u)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 8);
    v6 = v5 + 8;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t WK2_HourlyWeatherStatistics.hoursCount.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v5) < 9u)
  {
    return OUTLINED_FUNCTION_32_0();
  }

  v4 = __OFADD__(v5, 8);
  v6 = v5 + 8;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_32_0();
  }

  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v4)
  {
    v9 = *(v2 + v8);
    v4 = __OFADD__(v8, v9);
    v10 = v8 + v9;
    if (!v4)
    {
      return *(v2 + v10);
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t WK2_HourlyWeatherStatistics.hours(at:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  result = *v2;
  v6 = *(v2 + 24);
  v7 = *(*v2 + 24);
  v8 = *(v7 + v6);
  v9 = __OFSUB__(v6, v8);
  v10 = v6 - v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = 0uLL;
  if (*(v7 + v10) < 9u)
  {
LABEL_12:
    result = 0;
    v20 = 0;
    goto LABEL_13;
  }

  v9 = __OFADD__(v10, 8);
  v12 = v10 + 8;
  if (v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = *(v7 + v12);
  if (!v13)
  {
    goto LABEL_12;
  }

  v9 = __OFADD__(v13, v6);
  v14 = v13 + v6;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = *(v7 + v14);
  v9 = __OFADD__(v14, v15);
  v16 = v14 + v15;
  if (v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = __OFADD__(v16, 4);
  v17 = v16 + 4;
  if (v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 - 0x20000000) >> 30 != 3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = __OFADD__(v17, 4 * a1);
  v18 = v17 + 4 * a1;
  if (v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = *(v7 + v18);
  v20 = v18 + v19;
  if (!__OFADD__(v18, v19))
  {
    v21 = *(v2 + 8);

    v11 = v21;
LABEL_13:
    *a2 = result;
    *(a2 + 8) = v11;
    *(a2 + 24) = v20;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t static WK2_HourlyWeatherStatistics.startHourlyWeatherStatistics(_:)(uint64_t a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (*(v2 + 56) < v4 + 24)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x2743D4FD0](v5, -1, -1);
    }

    v6 = swift_slowAlloc();
    *(v2 + 32) = v6;
    *(v2 + 40) = v6 + 24;
    *(v2 + 48) = 0;
    *(v2 + 56) = 24;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void static WK2_HourlyWeatherStatistics.add(metadata:_:)()
{
  OUTLINED_FUNCTION_219();
  v4 = *v3;
  if (!*v3)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_58();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v0 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (HIDWORD(v8))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  *(v0 + 16) = v2;
  if (HIDWORD(v2))
  {
    goto LABEL_30;
  }

  if (v2 - v4 == -4)
  {
    OUTLINED_FUNCTION_79();
    if (!v11)
    {
LABEL_27:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v12 = OUTLINED_FUNCTION_15();
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v2, *(v0 + 24));
  }

  OUTLINED_FUNCTION_27();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_9();
    v13 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v13);
  if (!v11 & v14)
  {
LABEL_31:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_57(v15);
      *(v17 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 4)
    {
      LOWORD(v19) = 4;
    }

    *(v18 + 64) = v19;
    goto LABEL_27;
  }

  __break(1u);
}

void static WK2_HourlyWeatherStatistics.add(baselineStart:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  v5 = v4;
  if (!v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_20:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  if (v3[8] <= 3)
  {
    OUTLINED_FUNCTION_38();
  }

  v7 = v3[2];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v7))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_22();
  if (v10 != v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v9, v3[3]);
  }

  v3[2] = v1;
  v12 = v1 + 4;
  v13 = *(v0 + 32);
  if (v13 < (v1 + 4))
  {
    OUTLINED_FUNCTION_9();
    v13 = *(v0 + 32);
  }

  *(*(v0 + 24) + v13 - v1 - 4) = v5;
  v3[2] = v12;
  if (v1 > 0xFFFFFFFB)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v15 & 1) == 0)
  {
    v16 = *(v14 + 32);
    if (v16)
    {
      v17 = v16 + *(v14 + 80);
      *v17 = v12;
      *(v17 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v19 <= 6)
    {
      LOWORD(v19) = 6;
    }

    *(v18 + 64) = v19;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_HourlyWeatherStatistics.addVectorOf(hours:_:)()
{
  OUTLINED_FUNCTION_219();
  v4 = *v3;
  if (!*v3)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_58();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v0 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (HIDWORD(v8))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  *(v0 + 16) = v2;
  if (HIDWORD(v2))
  {
    goto LABEL_30;
  }

  if (v2 - v4 == -4)
  {
    OUTLINED_FUNCTION_79();
    if (!v11)
    {
LABEL_27:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v12 = OUTLINED_FUNCTION_15();
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v2, *(v0 + 24));
  }

  OUTLINED_FUNCTION_27();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_9();
    v13 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v13);
  if (!v11 & v14)
  {
LABEL_31:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_57(v15);
      *(v17 + 4) = 8;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 8)
    {
      LOWORD(v19) = 8;
    }

    *(v18 + 64) = v19;
    goto LABEL_27;
  }

  __break(1u);
}

uint64_t static WK2_HourlyWeatherStatistics.endHourlyWeatherStatistics(_:start:)@<X0>(Swift::UInt32 at@<W1>, _DWORD *a2@<X8>)
{
  result = FlatBufferBuilder.endTable(at:)(at);
  *a2 = result;
  return result;
}

void static WK2_HourlyWeatherStatistics.createHourlyWeatherStatistics(_:metadataOffset:baselineStart:hoursVectorOffset:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v3 = static WK2_HourlyWeatherStatistics.startHourlyWeatherStatistics(_:)(v2);
  static WK2_HourlyWeatherStatistics.add(metadata:_:)();
  static WK2_HourlyWeatherStatistics.add(baselineStart:_:)();
  static WK2_HourlyWeatherStatistics.addVectorOf(hours:_:)();
  *v1 = FlatBufferBuilder.endTable(at:)(v3);
  OUTLINED_FUNCTION_218();
}

void static WK2_HourlyWeatherStatistics.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B5D67C(4, 0x617461646174656DLL, 0xE800000000000000, 1);
    v3 = 0;
    if (__src[2] >= 7)
    {
      v4 = __src[1] + 6;
      v5 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v4) & 1) != 0)
      {
        *v20 = MEMORY[0x277D84C58];
        v9 = &qword_2808A3160;
        v10 = &unk_272B87CC0;
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_76();
      v3 = 0;
      v6 = *(__src[8] + 24);
      v7 = *(v6 + v4);
      if (*(v6 + v4))
      {
        if (((v6 + LOBYTE(__src[0]) + v7) & 3) != 0)
        {
          v8 = v5;
        }

        else
        {
          v8 = 0;
        }

        if (v8 == 1)
        {
          *v20 = MEMORY[0x277D84CC0];
          v9 = &qword_2808A3170;
          v10 = &unk_272B89910;
LABEL_15:
          __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
          sub_272B87730();
          sub_272B5C86C();
          v11 = swift_allocError();
          OUTLINED_FUNCTION_7(v11, v12, v13, v14, v15, v16, v17, v18, *v20, *&v20[16], *&v20[32]);
LABEL_3:
          memcpy(v20, __src, sizeof(v20));
          sub_272B522C4(v20);
          return;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v7, 4);
        v3 = v19;
        if (v19)
        {
          goto LABEL_3;
        }
      }
    }

    sub_272B5DD98(8, 0x7372756F68, 0xE500000000000000, 1);
    if (!v3)
    {
      if (__OFSUB__(__src[7], 1))
      {
        __break(1u);
        return;
      }

      --__src[7];
    }

    goto LABEL_3;
  }
}

uint64_t WK2_HourOfYearWeatherStatistics.hourOfYear.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 5u)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 4);
    v6 = v5 + 4;
    if (!v4)
    {
      v7 = *(v2 + v6);
      if (v7)
      {
        v4 = __OFADD__(v7, v1);
        v8 = v7 + v1;
        if (!v4)
        {
          return *(v2 + v8);
        }

        goto LABEL_10;
      }

      return OUTLINED_FUNCTION_32_0();
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t WK2_HourOfYearWeatherStatistics.temperature.getter@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 24);
  v4 = *(*v1 + 24);
  v5 = *(v4 + v3);
  v6 = __OFSUB__(v3, v5);
  v7 = v3 - v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v4 + v7) < 7u)
  {
    v9 = 0;
LABEL_6:
    v6 = __OFADD__(v9, v3);
    v10 = v9 + v3;
    if (!v6)
    {
      if (!__OFADD__(v10, *(v4 + v10)))
      {
        return OUTLINED_FUNCTION_56(result, a1, *(v1 + 8));
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFADD__(v7, 6);
  v8 = v7 + 6;
  if (!v6)
  {
    v9 = *(v4 + v8);
    goto LABEL_6;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t static WK2_HourOfYearWeatherStatistics.startHourOfYearWeatherStatistics(_:)(uint64_t a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (*(v2 + 56) < v4 + 16)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x2743D4FD0](v5, -1, -1);
    }

    v6 = swift_slowAlloc();
    *(v2 + 32) = v6;
    *(v2 + 40) = v6 + 16;
    *(v2 + 48) = 0;
    *(v2 + 56) = 16;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void static WK2_HourOfYearWeatherStatistics.add(hourOfYear:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  v5 = v4;
  if (!v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_20:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  if (v3[8] <= 1)
  {
    v3[8] = 2;
    v3[3] = 2;
  }

  v7 = v3[2];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v7))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_22();
  if (v10 != v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v9, v3[3]);
  }

  v3[2] = v1;
  v12 = v1 + 2;
  v13 = *(v0 + 32);
  if (v13 < (v1 + 2))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(2, v1, v3[3]);
    v13 = *(v0 + 32);
  }

  *(*(v0 + 24) + v13 - v1 - 2) = v5;
  v3[2] = v12;
  if (v1 > 0xFFFFFFFD)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v15 & 1) == 0)
  {
    v16 = *(v14 + 32);
    if (v16)
    {
      v17 = v16 + *(v14 + 80);
      *v17 = v12;
      *(v17 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v19 <= 4)
    {
      LOWORD(v19) = 4;
    }

    *(v18 + 64) = v19;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_HourOfYearWeatherStatistics.add(temperature:_:)()
{
  OUTLINED_FUNCTION_219();
  v4 = *v3;
  if (!*v3)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_58();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v0 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (HIDWORD(v8))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  *(v0 + 16) = v2;
  if (HIDWORD(v2))
  {
    goto LABEL_30;
  }

  if (v2 - v4 == -4)
  {
    OUTLINED_FUNCTION_79();
    if (!v11)
    {
LABEL_27:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v12 = OUTLINED_FUNCTION_15();
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v2, *(v0 + 24));
  }

  OUTLINED_FUNCTION_27();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_9();
    v13 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v13);
  if (!v11 & v14)
  {
LABEL_31:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_57(v15);
      *(v17 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 6)
    {
      LOWORD(v19) = 6;
    }

    *(v18 + 64) = v19;
    goto LABEL_27;
  }

  __break(1u);
}

void static WK2_HourOfYearWeatherStatistics.createHourOfYearWeatherStatistics(_:hourOfYear:temperatureOffset:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v3 = static WK2_HourOfYearWeatherStatistics.startHourOfYearWeatherStatistics(_:)(v2);
  static WK2_HourOfYearWeatherStatistics.add(hourOfYear:_:)();
  static WK2_HourOfYearWeatherStatistics.add(temperature:_:)();
  *v1 = FlatBufferBuilder.endTable(at:)(v3);
  OUTLINED_FUNCTION_218();
}

void static WK2_HourOfYearWeatherStatistics.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    if (__src[2] >= 5)
    {
      v3 = __src[1] + 4;
      v4 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v3) & 1) != 0)
      {
        *v16 = MEMORY[0x277D84C58];
        v6 = &qword_2808A3160;
        v7 = &unk_272B87CC0;
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_76();
      v5 = *(__src[8] + 24);
      if (*(v5 + v3))
      {
        if ((v4 & (v5 + LODWORD(__src[0]) + *(v5 + v3))) == 1)
        {
          *v16 = MEMORY[0x277D84958];
          v6 = qword_2808A3220;
          v7 = &qword_272B89920;
LABEL_9:
          __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
          sub_272B87730();
          sub_272B5C86C();
          v8 = swift_allocError();
          OUTLINED_FUNCTION_7(v8, v9, v10, v11, v12, v13, v14, v15, *v16, *&v16[16], *&v16[32]);
LABEL_13:
          memcpy(v16, __src, sizeof(v16));
          sub_272B522C4(v16);
          return;
        }

        OUTLINED_FUNCTION_76();
      }
    }

    sub_272B5DD40(6, 0x74617265706D6574, 0xEB00000000657275, 1);
    if (__OFSUB__(__src[7], 1))
    {
      __break(1u);
      return;
    }

    --__src[7];
    goto LABEL_13;
  }
}

Swift::Int static String.verify<A>(_:at:of:)(Swift::Int a1, Swift::Int a2)
{
  sub_272B87720();
  OUTLINED_FUNCTION_2_0();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  result = sub_272B6A030(a1, a2);
  if (!v3)
  {
    v16 = result;
    v17 = v15;
    v35 = v7;
    v18 = result + v15;
    v19 = *(a1 + 8);
    if (result + v15 >= v19)
    {
      if (v18 >= 0)
      {
        v29 = result + v15;
      }

      else
      {
        v29 = -v18;
      }

      sub_272B5C86C();
      swift_allocError();
      *v25 = v29;
      *(v25 + 8) = v19;
      v31 = v33;
      v30 = v34;
      *(v25 + 16) = v32;
      *(v25 + 32) = v31;
      *(v25 + 48) = v30;
      v28 = 1;
      goto LABEL_10;
    }

    if ((*(a1 + 76) & 1) == 0)
    {
      v20 = *(a1 + 40);
      if (*(*(v20 + 24) + v18))
      {
        sub_272B87710();
        *&v32 = sub_272B51468((*(v20 + 24) + v16), v17);
        v21 = v35;
        (*(v35 + 16))(v11, v13, v2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3210, &qword_272B89868);
        sub_272B549E8();
        v22 = sub_272B87700();
        v24 = v23;
        (*(v21 + 8))(v13, v2);

        sub_272B5C86C();
        swift_allocError();
        *v25 = a2;
        *(v25 + 8) = v22;
        *(v25 + 16) = v24;
        v26 = v34;
        v27 = v33;
        *(v25 + 24) = v32;
        *(v25 + 40) = v27;
        *(v25 + 56) = v26;
        v28 = 4;
LABEL_10:
        *(v25 + 64) = v28;
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t String.init(_:o:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_272B87720();
  OUTLINED_FUNCTION_2_0();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - v13;
  v15 = *(*(a1 + 24) + a4);
  sub_272B87710();
  v20[1] = sub_272B51468((*(a1 + 24) + a4 + 4), v15);
  (*(v8 + 16))(v12, v14, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3210, &qword_272B89868);
  sub_272B549E8();
  v16 = sub_272B87700();
  v18 = v17;
  (*(v8 + 8))(v14, v4);

  if (v18)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_272B72DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  result = String.init(_:o:)(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  return result;
}

void static String.pack(_:obj:)(void *result@<X0>, unint64_t *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = a2[1];
  if (v3)
  {
    v4[0] = *a2;
    v4[1] = v3;
    static String.pack(_:obj:)(result, v4, a3);
  }

  else
  {
    *a3 = 0;
  }
}

void static String.pack(_:obj:)(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v36[3] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v5 = a2[1];
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x1000000000000000) != 0)
  {
LABEL_62:
    v8 = sub_272B87760();
  }

  else if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (a1[8] <= 3)
  {
    a1[8] = 4;
    a1[3] = 4;
  }

  v9 = a1[2];
  if (v9 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_64;
  }

  if (((v9 | (v8 + 1)) & 0x8000000000000000) != 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if ((v8 + 1) > 0xFFFFFFFFLL)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v35 = a3;
  v10 = (~(v9 + v8) & 3) + v9;
  a3 = a1[1];
  if (*(a3 + 32) >= v10)
  {
  }

  else
  {
    v11 = a1[3];

    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(~(v9 + v8) & 3, v9, v11);
  }

  a1[2] = v10;
  v12 = v10 + 1;
  if (*(a3 + 32) <= v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v10, a1[3]);
  }

  a1[2] = v12;
  if (*(a3 + 32) < (v12 + v8))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v10 + 1, a1[3]);
  }

  if (sub_272B46F44(v6, v5, a1 + 1, v8) != 2)
  {
    goto LABEL_51;
  }

  v13 = (v5 & 0x2000000000000000) != 0 ? v7 : v6 & 0xFFFFFFFFFFFFLL;
  if (!v13)
  {
    goto LABEL_51;
  }

  v14 = (v6 >> 59) & 1;
  if ((v5 & 0x1000000000000000) == 0)
  {
    LODWORD(v14) = 1;
  }

  v15 = 11;
  if (v14)
  {
    v15 = 7;
  }

  v16 = v15 | (v13 << 16);
  v7 = 4 << v14;

  while (1)
  {
    if ((v16 & 0xC) != v7)
    {
      if ((v5 & 0x1000000000000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_32;
    }

    v17 = OUTLINED_FUNCTION_1();
    v20 = sub_272B73308(v17, v18, v19);
    if (v20 < 0x4000)
    {
      break;
    }

    v16 = v20;
    if ((v5 & 0x1000000000000000) == 0)
    {
LABEL_29:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) - 65532;
      goto LABEL_34;
    }

LABEL_32:
    if (v13 < v16 >> 16)
    {
      __break(1u);
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_1();
    v16 = sub_272B87770();
LABEL_34:
    v21 = v16;
    if ((v16 & 0xC) == v7)
    {
      v27 = OUTLINED_FUNCTION_1();
      v21 = sub_272B73308(v27, v28, v29);
    }

    v22 = v21 >> 16;
    if (v21 >> 16 >= v13)
    {
      goto LABEL_49;
    }

    if ((v5 & 0x1000000000000000) != 0)
    {
      v24 = sub_272B87790();
    }

    else if ((v5 & 0x2000000000000000) != 0)
    {
      v36[0] = v6;
      v36[1] = v5 & 0xFFFFFFFFFFFFFFLL;
      v24 = *(v36 + v22);
    }

    else
    {
      v23 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v6 & 0x1000000000000000) == 0)
      {
        v23 = sub_272B878E0();
      }

      v24 = *(v23 + v22);
    }

    v25 = a1[2];
    v26 = *(a3 + 32);
    if (v26 < v25 + 1)
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, a1[2], a1[3]);
      v26 = *(a3 + 32);
    }

    *(*(a3 + 24) + v26 + ~v25) = v24;
    a1[2] = v25 + 1;
    if (!(v16 >> 14))
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:

LABEL_51:

  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_66;
  }

  if (HIDWORD(v8))
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v30 = a1[2];
  if ((v30 & 0x8000000000000000) != 0)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (HIDWORD(v30))
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v31 = -*(a1 + 16) & 3;
  v32 = v31 + v30;
  if (*(a3 + 32) < (v31 + v30))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v31, v30, a1[3]);
  }

  a1[2] = v32;
  v33 = v32 + 4;
  v34 = *(a3 + 32);
  if (v34 < (v32 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v32, a1[3]);
    v34 = *(a3 + 32);
  }

  *(*(a3 + 24) + v34 - v32 - 4) = v8;
  a1[2] = v33;
  if (v32 > 0xFFFFFFFB)
  {
LABEL_70:
    __break(1u);
  }

  *v35 = v33;
}

Swift::String __swiftcall String.unpack()()
{
  v1 = *v0;
  v2 = v0[1];

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_272B73260@<X0>(Swift::String *a1@<X8>)
{
  v3 = String.unpack()();
  result = v3._countAndFlagsBits;
  *a1 = v3;
  return result;
}

uint64_t sub_272B73308(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_272B877A0();
    OUTLINED_FUNCTION_3_0(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x2743D4AD0](15, a1 >> 16);
    OUTLINED_FUNCTION_3_0(v3);
    return v4 | 8;
  }
}

uint64_t static FlatbuffersErrors.== infix(_:_:)(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_272B5C86C();
  v3 = sub_272B879A0();
  v5 = v4;
  memcpy(v10, a2, sizeof(v10));
  if (v3 == sub_272B879A0() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_272B87980();
  }

  return v8 & 1;
}

uint64_t get_enum_tag_for_layout_string_11WeatherData17FlatbuffersErrorsO(uint64_t a1)
{
  if ((*(a1 + 64) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 64) & 7;
  }
}

uint64_t sub_272B73474(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 65))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 <= 7)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_272B734B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_272B7350C(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t sub_272B735FC(const void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return a2 != 0;
  }

  result = (*(a5 + 8))(a3, a5);
  v9 = *(*(a4 - 8) + 64);
  if ((v9 & 0x8000000000000000) == 0)
  {
    memcpy((*(result + 24) + a2), a1, v9);

    return a2 != 0;
  }

  __break(1u);
  return result;
}

void Mutable<>.mutate<A>(_:index:)(uint64_t a1, int a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_0_1();
    v6 = __OFADD__(v4, v5);
    v7 = v4 + v5;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      sub_272B735FC(v2, v7, &type metadata for Table, v3, &protocol witness table for Table);
    }
  }
}

uint64_t Mutable<>.directMutate<A>(_:index:)(uint64_t a1, uint64_t a2)
{
  return sub_272B737B0() & 1;
}

{
  return sub_272B737B0() & 1;
}

void Mutable<>.mutate<A>(_:index:)()
{
  OUTLINED_FUNCTION_0_1();
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_272B735FC(v0, v5, &type metadata for Struct, v1, &protocol witness table for Struct);
  }
}

uint64_t static FlatBufferDecodable<>.decode(from:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __dst[0] = a1;
  __dst[1] = a2;
  sub_272B5226C(a1, a2);
  v12 = MEMORY[0x2743D49D0](a1, a2);
  type metadata accessor for ByteBuffer.Storage();
  swift_allocObject();
  v13 = ByteBuffer.Storage.init(count:alignment:)(v12, 1);
  __src[0] = v13;
  v14 = *(v13 + 32);
  sub_272B5226C(a1, a2);
  sub_272B52318(__dst, __src, a1, a2);
  sub_272B52DF8(__dst[0], __dst[1]);
  v50[0] = v13;
  v50[1] = v14;
  v50[2] = 1;
  __src[0] = 0xF424080000000;
  LODWORD(__src[1]) = 64;
  BYTE4(__src[1]) = 0;
  getCheckedRoot<A>(byteBuffer:fileId:options:)(v50, 0, 0, __src, a3, a5, a6);
  if (!v6)
  {
  }

  v51 = v6;
  MEMORY[0x2743D4EE0](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3328, &qword_272B89C30);
  if (swift_dynamicCast())
  {
    MEMORY[0x2743D4ED0](v6);
    memcpy(__dst, __src, 0x41uLL);
    v15 = __dst[2];
    if (LOBYTE(__dst[8]) == 3)
    {
      v32 = __dst[1];

      OUTLINED_FUNCTION_1_1();
      v33 = sub_272B73B74();
      v35 = v34;
      v36 = sub_272B73BA4();
      OUTLINED_FUNCTION_177(&type metadata for FlatBufferDecodeError, v36);
      *v37 = v33;
      *(v37 + 8) = v35;
      *(v37 + 16) = v32;
      *(v37 + 24) = v15;
      *(v37 + 64) = 0x80;
    }

    else
    {
      v16 = __dst[3];
      v17 = __dst[7];
      if (LOBYTE(__dst[8]) != 5)
      {
        v47 = __dst[2];
        if (LOBYTE(__dst[8]) == 7)
        {
          v19 = __dst[4];
          v18 = __dst[5];
          v20 = __dst[0];
          if (!(__dst[5] | __dst[4] | __dst[0] | __dst[1] | __dst[2] | __dst[3] | __dst[6] | __dst[7]))
          {
            OUTLINED_FUNCTION_1_1();
            v41 = sub_272B73B74();
            v43 = v42;
            v44 = sub_272B73BA4();
            OUTLINED_FUNCTION_177(&type metadata for FlatBufferDecodeError, v44);
            *v45 = v41;
            *(v45 + 8) = v43;
            *(v45 + 64) = 64;
            goto LABEL_14;
          }

          v21 = __dst[1];
          v22 = __dst[6];
          v46 = __dst[7];
        }

        else
        {
          v21 = __dst[1];
          v22 = __dst[6];
          v46 = __dst[7];
          v20 = __dst[0];
          v19 = __dst[4];
          v18 = __dst[5];
        }

        v38 = __dst[8] & 7 | 0xC0;
        v39 = sub_272B73BA4();
        OUTLINED_FUNCTION_177(&type metadata for FlatBufferDecodeError, v39);
        *v40 = v20;
        *(v40 + 8) = v21;
        *(v40 + 16) = v47;
        *(v40 + 24) = v16;
        *(v40 + 32) = v19;
        *(v40 + 40) = v18;
        *(v40 + 48) = v22;
        *(v40 + 56) = v46;
        *(v40 + 64) = v38;
LABEL_14:
        swift_willThrow();
        goto LABEL_15;
      }

      v24 = __dst[6];

      OUTLINED_FUNCTION_1_1();
      v25 = sub_272B73B74();
      v27 = v26;
      v28 = sub_272B73BA4();
      OUTLINED_FUNCTION_177(&type metadata for FlatBufferDecodeError, v28);
      *v29 = v25;
      *(v29 + 8) = v27;
      *&v30 = v15;
      *(&v30 + 1) = v16;
      *&v31 = v24;
      *(&v31 + 1) = v17;
      *(v29 + 16) = v30;
      *(v29 + 32) = v31;
      *(v29 + 64) = 0;
    }

    swift_willThrow();
    sub_272B73BF8(__dst);
  }

LABEL_15:

  return MEMORY[0x2743D4ED0](v51);
}

unint64_t sub_272B73BA4()
{
  result = qword_2808A3330;
  if (!qword_2808A3330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3330);
  }

  return result;
}

uint64_t sub_272B73C58(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1D && *(a1 + 65))
    {
      v2 = *a1 + 28;
    }

    else
    {
      v2 = ((*(a1 + 64) >> 1) & 0x1C | (*(a1 + 64) >> 6)) ^ 0x1F;
      if (v2 >= 0x1C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_272B73CA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1C)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 29;
    if (a3 >= 0x1D)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1D)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 64) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t WK2_Quantiles.init(_:o:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

void WK2_PrecipitationAmount.probability.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (*(v0 + v2) < 5u)
  {
    return;
  }

  v3 = __OFADD__(v2, 4);
  v4 = v2 + 4;
  if (v3)
  {
    goto LABEL_9;
  }

  v5 = *(v0 + v4);
  if (v5 && __OFADD__(v5, v1))
  {
    goto LABEL_10;
  }
}

void static WK2_PrecipitationAmount.add(probability:_:)(char a1, void *a2)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
      return;
    }
  }

  if (a2[8] <= 0)
  {
    a2[8] = 1;
    a2[3] = 1;
  }

  v5 = a2[2];
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = a2[1];
  if (*(v6 + 32) < v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(0, a2[2], a2[3]);
  }

  a2[2] = v5;
  v7 = v5 + 1;
  v8 = *(v6 + 32);
  if (v8 <= v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v5, a2[3]);
    v8 = *(v6 + 32);
  }

  *(*(v6 + 24) + v8 + ~v5) = a1;
  a2[2] = v7;
  if (v5 == 0xFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v9 + 32);
    if (v11)
    {
      v12 = v11 + *(v9 + 80);
      *v12 = v7;
      *(v12 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v9, *(v9 + 72), xmmword_272B87CB0);
    if (v14 <= 4)
    {
      LOWORD(v14) = 4;
    }

    *(v13 + 64) = v14;
  }
}

uint64_t static WK2_PrecipitationAmount.createPrecipitationAmount(_:probability:averageAmount:averageSnowfallAmount:)@<X0>(void *a1@<X0>, char a2@<W1>, _DWORD *a3@<X8>)
{
  v8 = static WK2_Quantiles.startQuantiles(_:)();
  static WK2_PrecipitationAmount.add(probability:_:)(a2, a1);
  static WK2_Quantiles.add(p50:_:)();
  static WK2_Quantiles.add(p90:_:)();
  result = FlatBufferBuilder.endTable(at:)(v8);
  *a3 = result;
  return result;
}

void static WK2_PrecipitationAmount.verify<A>(_:at:of:)(int a1, unint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_92(a1, a2, a3, a4, a5, a6, a7, a8, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, v41, v42, v43, v44, v45, v46, v47, v48);
  if (!v8)
  {
    if (v51 < 5)
    {
      goto LABEL_28;
    }

    v18 = v50 + 4;
    if (v52 != 1 || (OUTLINED_FUNCTION_42(), (v19 & 1) == 0))
    {
      OUTLINED_FUNCTION_62();
      if (*(*(v54 + 24) + v18))
      {
        Verifier.rangeInBuffer(position:size:)(v49 + *(*(v54 + 24) + v18), 1);
        if (v20)
        {
          goto LABEL_32;
        }
      }

      if (v51 <= 6)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_18();
      if (!v21 || (OUTLINED_FUNCTION_42(), (v22 & 1) == 0))
      {
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_53();
        if (v23)
        {
          OUTLINED_FUNCTION_23();
          if (v21)
          {
            v24 = 0;
          }

          else
          {
            v24 = v9;
          }

          if (v24 == 1)
          {
            goto LABEL_16;
          }

          OUTLINED_FUNCTION_66();
        }

        if (v51 <= 8)
        {
LABEL_28:
          if (__OFSUB__(v53, 1))
          {
            __break(1u);
            return;
          }

          --v53;
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_19_1();
        if (!v21 || (OUTLINED_FUNCTION_42(), (v27 & 1) == 0))
        {
          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_53();
          if (v28)
          {
            OUTLINED_FUNCTION_23();
            if (v21)
            {
              v29 = 0;
            }

            else
            {
              v29 = v51;
            }

            if (v29 == 1)
            {
LABEL_16:
              *&v38 = MEMORY[0x277D83A90];
              v25 = &unk_2808A3178;
              v26 = &unk_272B87CD0;
LABEL_31:
              __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
              sub_272B87730();
              sub_272B5C86C();
              v30 = swift_allocError();
              v10 = OUTLINED_FUNCTION_7(v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
LABEL_32:
              OUTLINED_FUNCTION_93(v10, v11, v12, v13, v14, v15, v16, v17, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, v41, v42, v43, v44, v45, v46, v47, v48);
              sub_272B522C4(&v38);
              return;
            }

            OUTLINED_FUNCTION_66();
          }

          goto LABEL_28;
        }
      }
    }

    *&v38 = MEMORY[0x277D84C58];
    v25 = &qword_2808A3160;
    v26 = &unk_272B87CC0;
    goto LABEL_31;
  }
}

unint64_t sub_272B74194(uint64_t a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (*(v2 + 56) < v4 + 24)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x2743D4FD0](v5, -1, -1);
    }

    v6 = swift_slowAlloc();
    *(v2 + 32) = v6;
    *(v2 + 40) = v6 + 24;
    *(v2 + 48) = 0;
    *(v2 + 56) = 24;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void static WK2_Quantiles.add(p10:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B74758(v0, v1);
}

void static WK2_Quantiles.add(p50:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B74864(v0, v1);
}

void static WK2_Quantiles.add(p90:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B74320(v0, v1);
}

void sub_272B74320(void *a1, float a2)
{
  if (a2 == 0.0)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
      return;
    }
  }

  if (a1[8] <= 3)
  {
    OUTLINED_FUNCTION_38();
  }

  v5 = a1[2];
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v5))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = OUTLINED_FUNCTION_3(a1, v5);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v7, a1[3]);
  }

  OUTLINED_FUNCTION_20_0();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_15_2();
    v10 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v10);
  if (!v4 & v11)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    if (*(v12 + 32))
    {
      OUTLINED_FUNCTION_48(v12);
      *(v14 + 4) = 8;
    }

    OUTLINED_FUNCTION_33(v12, *(v12 + 72), xmmword_272B87CB0);
    if (v16 <= 8)
    {
      LOWORD(v16) = 8;
    }

    *(v15 + 64) = v16;
  }
}

uint64_t static WK2_Quantiles.endQuantiles(_:start:)@<X0>(Swift::UInt32 at@<W1>, _DWORD *a2@<X8>)
{
  result = FlatBufferBuilder.endTable(at:)(at);
  *a2 = result;
  return result;
}

uint64_t static WK2_Quantiles.createQuantiles(_:p10:p50:p90:)@<X0>(_DWORD *a1@<X8>)
{
  v2 = static WK2_Quantiles.startQuantiles(_:)();
  static WK2_Quantiles.add(p10:_:)();
  static WK2_Quantiles.add(p50:_:)();
  static WK2_Quantiles.add(p90:_:)();
  result = FlatBufferBuilder.endTable(at:)(v2);
  *a1 = result;
  return result;
}

void static WK2_Quantiles.verify<A>(_:at:of:)(int a1, unint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_92(a1, a2, a3, a4, a5, a6, a7, a8, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, v41, v42, v43, v44, v45, v46, v47, v48);
  if (!v8)
  {
    if (v49 < 5)
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_18();
    if (!v18 || (OUTLINED_FUNCTION_42(), (v19 & 1) == 0))
    {
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_53();
      if (v20)
      {
        OUTLINED_FUNCTION_23();
        if (v18)
        {
          v21 = 0;
        }

        else
        {
          v21 = v9;
        }

        if (v21 == 1)
        {
          goto LABEL_11;
        }

        OUTLINED_FUNCTION_66();
      }

      if (v49 <= 6)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_18();
      if (!v18 || (OUTLINED_FUNCTION_42(), (v24 & 1) == 0))
      {
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_53();
        if (v25)
        {
          OUTLINED_FUNCTION_23();
          if (v18)
          {
            v26 = 0;
          }

          else
          {
            v26 = v9;
          }

          if (v26 == 1)
          {
            goto LABEL_11;
          }

          OUTLINED_FUNCTION_66();
        }

        if (v49 <= 8)
        {
LABEL_33:
          if (__OFSUB__(v50, 1))
          {
            __break(1u);
            return;
          }

          --v50;
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_19_1();
        if (!v18 || (OUTLINED_FUNCTION_42(), (v27 & 1) == 0))
        {
          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_53();
          if (v28)
          {
            OUTLINED_FUNCTION_23();
            if (v18)
            {
              v29 = 0;
            }

            else
            {
              v29 = v49;
            }

            if (v29 != 1)
            {
              OUTLINED_FUNCTION_66();
              goto LABEL_33;
            }

LABEL_11:
            *&v38 = MEMORY[0x277D83A90];
            v22 = &unk_2808A3178;
            v23 = &unk_272B87CD0;
LABEL_36:
            __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
            sub_272B87730();
            sub_272B5C86C();
            v30 = swift_allocError();
            v10 = OUTLINED_FUNCTION_7(v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
LABEL_37:
            OUTLINED_FUNCTION_93(v10, v11, v12, v13, v14, v15, v16, v17, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, v41, v42, v43, v44, v45, v46, v47, v48);
            sub_272B522C4(&v38);
            return;
          }

          goto LABEL_33;
        }
      }
    }

    *&v38 = MEMORY[0x277D84C58];
    v22 = &qword_2808A3160;
    v23 = &unk_272B87CC0;
    goto LABEL_36;
  }
}

unint64_t static WK2_Range.startRange(_:)(uint64_t a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (*(v2 + 56) < v4 + 16)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x2743D4FD0](v5, -1, -1);
    }

    v6 = swift_slowAlloc();
    *(v2 + 32) = v6;
    *(v2 + 40) = v6 + 16;
    *(v2 + 48) = 0;
    *(v2 + 56) = 16;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void sub_272B74758(void *a1, float a2)
{
  if (a2 == 0.0)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
      return;
    }
  }

  if (a1[8] <= 3)
  {
    OUTLINED_FUNCTION_38();
  }

  v5 = a1[2];
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v5))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = OUTLINED_FUNCTION_3(a1, v5);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v7, a1[3]);
  }

  OUTLINED_FUNCTION_20_0();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_15_2();
    v10 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v10);
  if (!v4 & v11)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    if (*(v12 + 32))
    {
      OUTLINED_FUNCTION_48(v12);
      *(v14 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v12, *(v12 + 72), xmmword_272B87CB0);
    if (v16 <= 4)
    {
      LOWORD(v16) = 4;
    }

    *(v15 + 64) = v16;
  }
}

void sub_272B74864(void *a1, float a2)
{
  if (a2 == 0.0)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
      return;
    }
  }

  if (a1[8] <= 3)
  {
    OUTLINED_FUNCTION_38();
  }

  v5 = a1[2];
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v5))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = OUTLINED_FUNCTION_3(a1, v5);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v7, a1[3]);
  }

  OUTLINED_FUNCTION_20_0();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_15_2();
    v10 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v10);
  if (!v4 & v11)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    if (*(v12 + 32))
    {
      OUTLINED_FUNCTION_48(v12);
      *(v14 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v12, *(v12 + 72), xmmword_272B87CB0);
    if (v16 <= 6)
    {
      LOWORD(v16) = 6;
    }

    *(v15 + 64) = v16;
  }
}

uint64_t static WK2_Range.createRange(_:min:max:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = static WK2_Range.startRange(_:)(a1);
  static WK2_Quantiles.add(p10:_:)();
  static WK2_Quantiles.add(p50:_:)();
  result = FlatBufferBuilder.endTable(at:)(v3);
  *a2 = result;
  return result;
}

void static WK2_Range.verify<A>(_:at:of:)(int a1, unint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_92(a1, a2, a3, a4, a5, a6, a7, a8, v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39, v40, v41, v42, v43, v44, v45);
  if (!v8)
  {
    if (v46 < 5)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_18();
    if (!v18 || (OUTLINED_FUNCTION_42(), (v19 & 1) == 0))
    {
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_53();
      if (v20)
      {
        OUTLINED_FUNCTION_23();
        if (v18)
        {
          v21 = 0;
        }

        else
        {
          v21 = v9;
        }

        if (v21 == 1)
        {
          goto LABEL_11;
        }

        OUTLINED_FUNCTION_66();
      }

      if (v46 <= 6)
      {
LABEL_22:
        if (__OFSUB__(v48, 1))
        {
          __break(1u);
          return;
        }

        --v48;
        goto LABEL_26;
      }

      if (v47 != 1 || (OUTLINED_FUNCTION_42(), (v24 & 1) == 0))
      {
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_53();
        if (v25)
        {
          OUTLINED_FUNCTION_23();
          if (v18)
          {
            v26 = 0;
          }

          else
          {
            v26 = v47;
          }

          if (v26 == 1)
          {
LABEL_11:
            *&v35 = MEMORY[0x277D83A90];
            v22 = &unk_2808A3178;
            v23 = &unk_272B87CD0;
LABEL_25:
            __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
            sub_272B87730();
            sub_272B5C86C();
            v27 = swift_allocError();
            v10 = OUTLINED_FUNCTION_7(v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
LABEL_26:
            OUTLINED_FUNCTION_93(v10, v11, v12, v13, v14, v15, v16, v17, v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39, v40, v41, v42, v43, v44, v45);
            sub_272B522C4(&v35);
            return;
          }

          OUTLINED_FUNCTION_66();
        }

        goto LABEL_22;
      }
    }

    *&v35 = MEMORY[0x277D84C58];
    v22 = &qword_2808A3160;
    v23 = &unk_272B87CC0;
    goto LABEL_25;
  }
}

void static WK2_PrecipitationAmount.add(averageAmount:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Quantiles.add(p50:_:)();
}

void static WK2_PrecipitationAmount.add(averageSnowfallAmount:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Quantiles.add(p90:_:)();
}

void static WK2_Range.add(min:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Quantiles.add(p10:_:)();
}

void static WK2_Range.add(max:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Quantiles.add(p50:_:)();
}

uint64_t WK2_DailyWeatherStatistics.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 24);
  v4 = *(*v1 + 24);
  v5 = *(v4 + v3);
  v6 = __OFSUB__(v3, v5);
  v7 = v3 - v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(v1 + 8);
  if (*(v4 + v7) < 5u)
  {
    v10 = 0;
LABEL_6:
    v6 = __OFADD__(v10, v3);
    v11 = v10 + v3;
    if (!v6)
    {
      v12 = *(v4 + v11);
      v6 = __OFADD__(v11, v12);
      v13 = v11 + v12;
      if (!v6)
      {
        *a1 = result;
        *(a1 + 8) = v8;
        *(a1 + 24) = v13;
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFADD__(v7, 4);
  v9 = v7 + 4;
  if (!v6)
  {
    v10 = *(v4 + v9);
    goto LABEL_6;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t WK2_DailyWeatherStatistics.baselineStart.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 7u)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 6);
    v6 = v5 + 6;
    if (!v4)
    {
      v7 = *(v2 + v6);
      if (v7)
      {
        v4 = __OFADD__(v7, v1);
        v8 = v7 + v1;
        if (!v4)
        {
          return *(v2 + v8);
        }

        goto LABEL_10;
      }

      return OUTLINED_FUNCTION_32_0();
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t WK2_DailyWeatherStatistics.hasDays.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 9u)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 8);
    v6 = v5 + 8;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t WK2_DailyWeatherStatistics.daysCount.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v5) < 9u)
  {
    return OUTLINED_FUNCTION_32_0();
  }

  v4 = __OFADD__(v5, 8);
  v6 = v5 + 8;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_32_0();
  }

  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v4)
  {
    v9 = *(v2 + v8);
    v4 = __OFADD__(v8, v9);
    v10 = v8 + v9;
    if (!v4)
    {
      return *(v2 + v10);
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t WK2_DailyWeatherStatistics.days(at:)(int a1)
{
  result = *v1;
  v4 = *(v1 + 24);
  v5 = *(*v1 + 24);
  v6 = *(v5 + v4);
  v7 = __OFSUB__(v4, v6);
  v8 = v4 - v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = 0uLL;
  if (*(v5 + v8) < 9u)
  {
LABEL_12:
    v17 = 0;
    return OUTLINED_FUNCTION_51(v17, v9);
  }

  v7 = __OFADD__(v8, 8);
  v10 = v8 + 8;
  if (v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = *(v5 + v10);
  if (!v11)
  {
    goto LABEL_12;
  }

  v7 = __OFADD__(v11, v4);
  v12 = v11 + v4;
  if (v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = *(v5 + v12);
  v7 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = __OFADD__(v14, 4);
  v15 = v14 + 4;
  if (v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 - 0x20000000) >> 30 != 3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = __OFADD__(v15, 4 * a1);
  v16 = v15 + 4 * a1;
  if (v7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!__OFADD__(v16, *(v5 + v16)))
  {
    v18 = *(v1 + 8);

    v9 = v18;
    return OUTLINED_FUNCTION_51(v17, v9);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t WK2_DayOfYearWeatherStatistics.init(_:o:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

void static WK2_DailyWeatherStatistics.add(metadata:_:)()
{
  OUTLINED_FUNCTION_219();
  v4 = *v3;
  if (!*v3)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_58();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v0 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (HIDWORD(v8))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  *(v0 + 16) = v2;
  if (HIDWORD(v2))
  {
    goto LABEL_30;
  }

  if (v2 - v4 == -4)
  {
    OUTLINED_FUNCTION_79();
    if (!v11)
    {
LABEL_27:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v12 = OUTLINED_FUNCTION_15();
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v2, *(v0 + 24));
  }

  OUTLINED_FUNCTION_27();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_9();
    v13 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v13);
  if (!v11 & v14)
  {
LABEL_31:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_57(v15);
      *(v17 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 4)
    {
      LOWORD(v19) = 4;
    }

    *(v18 + 64) = v19;
    goto LABEL_27;
  }

  __break(1u);
}

void static WK2_DailyWeatherStatistics.add(baselineStart:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  v5 = v4;
  if (!v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_20:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  if (v3[8] <= 3)
  {
    OUTLINED_FUNCTION_38();
  }

  v7 = v3[2];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v7))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_22();
  if (v10 != v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v9, v3[3]);
  }

  v3[2] = v1;
  v12 = v1 + 4;
  v13 = *(v0 + 32);
  if (v13 < (v1 + 4))
  {
    OUTLINED_FUNCTION_9();
    v13 = *(v0 + 32);
  }

  *(*(v0 + 24) + v13 - v1 - 4) = v5;
  v3[2] = v12;
  if (v1 > 0xFFFFFFFB)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v15 & 1) == 0)
  {
    v16 = *(v14 + 32);
    if (v16)
    {
      v17 = v16 + *(v14 + 80);
      *v17 = v12;
      *(v17 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v19 <= 6)
    {
      LOWORD(v19) = 6;
    }

    *(v18 + 64) = v19;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_DailyWeatherStatistics.createDailyWeatherStatistics(_:metadataOffset:baselineStart:daysVectorOffset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_219();
  v20 = v19;
  v21 = static WK2_DayOfYearWeatherStatistics.startDayOfYearWeatherStatistics(_:)();
  static WK2_DailyWeatherStatistics.add(metadata:_:)();
  static WK2_DailyWeatherStatistics.add(baselineStart:_:)();
  static WK2_DayOfYearWeatherStatistics.add(precipitation:_:)();
  *v20 = FlatBufferBuilder.endTable(at:)(v21);
  OUTLINED_FUNCTION_218();
}

void static WK2_DailyWeatherStatistics.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B5D67C(4, 0x617461646174656DLL, 0xE800000000000000, 1);
    v3 = 0;
    if (__src[2] >= 7)
    {
      v4 = __src[1] + 6;
      v5 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v4) & 1) != 0)
      {
        *v20 = MEMORY[0x277D84C58];
        v9 = &qword_2808A3160;
        v10 = &unk_272B87CC0;
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_76();
      v3 = 0;
      v6 = *(__src[8] + 24);
      v7 = *(v6 + v4);
      if (*(v6 + v4))
      {
        if (((v6 + LOBYTE(__src[0]) + v7) & 3) != 0)
        {
          v8 = v5;
        }

        else
        {
          v8 = 0;
        }

        if (v8 == 1)
        {
          *v20 = MEMORY[0x277D84CC0];
          v9 = &qword_2808A3170;
          v10 = &unk_272B89910;
LABEL_15:
          __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
          sub_272B87730();
          sub_272B5C86C();
          v11 = swift_allocError();
          OUTLINED_FUNCTION_7(v11, v12, v13, v14, v15, v16, v17, v18, *v20, *&v20[16], *&v20[32]);
LABEL_3:
          memcpy(v20, __src, sizeof(v20));
          sub_272B522C4(v20);
          return;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v7, 4);
        v3 = v19;
        if (v19)
        {
          goto LABEL_3;
        }
      }
    }

    sub_272B5D748(8, 1937334628, 0xE400000000000000, 1);
    if (!v3)
    {
      if (__OFSUB__(__src[7], 1))
      {
        __break(1u);
        return;
      }

      --__src[7];
    }

    goto LABEL_3;
  }
}

uint64_t WK2_DayOfYearWeatherStatistics.dayOfYear.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 5u)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 4);
    v6 = v5 + 4;
    if (!v4)
    {
      v7 = *(v2 + v6);
      if (v7)
      {
        v4 = __OFADD__(v7, v1);
        v8 = v7 + v1;
        if (!v4)
        {
          return *(v2 + v8);
        }

        goto LABEL_10;
      }

      return OUTLINED_FUNCTION_32_0();
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t WK2_DayOfYearWeatherStatistics.temperature.getter()
{
  result = OUTLINED_FUNCTION_14();
  if (v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = 0uLL;
  if (*(v2 + v4) < 7u)
  {
LABEL_8:
    v10 = 0;
    return OUTLINED_FUNCTION_51(v10, v6);
  }

  v5 = __OFADD__(v4, 6);
  v7 = v4 + 6;
  if (v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = *(v2 + v7);
  if (!v8)
  {
    goto LABEL_8;
  }

  v5 = __OFADD__(v8, v3);
  v9 = v8 + v3;
  if (v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!__OFADD__(v9, *(v2 + v9)))
  {
    v11 = *(v0 + 8);

    v6 = v11;
    return OUTLINED_FUNCTION_51(v10, v6);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t WK2_DayOfYearWeatherStatistics.precipitation.getter()
{
  result = OUTLINED_FUNCTION_14();
  if (v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = 0uLL;
  if (*(v2 + v4) < 9u)
  {
LABEL_8:
    v10 = 0;
    return OUTLINED_FUNCTION_51(v10, v6);
  }

  v5 = __OFADD__(v4, 8);
  v7 = v4 + 8;
  if (v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = *(v2 + v7);
  if (!v8)
  {
    goto LABEL_8;
  }

  v5 = __OFADD__(v8, v3);
  v9 = v8 + v3;
  if (v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!__OFADD__(v9, *(v2 + v9)))
  {
    v11 = *(v0 + 8);

    v6 = v11;
    return OUTLINED_FUNCTION_51(v10, v6);
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t _s11WeatherData011WK2_MonthlyA10StatisticsV05startdaE0ys6UInt32VAA17FlatBufferBuilderVzFZ_0(unint64_t result)
{
  v1 = result;
  *(result + 40) = 1;
  v2 = *result;
  if (*(*result + 56) < *(*result + 80) + 24)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v3 = *(v2 + 32);
    if (v3)
    {
      MEMORY[0x2743D4FD0](v3, -1, -1);
    }

    v4 = swift_slowAlloc();
    *(v2 + 32) = v4;
    *(v2 + 40) = v4 + 24;
    *(v2 + 48) = 0;
    *(v2 + 56) = 24;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void static WK2_DayOfYearWeatherStatistics.add(dayOfYear:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  v5 = v4;
  if (!v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_20:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  if (v3[8] <= 1)
  {
    v3[8] = 2;
    v3[3] = 2;
  }

  v7 = v3[2];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v7))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_22();
  if (v10 != v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v9, v3[3]);
  }

  v3[2] = v1;
  v12 = v1 + 2;
  v13 = *(v0 + 32);
  if (v13 < (v1 + 2))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(2, v1, v3[3]);
    v13 = *(v0 + 32);
  }

  *(*(v0 + 24) + v13 - v1 - 2) = v5;
  v3[2] = v12;
  if (v1 > 0xFFFFFFFD)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v15 & 1) == 0)
  {
    v16 = *(v14 + 32);
    if (v16)
    {
      v17 = v16 + *(v14 + 80);
      *v17 = v12;
      *(v17 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v19 <= 4)
    {
      LOWORD(v19) = 4;
    }

    *(v18 + 64) = v19;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_DayOfYearWeatherStatistics.add(temperature:_:)()
{
  OUTLINED_FUNCTION_219();
  v4 = *v3;
  if (!*v3)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_58();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v0 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (HIDWORD(v8))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  *(v0 + 16) = v2;
  if (HIDWORD(v2))
  {
    goto LABEL_30;
  }

  if (v2 - v4 == -4)
  {
    OUTLINED_FUNCTION_79();
    if (!v11)
    {
LABEL_27:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v12 = OUTLINED_FUNCTION_15();
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v2, *(v0 + 24));
  }

  OUTLINED_FUNCTION_27();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_9();
    v13 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v13);
  if (!v11 & v14)
  {
LABEL_31:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_57(v15);
      *(v17 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 6)
    {
      LOWORD(v19) = 6;
    }

    *(v18 + 64) = v19;
    goto LABEL_27;
  }

  __break(1u);
}

void static WK2_DayOfYearWeatherStatistics.add(precipitation:_:)()
{

  sub_272B7596C();
}

void sub_272B7596C()
{
  OUTLINED_FUNCTION_219();
  v4 = *v3;
  if (!*v3)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_58();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v0 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (HIDWORD(v8))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  *(v0 + 16) = v2;
  if (HIDWORD(v2))
  {
    goto LABEL_30;
  }

  if (v2 - v4 == -4)
  {
    OUTLINED_FUNCTION_79();
    if (!v11)
    {
LABEL_27:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v12 = OUTLINED_FUNCTION_15();
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v2, *(v0 + 24));
  }

  OUTLINED_FUNCTION_27();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_9();
    v13 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v13);
  if (!v11 & v14)
  {
LABEL_31:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_57(v15);
      *(v17 + 4) = 8;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 8)
    {
      LOWORD(v19) = 8;
    }

    *(v18 + 64) = v19;
    goto LABEL_27;
  }

  __break(1u);
}

uint64_t static WK2_DayOfYearWeatherStatistics.endDayOfYearWeatherStatistics(_:start:)@<X0>(Swift::UInt32 at@<W1>, _DWORD *a2@<X8>)
{
  result = FlatBufferBuilder.endTable(at:)(at);
  *a2 = result;
  return result;
}

void static WK2_DayOfYearWeatherStatistics.createDayOfYearWeatherStatistics(_:dayOfYear:temperatureOffset:precipitationOffset:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v2 = static WK2_DayOfYearWeatherStatistics.startDayOfYearWeatherStatistics(_:)();
  static WK2_DayOfYearWeatherStatistics.add(dayOfYear:_:)();
  static WK2_DayOfYearWeatherStatistics.add(temperature:_:)();
  static WK2_DayOfYearWeatherStatistics.add(precipitation:_:)();
  *v1 = FlatBufferBuilder.endTable(at:)(v2);
  OUTLINED_FUNCTION_218();
}

void static WK2_DayOfYearWeatherStatistics.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    if (__src[2] >= 5)
    {
      v3 = __src[1] + 4;
      v4 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v3) & 1) != 0)
      {
        *v16 = MEMORY[0x277D84C58];
        v6 = &qword_2808A3160;
        v7 = &unk_272B87CC0;
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_76();
      v5 = *(__src[8] + 24);
      if (*(v5 + v3))
      {
        if ((v4 & (v5 + LODWORD(__src[0]) + *(v5 + v3))) == 1)
        {
          *v16 = MEMORY[0x277D84958];
          v6 = qword_2808A3220;
          v7 = &qword_272B89920;
LABEL_9:
          __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
          sub_272B87730();
          sub_272B5C86C();
          v8 = swift_allocError();
          OUTLINED_FUNCTION_7(v8, v9, v10, v11, v12, v13, v14, v15, *v16, *&v16[16], *&v16[32]);
LABEL_13:
          memcpy(v16, __src, sizeof(v16));
          sub_272B522C4(v16);
          return;
        }

        OUTLINED_FUNCTION_76();
      }
    }

    sub_272B5D6F0(6, 0x74617265706D6574, 0xEB00000000657275, 0);
    sub_272B5D71C(8, 0x7469706963657270, 0xED00006E6F697461, 0);
    if (__OFSUB__(__src[7], 1))
    {
      __break(1u);
      return;
    }

    --__src[7];
    goto LABEL_13;
  }
}

void static WK2_DailyWeatherStatistics.addVectorOf(days:_:)()
{

  static WK2_DayOfYearWeatherStatistics.add(precipitation:_:)();
}

unint64_t sub_272B75E60()
{
  result = qword_2808A3338;
  if (!qword_2808A3338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3338);
  }

  return result;
}

unint64_t sub_272B75EB8()
{
  result = qword_2808A3340;
  if (!qword_2808A3340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3340);
  }

  return result;
}

unint64_t sub_272B75F10()
{
  result = qword_2808A3348;
  if (!qword_2808A3348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3348);
  }

  return result;
}

unint64_t sub_272B75F68()
{
  result = qword_2808A3350;
  if (!qword_2808A3350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3350);
  }

  return result;
}

unint64_t sub_272B75FC0()
{
  result = qword_2808A3358;
  if (!qword_2808A3358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3358);
  }

  return result;
}

unint64_t sub_272B76018()
{
  result = qword_2808A3360[0];
  if (!qword_2808A3360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808A3360);
  }

  return result;
}

_BYTE *sub_272B76098(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          result = OUTLINED_FUNCTION_182(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_272B7616C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_272B761F4(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_182(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WK2_WeatherCondition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}