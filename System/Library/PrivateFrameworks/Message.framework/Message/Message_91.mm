void sub_1B0DBA4DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = sub_1B0DB4268(a1, a2, a3, a4, a5, a6, a7, sub_1B0DBEB44);
  if (!v7)
  {
    sub_1B0DFF2E8(v15, v16, v17 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 849);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (a2 + 1 >= a3)
      {

        sub_1B0439BCC();
        swift_allocError();
        *v18 = a3;
        swift_willThrow();
      }

      else
      {

        sub_1B0436204(a1);

        sub_1B0DB3F50(a1, a2, a3, a4, a5, a6, a7);
        if (v19)
        {
          sub_1B0DF0B3C(v19, v20, v21 & 0xFFFFFFFFFFFFFFLL);

          return;
        }
      }
    }
  }
}

void sub_1B0DBA738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (a2 + 1 >= a3)
      {
        sub_1B0439BCC();
        v12 = swift_allocError();
        *v13 = a3;
      }

      else
      {
        v7 = *a1;
        v8 = *(a1 + 8);
        v9 = *(a1 + 16);
        v10 = *(a1 + 20);
        v11 = *(a1 + 22);
        if (a2 + 2 < a3)
        {
          sub_1B0436204(a1);
LABEL_10:
          sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
          sub_1B041D794(MEMORY[0x1E69E7CC0]);
          return;
        }

        sub_1B0439BCC();
        v14 = swift_allocError();
        *v15 = a3;
        swift_willThrow();
        v12 = v14;
        *a1 = v7;
        *(a1 + 8) = v8;
        *(a1 + 16) = v9;
        *(a1 + 20) = v10;
        *(a1 + 22) = v11;
      }

      v16 = v12;
      swift_willThrow();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {

        goto LABEL_10;
      }
    }
  }
}

void sub_1B0DBA91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v7)
  {
    return;
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return;
  }

  v51 = a4;
  v52 = a6;
  v53 = a7;
  v54 = a5;
  v50 = a2 + 1;
  if (a2 + 1 >= a3)
  {
    sub_1B0439BCC();
    v20 = swift_allocError();
    *v21 = a3;
LABEL_8:
    swift_willThrow();
    v55[0] = v20;
    v24 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (!swift_dynamicCast())
    {

      return;
    }

    goto LABEL_10;
  }

  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v18 = *(a1 + 20);
  v19 = *(a1 + 22);
  if (a2 + 2 >= a3)
  {
    sub_1B0439BCC();
    v22 = swift_allocError();
    *v23 = a3;
    v20 = v22;
    swift_willThrow();
    *a1 = v15;
    *(a1 + 8) = v16;
    *(a1 + 16) = v17;
    *(a1 + 20) = v18;
    *(a1 + 22) = v19;
    goto LABEL_8;
  }

  sub_1B0436204(a1);
LABEL_10:
  sub_1B0DBA4DC(a1, a2, a3, v51, v54, v52, v53);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7630, &qword_1B0EF5130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC1E70;
  *(inited + 32) = v26;
  v34 = inited + 32;
  *(inited + 40) = v28;
  *(inited + 48) = v30;
  *(inited + 56) = v32;
  sub_1B041D794(inited);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  swift_setDeallocating();
  sub_1B0398EFC(v34, &qword_1EB6E7638, &qword_1B0EF5138);
  v55[0] = v36;
  v55[1] = v38;
  v55[2] = v40;
  if (v50 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v41 = a3;

    swift_willThrow();

    return;
  }

  swift_retain_n();

  sub_1B0DFB4B0(a1, v50, a3, v55, v51, v54, v52, v53);

  v42 = *a1;
  v43 = *(a1 + 8);
  v44 = *(a1 + 16);
  v45 = *(a1 + 20);
  v46 = *(a1 + 22);
  if (a2 + 2 < a3)
  {
    sub_1B0436204(a1);
LABEL_18:
    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    return;
  }

  sub_1B0439BCC();
  v47 = swift_allocError();
  *v48 = a3;
  swift_willThrow();
  *a1 = v42;
  *(a1 + 8) = v43;
  *(a1 + 16) = v44;
  *(a1 + 20) = v45;
  *(a1 + 22) = v46;
  swift_willThrow();
  v49 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {

    goto LABEL_18;
  }
}

uint64_t *sub_1B0DBADF0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v15 = a3;
    }

    else
    {
      v11 = result;
      v26 = a6;
      v27 = a7;
      v12 = *result;
      v13 = result[1];
      v8 = *(result + 4);
      v14 = *(result + 10);
      v28 = *(result + 22);
      v29 = v14;

      sub_1B0DFE880(0x2FuLL, 0xE100000000000000, 0, 0, v11, v9, a3);
      if (v7)
      {
      }

      else
      {
        v16 = *v11;
        if (v9 + 1 >= a3)
        {

          sub_1B0439BCC();
          swift_allocError();
          *v17 = a3;
        }

        else
        {

          sub_1B0DFE880(0x4C4149545241503BuLL, 0xE90000000000003DLL, 0, 0, v11, v9 + 1, a3);
          v25 = v16;
          v18 = v9 + 2;
          if (v18 >= a3)
          {

            sub_1B0439BCC();
            swift_allocError();
            *v20 = a3;
            swift_willThrow();
          }

          else
          {
            v24 = v8;

            v19 = sub_1B0DFF3DC(v11, v18, a3, 1);
            v8 = v19;
            if ((v19 & 0x8000000000000000) == 0)
            {
              v23 = &v23;
              MEMORY[0x1EEE9AC00](v19);
              sub_1B0E0303C(v11, v18, a3, sub_1B0DC3E98);

              return v8;
            }

            sub_1B0436554();
            swift_allocError();
            *v22 = 0xD000000000000011;
            v22[1] = 0x80000001B0F2FEE0;
            v22[2] = 0xD000000000000020;
            v22[3] = 0x80000001B0F2FA10;
            v22[4] = 202;
            swift_willThrow();

            swift_willThrow();

            v8 = v24;
          }
        }

        swift_willThrow();
      }

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v8;
      v21 = v28;
      *(v11 + 20) = v29;
      *(v11 + 22) = v21;
    }

    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1B0DBB188(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v15 = a3;
    }

    else
    {
      v11 = result;
      v23 = a6;
      v24 = a7;
      v12 = *result;
      v13 = result[1];
      v8 = *(result + 4);
      v14 = *(result + 10);
      v25 = *(result + 22);

      sub_1B0DFE880(0x4C4149545241503BuLL, 0xE90000000000003DLL, 0, 0, v11, v9, a3);
      if (v7)
      {
      }

      else
      {
        v22 = v14;
        v16 = v9 + 1;
        if (v9 + 1 >= a3)
        {

          sub_1B0439BCC();
          swift_allocError();
          *v18 = a3;
          swift_willThrow();
        }

        else
        {
          v21 = v8;

          v17 = sub_1B0DFF3DC(v11, v16, a3, 1);
          v8 = v17;
          if ((v17 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            MEMORY[0x1EEE9AC00](v17);
            sub_1B0E0303C(v11, v16, a3, sub_1B0DC3C10);

            return v8;
          }

          sub_1B0436554();
          swift_allocError();
          *v19 = 0xD000000000000011;
          v19[1] = 0x80000001B0F2FEE0;
          v19[2] = 0xD000000000000020;
          v19[3] = 0x80000001B0F2FA10;
          v19[4] = 202;
          swift_willThrow();

          swift_willThrow();
          v8 = v21;
        }

        LOWORD(v14) = v22;
      }

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v8;
      *(v11 + 20) = v14;
      *(v11 + 22) = v25;
    }

    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1B0DBB478(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v9 = a3;
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v17 = v9;
    }

    else
    {
      v10 = result;
      v14 = *result;
      v15 = result[1];
      v16 = *(result + 4);
      v19 = *(result + 22);
      v20 = *(result + 10);

      sub_1B0DFE880(0x4F49544345533B2FuLL, 0xEA00000000003D4ELL, 0, 0, v10, v8, v9);
      if (!v7)
      {
        v9 = sub_1B0DB7D70(v10, v8, v9, a4, a5, a6, a7, sub_1B0E0793C);

        return v9;
      }

      *v10 = v14;
      *(v10 + 8) = v15;
      *(v10 + 16) = v16;
      *(v10 + 20) = v20;
      *(v10 + 22) = v19;
    }

    swift_willThrow();
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1B0DBB5F8(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v26 = a3;
      return swift_willThrow();
    }

    v12 = result;
    v13 = *result;
    v14 = result[1];
    v30 = *(result + 4);
    v31 = v7;
    v15 = *(result + 10);
    v16 = *(result + 22);

    v29 = a6;
    v19 = a6;
    v20 = v15;
    v21 = v31;
    sub_1B0E01B68(v12, v8, a3, a4, a5, v19, a7);
    v28 = v22;
    v32 = v23;

    if (v21)
    {
LABEL_9:

      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v30;
      *(v12 + 20) = v20;
      *(v12 + 22) = v16;
      return swift_willThrow();
    }

    sub_1B0E01B94(v12, v8, a3, a4, a5, v29, a7);
    v25 = v24;

    if (!v32 && v25 == 1)
    {
      sub_1B0436554();
      swift_allocError();
      *v27 = 0xD000000000000021;
      v27[1] = 0x80000001B0F30370;
      v27[2] = 0xD000000000000020;
      v27[3] = 0x80000001B0F2FA10;
      v27[4] = 1398;
      swift_willThrow();
      goto LABEL_9;
    }

    return v28;
  }

  return result;
}

void sub_1B0DBB824(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v6 >= a3)
    {
      sub_1B0439BCC();
      v15 = swift_allocError();
      *v16 = a3;
    }

    else
    {
      v9 = *a1;
      v10 = a1[1];
      v11 = *(a1 + 4);
      v12 = *(a1 + 10);
      v13 = *(a1 + 22);

      sub_1B0DC22A4(a1, v6, a3, a4);
      v15 = v5;
      if (!v5)
      {
        goto LABEL_21;
      }

      *a1 = v9;
      a1[1] = v10;
      *(a1 + 4) = v11;
      *(a1 + 10) = v12;
      *(a1 + 22) = v13;
    }

    swift_willThrow();
    v24 = v15;
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v24 = v15;
      v18 = v15;
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v6 < a3)
    {

      sub_1B0DC2C8C(a1, v6, a3);
LABEL_21:

      return;
    }

    sub_1B0439BCC();
    v19 = swift_allocError();
    *v20 = a3;
    swift_willThrow();
    v24 = v19;
    v21 = v19;
    if (swift_dynamicCast())
    {

LABEL_16:

      if (v6 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v23 = a3;
        swift_willThrow();
        return;
      }

      sub_1B0DC2F40(a1, v6, a3);
      goto LABEL_21;
    }

    v24 = v19;
    v22 = v19;
    if (swift_dynamicCast())
    {

      goto LABEL_16;
    }

LABEL_18:

    return;
  }

  __break(1u);
}

uint64_t *sub_1B0DBBBE8(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
    }

    else
    {
      v11 = result;
      v12 = *result;
      v13 = result[1];
      v14 = *(result + 4);
      v20 = *(result + 22);
      v21 = *(result + 10);
      v8 = a5;

      v18 = sub_1B0DB7D70(v11, v9, a3, a4, v8, a6, a7, sub_1B0E069F4);
      if (!v7)
      {
        v8 = v18;
        sub_1B0E03A64(v11, v9, a3);

        return v8;
      }

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v21;
      *(v11 + 22) = v20;
    }

    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DBBD6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_1B0DFE880(0x2F2F3A70616D69uLL, 0xE700000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    sub_1B0DB6764(a1, a2, a3, a4, a5, a6, a7, v92);
    result = sub_1B0DFE880(0x2FuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v18 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (v18 >= a3)
      {
        sub_1B0439BCC();
        v19 = swift_allocError();
        *v20 = a3;

        swift_willThrow();
        v31[0] = v19;
        v21 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
        if (!swift_dynamicCast())
        {
          sub_1B0DC1F64(v92);
        }

        sub_1B0D2E930(&v64);
      }

      else
      {

        sub_1B0DB9808(a1, v18, a3, a4, a5, a6, a7, v94);
        v72 = v94[8];
        v73 = v94[9];
        v74 = v94[10];
        v75 = v94[11];
        v68 = v94[4];
        v69 = v94[5];
        v70 = v94[6];
        v71 = v94[7];
        v64 = v94[0];
        v65 = v94[1];
        v66 = v94[2];
        v67 = v94[3];

        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      }

      v88 = v72;
      v89 = v73;
      v90 = v74;
      v91 = v75;
      v84 = v68;
      v85 = v69;
      v86 = v70;
      v87 = v71;
      v80 = v64;
      v81 = v65;
      v82 = v66;
      v83 = v67;
      sub_1B0D2E930(v46);
      *v31 = v92[0];
      v32 = v92[1];
      *v33 = v93[0];
      *&v33[9] = *(v93 + 9);
      v47[8] = v46[8];
      v47[9] = v46[9];
      v47[10] = v46[10];
      v47[11] = v46[11];
      v47[4] = v46[4];
      v47[5] = v46[5];
      v47[6] = v46[6];
      v47[7] = v46[7];
      v47[0] = v46[0];
      v47[1] = v46[1];
      v47[2] = v46[2];
      v47[3] = v46[3];
      sub_1B0398EFC(v47, &qword_1EB6E7618, &qword_1B0EF5118);
      v42 = v88;
      v43 = v89;
      v44 = v90;
      v45 = v91;
      v38 = v84;
      v39 = v85;
      v40 = v86;
      v41 = v87;
      v34 = v80;
      v35 = v81;
      v36 = v82;
      v37 = v83;
      v60 = v88;
      v61 = v89;
      v62 = v90;
      v63 = v91;
      v56 = v84;
      v57 = v85;
      v58 = v86;
      v59 = v87;
      v52 = v80;
      v53 = v81;
      v54 = v82;
      v55 = v83;
      v48 = *v31;
      v49 = v32;
      v50 = *v33;
      v51 = *&v33[16];
      v76 = v88;
      v77 = v89;
      v78 = v90;
      v79 = v91;
      v72 = v84;
      v73 = v85;
      v74 = v86;
      v75 = v87;
      v68 = v80;
      v69 = v81;
      v70 = v82;
      v71 = v83;
      v64 = *v31;
      v65 = v32;
      v66 = *v33;
      v67 = *&v33[16];
      sub_1B0DC1FB8(&v48, v30);
      result = sub_1B0DC2014(&v64);
      v22 = v61;
      a8[12] = v60;
      a8[13] = v22;
      v23 = v63;
      a8[14] = v62;
      a8[15] = v23;
      v24 = v57;
      a8[8] = v56;
      a8[9] = v24;
      v25 = v59;
      a8[10] = v58;
      a8[11] = v25;
      v26 = v53;
      a8[4] = v52;
      a8[5] = v26;
      v27 = v55;
      a8[6] = v54;
      a8[7] = v27;
      v28 = v49;
      *a8 = v48;
      a8[1] = v28;
      v29 = v51;
      a8[2] = v50;
      a8[3] = v29;
    }
  }

  return result;
}

uint64_t sub_1B0DBC2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_1B0DBBBE8(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    v92 = a7;
    v83 = v19;
    v84 = a8;
    if ((v19 & 0x100000000) != 0)
    {
      v85 = result;
      v89 = v18;
      v20 = sub_1B0DB3E20(result, v18);
      v22 = v21;
      v99[0] = 47;
      v23 = sub_1B0E44C78();
      if (v22)
      {
        if (v20 == v23 && v22 == v24)
        {

          v18 = v89;
          goto LABEL_9;
        }

        v25 = sub_1B0E46A78();

        result = v85;
        v18 = v89;
        if (v25)
        {
LABEL_9:
          if (__OFADD__(a2, 1))
          {
            __break(1u);
            goto LABEL_36;
          }

          v26 = v18;
          if (a2 + 1 >= a3)
          {
            sub_1B0439BCC();
            swift_allocError();
            *v38 = a3;
          }

          else
          {
            v27 = *(a1 + 8);
            v75 = *(a1 + 16);
            v73 = *(a1 + 20);
            v71 = *(a1 + 22);
            v90 = *a1;

            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v86 = sub_1B0D4AF5C(1, v85, v26, v28);
            v77 = v30;
            v80 = v29;
            v32 = v31;

            v87 = MEMORY[0x1B2726D00](v86, v80, v77, v32);
            v81 = v33;

            v34 = v81;
            v35 = a2 + 2;
            if (a2 + 2 < a3)
            {

              sub_1B0DFE880(0x3D4449553BuLL, 0xE500000000000000, 0, 0, a1, v35, a3);
              v66 = sub_1B0D9EA70(a1, v35, a3);

              v67 = v87;
LABEL_14:

              sub_1B0E03C2C(a1, a2, a3, a4, a5, a6, v92);
              v78 = v36;
              v82 = v37;
              v76 = v66;
              v91 = v34;

              if (v82)
              {
                v88 = v67;
                v39 = sub_1B0DB3E20(v78, v82);
                v41 = v40;
                v99[0] = 47;
                v42 = sub_1B0E44C78();
                v44 = v84;
                if (v41)
                {
                  if (v39 == v42 && v41 == v43)
                  {

                    goto LABEL_31;
                  }

                  v74 = sub_1B0E46A78();

                  v67 = v88;
                  if (v74)
                  {
LABEL_31:
                    if (!__OFADD__(a2, 1))
                    {
                      if (a2 + 1 < a3)
                      {
                        v72 = a2 + 1;

                        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                        v79 = sub_1B0D4AF5C(1, v78, v82, v55);
                        v57 = v56;
                        v59 = v58;
                        v61 = v60;

                        v62 = MEMORY[0x1B2726D00](v79, v57, v59, v61);
                        v64 = v63;

                        sub_1B0E03E34(a1, v72, a3, a4, a5, a6, v92);
                        v78 = v62;
                        v47 = v68;
                        v49 = v69;
                        v51 = v70;

                        v52 = v64;
                        v44 = v84;
                        v67 = v88;
                        goto LABEL_29;
                      }

                      sub_1B0439BCC();
                      swift_allocError();
                      *v65 = a3;
                      swift_willThrow();
                    }

LABEL_36:
                    __break(1u);
                    return result;
                  }

LABEL_28:

                  sub_1B0E03E60(a1, a2, a3, a4, a5, a6, v92);
                  v47 = v46;
                  v49 = v48;
                  v51 = v50;

                  v52 = v82;
LABEL_29:
                  v93[68] = BYTE4(v83) & 1;
                  v93[67] = HIBYTE(v47) & 1;
                  *&v94 = v67;
                  *(&v94 + 1) = v91;
                  LODWORD(v95) = v83;
                  BYTE4(v95) = BYTE4(v83) & 1;
                  DWORD2(v95) = v76;
                  *&v96 = v78;
                  *(&v96 + 1) = v52;
                  *&v97 = v51;
                  *(&v97 + 1) = v49;
                  v98 = v47 & 0x1FF;
                  v99[0] = v67;
                  v99[1] = v91;
                  v100 = v83;
                  v101 = BYTE4(v83) & 1;
                  v102 = v76;
                  v103 = v78;
                  v104 = v52;
                  v105 = v51;
                  v106 = v49;
                  v107 = v47 & 0x1FF;
                  sub_1B0DC3BB4(&v94, v93);
                  result = sub_1B0DC2084(v99);
                  v53 = v97;
                  *(v44 + 32) = v96;
                  *(v44 + 48) = v53;
                  *(v44 + 64) = v98;
                  v54 = v95;
                  *v44 = v94;
                  *(v44 + 16) = v54;
                  return result;
                }

                v67 = v88;
              }

              else
              {
                v99[0] = 47;
                sub_1B0E44C78();
                v44 = v84;
              }

              goto LABEL_28;
            }

            sub_1B0439BCC();
            swift_allocError();
            *v45 = a3;
            swift_willThrow();
            *a1 = v90;
            *(a1 + 8) = v27;
            *(a1 + 16) = v75;
            *(a1 + 20) = v73;
            *(a1 + 22) = v71;
          }

          swift_willThrow();
        }
      }

      else
      {

        result = v85;
        v18 = v89;
      }
    }

    v67 = result;
    v34 = v18;
    v66 = sub_1B0DC31B4(a1, a2, a3);
    goto LABEL_14;
  }

  return result;
}

