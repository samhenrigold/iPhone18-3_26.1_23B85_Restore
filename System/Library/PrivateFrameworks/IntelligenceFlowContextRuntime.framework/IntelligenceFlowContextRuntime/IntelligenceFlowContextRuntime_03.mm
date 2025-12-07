uint64_t sub_254EF2778(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_254EF278C(result, a2);
  }

  return result;
}

uint64_t sub_254EF278C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_254EF27E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75F2D0, &qword_254F2C418);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_254EF2854(uint64_t a1, uint64_t a2)
{
  v49 = sub_254F28750();
  v5 = *(v49 - 8);
  v6 = MEMORY[0x28223BE20](v49);
  v48 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v47 = &v35 - v8;
  v46 = sub_254F28CE0();
  v9 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v35 = v2;
    v56 = MEMORY[0x277D84F90];
    v13 = v5;
    sub_254ECA87C(0, v12, 0);
    v14 = v56;
    result = sub_254EF79A0(a1);
    v18 = 0;
    v19 = a1 + 56;
    v44 = v9;
    v45 = v13;
    v41 = v13 + 8;
    v42 = v13 + 16;
    v39 = a1;
    v40 = v9 + 32;
    v36 = a1 + 64;
    v37 = v12;
    v38 = a2;
    v43 = a1 + 56;
    if ((result & 0x8000000000000000) == 0)
    {
      while (result < 1 << *(a1 + 32))
      {
        if ((*(v19 + 8 * (result >> 6)) & (1 << result)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v16)
        {
          goto LABEL_27;
        }

        v51 = 1 << result;
        v52 = result >> 6;
        v55 = v17;
        v53 = result;
        v54 = v16;
        v50 = v18;
        v20 = *(a1 + 48);
        v21 = v45;
        v22 = *(v45 + 16);
        v23 = v47;
        v24 = v49;
        v22(v47, v20 + *(v45 + 72) * result, v49);
        v22(v48, v23, v24);
        sub_254EF3344(v23, a2);
        sub_254F28CF0();
        (*(v21 + 8))(v23, v24);
        v56 = v14;
        v26 = *(v14 + 16);
        v25 = *(v14 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_254ECA87C(v25 > 1, v26 + 1, 1);
          v14 = v56;
        }

        *(v14 + 16) = v26 + 1;
        result = (*(v44 + 32))(v14 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v26, v11, v46);
        v19 = v43;
        if (v55)
        {
          goto LABEL_31;
        }

        a2 = v38;
        a1 = v39;
        v27 = 1 << *(v39 + 32);
        result = v53;
        if (v53 >= v27)
        {
          goto LABEL_28;
        }

        v28 = *(v43 + 8 * v52);
        if ((v28 & v51) == 0)
        {
          goto LABEL_29;
        }

        if (*(v39 + 36) != v54)
        {
          goto LABEL_30;
        }

        v29 = v28 & (-2 << (v53 & 0x3F));
        if (v29)
        {
          v27 = __clz(__rbit64(v29)) | v53 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v30 = v52 << 6;
          v31 = v52 + 1;
          v32 = (v36 + 8 * v52);
          while (v31 < (v27 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              sub_254ED2134(v53, v54, 0);
              v27 = __clz(__rbit64(v33)) + v30;
              goto LABEL_19;
            }
          }

          sub_254ED2134(v53, v54, 0);
        }

LABEL_19:
        v18 = v50 + 1;
        if (v50 + 1 == v37)
        {

          return v14;
        }

        v17 = 0;
        v16 = *(a1 + 36);
        result = v27;
        if (v27 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_254EF2CA4(uint64_t a1, void *a2)
{
  v40 = a2;
  v38 = sub_254F28750();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_254F28CE0();
  v5 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_254EC8BC0(&qword_27F75F5E0, &unk_254F2C9C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v28 - v9;
  v11 = sub_254F287A0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_254EC5594(a1);
  v16 = 0;
  v42 = a1 & 0xC000000000000001;
  v41 = a1 & 0xFFFFFFFFFFFFFF8;
  v32 = (v12 + 16);
  v33 = (v12 + 32);
  v31 = *MEMORY[0x277D1D318];
  v29 = (v12 + 8);
  v30 = (v3 + 104);
  v17 = v15;
  v34 = v5;
  v35 = v7;
  v28[2] = v5 + 32;
  v39 = a1;
  while (v17 != v16)
  {
    if (v42)
    {
      v18 = MEMORY[0x259C2E0D0](v16, a1);
    }

    else
    {
      if (v16 >= *(v41 + 16))
      {
        goto LABEL_18;
      }

      v18 = *(a1 + 8 * v16 + 32);
    }

    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    v19 = v18;
    sub_254F28790();
    if (sub_254EB2F2C(v10, 1, v11) == 1)
    {
      sub_254EB306C(v10, &qword_27F75F5E0, &unk_254F2C9C0);
    }

    else
    {
      (*v33)(v14, v10, v11);
      v20 = v37;
      (*v32)(v37, v14, v11);
      (*v30)(v20, v31, v38);
      sub_254F28CF0();
      v21 = v40;
      v22 = *v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v21 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_254EF0BC0();
        v22 = v26;
        *v40 = v26;
      }

      v24 = *(v22 + 16);
      if (v24 >= *(v22 + 24) >> 1)
      {
        sub_254EF0BC0();
        *v40 = v27;
      }

      (*v29)(v14, v11);
      v25 = *v40;
      *(v25 + 16) = v24 + 1;
      (*(v34 + 32))(v25 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v24, v35, v36);
      a1 = v39;
    }

    ++v16;
  }
}

uint64_t sub_254EF30F0(uint64_t result, uint64_t *a2)
{
  v4 = *(result + 16);
  v5 = (result + 40);
  if (v4)
  {
    while (1)
    {
      v6 = *v5;
      v7[0] = *(v5 - 1);
      v7[1] = v6;

      sub_254EF6140(v7, a2);
      if (v2)
      {
        break;
      }

      v5 += 2;
      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

id sub_254EF3180(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_254F29420();

  v4 = [v2 initWithString_];

  return v4;
}

uint64_t sub_254EF31F4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *v0;
  sub_254EB2CE0();
  *v5 = v4;

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_254EB9648, 0, 0);
}

BOOL sub_254EF3344(uint64_t a1, uint64_t a2)
{
  v4 = sub_254F28750();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_254EBBA88(&qword_2814274F0, MEMORY[0x277D1D330], MEMORY[0x277D1D338]);
  v16 = a1;
  v8 = sub_254F293F0();
  v9 = a2 + 56;
  v17 = a2;
  v10 = ~(-1 << *(a2 + 32));
  do
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v9 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    v13 = v12 != 0;
    if (!v12)
    {
      break;
    }

    (*(v5 + 16))(v7, *(v17 + 48) + *(v5 + 72) * v11, v4);
    sub_254EBBA88(&qword_27F75F358, MEMORY[0x277D1D330], MEMORY[0x277D1D340]);
    v14 = sub_254F29410();
    (*(v5 + 8))(v7, v4);
    v8 = v11 + 1;
  }

  while ((v14 & 1) == 0);
  return v13;
}

uint64_t sub_254EF3548(unsigned __int16 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    v5 = MEMORY[0x259C2E320](*(a2 + 40), a1, 2);
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 2 * v7) != v4);
  }

  return v2;
}

char *sub_254EF35D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_254EF1164();
  v4 = *(sub_254F28CE0() - 8);
  v5 = sub_254EF75B0(&v7, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, a1);
  sub_254EF7A88(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_254EF36A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_254EF1288(*(a1 + 16), 0);
  v4 = sub_254EF7848(&v6, v3 + 4, v2, a1);
  sub_254EF7A88(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_254EF3730()
{
  v1 = sub_254F28F20();
  v0[2] = v1;
  sub_254EB2CAC(v1);
  v0[3] = v2;
  v0[4] = sub_254EB3FC4();
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_254EF3824;

  return sub_254EC10F4();
}

uint64_t sub_254EF3824(uint64_t a1)
{
  v4 = *v2;
  sub_254EB2CE0();
  *v5 = v4;
  v4[6] = v1;

  if (v1)
  {
    v6 = sub_254EF39BC;
  }

  else
  {
    v8 = v4[3];
    v7 = v4[4];
    v9 = v4[2];
    v4[7] = a1;
    (*(v8 + 8))(v7, v9);
    v6 = sub_254EF3958;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_254EF3958()
{
  sub_254EB3BD8();

  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_254EF39BC()
{
  sub_254EB3BD8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_254EF3A1C(uint64_t a1, const char *a2, uint64_t a3, int a4, uint64_t a5)
{
  v28 = a4;
  v29 = a2;
  v5 = sub_254F29180();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_254F29140();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_254F29170();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F178D0();
  sub_254F280C0();
  v16 = sub_254F29160();
  sub_254F29190();
  v25 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v9 + 8))(v11, v8);
    return (*(v13 + 8))(v15, v12);
  }

  v24 = v12;
  if ((v28 & 1) == 0)
  {
    if (v29)
    {
LABEL_9:

      sub_254F291C0();

      v19 = v26;
      v18 = v27;
      if ((*(v26 + 88))(v7, v27) == *MEMORY[0x277D85B00])
      {
        v20 = "[Error] Interval already ended";
      }

      else
      {
        (*(v19 + 8))(v7, v18);
        v20 = "";
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = sub_254F29130();
      _os_signpost_emit_with_name_impl(&dword_254EAE000, v16, v25, v22, v29, v20, v21, 2u);
      MEMORY[0x259C2EB80](v21, -1, -1);
      v12 = v24;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v29 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v29 & 0xFFFFF800) != 0xD800)
  {
    if (v29 >> 16 <= 0x10)
    {
      v29 = &v30;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_254EF3D68()
{
  sub_254EF7A90((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_254EF3DA0(void *a1, uint64_t a2, uint64_t a3)
{
  v82 = a2;
  v70 = sub_254F28750();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_254F28CE0();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254F28C50();
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x28223BE20](v7);
  v78 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_254EC8BC0(&qword_27F75EE50, &unk_254F2C4F0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v67 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v75 = &v67 - v12;
  v81 = sub_254F29290();
  v77 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v76 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_254EC8BC0(&qword_27F75F2E8, &qword_254F2C430);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v67 - v15;
  v17 = sub_254F28CA0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91[0] = MEMORY[0x277D84F90];
  v21 = sub_254F28A90();
  v22 = *MEMORY[0x277D1D468];
  v84 = *(v18 + 104);
  v84(v20, v22, v17);
  v23 = sub_254EBB8C0(v20, v21);

  v83 = *(v18 + 8);
  v83(v20, v17);
  if (v23)
  {
    v74 = a3;
    sub_254F27E30();
    v24 = sub_254F27F50();
    if (sub_254EB2F2C(v16, 1, v24) == 1)
    {
      sub_254EB306C(v16, &qword_27F75F2E8, &qword_254F2C430);
    }

    else
    {
      sub_254F27F30();
      v26 = v25;
      (*(*(v24 - 8) + 8))(v16, v24);
      if (v26)
      {
        v27 = v75;
        sub_254EFB450();

        v28 = v81;
        if (sub_254EB2F2C(v27, 1, v81) == 1)
        {
          sub_254EB306C(v27, &qword_27F75EE50, &unk_254F2C4F0);
        }

        else
        {
          v29 = v77;
          v30 = v76;
          (*(v77 + 32))(v76, v27, v28);
          v31 = v67;
          (*(v29 + 16))(v67, v30, v28);
          sub_254EB2F04(v31, 0, 1, v28);
          v32 = v78;
          sub_254F28C20();
          sub_254F28C40();
          v33 = v68;
          (*(v79 + 16))(v68, v32, v80);
          (*(v69 + 104))(v33, *MEMORY[0x277D1D2E8], v70);
          v34 = v71;
          sub_254F28CF0();
          sub_254EF0BC0();
          v36 = v35;
          v37 = *(v35 + 16);
          if (v37 >= *(v35 + 24) >> 1)
          {
            sub_254EF0BC0();
            v36 = v66;
          }

          (*(v79 + 8))(v78, v80);
          (*(v77 + 8))(v76, v81);
          *(v36 + 16) = v37 + 1;
          (*(v72 + 32))(v36 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v37, v34, v73);
          v91[0] = v36;
        }
      }
    }
  }

  v38 = sub_254F28A90();
  v84(v20, *MEMORY[0x277D1D498], v17);
  v39 = sub_254EBB8C0(v20, v38);

  v83(v20, v17);
  if (!v39)
  {
    return v91[0];
  }

  v40 = [a1 activityType];
  v41 = sub_254F29450();
  v43 = v42;

  if (v41 == 0xD00000000000001ELL && 0x8000000254F2E200 == v43)
  {
  }

  else
  {
    v45 = sub_254F29B10();

    if ((v45 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v46 = sub_254F07A04(a1);
  if (!v46)
  {
    v89 = 0u;
    v90 = 0u;
    goto LABEL_23;
  }

  v47 = v46;
  v85 = 0xD000000000000012;
  v86 = 0x8000000254F2E270;
  sub_254F298E0();
  sub_254F0B9C0(&v87, v47, &v89);

  sub_254EF79E0(&v87);
  if (!*(&v90 + 1))
  {
LABEL_23:
    sub_254EB306C(&v89, &qword_27F75EE68, &qword_254F2B4C0);
    goto LABEL_24;
  }

  if (swift_dynamicCast())
  {
    v48 = v87;
    v49 = v88;
    sub_254EC8BC0(&qword_27F75EEF0, &qword_254F2AF30);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_254F2AE00;
    *(v50 + 32) = v48;
    *(v50 + 40) = v49;
    v51 = sub_254F291F0();

    sub_254EF2CA4(v51, v91);
LABEL_41:

    return v91[0];
  }

LABEL_24:
  v52 = [a1 activityType];
  v53 = sub_254F29450();
  v55 = v54;

  if (v53 == 0xD000000000000012 && 0x8000000254F2E220 == v55)
  {
  }

  else
  {
    v57 = sub_254F29B10();

    if ((v57 & 1) == 0)
    {
      return v91[0];
    }
  }

  v58 = sub_254F07A04(a1);
  if (!v58)
  {
    v89 = 0u;
    v90 = 0u;
    goto LABEL_38;
  }

  v59 = v58;
  v85 = 0xD000000000000021;
  v86 = 0x8000000254F2E240;
  sub_254F298E0();
  sub_254F0B9C0(&v87, v59, &v89);

  sub_254EF79E0(&v87);
  if (!*(&v90 + 1))
  {
LABEL_38:
    sub_254EB306C(&v89, &qword_27F75EE68, &qword_254F2B4C0);
    return v91[0];
  }

  if (swift_dynamicCast())
  {
    sub_254EF5E20(v87, v88);
    v61 = v60;

    if (v61)
    {
      sub_254F0BA24(0x6E65697069636572, 0xE900000000000074, v61);
      if (v62)
      {
        v63 = v62;

LABEL_40:
        sub_254EF30F0(v63, v91);
        goto LABEL_41;
      }

      sub_254F0BA24(0x6E65697069636572, 0xEA00000000007374, v61);
      v63 = v64;

      if (v63)
      {
        goto LABEL_40;
      }
    }
  }

  return v91[0];
}

uint64_t sub_254EF4848(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v59 = a1;
  v7 = sub_254EC8BC0(&qword_27F75F310, &unk_254F2C4D0);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = v47 - v8;
  v9 = sub_254F28EE0();
  MEMORY[0x28223BE20](v9 - 8);
  v50 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_254F289F0();
  v52 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v58 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_254F27E90();
  v12 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_254F27E10();
  v61 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_254F27F10();
  MEMORY[0x28223BE20](v18);
  v21 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v22 = v19;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = sub_254F27CC0();
  v25 = *(v24 + 16);
  if (!v25)
  {

    return MEMORY[0x277D84F90];
  }

  v60 = v15;
  v47[0] = v24;
  v26 = v24 + v23;
  v27 = v22 + 16;
  v28 = *(v22 + 16);
  v66 = *(v22 + 72);
  v63 = (v12 + 88);
  v62 = *MEMORY[0x277D74650];
  v29 = (v22 + 8);
  v55 = (v12 + 96);
  v56 = (v12 + 8);
  v54 = (v61 + 32);
  v53 = (v61 + 8);
  v48 = *MEMORY[0x277D1D350];
  v47[1] = v52 + 32;
  v61 = MEMORY[0x277D84F90];
  v30 = v59;
  v31 = v17;
  v57 = v27;
  v64 = v28;
  do
  {
    v28(v21, v26, v18);
    if (MEMORY[0x259C2C530](v21, v30))
    {
      (*v29)(v21, v18);
    }

    else
    {
      sub_254F27EA0();
      v32 = v65;
      v33 = (*v63)(v14, v65);
      if (v33 == v62)
      {
        (*v55)(v14, v32);
        v34 = v31;
        v35 = v31;
        v36 = v60;
        (*v54)(v34, v14, v60);
        sub_254F27E00();
        v37 = sub_254F294D0();

        if (v37 > 79)
        {
          (*v53)(v35, v36);
          (*v29)(v21, v18);
          v30 = v59;
          v31 = v35;
        }

        else
        {
          sub_254EBB528(v21, MEMORY[0x277D84F90]);
          sub_254F27E00();
          v38 = v51;
          sub_254F287B0();
          v39 = sub_254F287E0();
          (*(*(v39 - 8) + 104))(v38, v48, v39);
          sub_254EB2F04(v38, 0, 1, v39);
          sub_254F28EB0();
          sub_254F289C0();
          v40 = v61;
          v31 = v35;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_254EF0A30();
            v40 = v44;
          }

          v42 = *(v40 + 16);
          v41 = *(v40 + 24);
          v61 = v40;
          if (v42 >= v41 >> 1)
          {
            sub_254EF0A30();
            v61 = v45;
          }

          (*v53)(v35, v60);
          (*v29)(v21, v18);
          v43 = v61;
          *(v61 + 16) = v42 + 1;
          (*(v52 + 32))(v43 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v42, v58, v49);
          v30 = v59;
        }
      }

      else
      {
        (*v29)(v21, v18);
        (*v56)(v14, v32);
      }

      v28 = v64;
    }

    v26 += v66;
    --v25;
  }

  while (v25);

  return v61;
}

uint64_t sub_254EF4FB4()
{
  sub_254F27F40();
  v2 = sub_254F29AF0();
  MEMORY[0x259C2DC50](45, 0xE100000000000000);
  sub_254F27F20();
  v0 = sub_254F29AF0();
  MEMORY[0x259C2DC50](v0);

  return v2;
}

void sub_254EF5108(uint64_t a1, uint64_t *a2)
{
  sub_254EBD87C();
  sub_254F27850();
  __break(1u);
}

void sub_254EF5130()
{
  sub_254EB8078();
  v50 = v3;
  v51 = v4;
  v53 = v5;
  v59 = v6;
  v57 = v7;
  v60 = sub_254F29A20();
  sub_254EB2CBC();
  v58 = v8;
  MEMORY[0x28223BE20](v9);
  sub_254EB6ACC();
  v56 = v10;
  sub_254EB7FC4();
  sub_254F29A40();
  sub_254EB2CBC();
  v54 = v12;
  v55 = v11;
  MEMORY[0x28223BE20](v11);
  sub_254EB6ACC();
  v52 = v13;
  sub_254EB7FC4();
  v14 = sub_254F29140();
  sub_254EB2CBC();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_254EB2E04();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v22 = sub_254EF7B70();
  sub_254EB2CBC();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_254EB2E04();
  sub_254EB3AF8();
  v27 = MEMORY[0x28223BE20](v26);
  sub_254EF7B50(v27);
  sub_254F280C0();
  sub_254F29160();
  sub_254F29120();
  v48 = *(v24 + 8);
  v49 = v22;
  v48(v0, v22);
  v28 = sub_254F29160();
  v29 = sub_254F297A0();
  if (sub_254F29800())
  {
    sub_254EB7D24();
    v47 = v14;
    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = sub_254F29130();
    _os_signpost_emit_with_name_impl(&dword_254EAE000, v28, v29, v31, "UIContext.TextEntityDetector", "", v30, 2u);
    v14 = v47;
    sub_254EB695C();
    MEMORY[0x259C2EB80]();
  }

  (*(v16 + 16))(v20, v1, v14);
  sub_254F291B0();
  sub_254EC0118();
  swift_allocObject();
  v32 = sub_254F291A0();
  (*(v16 + 8))(v1, v14);
  v48(v2, v49);
  v33 = v52;
  sub_254F29A30();
  v34 = v56;
  sub_254F29A00();
  v35 = v57;
  v36 = v59;
  sub_254F08DC0(v57, v59, v53);
  MEMORY[0x28223BE20](v37);
  v38 = v50;
  *(&v46 - 6) = v53;
  *(&v46 - 5) = v38;
  v45 = v36;
  sub_254F297E0();
  v44 = &unk_254F2C5C8;
  v42 = &type metadata for NLTaggerBasedEntityDetector;
  v43 = &unk_27F75F378;
  sub_254EB80D0();
  sub_254EF65D8(v39, v40, v41, v32, v35, v36, v34, v33);

  (*(v58 + 8))(v34, v60);
  (*(v54 + 8))(v33, v55);
  sub_254EB4A74();
}

void sub_254EF55AC()
{
  sub_254EB8078();
  v41 = v3;
  v43 = v4;
  v44 = v5;
  sub_254F29A20();
  sub_254EB2CBC();
  v45 = v7;
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  sub_254EB6ACC();
  v42 = v8;
  sub_254EB7FC4();
  sub_254F29A40();
  sub_254EB2CBC();
  MEMORY[0x28223BE20](v9);
  sub_254EB6ACC();
  v40 = v10;
  sub_254EB7FC4();
  v39 = sub_254F29140();
  sub_254EB2CBC();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_254EB2E04();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v18 = sub_254EF7B70();
  sub_254EB2CBC();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_254EB2E04();
  sub_254EB3AF8();
  v23 = MEMORY[0x28223BE20](v22);
  sub_254EF7B50(v23);
  sub_254F280C0();
  sub_254F29160();
  sub_254F29120();
  v38 = *(v20 + 8);
  v38(v0, v18);
  v24 = sub_254F29160();
  v25 = sub_254F297A0();
  if (sub_254F29800())
  {
    sub_254EB7D24();
    v37 = v16;
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = sub_254F29130();
    _os_signpost_emit_with_name_impl(&dword_254EAE000, v24, v25, v27, "UIContext.TextEntityDetector", "", v26, 2u);
    v16 = v37;
    sub_254EB695C();
    MEMORY[0x259C2EB80]();
  }

  (*(v12 + 16))(v16, v1, v39);
  sub_254F291B0();
  sub_254EC0118();
  swift_allocObject();
  v28 = sub_254F291A0();
  (*(v12 + 8))(v1, v39);
  v38(v2, v18);
  sub_254F29A30();
  sub_254F29A00();
  v29 = sub_254EB82D8();
  sub_254F08DC0(v29, v30, v41);
  if (qword_27F75EB88 != -1)
  {
    v31 = swift_once();
  }

  MEMORY[0x28223BE20](v31);
  sub_254F297E0();
  sub_254EB80D0();
  sub_254EF65D8(v32, v33, v34, v28, v43, v44, v42, v40);

  (*(v45 + 8))(v42, v46);
  v35 = sub_254EF7B30();
  v36(v35);
  sub_254EB4A74();
}

void sub_254EF5A38()
{
  sub_254EB8078();
  v34 = v1;
  v35 = v2;
  v37 = v3;
  v38 = v4;
  v5 = sub_254F29A20();
  sub_254EB2CBC();
  v42 = v6;
  MEMORY[0x28223BE20](v7);
  sub_254EB6ACC();
  v39 = v8;
  sub_254EB7FC4();
  sub_254F29A40();
  sub_254EB2CBC();
  v40 = v10;
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  sub_254EB6ACC();
  v36 = v11;
  sub_254EB7FC4();
  v33 = sub_254F29140();
  sub_254EB2CBC();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_254EB3D38();
  v32 = v15;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v16);
  sub_254EB63F4();
  sub_254F29170();
  sub_254EB2CBC();
  MEMORY[0x28223BE20](v17);
  sub_254EB2E04();
  sub_254EB3AF8();
  MEMORY[0x28223BE20](v18);
  sub_254F280C0();
  sub_254F280C0();
  sub_254F29160();
  sub_254F29120();
  v19 = sub_254EC1AF8();
  v31 = v20;
  v20(v19);
  v21 = sub_254F29160();
  v22 = sub_254F297A0();
  if (sub_254F29800())
  {
    sub_254EB7D24();
    v30 = v5;
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_254F29130();
    _os_signpost_emit_with_name_impl(&dword_254EAE000, v21, v22, v24, "UIContext.TextEntityDetector", "", v23, 2u);
    v5 = v30;
    sub_254EB695C();
    MEMORY[0x259C2EB80]();
  }

  (*(v13 + 16))(v32, v0, v33);
  sub_254F291B0();
  sub_254EC0118();
  swift_allocObject();
  v25 = sub_254F291A0();
  (*(v13 + 8))(v0, v33);
  v26 = sub_254EB82D8();
  v31(v26);
  sub_254F29A30();
  sub_254F29A00();
  SiriEntityMatcherEntityDetector.detectEntities(text:appBundleId:)(v37, v38, v34, v35);
  sub_254EB80D0();
  sub_254EF6BAC(v27, v28, v29, v25, v37, v38, v39, v36);

  (*(v42 + 8))(v39, v5);
  (*(v40 + 8))(v36, v41);
  sub_254EB4A74();
}

void sub_254EF5E20(uint64_t a1, uint64_t a2)
{
  sub_254EF7A34();
  v2 = sub_254F29830();
  sub_254EF6590(v2);
  v4 = v3;

  if (v4)
  {
    v5 = sub_254F29830();

    v6 = 0;
    v24 = *(v5 + 16);
    v7 = MEMORY[0x277D84F98];
LABEL_3:
    if (v6 == v24)
    {

      return;
    }

    if (v6 >= *(v5 + 16))
    {
      goto LABEL_24;
    }

    v8 = sub_254F29830();
    if (v8[2])
    {
      v10 = v8[4];
      v9 = v8[5];
      sub_254EF6590(v8);
      v12 = v11;

      if (v12)
      {
        v25 = v10;
        v26 = v6 + 1;
        v27 = v7;
        v13 = sub_254F29830();

        v14 = 0;
        v15 = *(v13 + 16);
        v16 = MEMORY[0x277D84F90];
LABEL_8:
        v17 = (v13 + 40 + 16 * v14);
        while (1)
        {
          if (v15 == v14)
          {

            swift_isUniquelyReferenced_nonNull_native();
            sub_254F06D58(v16, v25, v9);

            v7 = v27;
            v6 = v26;
            goto LABEL_3;
          }

          if (v14 >= *(v13 + 16))
          {
            break;
          }

          ++v14;
          v18 = *(v17 - 1);
          v19 = *v17;
          v17 += 2;
          v20 = HIBYTE(v19) & 0xF;
          if ((v19 & 0x2000000000000000) == 0)
          {
            v20 = v18 & 0xFFFFFFFFFFFFLL;
          }

          if (v20)
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_254ECA804(0, *(v16 + 16) + 1, 1);
            }

            v22 = *(v16 + 16);
            v21 = *(v16 + 24);
            if (v22 >= v21 >> 1)
            {
              sub_254ECA804(v21 > 1, v22 + 1, 1);
            }

            *(v16 + 16) = v22 + 1;
            v23 = v16 + 16 * v22;
            *(v23 + 32) = v18;
            *(v23 + 40) = v19;
            goto LABEL_8;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }
    }
  }
}

uint64_t sub_254EF6140(uint64_t *a1, uint64_t *a2)
{
  v32 = a2;
  v3 = sub_254F28750();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_254F28CE0();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_254F287A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_254EC8BC0(&qword_27F75F5E0, &unk_254F2C9C0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v27 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  if ((sub_254F19B20(*a1, a1[1]) & 1) != 0 || String.isValidPhoneNumber()())
  {

    sub_254F28770();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  sub_254EB2F04(v18, v21, 1, v8);
  sub_254EBEE30(v18, v20, &qword_27F75F5E0, &unk_254F2C9C0);
  sub_254EBEE7C(v20, v15, &qword_27F75F5E0, &unk_254F2C9C0);
  if (sub_254EB2F2C(v15, 1, v8) == 1)
  {
    sub_254EB306C(v20, &qword_27F75F5E0, &unk_254F2C9C0);
    return sub_254EB306C(v15, &qword_27F75F5E0, &unk_254F2C9C0);
  }

  else
  {
    (*(v9 + 32))(v11, v15, v8);
    (*(v9 + 16))(v5, v11, v8);
    (*(v27 + 104))(v5, *MEMORY[0x277D1D318], v28);
    v23 = v29;
    sub_254F28CF0();
    v24 = v32;
    sub_254F16C30();
    v25 = *(*v24 + 16);
    sub_254F16CD8(v25);
    (*(v9 + 8))(v11, v8);
    sub_254EB306C(v20, &qword_27F75F5E0, &unk_254F2C9C0);
    v26 = *v24;
    *(v26 + 16) = v25 + 1;
    return (*(v30 + 32))(v26 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25, v23, v31);
  }
}

uint64_t sub_254EF6590(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

uint64_t sub_254EF65D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_254EB6858(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_254EB2CBC();
  MEMORY[0x28223BE20](v9);
  sub_254EB6ACC();
  sub_254EB7FC4();
  sub_254F29180();
  sub_254EB2CBC();
  MEMORY[0x28223BE20](v10);
  sub_254EB3AB8();
  v13 = v12 - v11;
  v14 = sub_254F29140();
  sub_254EB2CBC();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_254EB3AB8();
  v20 = v19 - v18;
  v21 = sub_254F29170();
  sub_254EB2CBC();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  sub_254EB3AB8();
  v27 = v26 - v25;
  sub_254F280C0();
  v28 = sub_254F29160();
  sub_254F29190();
  v56 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v55 = v14;
  v54 = v23;
  if ((v57 & 1) == 0)
  {
    if (!v62)
    {
      __break(1u);
LABEL_5:

      (*(v16 + 8))(v20, v14);
      v31 = *(v23 + 8);
      v30 = (v23 + 8);
      v31(v27, v21);
      sub_254EC0D54();
LABEL_14:
      type metadata accessor for Analytics();
      sub_254EC8BC0(&qword_27F75EFA8, &qword_254F2BA60);
      inited = swift_initStackObject();
      v45 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_254EBED90(v45, "entityDetectionType");
      sub_254EB48D8(0, &qword_281426030, 0x277CCACA8);
      v64 = v20;
      sub_254EC8BC0(v28, v30);
      v46 = sub_254F29480();
      v48 = sub_254EF3180(v46, v47);
      sub_254EC0078(v48);
      sub_254F29A10();
      v49 = sub_254EB4B40();
      v50(v49);
      sub_254EC1AF8();
      sub_254F29C10();
      v51 = sub_254EC4378();
      LODWORD(v52) = v8;
      inited[6].n128_u64[0] = [v51 initWithFloat_];
      sub_254EB48D8(0, &qword_281426038, 0x277D82BB8);
      v53 = sub_254F293D0();
      sub_254EB5194(v53);
    }

LABEL_10:

    sub_254F291C0();

    v32 = sub_254EB996C();
    v34 = v28;
    if (v33(v32) == *MEMORY[0x277D85B00])
    {
      v58 = "[Error] Interval already ended";
    }

    else
    {
      (*(v28 + 8))(v13, v14);
      v58 = "EntityDetector=%{signpost.telemetry:string1,public}s %s";
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    sub_254EB5B2C(v36);
    sub_254EC8BC0(v60, v61);
    v37 = sub_254F29480();
    sub_254EF7BD0(v37, v38);
    sub_254EF7BE8();
    *(v35 + 4) = v13;
    *(v35 + 12) = 2080;
    sub_254F280B0();
    v39 = sub_254F29950();
    sub_254EF7BD0(v39, v40);
    sub_254EF7BE8();
    *(v35 + 14) = v13;
    v41 = sub_254F29130();
    _os_signpost_emit_with_name_impl(&dword_254EAE000, v28, v56, v41, v62, v58, v35, 0x16u);
    swift_arrayDestroy();
    v28 = v60;
    sub_254EB695C();
    MEMORY[0x259C2EB80]();
    sub_254EB695C();
    MEMORY[0x259C2EB80]();

    v30 = v61;
    v42 = sub_254EF7B30();
    v20 = v59;
    v43(v42, v55);
    (*(v54 + 8))(v27, v21);
    goto LABEL_14;
  }

  if (v62 >> 32)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v62 & 0xFFFFF800) != 0xD800)
  {
    if (v62 >> 16 <= 0x10)
    {
      v62 = &v63;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_254EF6BAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_254EB6858(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_254EB2CBC();
  MEMORY[0x28223BE20](v9);
  sub_254EB6ACC();
  sub_254EB7FC4();
  sub_254F29180();
  sub_254EB2CBC();
  MEMORY[0x28223BE20](v10);
  sub_254EB3AB8();
  v13 = v12 - v11;
  v14 = sub_254F29140();
  sub_254EB2CBC();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_254EB3AB8();
  v20 = (v19 - v18);
  v21 = sub_254F29170();
  sub_254EB2CBC();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  sub_254EB3AB8();
  v27 = v26 - v25;
  sub_254F280C0();
  v28 = sub_254F29160();
  sub_254F29190();
  v57 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {

    (*(v16 + 8))(v20, v14);
    v33 = *(v23 + 8);
    v32 = (v23 + 8);
    v33(v27, v21);
    sub_254EC0D54();
LABEL_14:
    type metadata accessor for Analytics();
    sub_254EC8BC0(&qword_27F75EFA8, &qword_254F2BA60);
    inited = swift_initStackObject();
    v44 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    sub_254EBED90(v44, "entityDetectionType");
    sub_254EB48D8(0, &qword_281426030, 0x277CCACA8);
    v65 = (v28)(0);
    sub_254EC8BC0(v20, v32);
    v45 = sub_254F29480();
    v47 = sub_254EF3180(v45, v46);
    sub_254EC0078(v47);
    sub_254F29A10();
    v48 = sub_254EB4B40();
    v49(v48);
    sub_254EC1AF8();
    sub_254F29C10();
    v50 = sub_254EC4378();
    LODWORD(v51) = v8;
    inited[6].n128_u64[0] = [v50 initWithFloat_];
    sub_254EB48D8(0, &qword_281426038, 0x277D82BB8);
    v52 = sub_254F293D0();
    sub_254EB5194(v52);
  }

  v54 = v21;
  v55 = v14;
  v53 = v28;
  if ((v58 & 1) == 0)
  {
    if (v63)
    {
      v30 = v16;
      v31 = v23;
LABEL_10:

      sub_254F291C0();

      v34 = sub_254EB996C();
      v59 = v20;
      if (v35(v34) == *MEMORY[0x277D85B00])
      {
        v56 = "[Error] Interval already ended";
      }

      else
      {
        (v28[1].isa)(v13, v16);
        v56 = "EntityDetector=%{signpost.telemetry:string1,public}s %s";
      }

      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      sub_254EB5B2C(v37);
      v28 = v60;
      (v60)(0);
      v32 = v62;
      sub_254EC8BC0(v61, v62);
      v38 = sub_254F29480();
      sub_254EF7BD0(v38, v39);
      sub_254EF7BE8();
      *(v36 + 4) = v13;
      *(v36 + 12) = 2080;
      sub_254F280B0();
      v40 = sub_254F29950();
      sub_254EF7BD0(v40, v41);
      sub_254EF7BE8();
      *(v36 + 14) = v13;
      v42 = sub_254F29130();
      _os_signpost_emit_with_name_impl(&dword_254EAE000, v53, v57, v42, v63, v56, v36, 0x16u);
      swift_arrayDestroy();
      v20 = v61;
      sub_254EB695C();
      MEMORY[0x259C2EB80]();
      sub_254EB695C();
      MEMORY[0x259C2EB80]();

      (*(v30 + 8))(v59, v55);
      (*(v31 + 8))(v27, v54);
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v63 >> 32)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v63 & 0xFFFFF800) != 0xD800)
  {
    if (v63 >> 16 <= 0x10)
    {
      v30 = v16;
      v31 = v23;
      v63 = &v64;
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_254EF71A4()
{
  sub_254EB8078();
  v1 = v0;
  v3 = v2;
  v4 = sub_254F286E0();
  sub_254EB2CBC();
  v24 = v5;
  MEMORY[0x28223BE20](v6);
  sub_254EB3AB8();
  v9 = v8 - v7;
  v10 = sub_254EC8BC0(&qword_27F75EDF8, &unk_254F2B560);
  sub_254EB2D90(v10);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = sub_254EC8BC0(&qword_27F75F388, &qword_254F2C5E0);
  sub_254EB2D90(v14);
  sub_254EB6BCC();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v23 - v17;
  v19 = *(v16 + 56);
  sub_254EBEE7C(v3, &v23 - v17, &qword_27F75EDF8, &unk_254F2B560);
  sub_254EBEE7C(v1, &v18[v19], &qword_27F75EDF8, &unk_254F2B560);
  sub_254EB6AE0(v18);
  if (!v20)
  {
    sub_254EBEE7C(v18, v13, &qword_27F75EDF8, &unk_254F2B560);
    sub_254EB6AE0(&v18[v19]);
    if (!v20)
    {
      v21 = v24;
      (*(v24 + 32))(v9, &v18[v19], v4);
      sub_254EBBA88(&qword_2814274F8, MEMORY[0x277D85578], MEMORY[0x277D85590]);
      sub_254EB82D8();
      sub_254F29410();
      v22 = *(v21 + 8);
      v22(v9, v4);
      v22(v13, v4);
      sub_254EB306C(v18, &qword_27F75EDF8, &unk_254F2B560);
      goto LABEL_10;
    }

    (*(v24 + 8))(v13, v4);
LABEL_9:
    sub_254EB306C(v18, &qword_27F75F388, &qword_254F2C5E0);
    goto LABEL_10;
  }

  sub_254EB6AE0(&v18[v19]);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_254EB306C(v18, &qword_27F75EDF8, &unk_254F2B560);
LABEL_10:
  sub_254EB4A74();
}

BOOL sub_254EF7458(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = sub_254EC8BC0(&qword_27F75EDF8, &unk_254F2B560);
    sub_254EB2CAC(v9);
    v12 = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v12 & 1) == 0);
  return v7 != v8;
}

uint64_t sub_254EF7540(void *a1)
{
  v2 = [a1 resourceSpecifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_254F29450();

  return v3;
}

unint64_t sub_254EF75B0(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_254F28CE0();
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v32 - v12;
  v14 = a4 + 56;
  v13 = *(a4 + 56);
  v38 = -1 << *(a4 + 32);
  if (-v38 < 64)
  {
    v15 = ~(-1 << -v38);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  if (!a2)
  {
    v19 = 0;
    result = 0;
LABEL_22:
    v31 = ~v38;
    *a1 = a4;
    a1[1] = v14;
    a1[2] = v31;
    a1[3] = v19;
    a1[4] = v16;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v19 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = a1;
    v34 = a4 + 56;
    v18 = 0;
    v19 = 0;
    v20 = (63 - v38) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    v37 = result;
    while (v18 < result)
    {
      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }

      if (!v16)
      {
        v14 = v34;
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v20)
          {
            v16 = 0;
            result = v18;
            a1 = v33;
            goto LABEL_22;
          }

          v16 = *(v34 + 8 * v21);
          ++v19;
          if (v16)
          {
            v43 = v18 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v43 = v18 + 1;
      v21 = v19;
LABEL_17:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = a4;
      v24 = *(a4 + 48);
      v26 = v41;
      v25 = v42;
      v27 = *(v42 + 72);
      v28 = v40;
      (*(v42 + 16))(v40, v24 + v27 * (v22 | (v21 << 6)), v41);
      v29 = *(v25 + 32);
      v30 = v39;
      v29(v39, v28, v26);
      v29(a2, v30, v26);
      result = v37;
      v18 = v43;
      if (v43 == v37)
      {
        v19 = v21;
        a1 = v33;
        v14 = v34;
        a4 = v23;
        goto LABEL_22;
      }

      a2 += v27;
      v19 = v21;
      a4 = v23;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_254EF7848(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(a4 + 48) + ((v15 << 9) | (8 * v16)));
      *v11 = v17;
      if (v14 == v10)
      {
        v18 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      result = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_254EF7A34()
{
  result = qword_27F75F320;
  if (!qword_27F75F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75F320);
  }

  return result;
}

uint64_t sub_254EF7A90(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return sub_254EB5C0C(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_254EF7B50(uint64_t a1)
{

  return sub_254F280C0();
}

uint64_t sub_254EF7B70()
{

  return sub_254F29170();
}

uint64_t sub_254EF7B90()
{

  return sub_254F29870();
}

uint64_t sub_254EF7BB0()
{

  return sub_254F28CF0();
}

unint64_t sub_254EF7BD0(uint64_t a1, unint64_t a2)
{

  return sub_254EC2D74(a1, a2, (v2 - 216));
}

uint64_t sub_254EF7BE8()
{
}

uint64_t sub_254EF7C00(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = sub_254EC8BC0(&qword_27F75F390, &qword_254F2C5F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_254F28EE0();
  v10 = MEMORY[0x28223BE20](v9);
  v31 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v29 = v13;
  v30 = &v25 - v12;
  v14 = 0;
  v15 = *(a3 + 16);
  v32 = (v13 + 32);
  v33 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v15 == v14)
    {
      return v33;
    }

    v16 = *(sub_254F27C80() - 8);
    a1(a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14);
    if (v3)
    {
      break;
    }

    if (sub_254EB2F2C(v8, 1, v9) == 1)
    {
      sub_254EB300C(v8, &qword_27F75F390, &qword_254F2C5F0);
      ++v14;
    }

    else
    {
      v17 = *v32;
      (*v32)(v30, v8, v9);
      v28 = v17;
      v17(v31, v30, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_254EF05A0();
        v33 = v21;
      }

      v18 = *(v33 + 16);
      v19 = v18 + 1;
      if (v18 >= *(v33 + 24) >> 1)
      {
        v26 = *(v33 + 16);
        v27 = v18 + 1;
        sub_254EF05A0();
        v18 = v26;
        v19 = v27;
        v33 = v22;
      }

      ++v14;
      v20 = v33;
      *(v33 + 16) = v19;
      v28((v20 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v18), v31, v9);
    }
  }

  v23 = v33;

  return v23;
}

uint64_t sub_254EF7F20(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v8 = sub_254EC8BC0(&qword_27F75F3A0, &qword_254F2C5F8);
  MEMORY[0x28223BE20](v8 - 8);
  sub_254EB40B0();
  sub_254F28260();
  sub_254EB6C30();
  MEMORY[0x28223BE20](v9);
  sub_254EB3D38();
  v33 = v10;
  MEMORY[0x28223BE20](v11);
  v31 = v13;
  v32 = &v27 - v12;
  v14 = 0;
  v15 = *(a3 + 16);
  v34 = (v13 + 32);
  v35 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v15 == v14)
    {
      return v35;
    }

    v16 = sub_254F28120();
    sub_254EB2CAC(v16);
    a1(a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v18 + 72) * v14);
    if (v3)
    {
      break;
    }

    if (sub_254EB2F2C(v4, 1, v5) == 1)
    {
      sub_254EB300C(v4, &qword_27F75F3A0, &qword_254F2C5F8);
      ++v14;
    }

    else
    {
      v19 = *v34;
      (*v34)(v32, v4, v5);
      v30 = v19;
      v19(v33, v32, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_254EF0968();
        v35 = v23;
      }

      v20 = *(v35 + 16);
      v21 = v20 + 1;
      if (v20 >= *(v35 + 24) >> 1)
      {
        v28 = *(v35 + 16);
        v29 = v20 + 1;
        sub_254EF0968();
        v20 = v28;
        v21 = v29;
        v35 = v24;
      }

      ++v14;
      v22 = v35;
      *(v35 + 16) = v21;
      v30((v22 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v20), v33, v5);
    }
  }

  v25 = v35;

  return v25;
}

id sub_254EF8210(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v8 = sub_254EC8BC0(&qword_27F75F3A8, &qword_254F2C600);
  MEMORY[0x28223BE20](v8 - 8);
  sub_254EB40B0();
  sub_254F28750();
  sub_254EB6C30();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_254EB3D38();
  v30 = v12;
  MEMORY[0x28223BE20](v13);
  v25 = &v24 - v14;
  result = sub_254EC5594(a3);
  v16 = 0;
  v32 = a3 & 0xC000000000000001;
  v33 = result;
  v31 = a3 & 0xFFFFFFFFFFFFFF8;
  v26 = v10;
  v29 = (v10 + 32);
  v17 = MEMORY[0x277D84F90];
  v27 = a1;
  v28 = a3;
  while (1)
  {
    if (v33 == v16)
    {
      return v17;
    }

    if (v32)
    {
      result = MEMORY[0x259C2E0D0](v16, a3);
    }

    else
    {
      if (v16 >= *(v31 + 16))
      {
        goto LABEL_20;
      }

      result = *(a3 + 8 * v16 + 32);
    }

    v18 = result;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    v34 = result;
    a1(&v34);
    if (v3)
    {

      return v17;
    }

    if (sub_254EB2F2C(v4, 1, v5) == 1)
    {
      result = sub_254EB300C(v4, &qword_27F75F3A8, &qword_254F2C600);
    }

    else
    {
      v19 = *v29;
      v20 = v25;
      (*v29)(v25, v4, v5);
      v19(v30, v20, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_254EF0C80();
        v17 = v22;
      }

      v21 = *(v17 + 16);
      if (v21 >= *(v17 + 24) >> 1)
      {
        sub_254EF0C80();
        v17 = v23;
      }

      *(v17 + 16) = v21 + 1;
      result = (v19)(v17 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21, v30, v5);
      a1 = v27;
      a3 = v28;
    }

    ++v16;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_254EF84F4(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_254F27F10();
  v1[11] = v2;
  sub_254EB2CAC(v2);
  v1[12] = v3;
  v1[13] = sub_254EB3FC4();
  v4 = sub_254F27F50();
  v1[14] = v4;
  sub_254EB2CAC(v4);
  v1[15] = v5;
  v1[16] = sub_254EB3C44();
  v1[17] = swift_task_alloc();
  v6 = sub_254F290E0();
  v1[18] = v6;
  sub_254EB2CAC(v6);
  v1[19] = v7;
  v1[20] = sub_254EB3C44();
  v1[21] = swift_task_alloc();
  v8 = sub_254F29100();
  v1[22] = v8;
  sub_254EB2CAC(v8);
  v1[23] = v9;
  v1[24] = sub_254EB3FC4();
  v10 = sub_254F28F20();
  v1[25] = v10;
  sub_254EB2CAC(v10);
  v1[26] = v11;
  v1[27] = sub_254EB3FC4();
  v12 = sub_254F290B0();
  v1[28] = v12;
  sub_254EB2CAC(v12);
  v1[29] = v13;
  v1[30] = sub_254EB3FC4();
  v14 = sub_254F29140();
  v1[31] = v14;
  sub_254EB2CAC(v14);
  v1[32] = v15;
  v1[33] = sub_254EB3C44();
  v1[34] = swift_task_alloc();
  v16 = sub_254F29170();
  v1[35] = v16;
  sub_254EB2CAC(v16);
  v1[36] = v17;
  v1[37] = sub_254EB3C44();
  v1[38] = swift_task_alloc();
  v18 = sub_254F291E0();
  v1[39] = v18;
  sub_254EB2CAC(v18);
  v1[40] = v19;
  v1[41] = sub_254EB3C44();
  v1[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254EF8840, 0, 0);
}

uint64_t sub_254EF8840(uint64_t a1)
{
  v32 = v1;
  sub_254F284E0();
  v2 = sub_254F291D0();
  v3 = sub_254F296F0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[42];
  v6 = v1[39];
  v7 = v1[40];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_254EC2D74(0xD00000000000001CLL, 0x8000000254F2E350, &v31);
    _os_log_impl(&dword_254EAE000, v2, v3, "%s fetching UI elements...", v8, 0xCu);
    sub_254EB2BBC(v9);
    sub_254EB3C04();
    sub_254EB3C04();
  }

  (*(v7 + 8))(v5, v6);
  v10 = v1[37];
  v11 = v1[35];
  v12 = v1[36];
  sub_254F280C0();
  sub_254F280C0();
  sub_254F29160();
  sub_254F29120();
  v30 = *(v12 + 8);
  v30(v10, v11);
  v13 = sub_254F29160();
  v14 = sub_254F297A0();
  if (sub_254F29800())
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_254F29130();
    _os_signpost_emit_with_name_impl(&dword_254EAE000, v13, v14, v16, "UIContext.retrieveUIElements", "", v15, 2u);
    sub_254EB3C04();
  }

  v18 = v1[34];
  v17 = v1[35];
  v19 = v1[32];
  v20 = v1[33];
  v21 = v1[31];
  v28 = v1[38];
  v29 = v1[24];
  v22 = v1[10];

  (*(v19 + 16))(v20, v18, v21);
  sub_254F291B0();
  swift_allocObject();
  v1[43] = sub_254F291A0();
  (*(v19 + 8))(v18, v21);
  v30(v28, v17);
  sub_254F290A0();
  sub_254EC3B58(v22);
  sub_254F29110();
  sub_254EC4434(v29);
  v23 = swift_task_alloc();
  v1[44] = v23;
  *v23 = v1;
  v23[1] = sub_254EF8B64;
  v24 = v1[30];
  v25 = v1[27];
  v26 = v1[24];

  return MEMORY[0x2821DCB08](v25, v26, v24);
}

uint64_t sub_254EF8B64()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_254EF8CBC, 0, 0);
}

uint64_t sub_254EF8CBC()
{
  v72 = v0;
  *(v0 + 72) = MEMORY[0x277D84F90];
  v1 = (v0 + 16);
  v2 = (v0 + 56);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v69 = (v0 + 72);
  v6 = *(v0 + 120);
  sub_254F28F00();
  v7 = sub_254F290C0();
  v53 = *(v4 + 8);
  result = v53(v3, v5);
  v9 = 0;
  v11 = v7 + 56;
  v10 = *(v7 + 56);
  v66 = v7;
  v12 = -1;
  v13 = -1 << *(v7 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & v10;
  v15 = (63 - v13) >> 6;
  v57 = v7 + 56;
  v59 = v6;
  v54 = (v6 + 8);
  v56 = v15;
  if ((v12 & v10) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v16);
    ++v9;
    if (v14)
    {
      v9 = v16;
      do
      {
LABEL_8:
        v18 = *(v0 + 128);
        v17 = *(v0 + 136);
        v19 = *(v0 + 112);
        (*(v59 + 16))(v17, *(v66 + 48) + *(v59 + 72) * (__clz(__rbit64(v14)) | (v9 << 6)), v19);
        (*(v59 + 32))(v18, v17, v19);
        sub_254F27F30();
        if (v20)
        {
          v61 = *(v0 + 160);
          v63 = *(v0 + 144);
          v21 = *(v0 + 128);

          sub_254F28F00();
          v22 = sub_254EF4FB4();
          v24 = v23;
          v25 = sub_254F290D0();
          v26 = swift_task_alloc();
          v26[2] = v21;
          v26[3] = v22;
          v26[4] = v24;
          v27 = sub_254EF7C00(sub_254EFA18C, v26, v25);

          v53(v61, v63);
          v28 = v27;
          v2 = (v0 + 56);
          sub_254EED960(v28);
        }

        v14 &= v14 - 1;
        result = (*v54)(*(v0 + 128), *(v0 + 112));
        v15 = v56;
        v11 = v57;
      }

      while (v14);
    }
  }

  v29 = *(v0 + 72);
  v58 = *(v29 + 16);
  v30 = sub_254F28F10();
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = *(v0 + 96);
    v34 = *(v32 + 16);
    v33 = v32 + 16;
    v35 = v30 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
    v64 = *(v33 + 56);
    v67 = v34;
    do
    {
      v36 = *(v0 + 104);
      v37 = *(v0 + 88);
      v67(v36, v35, v37);
      *v1 = 0u;
      *(v0 + 32) = 0u;
      *(v0 + 48) = 1;
      *v2 = 0;
      v2[1] = 0;
      v38 = swift_task_alloc();
      v38[2] = v1;
      v38[3] = v2;
      v38[4] = v69;
      sub_254F27DB0();

      (*(v33 - 8))(v36, v37);

      v35 += v64;
      --v31;
    }

    while (v31);

    v29 = *v69;
  }

  else
  {
  }

  v39 = *(v29 + 16);

  sub_254F284E0();
  v40 = sub_254F291D0();
  v41 = sub_254F296F0();
  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v0 + 320);
  v44 = v29;
  v45 = *(v0 + 232);
  v46 = *(v0 + 240);
  v47 = *(v0 + 224);
  v65 = *(v0 + 328);
  v68 = *(v0 + 216);
  v48 = *(v0 + 208);
  v60 = *(v0 + 312);
  v62 = *(v0 + 200);
  v70 = v44;
  if (v42)
  {
    v55 = *(v0 + 240);
    v49 = v39 - v58;
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v71 = v51;
    *v50 = 136315650;
    *(v50 + 4) = sub_254EC2D74(0xD00000000000001CLL, 0x8000000254F2E350, &v71);
    *(v50 + 12) = 2050;
    *(v50 + 14) = v58;
    *(v50 + 22) = 2050;
    *(v50 + 24) = v49;
    _os_log_impl(&dword_254EAE000, v40, v41, "%s %{public}ld commands, %{public}ld elements", v50, 0x20u);
    sub_254EB2BBC(v51);
    sub_254EB3C04();
    sub_254EB3C04();

    (*(v43 + 8))(v65, v60);
    (*(v48 + 8))(v68, v62);
    (*(v45 + 8))(v55, v47);
  }

  else
  {

    (*(v43 + 8))(v65, v60);
    (*(v48 + 8))(v68, v62);
    (*(v45 + 8))(v46, v47);
  }

  sub_254EF92F8("UIContext.retrieveUIElements", 28, 2, *(v0 + 344));

  v52 = *(v0 + 8);

  return v52(v70);
}

uint64_t sub_254EF92F8(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v27 = a3;
  v28 = a1;
  v4 = sub_254F29180();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254F29140();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_254F29170();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F280C0();
  v15 = sub_254F29160();
  sub_254F29190();
  v24 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v8 + 8))(v10, v7);
    return (*(v12 + 8))(v14, v11);
  }

  v23 = v11;
  if ((v27 & 1) == 0)
  {
    if (v28)
    {
LABEL_9:

      sub_254F291C0();

      v18 = v25;
      v17 = v26;
      if ((*(v25 + 88))(v6, v26) == *MEMORY[0x277D85B00])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v18 + 8))(v6, v17);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_254F29130();
      _os_signpost_emit_with_name_impl(&dword_254EAE000, v15, v24, v21, v28, v19, v20, 2u);
      MEMORY[0x259C2EB80](v20, -1, -1);
      v11 = v23;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v28 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v28 & 0xFFFFF800) != 0xD800)
  {
    if (v28 >> 16 <= 0x10)
    {
      v28 = &v29;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_254EF963C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v64 = a5;
  v66 = a4;
  v58 = a2;
  v6 = sub_254EC8BC0(&qword_27F75F2E8, &qword_254F2C430);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v56 - v7;
  v8 = sub_254EC8BC0(&qword_27F75F310, &unk_254F2C4D0);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = &v56 - v9;
  v10 = sub_254F28EE0();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v61 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = &v56 - v13;
  v14 = sub_254F27E10();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v65 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_254F27E80();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_254F27E90();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F27EA0();
  v25 = (*(v22 + 88))(v24, v21);
  if (v25 == *MEMORY[0x277D74660])
  {
    sub_254F27CB0();
    *a3 = v26;
    *(a3 + 8) = v27;
    *(a3 + 16) = v28;
    *(a3 + 24) = v29;
    *(a3 + 32) = 0;
    return (*(v22 + 8))(v24, v21);
  }

  if (v25 == *MEMORY[0x277D74678])
  {
    (*(v22 + 96))(v24, v21);
    (*(v18 + 32))(v20, v24, v17);
    v31 = sub_254F27E40();
    v33 = v32;
    (*(v18 + 8))(v20, v17);
    v34 = v66;
    *v66 = v31;
    v34[1] = v33;
  }

  else
  {
    if (v25 != *MEMORY[0x277D74650])
    {
      return (*(v22 + 8))(v24, v21);
    }

    (*(v22 + 96))(v24, v21);
    v35 = v15;
    v36 = *(v15 + 32);
    v37 = v65;
    v36(v65, v24, v14);
    if (*(a3 + 32))
    {
      return (*(v35 + 8))(v37, v14);
    }

    v38 = v66[1];
    if (!v38)
    {
      return (*(v35 + 8))(v37, v14);
    }

    else
    {
      v56 = *v66;
      v66 = v38;

      sub_254F27CB0();
      sub_254F27E00();
      v39 = v60;
      sub_254F287B0();
      v40 = *MEMORY[0x277D1D350];
      v41 = sub_254F287E0();
      (*(*(v41 - 8) + 104))(v39, v40, v41);
      sub_254EB2F04(v39, 0, 1, v41);
      v42 = v57;
      sub_254F27D40();
      v43 = sub_254F27F50();
      if (sub_254EB2F2C(v42, 1, v43) == 1)
      {
        sub_254EB300C(v42, &qword_27F75F2E8, &qword_254F2C430);
      }

      else
      {
        sub_254EF4FB4();
        (*(*(v43 - 8) + 8))(v42, v43);
      }

      sub_254EF1940();
      v44 = sub_254F27D10();
      v45 = sub_254F0B968(0x72616D6972507369, 0xE900000000000079, v44);
      v47 = v46;

      if (v47)
      {
        if (v45 != 1702195828 || v47 != 0xE400000000000000)
        {
          sub_254F29B10();
        }
      }

      sub_254F27D20();
      v49 = v59;
      sub_254F28EB0();
      v51 = v61;
      v50 = v62;
      v52 = v63;
      (*(v62 + 16))(v61, v49, v63);
      v53 = v64;
      sub_254F16C00();
      v54 = *(*v53 + 16);
      sub_254F16CA8(v54);
      (*(v50 + 8))(v49, v52);
      (*(v35 + 8))(v65, v14);
      v55 = *v53;
      *(v55 + 16) = v54 + 1;
      return (*(v50 + 32))(v55 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v54, v51, v52);
    }
  }
}

uint64_t sub_254EF9DB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v37 = a3;
  v41 = a1;
  v6 = sub_254EC8BC0(&qword_27F75F310, &unk_254F2C4D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v33 - v7;
  v9 = sub_254F27C30();
  v36 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_254F287D0();
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x28223BE20](v12);
  v38 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_254F27C70();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    goto LABEL_7;
  }

  v18 = sub_254F27C50();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
LABEL_7:
    v22 = sub_254F27C70();
    v33[0] = v23;
    v33[1] = v22;
    sub_254F27C50();
    v35 = a2;
    sub_254F27C40();
    sub_254EFA1B8();
    sub_254F29AF0();
    v34 = a4;
    (*(v36 + 8))(v11, v9);
    sub_254F27C60();
    v24 = v38;
    sub_254F287C0();
    v26 = v39;
    v25 = v40;
    (*(v39 + 16))(v8, v24, v40);
    v27 = *MEMORY[0x277D1D358];
    v28 = sub_254F287E0();
    (*(*(v28 - 8) + 104))(v8, v27, v28);
    sub_254EB2F04(v8, 0, 1, v28);
    sub_254F27F30();

    v29 = v34;
    sub_254F28EB0();
    (*(v26 + 8))(v24, v25);
    v30 = sub_254F28EE0();
    return sub_254EB2F04(v29, 0, 1, v30);
  }

  else
  {
    v32 = sub_254F28EE0();
    return sub_254EB2F04(a4, 1, 1, v32);
  }
}

unint64_t sub_254EFA1B8()
{
  result = qword_27F75F398;
  if (!qword_27F75F398)
  {
    sub_254F27C30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75F398);
  }

  return result;
}

uint64_t sub_254EFA210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_254F27F50();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_254EB2F04(a2, v7, 1, v6);
}

uint64_t sub_254EFA2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_254EC8BC0(&qword_27F75ED80, &qword_254F2AF68);
  v6 = v5;
  if (v4)
  {
    sub_254F07FAC(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, &qword_27F75ED80, &qword_254F2AF68);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_254EB2F04(a2, v7, 1, v6);
}

void sub_254EFA378(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v55 = sub_254F286E0();
  v3 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v58 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_254F28C80();
  v6 = MEMORY[0x28223BE20](v5);
  v57 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v60 = (&v50 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v50 - v11);
  MEMORY[0x28223BE20](v10);
  v73 = &v50 - v14;
  v15 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 56);
  v19 = (v16 + 63) >> 6;
  v20 = v13 + 16;
  v67 = v13 + 88;
  v66 = *MEMORY[0x277D1D428];
  v72 = (v13 + 8);
  v59 = *MEMORY[0x277D1D438];
  v56 = *MEMORY[0x277D1D420];
  v54 = v3;
  v53 = v3 + 32;
  v70 = v13;
  v71 = a1;
  v61 = (v13 + 96);

  v21 = 0;
  v68 = v20;
  v69 = v12;
  v64 = v19;
  for (i = a1 + 56; v18; v12 = v69)
  {
LABEL_8:
    v23 = v70;
    v24 = *(v70 + 16);
    v25 = v73;
    v24(v73, *(v71 + 48) + *(v70 + 72) * (__clz(__rbit64(v18)) | (v21 << 6)), v5);
    v24(v12, v25, v5);
    v26 = *(v23 + 88);
    v27 = v26(v12, v5);
    v75 = v72 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v27 == v66)
    {
      v28 = v72;
      (*v61)(v12, v5);
      v29 = *v12;
      v30 = sub_254F28FF0();
      sub_254EFB234(v29, v30);
      sub_254F29000();
      v31 = *v28;
      v32 = v25;
    }

    else
    {
      v62 = *v72;
      v62(v12, v5);
      v33 = v60;
      v24(v60, v25, v5);
      v34 = v26(v33, v5);
      if (v34 == v59)
      {
        (*v61)(v33, v5);
        v35 = *v33;
        v36 = sub_254F29050();
        sub_254EEDABC(v35);
        v36(v74, 0);
        v19 = v64;
        v15 = i;
        v31 = v62;
        v32 = v73;
        goto LABEL_13;
      }

      v37 = v33;
      v38 = v62;
      v62(v37, v5);
      v39 = v57;
      v24(v57, v73, v5);
      v40 = v26(v39, v5);
      v38(v39, v5);
      v31 = v38;
      v32 = v73;
      if (v40 == v56)
      {
        sub_254F286B0();
        v41 = sub_254F29050();
        v43 = v42;
        v44 = *v42;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v43;
        *v43 = v44;
        v19 = v64;
        v15 = i;
        v52 = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_254EF0E10();
          v44 = v48;
          *v51 = v48;
        }

        v46 = *(v44 + 16);
        v47 = v46 + 1;
        if (v46 >= *(v44 + 24) >> 1)
        {
          v50 = v46 + 1;
          sub_254EF0E10();
          v47 = v50;
          v44 = v49;
          *v51 = v49;
        }

        *(v44 + 16) = v47;
        (*(v54 + 32))(v44 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v46, v58, v55);
        v52(v74, 0);
        goto LABEL_13;
      }
    }

    v19 = v64;
    v15 = i;
LABEL_13:
    v18 &= v18 - 1;
    v31(v32, v5);
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      return;
    }

    v18 = *(v15 + 8 * v22);
    ++v21;
    if (v18)
    {
      v21 = v22;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_254EFA974(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), void (*a4)(void), void (*a5)(uint64_t))
{
  v9 = v5;
  v12 = sub_254EC8BC0(&qword_27F75F428, &qword_254F2C6B0);
  sub_254EB2D90(v12);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  sub_254EC8BC0(&qword_27F75F430, &qword_254F2C6B8);
  sub_254EB3CD0();
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  v19 = sub_254EB81DC();
  if (sub_254EB2F2C(v19, v20, v21) == 1)
  {
    sub_254EB306C(a1, &qword_27F75F428, &qword_254F2C6B0);
    a5(a2);
    a4(0);
    sub_254EB2D80();
    (*(v22 + 8))(a2);
    return sub_254EB306C(v15, &qword_27F75F428, &qword_254F2C6B0);
  }

  else
  {
    sub_254F07FF4(a1, v18, &qword_27F75F430, &qword_254F2C6B8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v9;
    a3(v18, a2, isUniquelyReferenced_nonNull_native);
    *v9 = v27;
    a4(0);
    sub_254EB2D80();
    return (*(v25 + 8))(a2);
  }
}

uint64_t sub_254EFAB5C(uint64_t a1, uint64_t a2)
{
  v3[2] = a2;
  v3[3] = v2;
  v6 = sub_254F291E0();
  v3[4] = v6;
  sub_254EB2CAC(v6);
  v3[5] = v7;
  v3[6] = sub_254EB3FC4();
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_254EFAC50;

  return sub_254EFD0F0(a1, a2);
}

uint64_t sub_254EFAC50()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB2DB4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;

  v5 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_254EFAD3C()
{
  sub_254F29260();
  v1 = sub_254F29250();
  v0[10] = v1;
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_254EFAE10;
  v3 = v0[9];
  v4 = v0[2];

  return sub_254EFD328(v3, v1, v4);
}

uint64_t sub_254EFAE10()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB2DB4();
  *v2 = v1;
  v3 = *v0;
  sub_254EB2DB4();
  *v4 = v3;
  *(v6 + 96) = v5;

  v7 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_254EFAF34()
{
  v12 = v0;
  v1 = v0[12];
  v11 = v0[8];
  sub_254EED908(v1);
  v2 = v11;
  sub_254F284E0();

  v3 = sub_254F291D0();
  v4 = sub_254F296E0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_254EC2D74(0xD000000000000028, 0x8000000254F2E390, &v11);
    *(v5 + 12) = 2048;
    *(v5 + 14) = *(v2 + 16);

    _os_log_impl(&dword_254EAE000, v3, v4, "%s found %ld on screen contents", v5, 0x16u);
    sub_254EB2BBC(v6);
    sub_254EB3C04();
    sub_254EB3C04();
  }

  else
  {
  }

  v7 = sub_254EB3AEC();
  v8(v7);

  v9 = v0[1];

  return v9(v2);
}

void sub_254EFB0DC()
{
  sub_254EC1A1C();
  v1 = v0;
  v3 = v2;
  v4 = sub_254F28CE0();
  sub_254EB2CBC();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - v11;
  v20[1] = v1;
  v13 = *(v3 + 16);
  if (v13)
  {
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    sub_254EB3A30();
    v20[0] = v3;
    v18 = v3 + v17;
    v19 = *(v14 + 56);
    do
    {
      v15(v10, v18, v4);
      sub_254F0FAB8();
      (*(v14 - 8))(v12, v4);
      v18 += v19;
      --v13;
    }

    while (v13);
  }

  sub_254EB4078();
}

uint64_t sub_254EFB234(uint64_t a1, uint64_t a2)
{
  v4 = sub_254F27C10();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v25 - v10;
  result = MEMORY[0x28223BE20](v9);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      sub_254F0FC24();
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_254EFB450()
{
  sub_254EC1A1C();
  v1 = v0;
  v72 = v2;
  v4 = v3;
  v74 = v5;
  v6 = sub_254EC8BC0(&qword_27F75EEE8, &unk_254F2B648);
  sub_254EB2D90(v6);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v7);
  v9 = &v68 - v8;
  v10 = sub_254F29330();
  sub_254EB2CBC();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_254EB3D38();
  v70 = v14;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v15);
  sub_254EB59E4();
  v71 = v16;
  sub_254EB7FC4();
  v73 = sub_254F291E0();
  sub_254EB2CBC();
  v18 = v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v68 - v24;
  MEMORY[0x28223BE20](v23);
  sub_254EB59E4();
  v69 = v26;
  v27 = sub_254EC8BC0(&qword_27F75F440, &qword_254F2C6C8);
  sub_254EB2D90(v27);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v28);
  v30 = (&v68 - v29);
  sub_254F29720();
  v31 = sub_254F27720();
  if (sub_254EB2F2C(v30, 1, v31) == 1)
  {
    sub_254EB306C(v30, &qword_27F75F440, &qword_254F2C6C8);
  }

  else
  {
    v68 = v12;
    v32 = v10;
    v33 = v9;
    v34 = *(v31 - 8);
    if ((*(v34 + 88))(v30, v31) == *MEMORY[0x277CBA3C0])
    {
      (*(v34 + 96))(v30, v31);
      v35 = *v30;
      v36 = v30[1];
      v37 = sub_254EC8BC0(&qword_27F75F2E0, &qword_254F2C428);
      sub_254EB306C(v30 + *(v37 + 64), &qword_27F75F2D0, &qword_254F2C418);

      v38 = v72;
      v9 = v33;
      v39 = v32;
      v12 = v68;
LABEL_25:
      v64 = swift_allocObject();
      v64[2] = v38;
      v64[3] = v1;
      v64[4] = v35;
      v64[5] = v36;
      v65 = v71;
      *v71 = v64;
      (*(v12 + 104))(v65, *MEMORY[0x277D72D28], v39);
      (*(v12 + 16))(v70, v65, v39);
      v66 = sub_254F29380();
      sub_254EB2F04(v9, 1, 1, v66);
      sub_254F29270();
      (*(v12 + 8))(v65, v39);
      v59 = 0;
      goto LABEL_26;
    }

    (*(v34 + 8))(v30, v31);
    v9 = v33;
    v10 = v32;
    v12 = v68;
  }

  v40 = sub_254F07A04(v4);
  if (!v40)
  {
    v78 = 0u;
    v79 = 0u;
    goto LABEL_14;
  }

  v41 = v40;
  v75 = 0xD000000000000016;
  v76 = 0x8000000254F2E3F0;
  sub_254F298E0();
  sub_254F0B9C0(v77, v41, &v78);

  sub_254EF79E0(v77);
  if (!*(&v79 + 1))
  {
LABEL_14:
    sub_254EB306C(&v78, &qword_27F75EE68, &qword_254F2B4C0);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    sub_254F284E0();
    v48 = sub_254F291D0();
    v49 = sub_254F296E0();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v73;
    if (v50)
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v77[0] = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_254EB6408("entityIdentifierValue(from:bundleId:)");
      _os_log_impl(&dword_254EAE000, v48, v49, "%s there was no entity identifier found in the NSUserActivity", v52, 0xCu);
      sub_254EB2BBC(v53);
      sub_254EB3C04();
      sub_254EB3C04();
    }

    v54 = *(v18 + 8);
    v54(v25, v51);

    sub_254F284E0();

    v55 = sub_254F291D0();
    v56 = sub_254F296E0();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v77[0] = swift_slowAlloc();
      *v57 = 136315906;
      *(v57 + 4) = sub_254EB6408("entityIdentifierValue(from:bundleId:)");
      *(v57 + 12) = 2080;
      *(v57 + 14) = sub_254EBBB18();
      *(v57 + 22) = 2080;
      *(v57 + 24) = sub_254EBBB18();
      *(v57 + 32) = 2080;
      v58 = sub_254EC2D74(v72, v1, v77);

      *(v57 + 34) = v58;
      _os_log_impl(&dword_254EAE000, v55, v56, "%s unable to get entityId (%s), and/or entityType (%s) for (%s) from userInfo[_NSAppEntityIdentifier]", v57, 0x2Au);
      swift_arrayDestroy();
      sub_254EB3C04();
      sub_254EB3C04();
    }

    else
    {
    }

    v54(v22, v51);
    goto LABEL_21;
  }

  sub_254EF7A34();
  v42 = sub_254F29850();

  if (*(v42 + 16) <= 2uLL)
  {

    v43 = v69;
    sub_254F284E0();
    v44 = sub_254F291D0();
    v45 = sub_254F296E0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v77[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_254EB6408("entityIdentifierValue(from:bundleId:)");
      _os_log_impl(&dword_254EAE000, v44, v45, "%s userInfo[_NSAppEntityIdentifier] contains malformatted String", v46, 0xCu);
      sub_254EB2BBC(v47);
      sub_254EB3C04();
      sub_254EB3C04();
    }

    (*(v18 + 8))(v43, v73);
LABEL_21:
    v59 = 1;
LABEL_26:
    v67 = sub_254F29290();
    sub_254EB2F04(v74, v59, 1, v67);
    sub_254EB4078();
    return;
  }

  v73 = v10;

  sub_254EB4B64();
  sub_254EBEDA8();
  v38 = MEMORY[0x259C2DC20]();
  v1 = v60;

  if (*(v42 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {

    v61 = sub_254EB4B64();
    v72 = MEMORY[0x259C2DC20](v61);
    v69 = v62;

    if (*(v42 + 16) >= 3uLL)
    {

      v63 = sub_254EB80DC();
      MEMORY[0x259C2DC20](v63);

      v35 = v72;
      v39 = v73;
      v36 = v69;
      goto LABEL_25;
    }
  }

  __break(1u);
}

uint64_t sub_254EFBD20()
{
  sub_254EB3BD8();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_254F29100();
  v1[5] = v3;
  sub_254EB2CAC(v3);
  v1[6] = v4;
  v1[7] = sub_254EB3FC4();
  v5 = sub_254F28F20();
  v1[8] = v5;
  sub_254EB2CAC(v5);
  v1[9] = v6;
  v1[10] = sub_254EB3FC4();
  v7 = sub_254F28F60();
  v1[11] = v7;
  sub_254EB2CAC(v7);
  v1[12] = v8;
  v1[13] = sub_254EB3FC4();
  v9 = sub_254F28010();
  v1[14] = v9;
  sub_254EB2CAC(v9);
  v1[15] = v10;
  v1[16] = sub_254EB3FC4();
  v11 = sub_254F27FA0();
  v1[17] = v11;
  sub_254EB2CAC(v11);
  v1[18] = v12;
  v1[19] = sub_254EB3FC4();
  v13 = sub_254EC8BC0(&qword_27F75F2F8, &qword_254F2C4B0);
  sub_254EB2D90(v13);
  v1[20] = sub_254EB3FC4();
  v14 = sub_254F27FC0();
  v1[21] = v14;
  sub_254EB2CAC(v14);
  v1[22] = v15;
  v1[23] = sub_254EB3FC4();
  v16 = sub_254F28D50();
  v1[24] = v16;
  sub_254EB2CAC(v16);
  v1[25] = v17;
  v1[26] = sub_254EB3C44();
  v1[27] = swift_task_alloc();
  v18 = sub_254F27FD0();
  v1[28] = v18;
  sub_254EB2CAC(v18);
  v1[29] = v19;
  v1[30] = sub_254EB3C44();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v20 = sub_254F290B0();
  v1[33] = v20;
  sub_254EB2CAC(v20);
  v1[34] = v21;
  v1[35] = sub_254EB3FC4();
  v22 = sub_254F29140();
  v1[36] = v22;
  sub_254EB2CAC(v22);
  v1[37] = v23;
  v1[38] = sub_254EB3C44();
  v1[39] = swift_task_alloc();
  v24 = sub_254F29170();
  v1[40] = v24;
  sub_254EB2CAC(v24);
  v1[41] = v25;
  v1[42] = sub_254EB3C44();
  v1[43] = swift_task_alloc();
  v26 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_254EFC124(uint64_t a1)
{
  v2 = v1[42];
  v3 = v1[40];
  v4 = v1[41];
  sub_254F280C0();
  sub_254F280C0();
  sub_254F29160();
  sub_254F29120();
  v65 = *(v4 + 8);
  v65(v2, v3);
  v5 = sub_254F29160();
  v6 = sub_254F297A0();
  if (sub_254F29800())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_254F29130();
    _os_signpost_emit_with_name_impl(&dword_254EAE000, v5, v6, v8, "UIContext.onScreenContent", "", v7, 2u);
    sub_254EB3C04();
  }

  v9 = v1[39];
  v61 = v1[40];
  v63 = v1[43];
  v11 = v1[37];
  v10 = v1[38];
  v12 = v1[36];
  v54 = v1[32];
  v55 = v1[31];
  v56 = v1[30];
  v69 = v1[29];
  v13 = v1[26];
  v67 = v1[28];
  v68 = v1[25];
  v14 = v1[24];
  v57 = v1[22];
  v58 = v1[23];
  v59 = v1[21];
  v15 = v1[3];

  (*(v11 + 16))(v10, v9, v12);
  sub_254F291B0();
  swift_allocObject();
  v60 = 1;
  sub_254EB81DC();
  v1[44] = sub_254F291A0();
  (*(v11 + 8))(v9, v12);
  v65(v63, v61);
  sub_254F290A0();
  sub_254F28DE0();
  sub_254F28D00();
  sub_254EC1B80(&unk_281427480, MEMORY[0x277D1D4E0], MEMORY[0x277D1D4F0]);
  sub_254EB3D4C();
  LOBYTE(v10) = sub_254F29870();
  v16 = *(v68 + 8);
  v16(v13, v14);
  v17 = sub_254EB3AEC();
  (v16)(v17);
  v64 = *MEMORY[0x277D74840];
  v66 = *MEMORY[0x277D74828];
  if (v10)
  {
    v18 = *MEMORY[0x277D74840];
  }

  else
  {
    v18 = *MEMORY[0x277D74828];
  }

  v62 = *(v69 + 104);
  v62(v54, v18, v67);
  sub_254F28FA0();
  sub_254F28DE0();
  sub_254F28D00();
  sub_254EB3D4C();
  sub_254F29870();
  v19 = sub_254EB7E6C();
  (v16)(v19);
  v20 = sub_254EB3AEC();
  (v16)(v20);
  if (v15)
  {
    v21 = v64;
  }

  else
  {
    v21 = v66;
  }

  v62(v55, v21, v67);
  sub_254F28FC0();
  sub_254F28DE0();
  sub_254F28D40();
  sub_254EB3D4C();
  sub_254F29870();
  v22 = sub_254EB7E6C();
  (v16)(v22);
  v23 = sub_254EB3AEC();
  (v16)(v23);
  if (v15)
  {
    v24 = v64;
  }

  else
  {
    v24 = v66;
  }

  v62(v56, v24, v67);
  sub_254F29010();
  sub_254F28DE0();
  sub_254F28D30();
  sub_254EB3D4C();
  sub_254F29870();
  v25 = sub_254EB7E6C();
  (v16)(v25);
  v26 = sub_254EB3AEC();
  (v16)(v26);
  v27 = MEMORY[0x277D747E8];
  if ((v15 & 1) == 0)
  {
    v27 = MEMORY[0x277D747F8];
  }

  (*(v57 + 104))(v58, *v27, v59);
  sub_254F28F90();
  sub_254F28DE0();
  sub_254F28D30();
  sub_254EB3D4C();
  sub_254F29870();
  v28 = sub_254EB7E6C();
  (v16)(v28);
  v29 = sub_254EB3AEC();
  (v16)(v29);
  if (v15)
  {
    (*(v1[18] + 104))(v1[19], *MEMORY[0x277D747A0], v1[17]);
    sub_254F27F90();
    v60 = 0;
  }

  v30 = v1[27];
  v31 = v1[24];
  v32 = v1[20];
  v33 = sub_254F27FB0();
  sub_254EB2F04(v32, v60, 1, v33);
  sub_254F28F30();
  sub_254F28DE0();
  sub_254F28D10();
  v34 = sub_254F080EC();
  v35 = sub_254EB80DC();
  (v16)(v35);
  v16(v30, v31);
  if (v34)
  {
    v36 = (v1[15] + 104);
    v37 = MEMORY[0x277D748C0];
  }

  else
  {
    v38 = v1[27];
    v39 = v1[24];
    v40 = v1[15];
    sub_254F28DE0();
    sub_254F28D20();
    v41 = sub_254F080EC();
    v42 = sub_254EB80DC();
    (v16)(v42);
    v16(v38, v39);
    v36 = (v40 + 104);
    v37 = MEMORY[0x277D748E0];
    if (v41)
    {
      v37 = MEMORY[0x277D748C8];
    }
  }

  v43 = v1[35];
  v44 = v1[6];
  v70 = v1[7];
  v45 = v1[5];
  (*v36)(v1[16], *v37, v1[14]);
  sub_254F29080();
  sub_254F29000();
  v46 = sub_254F29060();
  v47 = MEMORY[0x259C2D4D0](v46);
  sub_254EFA378(v47, v43);

  sub_254EC8BC0(&qword_27F75F3B0, &qword_254F2C620);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_254F2AE00;
  sub_254F28F50();
  v1[2] = v48;
  sub_254EC1B80(&qword_281427468, MEMORY[0x277D74968], MEMORY[0x277D74978]);
  sub_254EC8BC0(&qword_27F75F2F0, &qword_254F2C498);
  sub_254F05780();
  sub_254F298A0();
  sub_254F28FE0();
  sub_254F28DF0();
  sub_254F29090();
  sub_254F28DC0();
  sub_254F29020();
  sub_254F29110();
  (*(v44 + 104))(v70, *MEMORY[0x277D74998], v45);
  v49 = swift_task_alloc();
  v1[45] = v49;
  *v49 = v1;
  v49[1] = sub_254EFC91C;
  v50 = v1[35];
  v51 = v1[10];
  v52 = v1[7];

  return MEMORY[0x2821DCB08](v51, v52, v50);
}

uint64_t sub_254EFC91C()
{
  sub_254EB4918();
  v2 = v1[7];
  v3 = v1[6];
  v4 = v1[5];
  v5 = *v0;
  sub_254EB2DB4();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);
  v7 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_254EFCA64()
{
  sub_254EB3BD8();
  v1 = sub_254F28F10();
  v0[46] = v1;
  v2 = swift_task_alloc();
  v0[47] = v2;
  *v2 = v0;
  v2[1] = sub_254EFCB04;
  v3 = v0[3];

  return sub_254EFAB5C(v1, v3);
}

uint64_t sub_254EFCB04()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB2DB4();
  *v2 = v1;
  v3 = *v0;
  sub_254EB2DB4();
  *v4 = v3;
  *(v6 + 384) = v5;

  v7 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_254EFCC0C()
{
  v1 = v0[44];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[33];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v2 + 8))(v3, v4);
  sub_254EFCDAC("UIContext.onScreenContent", 25, 2, v1);

  v5 = v0[1];
  v6 = v0[48];

  return v5(v6);
}

uint64_t sub_254EFCDAC(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v27 = a3;
  v28 = a1;
  v4 = sub_254F29180();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254F29140();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_254F29170();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F280C0();
  v15 = sub_254F29160();
  sub_254F29190();
  v24 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v8 + 8))(v10, v7);
    return (*(v12 + 8))(v14, v11);
  }

  v23 = v11;
  if ((v27 & 1) == 0)
  {
    if (v28)
    {
LABEL_9:

      sub_254F291C0();

      v18 = v25;
      v17 = v26;
      if ((*(v25 + 88))(v6, v26) == *MEMORY[0x277D85B00])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v18 + 8))(v6, v17);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_254F29130();
      _os_signpost_emit_with_name_impl(&dword_254EAE000, v15, v24, v21, v28, v19, v20, 2u);
      MEMORY[0x259C2EB80](v20, -1, -1);
      v11 = v23;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v28 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v28 & 0xFFFFF800) != 0xD800)
  {
    if (v28 >> 16 <= 0x10)
    {
      v28 = &v29;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_254EFD0F0(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_254EB3CA0();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_254EFD11C()
{
  v14 = v0;
  v1 = 0;
  v0[2] = MEMORY[0x277D84F90];
  v2 = MEMORY[0x277D84F98];
  v0[3] = MEMORY[0x277D84F98];
  v0[4] = v2;
  v0[5] = v2;
  v3 = *(v0[6] + 16);
  while (v3 != v1)
  {
    v4 = sub_254F27F10();
    sub_254EB2CAC(v4);
    v5 = swift_task_alloc();
    v5[2] = v0 + 2;
    v5[3] = v0 + 4;
    v5[4] = v0 + 5;
    v5[5] = v0 + 3;
    sub_254F27DB0();

    ++v1;
  }

  v6 = sub_254F01998(v0[4], v0[5]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v0[3];
  sub_254F0750C(v6, sub_254F07490, 0, isUniquelyReferenced_nonNull_native, &v13);
  v8 = v13;
  if (sub_254F28DD0())
  {
    v9 = sub_254F02DE8(v8);
  }

  else
  {

    v9 = v8;
  }

  v10 = v0[2];

  v11 = v0[1];

  return v11(v10, v9);
}

uint64_t sub_254EFD328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  sub_254EC8BC0(&qword_27F75F3B8, &qword_254F2C640);
  v3[5] = swift_task_alloc();
  v4 = sub_254F289A0();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = sub_254F288E0();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  sub_254EC8BC0(&qword_27F75F2E8, &qword_254F2C430);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v6 = sub_254F27F50();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = sub_254EC8BC0(&qword_27F75F3C0, &qword_254F2C648);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254EFD5B4, 0, 0);
}

uint64_t sub_254EFD5B4()
{
  v148 = v0[18];
  v1 = v0[3] + 64;
  sub_254EB573C();
  v4 = v3 & v2;
  v133 = (v6 + 32);
  v131 = (63 - v5) >> 6;
  v132 = (v0[11] + 8);
  v147 = v7;

  v8 = 0;
  v130 = MEMORY[0x277D84F90];
  v149 = v0;
  v146 = v1;
LABEL_2:
  if (v4)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v131)
    {

      v52 = sub_254F0CB58(v130);
      v143 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
      sub_254EB573C();
      v55 = v54 & v53;
      v57 = (63 - v56) >> 6;

      v58 = 0;
      v59 = MEMORY[0x277D84F90];
      while (v55)
      {
        v60 = v58;
LABEL_29:
        v55 &= v55 - 1;

        v61 = sub_254F29420();
        v149[2] = 0;
        v62 = [v143 entitiesForBundleIdentifier:v61 error:v149 + 2];

        v63 = v149[2];
        if (v62)
        {
          sub_254EB48D8(0, &unk_2814260C8, 0x277D23818);
          v66 = sub_254F29560();
          v67 = v63;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_254EB4958();
            sub_254EF0354();
            v59 = v70;
          }

          v69 = *(v59 + 16);
          v68 = *(v59 + 24);
          if (v69 >= v68 >> 1)
          {
            sub_254EB5124(v68);
            sub_254EF0354();
            v59 = v71;
          }

          *(v59 + 16) = v69 + 1;
          *(v59 + 8 * v69 + 32) = v66;
          v58 = v60;
        }

        else
        {
          v64 = v63;
          v65 = sub_254F27870();

          swift_willThrow();

          v58 = v60;
        }
      }

      while (1)
      {
        v60 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_80;
        }

        if (v60 >= v57)
        {
          break;
        }

        v55 = *(v52 + 56 + 8 * v60);
        ++v58;
        if (v55)
        {
          goto LABEL_29;
        }
      }

      v72 = 0;
      v73 = 0;
      v74 = 0;
      v75 = MEMORY[0x277D84F98];
      while (1)
      {
        if (!v73)
        {
          goto LABEL_41;
        }

LABEL_38:
        if (v73 >> 62)
        {
          v76 = sub_254F29AA0();
        }

        else
        {
          v76 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v72 == v76)
        {
LABEL_41:
          while (1)
          {
            v77 = *(v59 + 16);
            if (v74 == v77)
            {
              break;
            }

            if (v74 >= v77)
            {
              goto LABEL_82;
            }

            v78 = *(v59 + 8 * v74 + 32);

            v72 = 0;
            v73 = v78;
            ++v74;
            if (v78)
            {
              goto LABEL_38;
            }
          }

          v100 = v149[7];

          v101 = -1;
          v102 = -1 << *(v147 + 32);
          if (-v102 < 64)
          {
            v101 = ~(-1 << -v102);
          }

          v103 = v101 & *(v147 + 64);
          v104 = (63 - v102) >> 6;
          v135 = (v100 + 32);

          v105 = 0;
          v137 = MEMORY[0x277D84F90];
LABEL_63:
          v106 = v146;
          if (!v103)
          {
            goto LABEL_65;
          }

          do
          {
            v107 = v105;
LABEL_68:
            v108 = v149[19];
            v109 = v149[5];
            v145 = v149[6];
            v110 = v149[4];
            v111 = __clz(__rbit64(v103));
            v103 &= v103 - 1;
            v112 = v111 | (v107 << 6);
            v113 = *(v147 + 48);
            sub_254F29290();
            sub_254EB3CD0();
            (*(v114 + 16))(v108, v113 + *(v114 + 72) * v112);
            v115 = *(v147 + 56);
            sub_254F28910();
            sub_254EB3CD0();
            v117 = v115 + *(v116 + 72) * v112;
            v118 = *(v148 + 48);
            (*(v116 + 16))(v108 + v118, v117);
            sub_254F03D80(v108, v108 + v118, v110, v109);
            sub_254EB306C(v108, &qword_27F75F3C0, &qword_254F2C648);
            if (sub_254EB2F2C(v109, 1, v145) == 1)
            {
              sub_254EB306C(v149[5], &qword_27F75F3B8, &qword_254F2C640);
              v105 = v107;
              goto LABEL_63;
            }

            v119 = *v135;
            (*v135)(v149[9], v149[5], v149[6]);
            v120 = sub_254EB4B64();
            v119(v120);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_254EB4958();
              sub_254EF028C();
              v137 = v126;
            }

            v106 = v146;
            v122 = *(v137 + 16);
            v121 = *(v137 + 24);
            if (v122 >= v121 >> 1)
            {
              sub_254EB5124(v121);
              sub_254EF028C();
              v137 = v127;
            }

            *(v137 + 16) = v122 + 1;
            sub_254EB3A30();
            v119(v124 + v123 + *(v125 + 72) * v122);
            v105 = v107;
          }

          while (v103);
LABEL_65:
          while (1)
          {
            v107 = v105 + 1;
            if (__OFADD__(v105, 1))
            {
              goto LABEL_81;
            }

            if (v107 >= v104)
            {

              v128 = v149[1];

              return v128(v137);
            }

            v103 = *(v106 + 8 * v107);
            ++v105;
            if (v103)
            {
              goto LABEL_68;
            }
          }
        }

        if ((v73 & 0xC000000000000001) != 0)
        {
          v79 = MEMORY[0x259C2E0D0](v72, v73);
        }

        else
        {
          if ((v72 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
          }

          if (v72 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_88;
          }

          v79 = *(v73 + 8 * v72 + 32);
        }

        v80 = v79;
        v81 = __OFADD__(v72++, 1);
        if (v81)
        {
          goto LABEL_87;
        }

        v82 = v75;
        v83 = [v79 identifier];
        v84 = sub_254F29450();
        v86 = v85;

        v140 = v80;
        swift_isUniquelyReferenced_nonNull_native();
        sub_254F057E4(v84, v86);
        sub_254EB7FD0();
        if (__OFADD__(v89, v90))
        {
          goto LABEL_89;
        }

        v91 = v87;
        v92 = v88;
        sub_254EC8BC0(&qword_27F75F3C8, &qword_254F2C650);
        if (sub_254F29A50())
        {
          v93 = sub_254F057E4(v84, v86);
          if ((v92 & 1) != (v94 & 1))
          {
            goto LABEL_83;
          }

          v91 = v93;
          if (v92)
          {
LABEL_58:

            v75 = v82;
            v98 = v82[7];
            v99 = *(v98 + 8 * v91);
            *(v98 + 8 * v91) = v140;

            continue;
          }
        }

        else if (v92)
        {
          goto LABEL_58;
        }

        v75 = v82;
        v82[(v91 >> 6) + 8] |= 1 << v91;
        v95 = (v82[6] + 16 * v91);
        *v95 = v84;
        v95[1] = v86;
        *(v82[7] + 8 * v91) = v140;

        v96 = v82[2];
        v81 = __OFADD__(v96, 1);
        v97 = v96 + 1;
        if (v81)
        {
          goto LABEL_90;
        }

        v82[2] = v97;
      }
    }

    v4 = *(v1 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
LABEL_7:
      v10 = v0[21];
      v11 = v0[22];
      v12 = __clz(__rbit64(v4)) | (v8 << 6);
      v13 = *(v147 + 48);
      v14 = sub_254F29290();
      sub_254EB2CBC();
      v141 = v16;
      v16[2](v11, v13 + *(v15 + 72) * v12, v14);
      v17 = *(v147 + 56);
      v18 = sub_254F28910();
      sub_254EB2CBC();
      v20 = v19;
      (*(v19 + 16))(v11 + *(v148 + 48), v17 + *(v21 + 72) * v12, v18);
      sub_254F07FAC(v11, v10, &qword_27F75F3C0, &qword_254F2C648);
      v22 = *(v148 + 48);
      v23 = sub_254F28850();
      v26 = *(v20 + 8);
      v25 = v20 + 8;
      v24 = v26;
      v139 = v18;
      v26(v10 + v22, v18);
      v144 = v14;
      if (*(v23 + 16))
      {
        sub_254EB3A30();
        (*(v27 + 16))();
        v28 = 0;
      }

      else
      {
        v28 = 1;
      }

      v4 &= v4 - 1;
      v30 = v0[14];
      v29 = v0[15];
      sub_254EB2F04(v30, v28, 1, v29);

      v31 = sub_254EB2F2C(v30, 1, v29);
      v33 = v0[21];
      v32 = v0[22];
      v34 = v0[14];
      if (v31 == 1)
      {
        v138 = v0[15];
        v35 = v0[20];
        v134 = v0[13];
        v36 = v24;
        v37 = v149[12];
        v136 = v149[10];
        sub_254EB306C(v34, &qword_27F75F2E8, &qword_254F2C430);
        v38 = v33;
        v33 = v144;
        v142 = v141[1];
        v142(v38, v144);
        sub_254F07FAC(v32, v35, &qword_27F75F3C0, &qword_254F2C648);
        v39 = *(v148 + 48);
        sub_254F28900();
        v36(v35 + v39, v139);
        sub_254F28870();
        v0 = v149;
        (*v132)(v37, v136);
        v40 = sub_254EB2F2C(v134, 1, v138);
        v41 = v149[20];
        if (v40 == 1)
        {
          v42 = v149[13];
          v142(v149[20], v144);
          sub_254EB306C(v42, &qword_27F75F2E8, &qword_254F2C430);
          v1 = v146;
          goto LABEL_16;
        }

        sub_254F27F30();
        v45 = sub_254EC0D70();
        v46(v45);
        v142(v41, v144);
        v1 = v146;
        if (v25)
        {
          sub_254EB306C(v149[22], &qword_27F75F3C0, &qword_254F2C648);
LABEL_18:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_254EB4958();
            sub_254EEFF7C();
            v130 = v50;
          }

          v48 = *(v130 + 16);
          v47 = *(v130 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_254EB5124(v47);
            sub_254EEFF7C();
            v130 = v51;
          }

          *(v130 + 16) = v48 + 1;
          v49 = v130 + 16 * v48;
          *(v49 + 32) = v33;
          *(v49 + 40) = v25;
          goto LABEL_2;
        }

LABEL_16:
        sub_254EB306C(v149[22], &qword_27F75F3C0, &qword_254F2C648);
      }

      else
      {
        (*v133)(v0[17], v34, v0[15]);
        (v141[1])(v33, v144);
        sub_254F27F30();
        v43 = sub_254EC0D70();
        v44(v43);
        sub_254EB306C(v32, &qword_27F75F3C0, &qword_254F2C648);
        v1 = v146;
        if (v25)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:

  return sub_254F29B50();
}