void sub_1B0DBC97C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1B0DFE880(0x25uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v3)
  {
    return;
  }

  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  if (v6 == v5)
  {
LABEL_5:
    sub_1B0D3EA30();
    swift_allocError();
LABEL_6:
    swift_willThrow();
    return;
  }

  v7 = *(a1 + 22);
  v8 = *(a1 + 10);
  v9 = *a1;
  swift_beginAccess();
  v10 = v5 + 1;
  if (v5 == -1)
  {
    __break(1u);
    goto LABEL_28;
  }

  v11 = *(v9 + 24) + (v7 | (v8 << 8));
  v12 = *(v11 + v5);
  *(a1 + 2) = v10;
  if (v6 == v10)
  {
    goto LABEL_5;
  }

  if (v10 == -1)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v13 = *(v11 + v10);
  *(a1 + 2) = v10 + 1;
  if ((v12 - 58) <= 0xF5u && (v12 - 65 <= 0x25 ? (v14 = ((1 << (v12 - 65)) & 0x3F0000003FLL) == 0) : (v14 = 1), v14) || (v13 - 58) <= 0xF5u && (v13 - 65 <= 0x25 ? (v15 = ((1 << (v13 - 65)) & 0x3F0000003FLL) == 0) : (v15 = 1), v15))
  {
    sub_1B0E46298();

    v19 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v19);

    MEMORY[0x1B2726E80](0x20646E6120, 0xE500000000000000);
    v20 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v20);

    sub_1B0436554();
    swift_allocError();
    *v21 = 0xD00000000000001BLL;
    v21[1] = 0x80000001B0F30310;
    v21[2] = 0xD000000000000020;
    v21[3] = 0x80000001B0F2FA10;
    v21[4] = 1264;
    goto LABEL_6;
  }

  if (v12 <= 0x46u)
  {
    v16 = v12;
  }

  else
  {
    v16 = v12 - 32;
  }

  if (v13 <= 0x46u)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 - 32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B0EC1E50;
  *(v18 + 32) = 37;
  *(v18 + 33) = v16;
  *(v18 + 34) = v17;
}

uint64_t *sub_1B0DBCC50(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v18 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = result[1];
    v13 = *(result + 4);
    v19 = *(result + 22);
    v20 = *(result + 10);

    sub_1B0DB7EA8(v10, v8, a3, a4, a5, a6, a7, sub_1B0E08010, &v21);
    if (v7)
    {

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v20;
      *(v10 + 22) = v19;
      return swift_willThrow();
    }

    return v21;
  }

  return result;
}

uint64_t *sub_1B0DBCD8C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v18 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = result[1];
    v13 = *(result + 4);
    v19 = *(result + 22);
    v20 = *(result + 10);

    sub_1B0DBA1E4(v10, v8, a3, a4, a5, a6, a7, &v21);
    if (v7)
    {

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v20;
      *(v10 + 22) = v19;
      return swift_willThrow();
    }

    return v21;
  }

  return result;
}

void sub_1B0DBCEB4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, unint64_t a5@<X7>, uint64_t a6@<X8>, unint64_t a7, uint64_t a8)
{
  sub_1B0DFE880(a5, a7, 0, 0, a1, a2, a3);
  if (v8)
  {
    return;
  }

  v14 = sub_1B0DFF3DC(a1, a2, a3, 1);
  if (v14 < 0)
  {
    sub_1B0436554();
    swift_allocError();
    *v17 = 0xD000000000000011;
    v17[1] = 0x80000001B0F2FEE0;
    v17[2] = 0xD000000000000020;
    v17[3] = 0x80000001B0F2FA10;
    v17[4] = 202;
    goto LABEL_6;
  }

  if (v14 > a4)
  {
    v15 = v14;
    sub_1B0D98DC0();
    swift_allocError();
    *v16 = v15;
    v16[1] = a4;
LABEL_6:
    swift_willThrow();
    return;
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v35 = v14;
  if (a2 + 1 >= a3)
  {
    sub_1B0439BCC();
    v18 = swift_allocError();
    *v19 = a3;
    swift_willThrow();
    v20 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (!swift_dynamicCast())
    {

      return;
    }
  }

  else
  {

    sub_1B0DFE880(0x2BuLL, 0xE100000000000000, 0, 0, a1, a2 + 1, a3);
  }

  sub_1B0DFE880(0x7DuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  sub_1B0448078(a1, a2, a3);
  v21 = ByteBuffer.readSlice(length:)(v35);
  if (!v21)
  {
    sub_1B0D3EA30();
    swift_allocError();
    goto LABEL_6;
  }

  v24 = v22;
  v25 = HIDWORD(v22);
  v26 = v22;
  if (HIDWORD(v22) < v22)
  {
    goto LABEL_25;
  }

  v27 = v23;
  v28 = (WORD2(v23) << 8) | BYTE6(v23);
  if ((v23 - v28) < v25)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v29 = v21;
  v36[0] = v21;
  v30 = HIWORD(v23);
  v31 = HIDWORD(v23);
  v36[1] = v22;
  v37 = v23;
  v38 = WORD2(v23);
  v39 = BYTE6(v23);
  v40 = v22;
  v41 = HIDWORD(v22);
  swift_beginAccess();
  v32 = v25 - v26;
  if (v25 == v26)
  {
LABEL_21:

    sub_1B04394F4(v36);
    *a6 = v29;
    *(a6 + 8) = v24;
    *(a6 + 12) = v25;
    *(a6 + 16) = v27;
    *(a6 + 20) = v31;
    *(a6 + 22) = v30;
  }

  else
  {
    v33 = (*(v29 + 24) + v28 + v26);
    while (*v33)
    {
      ++v33;
      if (!--v32)
      {
        goto LABEL_21;
      }
    }

    sub_1B04394F4(v36);
    sub_1B0436554();
    swift_allocError();
    *v34 = 0xD000000000000019;
    v34[1] = 0x80000001B0F30200;
    v34[2] = 0xD000000000000020;
    v34[3] = 0x80000001B0F2FA10;
    v34[4] = a8;
    swift_willThrow();
  }
}

uint64_t *sub_1B0DBD2D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1B0DB4268(a1, a2, a3, a4, a5, a6, a7, sub_1B0DBEB44);
  if (!v7)
  {
    sub_1B0DFF2E8(result, v9, v10 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 1554);
    v11 = sub_1B0E44B98();

    return v11;
  }

  return result;
}

uint64_t sub_1B0DBD38C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7600, "h,\a");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC4700;
  *(inited + 32) = sub_1B0DBD68C;
  *(inited + 40) = 0;
  *(inited + 48) = sub_1B0DBD794;
  *(inited + 56) = 0;
  *(inited + 64) = sub_1B0DBD890;
  *(inited + 72) = 0;
  *(inited + 80) = sub_1B0DBD98C;
  *(inited + 88) = 0;
  *(inited + 96) = sub_1B0DBDA8C;
  *(inited + 104) = 0;
  v15 = swift_allocObject();
  v25 = a6;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1B0DC1E34;
  *(v16 + 24) = v15;
  *(inited + 112) = sub_1B0DC1E54;
  *(inited + 120) = v16;

  sub_1B0D94B8C(inited, a1, a2, a3, 0xD000000000000020, 0x80000001B0F2FA10, 1558);
  v18 = v17;
  v20 = v19;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
  result = swift_arrayDestroy();
  if (!v27)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1B0439BCC();
      swift_allocError();
      *v22 = a3;
      return swift_willThrow();
    }

    else
    {

      sub_1B0436204(a1);

      result = sub_1B0DB4978(a1, a2, a3, a4, a5, v25, a7);
      *a8 = v18;
      a8[1] = v20;
      a8[2] = result;
      a8[3] = v23;
    }
  }

  return result;
}

double sub_1B0DBD68C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  if (qword_1EB6DE170 != -1)
  {
    swift_once();
  }

  v9 = static Media.TopLevelType.application;
  v8 = unk_1EB737E70;
  sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (!v3)
  {
    sub_1B0DFE880(0x544143494C505041uLL, 0xEB000000004E4F49, 0, 0, a1, v6, v7);
    sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
    *a3 = v9;
    a3[1] = v8;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

double sub_1B0DBD794@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  if (qword_1EB6DE160 != -1)
  {
    swift_once();
  }

  v9 = static Media.TopLevelType.audio;
  v8 = unk_1EB737E50;
  sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (!v3)
  {
    sub_1B0DFE880(0x4F49445541uLL, 0xE500000000000000, 0, 0, a1, v6, v7);
    sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
    *a3 = v9;
    a3[1] = v8;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

double sub_1B0DBD890@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  if (qword_1EB6DE158 != -1)
  {
    swift_once();
  }

  v9 = static Media.TopLevelType.image;
  v8 = unk_1EB737E40;
  sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (!v3)
  {
    sub_1B0DFE880(0x4547414D49uLL, 0xE500000000000000, 0, 0, a1, v6, v7);
    sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
    *a3 = v9;
    a3[1] = v8;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

double sub_1B0DBD98C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  if (qword_1EB6DE148 != -1)
  {
    swift_once();
  }

  v9 = static Media.TopLevelType.message;
  v8 = unk_1EB737E20;
  sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (!v3)
  {
    sub_1B0DFE880(0x4547415353454DuLL, 0xE700000000000000, 0, 0, a1, v6, v7);
    sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
    *a3 = v9;
    a3[1] = v8;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

double sub_1B0DBDA8C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  if (qword_1EB6DE150 != -1)
  {
    swift_once();
  }

  v9 = static Media.TopLevelType.video;
  v8 = unk_1EB737E30;
  sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (!v3)
  {
    sub_1B0DFE880(0x4F45444956uLL, 0xE500000000000000, 0, 0, a1, v6, v7);
    sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
    *a3 = v9;
    a3[1] = v8;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t *sub_1B0DBDB88(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v10 = *result;
    v11 = result[1];
    v12 = *(result + 4);
    v15 = *(result + 22);
    v16 = *(result + 10);

    sub_1B0DBCEB4(v9, v7, a3, a6, 0x7B7EuLL, &v17, 0xE200000000000000, 1488);
    if (v6)
    {

      *v9 = v10;
      *(v9 + 8) = v11;
      *(v9 + 16) = v12;
      *(v9 + 20) = v16;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    return v17;
  }

  return result;
}

uint64_t *sub_1B0DBDCD4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = result[1];
    v14 = *(result + 4);
    v23 = *(result + 22);
    v24 = *(result + 10);

    sub_1B0DBDFC0(v11, v9, a3, a4, a5, a6, a7, v25);
    if (v8)
    {

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v24;
      *(v11 + 22) = v23;
      return swift_willThrow();
    }

    v20 = v25[1];
    *a8 = v25[0];
    a8[1] = v20;
    v21 = v25[3];
    a8[2] = v25[2];
    a8[3] = v21;
  }

  return result;
}

void sub_1B0DBDE10(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    v7 = *(a1 + 2);
    if (*(a1 + 3) == v7)
    {
      sub_1B0D3EA30();
      swift_allocError();
LABEL_11:
      swift_willThrow();
      return;
    }

    v8 = *(a1 + 22);
    v9 = *(a1 + 10);
    v10 = *a1;
    swift_beginAccess();
    v11 = v7 + 1;
    if (v7 == -1)
    {
      __break(1u);
      return;
    }

    v12 = *(*(v10 + 24) + (v8 | (v9 << 8)) + v7);
    *(a1 + 2) = v11;
    v13 = v12 == 10 || v12 == 13;
    if (v13 || (v12 & 0x80) != 0 || !v12 || v12 == 34 || v12 == 92)
    {
      sub_1B0436554();
      swift_allocError();
      *v14 = 0xD000000000000011;
      v14[1] = 0x80000001B0F303A0;
      v14[2] = 0xD000000000000020;
      v14[3] = 0x80000001B0F2FA10;
      v14[4] = 1761;
      goto LABEL_11;
    }

    sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    sub_1B0E44C78();
  }
}

void sub_1B0DBDFC0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v17 = sub_1B0DB4268(a1, a2, a3, a4, a5, a6, a7, sub_1B0DBEB44);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v32 = v17;
      if (a2 + 1 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v20 = a3;
        swift_willThrow();
      }

      else
      {
        v29 = v18;
        v30 = v19;
        sub_1B0436204(a1);

        sub_1B0DBDE10(a1, a2 + 1, a3);
        v31 = v21;
        v28 = v22;

        v38 = 0;
        v39 = MEMORY[0x1E69E7CC0];
        v40 = MEMORY[0x1E69E7CC0];

        sub_1B0DFCF10(a1, a2 + 1, a3, &v38, a4, a5, a6, a7);

        v23 = v38;
        v24 = v39;
        v25 = v40;
        sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
        v34[0] = v32;
        v34[1] = v29;
        LODWORD(v35) = v30;
        WORD2(v35) = WORD2(v30);
        BYTE6(v35) = BYTE6(v30);
        *(&v35 + 1) = v28;
        *&v36 = v31;
        *(&v36 + 1) = v23;
        *&v37 = v24;
        *(&v37 + 1) = v25;
        v38 = v32;
        v39 = v29;
        LODWORD(v40) = v30;
        WORD2(v40) = WORD2(v30);
        BYTE6(v40) = BYTE6(v30);
        v41 = v28;
        v42 = v31;
        v43 = v23;
        v44 = v24;
        v45 = v25;
        sub_1B0D3CB18(v34, v33);
        sub_1B0CF98D4(&v38);
        v26 = v35;
        *a8 = *v34;
        a8[1] = v26;
        v27 = v37;
        a8[2] = v36;
        a8[3] = v27;
      }
    }
  }
}

uint64_t sub_1B0DBE4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v19 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    *v8 = v19;
    *(v8 + 8) = v18;
    *(v8 + 16) = v15;
    *(v8 + 20) = v14;
    *(v8 + 22) = i;
  }

  else
  {
    v9 = a3;
    if (v19 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v25 = v9;
      return swift_willThrow();
    }

    v12 = a2;
    v8 = a1;
    v61 = a8;
    v20 = *a1;
    v21 = *(a1 + 8);
    v22 = *(a1 + 16);
    v23 = *(a1 + 20);
    v24 = *(a1 + 22);
    sub_1B0436204(a1);
    if (v10)
    {
      *v8 = v20;
      *(v8 + 8) = v21;
      *(v8 + 16) = v22;
      *(v8 + 20) = v23;
      *(v8 + 22) = v24;
      return swift_willThrow();
    }

    v27 = sub_1B0DB4268(v8, v12, v9, a4, a5, a6, a7, sub_1B0DBEB44);
    v58 = v28;
    v59 = v29;
    v60 = v27;
    sub_1B0436204(v8);
    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, v8, v12, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7628, &unk_1B0EFA590);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B0EC1E70;
    *(v16 + 32) = sub_1B0DB4268(v8, v12, v9, a4, a5, a6, a7, sub_1B0DBEB44);
    *(v16 + 40) = v30;
    *(v16 + 44) = v31;
    *(v16 + 48) = v32;
    *(v16 + 52) = v33;
    *(v16 + 54) = v34;
    v35 = *v8;
    v17 = *(v8 + 8);
    v36 = *(v8 + 20);
    v55 = *(v8 + 16);
    v56 = *(v8 + 22);

    v57 = v19 + 1;
    if (v19 + 1 >= v9)
    {
      sub_1B0439BCC();
      v11 = swift_allocError();
      *v49 = v9;
      goto LABEL_17;
    }

    v52 = v16;
    v53 = v35;
    v54 = v36;
    v37 = v19 + 2;
    v19 = *v8;
    v18 = *(v8 + 8);
    v15 = *(v8 + 16);
    v14 = *(v8 + 20);
    for (i = *(v8 + 22); v37 < v9; i = *(v8 + 22))
    {
      swift_retain_n();
      sub_1B0436204(v8);

      v38 = sub_1B0DB4268(v8, v57, v9, a4, a5, a6, a7, sub_1B0DBEB44);
      v40 = v39;
      v41 = v38;
      v43 = v42;

      v45 = *(v16 + 16);
      v44 = *(v16 + 24);
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        v48 = sub_1B0DF57A0((v44 > 1), v45 + 1, 1, v16);
        v46 = v45 + 1;
        v16 = v48;
      }

      *(v16 + 16) = v46;
      v47 = v16 + 24 * v45;
      *(v47 + 32) = v41;
      *(v47 + 40) = v43;
      *(v47 + 48) = v40;
      *(v47 + 52) = WORD2(v40);
      *(v47 + 54) = BYTE6(v40);
      v19 = *v8;
      v18 = *(v8 + 8);
      v15 = *(v8 + 16);
      v14 = *(v8 + 20);
    }

    sub_1B0439BCC();
    v11 = swift_allocError();
    *v50 = v9;

    v16 = v52;
  }

  swift_willThrow();

  *v8 = v19;
  *(v8 + 8) = v18;
  *(v8 + 16) = v15;
  *(v8 + 20) = v14;
  *(v8 + 22) = i;
  v36 = v54;
  v35 = v53;
LABEL_17:
  swift_willThrow();
  v51 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {

    result = sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v8, v12, v9);
    *v61 = v60;
    *(v61 + 8) = v58;
    *(v61 + 16) = v59;
    *(v61 + 20) = WORD2(v59);
    *(v61 + 22) = BYTE6(v59);
    *(v61 + 24) = v16;
  }

  else
  {

    *v8 = v35;
    *(v8 + 8) = v17;
    *(v8 + 16) = v55;
    *(v8 + 20) = v36;
    *(v8 + 22) = v56;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0DBEA68(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0DFE880(0x2EuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    result = sub_1B0DFF3DC(a1, a2, a3, 1);
    if (result < 0)
    {
      sub_1B0436554();
      swift_allocError();
      *v8 = 0xD000000000000011;
      v8[1] = 0x80000001B0F2FEE0;
      v8[2] = 0xD000000000000020;
      v8[3] = 0x80000001B0F2FA10;
      v8[4] = 202;
      return swift_willThrow();
    }
  }

  return result;
}

void sub_1B0DBEB44(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B0DFE880(0x22uLL, 0xE100000000000000, 1, 0, a1, a2, a3);
  if (v4)
  {
    return;
  }

  v55 = 0;
  sub_1B0DFEFA4(a1, a2, a3, &v55, &v55 + 1);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1B0DFE880(0x22uLL, 0xE100000000000000, 1, 0, a1, a2, a3);
  if ((v55 & 0x100) == 0)
  {
    *a4 = v10;
    *(a4 + 8) = v12;
    *(a4 + 16) = v14;
    *(a4 + 20) = WORD2(v14);
    *(a4 + 22) = BYTE6(v14);
    return;
  }

  v48 = v12;
  v49 = HIDWORD(v12);
  v15 = qword_1EB6DE5C0;

  if (v15 != -1)
  {
LABEL_48:
    swift_once();
  }

  v47 = a4;
  v16 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v17 = HIDWORD(qword_1EB737EB0);
  v18 = dword_1EB737EB8;
  v19 = word_1EB737EBC;
  v20 = byte_1EB737EBE;
  v50 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v51 = qword_1EB737EB0;
  v52 = dword_1EB737EB8;
  v53 = word_1EB737EBC;
  v54 = byte_1EB737EBE;

  swift_beginAccess();
  if (v48 == v49)
  {
LABEL_5:

    *v47 = v16;
    *(v47 + 8) = v51;
    *(v47 + 12) = v17;
    *(v47 + 16) = v18;
    *(v47 + 20) = v19;
    *(v47 + 22) = v20;
    return;
  }

  v46 = v14;
  v21 = BYTE6(v14) | (WORD2(v14) << 8);
  LODWORD(v14) = v48;
  while (1)
  {
    a4 = v10;
    v24 = *(v10 + 24);
    v10 = v21;
    v25 = v24 + v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
    v26 = swift_allocObject();
    v27 = _swift_stdlib_malloc_size_0(v26);
    *(v26 + 16) = 1;
    *(v26 + 24) = 2 * v27 - 64;
    v28 = *(v25 + v14);
    *(v26 + 32) = v28;
    v29 = __CFADD__(v14, 1);
    v14 = (v14 + 1);
    if (v29)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v28 == 92)
    {
      break;
    }

    v37 = v17 + 1;
    if (v17 == -1)
    {
      goto LABEL_43;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v37 >= v18)
      {
        v38 = v37 - v18;
      }

      else
      {
        v38 = 0;
      }

      v39 = sub_1B03904C0();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v38, v39 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v17);
    v16 = v50;
    v18 = v52;
    v19 = v53;
    v20 = v54;
    swift_beginAccess();
    v40 = v54 | (v53 << 8);
    v41 = v52 - v40;
    if (v52 - v40 >= v17)
    {
      v41 = v17;
    }

    if (!v17)
    {
      v41 = 0;
    }

    *(*(v50 + 24) + v40 + v41) = v28;
    v17 = HIDWORD(v51) + 1;
    if (HIDWORD(v51) == -1)
    {
      goto LABEL_44;
    }

LABEL_14:
    v21 = v10;
    HIDWORD(v51) = v17;
    v10 = a4;
    if (v14 == v49)
    {
      goto LABEL_5;
    }
  }

  if (v14 == v49)
  {
    goto LABEL_39;
  }

  v30 = *(a4 + 24) + v10;
  v31 = swift_allocObject();
  v32 = _swift_stdlib_malloc_size_0(v31);
  *(v31 + 16) = 1;
  *(v31 + 24) = 2 * v32 - 64;
  v33 = *(v30 + v14);
  *(v31 + 32) = v33;
  v29 = __CFADD__(v14, 1);
  v14 = (v14 + 1);
  if (v29)
  {
    goto LABEL_45;
  }

  if (v33 == 92 || v33 == 34)
  {
    v34 = v17 + 1;
    if (v17 == -1)
    {
      goto LABEL_46;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v34 >= v18)
      {
        v35 = v34 - v18;
      }

      else
      {
        v35 = 0;
      }

      v36 = sub_1B03904C0();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v35, v36 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v17);
    v16 = v50;
    v18 = v52;
    v19 = v53;
    v20 = v54;
    swift_beginAccess();
    v22 = v54 | (v53 << 8);
    v23 = v52 - v22;
    if (v52 - v22 >= v17)
    {
      v23 = v17;
    }

    if (!v17)
    {
      v23 = 0;
    }

    *(*(v50 + 24) + v22 + v23) = v33;
    v17 = HIDWORD(v51) + 1;
    if (HIDWORD(v51) == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_14;
  }

LABEL_39:
  sub_1B0E46298();

  if (v49 < v48)
  {
    __break(1u);
  }

  else if (v49 <= (v46 - v10))
  {
    swift_beginAccess();

    v42 = sub_1B0E44C68();
    v44 = v43;

    MEMORY[0x1B2726E80](v42, v44);

    MEMORY[0x1B2726E80](39, 0xE100000000000000);
    sub_1B0436554();
    swift_allocError();
    *v45 = 0xD000000000000021;
    v45[1] = 0x80000001B0F301D0;
    v45[2] = 0xD000000000000020;
    v45[3] = 0x80000001B0F2FA10;
    v45[4] = 2065;
    swift_willThrow();

    return;
  }

  __break(1u);
}

void sub_1B0DBF090(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  sub_1B0E04448(a5, 34, 0xE100000000000000, a1, a2, a3);
  if (v5)
  {
    return;
  }

  v57 = 0;
  sub_1B0DFFDF4(a1, a2, a3, &v57, &v57 + 1);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_1B0E04448(v16, 34, 0xE100000000000000, a1, a2, a3);
  if ((v57 & 0x100) == 0)
  {
    *a4 = v11;
    *(a4 + 8) = v13;
    *(a4 + 16) = v15;
    *(a4 + 20) = WORD2(v15);
    *(a4 + 22) = BYTE6(v15);
    return;
  }

  v50 = v13;
  v51 = HIDWORD(v13);
  v17 = qword_1EB6DE5C0;

  if (v17 != -1)
  {
LABEL_48:
    swift_once();
  }

  v49 = a4;
  v18 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v19 = HIDWORD(qword_1EB737EB0);
  v20 = dword_1EB737EB8;
  v21 = word_1EB737EBC;
  v22 = byte_1EB737EBE;
  v52 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v53 = qword_1EB737EB0;
  v54 = dword_1EB737EB8;
  v55 = word_1EB737EBC;
  v56 = byte_1EB737EBE;

  swift_beginAccess();
  if (v50 == v51)
  {
LABEL_5:

    *v49 = v18;
    *(v49 + 8) = v53;
    *(v49 + 12) = v19;
    *(v49 + 16) = v20;
    *(v49 + 20) = v21;
    *(v49 + 22) = v22;
    return;
  }

  v48 = v15;
  v23 = BYTE6(v15) | (WORD2(v15) << 8);
  LODWORD(v15) = v50;
  while (1)
  {
    a4 = v11;
    v26 = *(v11 + 24);
    v11 = v23;
    v27 = v26 + v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
    v28 = swift_allocObject();
    v29 = _swift_stdlib_malloc_size_0(v28);
    *(v28 + 16) = 1;
    *(v28 + 24) = 2 * v29 - 64;
    v30 = *(v27 + v15);
    *(v28 + 32) = v30;
    v31 = __CFADD__(v15, 1);
    v15 = (v15 + 1);
    if (v31)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v30 == 92)
    {
      break;
    }

    v39 = v19 + 1;
    if (v19 == -1)
    {
      goto LABEL_43;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v39 >= v20)
      {
        v40 = v39 - v20;
      }

      else
      {
        v40 = 0;
      }

      v41 = sub_1B03904C0();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v40, v41 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v19);
    v18 = v52;
    v20 = v54;
    v21 = v55;
    v22 = v56;
    swift_beginAccess();
    v42 = v56 | (v55 << 8);
    v43 = v54 - v42;
    if (v54 - v42 >= v19)
    {
      v43 = v19;
    }

    if (!v19)
    {
      v43 = 0;
    }

    *(*(v52 + 24) + v42 + v43) = v30;
    v19 = HIDWORD(v53) + 1;
    if (HIDWORD(v53) == -1)
    {
      goto LABEL_44;
    }

LABEL_14:
    v23 = v11;
    HIDWORD(v53) = v19;
    v11 = a4;
    if (v15 == v51)
    {
      goto LABEL_5;
    }
  }

  if (v15 == v51)
  {
    goto LABEL_39;
  }

  v32 = *(a4 + 24) + v11;
  v33 = swift_allocObject();
  v34 = _swift_stdlib_malloc_size_0(v33);
  *(v33 + 16) = 1;
  *(v33 + 24) = 2 * v34 - 64;
  v35 = *(v32 + v15);
  *(v33 + 32) = v35;
  v31 = __CFADD__(v15, 1);
  v15 = (v15 + 1);
  if (v31)
  {
    goto LABEL_45;
  }

  if (v35 == 92 || v35 == 34)
  {
    v36 = v19 + 1;
    if (v19 == -1)
    {
      goto LABEL_46;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v36 >= v20)
      {
        v37 = v36 - v20;
      }

      else
      {
        v37 = 0;
      }

      v38 = sub_1B03904C0();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v37, v38 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v19);
    v18 = v52;
    v20 = v54;
    v21 = v55;
    v22 = v56;
    swift_beginAccess();
    v24 = v56 | (v55 << 8);
    v25 = v54 - v24;
    if (v54 - v24 >= v19)
    {
      v25 = v19;
    }

    if (!v19)
    {
      v25 = 0;
    }

    *(*(v52 + 24) + v24 + v25) = v35;
    v19 = HIDWORD(v53) + 1;
    if (HIDWORD(v53) == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_14;
  }

LABEL_39:
  sub_1B0E46298();

  if (v51 < v50)
  {
    __break(1u);
  }

  else if (v51 <= (v48 - v11))
  {
    swift_beginAccess();

    v44 = sub_1B0E44C68();
    v46 = v45;

    MEMORY[0x1B2726E80](v44, v46);

    MEMORY[0x1B2726E80](39, 0xE100000000000000);
    sub_1B0436554();
    swift_allocError();
    *v47 = 0xD000000000000021;
    v47[1] = 0x80000001B0F301D0;
    v47[2] = 0xD000000000000020;
    v47[3] = 0x80000001B0F2FA10;
    v47[4] = 2110;
    swift_willThrow();

    return;
  }

  __break(1u);
}

uint64_t sub_1B0DBF5CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = a3;
  if (v4 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v12 = v5;
    goto LABEL_6;
  }

  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 4);
  v10 = *(a1 + 10);
  v11 = *(a1 + 22);

  sub_1B0DFE880(0x5D5BuLL, 0xE200000000000000, 0, 0, a1, v4, v5);
  if (!v3)
  {
    if (qword_1EB6DE648 == -1)
    {
LABEL_9:
      v5 = static SectionSpecifier.complete;
      v14 = *algn_1EB737EC8;
      v15 = byte_1EB737ED0;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ACE964(v14, v15);

      return v5;
    }

LABEL_11:
    swift_once();
    goto LABEL_9;
  }

  *a1 = v7;
  a1[1] = v8;
  *(a1 + 4) = v9;
  *(a1 + 10) = v10;
  *(a1 + 22) = v11;
LABEL_6:
  swift_willThrow();
  return v5;
}

uint64_t *sub_1B0DBF724(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (a2 + 1);
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  v11 = result;
  if (v8 >= a3)
  {
    sub_1B0439BCC();
    v18 = swift_allocError();
    *v21 = a3;
LABEL_7:
    swift_willThrow();
    v32 = v18;
    v22 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v32 = v18;
      v23 = v18;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return v8;
      }
    }

    if (v8 < a3)
    {

      v8 = sub_1B0DBFAAC(v11, v8, a3, a4, a5, a6, a7);
LABEL_24:

      return v8;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v24 = a3;
    swift_willThrow();
    return v8;
  }

  v12 = *result;
  v13 = result[1];
  v14 = *(result + 4);
  v15 = *(result + 10);
  v16 = *(result + 22);

  v17 = sub_1B0DC1404(v11, v8, a3);
  v18 = v7;
  if (v7)
  {

    *v11 = v12;
    *(v11 + 8) = v13;
    *(v11 + 16) = v14;
    *(v11 + 20) = v15;
    *(v11 + 22) = v16;
    goto LABEL_7;
  }

  v28 = v17;

  sub_1B0E04278(v11, v8, a3, a4, a5, a6, a7);
  v25 = v19;
  v26 = v20;

  if (v26 == 255)
  {
    v25 = 0;
    v27 = 2;
  }

  else
  {
    v27 = v26;
  }

  v8 = v28;
  if (v28[2] || v27 <= 1u || v25 <= 1 || v25 == 3)
  {
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t *sub_1B0DBFAAC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = result[1];
    v13 = *(result + 4);
    v22 = *(result + 22);
    v23 = *(result + 10);

    v18 = sub_1B0DBFC6C(v10, v8, a3, a4, a5, a6, a7);
    if (v7)
    {

LABEL_9:
      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v23;
      *(v10 + 22) = v22;
      return swift_willThrow();
    }

    if (v19 >= 2u && v18 == 2)
    {

      sub_1B0436554();
      swift_allocError();
      *v21 = 0xD00000000000002ALL;
      v21[1] = 0x80000001B0F30270;
      v21[2] = 0xD000000000000020;
      v21[3] = 0x80000001B0F2FA10;
      v21[4] = 2240;
      swift_willThrow();
      goto LABEL_9;
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1B0DBFC6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7608, &qword_1B0EF5108);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC4700;
  *(inited + 32) = sub_1B0DBFF40;
  *(inited + 40) = 0;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B0DC1E70;
  *(v15 + 24) = v14;
  *(inited + 48) = sub_1B0DC1ECC;
  *(inited + 56) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0DC1EE8;
  *(v17 + 24) = v16;
  *(inited + 64) = sub_1B0DC3E08;
  *(inited + 72) = v17;
  *(inited + 80) = sub_1B0DBFF6C;
  *(inited + 88) = 0;
  *(inited + 96) = sub_1B0DBFF9C;
  *(inited + 104) = 0;
  *(inited + 112) = sub_1B0DBFFC8;
  *(inited + 120) = 0;
  swift_retain_n();
  sub_1B0D94E60(inited, a1, a2, a3, 0xD000000000000020, 0x80000001B0F2FA10, 2314);
  v19 = v18;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
  swift_arrayDestroy();
  return v19;
}

uint64_t *sub_1B0DBFE90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1B0DFE880(0xD000000000000012, 0x80000001B0F30250, 0, 0, a1, a2, a3);
  if (!v7)
  {
    return sub_1B0DB91C4(a1, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

void sub_1B0DBFFD8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a1 + 2);
  if (*(a1 + 3) == v5)
  {
    sub_1B0D3EA30();
    swift_allocError();
LABEL_3:
    swift_willThrow();
    return;
  }

  v9 = *(a1 + 22);
  v10 = *(a1 + 10);
  v12 = *a1;
  swift_beginAccess();
  if (v5 == -1)
  {
    __break(1u);
  }

  else
  {
    v13 = *(*(v12 + 24) + (v9 | (v10 << 8)) + v5);
    *(a1 + 2) = v5 + 1;
    v14 = (v13 - 45) > 0x32 || ((1 << (v13 - 45)) & 0x4000000000003) == 0;
    if (v14 && (v13 & 0xFFFFFFDF) - 91 < 0xFFFFFFE6)
    {
      sub_1B0E46298();
      v18 = sub_1B0E469C8();
      v20 = v19;

      MEMORY[0x1B2726E80](0x1000000000000018, 0x80000001B0F303C0);
      sub_1B0436554();
      swift_allocError();
      *v21 = v18;
      v21[1] = v20;
      v21[2] = 0xD000000000000020;
      v21[3] = 0x80000001B0F2FA10;
      v21[4] = 2641;
      goto LABEL_3;
    }

    sub_1B0DFFABC(a1, a2, a3);
    if (!v4)
    {
      sub_1B0DFF2E8(v15, v16, v17 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 2647);
      v23 = v22;
      v25 = v24;
      v27 = sub_1B0E44C68();
      v28 = v26;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      MEMORY[0x1B2726E80](v25, v23);

      *a4 = v27;
      a4[1] = v28;
    }
  }
}

void sub_1B0DC024C(char **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
LABEL_25:
    v8 = sub_1B0AFF0E8(0, *(v8 + 2) + 1, 1, v8);
LABEL_12:
    v28 = *(v8 + 2);
    v27 = *(v8 + 3);
    v29 = v40;
    if (v28 >= v27 >> 1)
    {
      v29 = v40;
      v8 = sub_1B0AFF0E8((v27 > 1), v28 + 1, 1, v8);
    }

    *(v8 + 2) = v28 + 1;
    v30 = &v8[16 * v28];
    *(v30 + 4) = v50;
    *(v30 + 5) = v47;
    *v43 = v8;
    if (v52 + 1 >= v11)
    {
      sub_1B0439BCC();
      v35 = swift_allocError();
      *v36 = v11;
    }

    else
    {
      while (1)
      {
        v31 = *v9;
        v32 = *(v9 + 8);
        v49 = *(v9 + 16);
        v33 = *(v9 + 20);
        v34 = *(v9 + 22);

        sub_1B0436204(v9);
        v35 = v29;

        if (v29)
        {
          break;
        }

        v29 = 0;
        sub_1B0DC024C(v43, v9, v52, v11, v42, v14, v13, v12);
      }

      *v9 = v31;
      *(v9 + 8) = v32;
      *(v9 + 16) = v49;
      *(v9 + 20) = v33;
      *(v9 + 22) = v34;
    }

    swift_willThrow();

    v37 = v35;
    goto LABEL_23;
  }

  v11 = a4;
  if (v15 >= a4)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v22 = v11;
LABEL_10:
    swift_willThrow();
    return;
  }

  v12 = a8;
  v13 = a7;
  v14 = a6;
  v9 = a2;
  v18 = *a2;
  v51 = *(a2 + 2);
  v48 = *(a2 + 3);
  v46 = *(a2 + 4);
  v44 = *(a2 + 22);
  v45 = *(a2 + 10);
  swift_retain_n();
  v19 = sub_1B0DB3AC0(v9, v15, v11, a5, v14, v13, v12);
  v42 = a5;
  v43 = a1;
  v52 = v15;
  if (!v10)
  {
    sub_1B0DFF2E8(v19, v20, v21 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 2681);
    v40 = 0;
    v47 = v24;
    v50 = v23;
    v8 = *a1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

  v41 = v10;

  *v9 = v18;
  *(v9 + 8) = v51;
  *(v9 + 12) = v48;
  *(v9 + 16) = v46;
  *(v9 + 20) = v45;
  v25 = v15 + 1;
  *(v9 + 22) = v44;
  if (v15 + 1 >= v11)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v26 = v11;
    swift_willThrow();

    *v9 = v18;
    *(v9 + 8) = v51;
    *(v9 + 12) = v48;
    *(v9 + 16) = v46;
    *(v9 + 20) = v45;
    *(v9 + 22) = v44;
    goto LABEL_10;
  }

  swift_retain_n();
  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, v9, v25, v11);
  sub_1B0DC024C(v43, v9, v25, v11, 0, v14, v13, v12);
  sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v9, v25, v11);
  if (v15 + 2 < v11)
  {
    while (1)
    {

      sub_1B0436204(v9);

      sub_1B0DC024C(v43, v9, v25, v11, a5, v14, v13, v12);
    }
  }

  sub_1B0439BCC();
  v38 = swift_allocError();
  *v39 = v11;
  swift_willThrow();

  v37 = v38;
LABEL_23:
}

uint64_t sub_1B0DC07C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_1B0DFE880(a8, a9, 0, 0, a1, a2, a3);
  if (!v10)
  {
    return a10(a1, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_1B0DC086C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  result = sub_1B0DFE880(a3, a4, 0, 0, a1, *a2, a2[1]);
  if (!v7)
  {
    *a7 = a5;
    *(a7 + 8) = a6;
  }

  return result;
}

uint64_t sub_1B0DC08C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1B0DFF3DC(a1, a2, a3, 1);
  if (!v5)
  {
    if (result < 0)
    {
      sub_1B0436554();
      swift_allocError();
      *v10 = 0xD000000000000011;
      v10[1] = 0x80000001B0F2FEE0;
      v10[2] = 0xD000000000000020;
      v10[3] = 0x80000001B0F2FA10;
      v11 = 202;
    }

    else
    {
      if (v9 == a4)
      {
        *a5 = result;
        return result;
      }

      sub_1B0E46298();

      v12 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v12);

      MEMORY[0x1B2726E80](0x2C73746967696420, 0xED000020746F6720);
      v13 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v13);

      sub_1B0436554();
      swift_allocError();
      *v10 = 0x6465746365707845;
      v10[1] = 0xE900000000000020;
      v10[2] = 0xD000000000000020;
      v10[3] = 0x80000001B0F2FA10;
      v11 = 3051;
    }

    v10[4] = v11;
    return swift_willThrow();
  }

  return result;
}