uint64_t sub_254EFE2DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v241 = a6;
  v238 = a5;
  v231 = a4;
  v264 = a3;
  v286 = a2;
  v7 = sub_254F27980();
  MEMORY[0x28223BE20](v7 - 8);
  v256 = &v221 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_254F27CA0();
  v233 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v232 = &v221 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_254EC8BC0(&qword_27F75EDF8, &unk_254F2B560);
  MEMORY[0x28223BE20](v10 - 8);
  v229 = &v221 - v11;
  v227 = sub_254F27C00();
  v226 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v225 = &v221 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_254EC8BC0(&qword_27F75EEA0, &qword_254F2B5C8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v282 = &v221 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v277 = &v221 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v222 = &v221 - v19;
  MEMORY[0x28223BE20](v18);
  v236 = &v221 - v20;
  v287 = sub_254EC8BC0(&qword_27F75EEA8, &qword_254F2B5D0);
  v21 = MEMORY[0x28223BE20](v287);
  v257 = &v221 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v255 = &v221 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v228 = &v221 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v269 = &v221 - v28;
  MEMORY[0x28223BE20](v27);
  v237 = &v221 - v29;
  v30 = sub_254EC8BC0(&qword_27F75F3D8, &qword_254F2C660);
  MEMORY[0x28223BE20](v30 - 8);
  v239 = &v221 - v31;
  v32 = sub_254EC8BC0(&qword_27F75F458, &qword_254F2C6D0);
  MEMORY[0x28223BE20](v32 - 8);
  v253 = &v221 - v33;
  v252 = sub_254EC8BC0(&qword_27F75F460, &qword_254F2C6D8);
  v251 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v250 = &v221 - v34;
  v270 = sub_254F27F00();
  v265 = *(v270 - 8);
  v35 = MEMORY[0x28223BE20](v270);
  v242 = &v221 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v246 = &v221 - v37;
  v38 = sub_254EC8BC0(&qword_27F75F428, &qword_254F2C6B0);
  MEMORY[0x28223BE20](v38 - 8);
  v244 = &v221 - v39;
  v40 = sub_254EC8BC0(&qword_27F75F2E8, &qword_254F2C430);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v254 = &v221 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v249 = &v221 - v43;
  v276 = sub_254F27F50();
  v266 = *(v276 - 8);
  v44 = MEMORY[0x28223BE20](v276);
  v230 = &v221 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v243 = &v221 - v46;
  v47 = sub_254EC8BC0(&qword_27F75F318, &unk_254F2C4E0);
  v48 = MEMORY[0x28223BE20](v47 - 8);
  v278 = &v221 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v248 = &v221 - v50;
  v284 = sub_254F27F80();
  v281 = *(v284 - 8);
  v51 = MEMORY[0x28223BE20](v284);
  v279 = &v221 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v268 = &v221 - v53;
  v272 = sub_254EC8BC0(&qword_27F75F468, &qword_254F2C6E0);
  v54 = MEMORY[0x28223BE20](v272);
  v274 = &v221 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v273 = &v221 - v56;
  v57 = sub_254EC8BC0(&qword_27F75EE98, &qword_254F2B5C0);
  MEMORY[0x28223BE20](v57 - 8);
  v271 = &v221 - v58;
  v224 = sub_254F28910();
  v223 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v267 = &v221 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_254EC8BC0(&qword_27F75EE50, &unk_254F2C4F0);
  MEMORY[0x28223BE20](v60 - 8);
  v258 = &v221 - v61;
  v260 = sub_254F28800();
  v259 = *(v260 - 8);
  MEMORY[0x28223BE20](v260);
  v275 = &v221 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = sub_254F289A0();
  v262 = *(v263 - 8);
  MEMORY[0x28223BE20](v263);
  v261 = &v221 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_254EC8BC0(&qword_27F75F3D0, &qword_254F2C658);
  v65 = MEMORY[0x28223BE20](v64 - 8);
  v240 = &v221 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v68 = &v221 - v67;
  v69 = sub_254F27C20();
  v235 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v247 = &v221 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_254F27E80();
  v72 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v74 = &v221 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_254F27E90();
  v76 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v78 = &v221 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a1;
  sub_254F27EA0();
  v80 = (*(v76 + 88))(v78, v75);
  v81 = *MEMORY[0x277D74678];
  v283 = v72;
  v280 = v71;
  v285 = a1;
  if (v80 == v81)
  {
    (*(v76 + 96))(v78, v75);
    (*(v72 + 32))(v74, v78, v71);
    sub_254F27E20();
    v82 = sub_254EB2F2C(v68, 1, v69);
    v245 = v74;
    if (v82 == 1)
    {
      v83 = v74;
      sub_254EB306C(v68, &qword_27F75F3D0, &qword_254F2C658);
    }

    else
    {
      v97 = v71;
      v98 = v235;
      v99 = v247;
      (*(v235 + 32))(v247, v68, v69);
      v100 = v240;
      (*(v98 + 16))(v240, v99, v69);
      sub_254EB2F04(v100, 0, 1, v69);
      v101 = sub_254F29290();
      sub_254EB2F04(v258, 1, 1, v101);
      v102 = v275;
      sub_254F28920();
      (*(v259 + 104))(v102, *MEMORY[0x277D1D360], v260);
      v103 = sub_254F27F10();
      v104 = v271;
      (*(*(v103 - 8) + 16))(v271, v79, v103);
      sub_254EB2F04(v104, 0, 1, v103);
      sub_254F27D70();
      v105 = v273;
      sub_254F07FF4(v104, v273, &qword_27F75EE98, &qword_254F2B5C0);
      (*(v72 + 16))(v105 + *(v272 + 48), v245, v97);
      sub_254F07FAC(v105, v274, &qword_27F75F468, &qword_254F2C6E0);
      type metadata accessor for UIContextRetriever();
      sub_254F007D8();

      sub_254F01258();
      sub_254EB306C(v105, &qword_27F75F468, &qword_254F2C6E0);
      v106 = v261;
      sub_254F28930();
      v107 = v264;
      sub_254F16BD0();
      v108 = *(*v107 + 16);
      sub_254F16C78(v108);
      (*(v98 + 8))(v247, v69);
      v109 = *v107;
      *(v109 + 16) = v108 + 1;
      v110 = v109 + ((*(v262 + 80) + 32) & ~*(v262 + 80)) + *(v262 + 72) * v108;
      v83 = v245;
      (*(v262 + 32))(v110, v106, v263);
    }

    v91 = v281;
    v92 = v282;
    v111 = v278;
    v112 = v268;
    v113 = v248;
    sub_254F27E50();
    v93 = v284;
    v114 = sub_254EB2F2C(v113, 1, v284);
    v115 = v249;
    if (v114 == 1)
    {
      v116 = &qword_27F75F318;
      v117 = &unk_254F2C4E0;
      v118 = v113;
    }

    else
    {
      (*(v91 + 32))(v112, v113, v93);
      sub_254F27E30();
      v123 = v276;
      if (sub_254EB2F2C(v115, 1, v276) != 1)
      {
        (*(v266 + 32))(v243, v115, v123);
        v139 = sub_254F27F10();
        v140 = v271;
        (*(*(v139 - 8) + 16))(v271, v285, v139);
        sub_254EB2F04(v140, 0, 1, v139);
        sub_254F27D70();
        v141 = v273;
        sub_254F07FF4(v140, v273, &qword_27F75EE98, &qword_254F2B5C0);
        (*(v283 + 16))(v141 + *(v272 + 48), v245, v280);
        sub_254F07FAC(v141, v274, &qword_27F75F468, &qword_254F2C6E0);
        type metadata accessor for UIContextRetriever();
        sub_254F007D8();

        v93 = v284;
        v142 = v267;
        sub_254F01258();
        sub_254EB306C(v141, &qword_27F75F468, &qword_254F2C6E0);
        sub_254F28840();
        v143 = v230;
        (*(v266 + 16))(v230, v243, v276);
        v144 = sub_254EC8BC0(&qword_27F75F430, &qword_254F2C6B8);
        v145 = *(v144 + 48);
        v146 = v244;
        (*(v281 + 16))(v244, v268, v93);
        v147 = v223;
        v148 = v224;
        (*(v223 + 16))(v146 + v145, v142, v224);
        v149 = v144;
        v83 = v245;
        sub_254EB2F04(v146, 0, 1, v149);
        v150 = v146;
        v91 = v281;
        sub_254EFA974(v150, v143, sub_254F07034, MEMORY[0x277D74700], sub_254F06A94);
        (*(v147 + 8))(v142, v148);
        (*(v266 + 8))(v243, v276);
        (*(v91 + 8))(v268, v93);
        goto LABEL_20;
      }

      (*(v91 + 8))(v112, v93);
      v116 = &qword_27F75F2E8;
      v117 = &qword_254F2C430;
      v118 = v115;
    }

    sub_254EB306C(v118, v116, v117);
LABEL_20:
    v151 = v270;
    v152 = v250;
    sub_254F27E60();
    v153 = v83;
    v154 = v253;
    v155 = v252;
    sub_254F27CE0();
    v156 = v154;
    (*(v251 + 8))(v152, v155);
    if (sub_254EB2F2C(v154, 1, v151) == 1)
    {
      v157 = v153;
      v94 = v283;
      (*(v283 + 8))(v157, v280);
      sub_254EB306C(v154, &qword_27F75F458, &qword_254F2C6D0);
      v96 = v286;
    }

    else
    {
      v158 = v153;
      v159 = v265;
      v160 = v246;
      (*(v265 + 32))(v246, v156, v151);
      v161 = sub_254F27EF0();
      v96 = v286;
      if (v161)
      {
        v268 = v161;

        sub_254F27EC0();
        v162 = sub_254F29290();
        sub_254EB2F04(v258, 1, 1, v162);
        v163 = v275;
        sub_254F28960();
        (*(v259 + 104))(v163, *MEMORY[0x277D1D368], v260);
        v164 = sub_254F27F10();
        v165 = v271;
        (*(*(v164 - 8) + 16))(v271, v285, v164);
        sub_254EB2F04(v165, 0, 1, v164);
        sub_254F27D70();
        v166 = v273;
        sub_254F07FF4(v165, v273, &qword_27F75EE98, &qword_254F2B5C0);
        v167 = v283;
        v168 = v158;
        v169 = v280;
        (*(v283 + 16))(v166 + *(v272 + 48), v168, v280);
        sub_254F07FAC(v166, v274, &qword_27F75F468, &qword_254F2C6E0);
        type metadata accessor for UIContextRetriever();
        sub_254F007D8();

        v92 = v282;
        v93 = v284;
        sub_254F01258();
        v170 = v166;
        v94 = v167;
        v111 = v278;
        sub_254EB306C(v170, &qword_27F75F468, &qword_254F2C6E0);
        v171 = v261;
        sub_254F28930();
        v172 = v264;
        sub_254F16BD0();
        v173 = *(*v172 + 16);
        sub_254F16C78(v173);

        (*(v159 + 8))(v246, v270);
        (*(v94 + 8))(v245, v169);
        v174 = *v172;
        *(v174 + 16) = v173 + 1;
        v175 = v174 + ((*(v262 + 80) + 32) & ~*(v262 + 80)) + *(v262 + 72) * v173;
        v91 = v281;
        (*(v262 + 32))(v175, v171, v263);
      }

      else
      {
        (*(v159 + 8))(v160, v151);
        v94 = v283;
        (*(v283 + 8))(v158, v280);
      }
    }

    v90 = v277;
    v95 = v279;
    goto LABEL_26;
  }

  if (v80 == *MEMORY[0x277D74680])
  {
    (*(v76 + 96))(v78, v75);
    v84 = v265;
    v85 = v242;
    v86 = v270;
    (*(v265 + 32))(v242, v78, v270);
    v87 = v236;
    v88 = v286;
    sub_254F27D60();
    v89 = sub_254EB2F2C(v87, 1, v287);
    v90 = v277;
    if (v89 != 1)
    {
      v124 = v237;
      sub_254F07FF4(v87, v237, &qword_27F75EEA8, &qword_254F2B5D0);
      sub_254F27EF0();
      sub_254F27EC0();
      v125 = sub_254F29290();
      sub_254EB2F04(v258, 1, 1, v125);
      sub_254F27EE0();
      v126 = v225;
      sub_254F27ED0();
      sub_254F27BF0();
      (*(v226 + 8))(v126, v227);
      v127 = v275;
      sub_254F28950();
      (*(v259 + 104))(v127, *MEMORY[0x277D1D368], v260);
      v128 = v269;
      sub_254F07FAC(v124, v269, &qword_27F75EEA8, &qword_254F2B5D0);
      v129 = *(v287 + 48);
      v130 = sub_254F27F10();
      v131 = v271;
      (*(*(v130 - 8) + 32))(v271, v128, v130);
      sub_254EB2F04(v131, 0, 1, v130);
      sub_254F27D70();
      v132 = v273;
      sub_254F07FF4(v131, v273, &qword_27F75EE98, &qword_254F2B5C0);
      v133 = v283;
      (*(v283 + 32))(v132 + *(v272 + 48), v128 + v129, v280);
      sub_254F07FAC(v132, v274, &qword_27F75F468, &qword_254F2C6E0);
      type metadata accessor for UIContextRetriever();
      sub_254F007D8();

      v90 = v277;
      sub_254F01258();
      v134 = v132;
      v94 = v133;
      sub_254EB306C(v134, &qword_27F75F468, &qword_254F2C6E0);
      v135 = v261;
      sub_254F28930();
      v136 = v264;
      sub_254F16BD0();
      v137 = *(*v136 + 16);
      sub_254F16C78(v137);
      sub_254EB306C(v237, &qword_27F75EEA8, &qword_254F2B5D0);
      (*(v265 + 8))(v242, v86);
      v138 = *v136;
      *(v138 + 16) = v137 + 1;
      (*(v262 + 32))(v138 + ((*(v262 + 80) + 32) & ~*(v262 + 80)) + *(v262 + 72) * v137, v135, v263);
      v91 = v281;
      v92 = v282;
      v93 = v284;
      v111 = v278;
      v95 = v279;
      v96 = v286;
      goto LABEL_26;
    }

    (*(v84 + 8))(v85, v86);
    sub_254EB306C(v87, &qword_27F75EEA0, &qword_254F2B5C8);
    v91 = v281;
    v92 = v282;
    v94 = v283;
    v93 = v284;
    v95 = v279;
    v96 = v88;
    goto LABEL_18;
  }

  v90 = v277;
  v94 = v283;
  v93 = v284;
  if (v80 != *MEMORY[0x277D74628])
  {
    (*(v76 + 8))(v78, v75);
    v96 = v286;
    v91 = v281;
    v92 = v282;
    v95 = v279;
LABEL_18:
    v111 = v278;
    goto LABEL_26;
  }

  (*(v76 + 96))(v78, v75);
  v119 = v233;
  v120 = v232;
  v121 = v234;
  (*(v233 + 32))(v232, v78, v234);
  v122 = v222;
  v96 = v286;
  sub_254F27D60();
  if (sub_254EB2F2C(v122, 1, v287) == 1)
  {
    (*(v119 + 8))(v120, v121);
    sub_254EB306C(v122, &qword_27F75EEA0, &qword_254F2B5C8);
  }

  else
  {
    v208 = v228;
    sub_254F07FF4(v122, v228, &qword_27F75EEA8, &qword_254F2B5D0);
    sub_254F27C90();
    v209 = sub_254F29290();
    sub_254EB2F04(v258, 1, 1, v209);
    v210 = v275;
    sub_254F28920();
    (*(v259 + 104))(v210, *MEMORY[0x277D1D360], v260);
    v211 = v269;
    sub_254F07FAC(v208, v269, &qword_27F75EEA8, &qword_254F2B5D0);
    v212 = *(v287 + 48);
    v213 = sub_254F27F10();
    v214 = v271;
    (*(*(v213 - 8) + 32))(v271, v211, v213);
    sub_254EB2F04(v214, 0, 1, v213);
    sub_254F27D70();
    v215 = v273;
    sub_254F07FF4(v214, v273, &qword_27F75EE98, &qword_254F2B5C0);
    (*(v283 + 32))(v215 + *(v272 + 48), v211 + v212, v280);
    sub_254F07FAC(v215, v274, &qword_27F75F468, &qword_254F2C6E0);
    type metadata accessor for UIContextRetriever();
    sub_254F007D8();

    sub_254F01258();
    v216 = v215;
    v94 = v283;
    v93 = v284;
    sub_254EB306C(v216, &qword_27F75F468, &qword_254F2C6E0);
    v217 = v261;
    sub_254F28930();
    v218 = v264;
    sub_254F16BD0();
    v219 = *(*v218 + 16);
    sub_254F16C78(v219);
    sub_254EB306C(v228, &qword_27F75EEA8, &qword_254F2B5D0);
    (*(v233 + 8))(v232, v234);
    v220 = *v218;
    *(v220 + 16) = v219 + 1;
    (*(v262 + 32))(v220 + ((*(v262 + 80) + 32) & ~*(v262 + 80)) + *(v262 + 72) * v219, v217, v263);
  }

  v91 = v281;
  v92 = v282;
  v111 = v278;
  v95 = v279;
LABEL_26:
  sub_254F27CD0();
  if (sub_254EB2F2C(v111, 1, v93) == 1)
  {
    v176 = &qword_27F75F318;
    v177 = &unk_254F2C4E0;
    v178 = v111;
LABEL_30:
    sub_254EB306C(v178, v176, v177);
    goto LABEL_32;
  }

  (*(v91 + 32))(v95, v111, v93);
  sub_254F27D60();
  if (sub_254EB2F2C(v90, 1, v287) == 1)
  {
    (*(v91 + 8))(v95, v93);
    v176 = &qword_27F75EEA0;
    v177 = &qword_254F2B5C8;
    v178 = v90;
    goto LABEL_30;
  }

  v179 = v255;
  sub_254F07FF4(v90, v255, &qword_27F75EEA8, &qword_254F2B5D0);
  sub_254F27F70();
  v281 = sub_254EC8BC0(&qword_27F75F430, &qword_254F2C6B8);
  v278 = *(v281 + 48);
  v180 = *(v91 + 16);
  v181 = v91;
  v182 = v244;
  v180(v244, v95, v93);
  v183 = v179;
  v184 = v269;
  sub_254F07FAC(v183, v269, &qword_27F75EEA8, &qword_254F2B5D0);
  v185 = *(v287 + 48);
  v186 = sub_254F27F10();
  v187 = v271;
  (*(*(v186 - 8) + 32))(v271, v184, v186);
  sub_254EB2F04(v187, 0, 1, v186);
  sub_254F27D70();
  v188 = v187;
  v189 = v273;
  sub_254F07FF4(v188, v273, &qword_27F75EE98, &qword_254F2B5C0);
  (*(v94 + 32))(v189 + *(v272 + 48), v184 + v185, v280);
  sub_254F07FAC(v189, v274, &qword_27F75F468, &qword_254F2C6E0);
  type metadata accessor for UIContextRetriever();
  sub_254F007D8();

  v190 = v286;
  v94 = v283;
  sub_254F01258();
  v92 = v282;
  sub_254EB306C(v189, &qword_27F75F468, &qword_254F2C6E0);
  sub_254EB2F04(v182, 0, 1, v281);
  sub_254EFA974(v182, v256, sub_254F06E50, MEMORY[0x277CC95F0], sub_254F068C8);
  sub_254EB306C(v255, &qword_27F75EEA8, &qword_254F2B5D0);
  (*(v181 + 8))(v279, v284);
  v96 = v190;
LABEL_32:
  type metadata accessor for UIContextRetriever();
  sub_254F27D70();
  sub_254F007D8();
  v192 = v191;

  sub_254F27D60();
  if (sub_254EB2F2C(v92, 1, v287) != 1)
  {
    v196 = v257;
    sub_254F07FF4(v92, v257, &qword_27F75EEA8, &qword_254F2B5D0);
    v197 = v254;
    sub_254EFA210(v192, v254);
    v198 = v276;
    if (sub_254EB2F2C(v197, 1, v276) == 1)
    {
      sub_254EB306C(v197, &qword_27F75F2E8, &qword_254F2C430);
    }

    else
    {
      v199 = sub_254F27F30();
      v201 = v200;
      v202 = (*(v266 + 8))(v197, v198);
      if (v201)
      {
        goto LABEL_38;
      }
    }

    v203 = v269;
    sub_254F07FAC(v196, v269, &qword_27F75EEA8, &qword_254F2B5D0);
    v204 = *(v287 + 48);
    v199 = sub_254F27E40();
    v201 = v205;
    (*(v94 + 8))(v203 + v204, v280);
    v206 = sub_254F27F10();
    (*(*(v206 - 8) + 8))(v203, v206);

    if (!v201)
    {

      goto LABEL_40;
    }

LABEL_38:
    MEMORY[0x28223BE20](v202);
    *(&v221 - 6) = v196;
    *(&v221 - 5) = v192;
    *(&v221 - 4) = v285;
    *(&v221 - 3) = v96;
    *(&v221 - 2) = v241;
    sub_254EF1A04(v199, v201, sub_254F07F9C, (&v221 - 8));

LABEL_40:
    v193 = &qword_27F75EEA8;
    v194 = &qword_254F2B5D0;
    v195 = v196;
    return sub_254EB306C(v195, v193, v194);
  }

  v193 = &qword_27F75EEA0;
  v194 = &qword_254F2B5C8;
  v195 = v92;
  return sub_254EB306C(v195, v193, v194);
}

void sub_254F007D8()
{
  sub_254EC1A1C();
  v1 = v0;
  sub_254F27E90();
  sub_254EB2CBC();
  MEMORY[0x28223BE20](v2);
  sub_254EB3AB8();
  v5 = v4 - v3;
  v52 = sub_254F27D00();
  sub_254EB2CBC();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_254EB3AB8();
  v51 = v10 - v9;
  sub_254EB7FC4();
  v11 = sub_254F27F50();
  sub_254EB2CBC();
  v53 = v12;
  MEMORY[0x28223BE20](v13);
  sub_254EB3D38();
  v50 = v14;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v15);
  sub_254EB59E4();
  v58 = v16;
  sub_254EB7FC4();
  v17 = sub_254F27F10();
  sub_254EB2CBC();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_254EB3AB8();
  v23 = v22 - v21;
  v24 = *(v1 + 16);
  if (v24)
  {
    sub_254EB3A30();
    v26 = v1 + v25;
    v56 = *(v19 + 72);
    v57 = v27;
    v55 = *MEMORY[0x277D74630];
    v46 = (v7 + 8);
    v47 = (v7 + 32);
    v54 = (v53 + 32);
    v28 = MEMORY[0x277D84F90];
    v49 = v11;
    v48 = v17;
    do
    {
      v57(v23, v26, v17);
      sub_254F27EA0();
      v29 = sub_254EC38EC();
      if (v30(v29) == v55)
      {
        v31 = sub_254EC38EC();
        v32(v31);
        (*v47)(v51, v5, v52);
        sub_254F27CF0();
        (*v46)(v51, v52);
        v33 = sub_254F080D8();
        v34(v33);
        v35 = *v54;
        (*v54)(v58, v50, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_254EB4958();
          sub_254EF0ED8();
          v28 = v44;
        }

        v37 = *(v28 + 16);
        v36 = *(v28 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_254EB5124(v36);
          sub_254EF0ED8();
          v28 = v45;
        }

        *(v28 + 16) = v37 + 1;
        sub_254EB3A30();
        v11 = v49;
        v35(v28 + v38 + *(v39 + 72) * v37, v58, v49);
        v17 = v48;
      }

      else
      {
        v40 = sub_254F080D8();
        v41(v40);
        v42 = sub_254EC38EC();
        v43(v42);
      }

      v26 += v56;
      --v24;
    }

    while (v24);
  }

  sub_254EB4078();
}