uint64_t *sub_1B0DC0AB0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v7 = result;
    v8 = *result;
    v9 = result[1];
    v10 = *(result + 4);
    v11 = *(result + 10);
    v12 = *(result + 22);

    sub_1B0DC08C4(v7, v5, a3, a4, &v15);
    if (v4)
    {

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
      return swift_willThrow();
    }

    return v15;
  }

  return result;
}

void sub_1B0DC0C0C(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v4 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v15 = a3;
    goto LABEL_9;
  }

  v7 = *result;
  v8 = result[1];
  v9 = *(result + 4);
  v10 = *(result + 10);
  v11 = *(result + 22);

  sub_1B0DFF7C4(result, v4, a3);
  if (v3)
  {

    *result = v7;
    result[1] = v8;
    *(result + 4) = v9;
    *(result + 10) = v10;
    *(result + 22) = v11;
LABEL_9:
    swift_willThrow();
    return;
  }

  if (HIDWORD(v13) >= v13)
  {
    if (v14 - (BYTE6(v14) | (WORD2(v14) << 8)) >= HIDWORD(v13))
    {
      v18[0] = v12;
      v18[1] = v13;
      v19 = v14;
      v20 = WORD2(v14);
      v21 = BYTE6(v14);
      v22 = v13;
      v23 = HIDWORD(v13);

      sub_1B0D5E39C(v18, 0);
      v17 = v16;
      sub_1B04394F4(v18);
      sub_1B0D8F260(v17, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);

      return;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t (*sub_1B0DC0EE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void)))(void)
{
  result = sub_1B0DFE880(0x5CuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v4)
  {
    return a4;
  }

  if (!__OFADD__(a2, 1))
  {
    if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      v10 = swift_allocError();
      *v11 = a3;
      a4 = v10;
      swift_willThrow();
    }

    else
    {
      sub_1B0441264(a1, &v15);
      sub_1B0DFF2E8(v15, v16, v17 | (v18 << 32) | (v19 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 115);
      v12 = a4();
      v14 = v13;

      v15 = 92;
      v16 = 0xE100000000000000;
      MEMORY[0x1B2726E80](v12, v14);

      a4 = ByteBufferAllocator.buffer(string:)(v15, v16, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
    }

    return a4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1B0DC10F8(uint64_t *result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = result[1];
    v11 = *(result + 4);
    v12 = *(result + 10);
    v13 = *(result + 22);

    a4(&v15, v8, v5, a3);
    if (v4)
    {

      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    return v15;
  }

  return result;
}

uint64_t *sub_1B0DC120C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v15 = a3;
    }

    else
    {
      v7 = result;
      v8 = *result;
      v9 = result[1];
      v10 = *(result + 4);
      v11 = *(result + 10);
      v12 = *(result + 22);
      if (a2 + 2 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v16 = a3;
      }

      else
      {

        sub_1B0DFA19C(v7, v26);
        if (!v4)
        {
          sub_1B0DFF2E8(v26[0], v26[1], v27 | (v28 << 32) | (v29 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 2766);
          v23 = v13;
          v24 = v14;

          sub_1B0E02A4C(v7, v5, a3);
          v18 = v17;
          v20 = v19;
          v22 = v21;

          *a4 = v23;
          *(a4 + 8) = v24;
          *(a4 + 16) = v18;
          *(a4 + 24) = v22;
          *(a4 + 32) = v20;
          *(a4 + 38) = BYTE6(v20);
          *(a4 + 36) = WORD2(v20);
          return result;
        }
      }

      swift_willThrow();

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t *sub_1B0DC1404(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v5 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v14 = a3;
      goto LABEL_8;
    }

    v7 = result;
    v8 = *result;
    v9 = result[1];
    v10 = *(result + 4);
    v11 = *(result + 10);
    v12 = *(result + 22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE0, &qword_1B0EE4E80);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1B0EC1E70;

    v13 = sub_1B0DFF3DC(v7, v5, a3, 0);
    if (v3)
    {
    }

    else
    {
      if ((v13 & 0x8000000000000000) == 0)
      {
        *(v4 + 32) = v13;
        if (v5 + 1 >= a3)
        {
          sub_1B0439BCC();
          swift_allocError();
          *v24 = a3;
        }

        else
        {
          v15 = *(v7 + 8);
          v34 = *(v7 + 20);
          v35 = *(v7 + 16);
          v33 = *(v7 + 22);
          v39 = *v7;

          if (v5 + 2 >= a3)
          {
            sub_1B0439BCC();
            v25 = swift_allocError();
            *v26 = a3;
            v27 = v39;
          }

          else
          {
            v16 = v5 + 3;
            v17 = *v7;
            v18 = *(v7 + 8);
            v41 = *(v7 + 20);
            v42 = *(v7 + 16);
            v40 = *(v7 + 22);
            if (v5 + 3 >= a3)
            {
LABEL_24:
              v28 = v17;
              sub_1B0439BCC();
              v25 = swift_allocError();
              *v29 = a3;

              v27 = v39;
            }

            else
            {
              v38 = v5 + 4;
              v19 = v4;
              v36 = v12;
              v37 = v11;
              while (1)
              {
                v43 = v19;
                v44 = v17;
                swift_retain_n();
                sub_1B0DFE880(0x2EuLL, 0xE100000000000000, 0, 0, v7, v16, a3);
                if (v38 >= a3)
                {
                  sub_1B0439BCC();
                  v25 = swift_allocError();
                  *v30 = a3;
                  v27 = v39;
                  swift_willThrow();

                  goto LABEL_27;
                }

                sub_1B043DDD8(v7, v38, a3, 0, &v45);

                v20 = v45;
                if ((v45 & 0x8000000000000000) != 0)
                {
                  break;
                }

                v19 = v43;
                v22 = *(v43 + 2);
                v21 = *(v43 + 3);
                if (v22 >= v21 >> 1)
                {
                  v19 = sub_1B0DF5438((v21 > 1), v22 + 1, 1, v43);
                }

                v16 = v5 + 3;
                *(v19 + 2) = v22 + 1;
                *&v19[8 * v22 + 32] = v20;
                v17 = *v7;
                v18 = *(v7 + 8);
                v41 = *(v7 + 20);
                v42 = *(v7 + 16);
                v40 = *(v7 + 22);
                v12 = v36;
                v11 = v37;
                if (v5 + 3 >= a3)
                {
                  goto LABEL_24;
                }
              }

              sub_1B0436554();
              v25 = swift_allocError();
              *v31 = 0xD000000000000011;
              v31[1] = 0x80000001B0F2FEE0;
              v31[2] = 0xD000000000000020;
              v31[3] = 0x80000001B0F2FA10;
              v31[4] = 202;
              swift_willThrow();
              v4 = v43;
              v12 = v36;
              v11 = v37;
              v27 = v39;
LABEL_27:
              v28 = v44;
            }

            swift_willThrow();

            *v7 = v28;
            *(v7 + 8) = v18;
            *(v7 + 16) = v42;
            *(v7 + 20) = v41;
            *(v7 + 22) = v40;
          }

          swift_willThrow();
          v46 = v25;
          v32 = v25;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
          if (swift_dynamicCast())
          {

            return v4;
          }

          *v7 = v27;
          *(v7 + 8) = v15;
          *(v7 + 16) = v35;
          *(v7 + 20) = v34;
          *(v7 + 22) = v33;
        }

        swift_willThrow();

        goto LABEL_6;
      }

      sub_1B0436554();
      swift_allocError();
      *v23 = 0xD000000000000011;
      v23[1] = 0x80000001B0F2FEE0;
      v23[2] = 0xD000000000000020;
      v23[3] = 0x80000001B0F2FA10;
      v23[4] = 202;
      swift_willThrow();
    }

    *(v4 + 16) = 0;
LABEL_6:

    *v7 = v8;
    *(v7 + 8) = v9;
    *(v7 + 16) = v10;
    *(v7 + 20) = v11;
    *(v7 + 22) = v12;
LABEL_8:
    swift_willThrow();
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1B0DC19BC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v6 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v14 = a3;
LABEL_18:
      swift_willThrow();
      return v5;
    }

    v8 = result;
    v9 = *result;
    v5 = *(result + 2);
    v10 = *(result + 3);
    v11 = *(result + 4);
    v22 = *(result + 10);
    v12 = *(result + 22);
    if (a2 + 2 >= a3)
    {
      sub_1B0439BCC();
      v13 = swift_allocError();
      *v15 = a3;
    }

    else
    {
      swift_retain_n();
      sub_1B0DFE880(0x7EuLL, 0xE100000000000000, 0, 0, v8, v6 + 1, a3);
      v13 = v4;
      if (!v4)
      {

        goto LABEL_12;
      }

      *v8 = v9;
      *(v8 + 8) = v5;
      *(v8 + 12) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v22;
      *(v8 + 22) = v12;
    }

    swift_willThrow();
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (!swift_dynamicCast())
    {

LABEL_17:
      *v8 = v9;
      *(v8 + 8) = v5;
      *(v8 + 12) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v22;
      *(v8 + 22) = v12;
      goto LABEL_18;
    }

LABEL_12:
    sub_1B0DFE880(0x7BuLL, 0xE100000000000000, 0, 0, v8, v6, a3);
    v20 = v5;
    v17 = sub_1B0DFF3DC(v8, v6, a3, 1);
    v5 = v17;
    if (v17 < 0)
    {

      sub_1B0436554();
      swift_allocError();
      *v19 = 0xD000000000000011;
      v19[1] = 0x80000001B0F2FEE0;
      v19[2] = 0xD000000000000020;
      v19[3] = 0x80000001B0F2FA10;
      v19[4] = 202;
    }

    else
    {
      if (v17 <= a4)
      {
        sub_1B0DFE880(0x7DuLL, 0xE100000000000000, 0, 0, v8, v6, a3);
        sub_1B0448078(v8, v6, a3);

        return v5;
      }

      sub_1B0D98DC0();
      swift_allocError();
      *v18 = v5;
      v18[1] = a4;
    }

    swift_willThrow();
    v5 = v20;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0DC1D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B0E0041C(a1, a2, a3);
  if (!v3)
  {
    sub_1B0DFF2E8(v5, v6, v7 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 3028);
    v4 = v8;
    v10 = v9;
    if ((sub_1B0E44CF8() - 256) < 0xFFFFFFFFFFFFFF01 || (sub_1B0D7C750(v4, v10) & 1) == 0)
    {

      sub_1B0436554();
      swift_allocError();
      *v11 = 0xD000000000000012;
      v11[1] = 0x80000001B0F301B0;
      v11[2] = 0xD000000000000020;
      v11[3] = 0x80000001B0F2FA10;
      v11[4] = 3030;
      swift_willThrow();
    }
  }

  return v4;
}

uint64_t sub_1B0DC2068(uint64_t result)
{
  v1 = *(result + 64) & 0x1FFLL;
  *(result + 16) &= 0x1FFFFFFFFuLL;
  *(result + 64) = v1;
  return result;
}

uint64_t sub_1B0DC20D8(uint64_t result)
{
  v1 = *(result + 64) & 0x1FFLL | 0x8000000000000000;
  *(result + 16) &= 0x1FFFFFFFFuLL;
  *(result + 64) = v1;
  return result;
}

uint64_t sub_1B0DC214C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = __OFADD__(a2, 1);
  v6 = a2 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (v6 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v15 = a3;
      return swift_willThrow();
    }

    v7 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_1B0441264(result, v17);
    if (v4)
    {
      *v7 = v9;
      *(v7 + 8) = v10;
      *(v7 + 16) = v11;
      *(v7 + 20) = v12;
      *(v7 + 22) = v13;
      return swift_willThrow();
    }

    sub_1B0DFF2E8(v17[0], v17[1], v18 | (v19 << 32) | (v20 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 115);
    v16 = a4();

    return v16;
  }

  return result;
}

uint64_t (*sub_1B0DC22A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void)))(void)
{
  result = sub_1B0DFE880(0x5BuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v4)
  {
    return a4;
  }

  v10 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v10 >= a3)
    {
      sub_1B0439BCC();
      v12 = swift_allocError();
      *v13 = a3;
      swift_willThrow();
      v17 = v12;
      v14 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v17 = v12;
        v15 = v12;
        if ((swift_dynamicCast() & 1) == 0)
        {

          return a4;
        }
      }

      if (v10 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v16 = a3;
        swift_willThrow();
        return a4;
      }

      v11 = sub_1B0DC214C(a1, v10, a3, a4);
    }

    else
    {

      v11 = sub_1B0DC214C(a1, a2 + 1, a3, a4);
    }

    a4 = v11;

    sub_1B0DFE880(0x5DuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    return a4;
  }

  __break(1u);
  return result;
}

void sub_1B0DC25B8(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 3) == v1)
  {
    sub_1B0D3EA30();
    swift_allocError();
LABEL_3:
    swift_willThrow();
    return;
  }

  v3 = *(a1 + 22);
  v4 = *(a1 + 10);
  v5 = *a1;
  swift_beginAccess();
  v6 = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
  }

  else
  {
    v7 = *(*(v5 + 24) + (v3 | (v4 << 8)) + v1);
    *(a1 + 2) = v6;
    if (!isalnum(v7) && (v7 - 45) >= 2 && v7 != 95 && v7 != 126)
    {
      sub_1B0E46298();

      v9 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v9);

      sub_1B0436554();
      swift_allocError();
      *v10 = 0xD00000000000001ELL;
      v10[1] = 0x80000001B0F302C0;
      v10[2] = 0xD000000000000020;
      v10[3] = 0x80000001B0F2FA10;
      v10[4] = 1242;
      goto LABEL_3;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1B0EC1E70;
    *(v8 + 32) = v7;
  }
}

void sub_1B0DC277C(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 3) == v1)
  {
    sub_1B0D3EA30();
    swift_allocError();
LABEL_3:
    swift_willThrow();
    return;
  }

  v3 = *(a1 + 22);
  v4 = *(a1 + 10);
  v5 = *a1;
  swift_beginAccess();
  v6 = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
  }

  else
  {
    v7 = *(*(v5 + 24) + (v3 | (v4 << 8)) + v1);
    *(a1 + 2) = v6;
    if ((v7 - 39) >= 6 && v7 != 33 && v7 != 36)
    {
      sub_1B0E46298();

      v9 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v9);

      sub_1B0436554();
      swift_allocError();
      *v10 = 0xD000000000000021;
      v10[1] = 0x80000001B0F302E0;
      v10[2] = 0xD000000000000020;
      v10[3] = 0x80000001B0F2FA10;
      v10[4] = 1250;
      goto LABEL_3;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1B0EC1E70;
    *(v8 + 32) = v7;
  }
}

void sub_1B0DC2934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return;
  }

  if (v4 >= a3)
  {
    sub_1B0439BCC();
    v12 = swift_allocError();
    *v13 = a3;
  }

  else
  {
    v7 = *a1;
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    v10 = *(a1 + 20);
    v11 = *(a1 + 22);
    sub_1B0DC25B8(a1);
    v12 = v3;
    if (!v3)
    {
      return;
    }

    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 20) = v10;
    *(a1 + 22) = v11;
  }

  swift_willThrow();
  v21 = v12;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {
  }

  else
  {

    v21 = v12;
    v15 = v12;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (v4 < a3)
  {
    sub_1B0DC277C(a1);
    return;
  }

  sub_1B0439BCC();
  v16 = swift_allocError();
  *v17 = a3;
  swift_willThrow();
  v21 = v16;
  v18 = v16;
  if (swift_dynamicCast())
  {

    goto LABEL_16;
  }

  v21 = v16;
  v19 = v16;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:

    return;
  }

LABEL_16:

  if (v4 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v20 = a3;
    swift_willThrow();
  }

  else
  {

    sub_1B0DBC97C(a1, v4, a3);
  }
}

uint64_t sub_1B0DC2C8C(uint64_t a1, uint64_t a2, size_t a3)
{
  if (qword_1EB6DE5C0 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v7 = HIDWORD(qword_1EB737EB0);
    v8 = dword_1EB737EB8;
    v9 = word_1EB737EBC;
    v10 = byte_1EB737EBE;
    v26 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v27 = qword_1EB737EB0;
    v28 = dword_1EB737EB8;
    v29 = word_1EB737EBC;
    v30 = byte_1EB737EBE;

    sub_1B0DC2934(a1, a2, a3);
    v12 = a1;
    a1 = v3;
    if (v3)
    {
      break;
    }

    v13 = v11;
    v24 = v12;
    v25 = a2;
    while (1)
    {
      a2 = a3;
      a3 = *(v13 + 16);
      v14 = v7 + a3;
      if (__CFADD__(v7, a3))
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        if (v14 >= v8)
        {
          v15 = v14 - v8;
        }

        else
        {
          v15 = 0;
        }

        v16 = sub_1B03904C0();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v15, v16 & 1);
      }

      if (HIDWORD(a3))
      {
        goto LABEL_23;
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(a3, v7);
      LODWORD(v8) = v28;
      swift_beginAccess();
      v17 = v30 | (v29 << 8);
      LODWORD(v18) = v28 - v17;
      if (v28 - v17 >= v7)
      {
        LODWORD(v18) = v7;
      }

      if (v7)
      {
        v18 = v18;
      }

      else
      {
        v18 = 0;
      }

      memmove((*(v26 + 24) + v17 + v18), (v13 + 32), a3);

      LODWORD(v7) = HIDWORD(v27) + a3;
      if (__CFADD__(HIDWORD(v27), a3))
      {
        goto LABEL_24;
      }

      HIDWORD(v27) += a3;
      a3 = a2;
      v3 = 0;
      sub_1B0DC2934(v24, v25, a2);
      v13 = v19;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  v20 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {

    sub_1B0DFF2E8(v21, v27 | (v7 << 32), v8 | (v9 << 32) | (v10 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 989);
    v8 = v22;
  }

  else
  {
  }

  return v8;
}

uint64_t sub_1B0DC2F40(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0DFF3DC(a1, a2, a3, 1);
  if (!v3)
  {
    if (result < 0 || (sub_1B0DFE880(0x2EuLL, 0xE100000000000000, 0, 0, a1, a2, a3), (sub_1B0DFF3DC(a1, a2, a3, 1) & 0x8000000000000000) != 0) || (sub_1B0DFE880(0x2EuLL, 0xE100000000000000, 0, 0, a1, a2, a3), (sub_1B0DFF3DC(a1, a2, a3, 1) & 0x8000000000000000) != 0) || (sub_1B0DFE880(0x2EuLL, 0xE100000000000000, 0, 0, a1, a2, a3), (sub_1B0DFF3DC(a1, a2, a3, 1) & 0x8000000000000000) != 0))
    {
      sub_1B0436554();
      swift_allocError();
      *v11 = 0xD000000000000011;
      v11[1] = 0x80000001B0F2FEE0;
      v11[2] = 0xD000000000000020;
      v11[3] = 0x80000001B0F2FA10;
      v11[4] = 202;
      return swift_willThrow();
    }

    else
    {
      v12 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](46, 0xE100000000000000);
      v8 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v8);

      MEMORY[0x1B2726E80](46, 0xE100000000000000);
      v9 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v9);

      MEMORY[0x1B2726E80](46, 0xE100000000000000);
      v10 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v10);

      return v12;
    }
  }

  return result;
}