uint64_t sub_254F00BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v71 = a5;
  v72 = a7;
  v57[3] = a6;
  v65 = a3;
  v66 = a4;
  v8 = sub_254EC8BC0(&qword_27F75EE98, &qword_254F2B5C0);
  MEMORY[0x28223BE20](v8 - 8);
  v64 = v57 - v9;
  v63 = sub_254EC8BC0(&qword_27F75EEA8, &qword_254F2B5D0);
  MEMORY[0x28223BE20](v63);
  v62 = v57 - v10;
  v11 = sub_254F28910();
  v67 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v57 - v15;
  v17 = sub_254F29290();
  result = MEMORY[0x28223BE20](v17);
  v21 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  if (!v22)
  {
    return result;
  }

  v24 = *(v20 + 16);
  v23 = v20 + 16;
  v25 = a1 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
  v60 = v17;
  v61 = (v67 + 16);
  v68 = *(v23 + 56);
  v69 = v24;
  v57[1] = v67 + 40;
  v57[2] = v67 + 32;
  v70 = v23;
  v58 = (v23 - 8);
  v59 = (v67 + 8);
  v73 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    v69(v21, v25, v17);
    v26 = v62;
    sub_254F07FAC(v65, v62, &qword_27F75EEA8, &qword_254F2B5D0);
    v27 = sub_254F27F10();
    v28 = v64;
    (*(*(v27 - 8) + 32))(v64, v26, v27);
    sub_254EB2F04(v28, 0, 1, v27);

    sub_254F01258();
    v29 = sub_254F27D10();
    if (*(v29 + 16) && (v30 = sub_254F057E4(0x72616D6972507369, 0xE900000000000079), (v31 & 1) != 0))
    {
      v32 = (*(v29 + 56) + 16 * v30);
      v34 = *v32;
      v33 = v32[1];

      if (v34 == 1702195828 && v33 == 0xE400000000000000)
      {
        goto LABEL_22;
      }

      v36 = sub_254F29B10();

      if (v36)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v37 = sub_254F27D10();
    if (!*(v37 + 16) || (v38 = sub_254F057E4(0x7463656C65537369, 0xEA00000000006465), (v39 & 1) == 0))
    {

LABEL_21:
      sub_254F27D30();
      goto LABEL_23;
    }

    v40 = (*(v37 + 56) + 16 * v38);
    v42 = *v40;
    v41 = v40[1];

    if (v42 == 1702195828 && v41 == 0xE400000000000000)
    {
LABEL_22:

      goto LABEL_23;
    }

    v44 = sub_254F29B10();

    if ((v44 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_23:
    sub_254F28820();
    (*v61)(v14);
    v45 = v72;
    swift_isUniquelyReferenced_nonNull_native();
    v74 = *v45;
    v46 = v74;
    *v45 = 0x8000000000000000;
    sub_254F0585C();
    if (__OFADD__(v46[2], (v48 & 1) == 0))
    {
      break;
    }

    v49 = v47;
    v50 = v48;
    sub_254EC8BC0(&qword_27F75F3F0, &qword_254F2C678);
    if (sub_254F29A50())
    {
      sub_254F0585C();
      v17 = v60;
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_36;
      }

      v49 = v51;
    }

    else
    {
      v17 = v60;
    }

    v53 = v74;
    if (v50)
    {
      (*(v67 + 40))(v74[7] + *(v67 + 72) * v49, v14, v11);
      v21 = v73;
    }

    else
    {
      v74[(v49 >> 6) + 8] |= 1 << v49;
      v21 = v73;
      v69((v53[6] + v49 * v68), v73, v17);
      (*(v67 + 32))(v53[7] + *(v67 + 72) * v49, v14, v11);
      v54 = v53[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_35;
      }

      v53[2] = v56;
    }

    (*v59)(v16, v11);
    (*v58)(v21, v17);
    *v72 = v53;

    v25 += v68;
    if (!--v22)
    {
      return result;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_254F29B50();
  __break(1u);
  return result;
}

void sub_254F01258()
{
  sub_254EC1A1C();
  v84 = v1;
  v85 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_254EC8BC0(&qword_27F75F318, &unk_254F2C4E0);
  sub_254EB2D90(v6);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v7);
  v72 = &v70 - v8;
  v9 = sub_254EC8BC0(&qword_27F75F2E8, &qword_254F2C430);
  sub_254EB2D90(v9);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v10);
  v80 = &v70 - v11;
  v12 = sub_254EB80DC();
  v14 = sub_254EC8BC0(v12, v13);
  v15 = sub_254EB2D90(v14);
  MEMORY[0x28223BE20](v15);
  sub_254EB3D38();
  v78 = v16;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v17);
  sub_254EB59E4();
  v77 = v18;
  sub_254EB7FC4();
  sub_254F288E0();
  sub_254EB2CBC();
  v82 = v20;
  v83 = v19;
  MEMORY[0x28223BE20](v19);
  sub_254EB3D38();
  v81 = v21;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v22);
  v24 = &v70 - v23;
  v25 = sub_254EC8BC0(&qword_27F75F468, &qword_254F2C6E0);
  sub_254EB2D80();
  MEMORY[0x28223BE20](v26);
  sub_254EB3D38();
  v76 = v27;
  sub_254EB3D2C();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v70 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v70 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v70 - v35;
  sub_254F07FF4(v5, &v70 - v35, &qword_27F75EE98, &qword_254F2B5C0);
  v37 = *(v25 + 48);
  v38 = sub_254F27E80();
  v39 = *(v38 - 8);
  (*(v39 + 32))(&v36[v37], v3, v38);
  sub_254F07FAC(v36, v34, &qword_27F75F468, &qword_254F2C6E0);
  v40 = *(v25 + 48);
  sub_254F27E70();
  v41 = *(v39 + 8);
  v41(&v34[v40], v38);
  v42 = v77;
  v86 = v24;
  sub_254F288C0();
  sub_254EB306C(v34, &qword_27F75EE98, &qword_254F2B5C0);
  sub_254F07FAC(v36, v31, &qword_27F75F468, &qword_254F2C6E0);
  v79 = v25;
  v75 = *(v25 + 48);
  sub_254F07FF4(v31, v42, &qword_27F75EE98, &qword_254F2B5C0);
  v43 = sub_254F27F10();
  v44 = sub_254EB81DC();
  v46 = sub_254EB2F2C(v44, v45, v43);
  v87 = v38;
  if (v46 == 1)
  {
    v47 = sub_254EC1B04();
    (v41)(v47);
    sub_254EB306C(v42, &qword_27F75EE98, &qword_254F2B5C0);
    v48 = 0uLL;
    v49 = 0uLL;
  }

  else
  {
    sub_254F27CB0();
    v74 = v50;
    v70 = v51;
    v73 = v52;
    v71 = v53;
    (*(*(v43 - 8) + 8))(v42, v43);
    *&v54 = v74;
    *(&v54 + 1) = v70;
    v74 = v54;
    *&v54 = v73;
    *(&v54 + 1) = v71;
    v73 = v54;
    v55 = sub_254EC1B04();
    (v41)(v55);
    v49 = v73;
    v48 = v74;
  }

  v88 = v48;
  v89 = v49;
  v90 = v46 == 1;
  sub_254F28890();
  v77 = v36;
  v56 = v76;
  sub_254F07FAC(v36, v76, &qword_27F75F468, &qword_254F2C6E0);
  v58 = v78;
  v57 = v79;
  v59 = *(v79 + 48);
  sub_254F07FF4(v56, v78, &qword_27F75EE98, &qword_254F2B5C0);
  if (sub_254EB2F2C(v58, 1, v43) == 1)
  {
    qword_254F2B5C0(v56 + v59, v87);
    sub_254EB306C(v58, &qword_27F75EE98, &qword_254F2B5C0);
  }

  else
  {
    sub_254F27D20();
    (*(*(v43 - 8) + 8))(v58, v43);
    qword_254F2B5C0(v56 + v59, v87);
  }

  v60 = v86;
  sub_254F288A0();
  v61 = v77;
  sub_254F07FAC(v77, v34, &qword_27F75F468, &qword_254F2C6E0);
  v62 = *(v57 + 48);
  sub_254F27E30();
  v63 = &v34[v62];
  v64 = v87;
  qword_254F2B5C0(v63, v87);
  sub_254F28880();
  sub_254EB306C(v34, &qword_27F75EE98, &qword_254F2B5C0);
  sub_254F07FAC(v61, v34, &qword_27F75F468, &qword_254F2C6E0);
  v65 = *(v57 + 48);
  v66 = sub_254F27E70();
  qword_254F2B5C0(&v34[v65], v64);
  sub_254EB306C(v34, &qword_27F75EE98, &qword_254F2B5C0);
  if (v66)
  {
    sub_254F07FAC(v61, v34, &qword_27F75F468, &qword_254F2C6E0);
    v67 = *(v57 + 48);
    sub_254F27E50();
    qword_254F2B5C0(&v34[v67], v87);
    sub_254F288B0();
    sub_254EB306C(v34, &qword_27F75EE98, &qword_254F2B5C0);
  }

  v68 = v82;
  v69 = v83;
  (*(v82 + 16))(v81, v60, v83);
  sub_254F288F0();
  sub_254F28860();
  (*(v68 + 8))(v60, v69);
  sub_254EB306C(v61, &qword_27F75F468, &qword_254F2C6E0);
  sub_254EB4078();
}

void *sub_254F01998(uint64_t a1, uint64_t a2)
{
  v202 = a2;
  v175 = sub_254EC8BC0(&qword_27F75F420, &qword_254F2C6A8);
  MEMORY[0x28223BE20](v175);
  v190 = &v153 - v3;
  v4 = sub_254EC8BC0(&qword_27F75EE50, &unk_254F2C4F0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v171 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v161 = &v153 - v7;
  v182 = sub_254F29290();
  v8 = *(v182 - 8);
  v9 = MEMORY[0x28223BE20](v182);
  v174 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v169 = &v153 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v160 = &v153 - v14;
  MEMORY[0x28223BE20](v13);
  v156 = &v153 - v15;
  v167 = sub_254F288E0();
  v203 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v166 = &v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_254EC8BC0(&qword_27F75F428, &qword_254F2C6B0);
  MEMORY[0x28223BE20](v17 - 8);
  v187 = &v153 - v18;
  v197 = sub_254F27980();
  v19 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v180 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_254F28910();
  v21 = *(v205 - 8);
  v22 = MEMORY[0x28223BE20](v205);
  v170 = &v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v186 = &v153 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v157 = &v153 - v27;
  MEMORY[0x28223BE20](v26);
  v199 = &v153 - v28;
  v29 = sub_254F27F80();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v188 = &v153 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v189 = &v153 - v33;
  v204 = sub_254EC8BC0(&qword_27F75F430, &qword_254F2C6B8);
  v196 = *(v204 - 8);
  v34 = MEMORY[0x28223BE20](v204);
  v36 = &v153 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34);
  v195 = &v153 - v38;
  MEMORY[0x28223BE20](v37);
  v198 = &v153 - v39;
  v179 = sub_254EC8BC0(&qword_27F75F438, &qword_254F2C6C0);
  MEMORY[0x28223BE20](v179);
  v41 = &v153 - v40;
  v42 = a1 + 64;
  v43 = 1 << *(a1 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(a1 + 64);
  v185 = ((v43 + 63) >> 6);
  v193 = (v30 + 32);
  v194 = (v30 + 16);
  v200 = (v21 + 32);
  v201 = (v21 + 16);
  v183 = v19;
  v178 = (v19 + 8);
  v191 = (v30 + 8);
  v192 = (v21 + 8);
  v165 = (v203 + 8);
  v164 = (v8 + 32);
  v168 = (v8 + 16);
  v163 = v21;
  v158 = v21 + 40;
  v159 = v8;
  v162 = (v8 + 8);
  v184 = a1;
  v46 = v29;

  v47 = 0;
  v181 = MEMORY[0x277D84F98];
  v203 = v46;
  v173 = v36;
  v176 = v42;
  v177 = v41;
  while (v45)
  {
LABEL_9:
    v49 = __clz(__rbit64(v45)) | (v47 << 6);
    v50 = v184;
    v51 = *(v184 + 48);
    v52 = sub_254F27F50();
    (*(*(v52 - 8) + 16))(v41, v51 + *(*(v52 - 8) + 72) * v49, v52);
    v53 = *(v196 + 72);
    v54 = *(v50 + 56) + v53 * v49;
    v55 = &v41[*(v179 + 48)];
    sub_254F07FAC(v54, v55, &qword_27F75F430, &qword_254F2C6B8);
    v56 = v203;
    v57 = v204;
    v58 = *(v204 + 48);
    v59 = v198;
    (*v194)(v198, v55, v203);
    v60 = v59 + *(v57 + 48);
    v61 = v55 + v58;
    v62 = v205;
    v172 = *v201;
    (v172)(v60, v61, v205);
    v63 = v59;
    v64 = v195;
    sub_254F07FAC(v63, v195, &qword_27F75F430, &qword_254F2C6B8);
    v65 = *(v57 + 48);
    v66 = v189;
    (*v193)(v189, v64, v56);
    v67 = *v200;
    (*v200)(v199, v64 + v65, v62);
    v68 = v180;
    sub_254F27F70();
    v69 = v202;
    if (*(v202 + 16) && (sub_254F05AD4(v68), (v71 & 1) != 0))
    {
      sub_254F07FAC(*(v69 + 56) + v70 * v53, v187, &qword_27F75F430, &qword_254F2C6B8);
      v72 = 0;
    }

    else
    {
      v72 = 1;
    }

    v73 = v199;
    v41 = v177;
    v42 = v176;
    v74 = v187;
    v75 = v204;
    sub_254EB2F04(v187, v72, 1, v204);
    (*v178)(v68, v197);
    LODWORD(v75) = sub_254EB2F2C(v74, 1, v75);
    sub_254EB306C(v74, &qword_27F75F428, &qword_254F2C6B0);
    v76 = v75 == 1;
    v77 = v203;
    if (!v76)
    {
      (*v192)(v73, v205);
      (*v191)(v66, v77);
      sub_254EB306C(v198, &qword_27F75F430, &qword_254F2C6B8);
      v46 = v77;
      goto LABEL_24;
    }

    v78 = v203;
    v79 = v166;
    sub_254F28900();
    v80 = sub_254F288D0();
    (*v165)(v79, v167);
    if ((v80 & 1) == 0)
    {
      (*v192)(v73, v205);
      v89 = *v191;
      v90 = v189;
      goto LABEL_21;
    }

    v81 = v189;
    v82 = sub_254F27F60();
    v83 = v161;
    if (!v82)
    {
      (*v192)(v73, v205);
      v89 = *v191;
      v90 = v81;
LABEL_21:
      v46 = v78;
      v89(v90, v78);
LABEL_22:
      v86 = v198;
      v87 = &qword_27F75F430;
      v88 = &qword_254F2C6B8;
      goto LABEL_23;
    }

    v155 = v67;
    v84 = v82;
    sub_254F052EC(v82, v161);
    v85 = v182;
    if (sub_254EB2F2C(v83, 1, v182) != 1)
    {
      v154 = v84;
      v91 = v156;
      (*v164)(v156, v83, v85);
      v92 = *v168;
      (*v168)(v160, v91, v85);
      (v172)(v157, v73, v205);
      v93 = v181;
      swift_isUniquelyReferenced_nonNull_native();
      v206 = v93;
      sub_254F0585C();
      if (__OFADD__(v93[2], (v95 & 1) == 0))
      {
        goto LABEL_64;
      }

      v96 = v94;
      v97 = v95;
      sub_254EC8BC0(&qword_27F75F3F0, &qword_254F2C678);
      if (sub_254F29A50())
      {
        sub_254F0585C();
        v100 = v189;
        v101 = v155;
        if ((v97 & 1) != (v99 & 1))
        {
          goto LABEL_66;
        }

        v96 = v98;
      }

      else
      {
        v100 = v189;
        v101 = v155;
      }

      v102 = v206;
      v181 = v206;
      if (v97)
      {
        v103 = v205;
        (*(v163 + 40))(v206[7] + *(v163 + 72) * v96, v157, v205);
      }

      else
      {
        v206[(v96 >> 6) + 8] |= 1 << v96;
        v92(v102[6] + *(v159 + 72) * v96, v160, v182);
        v101(v102[7] + *(v163 + 72) * v96, v157, v205);
        v104 = v102[2];
        v105 = __OFADD__(v104, 1);
        v106 = v104 + 1;
        if (v105)
        {
          goto LABEL_65;
        }

        v102[2] = v106;
        v103 = v205;
      }

      v46 = v203;
      v107 = *v162;
      v108 = v182;
      (*v162)(v160, v182);

      v107(v156, v108);
      (*v192)(v199, v103);
      (*v191)(v100, v46);
      goto LABEL_22;
    }

    (*v192)(v73, v205);
    v46 = v78;
    (*v191)(v189, v78);
    sub_254EB306C(v198, &qword_27F75F430, &qword_254F2C6B8);
    v86 = v83;
    v87 = &qword_27F75EE50;
    v88 = &unk_254F2C4F0;
LABEL_23:
    sub_254EB306C(v86, v87, v88);
LABEL_24:
    v45 &= v45 - 1;
    sub_254EB306C(v41, &qword_27F75F438, &qword_254F2C6C0);
  }

  while (1)
  {
    v48 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
      goto LABEL_61;
    }

    if (v48 >= v185)
    {
      break;
    }

    v45 = *(v42 + 8 * v48);
    ++v47;
    if (v45)
    {
      v47 = v48;
      goto LABEL_9;
    }
  }

  v109 = (v202 + 64);
  v110 = 1 << *(v202 + 32);
  v111 = -1;
  if (v110 < 64)
  {
    v111 = ~(-1 << v110);
  }

  v112 = v111 & *(v202 + 64);
  v113 = (v110 + 63) >> 6;
  v198 = v183 + 16;

  v114 = 0;
  v115 = v205;
  v116 = v173;
  v189 = v109;
  v187 = v113;
  while (v112)
  {
    v117 = v46;
LABEL_43:
    v119 = __clz(__rbit64(v112)) | (v114 << 6);
    v120 = v202;
    v121 = v190;
    (*(v183 + 16))(v190, *(v202 + 48) + *(v183 + 72) * v119, v197);
    v122 = *(v120 + 56) + *(v196 + 72) * v119;
    v123 = v121 + *(v175 + 48);
    sub_254F07FAC(v122, v123, &qword_27F75F430, &qword_254F2C6B8);
    v124 = v204;
    v125 = *(v204 + 48);
    (*v194)(v116, v123, v117);
    v126 = v116 + *(v124 + 48);
    v199 = *v201;
    (v199)(v126, v123 + v125, v115);
    v127 = v195;
    sub_254F07FAC(v116, v195, &qword_27F75F430, &qword_254F2C6B8);
    v128 = *(v124 + 48);
    v129 = v188;
    (*v193)(v188, v127, v117);
    v130 = v127 + v128;
    v131 = v129;
    v132 = v186;
    v185 = *v200;
    v185(v186, v130, v115);
    v133 = sub_254F27F60();
    if (v133)
    {
      v134 = v133;
      v135 = v171;
      sub_254F052EC(v133, v171);
      v136 = v182;
      if (sub_254EB2F2C(v135, 1, v182) == 1)
      {

        v115 = v205;
        (*v192)(v132, v205);
        v46 = v203;
        (*v191)(v188, v203);
        v116 = v173;
        sub_254EB306C(v173, &qword_27F75F430, &qword_254F2C6B8);
        sub_254EB306C(v135, &qword_27F75EE50, &unk_254F2C4F0);
      }

      else
      {
        v137 = v169;
        (*v164)(v169, v135, v136);
        v184 = *v168;
        (v184)(v174, v137, v136);
        (v199)(v170, v132, v205);
        v138 = v181;
        swift_isUniquelyReferenced_nonNull_native();
        v206 = v138;
        sub_254F0585C();
        if (__OFADD__(v138[2], (v140 & 1) == 0))
        {
          goto LABEL_62;
        }

        v141 = v139;
        v142 = v140;
        sub_254EC8BC0(&qword_27F75F3F0, &qword_254F2C678);
        if (sub_254F29A50())
        {
          sub_254F0585C();
          v46 = v203;
          if ((v142 & 1) != (v144 & 1))
          {
            goto LABEL_66;
          }

          v141 = v143;
        }

        else
        {
          v46 = v203;
        }

        v145 = v206;
        v181 = v206;
        if (v142)
        {
          v146 = v205;
          (*(v163 + 40))(v206[7] + *(v163 + 72) * v141, v170, v205);
          v147 = v182;
        }

        else
        {
          v206[(v141 >> 6) + 8] |= 1 << v141;
          v147 = v182;
          (v184)(v145[6] + *(v159 + 72) * v141, v174, v182);
          v185((v145[7] + *(v163 + 72) * v141), v170, v205);
          v148 = v145[2];
          v105 = __OFADD__(v148, 1);
          v149 = v148 + 1;
          if (v105)
          {
            goto LABEL_63;
          }

          v145[2] = v149;
          v146 = v205;
        }

        v150 = *v162;
        (*v162)(v174, v147);

        v150(v169, v147);
        (*v192)(v186, v146);
        (*v191)(v188, v46);
        v151 = v173;
        sub_254EB306C(v173, &qword_27F75F430, &qword_254F2C6B8);
        v115 = v146;
        v116 = v151;
      }
    }

    else
    {
      (*v192)(v132, v115);
      (*v191)(v131, v117);
      sub_254EB306C(v116, &qword_27F75F430, &qword_254F2C6B8);
      v46 = v117;
    }

    v109 = v189;
    v113 = v187;
    v112 &= v112 - 1;
    sub_254EB306C(v190, &qword_27F75F420, &qword_254F2C6A8);
  }

  while (1)
  {
    v118 = v114 + 1;
    if (__OFADD__(v114, 1))
    {
      break;
    }

    if (v118 >= v113)
    {

      return v181;
    }

    v112 = *&v109[8 * v118];
    ++v114;
    if (v112)
    {
      v117 = v46;
      v114 = v118;
      goto LABEL_43;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  result = sub_254F29B50();
  __break(1u);
  return result;
}

void *sub_254F02DE8(int64_t a1)
{
  v139 = sub_254EC8BC0(&qword_27F75F3E0, &qword_254F2C668);
  v2 = MEMORY[0x28223BE20](v139);
  v128 = &v128 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v135 = &v128 - v5;
  MEMORY[0x28223BE20](v4);
  v129 = &v128 - v6;
  v165 = sub_254EC8BC0(&qword_27F75ED80, &qword_254F2AF68);
  v157 = *(v165 - 8);
  v7 = MEMORY[0x28223BE20](v165);
  v162 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v149 = &v128 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v164 = &v128 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v148 = &v128 - v14;
  MEMORY[0x28223BE20](v13);
  v150 = &v128 - v15;
  v144 = sub_254F288E0();
  v16 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v152 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_254F28910();
  v18 = *(v159 - 8);
  v19 = MEMORY[0x28223BE20](v159);
  v163 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v161 = &v128 - v21;
  v166 = sub_254F29290();
  v22 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v153 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_254EC8BC0(&qword_27F75F3C0, &qword_254F2C648);
  v24 = MEMORY[0x28223BE20](v133);
  v145 = &v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v132 = &v128 - v27;
  MEMORY[0x28223BE20](v26);
  v141 = &v128 - v28;
  v29 = a1 + 64;
  v30 = 1 << *(a1 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(a1 + 64);
  v33 = (v30 + 63) >> 6;
  v147 = v22 + 16;
  v151 = v18 + 16;
  v155 = (v22 + 32);
  v156 = v18;
  v160 = (v18 + 32);
  v158 = (v18 + 8);
  v142 = v16 + 16;
  v143 = v16;
  v140 = (v16 + 8);
  v146 = v22;
  v154 = (v22 + 8);
  v134 = a1;

  v34 = 0;
  v35 = MEMORY[0x277D84F98];
  v131 = a1 + 64;
  v130 = v33;
  if (v32)
  {
    while (1)
    {
      v138 = v35;
LABEL_9:
      v37 = __clz(__rbit64(v32)) | (v34 << 6);
      v38 = v134;
      v39 = v146;
      v40 = *(v134 + 48) + *(v146 + 72) * v37;
      v137 = *(v146 + 16);
      v41 = v141;
      (v137)(v141, v40, v166);
      v42 = v156;
      v43 = *(v38 + 56) + *(v156 + 72) * v37;
      v44 = v133;
      v45 = *(v133 + 48);
      v136 = *(v156 + 16);
      v46 = v159;
      v136(v41 + v45, v43, v159);
      v47 = v132;
      sub_254F07FAC(v41, v132, &qword_27F75F3C0, &qword_254F2C648);
      v48 = *(v44 + 48);
      (*(v39 + 32))(v153, v47, v166);
      (*(v42 + 32))(v161, v47 + v48, v46);
      v49 = v145;
      sub_254F07FAC(v41, v145, &qword_27F75F3C0, &qword_254F2C648);
      v50 = *(v44 + 48);
      v51 = v152;
      sub_254F28900();
      v52 = *(v42 + 8);
      v52(v49 + v50, v46);
      v53 = *(v165 + 48);
      v54 = v150;
      (v137)(v150, v153, v166);
      v136(v54 + v53, v161, v46);
      v55 = v138;
      swift_isUniquelyReferenced_nonNull_native();
      v168 = v55;
      sub_254F0590C(v51);
      if (__OFADD__(*(v55 + 16), (v57 & 1) == 0))
      {
        goto LABEL_61;
      }

      v58 = v56;
      v59 = v57;
      sub_254EC8BC0(&qword_27F75F3E8, &qword_254F2C670);
      v60 = sub_254F29A50();
      v35 = v168;
      if (v60)
      {
        sub_254F0590C(v152);
        if ((v59 & 1) != (v62 & 1))
        {
          goto LABEL_63;
        }

        v58 = v61;
      }

      if ((v59 & 1) == 0)
      {
        *(v35 + 8 * (v58 >> 6) + 64) |= 1 << v58;
        (*(v143 + 16))(*(v35 + 48) + *(v143 + 72) * v58, v152, v144);
        *(*(v35 + 56) + 8 * v58) = MEMORY[0x277D84F90];
        v63 = *(v35 + 16);
        v64 = __OFADD__(v63, 1);
        v65 = v63 + 1;
        if (v64)
        {
          goto LABEL_62;
        }

        *(v35 + 16) = v65;
      }

      v66 = *(v35 + 56);
      v67 = *(v66 + 8 * v58);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v66 + 8 * v58) = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_254EF01B4();
        v67 = v73;
        *(v66 + 8 * v58) = v73;
      }

      v69 = *(v67 + 16);
      if (v69 >= *(v67 + 24) >> 1)
      {
        sub_254EF01B4();
        *(v66 + 8 * v58) = v74;
      }

      v32 &= v32 - 1;
      (*v140)(v152, v144);
      v52(v161, v159);
      v70 = *v154;
      v71 = v166;
      (*v154)(v153, v166);
      sub_254EB306C(v141, &qword_27F75F3C0, &qword_254F2C648);
      v72 = *(v66 + 8 * v58);
      *(v72 + 16) = v69 + 1;
      sub_254F07FF4(v150, v72 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v69, &qword_27F75ED80, &qword_254F2AF68);
      v70(v145, v71);
      v29 = v131;
      v33 = v130;
      if (!v32)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      goto LABEL_58;
    }

    if (v36 >= v33)
    {
      break;
    }

    v32 = *(v29 + 8 * v36);
    ++v34;
    if (v32)
    {
      v138 = v35;
      v34 = v36;
      goto LABEL_9;
    }
  }

  v168 = v35;
  v75 = 1 << *(v35 + 32);
  v76 = -1;
  if (v75 < 64)
  {
    v76 = ~(-1 << v75);
  }

  v77 = v76 & *(v35 + 64);
  v78 = (v75 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v79 = 0;
  v80 = v129;
  if (v77)
  {
    while (1)
    {
      v81 = v79;
LABEL_30:
      v82 = __clz(__rbit64(v77));
      v77 &= v77 - 1;
      v83 = v82 | (v81 << 6);
      (*(v143 + 16))(v80, *(v35 + 48) + *(v143 + 72) * v83, v144);
      v84 = *(*(v35 + 56) + 8 * v83);
      *(v80 + *(v139 + 48)) = v84;

      sub_254F04C4C(v80, v84, &v168);
      sub_254EB306C(v80, &qword_27F75F3E0, &qword_254F2C668);
      if (!v77)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
LABEL_26:
    v81 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      goto LABEL_59;
    }

    if (v81 >= v78)
    {
      break;
    }

    v77 = *(v35 + 64 + 8 * v81);
    ++v79;
    if (v77)
    {
      v79 = v81;
      goto LABEL_30;
    }
  }

  v85 = (v168 + 64);
  v86 = 1 << *(v168 + 32);
  v87 = -1;
  if (v86 < 64)
  {
    v87 = ~(-1 << v86);
  }

  v88 = v87 & *(v168 + 64);
  v89 = (v86 + 63) >> 6;
  v145 = (v156 + 40);
  v137 = v168;

  v90 = 0;
  v91 = MEMORY[0x277D84F98];
  v92 = v149;
  v136 = v85;
  v134 = v89;
  if (v88)
  {
LABEL_39:
    while (1)
    {
      v141 = v88;
      v138 = v90;
      v94 = __clz(__rbit64(v88)) | (v90 << 6);
      v95 = v137;
      v96 = v143;
      v97 = v135;
      v98 = v144;
      (*(v143 + 16))(v135, *(v137 + 48) + *(v143 + 72) * v94, v144);
      v99 = *(*(v95 + 56) + 8 * v94);
      v100 = v139;
      *(v97 + *(v139 + 48)) = v99;
      v101 = v97;
      v102 = v128;
      sub_254F07FAC(v101, v128, &qword_27F75F3E0, &qword_254F2C668);
      v103 = *(v102 + *(v100 + 48));
      v104 = *(v96 + 8);

      v104(v102, v98);
      v153 = *(v103 + 16);
      if (v153)
      {
        break;
      }

LABEL_52:
      v88 = (v141 - 1) & v141;

      sub_254EB306C(v135, &qword_27F75F3E0, &qword_254F2C668);
      v85 = v136;
      v89 = v134;
      v90 = v138;
      if (!v88)
      {
        goto LABEL_35;
      }
    }

    v105 = 0;
    v106 = *(v165 + 48);
    v151 = v103 + ((*(v157 + 80) + 32) & ~*(v157 + 80));
    v152 = v106;
    v150 = v103;
    while (v105 < *(v103 + 16))
    {
      v107 = *(v157 + 72);
      v161 = v105;
      v108 = v148;
      sub_254F07FAC(v151 + v107 * v105, v148, &qword_27F75ED80, &qword_254F2AF68);
      v110 = v164;
      v109 = v165;
      v111 = *(v165 + 48);
      (*v155)(v164, v108, v166);
      v112 = *v160;
      v113 = v108 + v152;
      v114 = v159;
      (*v160)(v110 + v111, v113, v159);
      sub_254F07FAC(v110, v92, &qword_27F75ED80, &qword_254F2AF68);
      v115 = v162;
      sub_254F07FAC(v110, v162, &qword_27F75ED80, &qword_254F2AF68);
      v112(v163, v115 + *(v109 + 48), v114);
      swift_isUniquelyReferenced_nonNull_native();
      v167 = v91;
      sub_254F0585C();
      if (__OFADD__(v91[2], (v117 & 1) == 0))
      {
        goto LABEL_56;
      }

      v118 = v116;
      v119 = v117;
      sub_254EC8BC0(&qword_27F75F3F0, &qword_254F2C678);
      if (sub_254F29A50())
      {
        v92 = v149;
        sub_254F0585C();
        if ((v119 & 1) != (v121 & 1))
        {
          goto LABEL_63;
        }

        v118 = v120;
      }

      else
      {
        v92 = v149;
      }

      v91 = v167;
      if (v119)
      {
        (*(v156 + 40))(v167[7] + *(v156 + 72) * v118, v163, v114);
        sub_254EB306C(v164, &qword_27F75ED80, &qword_254F2AF68);
      }

      else
      {
        v167[(v118 >> 6) + 8] |= 1 << v118;
        (*(v146 + 16))(v91[6] + *(v146 + 72) * v118, v92, v166);
        v112(v91[7] + *(v156 + 72) * v118, v163, v114);
        sub_254EB306C(v164, &qword_27F75ED80, &qword_254F2AF68);
        v122 = v91[2];
        v64 = __OFADD__(v122, 1);
        v123 = v122 + 1;
        if (v64)
        {
          goto LABEL_57;
        }

        v91[2] = v123;
      }

      v105 = v161 + 1;
      v124 = v166;
      v125 = *(v165 + 48);
      v126 = *v154;
      (*v154)(v92, v166);
      v126(v162, v124);
      (*v158)(v92 + v125, v114);
      v103 = v150;
      if (v153 == v105)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    while (1)
    {
LABEL_63:
      sub_254F29B50();
      __break(1u);
    }
  }

  while (1)
  {
LABEL_35:
    v93 = v90 + 1;
    if (__OFADD__(v90, 1))
    {
      goto LABEL_60;
    }

    if (v93 >= v89)
    {
      break;
    }

    v88 = *(v85 + v93);
    ++v90;
    if (v88)
    {
      v90 = v93;
      goto LABEL_39;
    }
  }

  return v91;
}

void sub_254F03D80(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v136 = a3;
  v131 = a2;
  v141 = a4;
  v5 = sub_254F291E0();
  v139 = *(v5 - 8);
  v140 = v5;
  MEMORY[0x28223BE20](v5);
  v138 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254EC8BC0(&qword_27F75F3D0, &qword_254F2C658);
  MEMORY[0x28223BE20](v7 - 8);
  v121 = &v114 - v8;
  v9 = sub_254F28910();
  v129 = *(v9 - 8);
  v130 = v9;
  MEMORY[0x28223BE20](v9);
  v128 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_254EC8BC0(&qword_27F75EE50, &unk_254F2C4F0);
  MEMORY[0x28223BE20](v11 - 8);
  v125 = &v114 - v12;
  v13 = sub_254EC8BC0(&qword_27F75F3D8, &qword_254F2C660);
  MEMORY[0x28223BE20](v13 - 8);
  v122 = &v114 - v14;
  v124 = sub_254F28800();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v126 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_254EC8BC0(&qword_27F75EDF8, &unk_254F2B560);
  MEMORY[0x28223BE20](v16 - 8);
  v143 = &v114 - v17;
  v142 = sub_254F286E0();
  v134 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v133 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_254F28DA0();
  v137 = *(v135 - 8);
  v19 = MEMORY[0x28223BE20](v135);
  v132 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v114 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v114 - v24;
  v26 = sub_254F29320();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_254F29330();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = a1;
  sub_254F29280();
  v34 = (*(v31 + 88))(v33, v30);
  if (v34 == *MEMORY[0x277D72D28])
  {
    (*(v31 + 96))(v33, v30);
    v35 = *(*v33 + 32);
    v36 = *(*v33 + 40);

LABEL_5:

    goto LABEL_7;
  }

  if (v34 == *MEMORY[0x277D72D18])
  {
    (*(v31 + 96))(v33, v30);
    v37 = swift_projectBox();
    (*(v27 + 16))(v29, v37, v26);
    v38 = sub_254F29310();
    v39 = v29;
    v36 = v40;
    v41 = v26;
    v35 = v38;
    (*(v27 + 8))(v39, v41);
    goto LABEL_5;
  }

  (*(v31 + 8))(v33, v30);
  v35 = 0;
  v36 = 0xE000000000000000;
LABEL_7:
  v42 = sub_254F0CB54();
  if (!v42)
  {
    goto LABEL_46;
  }

  v43 = v42;
  v44 = sub_254F07A70(v42);
  if (!v44)
  {

    goto LABEL_46;
  }

  v45 = v44;
  v119 = [v43 transferableContentTypes];
  if (!v119)
  {

    goto LABEL_46;
  }

  v114 = v35;
  v116 = v36;
  v117 = v43;
  sub_254F28DB0();
  v46 = sub_254F28D90();
  v47 = v137 + 8;
  v48 = *(v137 + 8);
  v49 = v135;
  v48(v25, v135);
  v50 = *(v46 + 16);

  v137 = v47;
  v115 = v48;
  if (!v50)
  {

    goto LABEL_26;
  }

  sub_254F28DB0();
  v51 = sub_254F28D90();
  v48(v23, v49);
  v52 = sub_254EEFD18(v45);
  if (!v52)
  {

    v55 = MEMORY[0x277D84F90];
LABEL_25:
    v65 = sub_254F0CB58(v55);
    v67 = sub_254F09C5C(v65, v51, v66);

    v68 = v67[2];

    if (v68)
    {
LABEL_26:
      v69 = [v119 exportableTypes];
      sub_254EB48D8(0, &unk_2814260E0, 0x277D237C8);
      v70 = sub_254F29560();

      v71 = sub_254EC5594(v70);
      v72 = 0;
      v120 = MEMORY[0x277D84F90];
      v118 = (v134 + 32);
      while (v71 != v72)
      {
        if ((v70 & 0xC000000000000001) != 0)
        {
          v73 = MEMORY[0x259C2E0D0](v72, v70);
        }

        else
        {
          if (v72 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v73 = *(v70 + 8 * v72 + 32);
        }

        v74 = v73;
        v75 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v76 = [v73 contentType];
        sub_254F29450();

        v77 = v143;
        sub_254F286F0();

        if (sub_254EB2F2C(v77, 1, v142) == 1)
        {
          sub_254EB306C(v77, &qword_27F75EDF8, &unk_254F2B560);
          ++v72;
        }

        else
        {
          v78 = *v118;
          (*v118)(v133, v77, v142);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_254EF0E10();
            v120 = v81;
          }

          v79 = *(v120 + 16);
          if (v79 >= *(v120 + 24) >> 1)
          {
            sub_254EF0E10();
            v120 = v82;
          }

          v80 = v120;
          *(v120 + 16) = v79 + 1;
          v78((v80 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v79), v133, v142);
          v72 = v75;
        }
      }

      sub_254F0CE70();
      v84 = v83;

      v85 = v132;
      v86 = sub_254F28DB0();
      v87 = MEMORY[0x259C2D4E0](v86);
      v88 = v135;
      v89 = v115;
      v90.n128_f64[0] = v115(v85, v135);
      v91 = sub_254F09BDC(v87, v84, v90);

      v92 = v91[2];

      if (v92)
      {

        v93 = sub_254F27EB0();
        sub_254EB2F04(v122, 1, 1, v93);
        v94 = sub_254F29290();
        v95 = v125;
        (*(*(v94 - 8) + 16))(v125, v127, v94);
        sub_254EB2F04(v95, 0, 1, v94);
        v96 = v126;
        sub_254F28960();
        v97 = MEMORY[0x277D1D368];
      }

      else
      {
        sub_254F28DB0();
        v98 = sub_254F28D80();
        v99.n128_f64[0] = v89(v85, v88);
        v100 = sub_254F09BDC(v98, v84, v99);

        v101 = v100[2];

        if (!v101)
        {
          goto LABEL_45;
        }

        v102 = sub_254F27C20();
        sub_254EB2F04(v121, 1, 1, v102);
        v103 = sub_254F29290();
        v104 = v125;
        (*(*(v103 - 8) + 16))(v125, v127, v103);
        sub_254EB2F04(v104, 0, 1, v103);
        v96 = v126;
        sub_254F28920();
        v97 = MEMORY[0x277D1D360];
      }

      (*(v123 + 104))(v96, *v97, v124);
      (*(v129 + 16))(v128, v131, v130);
      v105 = v141;
      sub_254F28930();

      v106 = 0;
      goto LABEL_50;
    }

LABEL_45:

    v36 = v116;
    v35 = v114;
LABEL_46:
    v107 = v138;
    sub_254F284E0();

    v108 = sub_254F291D0();
    v109 = sub_254F296E0();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v144 = v111;
      *v110 = 136380675;
      v112 = sub_254EC2D74(v35, v36, &v144);

      *(v110 + 4) = v112;
      _os_log_impl(&dword_254EAE000, v108, v109, "%{private}s did not match filtering criteria.", v110, 0xCu);
      sub_254EB2BBC(v111);
      MEMORY[0x259C2EB80](v111, -1, -1);
      MEMORY[0x259C2EB80](v110, -1, -1);
    }

    else
    {
    }

    (*(v139 + 8))(v107, v140);
    v106 = 1;
    v105 = v141;
LABEL_50:
    v113 = sub_254F289A0();
    sub_254EB2F04(v105, v106, 1, v113);
    return;
  }

  v53 = v52;
  v120 = v51;
  v144 = MEMORY[0x277D84F90];
  sub_254ECA804(0, v52 & ~(v52 >> 63), 0);
  if ((v53 & 0x8000000000000000) == 0)
  {
    v54 = 0;
    v55 = v144;
    do
    {
      if ((v45 & 0xC000000000000001) != 0)
      {
        v56 = MEMORY[0x259C2E0D0](v54, v45);
      }

      else
      {
        v56 = *(v45 + 8 * v54 + 32);
      }

      v57 = v56;
      v58 = [v56 name];
      v59 = sub_254F29450();
      v61 = v60;

      v144 = v55;
      v63 = *(v55 + 16);
      v62 = *(v55 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_254ECA804(v62 > 1, v63 + 1, 1);
        v55 = v144;
      }

      ++v54;
      *(v55 + 16) = v63 + 1;
      v64 = v55 + 16 * v63;
      *(v64 + 32) = v59;
      *(v64 + 40) = v61;
    }

    while (v53 != v54);

    v51 = v120;
    goto LABEL_25;
  }

LABEL_53:
  __break(1u);
}

uint64_t sub_254F04C4C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v55 = a1;
  v56 = a3;
  v64 = sub_254F288E0();
  v4 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_254EC8BC0(&qword_27F75F3F8, &qword_254F2C680);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v53 - v7;
  v72 = sub_254EC8BC0(&qword_27F75ED80, &qword_254F2AF68);
  v67 = *(v72 - 8);
  v8 = MEMORY[0x28223BE20](v72);
  v58 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v62 = &v53 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v71 = &v53 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v54 = &v53 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v53 - v19;
  v21 = 0;
  v66 = a2;
  v70 = *(a2 + 16);
  v60 = (v4 + 8);
  v59 = MEMORY[0x277D84F90];
  v65 = &v53 - v19;
  v61 = v14;
  while (v70 != v21)
  {
    v69 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v22 = v21;
    v68 = *(v67 + 72);
    sub_254F07FAC(v66 + v69 + v68 * v21, v20, &qword_27F75ED80, &qword_254F2AF68);
    v23 = v71;
    sub_254F07FAC(v20, v71, &qword_27F75ED80, &qword_254F2AF68);
    v24 = *(v72 + 48);
    v25 = sub_254F28810();
    v26 = sub_254F28910();
    v27 = *(*(v26 - 8) + 8);
    v27(v23 + v24, v26);
    if (v25)
    {
      v38 = sub_254F29290();
      (*(*(v38 - 8) + 8))(v71, v38);
      goto LABEL_10;
    }

    sub_254F07FAC(v20, v14, &qword_27F75ED80, &qword_254F2AF68);
    v28 = *(v72 + 48);
    v29 = sub_254F28830();
    v27(&v14[v28], v26);
    if (v29)
    {
      v30 = v62;
      sub_254F07FAC(v20, v62, &qword_27F75ED80, &qword_254F2AF68);
      v31 = *(v72 + 48);
      v32 = v63;
      sub_254F28900();
      v27(v30 + v31, v26);
      v33 = sub_254F288D0();
      (*v60)(v32, v64);
      v34 = sub_254F29290();
      v35 = v30;
      v14 = v61;
      (*(*(v34 - 8) + 8))(v35, v34);
    }

    else
    {
      v33 = 0;
    }

    v36 = sub_254F29290();
    v37 = *(*(v36 - 8) + 8);
    v37(v14, v36);
    v37(v71, v36);
    if (v33)
    {
LABEL_10:
      v20 = v65;
      sub_254F07FF4(v65, v58, &qword_27F75ED80, &qword_254F2AF68);
      v39 = v59;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_254ECA8F4(0, *(v39 + 16) + 1, 1);
        v39 = v73;
      }

      v42 = *(v39 + 16);
      v41 = *(v39 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_254ECA8F4(v41 > 1, v42 + 1, 1);
        v39 = v73;
      }

      v21 = v22 + 1;
      *(v39 + 16) = v42 + 1;
      v59 = v39;
      sub_254F07FF4(v58, v39 + v69 + v42 * v68, &qword_27F75ED80, &qword_254F2AF68);
    }

    else
    {
      v20 = v65;
      sub_254EB306C(v65, &qword_27F75ED80, &qword_254F2AF68);
      v21 = v22 + 1;
    }
  }

  v43 = v57;
  sub_254EFA2B8(v59, v57);

  if (sub_254EB2F2C(v43, 1, v72) == 1)
  {
    v44 = &qword_27F75F3F8;
    v45 = &qword_254F2C680;
    v46 = v43;
  }

  else
  {
    v47 = v54;
    sub_254F07FF4(v43, v54, &qword_27F75ED80, &qword_254F2AF68);
    sub_254EC8BC0(&qword_27F75ED78, &qword_254F2AF60);
    v48 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_254F2AE00;
    sub_254F07FAC(v47, v49 + v48, &qword_27F75ED80, &qword_254F2AF68);
    v50 = v56;
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v73 = *v50;
    sub_254F07218(v49, v55, v51);
    *v50 = v73;
    v46 = v47;
    v44 = &qword_27F75ED80;
    v45 = &qword_254F2AF68;
  }

  return sub_254EB306C(v46, v44, v45);
}