uint64_t *sub_1B0DC31B4(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v5 = a3;
    if (v4 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v12 = v5;
    }

    else
    {
      v6 = result;
      v7 = *result;
      v8 = result[1];
      v9 = *(result + 4);
      v10 = *(result + 10);
      v11 = *(result + 22);

      sub_1B0DFE880(0x2FuLL, 0xE100000000000000, 0, 0, v6, v4, v5);
      if (v3)
      {
      }

      else
      {
        v13 = v4 + 1;
        if (v4 + 1 < v5)
        {

          sub_1B0DFE880(0x3D4449553BuLL, 0xE500000000000000, 0, 0, v6, v13, v5);
          v5 = sub_1B0D9EA70(v6, v13, v5);

          return v5;
        }

        sub_1B0439BCC();
        swift_allocError();
        *v14 = v5;
        swift_willThrow();
      }

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
    }

    swift_willThrow();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DC3380@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = a3;
    if (v14 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v15 = v9;
      return swift_willThrow();
    }

    v4 = a1;
    v10 = a4;
    v5 = *a1;
    v13 = a1[1];
    v12 = *(a1 + 4);
    v11 = *(a1 + 10);
    v8 = *(a1 + 22);

    sub_1B0DFE880(0x3D4552495058453BuLL, 0xE800000000000000, 0, 0, v4, v14, v9);
    if (v6)
    {

LABEL_13:
      *v4 = v5;
      *(v4 + 8) = v13;
      *(v4 + 16) = v12;
      *(v4 + 20) = v11;
      *(v4 + 22) = v8;
      return swift_willThrow();
    }

    v16 = v14 + 1;
    if (v14 + 1 >= v9)
    {

      sub_1B0439BCC();
      swift_allocError();
      *v18 = v9;
LABEL_12:
      swift_willThrow();
      goto LABEL_13;
    }

    v17 = v14 + 2;
    if (v17 >= v9)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = v9;
      swift_willThrow();
LABEL_11:

      goto LABEL_12;
    }

    v31 = v16;
    swift_retain_n();
    v30 = sub_1B0DC0AB0(v4, v17, v9, 4);
    sub_1B0DFE880(0x2DuLL, 0xE100000000000000, 0, 0, v4, v17, v9);
    v29 = sub_1B0DC0AB0(v4, v17, v9, 2);
    sub_1B0DFE880(0x2DuLL, 0xE100000000000000, 0, 0, v4, v17, v9);
    a1 = sub_1B0DC0AB0(v4, v17, v9, 2);
    v7 = 0;
  }

  v21 = a1;

  if (v29 - 13 < 0xFFFFFFFFFFFFFFF4 || (v21 - 4) < 0xFFFFFFFFFFFFFFE1)
  {
    __break(1u);
  }

  else
  {
    v28 = v21;
    sub_1B0DFE880(0x54uLL, 0xE100000000000000, 0, 0, v4, v31, v9);
    if (v7)
    {

      goto LABEL_11;
    }

    v27 = sub_1B0DC0AB0(v4, v31, v9, 2);
    sub_1B0DFE880(0x3AuLL, 0xE100000000000000, 0, 0, v4, v31, v9);
    v22 = sub_1B0DC0AB0(v4, v31, v9, 2);
    sub_1B0DFE880(0x3AuLL, 0xE100000000000000, 0, 0, v4, v31, v9);
    v26 = sub_1B0DC0AB0(v4, v31, v9, 2);
    sub_1B0E03020(v4, v31, v9);
    v32 = v23;
    v25 = v24;

    *v10 = v30;
    *(v10 + 8) = v29;
    *(v10 + 16) = v28;
    *(v10 + 24) = v27;
    *(v10 + 32) = v22;
    *(v10 + 40) = v26;
    *(v10 + 48) = v32;
    *(v10 + 56) = v25 & 1;
  }

  return result;
}

uint64_t sub_1B0DC3808@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(v3 + 16))(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
  }

  return result;
}

void sub_1B0DC3848(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 3) == v1)
  {
    sub_1B0D3EA30();
    swift_allocError();
LABEL_8:
    swift_willThrow();
    return;
  }

  v3 = *(a1 + 22);
  v4 = *(a1 + 10);
  v5 = *a1;
  swift_beginAccess();
  v6 = v1 + 1;
  if (v1 != -1)
  {
    v7 = *(*(v5 + 24) + (v3 | (v4 << 8)) + v1);
    *(a1 + 2) = v6;
    if (v7 == 38 || v7 == 61)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1B0EC1E70;
      *(v8 + 32) = v7;
      return;
    }

    sub_1B0E46298();

    v9 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v9);

    sub_1B0436554();
    swift_allocError();
    *v10 = 0xD000000000000012;
    v10[1] = 0x80000001B0F30330;
    v10[2] = 0xD000000000000020;
    v10[3] = 0x80000001B0F2FA10;
    v10[4] = 1293;
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1B0DC39F4(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 3) == v1)
  {
    sub_1B0D3EA30();
    swift_allocError();
LABEL_3:
    swift_willThrow();
    return;
  }

  v3 = *(a1 + 22);
  v4 = *(a1 + 10);
  v5 = *a1;
  swift_beginAccess();
  v6 = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
  }

  else
  {
    v7 = *(*(v5 + 24) + (v3 | (v4 << 8)) + v1);
    *(a1 + 2) = v6;
    if ((v7 - 47) > 0x11 || ((1 << (v7 - 47)) & 0x20801) == 0)
    {
      sub_1B0E46298();

      v10 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v10);

      sub_1B0436554();
      swift_allocError();
      *v11 = 0xD000000000000012;
      v11[1] = 0x80000001B0F30350;
      v11[2] = 0xD000000000000020;
      v11[3] = 0x80000001B0F2FA10;
      v11[4] = 1312;
      goto LABEL_3;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B0EC1E70;
    *(v9 + 32) = v7;
  }
}

void sub_1B0DC3C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {

    sub_1B0B36244(a3, a4);
  }
}

uint64_t sub_1B0DC3D34@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(v3 + 16))(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9 & 1;
  }

  return result;
}

uint64_t sub_1B0DC3D7C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
  }

  return result;
}

uint64_t sub_1B0DC3DB8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(v3 + 16))(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v7;
  }

  return result;
}

uint64_t sub_1B0DC3EB0(void *a1)
{
  v2 = v1;
  v32 = a1;
  v4 = a1[2];
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v5);
    if (v7)
    {
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = *(v1 + 20);
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      goto LABEL_29;
    }

    *(v1 + 20) = v12;
  }

  else
  {
    v9 = 0;
    v12 = *(v1 + 20);
  }

  v13 = v12;
  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = 40;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v11 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v11)
  {
    goto LABEL_24;
  }

  *(v1 + 20) = v17;
  v18 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  MEMORY[0x1EEE9AC00](result);
  v31[2] = sub_1B0DC40D0;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_1B0DE5BC8(0, sub_1B0DC40FC, v31, a1);
  v19 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v20);
  if (v21)
  {
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v2 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v24;
  v25 = __OFADD__(v19, result);
  v26 = v19 + result;
  if (v25)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    return v26;
  }

  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v24);
  if (v27)
  {
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v28, v24);
  }

  v29 = *(v2 + 20);
  v11 = __CFADD__(v29, result);
  v30 = v29 + result;
  if (v11)
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v30;
  v25 = __OFADD__(v26, result);
  result += v26;
  if (v25)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

void sub_1B0DC4120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v74 = *(a3 + 16);
  if (!v74)
  {
    v64 = *(v3 + 5);
    v65 = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, (v3 + 8), v64);
    if (v66)
    {
      v67._countAndFlagsBits = 4999502;
      v67._object = 0xE300000000000000;
      v65 = ByteBuffer._setStringSlowpath(_:at:)(v67, v64);
    }

    v68 = *(v3 + 5);
    v18 = __CFADD__(v68, v65);
    v69 = v68 + v65;
    if (!v18)
    {
      *(v3 + 5) = v69;
      return;
    }

    goto LABEL_62;
  }

  v6 = *v3;
  *v3 = 0;
  v7 = *(v3 + 5);
  v8 = sub_1B0CFC1B0(0, 0xE000000000000000, (v3 + 8), v7);
  if (v9)
  {
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v8 = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = v8;
  v12 = *(v3 + 5);
  v13 = (v12 + v8);
  if (__CFADD__(v12, v8))
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  *(v3 + 5) = v13;
  v14 = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, (v3 + 8), v13);
  if (v15)
  {
    v16._countAndFlagsBits = 40;
    v16._object = 0xE100000000000000;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
  }

  v17 = *(v3 + 5);
  v18 = __CFADD__(v17, v14);
  v19 = v17 + v14;
  if (v18)
  {
    goto LABEL_55;
  }

  *(v3 + 5) = v19;
  if (__OFADD__(v11, v14))
  {
    goto LABEL_56;
  }

  v71 = v11 + v14;
  v70 = v6;

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v72 = a2;
  while (v74 != v21)
  {
    if (v21 >= *(a2 + 16))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v25 = *(a2 + v20 + 32);
    v26 = *(a2 + v20 + 40);
    v27 = *(a3 + v20 + 40);
    v75 = *(a3 + v20 + 32);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0DD55E0(v25, v26);
    v29 = v28;
    v30 = *(v4 + 5);
    v31 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, (v4 + 8), v30);
    if (v32)
    {
      v33._countAndFlagsBits = 32;
      v33._object = 0xE100000000000000;
      v31 = ByteBuffer._setStringSlowpath(_:at:)(v33, v30);
    }

    v34 = *(v4 + 5);
    v35 = (v34 + v31);
    if (__CFADD__(v34, v31))
    {
      goto LABEL_47;
    }

    *(v4 + 5) = v35;
    v24 = __OFADD__(v29, v31);
    v36 = v29 + v31;
    if (v24)
    {
      goto LABEL_48;
    }

    if (v27)
    {
      sub_1B0DD55E0(v75, v27);
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        goto LABEL_49;
      }
    }

    else
    {
      v39 = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, (v4 + 8), v35);
      if (v40)
      {
        v41._countAndFlagsBits = 4999502;
        v41._object = 0xE300000000000000;
        v39 = ByteBuffer._setStringSlowpath(_:at:)(v41, v35);
      }

      v42 = *(v4 + 5);
      v18 = __CFADD__(v42, v39);
      v43 = v42 + v39;
      if (v18)
      {
        goto LABEL_53;
      }

      *(v4 + 5) = v43;
      v38 = v36 + v39;
      if (__OFADD__(v36, v39))
      {
        goto LABEL_49;
      }
    }

    v24 = __OFADD__(v22, v38);
    v44 = v22 + v38;
    if (v24)
    {
      goto LABEL_50;
    }

    if (v21 >= v74 - 1)
    {

      v23 = 0;
      a2 = v72;
    }

    else
    {
      v45 = *(v4 + 5);
      v46 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, (v4 + 8), v45);
      if (v47)
      {
        v48._countAndFlagsBits = 32;
        v48._object = 0xE100000000000000;
        v46 = ByteBuffer._setStringSlowpath(_:at:)(v48, v45);
      }

      v23 = v46;

      v49 = *(v4 + 5);
      v18 = __CFADD__(v49, v23);
      v50 = v49 + v23;
      a2 = v72;
      if (v18)
      {
        goto LABEL_52;
      }

      *(v4 + 5) = v50;
    }

    v20 += 16;
    ++v21;
    v24 = __OFADD__(v44, v23);
    v22 = v44 + v23;
    if (v24)
    {
      goto LABEL_51;
    }
  }

  v51 = v71 + v22;
  if (__OFADD__(v71, v22))
  {
    goto LABEL_57;
  }

  v52 = *(v4 + 5);
  v53 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, (v4 + 8), v52);
  if (v54)
  {
    v55._countAndFlagsBits = 41;
    v55._object = 0xE100000000000000;
    v53 = ByteBuffer._setStringSlowpath(_:at:)(v55, v52);
  }

  v56 = *(v4 + 5);
  v57 = (v56 + v53);
  if (__CFADD__(v56, v53))
  {
    goto LABEL_58;
  }

  *(v4 + 5) = v57;
  v24 = __OFADD__(v51, v53);
  v58 = v51 + v53;
  if (v24)
  {
    goto LABEL_59;
  }

  v59 = sub_1B0CFC1B0(0, 0xE000000000000000, (v4 + 8), v57);
  if (v60)
  {
    v61._countAndFlagsBits = 0;
    v61._object = 0xE000000000000000;
    v59 = ByteBuffer._setStringSlowpath(_:at:)(v61, v57);
  }

  v62 = *(v4 + 5);
  v18 = __CFADD__(v62, v59);
  v63 = v62 + v59;
  if (v18)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  *(v4 + 5) = v63;
  if (__OFADD__(v58, v59))
  {
    goto LABEL_61;
  }

  *v4 = v70;
}

NIOIMAPCore2::IMAPCalendarDay_optional __swiftcall IMAPCalendarDay.init(year:month:day:)(Swift::Int year, Swift::Int month, Swift::Int day)
{
  v5 = (day - 32) < 0xFFFFFFFFFFFFFFE1 || (month - 13) < 0xFFFFFFFFFFFFFFF4 || (year - 2501) < 0xFFFFFFFFFFFFFDA7;
  if (v5)
  {
    year = 0;
    month = 0;
    day = 0;
  }

  result.value.day = day;
  result.value.month = month;
  result.value.year = year;
  result.is_nil = v5;
  return result;
}

uint64_t IMAPCalendarDay.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1B2728D70](a2);
  MEMORY[0x1B2728D70](a3);
  return MEMORY[0x1B2728D70](a4);
}

uint64_t IMAPCalendarDay.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  MEMORY[0x1B2728D70](a2);
  MEMORY[0x1B2728D70](a3);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0DC4654()
{
  result = qword_1EB6E7648;
  if (!qword_1EB6E7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7648);
  }

  return result;
}

unint64_t sub_1B0DC46B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v17._countAndFlagsBits = sub_1B0E469C8();
  v17._object = v5;
  v6 = MEMORY[0x1B2726E80](45, 0xE100000000000000);
  v7 = sub_1B0DC47E0(v6, a2);
  MEMORY[0x1B2726E80](v7, 0xE300000000000000);

  MEMORY[0x1B2726E80](45, 0xE100000000000000);
  v8 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v8);

  v9 = *(v2 + 20);
  v10 = sub_1B0CFC1B0(v17._countAndFlagsBits, v17._object, v3 + 8, *(v3 + 20));
  if (v11)
  {
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v17, v9);
  }

  v12 = v10;

  v14 = *(v3 + 20);
  v15 = __CFADD__(v14, v12);
  v16 = v14 + v12;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 20) = v16;
    return v12;
  }

  return result;
}

uint64_t sub_1B0DC47E0(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) <= 0xB)
  {
    return *&aJan[8 * a2 - 8];
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DC4804(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B0E44B98();
  v4 = v2;
  if (v3 == 7233898 && v2 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (v3 == 6448486 && v4 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (v3 == 7496045 && v4 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (v3 == 7499873 && v4 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 4;
  }

  else if (v3 == 7954797 && v4 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 5;
  }

  else if (v3 == 7239018 && v4 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 6;
  }

  else if (v3 == 7107946 && v4 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 7;
  }

  else if (v3 == 6780257 && v4 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 8;
  }

  else if (v3 == 7366003 && v4 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 9;
  }

  else if (v3 == 7627631 && v4 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 10;
  }

  else if (v3 == 7761774 && v4 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 11;
  }

  else if (v3 == 6514020 && v4 == 0xE300000000000000)
  {

    return 12;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 0;
    }
  }
}

double IMAPServer.init(userAuthenticationMechanism:host:port:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, _OWORD *a9@<X8>)
{
  v12[64] = a8 & 1;
  *&v13 = a1;
  *(&v13 + 1) = a2;
  *&v14 = a3;
  *(&v14 + 1) = a4;
  *v15 = a5;
  *&v15[8] = a6;
  *&v15[16] = a7;
  v15[24] = a8 & 1;
  v16[0] = a1;
  v16[1] = a2;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = a7;
  v17 = a8 & 1;
  sub_1B0DC3C80(&v13, v12);
  sub_1B0DC1F64(v16);
  v10 = v14;
  *a9 = v13;
  a9[1] = v10;
  a9[2] = *v15;
  result = *&v15[9];
  *(a9 + 41) = *&v15[9];
  return result;
}

uint64_t IMAPServer.userAuthenticationMechanism.getter()
{
  v1 = *v0;
  sub_1B0DC4CD8(*v0, v0[1], v0[2], v0[3]);
  return v1;
}

void sub_1B0DC4CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    sub_1B0DC4D28(a3, a4);
  }
}

double sub_1B0DC4D28(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

void IMAPServer.userAuthenticationMechanism.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B0DC3C30(*v4, v4[1], v4[2], v4[3]);
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t IMAPServer.host.getter()
{
  v1 = *(v0 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t IMAPServer.host.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t IMAPServer.port.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t IMAPServer.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 == 1)
  {
    goto LABEL_4;
  }

  v3 = *(v1 + 24);
  sub_1B0E46C68();
  if (!v2)
  {
    sub_1B0E46C68();
    if (v3 == 1)
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_1B0E46C68();
    if (v3)
    {
      MEMORY[0x1B2728D70](1);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1B2728D70](0);
    }

    goto LABEL_5;
  }

  sub_1B0E46C68();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v3 != 1)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_1B0E46C68();
LABEL_5:
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (*(v1 + 56))
  {
    return sub_1B0E46C68();
  }

  v5 = *(v1 + 48);
  sub_1B0E46C68();
  return MEMORY[0x1B2728D70](v5);
}