uint64_t sub_254F052EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v37 = a2;
  v2 = sub_254F291E0();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_254F288E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_254EC8BC0(&qword_27F75F2E8, &qword_254F2C430);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v15 = sub_254F28850();
  sub_254EFA210(v15, v14);

  v16 = sub_254F27F50();
  if (sub_254EB2F2C(v14, 1, v16) == 1)
  {
    sub_254EB306C(v14, &qword_27F75F2E8, &qword_254F2C430);
  }

  else
  {
    sub_254F27F30();
    v18 = v17;
    (*(*(v16 - 8) + 8))(v14, v16);
    if (v18)
    {
      goto LABEL_7;
    }
  }

  sub_254F28900();
  sub_254F28870();
  (*(v6 + 8))(v8, v5);
  if (sub_254EB2F2C(v12, 1, v16) != 1)
  {
    sub_254F27F30();
    v20 = v19;
    (*(*(v16 - 8) + 8))(v12, v16);

    if (!v20)
    {
      goto LABEL_8;
    }

LABEL_7:
    sub_254EFB450();
  }

  sub_254EB306C(v12, &qword_27F75F2E8, &qword_254F2C430);

LABEL_8:
  sub_254F284E0();
  v22 = v36;
  v23 = sub_254F291D0();
  v24 = sub_254F296E0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38 = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_254EC2D74(0xD000000000000028, 0x8000000254F2E3C0, &v38);
    *(v25 + 12) = 2080;
    v27 = [v22 description];
    v28 = sub_254F29450();
    v30 = v29;

    v31 = sub_254EC2D74(v28, v30, &v38);

    *(v25 + 14) = v31;
    _os_log_impl(&dword_254EAE000, v23, v24, "%s unable to get bundleId for %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C2EB80](v26, -1, -1);
    MEMORY[0x259C2EB80](v25, -1, -1);
  }

  (*(v34 + 8))(v4, v35);
  v32 = sub_254F29290();
  return sub_254EB2F04(v37, 1, 1, v32);
}

unint64_t sub_254F05780()
{
  result = qword_281426148;
  if (!qword_281426148)
  {
    sub_254EDEFE4(&qword_27F75F2F0, &qword_254F2C498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281426148);
  }

  return result;
}

unint64_t sub_254F057E4(uint64_t a1, uint64_t a2)
{
  sub_254F29BC0();
  sub_254F294C0();
  v4 = sub_254F29C00();

  return sub_254F05D10(a1, a2, v4);
}

void sub_254F0585C()
{
  sub_254EB68B4();
  sub_254F29290();
  v0 = sub_254EC1B80(&qword_281426180, MEMORY[0x277D728B0], MEMORY[0x277D728C0]);
  v1 = sub_254EB99E8(v0);
  sub_254EC1C10(v1, v1, MEMORY[0x277D728B0], &unk_281426178, v2, MEMORY[0x277D728C8]);
}

void sub_254F0590C(uint64_t a1)
{
  sub_254F288E0();
  v2 = MEMORY[0x277D1D370];
  sub_254EC1B80(&unk_2814274E0, MEMORY[0x277D1D370], MEMORY[0x277D1D378]);
  v3 = sub_254F293F0();
  sub_254EB4524(a1, v3, MEMORY[0x277D1D370], &unk_2814274D8, v2, MEMORY[0x277D1D380]);
}

void sub_254F059E0()
{
  sub_254EB68B4();
  sub_254F28080();
  v0 = sub_254EC1B80(&qword_281427538, MEMORY[0x277D1EB58], MEMORY[0x277D1EB68]);
  v1 = sub_254EB99E8(v0);
  sub_254EC1C10(v1, v1, MEMORY[0x277D1EB58], &qword_281427530, v2, MEMORY[0x277D1EB70]);
}

unint64_t sub_254F05A90(uint64_t a1)
{
  v2 = sub_254F298C0();

  return sub_254F05DC4(a1, v2);
}