uint64_t IMAPServer.hashValue.getter()
{
  sub_1B0E46C28();
  IMAPServer.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC4FA8()
{
  sub_1B0E46C28();
  IMAPServer.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC4FEC(uint64_t a1)
{
  sub_1B0E46C28();
  IMAPServer.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC5028(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s12NIOIMAPCore210IMAPServerV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t sub_1B0DC5084(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 8);
  if (v4 == 1)
  {
    v5 = 0;
    v6 = *(v1 + 20);
  }

  else
  {
    v7 = sub_1B0E35474(*a1, v4, *(a1 + 16), *(a1 + 24));
    v8 = *(v1 + 20);
    result = sub_1B0CFC1B0(0x40uLL, 0xE100000000000000, v1 + 8, v8);
    if (v10)
    {
      v11._countAndFlagsBits = 64;
      v11._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
    }

    v12 = *(v1 + 20);
    v13 = __CFADD__(v12, result);
    v6 = v12 + result;
    if (v13)
    {
      goto LABEL_22;
    }

    *(v1 + 20) = v6;
    v5 = v7 + result;
    if (__OFADD__(v7, result))
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }
  }

  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v16 = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = sub_1B0CFC1B0(v15, v14, v1 + 8, v16);
  if (v18)
  {
    v19._countAndFlagsBits = v15;
    v19._object = v14;
    v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v16);
  }

  v20 = v17;

  v21 = *(v2 + 20);
  v22 = (v21 + v20);
  if (__CFADD__(v21, v20))
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v2 + 20) = v22;
  v23 = v5 + v20;
  if (__OFADD__(v5, v20))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (*(a1 + 56))
  {
    v24 = 0;
  }

  else
  {
    v25 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v25);

    v26 = sub_1B0CFC1B0(0x3AuLL, 0xE100000000000000, v2 + 8, v22);
    if (v27)
    {
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      v26 = ByteBuffer._setStringSlowpath(_:at:)(v28, v22);
    }

    v24 = v26;

    v29 = *(v2 + 20);
    v13 = __CFADD__(v29, v24);
    v30 = v29 + v24;
    if (v13)
    {
      goto LABEL_24;
    }

    *(v2 + 20) = v30;
  }

  result = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t _s12NIOIMAPCore210IMAPServerV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (v2 == 1)
  {
    if (v6 == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (v6 == 1)
  {
LABEL_10:
    sub_1B0DC4CD8(*a2, *(a2 + 8), v9, v8);
    sub_1B0DC4CD8(v3, v2, v5, v4);
    sub_1B0DC3C30(v3, v2, v5, v4);
    v16 = v7;
    v17 = v6;
    v18 = v9;
    v19 = v8;
LABEL_35:
    sub_1B0DC3C30(v16, v17, v18, v19);
    return 0;
  }

  if (v2)
  {
    if (!v6)
    {
      sub_1B0DC4CD8(*a2, 0, v9, v8);
      sub_1B0DC4CD8(v3, v2, v5, v4);
LABEL_34:
      sub_1B0B36244(v9, v8);
      v16 = v3;
      v17 = v2;
      v18 = v5;
      v19 = v4;
      goto LABEL_35;
    }

    if (v3 != v7 || v2 != v6)
    {
      v20 = a1;
      v21 = a2;
      v22 = sub_1B0E46A78();
      a2 = v21;
      v23 = v22;
      a1 = v20;
      if ((v23 & 1) == 0)
      {
        v24 = v7;
        v25 = v6;
        v26 = v9;
        v27 = v8;
LABEL_31:
        sub_1B0DC4CD8(v24, v25, v26, v27);
        v28 = v3;
        v29 = v2;
        goto LABEL_32;
      }
    }
  }

  else if (v6)
  {
    sub_1B0DC4CD8(*a2, *(a2 + 8), v9, v8);
    v28 = v3;
    v29 = 0;
LABEL_32:
    v36 = v5;
    v37 = v4;
LABEL_33:
    sub_1B0DC4CD8(v28, v29, v36, v37);

    goto LABEL_34;
  }

  if (v4 == 1)
  {
    if (v8 != 1)
    {
      sub_1B0DC4CD8(v7, v6, v9, v8);
      v28 = v3;
      v29 = v2;
      v36 = v5;
      v37 = 1;
      goto LABEL_33;
    }

    v30 = a2;
    v31 = a1;
    sub_1B0DC4CD8(v7, v6, v9, 1);
    v32 = v3;
    v33 = v2;
    v34 = v5;
    v35 = 1;
    goto LABEL_26;
  }

  if (v8 == 1)
  {
    v24 = v7;
    v25 = v6;
    v26 = v9;
    v27 = 1;
    goto LABEL_31;
  }

  if (!v4)
  {
    if (v8)
    {
      sub_1B0DC4CD8(v7, v6, v9, v8);
      v28 = v3;
      v29 = v2;
      v36 = v5;
      v37 = 0;
      goto LABEL_33;
    }

    v30 = a2;
    v31 = a1;
    sub_1B0DC4CD8(v7, v6, v9, 0);
    v32 = v3;
    v33 = v2;
    v34 = v5;
    v35 = 0;
    goto LABEL_26;
  }

  if (!v8)
  {
    v24 = v7;
    v25 = v6;
    v26 = v9;
    v27 = 0;
    goto LABEL_31;
  }

  v30 = a2;
  v31 = a1;
  if (v5 == v9 && v4 == v8)
  {
    sub_1B0DC4CD8(v7, v6, v5, v4);
    v32 = v3;
    v33 = v2;
    v34 = v5;
    v35 = v4;
LABEL_26:
    sub_1B0DC4CD8(v32, v33, v34, v35);

    goto LABEL_27;
  }

  v39 = sub_1B0E46A78();
  sub_1B0DC4CD8(v7, v6, v9, v8);
  sub_1B0DC4CD8(v3, v2, v5, v4);

  if ((v39 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  sub_1B0B36244(v9, v8);
  sub_1B0DC3C30(v3, v2, v5, v4);
  a1 = v31;
  a2 = v30;
LABEL_3:
  if (a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40) || (v10 = a1, v11 = a2, v12 = sub_1B0E46A78(), a2 = v11, v13 = v12, a1 = v10, v14 = 0, (v13 & 1) != 0))
  {
    v15 = *(a2 + 56);
    if (a1[7])
    {
      if ((*(a2 + 56) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (a1[6] != *(a2 + 48))
      {
        v15 = 1;
      }

      if (v15)
      {
        return 0;
      }
    }

    return 1;
  }

  return v14;
}

unint64_t sub_1B0DC5648()
{
  result = qword_1EB6E7650;
  if (!qword_1EB6E7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7650);
  }

  return result;
}

uint64_t sub_1B0DC569C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1B0DC56E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double IMAPURL.init(server:query:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1B0D2E930(v33);
  v30 = v33[9];
  v31 = v33[10];
  v32 = v33[11];
  v26 = v33[5];
  v27 = v33[6];
  v28 = v33[7];
  v29 = v33[8];
  v22 = v33[1];
  v23 = v33[2];
  v24 = v33[3];
  v25 = v33[4];
  v6 = a1[1];
  v18 = *a1;
  v19 = v6;
  v7 = a1[2];
  v21 = v33[0];
  *v20 = v7;
  *&v20[9] = *(a1 + 41);
  sub_1B0DC58E0(a2, &v21);
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v49 = v32;
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v45 = v28;
  v38 = v21;
  v39 = v22;
  v40 = v23;
  v41 = v24;
  v34 = v18;
  v35 = v19;
  v36 = *v20;
  v37 = *&v20[16];
  v50[12] = v29;
  v50[13] = v30;
  v50[14] = v31;
  v50[15] = v32;
  v50[8] = v25;
  v50[9] = v26;
  v50[10] = v27;
  v50[11] = v28;
  v50[3] = *&v20[16];
  v50[4] = v21;
  v50[5] = v22;
  v50[6] = v23;
  v50[7] = v24;
  v50[0] = v18;
  v50[1] = v19;
  v50[2] = *v20;
  sub_1B0DC1FB8(&v34, &v17);
  sub_1B0DC2014(v50);
  v8 = v47;
  a3[12] = v46;
  a3[13] = v8;
  v9 = v49;
  a3[14] = v48;
  a3[15] = v9;
  v10 = v43;
  a3[8] = v42;
  a3[9] = v10;
  v11 = v45;
  a3[10] = v44;
  a3[11] = v11;
  v12 = v39;
  a3[4] = v38;
  a3[5] = v12;
  v13 = v41;
  a3[6] = v40;
  a3[7] = v13;
  v14 = v35;
  *a3 = v34;
  a3[1] = v14;
  result = *&v36;
  v16 = v37;
  a3[2] = v36;
  a3[3] = v16;
  return result;
}

uint64_t sub_1B0DC58E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7618, &qword_1B0EF5118);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0DC59EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7618, &qword_1B0EF5118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t IMAPURL.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  if (v3 == 1)
  {
    goto LABEL_4;
  }

  v6 = *(v1 + 24);
  sub_1B0E46C68();
  if (v3)
  {
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v6 == 1)
    {
LABEL_4:
      sub_1B0E46C68();
      goto LABEL_5;
    }
  }

  else
  {
    sub_1B0E46C68();
    if (v6 == 1)
    {
      goto LABEL_4;
    }
  }

  sub_1B0E46C68();
  if (v6)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

LABEL_5:
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0E46C68();
  if ((v5 & 1) == 0)
  {
    MEMORY[0x1B2728D70](v4);
  }

  v7 = *(v1 + 208);
  v20[8] = *(v1 + 192);
  v20[9] = v7;
  v8 = *(v1 + 240);
  v20[10] = *(v1 + 224);
  v20[11] = v8;
  v9 = *(v1 + 144);
  v20[4] = *(v1 + 128);
  v20[5] = v9;
  v10 = *(v1 + 176);
  v20[6] = *(v1 + 160);
  v20[7] = v10;
  v11 = *(v1 + 80);
  v20[0] = *(v1 + 64);
  v20[1] = v11;
  v12 = *(v1 + 112);
  v20[2] = *(v1 + 96);
  v20[3] = v12;
  if (sub_1B0DC63D0(v20) == 1)
  {
    return sub_1B0E46C68();
  }

  v14 = *(v1 + 208);
  v20[20] = *(v1 + 192);
  v20[21] = v14;
  v15 = *(v1 + 240);
  v20[22] = *(v1 + 224);
  v20[23] = v15;
  v16 = *(v1 + 144);
  v20[16] = *(v1 + 128);
  v20[17] = v16;
  v17 = *(v1 + 176);
  v20[18] = *(v1 + 160);
  v20[19] = v17;
  v18 = *(v1 + 80);
  v20[12] = *(v1 + 64);
  v20[13] = v18;
  v19 = *(v1 + 112);
  v20[14] = *(v1 + 96);
  v20[15] = v19;
  sub_1B0E46C68();
  return URLCommand.hash(into:)(a1);
}

uint64_t IMAPURL.hashValue.getter()
{
  sub_1B0E46C28();
  IMAPURL.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC5C9C()
{
  sub_1B0E46C28();
  IMAPURL.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC5CE0(uint64_t a1)
{
  sub_1B0E46C28();
  IMAPURL.hash(into:)(v2);
  return sub_1B0E46CB8();
}

BOOL sub_1B0DC5D1C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[13];
  v19[12] = a1[12];
  v19[13] = v2;
  v3 = a1[15];
  v19[14] = a1[14];
  v19[15] = v3;
  v4 = a1[9];
  v19[8] = a1[8];
  v19[9] = v4;
  v5 = a1[11];
  v19[10] = a1[10];
  v19[11] = v5;
  v6 = a1[5];
  v19[4] = a1[4];
  v19[5] = v6;
  v7 = a1[7];
  v19[6] = a1[6];
  v19[7] = v7;
  v8 = a1[1];
  v19[0] = *a1;
  v19[1] = v8;
  v9 = a1[3];
  v19[2] = a1[2];
  v19[3] = v9;
  v10 = a2[13];
  v20[12] = a2[12];
  v20[13] = v10;
  v11 = a2[15];
  v20[14] = a2[14];
  v20[15] = v11;
  v12 = a2[9];
  v20[8] = a2[8];
  v20[9] = v12;
  v13 = a2[11];
  v20[10] = a2[10];
  v20[11] = v13;
  v14 = a2[5];
  v20[4] = a2[4];
  v20[5] = v14;
  v15 = a2[7];
  v20[6] = a2[6];
  v20[7] = v15;
  v16 = a2[1];
  v20[0] = *a2;
  v20[1] = v16;
  v17 = a2[3];
  v20[2] = a2[2];
  v20[3] = v17;
  return _s12NIOIMAPCore27IMAPURLV23__derived_struct_equalsySbAC_ACtFZ_0(v19, v20);
}

uint64_t sub_1B0DC5DD0(_OWORD *a1)
{
  v3 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x2F2F3A70616D69uLL, 0xE700000000000000, v1 + 8, v3);
  if (v5)
  {
    v6._countAndFlagsBits = 0x2F2F3A70616D69;
    v6._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v6, v3);
  }

  v7 = result;
  v8 = *(v1 + 20);
  v9 = __CFADD__(v8, result);
  v10 = v8 + result;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v1 + 20) = v10;
  v11 = a1[1];
  v34[0] = *a1;
  v34[1] = v11;
  v35[0] = a1[2];
  *(v35 + 9) = *(a1 + 41);
  result = sub_1B0DC5084(v34);
  v12 = v7 + result;
  if (__OFADD__(v7, result))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x2FuLL, 0xE100000000000000, v1 + 8, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 47;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v9 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v9)
  {
    goto LABEL_16;
  }

  *(v1 + 20) = v17;
  v18 = v12 + result;
  if (__OFADD__(v12, result))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v19 = a1[13];
  v33[8] = a1[12];
  v33[9] = v19;
  v20 = a1[15];
  v33[10] = a1[14];
  v33[11] = v20;
  v21 = a1[9];
  v33[4] = a1[8];
  v33[5] = v21;
  v22 = a1[11];
  v33[6] = a1[10];
  v33[7] = v22;
  v23 = a1[5];
  v33[0] = a1[4];
  v33[1] = v23;
  v24 = a1[7];
  v33[2] = a1[6];
  v33[3] = v24;
  if (sub_1B0DC63D0(v33) == 1)
  {
    v25 = 0;
  }

  else
  {
    v26 = a1[13];
    v36[8] = a1[12];
    v36[9] = v26;
    v27 = a1[15];
    v36[10] = a1[14];
    v36[11] = v27;
    v28 = a1[9];
    v36[4] = a1[8];
    v36[5] = v28;
    v29 = a1[11];
    v36[6] = a1[10];
    v36[7] = v29;
    v30 = a1[5];
    v36[0] = a1[4];
    v36[1] = v30;
    v31 = a1[7];
    v36[2] = a1[6];
    v36[3] = v31;
    v25 = sub_1B0E33864(v36);
  }

  v32 = __OFADD__(v18, v25);
  result = v18 + v25;
  if (v32)
  {
    goto LABEL_18;
  }

  return result;
}

BOOL _s12NIOIMAPCore27IMAPURLV23__derived_struct_equalsySbAC_ACtFZ_0(_OWORD *a1, _OWORD *a2)
{
  v4 = a1[1];
  v123[0] = *a1;
  v123[1] = v4;
  v124[0] = a1[2];
  *(v124 + 9) = *(a1 + 41);
  v5 = a2[1];
  v121[0] = *a2;
  v121[1] = v5;
  v122[0] = a2[2];
  *(v122 + 9) = *(a2 + 41);
  if ((_s12NIOIMAPCore210IMAPServerV23__derived_struct_equalsySbAC_ACtFZ_0(v123, v121) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[13];
  v7 = a1[11];
  v117 = a1[12];
  v118 = v6;
  v8 = a1[13];
  v9 = a1[15];
  v119 = a1[14];
  v120 = v9;
  v10 = a1[9];
  v11 = a1[7];
  v113 = a1[8];
  v114 = v10;
  v12 = a1[9];
  v13 = a1[11];
  v115 = a1[10];
  v116 = v13;
  v14 = a1[5];
  v110[0] = a1[4];
  v110[1] = v14;
  v15 = a1[7];
  v16 = a1[4];
  v17 = a1[5];
  v111 = a1[6];
  v112 = v15;
  v18 = a2[13];
  v19 = a2[11];
  v106 = a2[12];
  v107 = v18;
  v20 = a2[13];
  v21 = a2[15];
  v108 = a2[14];
  v109 = v21;
  v22 = a2[9];
  v23 = a2[7];
  v102 = a2[8];
  v103 = v22;
  v24 = a2[9];
  v25 = a2[11];
  v104 = a2[10];
  v105 = v25;
  v26 = a2[5];
  v99[0] = a2[4];
  v99[1] = v26;
  v27 = a2[7];
  v29 = a2[4];
  v28 = a2[5];
  v100 = a2[6];
  v101 = v27;
  v30 = a1[13];
  __src[8] = a1[12];
  __src[9] = v30;
  v31 = a1[15];
  __src[10] = a1[14];
  __src[11] = v31;
  v32 = a1[9];
  __src[4] = a1[8];
  __src[5] = v32;
  v33 = a1[11];
  __src[6] = a1[10];
  __src[7] = v33;
  v34 = a1[5];
  __src[0] = a1[4];
  __src[1] = v34;
  v35 = a1[7];
  __src[2] = a1[6];
  __src[3] = v35;
  __src[20] = v106;
  __src[21] = v20;
  v36 = a2[15];
  __src[22] = v108;
  __src[23] = v36;
  __src[16] = v102;
  __src[17] = v24;
  __src[18] = v104;
  __src[19] = v19;
  __src[12] = v29;
  __src[13] = v28;
  __src[14] = v100;
  __src[15] = v23;
  v98[8] = v117;
  v98[9] = v8;
  v37 = a1[15];
  v98[10] = v119;
  v98[11] = v37;
  v98[4] = v113;
  v98[5] = v12;
  v98[6] = v115;
  v98[7] = v7;
  v98[0] = v16;
  v98[1] = v17;
  v98[2] = v111;
  v98[3] = v11;
  if (sub_1B0DC63D0(v98) != 1)
  {
    v50 = a2[13];
    v95[8] = a2[12];
    v95[9] = v50;
    v51 = a2[15];
    v95[10] = a2[14];
    v95[11] = v51;
    v52 = a2[9];
    v95[4] = a2[8];
    v95[5] = v52;
    v53 = a2[11];
    v95[6] = a2[10];
    v95[7] = v53;
    v54 = a2[5];
    v95[0] = a2[4];
    v95[1] = v54;
    v55 = a2[7];
    v95[2] = a2[6];
    v95[3] = v55;
    if (sub_1B0DC63D0(v95) != 1)
    {
      v57 = a2[13];
      v58 = a2[11];
      v90 = a2[12];
      v91 = v57;
      v59 = a2[13];
      v60 = a2[15];
      v92 = a2[14];
      v93 = v60;
      v61 = a2[9];
      v62 = a2[7];
      v86 = a2[8];
      v87 = v61;
      v63 = a2[9];
      v64 = a2[11];
      v88 = a2[10];
      v89 = v64;
      v65 = a2[5];
      v83[0] = a2[4];
      v83[1] = v65;
      v66 = a2[7];
      v68 = a2[4];
      v67 = a2[5];
      v84 = a2[6];
      v85 = v66;
      __dst[8] = v90;
      __dst[9] = v59;
      v69 = a2[15];
      __dst[10] = v92;
      __dst[11] = v69;
      __dst[4] = v86;
      __dst[5] = v63;
      __dst[6] = v88;
      __dst[7] = v58;
      __dst[0] = v68;
      __dst[1] = v67;
      __dst[2] = v84;
      __dst[3] = v62;
      v70 = a1[13];
      v133 = a1[12];
      v134 = v70;
      v71 = a1[15];
      v135 = a1[14];
      v136 = v71;
      v72 = a1[9];
      v129 = a1[8];
      v130 = v72;
      v73 = a1[11];
      v131 = a1[10];
      v132 = v73;
      v74 = a1[5];
      v125 = a1[4];
      v126 = v74;
      v75 = a1[7];
      v127 = a1[6];
      v128 = v75;
      sub_1B0DC59EC(v110, v94);
      sub_1B0DC59EC(v99, v94);
      v76 = _s12NIOIMAPCore210URLCommandO21__derived_enum_equalsySbAC_ACtFZ_0(&v125, __dst);
      sub_1B0398EFC(v83, &qword_1EB6E7618, &qword_1B0EF5118);
      v77 = a1[13];
      v94[8] = a1[12];
      v94[9] = v77;
      v78 = a1[15];
      v94[10] = a1[14];
      v94[11] = v78;
      v79 = a1[9];
      v94[4] = a1[8];
      v94[5] = v79;
      v80 = a1[11];
      v94[6] = a1[10];
      v94[7] = v80;
      v81 = a1[5];
      v94[0] = a1[4];
      v94[1] = v81;
      v82 = a1[7];
      v94[2] = a1[6];
      v94[3] = v82;
      sub_1B0398EFC(v94, &qword_1EB6E7618, &qword_1B0EF5118);
      return (v76 & 1) != 0;
    }

LABEL_6:
    memcpy(__dst, __src, sizeof(__dst));
    sub_1B0DC59EC(v110, &v125);
    sub_1B0DC59EC(v99, &v125);
    sub_1B0398EFC(__dst, &qword_1EB6E7660, "*\a");
    return 0;
  }

  v38 = a2[13];
  __dst[8] = a2[12];
  __dst[9] = v38;
  v39 = a2[15];
  __dst[10] = a2[14];
  __dst[11] = v39;
  v40 = a2[9];
  __dst[4] = a2[8];
  __dst[5] = v40;
  v41 = a2[11];
  __dst[6] = a2[10];
  __dst[7] = v41;
  v42 = a2[5];
  __dst[0] = a2[4];
  __dst[1] = v42;
  v43 = a2[7];
  __dst[2] = a2[6];
  __dst[3] = v43;
  if (sub_1B0DC63D0(__dst) != 1)
  {
    goto LABEL_6;
  }

  v44 = a1[13];
  v133 = a1[12];
  v134 = v44;
  v45 = a1[15];
  v135 = a1[14];
  v136 = v45;
  v46 = a1[9];
  v129 = a1[8];
  v130 = v46;
  v47 = a1[11];
  v131 = a1[10];
  v132 = v47;
  v48 = a1[5];
  v125 = a1[4];
  v126 = v48;
  v49 = a1[7];
  v127 = a1[6];
  v128 = v49;
  sub_1B0DC59EC(v110, v95);
  sub_1B0DC59EC(v99, v95);
  sub_1B0398EFC(&v125, &qword_1EB6E7618, &qword_1B0EF5118);
  return 1;
}

uint64_t sub_1B0DC63D0(uint64_t a1)
{
  v1 = (*(a1 + 16) >> 33) & 0x7FFFFFFF | ((*(a1 + 64) >> 9) << 31);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B0DC63F8()
{
  result = qword_1EB6E7658;
  if (!qword_1EB6E7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7658);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore216AuthenticatedURLVSg(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore210URLCommandOSg(uint64_t a1)
{
  v1 = (*(a1 + 16) >> 33) & 0x7FFFFFFF | ((*(a1 + 64) >> 9) << 31);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_1B0DC64D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
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

uint64_t sub_1B0DC6520(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static IMAPURLAuthenticationMechanism.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return sub_1B0E46A78();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

uint64_t IMAPURLAuthenticationMechanism.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return MEMORY[0x1B2728D70](0, a2);
  }

  MEMORY[0x1B2728D70](1);

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t IMAPURLAuthenticationMechanism.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  if (a2)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC66C8()
{
  v1 = *(v0 + 8);
  sub_1B0E46C28();
  if (v1)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC6738(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x1B2728D70](0);
  }

  MEMORY[0x1B2728D70](1);

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0DC67B0(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1B0E46C28();
  if (v2)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  return sub_1B0E46CB8();
}

unint64_t sub_1B0DC6820()
{
  result = qword_1EB6E7668;
  if (!qword_1EB6E7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7668);
  }

  return result;
}

uint64_t sub_1B0DC6874(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_1B0E46A78();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t sub_1B0DC68B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0DC6908(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t *InitialResponse.empty.unsafeMutableAddressor()
{
  if (qword_1EB6E6E88 != -1)
  {
    swift_once();
  }

  return &static InitialResponse.empty;
}

uint64_t sub_1B0DC69C4()
{
  if (qword_1EB6DE5C0 != -1)
  {
    swift_once();
  }

  static InitialResponse.empty = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  qword_1EB7387C0 = qword_1EB737EB0;
  dword_1EB7387C8 = dword_1EB737EB8;
  word_1EB7387CC = word_1EB737EBC;
  byte_1EB7387CE = byte_1EB737EBE;
}

uint64_t static InitialResponse.empty.getter()
{
  if (qword_1EB6E6E88 != -1)
  {
    swift_once();
  }
}

uint64_t InitialResponse.data.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = HIDWORD(a3);
  v9 = HIWORD(a3);

  *v3 = a1;
  *(v3 + 8) = v5;
  *(v3 + 12) = v7;
  *(v3 + 16) = v4;
  *(v3 + 20) = v8;
  *(v3 + 22) = v9;
  return result;
}

uint64_t InitialResponse.hashValue.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_1B0E46C28();
  swift_beginAccess();
  sub_1B0E46C38();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC6CBC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 20);
  v6 = *(v1 + 22);
  sub_1B0E46C28();
  InitialResponse.hash(into:)(v8, v2, v3, v4 | (v5 << 32) | (v6 << 48));
  return sub_1B0E46CB8();
}

unint64_t sub_1B0DC6D2C()
{
  result = qword_1EB6E7670;
  if (!qword_1EB6E7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7670);
  }

  return result;
}

uint64_t _UInt24._backing.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 2) = a2;
  return result;
}

uint64_t __swift_memcpy3_2(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for _UInt24(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0x1FFFFFF) >> 24)
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 0xFFFFFF;
}