void sub_254F05AD4(uint64_t a1)
{
  sub_254F27980();
  v2 = MEMORY[0x277CC95F0];
  sub_254EC1B80(&qword_27F75F448, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_254F293F0();
  sub_254EB4524(a1, v3, MEMORY[0x277CC95F0], &unk_27F75F450, v2, MEMORY[0x277CC9610]);
}

void sub_254F05BA8(uint64_t a1)
{
  sub_254F27F50();
  v2 = MEMORY[0x277D74700];
  sub_254EC1B80(&qword_281427558, MEMORY[0x277D74700], MEMORY[0x277D74718]);
  v3 = sub_254F293F0();
  sub_254EB4524(a1, v3, MEMORY[0x277D74700], &unk_27F75F478, v2, MEMORY[0x277D74730]);
}

unint64_t sub_254F05C7C(uint64_t a1)
{
  sub_254F29450();
  sub_254F29BC0();
  sub_254F294C0();
  v2 = sub_254F29C00();

  return sub_254F05E88(a1, v2);
}

unint64_t sub_254F05D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_254F29B10() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_254F05DC4(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_254F07F40(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x259C2E040](v8, a1);
    sub_254EF79E0(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_254F05E88(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_254F29450();
    v7 = v6;
    if (v5 == sub_254F29450() && v7 == v8)
    {

      return i;
    }

    v10 = sub_254F29B10();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_254F05F80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_254F28910();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254F29290();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_254EC8BC0(&qword_27F75F410, &qword_254F2C698);
  v47 = v4;
  result = sub_254F29AB0();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_13:
      v25 = v22 | (v13 << 6);
      v26 = *(v10 + 48);
      v50 = *(v21 + 72);
      v27 = v26 + v50 * v25;
      if (v47)
      {
        (*v49)(v53, v27, v7);
        v28 = *(v10 + 56);
        v29 = *(v46 + 72);
        (*(v46 + 32))(v51, v28 + v29 * v25, v52);
      }

      else
      {
        (*v43)(v53, v27, v7);
        v30 = *(v10 + 56);
        v29 = *(v46 + 72);
        (*(v46 + 16))(v51, v30 + v29 * v25, v52);
      }

      sub_254EC1B80(&qword_281426180, MEMORY[0x277D728B0], MEMORY[0x277D728C0]);
      result = sub_254F293F0();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v31) >> 6;
        while (++v33 != v36 || (v35 & 1) == 0)
        {
          v37 = v33 == v36;
          if (v33 == v36)
          {
            v33 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v33);
          if (v38 != -1)
          {
            v34 = __clz(__rbit64(~v38)) + (v33 << 6);
            goto LABEL_25;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v34 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v20 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      (*v49)((*(v12 + 48) + v50 * v34), v53, v7);
      result = (*v48)(*(v12 + 56) + v29 * v34, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v13 >= v19)
      {
        break;
      }

      v24 = v15[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_13;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_33;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      sub_254F09B78(0, (v39 + 63) >> 6, v15);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_33:
  *v3 = v12;
  return result;
}

uint64_t sub_254F06420(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_254F288E0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_254F064D8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_254F06520(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 32 * result);
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v9 = a8[7] + 16 * result;
  *v9 = a6;
  *(v9 + 8) = a7 & 1;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_254F06578(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  *(a4 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  v8 = *(a4 + 48);
  a5(0);
  sub_254EB3CD0();
  (*(v9 + 32))(v8 + *(v9 + 72) * a1, a2);
  v10 = sub_254EB3AEC();
  v12 = sub_254EC8BC0(v10, v11);
  sub_254EB2D90(v12);
  sub_254EBEDA8();
  result = sub_254F07FF4(v13, v14, v15, v16);
  v18 = *(a4 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v20;
  }

  return result;
}

uint64_t sub_254F0665C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = sub_254EB2C08(a1, a2, a3, a4);
  if (v8)
  {
    v9 = v7;
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *v5;
    sub_254EC8BC0(&qword_27F75F490, &qword_254F2C700);
    sub_254F29A50();

    v10 = *(v16 + 56);
    v11 = sub_254F27940();
    (*(*(v11 - 8) + 32))(a5, v10 + *(*(v11 - 8) + 72) * v9, v11);
    sub_254F0803C();
    sub_254F29A70();
    *v5 = v16;
    v12 = a5;
    v13 = 0;
    v14 = v11;
  }

  else
  {
    v14 = sub_254F27940();
    v12 = a5;
    v13 = 1;
  }

  return sub_254EB2F04(v12, v13, 1, v14);
}

double sub_254F067B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = sub_254EB2C08(a1, a2, a3, a4);
  if (v8)
  {
    v9 = v7;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v5;
    sub_254EC8BC0(&qword_27F75F4A8, &qword_254F2C710);
    sub_254F29A50();

    v10 = *(v13 + 56) + 40 * v9;
    v11 = *(v10 + 16);
    *a5 = *v10;
    *(a5 + 16) = v11;
    *(a5 + 32) = *(v10 + 32);
    sub_254EC8BC0(&qword_27F75F100, &qword_254F2BDD0);
    sub_254F0803C();
    sub_254F29A70();
    *v5 = v13;
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = -1;
  }

  return result;
}

uint64_t sub_254F068C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_254F05AD4(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_254EC8BC0(&qword_27F75F480, &qword_254F2C6F0);
    sub_254F29A50();
    v7 = *(v15 + 48);
    v8 = sub_254F27980();
    (*(*(v8 - 8) + 8))(v7 + *(*(v8 - 8) + 72) * v6, v8);
    v9 = *(v15 + 56);
    v10 = sub_254EC8BC0(&qword_27F75F430, &qword_254F2C6B8);
    sub_254F07FF4(v9 + *(*(v10 - 8) + 72) * v6, a2, &qword_27F75F430, &qword_254F2C6B8);
    sub_254EC1B80(&qword_27F75F448, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_254F29A70();
    *v2 = v15;
    v11 = a2;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = sub_254EC8BC0(&qword_27F75F430, &qword_254F2C6B8);
    v11 = a2;
    v12 = 1;
  }

  return sub_254EB2F04(v11, v12, 1, v13);
}

uint64_t sub_254F06A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_254F05BA8(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_254EC8BC0(&qword_27F75F470, &qword_254F2C6E8);
    sub_254F29A50();
    v7 = *(v15 + 48);
    v8 = sub_254F27F50();
    (*(*(v8 - 8) + 8))(v7 + *(*(v8 - 8) + 72) * v6, v8);
    v9 = *(v15 + 56);
    v10 = sub_254EC8BC0(&qword_27F75F430, &qword_254F2C6B8);
    sub_254F07FF4(v9 + *(*(v10 - 8) + 72) * v6, a2, &qword_27F75F430, &qword_254F2C6B8);
    sub_254EC1B80(&qword_281427558, MEMORY[0x277D74700], MEMORY[0x277D74718]);
    sub_254F29A70();
    *v2 = v15;
    v11 = a2;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = sub_254EC8BC0(&qword_27F75F430, &qword_254F2C6B8);
    v11 = a2;
    v12 = 1;
  }

  return sub_254EB2F04(v11, v12, 1, v13);
}

void sub_254F06C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_254EB3F00(a1, a2, a3);
  sub_254EB7FD0();
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v7;
  v12 = v8;
  v13 = sub_254EC8BC0(&qword_27F75F4B0, qword_254F2C718);
  if ((sub_254EB8170(v13) & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_254F057E4(v5, v3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_254F29B50();
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  if (v12)
  {
    v16 = *(*v6 + 56);
    v17 = *(v16 + 8 * v11);
    *(v16 + 8 * v11) = v4;
  }

  else
  {
    v18 = sub_254EB59F0();
    sub_254F064D8(v18, v19, v20, v21, v22);
  }
}

void sub_254F06D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_254EB3F00(a1, a2, a3);
  sub_254EB7FD0();
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v7;
  v12 = v8;
  v13 = sub_254EC8BC0(&qword_27F75F488, &qword_254F2C6F8);
  if ((sub_254EB8170(v13) & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_254F057E4(v5, v3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_254F29B50();
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  if (v12)
  {
    *(*(*v6 + 56) + 8 * v11) = v4;
  }

  else
  {
    v16 = sub_254EB59F0();
    sub_254F064D8(v16, v17, v18, v19, v20);
  }
}

uint64_t sub_254F06E50(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_254F27980();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  sub_254F05AD4(a2);
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v12;
  v15 = v13;
  sub_254EC8BC0(&qword_27F75F480, &qword_254F2C6F0);
  if ((sub_254F29A50() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_254F05AD4(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_10:
    result = sub_254F29B50();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    v19 = *(v18 + 56);
    v20 = sub_254EC8BC0(&qword_27F75F430, &qword_254F2C6B8);
    return sub_254F08090(a1, v19 + *(*(v20 - 8) + 72) * v14, &qword_27F75F430, &qword_254F2C6B8);
  }

  else
  {
    (*(v8 + 16))(v10, a2, v7);
    return sub_254F06578(v14, v10, a1, v18, MEMORY[0x277CC95F0]);
  }
}

uint64_t sub_254F07034(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_254F27F50();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  sub_254F05BA8(a2);
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v12;
  v15 = v13;
  sub_254EC8BC0(&qword_27F75F470, &qword_254F2C6E8);
  if ((sub_254F29A50() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_254F05BA8(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_10:
    result = sub_254F29B50();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    v19 = *(v18 + 56);
    v20 = sub_254EC8BC0(&qword_27F75F430, &qword_254F2C6B8);
    return sub_254F08090(a1, v19 + *(*(v20 - 8) + 72) * v14, &qword_27F75F430, &qword_254F2C6B8);
  }

  else
  {
    (*(v8 + 16))(v10, a2, v7);
    return sub_254F06578(v14, v10, a1, v18, MEMORY[0x277D74700]);
  }
}

uint64_t sub_254F07218(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_254F288E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  sub_254F0590C(a2);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  sub_254EC8BC0(&qword_27F75F3E8, &qword_254F2C670);
  if ((sub_254F29A50() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_254F0590C(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_254F29B50();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    *(v18[7] + 8 * v14) = a1;
  }

  else
  {
    (*(v8 + 16))(v10, a2, v7);
    return sub_254F06420(v14, v10, a1, v18);
  }
}

uint64_t sub_254F073D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_254F29290();
  (*(*(v8 - 8) + 16))(a1, a3, v8);
  v9 = sub_254F28910();
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a4, v9);
}

uint64_t sub_254F07490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_254EC8BC0(&qword_27F75F3C0, &qword_254F2C648) + 48);
  v5 = a2 + *(sub_254EC8BC0(&qword_27F75F400, &qword_254F2C688) + 48);

  return sub_254F073D8(a2, v5, a1, a1 + v4);
}

uint64_t sub_254F0750C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v61 = a5;
  v52 = a4;
  v8 = sub_254F28910();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v49 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = v44 - v12;
  v53 = sub_254F29290();
  v13 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_254EC8BC0(&qword_27F75F408, &qword_254F2C690);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v44 - v17;
  sub_254F07AEC(a1, a2, a3, v59);
  v55 = v59[0];
  v56 = v59[1];
  v57 = v59[2];
  v51 = (v13 + 32);
  v19 = (v9 + 32);
  v58 = v60;
  v47 = v9 + 16;
  v46 = v9 + 8;
  v48 = v13;
  v45 = (v13 + 8);
  v50 = v9;
  v44[3] = v9 + 40;
  v44[1] = a1;

  v44[0] = a3;

  while (1)
  {
    sub_254F07B28(v18);
    v20 = sub_254EC8BC0(&qword_27F75F400, &qword_254F2C688);
    if (sub_254EB2F2C(v18, 1, v20) == 1)
    {
      sub_254EF7A88(v55);
    }

    v21 = *(v20 + 48);
    v22 = *v51;
    (*v51)(v15, v18, v53);
    v23 = *v19;
    v24 = v8;
    (*v19)(v54, &v18[v21], v8);
    v25 = *v61;
    sub_254F0585C();
    v28 = v27;
    v29 = v25[2];
    v30 = (v26 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v26;
    if (v25[3] >= v31)
    {
      if ((v52 & 1) == 0)
      {
        sub_254EC8BC0(&qword_27F75F3F0, &qword_254F2C678);
        sub_254F29A60();
      }
    }

    else
    {
      sub_254F05F80(v31, v52 & 1);
      sub_254F0585C();
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_17;
      }

      v28 = v33;
    }

    v35 = *v61;
    if (v32)
    {
      v37 = v49;
      v36 = v50;
      v38 = *(v50 + 72) * v28;
      v8 = v24;
      (*(v50 + 16))(v49, v35[7] + v38, v24);
      (*(v36 + 8))(v54, v24);
      (*v45)(v15, v53);
      (*(v36 + 40))(v35[7] + v38, v37, v24);
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v22((v35[6] + *(v48 + 72) * v28), v15, v53);
      v39 = v35[7] + *(v50 + 72) * v28;
      v8 = v24;
      v23(v39, v54, v24);
      v40 = v35[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_16;
      }

      v35[2] = v42;
    }

    v52 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_254F29B50();
  __break(1u);
  return result;
}

uint64_t sub_254F07A04(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_254F293C0();

  return v3;
}

uint64_t sub_254F07A70(void *a1)
{
  v1 = [a1 assistantDefinedSchemas];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_254EB48D8(0, &qword_281426058, 0x277D23768);
  v3 = sub_254F29560();

  return v3;
}

uint64_t sub_254F07AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_254F07B28@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v54 = sub_254EC8BC0(&qword_27F75F3C0, &qword_254F2C648);
  MEMORY[0x28223BE20](v54);
  v3 = &v43 - v2;
  v49 = sub_254F28910();
  v4 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254F29290();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_254EC8BC0(&qword_27F75F418, &qword_254F2C6A0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v50 = &v43 - v16;
  v51 = v1;
  v17 = *v1;
  v18 = v1[1];
  v19 = v1[2];
  v20 = v1[3];
  v21 = v1[4];
  v44 = v3;
  v52 = v19;
  if (v21)
  {
    v48 = v14;
    v22 = v20;
LABEL_8:
    v46 = v10;
    v47 = (v21 - 1) & v21;
    v24 = __clz(__rbit64(v21)) | (v22 << 6);
    v25 = v17;
    (*(v8 + 16))(v10, *(v17 + 48) + *(v8 + 72) * v24, v7);
    v26 = v49;
    (*(v4 + 16))(v6, *(v25 + 56) + *(v4 + 72) * v24, v49);
    v27 = v54;
    v45 = *(v54 + 48);
    v28 = v50;
    v29 = v7;
    v30 = v47;
    (*(v8 + 32))(v50, v46, v29);
    v31 = v28;
    (*(v4 + 32))(&v28[v45], v6, v26);
    v23 = v27;
    v32 = 0;
    v14 = v48;
LABEL_9:
    v33 = 1;
    v34 = v23;
    sub_254EB2F04(v31, v32, 1, v23);
    v36 = v51;
    v35 = v52;
    *v51 = v25;
    v36[1] = v18;
    v36[2] = v35;
    v36[3] = v20;
    v36[4] = v30;
    v37 = v36[5];
    sub_254F07FF4(v31, v14, &qword_27F75F418, &qword_254F2C6A0);
    v38 = sub_254EB2F2C(v14, 1, v34);
    v39 = v53;
    if (v38 != 1)
    {
      v40 = v14;
      v41 = v44;
      sub_254F07FF4(v40, v44, &qword_27F75F3C0, &qword_254F2C648);
      v37(v41);
      sub_254EB306C(v41, &qword_27F75F3C0, &qword_254F2C648);
      v33 = 0;
    }

    v42 = sub_254EC8BC0(&qword_27F75F400, &qword_254F2C688);
    return sub_254EB2F04(v39, v33, 1, v42);
  }

  else
  {
    v23 = v54;
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= ((v19 + 64) >> 6))
      {
        v30 = 0;
        v32 = 1;
        v31 = v50;
        v25 = v17;
        goto LABEL_9;
      }

      v21 = *(v18 + 8 * v22);
      ++v20;
      if (v21)
      {
        v48 = v14;
        v20 = v22;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_254F07FAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_254EB3C5C(a1, a2, a3, a4);
  sub_254EB3CD0();
  v5 = sub_254EB4B64();
  v6(v5);
  return v4;
}

uint64_t sub_254F07FF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_254EB3C5C(a1, a2, a3, a4);
  sub_254EB3CD0();
  v5 = sub_254EB4B64();
  v6(v5);
  return v4;
}

unint64_t sub_254F0803C()
{
  result = qword_27F75F498;
  if (!qword_27F75F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75F498);
  }

  return result;
}

uint64_t sub_254F08090(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_254EB3C5C(a1, a2, a3, a4);
  sub_254EB3CD0();
  v5 = sub_254EB4B64();
  v6(v5);
  return v4;
}

uint64_t sub_254F080EC()
{

  return sub_254F29870();
}

uint64_t sub_254F0810C()
{
  result = sub_254F29420();
  qword_27F75F4B8 = result;
  return result;
}

uint64_t BERTBasedEntityDetector.init(entityTypes:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_254F291E0();
  sub_254EB2CBC();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_254EC8BC0(&qword_27F75F298, &qword_254F2C3E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_254F2AE00;
  if (qword_27F75EB88 != -1)
  {
    sub_254EB7A68(&qword_27F75EB88);
  }

  v9 = qword_27F75F4B8;
  *(v8 + 32) = qword_27F75F4B8;
  sub_254F08308();
  v10 = v9;
  v11 = sub_254F0834C(v8);
  sub_254F284B0();
  v12 = sub_254F291D0();
  v13 = sub_254F296F0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_254EAE000, v12, v13, "No models have been set for NLTagger", v14, 2u);
    MEMORY[0x259C2EB80](v14, -1, -1);
  }

  result = (*(v4 + 8))(v7, v2);
  *a1 = v11;
  return result;
}

unint64_t sub_254F08308()
{
  result = qword_281426048;
  if (!qword_281426048)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281426048);
  }

  return result;
}

id sub_254F0834C(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NLTagScheme(0);
  v2 = sub_254F29550();

  v3 = [v1 initWithTagSchemes_];

  return v3;
}

uint64_t BERTBasedEntityDetector.supportedEntities.getter()
{
  sub_254EC8BC0(&unk_27F75F4F0, &unk_254F2AF70);
  v0 = sub_254F28CA0();
  sub_254EB2CBC();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_254F2BA20;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x277D1D478], v0);
  v8(v7 + v4, *MEMORY[0x277D1D490], v0);

  return sub_254F08AB0(v6);
}

uint64_t BERTBasedEntityDetector.detectEntities(text:appBundleId:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D84F90];
  sub_254F08DC0(a1, a2, *v2);
  if (qword_27F75EB88 != -1)
  {
    v3 = sub_254EB7A68(&qword_27F75EB88);
  }

  MEMORY[0x28223BE20](v3);
  sub_254F297E0();
  return v5;
}

uint64_t sub_254F085D0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_254F28750();
  sub_254EB2CBC();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v49 = a3;
    v50 = a5;
    v51 = a6;
    v18 = qword_27F75EB90;
    v19 = a1;
    if (v18 != -1)
    {
      swift_once();
    }

    sub_254F29450();
    sub_254EB40C4();
    sub_254EB7FE0();
    v22 = v22 && v6 == v21;
    if (!v22)
    {
      v23 = sub_254EB6C48(v20);

      if (v23)
      {
        goto LABEL_32;
      }

      v24 = qword_27F75EB98;
      v48 = v19;
      if (v24 != -1)
      {
        swift_once();
      }

      sub_254F29450();
      sub_254EB40C4();
      sub_254EB7FE0();
      if (!v22 || v6 != v26)
      {
        v47 = sub_254EB6C48(v25);
        v28 = v48;

        if ((v47 & 1) == 0)
        {
          v29 = qword_27F75EBA0;
          v19 = v28;
          if (v29 != -1)
          {
            swift_once();
          }

          sub_254F29450();
          sub_254EB40C4();
          sub_254EB7FE0();
          if (!v22 || v6 != v31)
          {
            v33 = sub_254EB6C48(v30);

            if (v33)
            {
LABEL_36:
              v45 = sub_254F29520();
              MEMORY[0x259C2DC20](v45);

              sub_254F28730();
              v41 = MEMORY[0x277D1D2F8];
              goto LABEL_33;
            }

            v34 = qword_27F75EBA8;
            v48 = v19;
            if (v34 != -1)
            {
              swift_once();
            }

            sub_254F29450();
            sub_254EB40C4();
            sub_254EB7FE0();
            if (!v22 || v6 != v36)
            {
              v38 = sub_254EB6C48(v35);
              v39 = v48;

              if ((v38 & 1) == 0)
              {

                return 1;
              }

              goto LABEL_36;
            }
          }

          goto LABEL_36;
        }

LABEL_32:
        v40 = sub_254F29520();
        MEMORY[0x259C2DC20](v40);

        sub_254F28730();
        v41 = MEMORY[0x277D1D310];
LABEL_33:
        (*(v14 + 104))(v17, *v41, v12);
        sub_254F16C48();
        v42 = *(*a4 + 16);
        sub_254F16CF0(v42);

        v43 = *a4;
        *(v43 + 16) = v42 + 1;
        (*(v14 + 32))(v43 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v42, v17, v12);
        return 1;
      }
    }

    goto LABEL_32;
  }

  return 1;
}

uint64_t sub_254F089F0()
{
  result = sub_254F29420();
  qword_27F7604E0 = result;
  return result;
}

uint64_t sub_254F08A20()
{
  result = sub_254F29420();
  qword_27F7604E8 = result;
  return result;
}

uint64_t sub_254F08A50()
{
  result = sub_254F29420();
  qword_27F7604F0 = result;
  return result;
}

uint64_t sub_254F08A80()
{
  result = sub_254F29420();
  qword_27F7604F8 = result;
  return result;
}

uint64_t sub_254F08AB0(uint64_t a1)
{
  v2 = sub_254F28CA0();
  sub_254EB2CBC();
  v37 = v3;
  MEMORY[0x28223BE20](v4);
  sub_254EB2E04();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8);
  v41 = &v32 - v9;
  if (!*(a1 + 16))
  {
    v11 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  sub_254EC8BC0(&qword_27F75F5D0, &qword_254F2C798);
  result = sub_254F29920();
  v11 = result;
  v36 = *(a1 + 16);
  if (!v36)
  {
LABEL_15:

    return v11;
  }

  v12 = 0;
  v40 = result + 56;
  v13 = *(v37 + 80);
  v34 = a1;
  v35 = a1 + ((v13 + 32) & ~v13);
  v39 = v37 + 16;
  v14 = (v37 + 8);
  v33 = (v37 + 32);
  while (v12 < *(a1 + 16))
  {
    v15 = *(v37 + 72);
    v38 = v12 + 1;
    v16 = *(v37 + 16);
    v16(v41, v35 + v15 * v12, v2);
    sub_254EB6B00();
    sub_254EBBAD0(&qword_2814274A8, v17, MEMORY[0x277D1D4B8]);
    v18 = sub_254F293F0();
    v19 = ~(-1 << *(v11 + 32));
    while (1)
    {
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v40 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) == 0)
      {
        break;
      }

      v24 = v11;
      v16(v7, *(v11 + 48) + v20 * v15, v2);
      sub_254EB6B00();
      sub_254EBBAD0(&qword_2814274A0, v25, MEMORY[0x277D1D4C0]);
      v26 = sub_254F29410();
      v27 = *v14;
      (*v14)(v7, v2);
      if (v26)
      {
        result = (v27)(v41, v2);
        v11 = v24;
        goto LABEL_12;
      }

      v18 = v20 + 1;
      v11 = v24;
    }

    v28 = v41;
    *(v40 + 8 * v21) = v23 | v22;
    result = (*v33)(*(v11 + 48) + v20 * v15, v28, v2);
    v29 = *(v11 + 16);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_17;
    }

    *(v11 + 16) = v31;
LABEL_12:
    v12 = v38;
    a1 = v34;
    if (v38 == v36)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_254F08DC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_254F29420();
  [a3 setString_];
}

uint64_t sub_254F08E18(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_254F08E58(uint64_t result, int a2, int a3)
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

uint64_t NLTaggerBasedEntityDetector.supportedEntities.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t NLTaggerBasedEntityDetector.init(entityTypes:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_254F291E0();
  sub_254EC8BC0(&unk_27F75F4F0, &unk_254F2AF70);
  v4 = sub_254F28CA0();
  sub_254EB2CBC();
  v6 = v5;
  v8 = *(v7 + 72);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_254F2BA20;
  v11 = v10 + v9;
  v12 = *(v6 + 104);
  v12(v11, *MEMORY[0x277D1D478], v4);
  v12(v11 + v8, *MEMORY[0x277D1D490], v4);
  v13 = sub_254F08AB0(v10);
  sub_254F09090(a1);
  v15 = v14;
  sub_254F08308();
  v16 = sub_254F0834C(v15);

  v17 = sub_254F09CDC(a1, v13, sub_254F0A948, sub_254F0A948);

  *a2 = v16;
  a2[1] = v17;
  a2[2] = v13;
  return result;
}

void sub_254F09090(uint64_t a1)
{
  v2 = sub_254F28CA0();
  sub_254EB2CBC();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v32 = MEMORY[0x277D84FA0];
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;
  v30 = v4 + 32;
  v29 = v4 + 88;
  v28 = *MEMORY[0x277D1D498];
  v15 = *MEMORY[0x277D1D490];
  v26 = *MEMORY[0x277D1D478];
  v27 = v15;
  v24 = (v4 + 8);
  v23 = *MEMORY[0x277CD8968];

  v16 = 0;
  v25 = v4;
  while (v13)
  {
    v17 = v16;
LABEL_9:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    (*(v4 + 16))(v10, *(a1 + 48) + *(v4 + 72) * (v18 | (v17 << 6)), v2);
    (*(v4 + 32))(v8, v10, v2);
    v19 = (*(v4 + 88))(v8, v2);
    if (v19 == v28 || v19 == v27 || v19 == v26)
    {
      sub_254F10058(&v31, v23);
      v4 = v25;
    }

    else
    {
      (*v24)(v8, v2);
    }

    v16 = v17;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      sub_254EF36A0(v32);
      return;
    }

    v13 = *(a1 + 56 + 8 * v17);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t NLTaggerBasedEntityDetector.detectEntities(text:appBundleId:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D84F90];
  sub_254F08DC0(a1, a2, *v2);
  sub_254F297E0();
  return v4;
}

uint64_t sub_254F09430(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v53 = a3;
  v54 = a8;
  v52 = a2;
  v12 = sub_254F28750();
  sub_254EB2CBC();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_254EC8BC0(&qword_27F75F4D0, &unk_254F2C850);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v49 - v19;
  v21 = sub_254F28CA0();
  sub_254EB2CBC();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v51 = a7;
    v27 = a1;
    sub_254F09834(v20);
    if (sub_254EB2F2C(v20, 1, v21) == 1)
    {

      sub_254F0B8B0(v20);
      return 1;
    }

    (*(v23 + 32))(v26, v20, v21);
    if (!sub_254EBB8C0(v26, a5))
    {
LABEL_20:
      (*(v23 + 8))(v26, v21);

      return 1;
    }

    v49 = a9;
    v50 = v14;
    sub_254F29450();
    v28 = sub_254EB7A88();
    if (v14 == v28 && v20 == v29)
    {
    }

    else
    {
      v31 = sub_254EB6C6C(v28);

      if ((v31 & 1) == 0)
      {
        sub_254F29450();
        v32 = sub_254EB7A88();
        if (v31 == v32 && v20 == v33)
        {
        }

        else
        {
          v35 = sub_254EB6C6C(v32);

          if ((v35 & 1) == 0)
          {
            sub_254F29450();
            v36 = sub_254EB7A88();
            if (v35 == v36 && v20 == v37)
            {
            }

            else
            {
              v39 = sub_254EB6C6C(v36);

              if ((v39 & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            v48 = sub_254EB3D5C();
            MEMORY[0x259C2DC20](v48);
            sub_254EB40E0();
            sub_254EB6B18();
            sub_254F28730();
            v41 = MEMORY[0x277D1D2F8];
LABEL_23:
            v42 = v50;
            (*(v50 + 104))(v17, *v41, v12);
            v43 = v51;
            sub_254F16C48();
            v44 = *(*v43 + 16);
            sub_254F16CF0(v44);

            (*(v23 + 8))(v26, v21);
            v45 = *v43;
            *(v45 + 16) = v44 + 1;
            (*(v42 + 32))(v45 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v44, v17, v12);
            return 1;
          }
        }

        v47 = sub_254EB3D5C();
        MEMORY[0x259C2DC20](v47);
        sub_254EB40E0();
        sub_254EB6B18();
        sub_254F28730();
        v41 = MEMORY[0x277D1D310];
        goto LABEL_23;
      }
    }

    v40 = sub_254EB3D5C();
    MEMORY[0x259C2DC20](v40);
    sub_254EB40E0();
    sub_254EB6B18();
    sub_254F28780();
    v41 = MEMORY[0x277D1D318];
    goto LABEL_23;
  }

  return 1;
}

uint64_t sub_254F09834@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_254F29450();
  v5 = v4;
  if (v3 == sub_254F29450() && v5 == v6)
  {

    goto LABEL_18;
  }

  v8 = sub_254F29B10();

  if (v8)
  {
LABEL_18:
    v24 = MEMORY[0x277D1D498];
    goto LABEL_19;
  }

  v9 = sub_254F29450();
  v11 = v10;
  if (v9 == sub_254F29450() && v11 == v12)
  {

    goto LABEL_24;
  }

  v14 = sub_254F29B10();

  if (v14)
  {
LABEL_24:
    v24 = MEMORY[0x277D1D490];
    goto LABEL_19;
  }

  v15 = sub_254F29450();
  v17 = v16;
  if (v15 == sub_254F29450() && v17 == v18)
  {
  }

  else
  {
    v20 = sub_254F29B10();

    if ((v20 & 1) == 0)
    {
      v21 = sub_254F28CA0();
      v22 = a2;
      v23 = 1;
      goto LABEL_20;
    }
  }

  v24 = MEMORY[0x277D1D478];
LABEL_19:
  v25 = *v24;
  v26 = sub_254F28CA0();
  (*(*(v26 - 8) + 104))(a2, v25, v26);
  v22 = a2;
  v23 = 0;
  v21 = v26;
LABEL_20:

  return sub_254EB2F04(v22, v23, 1, v21);
}

char *sub_254F09A84(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_254EC8BC0(&qword_27F75F4D8, &unk_254F2C860);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_254F09B78(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_254F2AED0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_254F09BDC(uint64_t a1, uint64_t a2, __n128 a3)
{

  return sub_254F09CDC(a1, a2, sub_254F09F3C, sub_254F09F3C);
}

void *sub_254F09C5C(uint64_t a1, uint64_t a2, __n128 a3)
{

  return sub_254F09CDC(a1, a2, sub_254F0A5A4, sub_254F0A5A4);
}

void *sub_254F09CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    sub_254F09B78(0, v8, v18 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_254EB6DBC();
    v11 = a3();
    if (!v8)
    {
      v12 = v11;

      return v12;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    v9 = swift_slowAlloc();

    sub_254EB6DBC();
    v12 = sub_254F09EA4(v14, v15, v16, v17, a4);

    if (!v8)
    {

      MEMORY[0x259C2EB80](v9, -1, -1);
      return v12;
    }
  }

  result = MEMORY[0x259C2EB80](v9, -1, -1);
  __break(1u);
  return result;
}

void *sub_254F09EA4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_254F09F3C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a2;
  v63 = a1;
  v6 = sub_254F286E0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v71 = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v57 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v70 = &v57 - v14;
  result = MEMORY[0x28223BE20](v13);
  v62 = &v57 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v74 = v7 + 16;
  v72 = a4;
  v73 = a3;
  v65 = v7;
  if (v18 >= v17)
  {
    v66 = 0;
    v39 = 0;
    v40 = *(a3 + 56);
    v62 = (a3 + 56);
    v41 = 1 << *(a3 + 32);
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v43 = v42 & v40;
    v44 = (v41 + 63) >> 6;
    v69 = a4 + 56;
    v70 = (v7 + 8);
    v64 = v44;
LABEL_24:
    while (v43)
    {
      v45 = __clz(__rbit64(v43));
      v68 = ((v43 - 1) & v43);
LABEL_31:
      v48 = v45 | (v39 << 6);
      v49 = *(a3 + 48);
      v50 = *(v7 + 72);
      v67 = v48;
      v51 = *(v7 + 16);
      v51(v71, v49 + v50 * v48, v6);
      sub_254EBEC70(&qword_281427500, MEMORY[0x277D85578], MEMORY[0x277D85588]);
      v52 = sub_254F293F0();
      v53 = ~(-1 << *(a4 + 32));
      do
      {
        v54 = v52 & v53;
        if (((*(v69 + (((v52 & v53) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v52 & v53)) & 1) == 0)
        {
          result = (*v70)(v71, v6);
          a4 = v72;
          a3 = v73;
          v44 = v64;
          v7 = v65;
          v43 = v68;
          goto LABEL_24;
        }

        v51(v12, *(v72 + 48) + v54 * v50, v6);
        sub_254EBEC70(&qword_2814274F8, MEMORY[0x277D85578], MEMORY[0x277D85590]);
        v55 = sub_254F29410();
        v56 = *v70;
        (*v70)(v12, v6);
        v52 = v54 + 1;
      }

      while ((v55 & 1) == 0);
      result = v56(v71, v6);
      *(v63 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
      v7 = v65;
      v38 = __OFADD__(v66++, 1);
      a4 = v72;
      a3 = v73;
      v44 = v64;
      v43 = v68;
      if (v38)
      {
        goto LABEL_42;
      }
    }

    v46 = v39;
    while (1)
    {
      v39 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v39 >= v44)
      {
LABEL_38:

        return sub_254F0AFB0(v63, v59, v66, a3);
      }

      v47 = *&v62[8 * v39];
      ++v46;
      if (v47)
      {
        v45 = __clz(__rbit64(v47));
        v68 = ((v47 - 1) & v47);
        goto LABEL_31;
      }
    }
  }

  else
  {
    v19 = 0;
    v20 = *(a4 + 56);
    v58 = a4 + 56;
    v21 = 1 << *(a4 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & v20;
    v24 = (v21 + 63) >> 6;
    v60 = v24;
    v61 = v7 + 32;
    v66 = 0;
    v67 = a3 + 56;
    v71 = (v7 + 8);
LABEL_6:
    while (v23)
    {
      v25 = __clz(__rbit64(v23));
      v64 = (v23 - 1) & v23;
LABEL_13:
      v28 = *(v7 + 72);
      v29 = *(a4 + 48) + v28 * (v25 | (v19 << 6));
      v30 = v62;
      v68 = *(v7 + 16);
      v69 = v28;
      v68(v62, v29, v6);
      (*(v7 + 32))(v70, v30, v6);
      sub_254EBEC70(&qword_281427500, MEMORY[0x277D85578], MEMORY[0x277D85588]);
      v31 = sub_254F293F0();
      v32 = ~(-1 << *(a3 + 32));
      do
      {
        v33 = v31 & v32;
        v34 = (v31 & v32) >> 6;
        v35 = 1 << (v31 & v32);
        if ((v35 & *(v67 + 8 * v34)) == 0)
        {
          result = (*v71)(v70, v6);
          a4 = v72;
          a3 = v73;
          v23 = v64;
          v7 = v65;
          v24 = v60;
          goto LABEL_6;
        }

        v68(v12, *(v73 + 48) + v33 * v69, v6);
        sub_254EBEC70(&qword_2814274F8, MEMORY[0x277D85578], MEMORY[0x277D85590]);
        v36 = sub_254F29410();
        v37 = *v71;
        (*v71)(v12, v6);
        v31 = v33 + 1;
      }

      while ((v36 & 1) == 0);
      result = v37(v70, v6);
      v23 = v64;
      v63[v34] |= v35;
      v7 = v65;
      v38 = __OFADD__(v66++, 1);
      a4 = v72;
      a3 = v73;
      v24 = v60;
      if (v38)
      {
        goto LABEL_41;
      }
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {
        goto LABEL_38;
      }

      v27 = *(v58 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v64 = (v27 - 1) & v27;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t *sub_254F0A5A4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      sub_254F29BC0();

      sub_254F294C0();
      v40 = sub_254F29C00();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = sub_254F29B10();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(v52 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        return sub_254F0B2D0(v52, a2, v53, v5);
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_254F29BC0();

      sub_254F294C0();
      v18 = sub_254F29C00();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = sub_254F29B10();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      v52[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}