uint64_t storeEnumTagSinglePayload for _UInt24(uint64_t result, int a2, int a3)
{
  if ((a3 + 0x1FFFFFF) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!a3)
  {
    v3 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v3)
    {
      v4 = ((a2 - 1) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else if (v3)
  {
    if (v3 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

void *sub_1B0DC7068(unint64_t a1)
{
  result = ServerMessageDate.components.getter(a1, &v32);
  if ((v33 - 1) > 0xB)
  {
    goto LABEL_23;
  }

  v3 = v34;
  v4 = v35;
  v5 = v36;
  v31 = v37;
  v6 = *&aJan_0[8 * v33 - 8];
  v7 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v7);

  MEMORY[0x1B2726E80](45, 0xE100000000000000);
  MEMORY[0x1B2726E80](v6, 0xE300000000000000);

  MEMORY[0x1B2726E80](45, 0xE100000000000000);
  v8 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v8);

  MEMORY[0x1B2726E80](32, 0xE100000000000000);
  v9 = *(v1 + 20);
  v10 = sub_1B0CFC1B0(0x22uLL, 0xE100000000000000, v1 + 8, v9);
  if (v11)
  {
    v12._countAndFlagsBits = 34;
    v12._object = 0xE100000000000000;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = v10;

  v14 = *(v1 + 20);
  v15 = __CFADD__(v14, v13);
  v16 = v14 + v13;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v1 + 20) = v16;
  result = sub_1B0DC7580(v3, v4, v5);
  v17 = result + v13;
  if (__OFADD__(v13, result))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v18);
  if (v19)
  {
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = *(v1 + 20);
  v15 = __CFADD__(v21, result);
  v22 = v21 + result;
  if (v15)
  {
    goto LABEL_18;
  }

  *(v1 + 20) = v22;
  v23 = __OFADD__(v17, result);
  v24 = result + v17;
  if (v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = sub_1B0DC77D0(v31);
  v25 = result + v24;
  if (__OFADD__(v24, result))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v26 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x22uLL, 0xE100000000000000, v1 + 8, v26);
  if (v27)
  {
    v28._countAndFlagsBits = 34;
    v28._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v28, v26);
  }

  v29 = *(v1 + 20);
  v15 = __CFADD__(v29, result);
  v30 = v29 + result;
  if (v15)
  {
    goto LABEL_21;
  }

  *(v1 + 20) = v30;
  v23 = __OFADD__(v25, result);
  result = (result + v25);
  if (v23)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

void __swiftcall ServerMessageDate.Components.init(year:month:day:hour:minute:second:timeZoneMinutes:)(NIOIMAPCore2::ServerMessageDate::Components_optional *__return_ptr retstr, Swift::Int year, Swift::Int month, Swift::Int day, Swift::Int hour, Swift::Int minute, Swift::Int second, Swift::Int timeZoneMinutes)
{
  if ((day - 32) < 0xFFFFFFFFFFFFFFE1 || (month - 13) < 0xFFFFFFFFFFFFFFF4 || hour > 0x17 || minute > 0x3B || second > 0x3C || (timeZoneMinutes - 1441) < 0xFFFFFFFFFFFFF4BFLL || (year - 0x10000) < 0xFFFFFFFFFFFF0001)
  {
    year = 0;
    month = 0;
    day = 0;
    hour = 0;
    minute = 0;
    second = 0;
    timeZoneMinutes = 0;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  retstr->value.year = year;
  retstr->value.month = month;
  retstr->value.day = day;
  retstr->value.hour = hour;
  retstr->value.minute = minute;
  retstr->value.second = second;
  retstr->value.zoneMinutes = timeZoneMinutes;
  retstr->is_nil = v8;
}

unint64_t ServerMessageDate.components.getter@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  v2 = result >> 5;
  if (result / 0x5F0A570060 == 0xFFFF * (((67109889 * (result / 0x5F0A570060)) >> 32) >> 10) || ((v3 = result & 0x1F, v4 = v2 - 13 * ((v2 * 0x13B13B13B13B13B2uLL) >> 64), v5 = result / 0x1A0 - 61 * ((result / 0x1A0 * 0x4325C53EF368EB1uLL) >> 64), v6 = result / 0x6320 - 61 * ((result / 0x6320 * 0x4325C53EF368EB1uLL) >> 64), v6 <= 0x3B) ? (v7 = v5 > 0x17) : (v7 = 1), !v7 ? (v8 = v3 == 0) : (v8 = 1), !v8 ? (v9 = v2 == 13 * ((v2 * 0x13B13B13B13B13B2uLL) >> 64)) : (v9 = 1), v9))
  {
    __break(1u);
  }

  else
  {
    if (-1431655765 * (result / 0x1FAE1D0020) < 0x55555556)
    {
      v10 = result / 0x5A0CC20 - 1441 * ((result / 0x5A0CC20 * 0x2D7AC25A9A8F31uLL) >> 64);
    }

    else
    {
      v10 = 1441 * ((result / 0x5A0CC20 * 0x2D7AC25A9A8F31uLL) >> 64) - result / 0x5A0CC20;
    }

    *a2 = result / 0x5F0A570060 - 0xFFFF * (((67109889 * (result / 0x5F0A570060)) >> 32) >> 10);
    a2[1] = v4;
    a2[2] = v3;
    a2[3] = v5;
    a2[4] = v6;
    a2[5] = result / 0x179EA0 - 61 * ((result / 0x179EA0 * 0x4325C53EF368EB1uLL) >> 64);
    a2[6] = v10;
  }

  return result;
}

uint64_t ServerMessageDate.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728DB0](a1);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0DC7580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1 <= 9)
  {
    v7 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v7);

    v8 = 48;
    v9 = 0xE100000000000000;
    if (a2 > 9)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v17);

    v10 = 48;
    v12 = 0xE100000000000000;
    if (a3 > 9)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v8 = sub_1B0E469C8();
  v9 = v16;
  if (a2 <= 9)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = sub_1B0E469C8();
  v12 = v11;
  if (a3 > 9)
  {
LABEL_4:
    v13 = sub_1B0E469C8();
    v15 = v14;
    goto LABEL_8;
  }

LABEL_7:
  v18 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v18);

  v13 = 48;
  v15 = 0xE100000000000000;
LABEL_8:
  MEMORY[0x1B2726E80](58, 0xE100000000000000);
  MEMORY[0x1B2726E80](v10, v12);

  MEMORY[0x1B2726E80](58, 0xE100000000000000);
  MEMORY[0x1B2726E80](v13, v15);

  v19 = *(v3 + 20);
  v20 = sub_1B0CFC1B0(v8, v9, v3 + 8, v19);
  if (v21)
  {
    v22._countAndFlagsBits = v8;
    v22._object = v9;
    v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v19);
  }

  v23 = v20;

  v25 = *(v4 + 20);
  v26 = __CFADD__(v25, v23);
  v27 = v25 + v23;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 20) = v27;
    return v23;
  }

  return result;
}

unint64_t sub_1B0DC77D0(unint64_t result)
{
  v2 = v1;
  v3 = result;
  v4 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    v4 = -result;
    if (__OFSUB__(0, result))
    {
      goto LABEL_20;
    }
  }

  v5 = v4 % 60;
  v6 = __OFSUB__(v4, v4 % 60);
  v7 = v4 - v4 % 60;
  if (v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7 / 60;
  v9 = 100 * (v7 / 60);
  if ((v8 * 100) >> 64 != v9 >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__OFADD__(v9, v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = sub_1B0E469C8();
  v12 = v11;
  if (sub_1B0E44CF8() > 3)
  {
    goto LABEL_9;
  }

  MEMORY[0x1B2726D20](4);
  result = sub_1B0E44CF8();
  if (!__OFSUB__(4, result))
  {
    v13 = sub_1B0E44E88();
    MEMORY[0x1B2726E60](v13);

    MEMORY[0x1B2726E80](v10, v12);

    v10 = 0;
    v12 = 0xE000000000000000;
LABEL_9:
    v14 = 43;
    if (v3 < 0)
    {
      v14 = 45;
    }

    v23 = v14;
    MEMORY[0x1B2726E80](v10, v12);

    v15 = *(v1 + 20);
    v16 = sub_1B0CFC1B0(v23, 0xE100000000000000, v1 + 8, v15);
    if (v17)
    {
      v18._countAndFlagsBits = v23;
      v18._object = 0xE100000000000000;
      v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
    }

    v19 = v16;

    v20 = *(v2 + 20);
    v21 = __CFADD__(v20, v19);
    v22 = v20 + v19;
    if (!v21)
    {
      *(v2 + 20) = v22;
      return v19;
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t *_s12NIOIMAPCore217ServerMessageDateVyA2C10ComponentsVcfC_0(unint64_t *result)
{
  v1 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v1 >> 16)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = result[6];
  v3 = v2;
  if ((v2 & 0x8000000000000000) != 0)
  {
    v3 = -v2;
    if (__OFSUB__(0, v2))
    {
      goto LABEL_22;
    }
  }

  if (v3 >= 0x10000)
  {
    goto LABEL_15;
  }

  v4 = result[5];
  if (v4 > 255)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = result[4];
  if (v5 > 255)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = result[3];
  if (v6 > 255)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result[1];
  if (v7 > 255)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = result[2];
  if (((v4 | v3 | v5 | v6 | v7 | v8) & 0x8000000000000000) == 0)
  {
    if (v8 <= 255)
    {
      return (32 * (13 * (61 * (61 * (61 * (1441 * (3 * v1 + (v2 >> 63)) + v3) + v4) + v5) + v6) + v7) + v8);
    }

    goto LABEL_21;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_1B0DC7A9C()
{
  result = qword_1EB6E7678;
  if (!qword_1EB6E7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7678);
  }

  return result;
}

uint64_t sub_1B0DC7B00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0DC7B20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

uint64_t static InternetMessageDate.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t InternetMessageDate.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0DC7BE4()
{
  result = qword_1EB6E7680;
  if (!qword_1EB6E7680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7680);
  }

  return result;
}

unint64_t sub_1B0DC7C3C()
{
  result = qword_1EB6E7688;
  if (!qword_1EB6E7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7688);
  }

  return result;
}

unint64_t sub_1B0DC7C94()
{
  result = qword_1EB6E7690;
  if (!qword_1EB6E7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7690);
  }

  return result;
}

uint64_t IUID.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0DC7DC0(int a1)
{
  v2 = v1;
  MEMORY[0x1B2726E80](0x3D4449553B2FLL, 0xE600000000000000);
  sub_1B0E46508();
  v3 = *(v1 + 20);
  v4 = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, *(v2 + 20));
  if (v5)
  {
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v4 = ByteBuffer._setStringSlowpath(_:at:)(v6, v3);
  }

  v7 = v4;

  v9 = *(v2 + 20);
  v10 = __CFADD__(v9, v7);
  v11 = v9 + v7;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 20) = v11;
    return v7;
  }

  return result;
}

unint64_t sub_1B0DC7EA4()
{
  result = qword_1EB6E7698;
  if (!qword_1EB6E7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7698);
  }

  return result;
}

uint64_t KeyValue.init(key:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for KeyValue(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t static KeyValue.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_1B0E44A28())
  {
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a5;
    v12[3] = a6;
    type metadata accessor for KeyValue(0, v12);
    v10 = sub_1B0E44A28();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t KeyValue.hashValue.getter(void *a1)
{
  sub_1B0E46C28();
  KeyValue.hash(into:)(v3, a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC8238(uint64_t a1, void *a2)
{
  sub_1B0E46C28();
  KeyValue.hash(into:)(v4, a2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC82A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1B0DC8484(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
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
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t BodyStructure.LanguageLocation.languages.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t BodyStructure.LanguageLocation.location.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B075E548(v3[1], v3[2], v3[3]);
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = a3;
  return result;
}

uint64_t BodyStructure.LanguageLocation.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  MEMORY[0x1B2728D70](v8);
  if (v8)
  {
    v9 = a2 + 40;
    do
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  if (!a5)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  sub_1B0E46C68();
  if (a4)
  {
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  v11 = *(a5 + 16);
  result = MEMORY[0x1B2728D70](v11);
  if (v11)
  {
    v12 = (a5 + 55);
    do
    {
      v13 = *(v12 - 23);
      if (*v12)
      {
        MEMORY[0x1B2728D70](1);
        result = MEMORY[0x1B2728D70](v13);
      }

      else
      {
        MEMORY[0x1B2728D70](0);
        if (v13)
        {
          sub_1B0E46C68();
          swift_beginAccess();
          result = sub_1B0E46C38();
        }

        else
        {
          result = sub_1B0E46C68();
        }
      }

      v12 += 24;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t BodyStructure.LanguageLocation.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B0E46C28();
  v7 = *(a1 + 16);
  MEMORY[0x1B2728D70](v7);
  if (v7)
  {
    v8 = a1 + 40;
    do
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v8 += 16;
      --v7;
    }

    while (v7);
  }

  if (a4)
  {
    sub_1B0E46C68();
    sub_1B0E46C68();
    if (a3)
    {
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    v9 = *(a4 + 16);
    MEMORY[0x1B2728D70](v9);
    if (v9)
    {
      v10 = (a4 + 55);
      do
      {
        v11 = *(v10 - 23);
        if (*v10)
        {
          MEMORY[0x1B2728D70](1);
          MEMORY[0x1B2728D70](v11);
        }

        else
        {
          MEMORY[0x1B2728D70](0);
          sub_1B0E46C68();
          if (v11)
          {
            swift_beginAccess();
            sub_1B0E46C38();
          }
        }

        v10 += 24;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    sub_1B0E46C68();
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC8BA0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_1B0E46C28();
  BodyStructure.LanguageLocation.hash(into:)(v7, v2, v3, v5, v4);
  return sub_1B0E46CB8();
}

BOOL _s12NIOIMAPCore213BodyStructureO16LanguageLocationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((sub_1B045202C(a1, a5) & 1) == 0)
  {
    return 0;
  }

  if (a4)
  {
    if (a8)
    {
      if (!a3)
      {
        if (!a7)
        {
          goto LABEL_9;
        }

LABEL_14:
        sub_1B0716F14(a6, a7, a8);

        return 0;
      }

      if (a7)
      {
        if (a2 == a6 && a3 == a7 || (sub_1B0E46A78() & 1) != 0)
        {
LABEL_9:
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v14 = sub_1B0D38528(a4, a8);

          return (v14 & 1) != 0;
        }

        goto LABEL_14;
      }
    }
  }

  else if (!a8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1B0DC8D14()
{
  result = qword_1EB6E76A0[0];
  if (!qword_1EB6E76A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB6E76A0);
  }

  return result;
}

uint64_t static LastCommandMessageID.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v7;
  CommandMessageID = type metadata accessor for LastCommandMessageID(0, v8, v7, v7);
  v10 = *(CommandMessageID - 8);
  MEMORY[0x1EEE9AC00](CommandMessageID);
  v32 = &v27 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v27 - v15;
  v18 = *(v17 + 48);
  v30 = v10;
  v19 = *(v10 + 16);
  v19(&v27 - v15, v31, CommandMessageID, v14);
  (v19)(&v16[v18], a2, CommandMessageID);
  v31 = v5;
  v20 = *(v5 + 48);
  if (v20(v16, 1, a3) == 1)
  {
    v21 = 1;
    if (v20(&v16[v18], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v19)(v32, v16, CommandMessageID);
    if (v20(&v16[v18], 1, a3) != 1)
    {
      v22 = v31;
      v23 = v28;
      (*(v31 + 32))(v28, &v16[v18], a3);
      v24 = v32;
      v21 = sub_1B0E44A28();
      v25 = *(v22 + 8);
      v25(v23, a3);
      v25(v24, a3);
LABEL_8:
      v13 = v30;
      goto LABEL_9;
    }

    (*(v31 + 8))(v32, a3);
  }

  v21 = 0;
  CommandMessageID = TupleTypeMetadata2;
LABEL_9:
  (*(v13 + 8))(v16, CommandMessageID);
  return v21 & 1;
}

uint64_t LastCommandMessageID.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v12, a2, v8);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    return MEMORY[0x1B2728D70](1);
  }

  (*(v4 + 32))(v6, v10, v3);
  MEMORY[0x1B2728D70](0);
  sub_1B0E447C8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t LastCommandMessageID.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  LastCommandMessageID.hash(into:)(v3, a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC92E4(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  LastCommandMessageID.hash(into:)(v4, a2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC9350(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1B0DC93AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1B0DC952C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t static LastCommandSet.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a1;
  v7 = type metadata accessor for MessageIdentifierSetNonEmpty(0, a3, a4, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v30[0] = v30 - v9;
  v30[1] = a3;
  v30[2] = a4;
  CommandSet = type metadata accessor for LastCommandSet(0, a3, a4, v10);
  v12 = *(CommandSet - 8);
  MEMORY[0x1EEE9AC00](CommandSet);
  v33 = v30 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = v30 - v17;
  v20 = *(v19 + 48);
  v31 = v12;
  v21 = *(v12 + 16);
  v21(v30 - v17, v32, CommandSet, v16);
  (v21)(&v18[v20], a2, CommandSet);
  v32 = v8;
  v22 = *(v8 + 48);
  if (v22(v18, 1, v7) == 1)
  {
    v23 = 1;
    if (v22(&v18[v20], 1, v7) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v21)(v33, v18, CommandSet);
    if (v22(&v18[v20], 1, v7) != 1)
    {
      v24 = v32;
      v25 = &v18[v20];
      v26 = v30[0];
      (*(v32 + 32))(v30[0], v25, v7);
      v27 = v33;
      v23 = static MessageIdentifierSetNonEmpty.__derived_struct_equals(_:_:)(v33, v26);
      v28 = *(v24 + 8);
      v28(v26, v7);
      v28(v27, v7);
LABEL_8:
      v15 = v31;
      goto LABEL_9;
    }

    (*(v32 + 8))(v33, v7);
  }

  v23 = 0;
  CommandSet = TupleTypeMetadata2;
LABEL_9:
  (*(v15 + 8))(v18, CommandSet);
  return v23 & 1;
}

uint64_t LastCommandSet.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = type metadata accessor for MessageIdentifierSetNonEmpty(0, *(a2 + 16), *(a2 + 24), a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v5, a2, v13);
  if ((*(v9 + 48))(v15, 1, v8) == 1)
  {
    return MEMORY[0x1B2728D70](1);
  }

  (*(v9 + 32))(v11, v15, v8);
  MEMORY[0x1B2728D70](0);
  MessageIdentifierSetNonEmpty.hash(into:)(a1, v8, v18, v19);
  return (*(v9 + 8))(v11, v8);
}

uint64_t LastCommandSet.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  LastCommandSet.hash(into:)(v5, a1, v2, v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC9CC4(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  LastCommandSet.hash(into:)(v6, a2, v3, v4);
  return sub_1B0E46CB8();
}

uint64_t static LastCommandSet.range(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v9 = type metadata accessor for MessageIdentifierRange(0, a2, a3, a5);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  (*(v13 + 16))(&v18 - v11, a1, v10);
  MessageIdentifierSetNonEmpty.init(range:)(v12, a2, a3, v14);
  v16 = type metadata accessor for MessageIdentifierSetNonEmpty(0, a2, a3, v15);
  return (*(*(v16 - 8) + 56))(a4, 0, 1, v16);
}

uint64_t sub_1B0DC9E80(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x204E5255544552uLL, 0xE700000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x204E5255544552;
    v7._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v1 + 20) = v10;
  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v10);
  if (v11)
  {
    v12._countAndFlagsBits = 40;
    v12._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v10);
  }

  v13 = *(v1 + 20);
  v14 = (v13 + result);
  if (__CFADD__(v13, result))
  {
    goto LABEL_24;
  }

  *(v1 + 20) = v14;
  v15 = __OFADD__(v8, result);
  v16 = v8 + result;
  if (v15)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v17 = *(a1 + 16);
  if (v17)
  {
    v35 = a1;
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v14);
    if (v18)
    {
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v19, v14);
    }

    v20 = result;
    v21 = *(v2 + 20);
    v22 = __CFADD__(v21, result);
    v23 = v21 + result;
    if (v22)
    {
      goto LABEL_29;
    }

    *(v2 + 20) = v23;
    MEMORY[0x1EEE9AC00](result);
    v34[2] = sub_1B0DCA0E4;
    v34[3] = 0;
    v34[4] = v2;
    v34[5] = &v35;
    v34[6] = 32;
    v34[7] = 0xE100000000000000;
    result = sub_1B0DE69B4(0, sub_1B0DCA17C, v34, a1);
    v24 = v20 + result;
    if (__OFADD__(v20, result))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v25 = *(v2 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v25);
    if (v26)
    {
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v27, v25);
    }

    v28 = *(v2 + 20);
    LODWORD(v14) = v28 + result;
    if (__CFADD__(v28, result))
    {
      goto LABEL_31;
    }

    *(v2 + 20) = v14;
    v17 = v24 + result;
    if (__OFADD__(v24, result))
    {
LABEL_32:
      __break(1u);
      return result;
    }
  }

  v15 = __OFADD__(v16, v17);
  v29 = v16 + v17;
  if (v15)
  {
    goto LABEL_26;
  }

  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v14);
  if (v30)
  {
    v31._countAndFlagsBits = 41;
    v31._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v31, v14);
  }

  v32 = *(v2 + 20);
  v22 = __CFADD__(v32, result);
  v33 = v32 + result;
  if (v22)
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v33;
  v15 = __OFADD__(v29, result);
  result += v29;
  if (v15)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_1B0DCA0E4(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  return sub_1B0E18638(v4);
}

uint64_t sub_1B0DCA124@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__int128 *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>, unint64_t a8@<X6>, void *a9@<X7>)
{
  v11 = *a1;
  v12 = *(a2 + 64);
  v13 = *a6;
  v14 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v14;
  v15 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v15;
  v18 = v12;
  result = sub_1B0E23A88(v11, v17, a3, a4, a5, v13, a8, a9);
  if (!v9)
  {
    *a7 = result;
  }

  return result;
}

BOOL sub_1B0DCA1A0(void *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (a1[4])
  {
    if ((a2[4] & 1) == 0)
    {
      return 0;
    }

    v6 = a1[2];
    v7 = a1[3];
    v8 = a2[2];
    v9 = a2[3];
    if (v2 != v4 || v3 != v5)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_1B0E46A78();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    if (v6 != v8 || v7 != v9)
    {
      v16 = a1;
      v17 = a2;
      v18 = sub_1B0E46A78();
      a2 = v17;
      v19 = v18;
      a1 = v16;
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (a2[4])
    {
      return 0;
    }

    if (v2 != v4 || v3 != v5)
    {
      v21 = a1;
      v22 = a2;
      v23 = sub_1B0E46A78();
      a2 = v22;
      v24 = v23;
      a1 = v21;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v26 = a1[5];
  v25 = a1[6];
  v27 = a1[7];
  v29 = a2[5];
  v28 = a2[6];
  v30 = a2[7];
  if (HIBYTE(v27) == 255)
  {
    if (HIBYTE(v30) == 255)
    {
      return 1;
    }

    goto LABEL_24;
  }

  if (HIBYTE(v30) == 255)
  {
LABEL_24:
    sub_1B0D3CB80(a1[5], v25, v27);
    sub_1B0D3CB80(v29, v28, v30);
    sub_1B0D3CB98(v26, v25, v27);
    sub_1B0D3CB98(v29, v28, v30);
    return 0;
  }

  if ((v27 & 0x100000000000000) != 0)
  {
    if ((v30 & 0x100000000000000) == 0)
    {
      return 0;
    }

    sub_1B0D3CB80(a1[5], v25, v27);
    sub_1B0D3CB80(v29, v28, v30);
    v32 = sub_1B0D312C0(v26, v29);
  }

  else
  {
    if ((v30 & 0x100000000000000) != 0)
    {
      return 0;
    }

    sub_1B0D3CB80(a1[5], v25, v27);
    sub_1B0D3CB80(v29, v28, v30);
    v32 = sub_1B0C2DB54(v26, v25, v27 & 0xFFFFFFFFFFFFFFLL, v29, v28, v30 & 0xFFFFFFFFFFFFFFLL);
  }

  v33 = v32;
  sub_1B0D3CB98(v29, v28, v30);
  sub_1B0D3CB98(v26, v25, v27);
  return (v33 & 1) != 0;
}

BOOL sub_1B0DCA3C4(void *a1, void *a2)
{
  v4 = type metadata accessor for ParameterValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F20, &unk_1B0EF5F80);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if (*a1 == *a2 || (v14 = sub_1B0E46A78(), result = 0, (v14 & 1) != 0))
  {
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150) + 52);
    v17 = *(v11 + 48);
    sub_1B0D78ED0(a1 + v16, v13);
    sub_1B0D78ED0(a2 + v16, &v13[v17]);
    v18 = *(v5 + 48);
    if (v18(v13, 1, v4) == 1)
    {
      if (v18(&v13[v17], 1, v4) == 1)
      {
        sub_1B0398EFC(v13, &qword_1EB6E6440, &unk_1B0EF3530);
        return 1;
      }
    }

    else
    {
      sub_1B0D78ED0(v13, v10);
      if (v18(&v13[v17], 1, v4) != 1)
      {
        sub_1B0D06280(&v13[v17], v7);
        v19 = _s12NIOIMAPCore214ParameterValueO21__derived_enum_equalsySbAC_ACtFZ_0(v10, v7);
        sub_1B0D06348(v7);
        sub_1B0D06348(v10);
        sub_1B0398EFC(v13, &qword_1EB6E6440, &unk_1B0EF3530);
        return (v19 & 1) != 0;
      }

      sub_1B0D06348(v10);
    }

    sub_1B0398EFC(v13, &qword_1EB6E6F20, &unk_1B0EF5F80);
    return 0;
  }

  return result;
}

BOOL static ListSelectBaseOption.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (*(a1 + 32) == 0xFF)
  {
    return *(a2 + 32) == 0xFF;
  }

  v18 = v2;
  v19 = v3;
  v6 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v6;
  v15 = v4;
  v16 = *(a1 + 40);
  v17 = *(a1 + 56);
  v7 = *(a2 + 32);
  if (*(a2 + 32) == 0xFF)
  {
    return 0;
  }

  else
  {
    v9 = *(a2 + 16);
    v10[0] = *a2;
    v10[1] = v9;
    v11 = v7;
    v12 = *(a2 + 40);
    v13 = *(a2 + 56);
    return sub_1B0DCA1A0(v14, v10);
  }
}

uint64_t ListSelectBaseOption.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  if (v3 == 255)
  {
    return MEMORY[0x1B2728D70](0);
  }

  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  MEMORY[0x1B2728D70](1);
  if (v3)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0D498DC(a1, v5, v6, v7);
}

uint64_t ListSelectBaseOption.hashValue.getter()
{
  sub_1B0E46C28();
  v1 = *(v0 + 32);
  if (v1 == 255)
  {
    MEMORY[0x1B2728D70](0);
  }

  else
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    MEMORY[0x1B2728D70](1);
    if (v1)
    {
      MEMORY[0x1B2728D70](1);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1B2728D70](0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D498DC(v6, v2, v3, v4);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0DCA918(uint64_t a1)
{
  v3 = *(v1 + 32);
  if (v3 == 255)
  {
    return MEMORY[0x1B2728D70](0);
  }

  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  MEMORY[0x1B2728D70](1);
  if (v3)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0D498DC(a1, v4, v5, v6);
}

uint64_t sub_1B0DCAA14(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  sub_1B0E46C28();
  if (v2 == 255)
  {
    MEMORY[0x1B2728D70](0);
  }

  else
  {
    MEMORY[0x1B2728D70](1);
    if (v2)
    {
      MEMORY[0x1B2728D70](1);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1B2728D70](0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D498DC(v7, v3, v4, v5);
  }

  return sub_1B0E46CB8();
}

BOOL sub_1B0DCAAF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (*(a1 + 32) == 0xFF)
  {
    return ~*(a2 + 32) == 0;
  }

  v18 = v2;
  v19 = v3;
  v7 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v7;
  v11 = v4;
  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  if (v5 == 0xFF)
  {
    return 0;
  }

  else
  {
    v9 = *(a2 + 16);
    v14[0] = *a2;
    v14[1] = v9;
    v15 = v5;
    v16 = *(a2 + 40);
    v17 = *(a2 + 56);
    return sub_1B0DCA1A0(v10, v14);
  }
}

unint64_t sub_1B0DCABA0()
{
  result = qword_1EB6E7728;
  if (!qword_1EB6E7728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7728);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore215OptionValueCompOSg(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore220ListSelectBaseOptionO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0DCAC34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 64))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0DCAC7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = ~a2;
    }
  }

  return result;
}

double sub_1B0DCACC8(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *(a1 + 32) = -a2;
  }

  return result;
}

BOOL static ListSelectIndependentOption.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 != 254)
  {
    if (v2 == 255)
    {
      if (*(a2 + 32) == 0xFF)
      {
        return 1;
      }
    }

    else
    {
      v4 = *(a1 + 16);
      v12[0] = *a1;
      v12[1] = v4;
      v13 = v2;
      v14 = *(a1 + 40);
      v15 = *(a1 + 56);
      v5 = *(a2 + 32);
      if ((~*(a2 + 32) & 0xFELL) != 0)
      {
        v6 = *(a2 + 16);
        v8[0] = *a2;
        v8[1] = v6;
        v9 = v5;
        v10 = *(a2 + 40);
        v11 = *(a2 + 56);
        return sub_1B0DCA1A0(v12, v8);
      }
    }

    return 0;
  }

  return *(a2 + 32) == 254;
}

uint64_t ListSelectIndependentOption.hash(into:)(uint64_t a1)
{
  v3 = v1[4];
  if (v3 == 254)
  {
    v4 = 2;
    return MEMORY[0x1B2728D70](v4);
  }

  if (v3 == 255)
  {
    v4 = 0;
    return MEMORY[0x1B2728D70](v4);
  }

  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  MEMORY[0x1B2728D70](1);
  if (v3)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0D498DC(a1, v6, v7, v8);
}

uint64_t ListSelectIndependentOption.hashValue.getter()
{
  sub_1B0E46C28();
  v1 = v0[4];
  if (v1 == 254)
  {
    v2 = 2;
    goto LABEL_5;
  }

  if (v1 == 255)
  {
    v2 = 0;
LABEL_5:
    MEMORY[0x1B2728D70](v2);
    return sub_1B0E46CB8();
  }

  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  MEMORY[0x1B2728D70](1);
  if (v1)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0D498DC(v7, v3, v4, v5);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DCAFE4(uint64_t a1)
{
  v3 = *(v1 + 32);
  if (v3 == 254)
  {
    v4 = 2;
    return MEMORY[0x1B2728D70](v4);
  }

  if (v3 == 255)
  {
    v4 = 0;
    return MEMORY[0x1B2728D70](v4);
  }

  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  MEMORY[0x1B2728D70](1);
  if (v3)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0D498DC(a1, v6, v7, v8);
}

uint64_t sub_1B0DCB0F0(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  sub_1B0E46C28();
  if (v2 == 254)
  {
    v6 = 2;
    goto LABEL_5;
  }

  if (v2 == 255)
  {
    v6 = 0;
LABEL_5:
    MEMORY[0x1B2728D70](v6);
    return sub_1B0E46CB8();
  }

  MEMORY[0x1B2728D70](1);
  if (v2)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0D498DC(v8, v3, v4, v5);
  return sub_1B0E46CB8();
}

BOOL sub_1B0DCB1E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4 == 254)
  {
    v6 = *(a2 + 32) == 254;
    goto LABEL_5;
  }

  if (v4 == 255)
  {
    v6 = ~*(a2 + 32) == 0;
LABEL_5:
    v7 = v6;
    return v7 & 1;
  }

  v20 = v2;
  v21 = v3;
  v9 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v9;
  v13 = v4;
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  if ((~v5 & 0xFE) != 0)
  {
    v11 = *(a2 + 16);
    v16[0] = *a2;
    v16[1] = v11;
    v17 = v5;
    v18 = *(a2 + 40);
    v19 = *(a2 + 56);
    return sub_1B0DCA1A0(v12, v16);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B0DCB2A0()
{
  result = qword_1EB6E7730;
  if (!qword_1EB6E7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7730);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore227ListSelectIndependentOptionO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0DCB308(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 64))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 > 1)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0DCB350(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = -2 - a2;
    }
  }

  return result;
}

__n128 ListSelectOptions.init(baseOption:options:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v5;
  *(a3 + 64) = a2;
  return result;
}

BOOL static ListSelectOption.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 > 0xFDu)
  {
    if (v2 == 254)
    {
      if (*(a2 + 32) != 254)
      {
        return 0;
      }
    }

    else
    {
      if (v2 != 255)
      {
        goto LABEL_10;
      }

      if (*(a2 + 32) != 0xFF)
      {
        return 0;
      }
    }

    return 1;
  }

  if (v2 == 252)
  {
    return *(a2 + 32) == 252;
  }

  if (v2 == 253)
  {
    return *(a2 + 32) == 253;
  }

LABEL_10:
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v13 = v2;
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v4 = *(a2 + 32);
  if ((v4 & 0xFC | 2) == 0xFE)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  v9 = v4;
  v10 = *(a2 + 40);
  v11 = *(a2 + 56);
  return sub_1B0DCA1A0(v12, v8);
}

uint64_t ListSelectOption.hash(into:)(uint64_t a1)
{
  v4 = v1[4];
  v3 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  if (v4 > 0xFDu)
  {
    if (v4 == 254)
    {
      v7 = 1;
      return MEMORY[0x1B2728D70](v7);
    }

    if (v4 == 255)
    {
      v7 = 0;
      return MEMORY[0x1B2728D70](v7);
    }
  }

  else
  {
    if (v4 == 252)
    {
      v7 = 3;
      return MEMORY[0x1B2728D70](v7);
    }

    if (v4 == 253)
    {
      v7 = 2;
      return MEMORY[0x1B2728D70](v7);
    }
  }

  MEMORY[0x1B2728D70](4);
  if (v4)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0D498DC(a1, v3, v5, v6);
}

uint64_t ListSelectOption.hashValue.getter()
{
  sub_1B0E46C28();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  if (v2 > 0xFDu)
  {
    if (v2 == 254)
    {
      v5 = 1;
      goto LABEL_12;
    }

    if (v2 == 255)
    {
      v5 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (v2 == 252)
    {
      v5 = 3;
      goto LABEL_12;
    }

    if (v2 == 253)
    {
      v5 = 2;
LABEL_12:
      MEMORY[0x1B2728D70](v5);
      return sub_1B0E46CB8();
    }
  }

  MEMORY[0x1B2728D70](4);
  if (v2)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0D498DC(v7, v1, v3, v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DCB728(uint64_t a1)
{
  sub_1B0E46C28();
  ListSelectOption.hash(into:)(v2);
  return sub_1B0E46CB8();
}

BOOL sub_1B0DCB764(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4 > 0xFDu)
  {
    if (v4 == 254)
    {
      v6 = *(a2 + 32) == 254;
      goto LABEL_12;
    }

    if (v4 == 255)
    {
      v6 = ~*(a2 + 32) == 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (v4 == 252)
    {
      v6 = *(a2 + 32) == 252;
      goto LABEL_12;
    }

    if (v4 == 253)
    {
      v6 = *(a2 + 32) == 253;
LABEL_12:
      v9 = v6;
      return v9 & 1;
    }
  }

  v20 = v2;
  v21 = v3;
  v7 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v7;
  v13 = v4;
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  if ((v5 & 0xFC | 2) == 0xFE)
  {
    return 0;
  }

  else
  {
    v11 = *(a2 + 16);
    v16[0] = *a2;
    v16[1] = v11;
    v17 = v5;
    v18 = *(a2 + 40);
    v19 = *(a2 + 56);
    return sub_1B0DCA1A0(v12, v16);
  }
}