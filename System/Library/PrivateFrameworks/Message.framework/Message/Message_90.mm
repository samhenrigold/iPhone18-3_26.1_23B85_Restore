void sub_1B0DA46E8(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
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
      goto LABEL_6;
    }

    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_1B0436204(result);
    if (v4)
    {
      *result = v9;
      *(result + 8) = v10;
      *(result + 16) = v11;
      *(result + 20) = v12;
      *(result + 22) = v13;
LABEL_6:
      swift_willThrow();
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CE0, &qword_1B0EE4E80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B0EC1E70;
    v16 = sub_1B0DFF3DC(result, a2, a3, 0);
    if ((v16 & 0x8000000000000000) != 0)
    {
      sub_1B0436554();
      swift_allocError();
      *v30 = 0xD000000000000011;
      v30[1] = 0x80000001B0F2FEE0;
      v30[2] = 0xD000000000000020;
      v30[3] = 0x80000001B0F2FA10;
      v30[4] = 202;
      swift_willThrow();
      *(v15 + 16) = 0;
    }

    else
    {
      *(v15 + 32) = v16;
      v17 = *result;
      v18 = *(result + 8);
      v19 = *(result + 16);
      v20 = *(result + 20);
      v43 = *(result + 22);

      if (v5 + 1 >= a3)
      {
        sub_1B0439BCC();
        v31 = swift_allocError();
        *v32 = a3;
      }

      else
      {
        v40 = v20;
        v41 = v19;
        v42 = v17;
        v21 = *result;
        v22 = *(result + 8);
        v45 = *(result + 16);
        v23 = *(result + 20);
        v24 = *(result + 22);
        if (v5 + 2 >= a3)
        {
LABEL_18:
          sub_1B0439BCC();
          v31 = swift_allocError();
          *v33 = a3;
        }

        else
        {
          v25 = v15;
          while (1)
          {
            v46 = v25;
            swift_retain_n();
            sub_1B0436204(result);

            v44 = v24;
            v26 = v23;
            v27 = sub_1B0DFF3DC(result, v5 + 1, a3, 0);
            if ((v27 & 0x8000000000000000) != 0)
            {
              break;
            }

            v25 = v46;
            v29 = *(v46 + 2);
            v28 = *(v46 + 3);
            if (v29 >= v28 >> 1)
            {
              v25 = sub_1B0DF5438((v28 > 1), v29 + 1, 1, v46);
            }

            *(v25 + 2) = v29 + 1;
            *&v25[8 * v29 + 32] = v27;
            v21 = *result;
            v22 = *(result + 8);
            v45 = *(result + 16);
            v23 = *(result + 20);
            v24 = *(result + 22);
            if (v5 + 2 >= a3)
            {
              goto LABEL_18;
            }
          }

          sub_1B0436554();
          v31 = swift_allocError();
          *v39 = 0xD000000000000011;
          v39[1] = 0x80000001B0F2FEE0;
          v39[2] = 0xD000000000000020;
          v39[3] = 0x80000001B0F2FA10;
          v39[4] = 202;
          v15 = v46;
          v23 = v26;
          v24 = v44;
        }

        swift_willThrow();

        *result = v21;
        *(result + 8) = v22;
        *(result + 16) = v45;
        *(result + 20) = v23;
        *(result + 22) = v24;
        v17 = v42;
        v20 = v40;
        v19 = v41;
      }

      swift_willThrow();
      v49 = v31;
      v34 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {

        sub_1B0436204(result);

        v48[0].i64[0] = v15;
        v48[0].i64[1] = sub_1B0DB2268(result, a2, a3);
        sub_1B0DA4D2C(v48);
        v35 = v48[7];
        a4[6] = v48[6];
        a4[7] = v35;
        a4[8] = v48[8];
        v36 = v48[3];
        a4[2] = v48[2];
        a4[3] = v36;
        v37 = v48[5];
        a4[4] = v48[4];
        a4[5] = v37;
        v38 = v48[1];
        *a4 = v48[0];
        a4[1] = v38;
      }

      else
      {

        *result = v17;
        *(result + 8) = v18;
        *(result + 16) = v19;
        *(result + 20) = v20;
        *(result + 22) = v43;
        swift_willThrow();
      }
    }
  }
}

uint64_t sub_1B0DA4CEC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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

int8x16_t sub_1B0DA4D2C(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x9000000000000000;
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

uint64_t sub_1B0DA4D84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 17))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 16);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0DA4DCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1B0DA4E24()
{
  result = qword_1EB6E75A8;
  if (!qword_1EB6E75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E75A8);
  }

  return result;
}

uint64_t sub_1B0DA4E90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E75B0, &qword_1B0EF4FC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B0EF4FB0;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B0DA8E74;
  *(v15 + 24) = v14;
  *(v13 + 32) = 0x5347414C46;
  *(v13 + 40) = 0xE500000000000000;
  *(v13 + 48) = sub_1B0442174;
  *(v13 + 56) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0DA8E94;
  *(v17 + 24) = v16;
  *(v13 + 64) = 0x45504F4C45564E45;
  *(v13 + 72) = 0xE800000000000000;
  *(v13 + 80) = sub_1B0442378;
  *(v13 + 88) = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B0DA8EB4;
  *(v19 + 24) = v18;
  strcpy((v13 + 96), "INTERNALDATE");
  *(v13 + 109) = 0;
  *(v13 + 110) = -5120;
  *(v13 + 112) = sub_1B0442378;
  *(v13 + 120) = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B0DA8ED4;
  *(v21 + 24) = v20;
  *(v13 + 128) = 0x532E323238434652;
  *(v13 + 136) = 0xEB00000000455A49;
  *(v13 + 144) = sub_1B0442378;
  *(v13 + 152) = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B0DA8EF4;
  *(v23 + 24) = v22;
  *(v13 + 160) = 1497648962;
  *(v13 + 168) = 0xE400000000000000;
  *(v13 + 176) = sub_1B0442378;
  *(v13 + 184) = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B0DA8F14;
  *(v25 + 24) = v24;
  strcpy((v13 + 192), "BODYSTRUCTURE");
  *(v13 + 206) = -4864;
  *(v13 + 208) = sub_1B0442378;
  *(v13 + 216) = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1B0DA8F38;
  *(v27 + 24) = v26;
  *(v13 + 224) = 4475221;
  *(v13 + 232) = 0xE300000000000000;
  *(v13 + 240) = sub_1B0442378;
  *(v13 + 248) = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1B0DA8F58;
  *(v29 + 24) = v28;
  *(v13 + 256) = 0x532E5952414E4942;
  *(v13 + 264) = 0xEB00000000455A49;
  *(v13 + 272) = sub_1B0442378;
  *(v13 + 280) = v29;
  *(v13 + 288) = 0x47534D2D4D472D58;
  *(v13 + 296) = 0xEA00000000004449;
  *(v13 + 304) = sub_1B0DA65C8;
  *(v13 + 312) = 0;
  *(v13 + 320) = 0x5248542D4D472D58;
  *(v13 + 328) = 0xEA00000000004449;
  *(v13 + 336) = sub_1B0DA65F4;
  *(v13 + 344) = 0;
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = a7;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1B0DA8F78;
  *(v31 + 24) = v30;
  *(v13 + 352) = 0x42414C2D4D472D58;
  *(v13 + 360) = 0xEB00000000534C45;
  *(v13 + 368) = sub_1B0442378;
  *(v13 + 376) = v31;
  v32 = swift_allocObject();
  v32[2] = a4;
  v32[3] = a5;
  v32[4] = a6;
  v32[5] = a7;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1B0DA8F98;
  *(v33 + 24) = v32;
  *(v13 + 384) = 0x514553444F4DLL;
  *(v13 + 392) = 0xE600000000000000;
  *(v13 + 400) = sub_1B0442378;
  *(v13 + 408) = v33;
  v34 = swift_allocObject();
  v34[2] = a4;
  v34[3] = a5;
  v34[4] = a6;
  v34[5] = a7;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1B0DA8FB8;
  *(v35 + 24) = v34;
  *(v13 + 416) = 0x542E323238434652;
  *(v13 + 424) = 0xEB00000000545845;
  *(v13 + 432) = sub_1B0442378;
  *(v13 + 440) = v35;
  v36 = swift_allocObject();
  v36[2] = a4;
  v36[3] = a5;
  v36[4] = a6;
  v36[5] = a7;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1B0DA8FDC;
  *(v37 + 24) = v36;
  strcpy((v13 + 448), "RFC822.HEADER");
  *(v13 + 462) = -4864;
  *(v13 + 464) = sub_1B0442378;
  *(v13 + 472) = v37;
  v38 = swift_allocObject();
  v38[2] = a4;
  v38[3] = a5;
  v38[4] = a6;
  v38[5] = a7;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1B0DA9000;
  *(v39 + 24) = v38;
  *(v13 + 480) = 0x5952414E4942;
  *(v13 + 488) = 0xE600000000000000;
  *(v13 + 496) = sub_1B0442378;
  *(v13 + 504) = v39;
  v40 = swift_allocObject();
  v40[2] = a4;
  v40[3] = a5;
  v40[4] = a6;
  v40[5] = a7;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1B0DA9020;
  *(v41 + 24) = v40;
  *(v13 + 512) = 0x57454956455250;
  *(v13 + 520) = 0xE700000000000000;
  *(v13 + 528) = sub_1B0442378;
  *(v13 + 536) = v41;
  v42 = swift_allocObject();
  v42[2] = a4;
  v42[3] = a5;
  v42[4] = a6;
  v42[5] = a7;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1B0DA9040;
  *(v43 + 24) = v42;
  *(v13 + 544) = 0x44494C49414D45;
  *(v13 + 552) = 0xE700000000000000;
  *(v13 + 560) = sub_1B0442378;
  *(v13 + 568) = v43;
  v44 = swift_allocObject();
  v44[2] = a4;
  v44[3] = a5;
  v44[4] = a6;
  v44[5] = a7;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_1B0DA9060;
  *(v45 + 24) = v44;
  *(v13 + 576) = 0x4449444145524854;
  *(v13 + 584) = 0xE800000000000000;
  *(v13 + 592) = sub_1B0442378;
  *(v13 + 600) = v45;
  swift_retain_n();
  v46 = sub_1B0DA9124(v13, &qword_1EB6E75B8, &qword_1B0EF4FC8);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7550, &qword_1B0EF4668);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  if (!__OFADD__(a2, 1))
  {
    v48 = *a1;
    v49 = a1[1];
    v50 = *(a1 + 4);
    v51 = *(a1 + 10);
    v52 = *(a1 + 22);
    if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v53 = a3;
    }

    else
    {

      sub_1B0440440(a1, &v76);
      if (!v72)
      {
        v73 = v51;
        sub_1B0DFF2E8(v76, v77, v78 | (v79 << 32) | (v80 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 84);
        v69 = v50;
        v70 = sub_1B0E44BB8();
        v55 = v54;

        if (*(v46 + 16))
        {
          v56 = sub_1B0441038(v70, v55);
          if (v57)
          {
            v58 = v56;

            v59 = *(*(v46 + 56) + 16 * v58);
            v76 = a2;
            v77 = a3;

            v59(v81, a1, &v76);

            v63 = v81[9];
            v64 = v81[10];
            v65 = v81[7];
            *(a8 + 128) = v81[8];
            *(a8 + 144) = v63;
            *(a8 + 160) = v64;
            *(a8 + 176) = v82;
            v66 = v81[5];
            *(a8 + 64) = v81[4];
            *(a8 + 80) = v66;
            *(a8 + 96) = v81[6];
            *(a8 + 112) = v65;
            v67 = v81[1];
            *a8 = v81[0];
            *(a8 + 16) = v67;
            v68 = v81[3];
            *(a8 + 32) = v81[2];
            *(a8 + 48) = v68;
            return result;
          }
        }

        v76 = 0;
        v77 = 0xE000000000000000;
        sub_1B0E46298();

        v76 = 0xD000000000000017;
        v77 = 0x80000001B0F2FF20;
        MEMORY[0x1B2726E80](v70, v55);

        v60 = v76;
        v61 = v77;
        sub_1B0436554();
        swift_allocError();
        *v62 = v60;
        v62[1] = v61;
        v62[2] = 0xD000000000000020;
        v62[3] = 0x80000001B0F2FA10;
        v62[4] = 86;
        swift_willThrow();

        v50 = v69;
        v51 = v73;
LABEL_7:
        *a1 = v48;
        a1[1] = v49;
        *(a1 + 4) = v50;
        *(a1 + 10) = v51;
        *(a1 + 22) = v52;
        swift_willThrow();
      }
    }

    swift_willThrow();

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1B0DA5A50@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v37 = v11;
    v38 = v9;
    v39 = v10;
    if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v21 = a3;
      return swift_willThrow();
    }

    v13 = result;
    v14 = *result;
    v15 = result[1];
    v16 = *(result + 4);
    v17 = *(result + 10);
    v18 = a2 + 2;
    v19 = *(result + 22);
    if (a2 + 2 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v22 = a3;
      goto LABEL_8;
    }

    sub_1B0436204(v13);
    if (v8)
    {

LABEL_8:
      swift_willThrow();
      *v13 = v14;
      *(v13 + 8) = v15;
      *(v13 + 16) = v16;
      *(v13 + 20) = v17;
      *(v13 + 22) = v19;
      return swift_willThrow();
    }

    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, v13, v18, a3);

    sub_1B0E00B4C(v13, v18, a3, a4, a5, a6, a7, v18, a3);
    v34 = v23;

    if (v34)
    {
      v24 = v34;
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }

    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 1, v13, v18, a3);

    *&v35[0] = v24;
    result = sub_1B0D04848(v35);
    v25 = v35[9];
    *(a8 + 128) = v35[8];
    *(a8 + 144) = v25;
    *(a8 + 160) = v35[10];
    *(a8 + 176) = v36;
    v26 = v35[5];
    *(a8 + 64) = v35[4];
    *(a8 + 80) = v26;
    v27 = v35[7];
    *(a8 + 96) = v35[6];
    *(a8 + 112) = v27;
    v28 = v35[1];
    *a8 = v35[0];
    *(a8 + 16) = v28;
    v29 = v35[3];
    *(a8 + 32) = v35[2];
    *(a8 + 48) = v29;
  }

  return result;
}

uint64_t sub_1B0DA5CC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = __OFADD__(a2, 1);
  v11 = a2 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    if (v11 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v13 = result;
    v15 = *result;
    v16 = *(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 20);
    v19 = *(result + 22);
    sub_1B0436204(result);
    if (v8)
    {
      *v13 = v15;
      *(v13 + 8) = v16;
      *(v13 + 16) = v17;
      *(v13 + 20) = v18;
      *(v13 + 22) = v19;
      return swift_willThrow();
    }

    sub_1B0D9B748(v13, a2, a3, a4, a5, a6, a7, v42);
    v34 = v42[4];
    v35 = v42[5];
    v36 = v42[6];
    *&v37 = v43;
    v30 = v42[0];
    v31 = v42[1];
    v32 = v42[2];
    v33 = v42[3];
    result = sub_1B0D04858(&v30);
    v21 = v39;
    *(a8 + 128) = v38;
    *(a8 + 144) = v21;
    *(a8 + 160) = v40;
    *(a8 + 176) = v41;
    v22 = v35;
    *(a8 + 64) = v34;
    *(a8 + 80) = v22;
    v23 = v37;
    *(a8 + 96) = v36;
    *(a8 + 112) = v23;
    v24 = v31;
    *a8 = v30;
    *(a8 + 16) = v24;
    v25 = v33;
    *(a8 + 32) = v32;
    *(a8 + 48) = v25;
  }

  return result;
}

uint64_t sub_1B0DA5E4C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = __OFADD__(a2, 1);
  v11 = a2 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    if (v11 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v13 = result;
    v15 = *result;
    v16 = *(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 20);
    v19 = *(result + 22);
    sub_1B0436204(result);
    if (v8)
    {
      *v13 = v15;
      *(v13 + 8) = v16;
      *(v13 + 16) = v17;
      *(v13 + 20) = v18;
      *(v13 + 22) = v19;
      return swift_willThrow();
    }

    *&v30[0] = sub_1B0D99978(v13, a2, a3, a4, a5, a6, a7);
    result = sub_1B0D04820(v30);
    v21 = v30[9];
    *(a8 + 128) = v30[8];
    *(a8 + 144) = v21;
    *(a8 + 160) = v30[10];
    *(a8 + 176) = v31;
    v22 = v30[5];
    *(a8 + 64) = v30[4];
    *(a8 + 80) = v22;
    v23 = v30[7];
    *(a8 + 96) = v30[6];
    *(a8 + 112) = v23;
    v24 = v30[1];
    *a8 = v30[0];
    *(a8 + 16) = v24;
    v25 = v30[3];
    *(a8 + 32) = v30[2];
    *(a8 + 48) = v25;
  }

  return result;
}

uint64_t sub_1B0DA5FA8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v16 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = *(result + 22);
    sub_1B0436204(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    v17 = sub_1B0DFF3DC(v9, a2, a3, 1);
    if ((v17 & 0x8000000000000000) != 0)
    {
      sub_1B0436554();
      swift_allocError();
      *v23 = 0xD000000000000011;
      v23[1] = 0x80000001B0F2FEE0;
      v23[2] = 0xD000000000000020;
      v23[3] = 0x80000001B0F2FA10;
      v23[4] = 202;
      return swift_willThrow();
    }

    *&v24[0] = v17;
    result = sub_1B0D0480C(v24);
    v18 = v24[9];
    *(a4 + 128) = v24[8];
    *(a4 + 144) = v18;
    *(a4 + 160) = v24[10];
    *(a4 + 176) = v25;
    v19 = v24[5];
    *(a4 + 64) = v24[4];
    *(a4 + 80) = v19;
    v20 = v24[7];
    *(a4 + 96) = v24[6];
    *(a4 + 112) = v20;
    v21 = v24[1];
    *a4 = v24[0];
    *(a4 + 16) = v21;
    v22 = v24[3];
    *(a4 + 32) = v24[2];
    *(a4 + 48) = v22;
  }

  return result;
}

uint64_t sub_1B0DA6150@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0DA92FC;
  *(v17 + 24) = v16;
  v45[0] = sub_1B0442378;
  v45[1] = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_1B0DA9320;
  *(result + 24) = v18;
  v45[2] = sub_1B0442378;
  v45[3] = result;
  v20 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v21 = 0;
    for (i = 0; ; i = 1)
    {
      v42 = v21;
      *(swift_allocObject() + 16) = *&v45[2 * i];
      if (v20 >= a3)
      {
        sub_1B0439BCC();
        v30 = swift_allocError();
        *v31 = a3;
      }

      else
      {
        v23 = *a1;
        v24 = a1[1];
        v25 = *(a1 + 4);
        v41 = v9;
        v26 = v20;
        v27 = *(a1 + 10);
        v28 = *(a1 + 22);

        v29 = v26;
        sub_1B0DA93A4(a1, v26, a3);
        v30 = v41;
        if (!v41)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          result = swift_arrayDestroy();
          v35 = v55;
          *(a8 + 128) = v54;
          *(a8 + 144) = v35;
          *(a8 + 160) = v56;
          *(a8 + 176) = v57;
          v36 = v51;
          *(a8 + 64) = v50;
          *(a8 + 80) = v36;
          v37 = v53;
          *(a8 + 96) = v52;
          *(a8 + 112) = v37;
          v38 = v47;
          *a8 = v46;
          *(a8 + 16) = v38;
          v39 = v49;
          *(a8 + 32) = v48;
          *(a8 + 48) = v39;
          return result;
        }

        *a1 = v23;
        a1[1] = v24;
        *(a1 + 4) = v25;
        *(a1 + 10) = v27;
        *(a1 + 22) = v28;
        v20 = v29;
      }

      swift_willThrow();
      v44 = v30;
      v32 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v44 = v30;
        v33 = v30;
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v21 = 1;
      if (v42)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
        swift_arrayDestroy();
        sub_1B0436554();
        swift_allocError();
        *v34 = 0xD000000000000019;
        v34[1] = 0x80000001B0F2FF00;
        v34[2] = 0xD000000000000020;
        v34[3] = 0x80000001B0F2FA10;
        v34[4] = 137;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

double sub_1B0DA6620@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(_OWORD *)@<X2>, uint64_t a4@<X8>)
{
  sub_1B0DA722C(a1, *a2, a2[1], a3, v12);
  if (!v4)
  {
    v7 = v20;
    *(a4 + 128) = v19;
    *(a4 + 144) = v7;
    *(a4 + 160) = v21;
    *(a4 + 176) = v22;
    v8 = v16;
    *(a4 + 64) = v15;
    *(a4 + 80) = v8;
    v9 = v18;
    *(a4 + 96) = v17;
    *(a4 + 112) = v9;
    v10 = v12[1];
    *a4 = v12[0];
    *(a4 + 16) = v10;
    result = *&v13;
    v11 = v14;
    *(a4 + 32) = v13;
    *(a4 + 48) = v11;
  }

  return result;
}

void sub_1B0DA66AC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{

  sub_1B0E02CB4(a1, a2, a3, a4, a5, a6, a7);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  if (!v8)
  {
    if (!v18)
    {
      v18 = MEMORY[0x1E69E7CC0];
      v20 = 0;
      v22 = 2;
    }

    sub_1B0E08720(a1, a2, a3);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1B0ACE978(v20, v22);
      sub_1B0439BCC();
      swift_allocError();
      *v25 = a3;
      swift_willThrow();
    }

    else
    {
      v31 = v24;
      v32 = v23;

      sub_1B0436204(a1);

      sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, a1, a2, a3);
      *&v33 = v18;
      *(&v33 + 1) = v20;
      *&v34 = v22;
      *(&v34 + 1) = v32;
      LOBYTE(v35) = v31 & 1 | 0x40;
      sub_1B0D04698(&v33);
      v26 = v42;
      *(a8 + 128) = v41;
      *(a8 + 144) = v26;
      *(a8 + 160) = v43;
      *(a8 + 176) = v44;
      v27 = v38;
      *(a8 + 64) = v37;
      *(a8 + 80) = v27;
      v28 = v40;
      *(a8 + 96) = v39;
      *(a8 + 112) = v28;
      v29 = v34;
      *a8 = v33;
      *(a8 + 16) = v29;
      v30 = v36;
      *(a8 + 32) = v35;
      *(a8 + 48) = v30;
    }
  }
}

uint64_t sub_1B0DA6944@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v11 = __OFADD__(a2, 1);
  v12 = a2 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    if (v12 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v21 = a3;
      return swift_willThrow();
    }

    v15 = result;
    v16 = *result;
    v17 = *(result + 8);
    v18 = *(result + 16);
    v19 = *(result + 20);
    v20 = *(result + 22);
    sub_1B0436204(result);
    if (v9)
    {
      *v15 = v16;
      *(v15 + 8) = v17;
      *(v15 + 16) = v18;
      *(v15 + 20) = v19;
      *(v15 + 22) = v20;
      return swift_willThrow();
    }

    sub_1B0D8FADC(v15, a2, a3, a4, a5, a6, a7, v56);
    v40 = v56[8];
    v41 = v56[9];
    v42 = v56[10];
    LOBYTE(v43) = v57;
    v36 = v56[4];
    v37 = v56[5];
    v38 = v56[6];
    v39 = v56[7];
    v32 = v56[0];
    v33 = v56[1];
    v34 = v56[2];
    v35 = v56[3];
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v52 = v40;
    v53 = v41;
    v54 = v42;
    v55 = v43;
    v48 = v36;
    v49 = v37;
    v50 = v38;
    v51 = v39;
    v44 = v32;
    v45 = v33;
    v46 = v34;
    v47 = v35;
    HIBYTE(v43) = a8;
    result = sub_1B0D04780(&v32);
    v22 = v41;
    *(a9 + 128) = v40;
    *(a9 + 144) = v22;
    *(a9 + 160) = v42;
    *(a9 + 176) = v43;
    v23 = v37;
    *(a9 + 64) = v36;
    *(a9 + 80) = v23;
    v24 = v39;
    *(a9 + 96) = v38;
    *(a9 + 112) = v24;
    v25 = v33;
    *a9 = v32;
    *(a9 + 16) = v25;
    v26 = v35;
    *(a9 + 32) = v34;
    *(a9 + 48) = v26;
  }

  return result;
}

uint64_t sub_1B0DA6BF4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v16 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = *(result + 22);
    sub_1B0436204(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    LODWORD(v22[0]) = sub_1B0D9EA70(v9, a2, a3);
    result = sub_1B0D047F8(v22);
    v17 = v22[9];
    *(a4 + 128) = v22[8];
    *(a4 + 144) = v17;
    *(a4 + 160) = v22[10];
    *(a4 + 176) = v23;
    v18 = v22[5];
    *(a4 + 64) = v22[4];
    *(a4 + 80) = v18;
    v19 = v22[7];
    *(a4 + 96) = v22[6];
    *(a4 + 112) = v19;
    v20 = v22[1];
    *a4 = v22[0];
    *(a4 + 16) = v20;
    v21 = v22[3];
    *(a4 + 32) = v22[2];
    *(a4 + 48) = v21;
  }

  return result;
}

uint64_t *sub_1B0DA6D34@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v20 = a3;
    }

    else
    {
      v12 = result;
      v16 = *result;
      v17 = result[1];
      v32 = *(result + 10);
      v33 = *(result + 4);
      v31 = *(result + 22);

      sub_1B0DFE880(0x5BuLL, 0xE100000000000000, 0, 0, v12, v9, a3);
      if (v8)
      {

        *v12 = v16;
        *(v12 + 8) = v17;
        *(v12 + 16) = v33;
        *(v12 + 20) = v32;
        *(v12 + 22) = v31;
      }

      else
      {

        sub_1B0E0407C(v12, v9, a3, a4, a5, a6, a7);
        v19 = v18;

        sub_1B0DFE880(0x5DuLL, 0xE100000000000000, 0, 0, v12, v9, a3);

        if (v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = MEMORY[0x1E69E7CC0];
        }

        sub_1B0436204(v12);

        v22 = sub_1B0DFF3DC(v12, a2, a3, 1);
        if ((v22 & 0x8000000000000000) == 0)
        {
          *&v34[0] = v21;
          *(&v34[0] + 1) = v22;
          result = sub_1B0DA92E8(v34);
          v23 = v34[9];
          *(a8 + 128) = v34[8];
          *(a8 + 144) = v23;
          *(a8 + 160) = v34[10];
          *(a8 + 176) = v35;
          v24 = v34[5];
          *(a8 + 64) = v34[4];
          *(a8 + 80) = v24;
          v25 = v34[7];
          *(a8 + 96) = v34[6];
          *(a8 + 112) = v25;
          v26 = v34[1];
          *a8 = v34[0];
          *(a8 + 16) = v26;
          v27 = v34[3];
          *(a8 + 32) = v34[2];
          *(a8 + 48) = v27;
          return result;
        }

        sub_1B0436554();
        swift_allocError();
        *v28 = 0xD000000000000011;
        v28[1] = 0x80000001B0F2FEE0;
        v28[2] = 0xD000000000000020;
        v28[3] = 0x80000001B0F2FA10;
        v28[4] = 202;
      }
    }

    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t *sub_1B0DA7028@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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
    if (a2 + 2 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v15 = a3;
      goto LABEL_8;
    }

    sub_1B0436204(v7);
    if (v4)
    {

LABEL_8:
      swift_willThrow();
      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
      return swift_willThrow();
    }

    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, v7, v5, a3);
    v21 = sub_1B0DB2720(v7, v5, a3);
    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v7, v5, a3);

    *&v22[0] = v21;
    result = sub_1B0D047E4(v22);
    v16 = v22[9];
    *(a4 + 128) = v22[8];
    *(a4 + 144) = v16;
    *(a4 + 160) = v22[10];
    *(a4 + 176) = v23;
    v17 = v22[5];
    *(a4 + 64) = v22[4];
    *(a4 + 80) = v17;
    v18 = v22[7];
    *(a4 + 96) = v22[6];
    *(a4 + 112) = v18;
    v19 = v22[1];
    *a4 = v22[0];
    *(a4 + 16) = v19;
    v20 = v22[3];
    *(a4 + 32) = v22[2];
    *(a4 + 48) = v20;
  }

  return result;
}

uint64_t sub_1B0DA722C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(_OWORD *)@<X3>, uint64_t a5@<X8>)
{
  v7 = __OFADD__(a2, 1);
  v8 = a2 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v17 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v15 = *(result + 20);
    v16 = *(result + 22);
    sub_1B0436204(result);
    if (v5)
    {
      *v10 = v12;
      *(v10 + 8) = v13;
      *(v10 + 16) = v14;
      *(v10 + 20) = v15;
      *(v10 + 22) = v16;
      return swift_willThrow();
    }

    *&v24[0] = sub_1B0DFF3DC(v10, a2, a3, 0);
    result = a4(v24);
    v18 = v24[9];
    *(a5 + 128) = v24[8];
    *(a5 + 144) = v18;
    *(a5 + 160) = v24[10];
    *(a5 + 176) = v25;
    v19 = v24[5];
    *(a5 + 64) = v24[4];
    *(a5 + 80) = v19;
    v20 = v24[7];
    *(a5 + 96) = v24[6];
    *(a5 + 112) = v20;
    v21 = v24[1];
    *a5 = v24[0];
    *(a5 + 16) = v21;
    v22 = v24[3];
    *(a5 + 32) = v24[2];
    *(a5 + 48) = v22;
  }

  return result;
}

uint64_t sub_1B0DA737C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  v18 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
LABEL_27:
    v11 = sub_1B0DF5BB4((a8 > 1), v15, 1, v11);
    goto LABEL_9;
  }

  v9 = a3;
  if (v18 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v24 = v9;
    return swift_willThrow();
  }

  v13 = a2;
  v10 = a1;
  v70 = a5;
  v75 = a4;
  v71 = a6;
  v72 = a7;
  v69 = a8;
  v19 = *a1;
  v20 = *(a1 + 8);
  v21 = *(a1 + 16);
  v22 = *(a1 + 20);
  v23 = *(a1 + 22);
  sub_1B0436204(a1);
  if (v11)
  {
    *v10 = v19;
    *(v10 + 8) = v20;
    *(v10 + 16) = v21;
    *(v10 + 20) = v22;
    *(v10 + 22) = v23;
    return swift_willThrow();
  }

  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, v10, v13, v9);
  v12 = 0;

  sub_1B0E03320(v10, v13, v9, v75, v70, v71, v72);
  v16 = v26;
  v28 = v27;
  v30 = v29;

  if (!v16)
  {
    v50 = MEMORY[0x1E69E7CC0];
LABEL_24:
    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v10, v13, v9);

    *&v73[0] = v50;
    result = sub_1B0D04834(v73);
    v54 = v73[9];
    *(v69 + 128) = v73[8];
    *(v69 + 144) = v54;
    *(v69 + 160) = v73[10];
    *(v69 + 176) = v74;
    v55 = v73[5];
    *(v69 + 64) = v73[4];
    *(v69 + 80) = v55;
    v56 = v73[7];
    *(v69 + 96) = v73[6];
    *(v69 + 112) = v56;
    v57 = v73[1];
    *v69 = v73[0];
    *(v69 + 16) = v57;
    v58 = v73[3];
    *(v69 + 32) = v73[2];
    *(v69 + 48) = v58;
    return result;
  }

  v31 = v28;
  v17 = v30;
  v67 = v31;
  v65 = HIDWORD(v31);
  swift_retain_n();
  v11 = sub_1B0DF5BB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = *(v11 + 2);
  a8 = *(v11 + 3);
  v15 = v14 + 1;
  if (v14 >= a8 >> 1)
  {
    goto LABEL_27;
  }

LABEL_9:
  *(v11 + 2) = v15;
  v32 = &v11[24 * v14];
  *(v32 + 4) = v16;
  *(v32 + 10) = v67;
  *(v32 + 11) = v65;
  *(v32 + 12) = v17;
  *(v32 + 26) = WORD2(v17);
  v32[54] = BYTE6(v17);
  v33 = *(v10 + 8);
  v60 = *(v10 + 20);
  v61 = *(v10 + 16);
  v59 = *(v10 + 22);
  v62 = *v10;

  v66 = v18 + 1;
  if (v18 + 1 >= v9)
  {
    v50 = v11;
    sub_1B0439BCC();
    v12 = swift_allocError();
    *v51 = v9;
  }

  else
  {
    v34 = v18 + 2;
    v35 = *v10;
    v36 = *(v10 + 8);
    v37 = *(v10 + 16);
    v38 = *(v10 + 20);
    v39 = *(v10 + 22);
    v63 = v34;
    if (v34 >= v9)
    {
LABEL_19:
      v64 = v39;
      sub_1B0439BCC();
      v12 = swift_allocError();
      *v52 = v9;

      v68 = v11;
    }

    else
    {
      v40 = v11;
      while (1)
      {
        v68 = v40;
        swift_retain_n();
        sub_1B0436204(v10);

        v64 = v39;
        if (v12)
        {
          break;
        }

        sub_1B0DB5B34(v10, v66, v9, v75, v70, v71, v72);
        v12 = 0;
        v42 = v41;
        v44 = v43;
        v46 = v45;

        v40 = v68;
        v48 = *(v68 + 2);
        v47 = *(v68 + 3);
        if (v48 >= v47 >> 1)
        {
          v40 = sub_1B0DF5BB4((v47 > 1), v48 + 1, 1, v68);
        }

        *(v40 + 2) = v48 + 1;
        v49 = &v40[24 * v48];
        *(v49 + 4) = v46;
        *(v49 + 5) = v42;
        *(v49 + 12) = v44;
        *(v49 + 26) = WORD2(v44);
        v49[54] = BYTE6(v44);
        v35 = *v10;
        v36 = *(v10 + 8);
        v37 = *(v10 + 16);
        v38 = *(v10 + 20);
        v39 = *(v10 + 22);
        if (v63 >= v9)
        {
          goto LABEL_19;
        }
      }

      *v10 = v35;
      *(v10 + 8) = v36;
      *(v10 + 16) = v37;
      *(v10 + 20) = v38;
      *(v10 + 22) = v39;
    }

    swift_willThrow();

    *v10 = v35;
    *(v10 + 8) = v36;
    *(v10 + 16) = v37;
    *(v10 + 20) = v38;
    v50 = v68;
    *(v10 + 22) = v64;
  }

  swift_willThrow();
  v53 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {

    goto LABEL_24;
  }

  *v10 = v62;
  *(v10 + 8) = v33;
  *(v10 + 16) = v61;
  *(v10 + 20) = v60;
  *(v10 + 22) = v59;
  swift_willThrow();
}

uint64_t sub_1B0DA7910@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v7 = __OFADD__(a2, 1);
  v8 = a2 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v17 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v15 = *(result + 20);
    v16 = *(result + 22);
    sub_1B0436204(result);
    if (v5)
    {
      *v10 = v12;
      *(v10 + 8) = v13;
      *(v10 + 16) = v14;
      *(v10 + 20) = v15;
      *(v10 + 22) = v16;
      return swift_willThrow();
    }

    sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, v10, a2, a3);
    v24 = a4;
    v25 = 0uLL;
    LOBYTE(v26) = 0x80;
    result = sub_1B0D04698(&v24);
    v18 = v33;
    *(a5 + 128) = v32;
    *(a5 + 144) = v18;
    *(a5 + 160) = v34;
    *(a5 + 176) = v35;
    v19 = v29;
    *(a5 + 64) = v28;
    *(a5 + 80) = v19;
    v20 = v31;
    *(a5 + 96) = v30;
    *(a5 + 112) = v20;
    v21 = v25;
    *a5 = v24;
    *(a5 + 16) = v21;
    v22 = v27;
    *(a5 + 32) = v26;
    *(a5 + 48) = v22;
  }

  return result;
}

uint64_t *sub_1B0DA7A78@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return result;
  }

  if (v9 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v20 = a3;
    return swift_willThrow();
  }

  v12 = result;
  v16 = *result;
  v17 = result[1];
  v35 = *(result + 4);
  v32 = *(result + 22);
  v33 = *(result + 10);

  sub_1B0DFE880(0x5BuLL, 0xE100000000000000, 0, 0, v12, v9, a3);
  if (v8)
  {

    *v12 = v16;
    *(v12 + 8) = v17;
    *(v12 + 16) = v35;
    *(v12 + 20) = v33;
    *(v12 + 22) = v32;
    return swift_willThrow();
  }

  sub_1B0E0407C(v12, v9, a3, a4, a5, a6, a7);
  v19 = v18;

  sub_1B0DFE880(0x5DuLL, 0xE100000000000000, 0, 0, v12, v9, a3);

  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  sub_1B0E08720(v12, a2, a3);
  v23 = v22;
  v34 = v24;

  sub_1B0436204(v12);

  sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, v12, a2, a3);
  *&v36 = v21;
  *(&v36 + 1) = v34;
  v37 = v23 & 1;
  LOBYTE(v38) = 0;
  result = sub_1B0D04698(&v36);
  v25 = v45;
  *(a8 + 128) = v44;
  *(a8 + 144) = v25;
  *(a8 + 160) = v46;
  *(a8 + 176) = v47;
  v26 = v41;
  *(a8 + 64) = v40;
  *(a8 + 80) = v26;
  v27 = v43;
  *(a8 + 96) = v42;
  *(a8 + 112) = v27;
  v28 = v37;
  *a8 = v36;
  *(a8 + 16) = v28;
  v29 = v39;
  *(a8 + 32) = v38;
  *(a8 + 48) = v29;
  return result;
}

uint64_t sub_1B0DA7D44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B0DA924C;
  *(v18 + 24) = v17;
  v43 = sub_1B0442378;
  v44 = v18;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B0DA926C;
  *(v20 + 24) = v19;
  v45 = sub_1B0442378;
  v46 = v20;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_1B0DA928C;
  *(result + 24) = v21;
  v47 = sub_1B0442378;
  v48 = result;
  v23 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v24 = 32;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v42[v24];
      if (v23 >= a3)
      {
        sub_1B0439BCC();
        v9 = swift_allocError();
        *v30 = a3;
      }

      else
      {
        v25 = *a1;
        v26 = a1[1];
        v40 = *(a1 + 4);
        v27 = a3;
        v28 = *(a1 + 10);
        v29 = *(a1 + 22);

        sub_1B0DA93A4(a1, v23, v27);
        if (!v9)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          result = swift_arrayDestroy();
          v34 = v58;
          *(a8 + 128) = v57;
          *(a8 + 144) = v34;
          *(a8 + 160) = v59;
          *(a8 + 176) = v60;
          v35 = v54;
          *(a8 + 64) = v53;
          *(a8 + 80) = v35;
          v36 = v56;
          *(a8 + 96) = v55;
          *(a8 + 112) = v36;
          v37 = v50;
          *a8 = v49;
          *(a8 + 16) = v37;
          v38 = v52;
          *(a8 + 32) = v51;
          *(a8 + 48) = v38;
          return result;
        }

        *a1 = v25;
        a1[1] = v26;
        *(a1 + 4) = v40;
        *(a1 + 10) = v28;
        *(a1 + 22) = v29;
        a3 = v27;
      }

      swift_willThrow();
      v41 = v9;
      v31 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v41 = v9;
        v32 = v9;
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v24 += 16;
      if (v24 == 80)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
        swift_arrayDestroy();
        sub_1B0436554();
        swift_allocError();
        *v33 = 0xD000000000000019;
        v33[1] = 0x80000001B0F2FF00;
        v33[2] = 0xD000000000000020;
        v33[3] = 0x80000001B0F2FA10;
        v33[4] = 296;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DA81F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = __OFADD__(a2, 1);
  v11 = a2 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    if (v11 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v13 = result;
    v15 = *result;
    v16 = *(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 20);
    v19 = *(result + 22);
    sub_1B0436204(result);
    if (v8)
    {
      *v13 = v15;
      *(v13 + 8) = v16;
      *(v13 + 16) = v17;
      *(v13 + 20) = v18;
      *(v13 + 22) = v19;
      return swift_willThrow();
    }

    sub_1B0DB5DD0(v13, a2, a3, a4, a5, a6, a7);
    swift_beginAccess();
    v21 = sub_1B0E44C68();
    v23 = v22;

    *&v34[0] = v21;
    *(&v34[0] + 1) = v23;
    result = sub_1B0D0476C(v34);
    v24 = v34[9];
    v25 = v34[10];
    v26 = v34[7];
    *(a8 + 128) = v34[8];
    *(a8 + 144) = v24;
    *(a8 + 160) = v25;
    *(a8 + 176) = v35;
    v27 = v34[5];
    *(a8 + 64) = v34[4];
    *(a8 + 80) = v27;
    *(a8 + 96) = v34[6];
    *(a8 + 112) = v26;
    v28 = v34[1];
    *a8 = v34[0];
    *(a8 + 16) = v28;
    v29 = v34[3];
    *(a8 + 32) = v34[2];
    *(a8 + 48) = v29;
  }

  return result;
}

uint64_t sub_1B0DA83A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v16 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = *(result + 22);
    sub_1B0436204(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    sub_1B0DC0BE0(v9, a2, a3);
    swift_beginAccess();
    v17 = sub_1B0E44C68();
    v19 = v18;

    *&v26[0] = v17;
    *(&v26[0] + 1) = v19;
    result = sub_1B0D0476C(v26);
    v20 = v26[9];
    v21 = v26[10];
    v22 = v26[7];
    *(a4 + 128) = v26[8];
    *(a4 + 144) = v20;
    *(a4 + 160) = v21;
    *(a4 + 176) = v27;
    v23 = v26[5];
    *(a4 + 64) = v26[4];
    *(a4 + 80) = v23;
    *(a4 + 96) = v26[6];
    *(a4 + 112) = v22;
    v24 = v26[1];
    *a4 = v26[0];
    *(a4 + 16) = v24;
    v25 = v26[3];
    *(a4 + 32) = v26[2];
    *(a4 + 48) = v25;
  }

  return result;
}

uint64_t sub_1B0DA8544@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v16 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = *(result + 22);
    sub_1B0436204(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, v9, a2, a3);
    v17 = sub_1B0DC1D1C(v9, a2, a3);
    v19 = v18;
    v20 = v17;
    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v9, a2, a3);
    *&v26[0] = v20;
    *(&v26[0] + 1) = v19;
    result = sub_1B0DA9238(v26);
    v21 = v26[9];
    *(a4 + 128) = v26[8];
    *(a4 + 144) = v21;
    *(a4 + 160) = v26[10];
    *(a4 + 176) = v27;
    v22 = v26[5];
    *(a4 + 64) = v26[4];
    *(a4 + 80) = v22;
    v23 = v26[7];
    *(a4 + 96) = v26[6];
    *(a4 + 112) = v23;
    v24 = v26[1];
    *a4 = v26[0];
    *(a4 + 16) = v24;
    v25 = v26[3];
    *(a4 + 32) = v26[2];
    *(a4 + 48) = v25;
  }

  return result;
}

uint64_t sub_1B0DA86F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0DA90A8;
  *(v17 + 24) = v16;
  v45[0] = sub_1B0442378;
  v45[1] = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_1B0DA90C8;
  *(result + 24) = v18;
  v45[2] = sub_1B0442378;
  v45[3] = result;
  v20 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v21 = 0;
    for (i = 0; ; i = 1)
    {
      v42 = v21;
      *(swift_allocObject() + 16) = *&v45[2 * i];
      if (v20 >= a3)
      {
        sub_1B0439BCC();
        v30 = swift_allocError();
        *v31 = a3;
      }

      else
      {
        v23 = *a1;
        v24 = a1[1];
        v25 = *(a1 + 4);
        v41 = v9;
        v26 = v20;
        v27 = *(a1 + 10);
        v28 = *(a1 + 22);

        v29 = v26;
        sub_1B043D890(a1, v26, a3);
        v30 = v41;
        if (!v41)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          result = swift_arrayDestroy();
          v35 = v55;
          *(a8 + 128) = v54;
          *(a8 + 144) = v35;
          *(a8 + 160) = v56;
          *(a8 + 176) = v57;
          v36 = v51;
          *(a8 + 64) = v50;
          *(a8 + 80) = v36;
          v37 = v53;
          *(a8 + 96) = v52;
          *(a8 + 112) = v37;
          v38 = v47;
          *a8 = v46;
          *(a8 + 16) = v38;
          v39 = v49;
          *(a8 + 32) = v48;
          *(a8 + 48) = v39;
          return result;
        }

        *a1 = v23;
        a1[1] = v24;
        *(a1 + 4) = v25;
        *(a1 + 10) = v27;
        *(a1 + 22) = v28;
        v20 = v29;
      }

      swift_willThrow();
      v44 = v30;
      v32 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v44 = v30;
        v33 = v30;
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v21 = 1;
      if (v42)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
        swift_arrayDestroy();
        sub_1B0436554();
        swift_allocError();
        *v34 = 0xD000000000000019;
        v34[1] = 0x80000001B0F2FF00;
        v34[2] = 0xD000000000000020;
        v34[3] = 0x80000001B0F2FA10;
        v34[4] = 338;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DA8B68@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v16 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = *(result + 22);
    sub_1B0436204(result);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, v9, a2, a3);
    v17 = sub_1B0DC1D1C(v9, a2, a3);
    v19 = v18;
    v20 = v17;
    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v9, a2, a3);
    *&v26[0] = v20;
    *(&v26[0] + 1) = v19;
    result = sub_1B0DA90FC(v26);
    v21 = v26[9];
    *(a4 + 128) = v26[8];
    *(a4 + 144) = v21;
    *(a4 + 160) = v26[10];
    *(a4 + 176) = v27;
    v22 = v26[5];
    *(a4 + 64) = v26[4];
    *(a4 + 80) = v22;
    v23 = v26[7];
    *(a4 + 96) = v26[6];
    *(a4 + 112) = v23;
    v24 = v26[1];
    *a4 = v26[0];
    *(a4 + 16) = v24;
    v25 = v26[3];
    *(a4 + 32) = v26[2];
    *(a4 + 48) = v25;
  }

  return result;
}

uint64_t sub_1B0DA8D14@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(_OWORD *)@<X7>, uint64_t a5@<X8>)
{
  v7 = __OFADD__(a2, 1);
  v8 = a2 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v17 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v15 = *(result + 20);
    v16 = *(result + 22);
    sub_1B0436204(result);
    if (v5)
    {
      *v10 = v12;
      *(v10 + 8) = v13;
      *(v10 + 16) = v14;
      *(v10 + 20) = v15;
      *(v10 + 22) = v16;
      return swift_willThrow();
    }

    sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, v10, a2, a3);
    v24[0] = 0uLL;
    result = a4(v24);
    v18 = v24[9];
    *(a5 + 128) = v24[8];
    *(a5 + 144) = v18;
    *(a5 + 160) = v24[10];
    *(a5 + 176) = v25;
    v19 = v24[5];
    *(a5 + 64) = v24[4];
    *(a5 + 80) = v19;
    v20 = v24[7];
    *(a5 + 96) = v24[6];
    *(a5 + 112) = v20;
    v21 = v24[1];
    *a5 = v24[0];
    *(a5 + 16) = v21;
    v22 = v24[3];
    *(a5 + 32) = v24[2];
    *(a5 + 48) = v22;
  }

  return result;
}

unint64_t sub_1B0DA9124(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1B0E466A8();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      result = sub_1B0441038(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1B0DA93BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
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

      sub_1B0D9F404(a1, v4, a3);
      v12 = v3;
      if (!v3)
      {
        sub_1B0DFE880(0x3AuLL, 0xE100000000000000, 0, 0, a1, v4, a3);
        sub_1B0D9F404(a1, v4, a3);

        return;
      }

      *a1 = v7;
      *(a1 + 8) = v8;
      *(a1 + 16) = v9;
      *(a1 + 20) = v10;
      *(a1 + 22) = v11;
    }

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

        return;
      }
    }

    if (v4 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v16 = a3;
      swift_willThrow();
    }

    else
    {

      sub_1B0DFE880(0x2DuLL, 0xE100000000000000, 0, 0, a1, v4, a3);
      sub_1B0D9F404(a1, v4, a3);
      sub_1B0DFE880(0x2D3AuLL, 0xE200000000000000, 0, 0, a1, v4, a3);
      sub_1B0D9F404(a1, v4, a3);
    }
  }
}

void sub_1B0DA97A0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11)
{
  v12 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v15 = a9;
    v16 = a11;
    if (v12 >= a3)
    {
      sub_1B0439BCC();
      v24 = swift_allocError();
      *v25 = a3;
    }

    else
    {
      v18 = a1[1];
      v32 = *(a1 + 10);
      v33 = *(a1 + 4);
      v31 = *(a1 + 22);
      v34 = *a1;

      a8(a1, v12, a3, a4, a5, a6, a7);
      v24 = v11;
      if (!v11)
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
        (*(*(v29 - 8) + 56))(a9, 0, 1, v29);
LABEL_15:

        return;
      }

      *a1 = v34;
      a1[1] = v18;
      *(a1 + 4) = v33;
      *(a1 + 10) = v32;
      *(a1 + 22) = v31;
      v15 = a9;
      v16 = a11;
    }

    swift_willThrow();
    v35 = v24;
    v26 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v35 = v24;
      v27 = v24;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }
    }

    if (v12 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v28 = a3;
      swift_willThrow();
      return;
    }

    sub_1B0DFE880(0x24uLL, 0xE100000000000000, 0, 0, a1, v12, a3);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, v16);
    (*(*(v30 - 8) + 56))(v15, 1, 1, v30);
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t *sub_1B0DA9AF8(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return result;
  }

  if (v10 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v21 = a3;
    return swift_willThrow();
  }

  v14 = result;
  v15 = *result;
  v16 = result[1];
  v27 = *(result + 10);
  v28 = *(result + 4);
  v26 = *(result + 22);

  v20 = a8(v14, v10, a3, a4, a5, a6, a7);
  if (v9)
  {

    *v14 = v15;
    *(v14 + 8) = v16;
    *(v14 + 16) = v28;
    *(v14 + 20) = v27;
    *(v14 + 22) = v26;
    return swift_willThrow();
  }

  v25 = v20;

  v22 = a9(v14, v10, a3, a4, a5, a6, a7);

  if (v25 >= v22)
  {
    LODWORD(v23) = v22;
  }

  else
  {
    LODWORD(v23) = v25;
  }

  if (v25 <= v22)
  {
    LODWORD(v24) = v22;
  }

  else
  {
    LODWORD(v24) = v25;
  }

  if ((v22 & 0x100000000) != 0)
  {
    v23 = v25;
  }

  else
  {
    v23 = v23;
  }

  if ((v22 & 0x100000000) != 0)
  {
    v24 = v25;
  }

  else
  {
    v24 = v24;
  }

  return (v23 | (v24 << 32));
}

uint64_t *sub_1B0DA9CA8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
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
      *v20 = a3;
    }

    else
    {
      v11 = result;
      v12 = *result;
      v13 = result[1];
      v14 = *(result + 4);
      v15 = *(result + 10);
      v16 = *(result + 22);
      if (a2 + 2 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v21 = a3;
      }

      else
      {

        sub_1B0DF9D90(v11, &v32);
        if (!v8)
        {
          sub_1B0DFF2E8(v32, v33, v34 | (WORD2(v34) << 32) | (BYTE6(v34) << 48), 0xD000000000000020, 0x80000001B0F2FA10, 2610);
          v24 = v17;
          v19 = v18;

          sub_1B0436204(v11);

          sub_1B0441D28(v11, v9 + 1, a3, a4, a5, a6, a7, sub_1B0E31030, &v32, 130);

          v23 = v32;
          v22 = v33;
          v29 = v34;
          v31 = v35;
          sub_1B0448078(v11, v9, a3);

          *a8 = v24;
          *(a8 + 8) = v19;
          *(a8 + 16) = v23;
          *(a8 + 24) = v22;
          *(a8 + 32) = v29;
          *(a8 + 40) = v31;
          return result;
        }
      }

      swift_willThrow();

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v15;
      *(v11 + 22) = v16;
    }

    return swift_willThrow();
  }

  return result;
}

void sub_1B0DA9F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v30 - v16;
  v18 = __OFADD__(a2, 1);
  v19 = a2 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    if (v19 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v23 = a3;
LABEL_9:
      swift_willThrow();
      return;
    }

    v31 = a6;
    v32 = a7;
    v20 = *a1;
    v21 = *(a1 + 8);
    v22 = *(a1 + 16);
    v34 = *(a1 + 20);
    v35 = v22;
    v33 = *(a1 + 22);
    v36 = v20;
    if (v19 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v24 = a3;
      goto LABEL_8;
    }

    sub_1B0436204(a1);
    if (v7)
    {

LABEL_8:
      swift_willThrow();
      *a1 = v36;
      *(a1 + 8) = v21;
      v25 = v34;
      *(a1 + 16) = v35;
      *(a1 + 20) = v25;
      *(a1 + 22) = v33;
      goto LABEL_9;
    }

    v26 = sub_1B0DB39E8(a1, v19, a3);
    sub_1B0436204(a1);

    sub_1B0DB2F1C(a1, v19 + 1, a3, a4, a5, v31, v32, v17);

    v27 = type metadata accessor for ResponseCodeAppend(0);
    swift_allocBox();
    v29 = v28;
    sub_1B03C60A4(v17, v28 + *(v27 + 20), &unk_1EB6E26C0, &unk_1B0E9DE10);
    *v29 = v26;
  }
}

uint64_t *sub_1B0DAA234(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
      *v17 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = result[1];
    v13 = *(result + 4);
    v14 = *(result + 10);
    v15 = a2 + 2;
    v16 = *(result + 22);
    if (a2 + 2 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v18 = a3;
      goto LABEL_8;
    }

    sub_1B0436204(v10);
    if (v7)
    {

LABEL_8:
      swift_willThrow();
      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v14;
      *(v10 + 22) = v16;
      return swift_willThrow();
    }

    v22 = sub_1B0DB39E8(v10, v8, a3);
    sub_1B0436204(v10);

    sub_1B0DB363C(v10, v15, a3, a4, a5, a6, a7, &v27);

    v21 = v27;
    sub_1B0436204(v10);

    sub_1B0DB363C(v10, v15, a3, a4, a5, a6, a7, &v27);

    v19 = v27;
    v20 = swift_allocObject();
    *(v20 + 16) = v22;
    *(v20 + 24) = v21;
    *(v20 + 32) = v19;
    return (v20 | 0x4000000000000000);
  }

  return result;
}

uint64_t *sub_1B0DAA4C4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
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
      *v18 = a3;
    }

    else
    {
      v12 = result;
      v16 = *result;
      v17 = result[1];
      v21 = *(result + 10);
      v22 = *(result + 4);
      v20 = *(result + 22);

      sub_1B0DFE880(0x494C494241504143uLL, 0xEA00000000005954, 0, 0, v12, v9, a3);
      if (!v8)
      {
        v23 = MEMORY[0x1E69E7CC0];

        sub_1B0E06504(v12, &v23, v9, a3, a4, a5, a6, a7);

        *a8 = v23;
        type metadata accessor for ResponsePayload(0);
        return swift_storeEnumTagMultiPayload();
      }

      *v12 = v16;
      *(v12 + 8) = v17;
      *(v12 + 16) = v22;
      *(v12 + 20) = v21;
      *(v12 + 22) = v20;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t *sub_1B0DAA68C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t **a5@<X8>)
{
  result = sub_1B044262C(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    type metadata accessor for ResponsePayload(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t *sub_1B0DAA6D8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v21 = a3;
    }

    else
    {
      v15 = result;
      v16 = *result;
      v17 = result[1];
      v30 = *(result + 10);
      v31 = *(result + 4);
      v29 = *(result + 22);

      sub_1B0DFE880(0x2041544F5551uLL, 0xE600000000000000, 0, 0, v15, v9, a3);
      if (!v8)
      {
        v18 = sub_1B0DB3AC0(v15, v9, a3, a4, a5, a6, a7);
        v27 = v18;
        v22 = v9 + 1;
        if (v22 < a3)
        {
          v26 = v20;
          v25 = v19;
          sub_1B0436204(v15);

          sub_1B0DACE0C(v15, v22, a3, a4, &v32);

          v24 = v32;
          *a8 = v27;
          *(a8 + 8) = v25;
          *(a8 + 16) = v26;
          *(a8 + 20) = WORD2(v26);
          *(a8 + 22) = BYTE6(v26);
          *(a8 + 24) = v24;
          type metadata accessor for ResponsePayload(0);
          return swift_storeEnumTagMultiPayload();
        }

        sub_1B0439BCC();
        swift_allocError();
        *v23 = a3;
        swift_willThrow();
      }

      *v15 = v16;
      *(v15 + 8) = v17;
      *(v15 + 16) = v31;
      *(v15 + 20) = v30;
      *(v15 + 22) = v29;
    }

    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t *sub_1B0DAA950@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
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
      v15 = result;
      v16 = *result;
      v17 = result[1];
      v43 = *(result + 10);
      v44 = *(result + 4);
      v42 = *(result + 22);

      sub_1B0DFE880(0x4F4F5241544F5551uLL, 0xEA00000000002054, 0, 0, v15, v9, a3);
      if (v8)
      {
      }

      else
      {
        v18 = sub_1B0DB3AC0(v15, v9, a3, a4, a5, a6, a7);
        v37 = HIDWORD(v20);
        v40 = v18;
        v32 = v21;
        v34 = v20;
        swift_beginAccess();
        v22 = v37 - v34;
        if (v37 == v34)
        {
          v23 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v38 = v40[3];
          v35 = ((v32 >> 24) & 0xFFFF00 | BYTE6(v32)) + v34;
          __n = v22;
          v33 = sub_1B0C0C9F0(v22, 0);
          memcpy(v33 + 32, (v38 + v35), __n);
          v23 = v33;
        }

        v39 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v23);
        v36 = v24;

        if (v9 + 1 < a3)
        {

          sub_1B0436204(v15);

          v26 = sub_1B0DB3AC0(v15, v9, a3, a4, a5, a6, a7);
          v28 = v27;
          v30 = v29;

          *a8 = v39;
          *(a8 + 8) = v36;
          *(a8 + 16) = v26;
          *(a8 + 24) = v28;
          *(a8 + 32) = v30;
          *(a8 + 36) = WORD2(v30);
          *(a8 + 38) = BYTE6(v30);
          type metadata accessor for ResponsePayload(0);
          return swift_storeEnumTagMultiPayload();
        }

        sub_1B0439BCC();
        swift_allocError();
        *v25 = a3;
        swift_willThrow();
      }

      *v15 = v16;
      *(v15 + 8) = v17;
      *(v15 + 16) = v44;
      *(v15 + 20) = v43;
      *(v15 + 22) = v42;
    }

    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DAAC84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = __OFADD__(a2, 1);
  v10 = a2 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    if (v10 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v12 = result;
    v14 = *result;
    v15 = *(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 20);
    v18 = *(result + 22);
    sub_1B0436204(result);
    if (v7)
    {
      *v12 = v14;
      *(v12 + 8) = v15;
      *(v12 + 16) = v16;
      *(v12 + 20) = v17;
      *(v12 + 22) = v18;
      return swift_willThrow();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7440, &unk_1B0EF3200);
    v20 = swift_allocBox();
    sub_1B0DA97A0(v12, a2, a3, a4, a5, a6, a7, sub_1B0DAD7D8, v21, &qword_1EB6E7430, &qword_1B0EFBC90);
    return v20 | 0x5000000000000000;
  }

  return result;
}

uint64_t sub_1B0DAADF0(uint64_t result, uint64_t a2, uint64_t a3)
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
      *v14 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_1B0436204(result);
    if (v3)
    {
      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B0DB2720(v8, a2, a3);
    return v15 | 0x5000000000000004;
  }

  return result;
}

uint64_t sub_1B0DAAF14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = __OFADD__(a2, 1);
  v10 = a2 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    if (v10 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v12 = result;
    v14 = *result;
    v15 = *(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 20);
    v18 = *(result + 22);
    sub_1B0436204(result);
    if (v7)
    {
      *v12 = v14;
      *(v12 + 8) = v15;
      *(v12 + 16) = v16;
      *(v12 + 20) = v17;
      *(v12 + 22) = v18;
      return swift_willThrow();
    }

    v20 = swift_allocObject();
    sub_1B0DB5F1C(v12, a2, a3, a4, a5, a6, a7, v32);
    v21 = v32[13];
    *(v20 + 208) = v32[12];
    *(v20 + 224) = v21;
    v22 = v32[15];
    *(v20 + 240) = v32[14];
    *(v20 + 256) = v22;
    v23 = v32[9];
    *(v20 + 144) = v32[8];
    *(v20 + 160) = v23;
    v24 = v32[11];
    *(v20 + 176) = v32[10];
    *(v20 + 192) = v24;
    v25 = v32[5];
    *(v20 + 80) = v32[4];
    *(v20 + 96) = v25;
    v26 = v32[7];
    *(v20 + 112) = v32[6];
    *(v20 + 128) = v26;
    v27 = v32[1];
    *(v20 + 16) = v32[0];
    *(v20 + 32) = v27;
    v28 = v32[3];
    result = v20 | 0x7000000000000004;
    *(v20 + 48) = v32[2];
    *(v20 + 64) = v28;
  }

  return result;
}

uint64_t sub_1B0DAB0C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  v15 = sub_1B0E00F90(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    v17 = v15;

    goto LABEL_5;
  }

  v16 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {

    v17 = MEMORY[0x1E69E7CC0];
LABEL_5:
    result = swift_allocObject();
    *(result + 16) = v17;
    return result;
  }
}

uint64_t sub_1B0DAB204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, char **a8@<X8>)
{
  v11 = a2;
  v12 = a1;
  result = sub_1B0DFE880(0x2820uLL, 0xE200000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v54 = a8;
    v15 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E37F8, &qword_1B0EA2E00);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B0EC1E70;
    result = sub_1B0DB60AC(v12, v11, a3, v15);
    v52 = v15;
    *(v16 + 32) = result;
    *(v16 + 40) = v17;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
    }

    else
    {
      v18 = v16;
      v19 = a3;
      if (v11 + 1 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v34 = a3;
      }

      else
      {
        v20 = *(v12 + 8);
        v42 = *(v12 + 20);
        v43 = *(v12 + 16);
        v41 = *(v12 + 22);
        v44 = *v12;

        v50 = v11 + 2;
        v51 = v12;
        if (v11 + 2 >= a3)
        {
          sub_1B0439BCC();
          v35 = swift_allocError();
          *v36 = a3;
          v37 = v44;
        }

        else
        {
          v21 = v11 + 3;
          v22 = *v12;
          v23 = *(v12 + 8);
          v48 = *(v12 + 20);
          v49 = *(v12 + 16);
          v47 = *(v12 + 22);
          if (v11 + 3 < v19)
          {
            v24 = v18;
            v45 = v18;
            v46 = v11;
            do
            {
              v53 = v24;
              swift_retain_n();
              sub_1B0436204(v12);

              v25 = v12;
              v26 = v19;
              v27 = sub_1B0DB60AC(v25, v50, v19, v52);
              v29 = v28;

              v24 = v53;
              v31 = *(v53 + 2);
              v30 = *(v53 + 3);
              if (v31 >= v30 >> 1)
              {
                v24 = sub_1B0AFF0E8((v30 > 1), v31 + 1, 1, v53);
              }

              *(v24 + 2) = v31 + 1;
              v32 = &v24[16 * v31];
              *(v32 + 4) = v27;
              *(v32 + 5) = v29;
              v22 = *v51;
              v23 = *(v51 + 8);
              v48 = *(v51 + 20);
              v49 = *(v51 + 16);
              v47 = *(v51 + 22);
              v19 = v26;
              v33 = v21 < v26;
              v18 = v45;
              v11 = v46;
              v12 = v51;
            }

            while (v33);
          }

          sub_1B0439BCC();
          v38 = swift_allocError();
          *v39 = v19;

          swift_willThrow();
          v37 = v44;

          *v12 = v22;
          *(v12 + 8) = v23;
          *(v12 + 16) = v49;
          *(v12 + 20) = v48;
          *(v12 + 22) = v47;
          v35 = v38;
        }

        swift_willThrow();
        v40 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
        if (swift_dynamicCast())
        {

          result = sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v51, v11, v19);
          *v54 = v18;
          return result;
        }

        *v51 = v37;
        *(v51 + 8) = v20;
        *(v51 + 16) = v43;
        *(v51 + 20) = v42;
        *(v51 + 22) = v41;
      }

      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B0DAB6A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = __OFADD__(a2, 1);
  v10 = a2 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    if (v10 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v12 = result;
    v14 = *result;
    v15 = *(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 20);
    v18 = *(result + 22);
    sub_1B0436204(result);
    if (v7)
    {
      *v12 = v14;
      *(v12 + 8) = v15;
      *(v12 + 16) = v16;
      *(v12 + 20) = v17;
      *(v12 + 22) = v18;
      return swift_willThrow();
    }

    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, v12, a2, a3);

    sub_1B0E035A4(v12, a2, a3, a4, a5, a6, a7);
    v21 = v20;

    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v12, a2, a3);
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E7CC0];
    if (v21)
    {
      v23 = v21;
    }

    *(v22 + 16) = v23;
    return v22 | 0x1000000000000000;
  }

  return result;
}

void sub_1B0DAB85C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D98, &unk_1B0EF9F00);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B0EC1E70;
  sub_1B0DB6448(a1, a2, a3, a4, a5, a6, a7);
  if (v8)
  {
    *(v16 + 16) = 0;

    return;
  }

  v56 = a1;
  v19 = a8;
  v54 = a4;
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
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
      *v36 = a3;
    }

    else
    {
      v20 = v56[1];
      v45 = *(v56 + 10);
      v46 = *(v56 + 4);
      v44 = *(v56 + 22);
      v47 = *v56;

      v53 = a2 + 2;
      if (a2 + 2 >= a3)
      {
        sub_1B0439BCC();
        v37 = swift_allocError();
        *v38 = a3;
        v39 = v47;
        v40 = v46;
      }

      else
      {
        v49 = a5;
        v21 = a2 + 3;
        v22 = *v56;
        v23 = v56[1];
        v51 = *(v56 + 10);
        v52 = *(v56 + 4);
        v50 = *(v56 + 22);
        if (a2 + 3 < a3)
        {
          v24 = v56;
          v25 = v16;
          v48 = a7;
          do
          {
            v55 = v25;
            swift_retain_n();
            sub_1B0436204(v24);

            v26 = v16;
            v27 = a3;
            v28 = a6;
            sub_1B0DB6448(v24, v53, a3, v54, v49, a6, a7);
            v30 = v29;
            v32 = v31;

            v25 = v55;
            v34 = *(v55 + 2);
            v33 = *(v55 + 3);
            if (v34 >= v33 >> 1)
            {
              v25 = sub_1B0DF5D00((v33 > 1), v34 + 1, 1, v55);
            }

            *(v25 + 2) = v34 + 1;
            v35 = &v25[16 * v34];
            *(v35 + 4) = v30;
            *(v35 + 5) = v32;
            v24 = v56;
            v22 = *v56;
            v23 = v56[1];
            v51 = *(v56 + 10);
            v52 = *(v56 + 4);
            v50 = *(v56 + 22);
            a3 = v27;
            a7 = v48;
            a6 = v28;
            v16 = v26;
          }

          while (v21 < v27);
        }

        v41 = v22;
        sub_1B0439BCC();
        v37 = swift_allocError();
        *v42 = a3;

        swift_willThrow();
        v39 = v47;

        *v56 = v41;
        v56[1] = v23;
        *(v56 + 4) = v52;
        *(v56 + 10) = v51;
        *(v56 + 22) = v50;
        v40 = v46;
        v19 = a8;
      }

      swift_willThrow();
      v43 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {

        *v19 = v16;
        return;
      }

      *v56 = v39;
      v56[1] = v20;
      *(v56 + 4) = v40;
      *(v56 + 10) = v45;
      *(v56 + 22) = v44;
    }

    swift_willThrow();
  }
}

uint64_t sub_1B0DABC94(uint64_t result, uint64_t a2, uint64_t a3)
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
      *v14 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_1B0436204(result);
    if (v3)
    {
      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B0D9EA70(v8, a2, a3);
    return v15 | 0x1000000000000004;
  }

  return result;
}

uint64_t sub_1B0DABDB8(uint64_t result, uint64_t a2, uint64_t a3)
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
      *v14 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_1B0436204(result);
    if (v3)
    {
      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B0DB39E8(v8, a2, a3);
    return v15 | 0x2000000000000000;
  }

  return result;
}

uint64_t sub_1B0DABED4(uint64_t result, uint64_t a2, uint64_t a3)
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
      *v14 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_1B0436204(result);
    if (v3)
    {
      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B0D9F404(v8, a2, a3);
    return v15 | 0x2000000000000004;
  }

  return result;
}

uint64_t sub_1B0DABFF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = __OFADD__(a2, 1);
  v10 = a2 + 1;
  if (!v9)
  {
    v11 = a3;
    if (v10 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v20 = v11;
    }

    else
    {
      v12 = result;
      v29 = a2;
      v15 = *result;
      v16 = *(result + 8);
      v17 = *(result + 16);
      v18 = *(result + 20);
      v19 = *(result + 22);
      sub_1B0436204(result);
      if (!v7)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E75E0, &qword_1B0EF5008);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B0EC4E20;
        v22 = swift_allocObject();
        v23 = a4;
        v22[2] = a4;
        v22[3] = a5;
        v22[4] = a6;
        v22[5] = a7;
        v24 = swift_allocObject();
        *(v24 + 16) = sub_1B0DAF9B8;
        *(v24 + 24) = v22;
        *(inited + 32) = sub_1B0DAFD90;
        *(inited + 40) = v24;
        v25 = swift_allocObject();
        v25[2] = v23;
        v25[3] = a5;
        v25[4] = a6;
        v25[5] = a7;
        v26 = swift_allocObject();
        *(v26 + 16) = sub_1B0DAF9D8;
        *(v26 + 24) = v25;
        *(inited + 48) = sub_1B0DAFD90;
        *(inited + 56) = v26;
        *(inited + 64) = sub_1B0DAC69C;
        *(inited + 72) = 0;
        *(inited + 80) = sub_1B0DAC6F4;
        *(inited + 88) = 0;
        swift_retain_n();
        sub_1B0440090(inited, v12, v29, v11, 0xD000000000000020, 0x80000001B0F2FA10, 334);
        v11 = v27;
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
        swift_arrayDestroy();
        return v11;
      }

      *v12 = v15;
      *(v12 + 8) = v16;
      *(v12 + 16) = v17;
      *(v12 + 20) = v18;
      *(v12 + 22) = v19;
    }

    swift_willThrow();
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DAC28C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0DFE880(0x52544E45474E4F4CuLL, 0xEC00000020534549, 0, 0, a1, a2, a3);
  if (!v3)
  {
    v8 = sub_1B0DFF3DC(a1, a2, a3, 1);
    if ((v8 & 0x8000000000000000) != 0)
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
      v9 = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      return v10 | 0x6000000000000000;
    }
  }

  return result;
}

uint64_t sub_1B0DAC3AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0DFE880(0x20455A495358414DuLL, 0xE800000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    v8 = sub_1B0DFF3DC(a1, a2, a3, 1);
    if ((v8 & 0x8000000000000000) != 0)
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
      v9 = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      return v10 | 0x6000000000000004;
    }
  }

  return result;
}

uint64_t sub_1B0DAC69C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_1B0DFE880(0x594E414D4F4F54uLL, 0xE700000000000000, 0, 0, a1, *a2, a2[1]);
  if (!v3)
  {
    *a3 = 0x800000000000005CLL;
  }

  return result;
}

uint64_t sub_1B0DAC6F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_1B0DFE880(0x5441564952504F4EuLL, 0xE900000000000045, 0, 0, a1, *a2, a2[1]);
  if (!v3)
  {
    *a3 = 0x8000000000000064;
  }

  return result;
}

uint64_t sub_1B0DAC750(uint64_t result, uint64_t a2, uint64_t a3)
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
      *v14 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_1B0436204(result);
    if (v3)
    {
      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    sub_1B0DFE880(0x4C414E5245544E49uLL, 0xE800000000000000, 0, 0, v8, a2, a3);
    v17 = MEMORY[0x1E69E7CC0];
    sub_1B0E04FB8(v8, &v17, a2, a3);
    v15 = v17;
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    return v16 | 0x7000000000000000;
  }

  return result;
}

uint64_t sub_1B0DAC8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v8 = sub_1B043E71C(a1, a2, a3);
  if (v3)
  {
    return swift_deallocUninitializedObject();
  }

  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  result = v7 | 0x3000000000000000;
  *(v7 + 32) = v10;
  return result;
}

unint64_t sub_1B0DAC970(unint64_t result, uint64_t a2, uint64_t a3)
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
      *v14 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_1B0436204(result);
    if (v3)
    {
      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, v8, a2, a3);
    v15 = sub_1B0DC1D1C(v8, a2, a3);
    v17 = v16;
    v18 = v15;
    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v8, a2, a3);
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v17;
    return v19 | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1B0DACAE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v16 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v25 = a2;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = *(result + 22);
    sub_1B0441264(result, v26);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    sub_1B0DFF2E8(v26[0], v26[1], v27 | (v28 << 32) | (v29 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 115);
    v17 = a4();
    v19 = v18;

    sub_1B0DF8A78(v9, v25, a3);
    v21 = v20;
    v23 = v22;
    v24 = swift_allocObject();
    *(v24 + 16) = v17;
    *(v24 + 24) = v19;
    *(v24 + 32) = v21;
    *(v24 + 40) = v23;
    return v24 | 0x4000000000000004;
  }

  return result;
}

uint64_t sub_1B0DACC9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
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
      swift_allocError();
      *v13 = a3;
    }

    else
    {
      v6 = result;
      v8 = *result;
      v9 = *(result + 8);
      v10 = *(result + 16);
      v11 = *(result + 20);
      v12 = *(result + 22);
      sub_1B0436204(result);
      if (!v4)
      {
        sub_1B0DFA8F8(v6, v18);
        sub_1B0DFF2E8(v18[0], v18[1], v19 | (v20 << 32) | (v21 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 379);
        v15 = v14;
        v17 = v16;

        *a4 = v15;
        a4[1] = v17;
        return result;
      }

      *v6 = v8;
      *(v6 + 8) = v9;
      *(v6 + 16) = v10;
      *(v6 + 20) = v11;
      *(v6 + 22) = v12;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0DACE0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v8 = a3;
  v10 = a1;
  result = sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v6)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v36 = a4;
      v34 = a2;
      v35 = a6;
      v39 = a2 + 1;
      v13 = MEMORY[0x1E69E7CC0];
      v37 = v10;
      v38 = v8;
      while (1)
      {
        if (v39 >= v8)
        {
          sub_1B0439BCC();
          v29 = swift_allocError();
          *v30 = v8;
          v13 = MEMORY[0x1E69E7CC0];
          goto LABEL_13;
        }

        v14 = sub_1B0DAFA18(v10, v39, v8, v36);
        v16 = v15;
        v18 = v17;
        v20 = v19;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1B0DF5E28(0, *(v13 + 2) + 1, 1, v13);
        }

        v22 = *(v13 + 2);
        v21 = *(v13 + 3);
        if (v22 >= v21 >> 1)
        {
          v13 = sub_1B0DF5E28((v21 > 1), v22 + 1, 1, v13);
        }

        *(v13 + 2) = v22 + 1;
        v23 = &v13[32 * v22];
        *(v23 + 4) = v14;
        *(v23 + 5) = v20;
        *(v23 + 6) = v16;
        *(v23 + 7) = v18;
        v10 = v37;
        v8 = v38;
        v24 = *v37;
        v25 = v37[1];
        v26 = *(v37 + 4);
        v27 = *(v37 + 10);
        v28 = *(v37 + 22);
        if (a2 + 2 >= v38)
        {
          break;
        }

        sub_1B0436204(v37);
      }

      sub_1B0439BCC();
      v31 = swift_allocError();
      *v32 = v38;
      v29 = v31;
      swift_willThrow();
      *v37 = v24;
      v37[1] = v25;
      *(v37 + 4) = v26;
      *(v37 + 10) = v27;
      *(v37 + 22) = v28;
LABEL_13:
      swift_willThrow();
      v33 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {

        result = sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v10, v34, v8);
        *v35 = v13;
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1B0DAD134@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v63 = a6;
  v64 = a7;
  v59 = a8;
  v66 = *MEMORY[0x1E69E9840];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v54 = &v48[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4038, &qword_1B0EC2B08);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v55 = &v48[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4030, &qword_1B0EC2B00);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v53 = &v48[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48[-v19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E75F8, &unk_1B0EF5020);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC1E70;
  v56 = a2;
  v22 = v62;
  v23 = sub_1B0DAE728(a1, a2, a3, a4, a5, v63, v64);
  if (v22)
  {
    *(inited + 16) = 0;
  }

  v60 = a4;
  v61 = a5;
  v62 = a3;
  v52 = v20;
  v25 = v58;
  v26 = v59;
  v27 = v57;
  *(inited + 32) = v23;
  if (__OFADD__(v56, 1))
  {
    __break(1u);
  }

  v28 = v62;
  if (v56 + 1 >= v62)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v36 = v28;
LABEL_14:
    swift_willThrow();
  }

  v29 = *a1;
  v30 = a1[1];
  v51 = *(a1 + 4);
  v50 = *(a1 + 10);
  v31 = v56 + 2;
  v49 = *(a1 + 22);
  v56 = v29;

  if (v31 < v28)
  {
    while (1)
    {
      v32 = v64;

      v33 = sub_1B0DAECE8(a1, v31, v28, v60, v61, v63, v32);

      v35 = *(inited + 16);
      v34 = *(inited + 24);
      if (v35 >= v34 >> 1)
      {
        inited = sub_1B0DF57BC((v34 > 1), v35 + 1, 1, inited);
      }

      *(inited + 16) = v35 + 1;
      *(inited + 8 * v35 + 32) = v33;
      v28 = v62;
    }
  }

  sub_1B0439BCC();
  v37 = swift_allocError();
  *v38 = v28;
  v39 = v26;
  v40 = v52;
  v41 = v55;
  swift_willThrow();
  v65 = v37;
  v42 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  v43 = swift_dynamicCast();
  v44 = v54;
  if (!v43)
  {

    *a1 = v56;
    a1[1] = v30;
    *(a1 + 4) = v51;
    *(a1 + 10) = v50;
    *(a1 + 22) = v49;
    goto LABEL_14;
  }

  sub_1B0DAF2FC(inited);
  v45 = v53;
  sub_1B03B5C80(v40, v53, &qword_1EB6E4030, &qword_1B0EC2B00);
  if (sub_1B0D73474() <= 0)
  {
    sub_1B0398EFC(v45, &qword_1EB6E4030, &qword_1B0EC2B00);
    v46 = 1;
  }

  else
  {
    sub_1B03C60A4(v45, v44, &qword_1EB6E4030, &qword_1B0EC2B00);
    sub_1B03C60A4(v44, v41, &qword_1EB6E4040, &qword_1B0EC2B10);
    v46 = 0;
  }

  (*(v27 + 56))(v41, v46, 1, v25);
  if ((*(v27 + 48))(v41, 1, v25) == 1)
  {
    sub_1B0398EFC(v41, &qword_1EB6E4038, &qword_1B0EC2B08);
    sub_1B0436554();
    swift_allocError();
    *v47 = 0xD000000000000016;
    v47[1] = 0x80000001B0F300D0;
    v47[2] = 0xD000000000000020;
    v47[3] = 0x80000001B0F2FA10;
    v47[4] = 125;
    swift_willThrow();
    return sub_1B0398EFC(v40, &qword_1EB6E4030, &qword_1B0EC2B00);
  }

  else
  {
    sub_1B0398EFC(v40, &qword_1EB6E4030, &qword_1B0EC2B00);
    return sub_1B03C60A4(v41, v39, &qword_1EB6E4040, &qword_1B0EC2B10);
  }
}

uint64_t sub_1B0DAD7D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v63 = a6;
  v64 = a7;
  v59 = a8;
  v66 = *MEMORY[0x1E69E9840];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7430, &qword_1B0EFBC90);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v54 = &v48[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E75E8, &qword_1B0EF5010);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v55 = &v48[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7438, &qword_1B0EFBF30);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v53 = &v48[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48[-v19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E75F0, &qword_1B0EF5018);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC1E70;
  v56 = a2;
  v22 = v62;
  v23 = sub_1B0DAEA08(a1, a2, a3, a4, a5, v63, v64);
  if (v22)
  {
    *(inited + 16) = 0;
  }

  v60 = a4;
  v61 = a5;
  v62 = a3;
  v52 = v20;
  v25 = v58;
  v26 = v59;
  v27 = v57;
  *(inited + 32) = v23;
  if (__OFADD__(v56, 1))
  {
    __break(1u);
  }

  v28 = v62;
  if (v56 + 1 >= v62)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v36 = v28;
LABEL_14:
    swift_willThrow();
  }

  v29 = *a1;
  v30 = a1[1];
  v51 = *(a1 + 4);
  v50 = *(a1 + 10);
  v31 = v56 + 2;
  v49 = *(a1 + 22);
  v56 = v29;

  if (v31 < v28)
  {
    while (1)
    {
      v32 = v64;

      v33 = sub_1B0DAEFF0(a1, v31, v28, v60, v61, v63, v32);

      v35 = *(inited + 16);
      v34 = *(inited + 24);
      if (v35 >= v34 >> 1)
      {
        inited = sub_1B0DF5CEC((v34 > 1), v35 + 1, 1, inited);
      }

      *(inited + 16) = v35 + 1;
      *(inited + 8 * v35 + 32) = v33;
      v28 = v62;
    }
  }

  sub_1B0439BCC();
  v37 = swift_allocError();
  *v38 = v28;
  v39 = v26;
  v40 = v52;
  v41 = v55;
  swift_willThrow();
  v65 = v37;
  v42 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  v43 = swift_dynamicCast();
  v44 = v54;
  if (!v43)
  {

    *a1 = v56;
    a1[1] = v30;
    *(a1 + 4) = v51;
    *(a1 + 10) = v50;
    *(a1 + 22) = v49;
    goto LABEL_14;
  }

  sub_1B0DAF2FC(inited);
  v45 = v53;
  sub_1B03B5C80(v40, v53, &qword_1EB6E7438, &qword_1B0EFBF30);
  if (sub_1B0D73474() <= 0)
  {
    sub_1B0398EFC(v45, &qword_1EB6E7438, &qword_1B0EFBF30);
    v46 = 1;
  }

  else
  {
    sub_1B03C60A4(v45, v44, &qword_1EB6E7438, &qword_1B0EFBF30);
    sub_1B03C60A4(v44, v41, &qword_1EB6E7430, &qword_1B0EFBC90);
    v46 = 0;
  }

  (*(v27 + 56))(v41, v46, 1, v25);
  if ((*(v27 + 48))(v41, 1, v25) == 1)
  {
    sub_1B0398EFC(v41, &qword_1EB6E75E8, &qword_1B0EF5010);
    sub_1B0436554();
    swift_allocError();
    *v47 = 0xD000000000000016;
    v47[1] = 0x80000001B0F300D0;
    v47[2] = 0xD000000000000020;
    v47[3] = 0x80000001B0F2FA10;
    v47[4] = 125;
    swift_willThrow();
    return sub_1B0398EFC(v40, &qword_1EB6E7438, &qword_1B0EFBF30);
  }

  else
  {
    sub_1B0398EFC(v40, &qword_1EB6E7438, &qword_1B0EFBF30);
    return sub_1B03C60A4(v41, v39, &qword_1EB6E7430, &qword_1B0EFBC90);
  }
}

uint64_t sub_1B0DADE7C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  result = swift_allocObject();
  *(result + 16) = a4;
  *(result + 24) = a5;
  *(result + 32) = a6;
  *(result + 40) = a7;
  v17 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v17 >= a3)
    {
      sub_1B0439BCC();
      v8 = swift_allocError();
      *v22 = a3;

LABEL_6:
      swift_willThrow();
      v28 = v8;
      v23 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v28 = v8;
        v24 = v8;
        if ((swift_dynamicCast() & 1) == 0)
        {
        }
      }

      if (v17 < a3)
      {

        sub_1B0DAF950(a1, v17, a3, &v27);

        return v27;
      }

      sub_1B0439BCC();
      swift_allocError();
      *v25 = a3;
      swift_willThrow();
    }

    v18 = *a1;
    v19 = a1[1];
    v20 = *(a1 + 4);
    v21 = *(a1 + 10);
    v26 = *(a1 + 22);

    sub_1B0DFE880(0x2AuLL, 0xE100000000000000, 0, 0, a1, v17, a3);
    if (v7)
    {

      *a1 = v18;
      a1[1] = v19;
      *(a1 + 4) = v20;
      *(a1 + 10) = v21;
      *(a1 + 22) = v26;
      goto LABEL_6;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1B0DAE160(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  result = swift_allocObject();
  *(result + 16) = a4;
  *(result + 24) = a5;
  *(result + 32) = a6;
  *(result + 40) = a7;
  v17 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v17 >= a3)
    {
      sub_1B0439BCC();
      v8 = swift_allocError();
      *v22 = a3;

LABEL_6:
      swift_willThrow();
      v28 = v8;
      v23 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v28 = v8;
        v24 = v8;
        if ((swift_dynamicCast() & 1) == 0)
        {
        }
      }

      if (v17 < a3)
      {

        sub_1B0DAF950(a1, v17, a3, &v27);

        return v27;
      }

      sub_1B0439BCC();
      swift_allocError();
      *v25 = a3;
      swift_willThrow();
    }

    v18 = *a1;
    v19 = a1[1];
    v20 = *(a1 + 4);
    v21 = *(a1 + 10);
    v26 = *(a1 + 22);

    sub_1B0DFE880(0x2AuLL, 0xE100000000000000, 0, 0, a1, v17, a3);
    if (v7)
    {

      *a1 = v18;
      a1[1] = v19;
      *(a1 + 4) = v20;
      *(a1 + 10) = v21;
      *(a1 + 22) = v26;
      goto LABEL_6;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1B0DAE444(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  result = swift_allocObject();
  *(result + 16) = a4;
  *(result + 24) = a5;
  *(result + 32) = a6;
  *(result + 40) = a7;
  v17 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v17 >= a3)
    {
      sub_1B0439BCC();
      v8 = swift_allocError();
      *v22 = a3;

LABEL_6:
      swift_willThrow();
      v28 = v8;
      v23 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v28 = v8;
        v24 = v8;
        if ((swift_dynamicCast() & 1) == 0)
        {
        }
      }

      if (v17 < a3)
      {

        sub_1B0DAF9F8(a1, v17, a3, &v27);

        return v27;
      }

      sub_1B0439BCC();
      swift_allocError();
      *v25 = a3;
      swift_willThrow();
    }

    v18 = *a1;
    v19 = a1[1];
    v20 = *(a1 + 4);
    v21 = *(a1 + 10);
    v26 = *(a1 + 22);

    sub_1B0DFE880(0x2AuLL, 0xE100000000000000, 0, 0, a1, v17, a3);
    if (v7)
    {

      *a1 = v18;
      a1[1] = v19;
      *(a1 + 4) = v20;
      *(a1 + 10) = v21;
      *(a1 + 22) = v26;
      goto LABEL_6;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void *sub_1B0DAE728(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  result = swift_allocObject();
  result[2] = a4;
  result[3] = a5;
  result[4] = a6;
  result[5] = a7;
  v17 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v17 >= a3)
    {
      sub_1B0439BCC();
      v8 = swift_allocError();
      *v22 = a3;
    }

    else
    {
      v18 = *a1;
      v19 = a1[1];
      v20 = *(a1 + 4);
      v21 = *(a1 + 10);
      v28 = *(a1 + 22);

      sub_1B0DAFDC0(a1, v17, a3, &v29);
      if (!v7)
      {

        LODWORD(v26) = v29;
        v27 = HIDWORD(v29);
        return (v26 | (v27 << 32));
      }

      *a1 = v18;
      a1[1] = v19;
      *(a1 + 4) = v20;
      *(a1 + 10) = v21;
      *(a1 + 22) = v28;
    }

    swift_willThrow();
    v30 = v8;
    v23 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v30 = v8;
      v24 = v8;
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v17 < a3)
    {

      v26 = sub_1B0DAF4C4(a1, v17, a3);

      v27 = HIDWORD(v26);
      return (v26 | (v27 << 32));
    }

    sub_1B0439BCC();
    swift_allocError();
    *v25 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

void *sub_1B0DAEA08(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  result = swift_allocObject();
  result[2] = a4;
  result[3] = a5;
  result[4] = a6;
  result[5] = a7;
  v17 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v17 >= a3)
    {
      sub_1B0439BCC();
      v8 = swift_allocError();
      *v22 = a3;
    }

    else
    {
      v18 = *a1;
      v19 = a1[1];
      v20 = *(a1 + 4);
      v21 = *(a1 + 10);
      v28 = *(a1 + 22);

      sub_1B0DAFDA8(a1, v17, a3, &v29);
      if (!v7)
      {

        LODWORD(v26) = v29;
        v27 = HIDWORD(v29);
        return (v26 | (v27 << 32));
      }

      *a1 = v18;
      a1[1] = v19;
      *(a1 + 4) = v20;
      *(a1 + 10) = v21;
      *(a1 + 22) = v28;
    }

    swift_willThrow();
    v30 = v8;
    v23 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v30 = v8;
      v24 = v8;
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v17 < a3)
    {

      v26 = sub_1B0DAF4C4(a1, v17, a3);

      v27 = HIDWORD(v26);
      return (v26 | (v27 << 32));
    }

    sub_1B0439BCC();
    swift_allocError();
    *v25 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

void *sub_1B0DAECE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  result = sub_1B0DFE880(0x2CuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    result = swift_allocObject();
    result[2] = a4;
    result[3] = a5;
    result[4] = a6;
    result[5] = a7;
    v16 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 < v12)
    {

      sub_1B0DAFD50(a1, v16, v12, &v23);

      LODWORD(v12) = v23;
      v22 = HIDWORD(v23);
      return (v12 | (v22 << 32));
    }

    sub_1B0439BCC();
    v17 = swift_allocError();
    *v18 = v12;

    swift_willThrow();
    v24 = v17;
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v24 = v17;
      v20 = v17;
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v16 < v12)
    {

      v12 = sub_1B0DAF4C4(a1, v16, v12);

      v22 = HIDWORD(v12);
      return (v12 | (v22 << 32));
    }

    sub_1B0439BCC();
    swift_allocError();
    *v21 = v12;
    swift_willThrow();
  }

  return result;
}

void *sub_1B0DAEFF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  result = sub_1B0DFE880(0x2CuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    result = swift_allocObject();
    result[2] = a4;
    result[3] = a5;
    result[4] = a6;
    result[5] = a7;
    v16 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 < v12)
    {

      sub_1B0DAF910(a1, v16, v12, &v23);

      LODWORD(v12) = v23;
      v22 = HIDWORD(v23);
      return (v12 | (v22 << 32));
    }

    sub_1B0439BCC();
    v17 = swift_allocError();
    *v18 = v12;

    swift_willThrow();
    v24 = v17;
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v24 = v17;
      v20 = v17;
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v16 < v12)
    {

      v12 = sub_1B0DAF4C4(a1, v16, v12);

      v22 = HIDWORD(v12);
      return (v12 | (v22 << 32));
    }

    sub_1B0439BCC();
    swift_allocError();
    *v21 = v12;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0DAF2FC(uint64_t a1)
{
  sub_1B03D06F8();
  result = sub_1B0E46EE8();
  v3 = *(a1 + 16);
  if (!v3)
  {
  }

  v4 = 0;
  v5 = (a1 + 36);
  while (v4 < *(a1 + 16))
  {
    v6 = *(v5 - 1);
    v7 = v6 != 0;
    v8 = v6 - 1;
    if (!v7)
    {
      goto LABEL_13;
    }

    if (!*v5)
    {
      goto LABEL_14;
    }

    v9 = *v5;
    if (v8 > *v5)
    {
      goto LABEL_15;
    }

    v12 = v8;
    v13 = v9;
    if (v9 != v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      v10 = sub_1B0E46E88();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
      sub_1B0E46E38();
      result = v10(v11, 0);
    }

    ++v4;
    v5 += 2;
    if (v3 == v4)
    {
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B0DAF448(uint64_t a1)
{
  v2 = type metadata accessor for ResponsePayload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0DAF4C4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0DFF3DC(a1, a2, a3, 0);
  if (!v3)
  {
    if (result < 0)
    {
      v5 = " in body structure";
      v7 = 202;
      v6 = 0xD000000000000011;
    }

    else
    {
      if ((result - 0x100000000) >= 0xFFFFFFFF00000001)
      {
        result *= 0x100000001;
        return result;
      }

      v5 = "No month match for ";
      v6 = 0xD00000000000001DLL;
      v7 = 87;
    }

    v8 = v5 | 0x8000000000000000;
    sub_1B0436554();
    swift_allocError();
    *v9 = v6;
    v9[1] = v8;
    v9[2] = 0xD000000000000020;
    v9[3] = 0x80000001B0F2FA10;
    v9[4] = v7;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0DAF784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{

  if (a9 < 0)
  {

    return sub_1B0DAF8B4(a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  else
  {
  }
}

uint64_t sub_1B0DAF8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    sub_1B0BD1294(a9, a10, a11);
  }

  return result;
}

uint64_t *sub_1B0DAF970@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t **a6@<X8>)
{
  result = sub_1B0DA9AF8(a1, a2, a3, v6[2], v6[3], v6[4], v6[5], a4, a5);
  if (!v7)
  {
    *a6 = result;
  }

  return result;
}

uint64_t *sub_1B0DAFA18(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v6 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v12 = a3;
LABEL_10:
      swift_willThrow();
      return v5;
    }

    v8 = result;
    v9 = *result;
    v10 = result[1];
    v11 = *(result + 4);
    v16 = *(result + 22);
    v17 = *(result + 10);
    if (a2 + 2 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v13 = a3;
    }

    else
    {

      sub_1B0441264(v8, v18);
      if (!v4)
      {
        sub_1B0DFF2E8(v18[0], v18[1], v19 | (v20 << 32) | (v21 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 115);
        v5 = a4();

        sub_1B0436204(v8);

        if ((sub_1B0DFF3DC(v8, v6, a3, 1) & 0x8000000000000000) == 0)
        {

          sub_1B0436204(v8);

          if ((sub_1B0DFF3DC(v8, v6, a3, 1) & 0x8000000000000000) == 0)
          {

            return v5;
          }
        }

        sub_1B0436554();
        swift_allocError();
        *v14 = 0xD000000000000011;
        v14[1] = 0x80000001B0F2FEE0;
        v14[2] = 0xD000000000000020;
        v14[3] = 0x80000001B0F2FA10;
        v14[4] = 202;
        swift_willThrow();
        goto LABEL_9;
      }
    }

    swift_willThrow();

LABEL_9:
    *v8 = v9;
    *(v8 + 8) = v10;
    *(v8 + 16) = v11;
    *(v8 + 20) = v17;
    *(v8 + 22) = v16;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DAFDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v8 = v6;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = (v13 + 16);
  *(v13 + 24) = 0;
  v15 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = v13;
    if (v15 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v16 = a3;
LABEL_10:
      swift_willThrow();
    }

    v38 = a5;
    v7 = *(a1 + 8);
    v40 = *(a1 + 20);
    v41 = *(a1 + 16);
    v39 = *(a1 + 22);
    v42 = *a1;
    if (a2 + 2 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v17 = a3;
      goto LABEL_8;
    }

    sub_1B0436204(a1);
    if (v6)
    {

LABEL_8:
      v18 = v40;
      swift_willThrow();
      v19 = v41;
LABEL_9:
      *a1 = v42;
      *(a1 + 8) = v7;
      *(a1 + 16) = v19;
      *(a1 + 20) = v18;
      *(a1 + 22) = v39;
      goto LABEL_10;
    }

    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, v15, a3);
    v8 = 0;

    sub_1B0DB23C4(a1, a2 + 2, a3, v5);

    a5 = 0;
    v21 = a2 + 2;
    v22 = *a1;
    v23 = *(a1 + 8);
    v37 = *(a1 + 16);
    v36 = *(a1 + 20);
    v35 = *(a1 + 22);
    if (v15 + 2 >= a3)
    {
      sub_1B0439BCC();
      v24 = swift_allocError();
      *v25 = a3;
      swift_willThrow();
      *a1 = v22;
      *(a1 + 8) = v23;
      *(a1 + 16) = v37;
      *(a1 + 20) = v36;
      *(a1 + 22) = v35;
      swift_willThrow();
      v26 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_12;
      }

      swift_beginAccess();
      v27 = *(v5 + 24);
      if (v27)
      {
        v28 = 0;
        v34 = 0;
        v33 = 0;
        v8 = 0;
        v43 = *v14;
        v29 = 1;
        goto LABEL_18;
      }

      sub_1B0436554();
      swift_allocError();
      *v30 = 0xD000000000000020;
      v30[1] = 0x80000001B0F300F0;
      v30[2] = 0xD000000000000020;
      v30[3] = 0x80000001B0F2FA10;
      v31 = 105;
LABEL_22:
      v30[4] = v31;
      swift_willThrow();
      goto LABEL_12;
    }

    v32 = 1;
    v33 = 0;
    v34 = 0;
    sub_1B0436204(a1);

    sub_1B0DB23C4(a1, v21, a3, v5);

    sub_1B0436204(a1);

    sub_1B0DB23C4(a1, v15 + 1, a3, v5);
  }

  swift_beginAccess();
  v27 = *(v5 + 24);
  if (!v27 || !a5 || (v32 & 1) != 0)
  {

    sub_1B0436554();
    swift_allocError();
    *v30 = 0xD00000000000002FLL;
    v30[1] = 0x80000001B0F30120;
    v30[2] = 0xD000000000000020;
    v30[3] = 0x80000001B0F2FA10;
    v31 = 100;
    goto LABEL_22;
  }

  v43 = *v14;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v29 = 0;
  v28 = a5;
LABEL_18:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, v15, a3);
  if (v8)
  {

LABEL_12:
    v18 = v40;
    v19 = v41;
    goto LABEL_9;
  }

  *v38 = v43;
  *(v38 + 8) = v27;
  *(v38 + 16) = v28;
  *(v38 + 24) = v34;
  *(v38 + 28) = v33;
  *(v38 + 32) = v29;
  return result;
}

void sub_1B0DB0F94(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v35 = a6;
  v36 = a7;
  v15 = type metadata accessor for ParameterValue(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
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
      swift_allocError();
      *v22 = a3;
LABEL_9:
      swift_willThrow();
      return;
    }

    v31 = a8;
    v19 = *a1;
    v20 = *(a1 + 8);
    v21 = *(a1 + 16);
    v33 = *(a1 + 20);
    v34 = v21;
    v32 = *(a1 + 22);
    if (v18 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v23 = a3;
      goto LABEL_8;
    }

    swift_retain_n();
    sub_1B0DBFFD8(a1, v18 + 1, a3, v37);
    if (v8)
    {

LABEL_8:
      swift_willThrow();
      *a1 = v19;
      *(a1 + 8) = v20;
      v24 = v33;
      *(a1 + 16) = v34;
      *(a1 + 20) = v24;
      *(a1 + 22) = v32;
      goto LABEL_9;
    }

    v30 = v37[1];
    v25 = *a1;
    v29[0] = v37[0];
    v29[1] = v25;
    sub_1B0436204(a1);
    v26 = v30;
    sub_1B0DB5310(a1, v18, a3, a4, a5, v35, v36, v17);

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F28, "P5\a");
    v28 = v31;
    sub_1B0D06280(v17, v31 + *(v27 + 52));
    *v28 = v29[0];
    v28[1] = v26;
  }
}

void sub_1B0DB1210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0DB256C;
  *(v17 + 24) = v16;
  v51 = sub_1B0DA9340;
  v52 = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B0DB25A0;
  *(v19 + 24) = v18;
  v53 = sub_1B0DA938C;
  v54 = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B0DB25D8;
  *(v21 + 24) = v20;
  v55 = sub_1B0DA938C;
  v56 = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B0DB25F8;
  *(v23 + 24) = v22;
  v57 = sub_1B0DA938C;
  v58 = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B0DB2618;
  *(v25 + 24) = v24;
  v59 = sub_1B0DA938C;
  v60 = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1B0DB2638;
  *(v27 + 24) = v26;
  v61 = sub_1B0DA938C;
  v62 = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1B0DB2658;
  *(v29 + 24) = v28;
  v63 = sub_1B0DA938C;
  v64 = v29;
  v30 = __OFADD__(a2, 1);
  v31 = a2 + 1;
  v32 = v30;
  swift_retain_n();
  if ((v32 & 1) == 0)
  {
    swift_retain_n();
    v33 = 32;
    v34 = a1;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v50[v33];
      if (v31 >= a3)
      {
        sub_1B0439BCC();
        v42 = swift_allocError();
        *v43 = a3;
      }

      else
      {
        v48 = v33;
        v35 = *v34;
        v36 = *(v34 + 8);
        v37 = *(v34 + 16);
        v47 = *(v34 + 20);
        v38 = v31;
        v39 = *(v34 + 22);

        v40 = v8;
        v41 = v38;
        sub_1B0DA9370(v34, v38, a3);
        v42 = v40;
        if (!v40)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          swift_arrayDestroy();
          return;
        }

        *v34 = v35;
        *(v34 + 8) = v36;
        *(v34 + 16) = v37;
        *(v34 + 20) = v47;
        *(v34 + 22) = v39;
        v31 = v41;
        v33 = v48;
      }

      swift_willThrow();
      v49 = v42;
      v44 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v49 = v42;
        v45 = v42;
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          swift_arrayDestroy();

          return;
        }
      }

      v8 = 0;
      v33 += 16;
      if (v33 == 144)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
        swift_arrayDestroy();
        sub_1B0436554();
        swift_allocError();
        *v46 = 0xD000000000000019;
        v46[1] = 0x80000001B0F2FF00;
        v46[2] = 0xD000000000000020;
        v46[3] = 0x80000001B0F2FA10;
        v46[4] = 527;
        swift_willThrow();
        return;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1B0DB1804@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X7>, _DWORD *a5@<X8>)
{
  result = sub_1B0DFE880(a4, 0xE400000000000000, 0, 0, a1, a2, a3);
  if (!v5)
  {
    *a5 = sub_1B0D9F404(a1, a2, a3);
    type metadata accessor for SearchReturnData(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void sub_1B0DB1898(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1B0DFE880(0x204C4C41uLL, 0xE400000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    sub_1B0DA9758(a1, a2, a3, a4, a5, a6, a7, a8);
    type metadata accessor for SearchReturnData(0);
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1B0DB195C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  result = sub_1B0DFE880(0x20544E554F43uLL, 0xE600000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    v10 = sub_1B0DFF3DC(a1, a2, a3, 1);
    if ((v10 & 0x8000000000000000) != 0)
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
      *a4 = v10;
      type metadata accessor for SearchReturnData(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

uint64_t sub_1B0DB1A68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  result = sub_1B0DFE880(0x20514553444F4DuLL, 0xE700000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    *a4 = sub_1B0DB2720(a1, a2, a3);
    type metadata accessor for SearchReturnData(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void sub_1B0DB1B04(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, void *a8@<X8>)
{
  v38 = a7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7438, &qword_1B0EFBF30);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v30 - v17;
  sub_1B0DFE880(0x204C414954524150uLL, 0xE900000000000028, 0, 0, a1, a2, a3);
  if (!v8)
  {
    sub_1B0DA93BC(a1, a2, a3);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v22 = a3;
      swift_willThrow();
    }

    else
    {
      v33 = a2;
      v37 = v18;
      v30 = a8;
      v32 = v20;
      v31 = v19;
      v21 = a1;
      v36 = *a1;
      sub_1B0436204(a1);
      v34 = a2 + 1;
      v35 = a3;
      v36 = v39;
      v23 = swift_allocObject();
      v23[2] = a4;
      v23[3] = a5;
      v24 = v38;
      v23[4] = a6;
      v23[5] = v24;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_1B0DB2678;
      *(v25 + 24) = v23;
      v39[0] = sub_1B0DA938C;
      v39[1] = v25;
      v26 = swift_allocObject();
      v26[2] = a4;
      v26[3] = a5;
      v26[4] = a6;
      v26[5] = v24;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_1B0DB2698;
      *(v27 + 24) = v26;
      v39[2] = sub_1B0DA938C;
      v39[3] = v27;
      v38 = 0x80000001B0F2FA10;
      swift_retain_n();
      *(swift_allocObject() + 16) = *v36;

      sub_1B0DA9370(v21, v34, v35);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
      swift_arrayDestroy();
      sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v21, v33, v35);
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7448, &qword_1B0EF3210) + 48);
      v29 = v30;
      *v30 = v31;
      *(v29 + 8) = v32 & 1;
      sub_1B03C60A4(v37, v29 + v28, &qword_1EB6E7438, &qword_1B0EFBF30);
      type metadata accessor for SearchReturnData(0);
      swift_storeEnumTagMultiPayload();
    }
  }
}

uint64_t sub_1B0DB20C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v21 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7430, &qword_1B0EFBC90);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v20 - v17;
  result = sub_1B0DAD7D8(a1, a2, a3, a4, a5, a6, a7, &v20 - v17);
  if (!v8)
  {
    return sub_1B03C60A4(v18, v21, &qword_1EB6E7438, &qword_1B0EFBF30);
  }

  return result;
}

uint64_t sub_1B0DB21C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    return sub_1B0DAF2F8(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

void sub_1B0DB2220(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  sub_1B0DB0F94(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v8)
  {
    type metadata accessor for SearchReturnData(0);
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t *sub_1B0DB2268(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v5 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v13 = a3;
    }

    else
    {
      v7 = result;
      v8 = *result;
      v9 = result[1];
      v10 = *(result + 4);
      v11 = *(result + 10);
      v12 = *(result + 22);

      sub_1B0DFE880(0x20514553444F4D28uLL, 0xE800000000000000, 0, 0, v7, v5, a3);
      if (!v3)
      {
        v4 = sub_1B0DB2720(v7, v5, a3);
        sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v7, v5, a3);

        return v4;
      }

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
    }

    swift_willThrow();
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DB23C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B0DFE880(0x2220474154uLL, 0xE500000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v10 = a3;
      return swift_willThrow();
    }

    else
    {
      sub_1B0DF9D90(a1, v15);
      sub_1B0DFF2E8(v15[0], v15[1], v16 | (v17 << 32) | (v18 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 2610);
      v12 = v11;
      v14 = v13;

      swift_beginAccess();
      *(a4 + 16) = v12;
      *(a4 + 24) = v14;

      return sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B0DB26B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7438, &qword_1B0EFBF30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1B0DB2720(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v13 = a3;
      return swift_willThrow();
    }

    v6 = result;
    v7 = *result;
    v8 = result[1];
    v9 = *(result + 4);
    v10 = *(result + 10);
    v11 = *(result + 22);

    v12 = sub_1B0DFF3DC(v6, v4, a3, 1);
    if (v3)
    {

LABEL_5:
      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
      return swift_willThrow();
    }

    if ((v12 & 0x8000000000000000) != 0)
    {

      sub_1B0436554();
      swift_allocError();
      *v15 = 0xD00000000000001BLL;
      v15[1] = 0x80000001B0F2FFC0;
      v15[2] = 0xD000000000000020;
      v15[3] = 0x80000001B0F2FA10;
      v15[4] = 173;
      swift_willThrow();
      goto LABEL_5;
    }

    v14 = v12;

    return v14;
  }

  return result;
}

char *sub_1B0DB2888(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
    v12 = *(result + 1);
    v13 = *(result + 4);
    v19 = result[22];
    v20 = *(result + 10);

    sub_1B0DB363C(v10, v8, a3, a4, a5, a6, a7, &v21);
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

uint64_t sub_1B0DB29B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v50 = a8;
  v57 = *MEMORY[0x1E69E9840];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v45 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42D0, &unk_1B0EC5990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC1E70;
  v19 = v54;
  v20 = sub_1B0DB32AC(a1, a2, a3, a4, a5, a6, a7);
  if (v19)
  {
    *(inited + 16) = 0;
  }

  v53 = a4;
  v54 = a5;
  *(inited + 32) = v20;
  if (__OFADD__(a2, 1))
  {
LABEL_31:
    __break(1u);
  }

  if (a2 + 1 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v30 = a3;
LABEL_23:
    swift_willThrow();
  }

  v51 = a6;
  v52 = a7;
  v22 = *a1;
  v23 = a1[1];
  v24 = *(a1 + 4);
  v25 = *(a1 + 10);
  v26 = a2 + 2;
  v48 = *(a1 + 22);
  v49 = v25;

  if (v26 < a3)
  {
    v45[1] = v24;
    v46 = v22;
    v47 = v17;
    while (1)
    {

      sub_1B0DFE880(0x2CuLL, 0xE100000000000000, 0, 0, a1, v26, a3);
      v27 = sub_1B0DB32AC(a1, v26, a3, v53, v54, v51, v52);

      v29 = *(inited + 16);
      v28 = *(inited + 24);
      if (v29 >= v28 >> 1)
      {
        inited = sub_1B0AFF55C((v28 > 1), v29 + 1, 1, inited);
      }

      *(inited + 16) = v29 + 1;
      *(inited + 8 * v29 + 32) = v27;
    }
  }

  sub_1B0439BCC();
  v31 = swift_allocError();
  *v32 = a3;
  v33 = v17;
  swift_willThrow();
  v55 = v31;
  v34 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (!swift_dynamicCast())
  {

    *a1 = v22;
    a1[1] = v23;
    *(a1 + 4) = v24;
    v43 = v48;
    *(a1 + 10) = v49;
    *(a1 + 22) = v43;
    goto LABEL_23;
  }

  sub_1B03D06F8();
  sub_1B0E46EE8();
  v35 = *(inited + 16);
  if (v35)
  {
    v36 = 0;
    v37 = (inited + 36);
    while (v36 < *(inited + 16))
    {
      v38 = *(v37 - 1);
      v39 = v38 != 0;
      v40 = v38 - 1;
      if (!v39)
      {
        goto LABEL_28;
      }

      if (!*v37)
      {
        goto LABEL_29;
      }

      v41 = *v37;
      if (v40 > *v37)
      {
        goto LABEL_30;
      }

      v55 = __PAIR64__(v41, v40);
      if (v41 != v40)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        v42 = sub_1B0E46E88();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
        sub_1B0E46E38();
        v42(v56, 0);
      }

      ++v36;
      v37 += 2;
      if (v35 == v36)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_24:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  if ((sub_1B0E46E98() & 1) == 0)
  {
    return sub_1B03C60A4(v33, v50, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  sub_1B0436554();
  swift_allocError();
  *v44 = 0xD000000000000011;
  v44[1] = 0x80000001B0F30170;
  v44[2] = 0xD000000000000020;
  v44[3] = 0x80000001B0F2FA10;
  v44[4] = 56;
  swift_willThrow();
  return sub_1B0398EFC(v33, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

void sub_1B0DB2F1C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v42 = a7;
  v40 = a5;
  v41 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v39 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v36 - v20;
  v22 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v22 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v29 = a3;
      goto LABEL_6;
    }

    v36 = v13;
    v37 = a8;
    v23 = *a1;
    v24 = *(a1 + 8);
    v25 = *(a1 + 16);
    v26 = *(a1 + 20);
    v38 = *(a1 + 22);

    v27 = v22;
    v28 = v43;
    sub_1B0DB29B0(a1, v27, a3, a4, v40, v41, v42, v18);
    if (v28)
    {

      *a1 = v23;
      *(a1 + 8) = v24;
      *(a1 + 16) = v25;
      *(a1 + 20) = v26;
      *(a1 + 22) = v38;
LABEL_6:
      swift_willThrow();
      return;
    }

    v30 = sub_1B0D73474();
    v31 = v36;
    if (v30 <= 0)
    {
      sub_1B0398EFC(v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v32 = 1;
    }

    else
    {
      sub_1B03C60A4(v18, v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03C60A4(v15, v21, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v32 = 0;
    }

    v33 = v37;
    v34 = v39;
    (*(v39 + 56))(v21, v32, 1, v31);
    if ((*(v34 + 48))(v21, 1, v31) == 1)
    {
      sub_1B0398EFC(v21, &unk_1EB6E3670, &unk_1B0E9B260);
      sub_1B0436554();
      swift_allocError();
      *v35 = 0xD000000000000015;
      v35[1] = 0x80000001B0F30190;
      v35[2] = 0xD000000000000020;
      v35[3] = 0x80000001B0F2FA10;
      v35[4] = 69;
      goto LABEL_6;
    }

    sub_1B03C60A4(v21, v33, &unk_1EB6E26C0, &unk_1B0E9DE10);
  }
}

uint64_t *sub_1B0DB32AC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!__OFADD__(a2, 1))
  {
    v10 = result;
    v34 = a2 + 1;
    if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      v18 = swift_allocError();
      *v20 = a3;
    }

    else
    {
      v11 = *result;
      v12 = result[1];
      v32 = *(result + 10);
      v33 = *(result + 4);
      v13 = a2 + 2;
      v31 = *(result + 22);
      if (a2 + 2 >= a3)
      {
        sub_1B0439BCC();
        v18 = swift_allocError();
        *v21 = a3;
      }

      else
      {
        swift_retain_n();

        v17 = sub_1B0DAE444(v10, v13, a3, a4, a5, a6, a7);
        v18 = v7;
        if (!v7)
        {
          v30 = v17;

          sub_1B0E00FBC(v10, v13, a3, a4, a5, a6, a7);
          v27 = v19;

          if (v30 >= v27)
          {
            v28 = v27;
          }

          else
          {
            v28 = v30;
          }

          if (v30 <= v27)
          {
            v29 = v27;
          }

          else
          {
            v29 = v30;
          }

          if ((v27 & 0x100000000) != 0)
          {
            LODWORD(v25) = v30;
          }

          else
          {
            LODWORD(v25) = v28;
          }

          if ((v27 & 0x100000000) != 0)
          {
            v26 = v30;
          }

          else
          {
            v26 = v29;
          }

          return (v25 | (v26 << 32));
        }
      }

      swift_willThrow();

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v33;
      *(v10 + 20) = v32;
      *(v10 + 22) = v31;
    }

    swift_willThrow();
    v35 = v18;
    v22 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v35 = v18;
      v23 = v18;
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v34 < a3)
    {

      v25 = sub_1B0DAF4C4(v10, v34, a3);

      v26 = HIDWORD(v25);
      return (v25 | (v26 << 32));
    }

    sub_1B0439BCC();
    swift_allocError();
    *v24 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DB363C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char **a8@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42D0, &unk_1B0EC5990);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B0EC1E70;
  result = sub_1B0DB32AC(a1, a2, a3, a4, a5, a6, a7);
  if (v8)
  {
    *(v16 + 16) = 0;
  }

  v36 = a4;
  *(v16 + 32) = result;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return result;
  }

  if (a2 + 1 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v26 = a3;
LABEL_14:
    swift_willThrow();
  }

  v33 = a5;
  v34 = a6;
  v35 = a7;
  v18 = *a1;
  v19 = *(a1 + 8);
  v20 = *(a1 + 16);
  v21 = *(a1 + 20);
  v22 = a2 + 2;
  v31 = *(a1 + 22);

  if (a2 + 2 < a3)
  {
    while (1)
    {

      sub_1B0DFE880(0x2CuLL, 0xE100000000000000, 0, 0, a1, v22, a3);
      v23 = sub_1B0DB32AC(a1, v22, a3, v36, v33, v34, v35);

      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        v16 = sub_1B0AFF55C((v24 > 1), v25 + 1, 1, v16);
      }

      *(v16 + 16) = v25 + 1;
      *(v16 + 8 * v25 + 32) = v23;
    }
  }

  sub_1B0439BCC();
  v27 = swift_allocError();
  *v28 = a3;
  swift_willThrow();
  v29 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (!swift_dynamicCast())
  {

    *a1 = v18;
    *(a1 + 8) = v19;
    *(a1 + 16) = v20;
    *(a1 + 20) = v21;
    *(a1 + 22) = v31;
    goto LABEL_14;
  }

  if (*(v16 + 16))
  {
    *a8 = v16;
  }

  else
  {

    sub_1B0436554();
    swift_allocError();
    *v30 = 0xD000000000000011;
    v30[1] = 0x80000001B0F30170;
    v30[2] = 0xD000000000000020;
    v30[3] = 0x80000001B0F2FA10;
    v30[4] = 97;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0DB39E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0DFF3DC(a1, a2, a3, 0);
  if (!v3)
  {
    if (result < 0)
    {
      v5 = " in body structure";
      v7 = 202;
      v6 = 0xD000000000000011;
    }

    else
    {
      if ((result - 0x100000000) >= 0xFFFFFFFF00000001)
      {
        return result;
      }

      v5 = "ts present for SearchCorrelator";
      v6 = 0xD000000000000015;
      v7 = 28;
    }

    v8 = v5 | 0x8000000000000000;
    sub_1B0436554();
    swift_allocError();
    *v9 = v6;
    v9[1] = v8;
    v9[2] = 0xD000000000000020;
    v9[3] = 0x80000001B0F2FA10;
    v9[4] = v7;
    return swift_willThrow();
  }

  return result;
}

uint64_t *sub_1B0DB3AC0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v11 = result;
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      v19 = swift_allocError();
      *v20 = a3;
    }

    else
    {
      v12 = *result;
      v13 = result[1];
      v14 = *(result + 4);
      v31 = *(result + 22);
      v32 = *(result + 10);

      v18 = sub_1B0DB4268(v11, v8, a3, a4, a5, a6, a7, sub_1B0DBEB44);
      v19 = v7;
      if (!v7)
      {
        v22 = v18;

        return v22;
      }

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v32;
      *(v11 + 22) = v31;
    }

    swift_willThrow();
    v34 = v19;
    v21 = v19;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v34 = v19;
      v23 = v19;
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_19;
      }

      v22 = v33[3];
    }

    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v29 = a3;
      swift_willThrow();
    }

    else
    {
      v22 = *v11;
      v24 = *(v11 + 8);
      v25 = *(v11 + 16);
      v26 = *(v11 + 20);
      v27 = v8 + 1;
      v28 = *(v11 + 22);
      if (v27 < a3)
      {

        sub_1B0DF99B8(v11, v33);

        return v33[0];
      }

      sub_1B0439BCC();
      swift_allocError();
      *v30 = a3;

      swift_willThrow();

      *v11 = v22;
      *(v11 + 8) = v24;
      *(v11 + 16) = v25;
      *(v11 + 20) = v26;
      *(v11 + 22) = v28;
      swift_willThrow();
    }

LABEL_19:

    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DB3E20(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1B0E44D18();
  return sub_1B0E44EA8();
}

void sub_1B0DB3EA0(uint64_t a1)
{
  v2 = *(v1 + 12);
  v3 = *(a1 + 16);
  v4 = v2 + v3;
  if (__CFADD__(v2, v3))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = *(v1 + 16);
    v7 = v4 >= v6;
    v8 = v4 - v6;
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_1B03904C0();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v9, v10 & 1);
  }

  if (HIDWORD(v3))
  {
    goto LABEL_11;
  }

  ByteBuffer._ensureAvailableCapacity(_:at:)(v3, v2);
  ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((a1 + 32), a1 + 32 + v3, v2);
  v11 = *(v1 + 12);
  v7 = __CFADD__(v11, v3);
  v12 = v11 + v3;
  if (!v7)
  {
    *(v1 + 12) = v12;
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_1B0DB3F50(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
      v17 = swift_allocError();
      *v18 = a3;
    }

    else
    {
      v12 = *a1;
      v13 = a1[1];
      v14 = *(a1 + 4);
      v15 = *(a1 + 10);
      v16 = *(a1 + 22);

      sub_1B0DFE880(0x4C494EuLL, 0xE300000000000000, 0, 0, a1, v8, a3);
      v17 = v7;
      if (!v7)
      {

        return;
      }

      *a1 = v12;
      a1[1] = v13;
      *(a1 + 4) = v14;
      *(a1 + 10) = v15;
      *(a1 + 22) = v16;
    }

    swift_willThrow();
    v25 = v17;
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v25 = v17;
      v20 = v17;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }
    }

    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v21 = a3;
      swift_willThrow();
    }

    else
    {

      sub_1B0DB4268(a1, v8, a3, a4, a5, a6, a7, sub_1B0DBEB44);
    }
  }
}

uint64_t *sub_1B0DB4268(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v10 = a7;
    v13 = result;
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      v20 = swift_allocError();
      *v21 = a3;
      swift_retain_n();
    }

    else
    {
      v15 = *result;
      v16 = result[1];
      v17 = *(result + 4);
      v18 = *(result + 10);
      v26 = *(result + 22);
      swift_retain_n();

      v19 = sub_1B0DC10F8(v13, v9, a3, a8);
      v20 = v8;
      if (!v8)
      {
LABEL_13:
        v25 = v19;

        return v25;
      }

      *v13 = v15;
      *(v13 + 8) = v16;
      *(v13 + 16) = v17;
      *(v13 + 20) = v18;
      *(v13 + 22) = v26;
      v10 = a7;
    }

    swift_willThrow();
    v30 = v20;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v30 = v20;
      v23 = v20;
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v9 < a3)
    {

      v19 = sub_1B0DB5DD0(v13, v9, a3, a4, a5, a6, v10);
      goto LABEL_13;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v24 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t *sub_1B0DB4538(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

    sub_1B0DBD38C(v10, v8, a3, a4, a5, a6, a7, &v21);
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

unint64_t sub_1B0DB4664(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_1B0DB4538(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    v13 = v10;
    v7 = v11;
    v14 = v12;
    if (qword_1EB6DE148 != -1)
    {
      v20 = v9;
      swift_once();
      v9 = v20;
    }

    v15 = v9 == static Media.TopLevelType.message && v13 == unk_1EB737E20;
    if (!v15 && (sub_1B0E46A78() & 1) == 0)
    {

LABEL_20:

      v7 = 0x80000001B0F30220;
      sub_1B0436554();
      swift_allocError();
      *v18 = 0xD00000000000002ALL;
      v18[1] = 0x80000001B0F30220;
      v18[2] = 0xD000000000000020;
      v18[3] = 0x80000001B0F2FA10;
      v18[4] = 1584;
      swift_willThrow();
      return v7;
    }

    if (qword_1EB6DE128 != -1)
    {
      swift_once();
    }

    if (v7 == static Media.Subtype.rfc822 && v14 == unk_1EB737DE0)
    {

      return v7;
    }

    v17 = sub_1B0E46A78();

    if ((v17 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  return v7;
}

uint64_t *sub_1B0DB4810(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

      sub_1B0DFE880(0x20225458455422uLL, 0xE700000000000000, 0, 0, v10, v8, v9);
      if (!v7)
      {
        v9 = sub_1B0DB4978(v10, v8, v9, a4, a5, a6, a7);

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

uint64_t sub_1B0DB4978(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_1B0DB4268(a1, a2, a3, a4, a5, a6, a7, sub_1B0DBEB44);
  if (!v7)
  {
    sub_1B0DFF2E8(v9, v10, v11 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 1592);
    v13 = sub_1B0E44B98();
    v15 = v14;

    v16 = v13 == 0x74616E7265746C61 && v15 == 0xEB00000000657669;
    if (v16 || (sub_1B0E46A78() & 1) != 0)
    {

      if (qword_1EB6DE138 != -1)
      {
        swift_once();
      }

      v17 = &static Media.Subtype.alternative;
    }

    else if (v13 == 0x646578696DLL && v15 == 0xE500000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      if (qword_1EB6DE130 != -1)
      {
        swift_once();
      }

      v17 = &static Media.Subtype.mixed;
    }

    else
    {
      if ((v13 != 0x646574616C6572 || v15 != 0xE700000000000000) && (sub_1B0E46A78() & 1) == 0)
      {
        v8 = sub_1B0E44B98();

        return v8;
      }

      if (qword_1EB6DE120 != -1)
      {
        swift_once();
      }

      v17 = &static Media.Subtype.related;
    }

    v8 = *v17;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return v8;
}

uint64_t *sub_1B0DB4BEC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v12 = result;
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      v17 = swift_allocError();
      *v18 = a3;
    }

    else
    {
      v13 = *result;
      v14 = result[1];
      v8 = *(result + 4);
      v15 = *(result + 10);
      v16 = *(result + 22);

      sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, v12, v9, a3);
      v17 = v7;
      if (!v7)
      {
        sub_1B041D794(MEMORY[0x1E69E7CC0]);
LABEL_20:
        v8 = v25;

        return v8;
      }

      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v8;
      *(v12 + 20) = v15;
      *(v12 + 22) = v16;
    }

    swift_willThrow();
    v32 = v17;
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {

      v8 = v31;
    }

    else
    {

      v32 = v17;
      v20 = v17;
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_18;
      }

      v8 = v31;
    }

    if (v9 < a3)
    {

      sub_1B0DBA738(v12, v9, a3);
      v8 = v27;

      return v8;
    }

    sub_1B0439BCC();
    v21 = swift_allocError();
    *v22 = a3;
    swift_willThrow();
    v32 = v21;
    v23 = v21;
    if (swift_dynamicCast())
    {

      v8 = v31;
LABEL_16:

      if (v9 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v26 = a3;
        swift_willThrow();
        return v8;
      }

      sub_1B0DBA91C(v12, v9, a3, a4, a5, a6, a7);
      goto LABEL_20;
    }

    v32 = v21;
    v24 = v21;
    if (swift_dynamicCast())
    {

      v8 = v31;

      goto LABEL_16;
    }

LABEL_18:

    return v8;
  }

  __break(1u);
  return result;
}

void sub_1B0DB4FF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v9 = a7;
    v10 = a6;
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      v18 = swift_allocError();
      *v19 = a3;
    }

    else
    {
      v13 = *a1;
      v14 = a1[1];
      v15 = *(a1 + 4);
      v16 = *(a1 + 10);
      v17 = *(a1 + 22);

      sub_1B0DBF5CC(a1, v8, a3);
      v18 = v7;
      if (!v7)
      {
LABEL_14:

        return;
      }

      *a1 = v13;
      a1[1] = v14;
      *(a1 + 4) = v15;
      *(a1 + 10) = v16;
      *(a1 + 22) = v17;
      v10 = a6;
      v9 = a7;
    }

    swift_willThrow();
    v27 = v18;
    v20 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v27 = v18;
      v21 = v18;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }
    }

    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v22 = a3;
      swift_willThrow();
      return;
    }

    sub_1B0DFE880(0x5BuLL, 0xE100000000000000, 0, 0, a1, v8, a3);
    sub_1B0DBF724(a1, v8, a3, a4, a5, v10, v9);
    sub_1B0DFE880(0x5DuLL, 0xE100000000000000, 0, 0, a1, v8, a3);
    goto LABEL_14;
  }

  __break(1u);
}

void sub_1B0DB5310(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      v19 = a8;
      sub_1B0439BCC();
      v20 = swift_allocError();
      *v21 = a3;
    }

    else
    {
      v13 = *a1;
      v14 = *(a1 + 8);
      v15 = *(a1 + 16);
      v16 = *(a1 + 20);
      v17 = *(a1 + 22);

      sub_1B0DA9710(a1, v9, a3, a4, a5, a6, a7, a8);
      v19 = a8;
      v20 = v8;
      if (!v8)
      {
        type metadata accessor for ParameterValue(0);
LABEL_17:
        swift_storeEnumTagMultiPayload();

        return;
      }

      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      *(a1 + 20) = v16;
      *(a1 + 22) = v17;
    }

    swift_willThrow();
    v31 = v20;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v31 = v20;
      v23 = v20;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }
    }

    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v26 = a3;
      swift_willThrow();
      return;
    }

    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, v9, a3);

    sub_1B0E01014(a1, v9, a3, a4, a5, a6, a7);
    v25 = v24;

    if (!v25)
    {
      v25 = MEMORY[0x1E69E7CC0];
    }

    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, v9, a3);
    *v19 = v25;
    type metadata accessor for ParameterValue(0);
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t *sub_1B0DB5660(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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
      *v13 = a3;
    }

    else
    {
      v7 = result;
      v23 = a4;
      v8 = *result;
      v9 = result[1];
      v10 = *(result + 4);
      v11 = *(result + 10);
      v12 = *(result + 22);

      sub_1B0DFE880(0x5CuLL, 0xE100000000000000, 0, 0, v7, v5, a3);
      if (!v4)
      {
        if (v5 + 1 < a3)
        {
          sub_1B0441264(v7, &v18);
          sub_1B0DFF2E8(v18, v19, v20 | (v21 << 32) | (v22 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 115);
          v15 = v23();
          v17 = v16;

          v18 = 92;
          v19 = 0xE100000000000000;
          MEMORY[0x1B2726E80](v15, v17);

          return v18;
        }

        sub_1B0439BCC();
        swift_allocError();
        *v14 = a3;
        swift_willThrow();
      }

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

uint64_t *sub_1B0DB58A8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
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
      *v21 = a3;
    }

    else
    {
      v15 = result;
      v16 = *result;
      v17 = result[1];
      v35 = *(result + 10);
      v36 = *(result + 4);
      v34 = *(result + 22);

      v18 = sub_1B0DB3AC0(v15, v9, a3, a4, a5, a6, a7);
      if (!v8)
      {
        v32 = v18;
        if (v9 + 1 < a3)
        {
          v31 = v20;
          v30 = v19;
          sub_1B0436204(v15);
          sub_1B0DB3F50(v15, v9, a3, a4, a5, a6, a7);
          v24 = v23;
          v26 = v25;
          v28 = v27;

          *&v38 = v32;
          *(&v38 + 1) = v30;
          *v39 = v31;
          *&v39[4] = WORD2(v31);
          v39[6] = BYTE6(v31);
          *&v39[8] = v24;
          *&v39[16] = v26;
          *&v39[24] = v28;
          v39[30] = BYTE6(v28);
          *&v39[28] = WORD2(v28);
          v40[0] = v32;
          v40[1] = v30;
          v41 = v31;
          v42 = WORD2(v31);
          v43 = BYTE6(v31);
          v44 = v24;
          v45 = v26;
          v46 = v28;
          v48 = BYTE6(v28);
          v47 = WORD2(v28);
          sub_1B0D3C908(&v38, v37);
          result = sub_1B0D3C964(v40);
          v29 = *v39;
          *a8 = v38;
          a8[1] = v29;
          *(a8 + 31) = *&v39[15];
          return result;
        }

        sub_1B0439BCC();
        swift_allocError();
        *v22 = a3;
        swift_willThrow();
      }

      *v15 = v16;
      *(v15 + 8) = v17;
      *(v15 + 16) = v36;
      *(v15 + 20) = v35;
      *(v15 + 22) = v34;
    }

    return swift_willThrow();
  }

  return result;
}

void sub_1B0DB5B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = a7;
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      v17 = swift_allocError();
      *v18 = a3;
    }

    else
    {
      v12 = *a1;
      v13 = *(a1 + 8);
      v14 = *(a1 + 16);
      v15 = *(a1 + 20);
      v16 = *(a1 + 22);

      sub_1B0DC0EE8(a1, v8, a3, a4);
      v17 = v7;
      if (!v7)
      {
LABEL_13:

        return;
      }

      *a1 = v12;
      *(a1 + 8) = v13;
      *(a1 + 16) = v14;
      *(a1 + 20) = v15;
      *(a1 + 22) = v16;
      v9 = a7;
    }

    swift_willThrow();
    v26 = v17;
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {

LABEL_10:

      if (v8 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v21 = a3;
        swift_willThrow();
        return;
      }

      sub_1B0DB3AC0(a1, v8, a3, a4, a5, a6, v9);
      goto LABEL_13;
    }

    v26 = v17;
    v20 = v17;
    if (swift_dynamicCast())
    {

      goto LABEL_10;
    }
  }
}

uint64_t *sub_1B0DB5DD0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
      *v15 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = result[1];
    v13 = *(result + 4);
    v16 = *(result + 22);
    v17 = *(result + 10);

    sub_1B0DBCEB4(v10, v8, a3, a6, 0x7BuLL, &v18, 0xE100000000000000, 1470);
    if (v7)
    {

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v17;
      *(v10 + 22) = v16;
      return swift_willThrow();
    }

    return v18;
  }

  return result;
}

uint64_t *sub_1B0DB5F1C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
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
    v29 = *(result + 22);
    v30 = *(result + 10);

    sub_1B0DBBD6C(v11, v9, a3, a4, a5, a6, a7, v31);
    if (v8)
    {

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v30;
      *(v11 + 22) = v29;
      return swift_willThrow();
    }

    v20 = v31[13];
    a8[12] = v31[12];
    a8[13] = v20;
    v21 = v31[15];
    a8[14] = v31[14];
    a8[15] = v21;
    v22 = v31[9];
    a8[8] = v31[8];
    a8[9] = v22;
    v23 = v31[11];
    a8[10] = v31[10];
    a8[11] = v23;
    v24 = v31[5];
    a8[4] = v31[4];
    a8[5] = v24;
    v25 = v31[7];
    a8[6] = v31[6];
    a8[7] = v25;
    v26 = v31[1];
    *a8 = v31[0];
    a8[1] = v26;
    v27 = v31[3];
    a8[2] = v31[2];
    a8[3] = v27;
  }

  return result;
}

uint64_t *sub_1B0DB60AC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v7 = result;
    if (v5 >= a3)
    {
      sub_1B0439BCC();
      v13 = swift_allocError();
      *v14 = a3;
    }

    else
    {
      v8 = *result;
      v9 = result[1];
      v10 = *(result + 4);
      v11 = *(result + 10);
      v12 = *(result + 22);
      if (a2 + 2 >= a3)
      {
        sub_1B0439BCC();
        v13 = swift_allocError();
        *v15 = a3;
      }

      else
      {

        sub_1B0441264(v7, v20);
        v13 = v4;
        if (!v4)
        {
          sub_1B0DFF2E8(v20[0], v20[1], v21 | (v22 << 32) | (v23 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 115);
          v7 = a4();

          return v7;
        }
      }

      swift_willThrow();

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
    }

    swift_willThrow();
    v24 = v13;
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v24 = v13;
      v17 = v13;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return v7;
      }
    }

    if (v5 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v18 = a3;
      swift_willThrow();
    }

    else
    {

      sub_1B0DC10F8(v7, v5, a3, sub_1B0DBEB44);
      swift_beginAccess();
      v7 = sub_1B0E44C68();
    }

    return v7;
  }

  __break(1u);
  return result;
}

void sub_1B0DB6448(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
      v17 = swift_allocError();
      *v18 = a3;
    }

    else
    {
      v12 = *a1;
      v13 = a1[1];
      v14 = *(a1 + 4);
      v15 = *(a1 + 10);
      v16 = *(a1 + 22);

      sub_1B0DFE880(0x2A5CuLL, 0xE200000000000000, 0, 0, a1, v8, a3);
      v17 = v7;
      if (!v7)
      {

        return;
      }

      *a1 = v12;
      a1[1] = v13;
      *(a1 + 4) = v14;
      *(a1 + 10) = v15;
      *(a1 + 22) = v16;
    }

    swift_willThrow();
    v25 = v17;
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v25 = v17;
      v20 = v17;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }
    }

    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v21 = a3;
      swift_willThrow();
    }

    else
    {

      sub_1B0DB8FBC(a1, v8, a3, a4, a5, a6, a7);
    }
  }
}

uint64_t *sub_1B0DB6764@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
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
      *v25 = a3;
    }

    else
    {
      v13 = result;
      v14 = *result;
      v15 = result[1];
      v39 = *(result + 10);
      v37 = *(result + 4);
      v38 = *(result + 22);

      v40 = v14;

      sub_1B0E035EC(v13, v9, a3, a4, a5, a6, a7);
      v36 = v18;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      if (!v8)
      {
        sub_1B0DBB824(v13, v9, a3, a4, a5);
        v27 = v26;
        v34 = v28;
        sub_1B0E02F48(v13, v9, a3);
        v30 = v29;
        v32 = v31;

        v41[64] = v32 & 1;
        *&v42 = v36;
        *(&v42 + 1) = v20;
        *&v43 = v22;
        *(&v43 + 1) = v24;
        *v44 = v34;
        *&v44[8] = v27;
        *&v44[16] = v30;
        v44[24] = v32 & 1;
        v45[0] = v36;
        v45[1] = v20;
        v45[2] = v22;
        v45[3] = v24;
        v45[4] = v34;
        v45[5] = v27;
        v45[6] = v30;
        v46 = v32 & 1;
        sub_1B0DC3C80(&v42, v41);
        result = sub_1B0DC1F64(v45);
        v33 = v43;
        *a8 = v42;
        a8[1] = v33;
        a8[2] = *v44;
        *(a8 + 41) = *&v44[9];
        return result;
      }

      *v13 = v40;
      *(v13 + 8) = v15;
      *(v13 + 16) = v37;
      *(v13 + 20) = v39;
      *(v13 + 22) = v38;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t *sub_1B0DB69C8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
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

    sub_1B0DBC2BC(v11, v9, a3, a4, a5, a6, a7, v25);
    if (v8)
    {

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v24;
      *(v11 + 22) = v23;
      return swift_willThrow();
    }

    v20 = v25[3];
    *(a8 + 32) = v25[2];
    *(a8 + 48) = v20;
    *(a8 + 64) = v26;
    v21 = v25[1];
    *a8 = v25[0];
    *(a8 + 16) = v21;
  }

  return result;
}

uint64_t sub_1B0DB6B14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  if (!__OFADD__(a2, 1))
  {
    v75 = v17;
    v76 = v14;
    v77 = v13;
    v78 = v12;
    v79 = v11;
    v80 = v9;
    v81 = v8;
    v82 = v15;
    v83 = v16;
    if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v23 = a3;
      return swift_willThrow();
    }

    v8 = a1;
    v9 = *a1;
    LODWORD(v13) = *(a1 + 3);
    LODWORD(v14) = *(a1 + 4);
    v56 = *(a1 + 10);
    v57 = *(a1 + 2);
    v19 = a2 + 2;
    LOBYTE(v12) = *(a1 + 22);
    if (a2 + 2 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v24 = a3;
LABEL_16:
      swift_willThrow();
      *v8 = v9;
      *(v8 + 2) = v57;
      *(v8 + 3) = v13;
      *(v8 + 4) = v14;
      *(v8 + 10) = v56;
      *(v8 + 22) = v12;
      return swift_willThrow();
    }

    v21 = a2 + 3;
    v47 = a8;
    v48 = a2 + 3;
    if (a2 + 3 >= a3)
    {
      sub_1B0439BCC();
      v22 = swift_allocError();
      *v25 = a3;
      swift_retain_n();
    }

    else
    {
      swift_retain_n();

      sub_1B0DC3380(v8, v21, a3, v70);
      v22 = v10;
      if (!v10)
      {
        v41 = v70[1];
        v42 = v70[0];
        v45 = v72;
        v46 = v71;
        v44 = v73;
        v43 = v74;

        v40 = 0;
        goto LABEL_14;
      }

      *v8 = v9;
      *(v8 + 2) = v57;
      *(v8 + 3) = v13;
      *(v8 + 4) = v14;
      *(v8 + 10) = v56;
      *(v8 + 22) = v12;
    }

    swift_willThrow();
    v64[0] = v22;
    v26 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (!swift_dynamicCast())
    {

      goto LABEL_15;
    }

    LOBYTE(v63[0]) = 1;

    v45 = 0;
    v46 = 0;
    v44 = 0;
    v43 = 0;
    v40 = 1;
    v41 = 0u;
    v42 = 0u;
LABEL_14:
    sub_1B0DFE880(0x485455414C52553BuLL, 0xE90000000000003DLL, 0, 0, v8, v19, a3);
    v28 = sub_1B0DB832C(v8, v19, a3, a4, a5, a6, a7);
    v52 = v29;
    v55 = v30;

    v65 = v41;
    *v64 = v42;
    *&v66 = v46;
    *(&v66 + 1) = v45;
    *&v67 = v44;
    BYTE8(v67) = v43;
    BYTE9(v67) = v40;
    *&v68 = v28;
    *(&v68 + 1) = v52;
    v69 = v55;

    sub_1B0DFE880(0x3AuLL, 0xE100000000000000, 0, 0, v8, v19, a3);
    if (v48 < a3)
    {
      sub_1B0DFA19C(v8, v58);
      sub_1B0DFF2E8(v58[0], v58[1], v59 | (v60 << 32) | (v61 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 2766);
      v11 = 0;
      v49 = v32;
      v53 = v33;

      sub_1B0DFE880(0x3AuLL, 0xE100000000000000, 0, 0, v8, v19, a3);
      goto LABEL_22;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v31 = a3;
    swift_willThrow();

    sub_1B0DC20F8(v64);
LABEL_15:

    goto LABEL_16;
  }

  __break(1u);
LABEL_22:

  sub_1B0DB80B4(v63);
  if (v11)
  {
    sub_1B0DC20F8(v64);

    swift_willThrow();
    goto LABEL_15;
  }

  v34 = v63[0];
  v35 = v63[1];
  LOBYTE(v62) = v69;
  v36 = v65;
  v37 = *v64;
  v38 = v68;
  v39 = v66;
  *(v47 + 48) = v67;
  *(v47 + 64) = v38;
  *(v47 + 16) = v36;
  *(v47 + 32) = v39;
  *v47 = v37;
  *(v47 + 80) = v62;
  *(v47 + 88) = v49;
  *(v47 + 96) = v53;
  *(v47 + 104) = v34;
  *(v47 + 112) = v35;
  return result;
}

unint64_t sub_1B0DB70F0@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
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
      swift_allocError();
      *v13 = a3;
      return swift_willThrow();
    }

    v7 = result;
    v8 = *result;
    v9 = *(result + 8);
    v10 = *(result + 16);
    v11 = *(result + 20);
    v12 = *(result + 22);
    sub_1B0436204(result);
    if (v5)
    {
      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
      return swift_willThrow();
    }

    sub_1B0441264(v7, v20);
    sub_1B0DFF2E8(v20[0], v20[1], v21 | (v22 << 32) | (v23 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 115);
    v14 = a4();
    v16 = v15;

    result = sub_1B0441810(61, 0xE100000000000000, v14, v16);
    *a5 = v14;
    *(a5 + 8) = v16;
    *(a5 + 16) = result;
    *(a5 + 24) = v17 & 1;
  }

  return result;
}

uint64_t sub_1B0DB72C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  sub_1B0DFE880(0x2BuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7640, &unk_1B0EF5140);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B0EC1E50;
    v16 = swift_allocObject();
    v16[2] = a4;
    v16[3] = a5;
    v16[4] = a6;
    v16[5] = a7;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1B0DC3CDC;
    *(v17 + 24) = v16;
    *(inited + 32) = sub_1B0DC3CFC;
    *(inited + 40) = v17;
    v18 = swift_allocObject();
    v18[2] = a4;
    v18[3] = a5;
    v18[4] = a6;
    v18[5] = a7;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1B0DC3D14;
    *(v19 + 24) = v18;
    *(inited + 48) = sub_1B0DC3E50;
    *(inited + 56) = v19;
    *(inited + 64) = sub_1B0DB7818;
    *(inited + 72) = 0;
    swift_retain_n();
    sub_1B0D94304(inited, a1, a2, v12, 0xD000000000000020, 0x80000001B0F2FA10, 323);
    v12 = v21;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
    swift_arrayDestroy();
  }

  return v12;
}

uint64_t sub_1B0DB751C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (!v6)
  {
    if (v7 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v14 = a3;
    }

    else
    {
      v9 = result;
      v3 = *result;
      v10 = *(result + 8);
      v11 = *(result + 16);
      v12 = *(result + 20);
      v13 = *(result + 22);
      sub_1B0436204(result);
      if (!v4)
      {
        sub_1B0DC0C0C(v9, a2, a3);
        v3 = v15;
        v17 = v16;
        sub_1B0448078(v9, a2, a3);
        if (HIDWORD(v17) == v17)
        {
          sub_1B0436554();
          swift_allocError();
          *v18 = 0x6E776F6E6B6E55;
          v18[1] = 0xE700000000000000;
          v18[2] = 0xD000000000000020;
          v18[3] = 0x80000001B0F2FA10;
          v18[4] = 297;
          swift_willThrow();
        }

        return v3;
      }

      *v9 = v3;
      *(v9 + 8) = v10;
      *(v9 + 16) = v11;
      *(v9 + 20) = v12;
      *(v9 + 22) = v13;
    }

    swift_willThrow();
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1B0DB76BC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = __OFADD__(a2, 1);
  v11 = a2 + 1;
  if (!v10)
  {
    if (v11 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
    }

    else
    {
      v13 = result;
      v15 = *result;
      v16 = result[1];
      v17 = *(result + 4);
      v8 = *(result + 10);
      v18 = *(result + 22);
      sub_1B0436204(result);
      if (!v7)
      {
        v8 = sub_1B0441A0C(v13, a2, a3, a4, a5, a6, a7);
        sub_1B0448078(v13, a2, a3);
        return v8;
      }

      *v13 = v15;
      *(v13 + 8) = v16;
      *(v13 + 16) = v17;
      *(v13 + 20) = v8;
      *(v13 + 22) = v18;
    }

    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

double sub_1B0DB7818@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B0448078(a1, *a2, a2[1]);
  if (!v3)
  {
    result = -3.10503618e231;
    *a3 = xmmword_1B0EF5030;
    *(a3 + 16) = 0xE000000000000000;
    *(a3 + 24) = 0;
  }

  return result;
}

uint64_t *sub_1B0DB7860(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v6 = result;
    if (v4 >= a3)
    {
      sub_1B0439BCC();
      v13 = swift_allocError();
      *v14 = a3;
    }

    else
    {
      v7 = *result;
      v8 = result[1];
      v9 = *(result + 4);
      v10 = *(result + 10);
      v11 = *(result + 22);

      sub_1B0DC2934(v6, v4, a3);
      v13 = v3;
      if (!v3)
      {
        v19 = v12;

        goto LABEL_16;
      }

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
    }

    swift_willThrow();
    v20 = v13;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v20 = v13;
      v16 = v13;
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v4 < a3)
    {
      sub_1B0DC3848(v6);
      v19 = v18;
LABEL_16:

      return v19;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v17 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t *sub_1B0DB7AD0(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v6 = result;
    if (v4 >= a3)
    {
      sub_1B0439BCC();
      v13 = swift_allocError();
      *v14 = a3;
    }

    else
    {
      v7 = *result;
      v8 = result[1];
      v9 = *(result + 4);
      v10 = *(result + 10);
      v11 = *(result + 22);

      v12 = sub_1B0DB7860(v6, v4, a3);
      v13 = v3;
      if (!v3)
      {
        v19 = v12;

        goto LABEL_16;
      }

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
    }

    swift_willThrow();
    v20 = v13;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v20 = v13;
      v16 = v13;
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v4 < a3)
    {
      sub_1B0DC39F4(v6);
      v19 = v18;
LABEL_16:

      return v19;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v17 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t *sub_1B0DB7D70(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
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
    v21 = *(result + 10);
    v22 = *(result + 4);
    v20 = *(result + 22);

    sub_1B0DB7EA8(v11, v9, a3, a4, a5, a6, a7, a8, &v23);
    if (v8)
    {

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v22;
      *(v11 + 20) = v21;
      *(v11 + 22) = v20;
      return swift_willThrow();
    }

    return v23;
  }

  return result;
}

char *sub_1B0DB7EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X7>, uint64_t *a9@<X8>)
{
  v38 = MEMORY[0x1E69E7CC0];

  a8(a1, &v38, a2, a3, a4, a5, a6, a7);
  if (v9)
  {
  }

  else
  {

    v20 = v38;
    v21 = *(v38 + 16);
    if (v21)
    {
      v22 = 0;
      v37 = v38 + 32;
      v23 = MEMORY[0x1E69E7CC0];
      while (v22 < *(v20 + 16))
      {
        v24 = a9;
        v25 = *(v37 + 8 * v22);
        v26 = *(v25 + 16);
        v27 = *(v23 + 2);
        v28 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          goto LABEL_22;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v28 > *(v23 + 3) >> 1)
        {
          if (v27 <= v28)
          {
            v29 = v27 + v26;
          }

          else
          {
            v29 = v27;
          }

          result = sub_1B0C0C114(result, v29, 1, v23);
          v23 = result;
        }

        a9 = v24;
        if (*(v25 + 16))
        {
          v30 = *(v23 + 2);
          if ((*(v23 + 3) >> 1) - v30 < v26)
          {
            goto LABEL_24;
          }

          memcpy(&v23[v30 + 32], (v25 + 32), v26);

          if (v26)
          {
            v31 = *(v23 + 2);
            v32 = __OFADD__(v31, v26);
            v33 = v31 + v26;
            if (v32)
            {
              goto LABEL_25;
            }

            *(v23 + 2) = v33;
          }
        }

        else
        {

          if (v26)
          {
            goto LABEL_23;
          }
        }

        if (v21 == ++v22)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }

    else
    {
LABEL_20:

      v34 = sub_1B0E44C68();
      v36 = v35;

      *a9 = v34;
      a9[1] = v36;
    }
  }

  return result;
}

void sub_1B0DB80B4(uint64_t *a1@<X8>)
{
  v2 = ByteBuffer.readSlice(length:)(0x20uLL);
  if (!v2)
  {
    sub_1B0D3EA30();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v5 = v3;
  v6 = HIDWORD(v3);
  v7 = v3;
  if (HIDWORD(v3) < v3)
  {
    goto LABEL_20;
  }

  v8 = (v4 >> 24) & 0xFFFF00 | BYTE6(v4);
  if (v6 <= (v4 - v8))
  {
    v9 = v2;
    swift_beginAccess();
    if (v7 == v6)
    {
LABEL_5:
      swift_beginAccess();
      v10 = sub_1B0E44C68();
      v12 = v11;

      *a1 = v10;
      a1[1] = v12;
      return;
    }

    v13 = 0;
    while (v7 + v13 < v6)
    {
      if ((v6 - v5) <= v13)
      {
        goto LABEL_19;
      }

      if ((*(*(v9 + 24) + v8 + v7 + v13) - 58) < 0xF6u)
      {
        v14 = *(*(v9 + 24) + v8 + v7 + v13) - 65;
        v15 = v14 > 0x25;
        v16 = (1 << v14) & 0x3F0000003FLL;
        if (v15 || v16 == 0)
        {
          sub_1B0E46298();

          swift_beginAccess();

          v18 = sub_1B0E44C68();
          v20 = v19;

          MEMORY[0x1B2726E80](v18, v20);

          sub_1B0436554();
          swift_allocError();
          *v21 = 0xD00000000000001BLL;
          v21[1] = 0x80000001B0F302A0;
          v21[2] = 0xD000000000000020;
          v21[3] = 0x80000001B0F2FA10;
          v21[4] = 498;
          swift_willThrow();

          return;
        }
      }

      ++v13;
      if (!(v7 - v6 + v13))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1B0DB832C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7620, &unk_1B0EF5120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC4E20;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B0DC37B0;
  *(v15 + 24) = v14;
  *(inited + 32) = sub_1B0DC37D0;
  *(inited + 40) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0DC37E8;
  *(v17 + 24) = v16;
  *(inited + 48) = sub_1B0DC3E38;
  *(inited + 56) = v17;
  *(inited + 64) = sub_1B0DB86E0;
  *(inited + 72) = 0;
  *(inited + 80) = sub_1B0DB8738;
  *(inited + 88) = 0;
  swift_retain_n();
  sub_1B0D945E0(inited, a1, a2, a3, 0xD000000000000020, 0x80000001B0F2FA10, 567);
  if (v22)
  {
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
    return swift_arrayDestroy();
  }

  else
  {
    v20 = v18;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
    swift_arrayDestroy();
    return v20;
  }
}

uint64_t *sub_1B0DB8564(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1B0DFE880(0x2B74696D627573uLL, 0xE700000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    return sub_1B0DB7D70(a1, a2, a3, a4, a5, a6, a7, sub_1B0E08010);
  }

  return result;
}

uint64_t *sub_1B0DB8624(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1B0DFE880(0x2B72657375uLL, 0xE500000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    return sub_1B0DB7D70(a1, a2, a3, a4, a5, a6, a7, sub_1B0E08010);
  }

  return result;
}

uint64_t sub_1B0DB86E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B0DFE880(0x7265737568747561uLL, 0xE800000000000000, 0, 0, a1, *a2, a2[1]);
  if (!v3)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
  }

  return result;
}

double sub_1B0DB8738@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B0DFE880(0x756F6D796E6F6E61uLL, 0xE900000000000073, 0, 0, a1, *a2, a2[1]);
  if (!v3)
  {
    *&result = 1;
    *a3 = xmmword_1B0ECE570;
    *(a3 + 16) = 2;
  }

  return result;
}

uint64_t sub_1B0DB879C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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
    sub_1B0DFACB0(result, v17);
    if (v4)
    {
      *v7 = v9;
      *(v7 + 8) = v10;
      *(v7 + 16) = v11;
      *(v7 + 20) = v12;
      *(v7 + 22) = v13;
      return swift_willThrow();
    }

    sub_1B0DFF2E8(v17[0], v17[1], v18 | (v19 << 32) | (v20 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 628);
    v16 = a4();

    return v16;
  }

  return result;
}

uint64_t sub_1B0DB88F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = sub_1B0DB5660(a1, a2, a3, a4);
  if (v4)
  {
    return result;
  }

  v7 = result;
  result = sub_1B0D8ADBC(result, v6);
  if (!v8)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 92 && v8 == 0xE100000000000000)
  {

    return v7;
  }

  v9 = sub_1B0E46A78();

  result = v7;
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1B0DB89A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, char **a7@<X8>, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42F8, &unk_1B0EC4E40);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B0EC1E70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7610, &qword_1B0EF5110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC3500;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1B0DC1F08;
  *(v16 + 24) = v15;
  *(inited + 32) = sub_1B0DC1F28;
  *(inited + 40) = v16;
  v17 = swift_allocObject();
  v52 = a2;
  v53 = a4;
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v51 = a5;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B0DC1F44;
  *(v18 + 24) = v17;
  *(inited + 48) = sub_1B0DC3E20;
  *(inited + 56) = v18;
  swift_retain_n();
  sub_1B0D948B8(inited, a1, a6, a8, 0xD000000000000020, 0x80000001B0F2FA10, 600);
  if (v56)
  {
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
    swift_arrayDestroy();
    *(v13 + 16) = 0;
  }

  v22 = v19;
  v23 = v20;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
  result = swift_arrayDestroy();
  *(v13 + 32) = v22;
  *(v13 + 40) = v23;
  if (__OFADD__(a6, 1))
  {
    __break(1u);
  }

  else
  {
    v24 = a8;
    if (a6 + 1 >= a8)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v44 = a8;
    }

    else
    {
      v25 = *a1;
      v26 = a1[1];
      v27 = *(a1 + 4);
      v28 = *(a1 + 10);
      v29 = a6 + 2;
      v30 = *(a1 + 22);

      if (a6 + 2 < a8)
      {
        v49 = a1;
        v50 = a3;
        v31 = v53;
        while (1)
        {

          sub_1B0DFE880(0x20uLL, 0xE100000000000000, 0, 0, a1, v29, v24);
          v55 = v13;
          v32 = swift_initStackObject();
          *(v32 + 16) = xmmword_1B0EC3500;
          v33 = swift_allocObject();
          v33[2] = v52;
          v33[3] = v50;
          v33[4] = v31;
          v33[5] = v51;
          v34 = swift_allocObject();
          *(v34 + 16) = sub_1B0DC3E68;
          *(v34 + 24) = v33;
          *(v32 + 32) = sub_1B0DC3E20;
          *(v32 + 40) = v34;
          v35 = swift_allocObject();
          v35[2] = v52;
          v35[3] = v50;
          v35[4] = v31;
          v35[5] = v51;
          v36 = swift_allocObject();
          *(v36 + 16) = sub_1B0DC3E80;
          *(v36 + 24) = v35;
          *(v32 + 48) = sub_1B0DC3E20;
          *(v32 + 56) = v36;
          a1 = v49;
          swift_retain_n();
          sub_1B0D948B8(v32, v49, v29, a8, 0xD000000000000020, 0x80000001B0F2FA10, 600);
          v38 = v37;
          v40 = v39;
          swift_setDeallocating();
          swift_arrayDestroy();

          v13 = v55;
          v42 = *(v55 + 16);
          v41 = *(v55 + 24);
          if (v42 >= v41 >> 1)
          {
            v13 = sub_1B0AFF1F4((v41 > 1), v42 + 1, 1, v55);
          }

          v31 = v53;
          *(v13 + 16) = v42 + 1;
          v43 = v13 + 16 * v42;
          *(v43 + 32) = v38;
          *(v43 + 40) = v40;
          v24 = a8;
        }
      }

      sub_1B0439BCC();
      v45 = swift_allocError();
      *v46 = a8;
      swift_willThrow();
      v47 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {

        *a7 = v13;
        return result;
      }

      *a1 = v25;
      a1[1] = v26;
      *(a1 + 4) = v27;
      *(a1 + 10) = v28;
      *(a1 + 22) = v30;
    }

    swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0DB8FBC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7610, &qword_1B0EF5110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC3500;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B0DC3E68;
  *(v15 + 24) = v14;
  *(inited + 32) = sub_1B0DC3E20;
  *(inited + 40) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0DC3E80;
  *(v17 + 24) = v16;
  *(inited + 48) = sub_1B0DC3E20;
  *(inited + 56) = v17;
  swift_retain_n();
  sub_1B0D948B8(inited, a1, a2, a3, 0xD000000000000020, 0x80000001B0F2FA10, 600);
  if (v22)
  {
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
    return swift_arrayDestroy();
  }

  else
  {
    v20 = v18;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
    swift_arrayDestroy();
    return v20;
  }
}

uint64_t *sub_1B0DB91C4(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

    sub_1B0DB92EC(v10, v8, a3, a4, a5, a6, a7, &v21);
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

uint64_t sub_1B0DB92EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  result = sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v54 = a8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E37F8, &qword_1B0EA2E00);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1B0EC1E70;
    sub_1B0DB3AC0(a1, a2, a3, a4, a5, a6, a7);
    v55 = a1;
    v56 = v18;
    v50 = a4;
    v51 = a5;
    v52 = a6;
    v53 = a7;
    v57 = a2;
    swift_beginAccess();
    v19 = sub_1B0E44C68();
    v21 = v20;

    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    v22 = v57;
    if (__OFADD__(v57, 1))
    {
      __break(1u);
    }

    else
    {
      v23 = a3;
      if (v57 + 1 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v40 = a3;
      }

      else
      {
        v24 = a1;
        v25 = *(a1 + 8);
        v47 = *(a1 + 20);
        v48 = *(a1 + 16);
        v46 = *(a1 + 22);
        v49 = *a1;

        if (v57 + 2 >= v23)
        {
          sub_1B0439BCC();
          v41 = swift_allocError();
          *v42 = v23;
        }

        else
        {
          v26 = *a1;
          v27 = *(a1 + 8);
          v28 = *(a1 + 16);
          v29 = *(a1 + 20);
          v30 = *(a1 + 22);
          if (v57 + 3 < v23)
          {
            v31 = v18;
            do
            {
              v32 = v23;
              v33 = v31;
              swift_retain_n();
              sub_1B0436204(v24);

              sub_1B0DB3AC0(v24, v57 + 2, v32, v50, v51, v52, v53);
              swift_beginAccess();
              v34 = sub_1B0E44C68();
              v36 = v35;

              v31 = v33;
              v38 = *(v33 + 2);
              v37 = *(v33 + 3);
              if (v38 >= v37 >> 1)
              {
                v31 = sub_1B0AFF0E8((v37 > 1), v38 + 1, 1, v33);
              }

              v23 = 0;
              *(v31 + 2) = v38 + 1;
              v39 = &v31[16 * v38];
              *(v39 + 4) = v34;
              *(v39 + 5) = v36;
              v24 = v55;
              v18 = v56;
              v26 = *v55;
              v27 = *(v55 + 8);
              v28 = *(v55 + 16);
              v29 = *(v55 + 20);
              v30 = *(v55 + 22);
              v22 = v57;
            }

            while (v57 + 3 < 0);
          }

          sub_1B0439BCC();
          v43 = swift_allocError();
          *v44 = v23;

          swift_willThrow();

          *v24 = v26;
          *(v24 + 8) = v27;
          *(v24 + 16) = v28;
          *(v24 + 20) = v29;
          *(v24 + 22) = v30;
          v41 = v43;
        }

        swift_willThrow();
        v45 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
        if (swift_dynamicCast())
        {

          result = sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v24, v22, v23);
          *v54 = v18;
          return result;
        }

        *v24 = v49;
        *(v24 + 8) = v25;
        *(v24 + 16) = v48;
        *(v24 + 20) = v47;
        *(v24 + 22) = v46;
      }

      swift_willThrow();
    }
  }

  return result;
}

void sub_1B0DB9808(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      v19 = swift_allocError();
      *v20 = a3;
    }

    else
    {
      v13 = *a1;
      v14 = a1[1];
      v15 = *(a1 + 4);
      v16 = *(a1 + 10);
      v17 = *(a1 + 22);

      sub_1B0DB9DD0(a1, v9, a3, a4, a5, a6, a7, v53);
      v19 = v8;
      if (!v8)
      {
        v67 = v53[8];
        v68 = v53[9];
        v69 = v53[10];
        v70 = v53[11];
        v63 = v53[4];
        v64 = v53[5];
        v65 = v53[6];
        v66 = v53[7];
        v59 = v53[0];
        v60 = v53[1];
        v61 = v53[2];
        v62 = v53[3];

LABEL_15:
        v30 = v68;
        a8[8] = v67;
        a8[9] = v30;
        v31 = v70;
        a8[10] = v69;
        a8[11] = v31;
        v32 = v64;
        a8[4] = v63;
        a8[5] = v32;
        v33 = v66;
        a8[6] = v65;
        a8[7] = v33;
        v34 = v60;
        *a8 = v59;
        a8[1] = v34;
        v35 = v62;
        a8[2] = v61;
        a8[3] = v35;
        return;
      }

      *a1 = v13;
      a1[1] = v14;
      *(a1 + 4) = v15;
      *(a1 + 10) = v16;
      *(a1 + 22) = v17;
    }

    swift_willThrow();
    v52 = v19;
    v21 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v52 = v19;
      v22 = v19;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }
    }

    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v23 = a3;
      swift_willThrow();
      return;
    }

    sub_1B0DB9B5C(a1, v9, a3, a4, a5, a6, a7, v54);
    v24 = v54[0];
    v25 = v54[1];
    v26 = v55;
    v27 = v56;
    v28 = v57;
    v29 = v58;

    *&v40 = v24;
    *(&v40 + 1) = v25;
    LODWORD(v41) = v26;
    BYTE4(v41) = v27;
    *(&v41 + 1) = v28;
    *&v42 = v29;
    sub_1B0DC2068(&v40);
    v67 = v48;
    v68 = v49;
    v69 = v50;
    v70 = v51;
    v63 = v44;
    v64 = v45;
    v65 = v46;
    v66 = v47;
    v59 = v40;
    v60 = v41;
    v61 = v42;
    v62 = v43;
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t *sub_1B0DB9B5C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
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
    }

    else
    {
      v11 = result;
      v12 = result[1];
      v31 = *(result + 10);
      v32 = *(result + 4);
      v30 = *(result + 22);
      v33 = *result;
      if (a2 + 2 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v20 = a3;
      }

      else
      {
        swift_retain_n();
        v17 = sub_1B0DB7D70(v11, v9 + 1, a3, a4, a5, a6, a7, sub_1B0E069F4);
        if (!v8)
        {
          v27 = v17;
          v28 = v18;
          sub_1B0E03A64(v11, v9 + 1, a3);
          v26 = v21;

          sub_1B0E03894(v11, v9, a3, a4, a5, a6, a7);
          v23 = v22;
          v25 = v24;

          *a8 = v27;
          *(a8 + 8) = v28;
          *(a8 + 16) = v26;
          *(a8 + 20) = BYTE4(v26) & 1;
          *(a8 + 24) = v23;
          *(a8 + 32) = v25;
          return result;
        }
      }

      swift_willThrow();
      *v11 = v33;
      *(v11 + 8) = v12;
      *(v11 + 16) = v32;
      *(v11 + 20) = v31;
      *(v11 + 22) = v30;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0DB9DD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_1B0DB69C8(a1, a2, a3, a4, a5, a6, a7, v55);
  if (!v8)
  {
    v52 = v55[2];
    v53 = v55[3];
    v54 = v56;
    v50 = v55[0];
    v51 = v55[1];
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
        v49 = v19;
        v21 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
        if (!swift_dynamicCast())
        {
          sub_1B0DC2084(v55);
        }

        v22 = 0;
        v23 = 0;
        v24 = 0;
        v29 = 0uLL;
        v30 = 0uLL;
        v28 = 0uLL;
        v27 = 0uLL;
        v26 = 0uLL;
        v25 = 0uLL;
      }

      else
      {

        sub_1B0DB6B14(a1, v18, a3, a4, a5, a6, a7, v57);
        v41 = v57[0];
        v42 = v57[1];
        v39 = v57[2];
        v40 = v57[3];
        v37 = v57[4];
        v38 = v57[5];
        v22 = v58;
        v23 = v59;
        v24 = v60;

        v26 = v37;
        v25 = v38;
        v28 = v39;
        v27 = v40;
        v29 = v41;
        v30 = v42;
      }

      v45 = v52;
      v46 = v53;
      *v47 = v54;
      v43 = v50;
      v44 = v51;
      *&v47[8] = v29;
      *&v47[24] = v30;
      *&v47[40] = v28;
      *&v47[56] = v27;
      *&v47[72] = v26;
      *&v47[88] = v25;
      *&v47[104] = v22;
      *&v48 = v23;
      *(&v48 + 1) = v24;
      result = sub_1B0DC20D8(&v43);
      v31 = *&v47[80];
      a8[8] = *&v47[64];
      a8[9] = v31;
      v32 = v48;
      a8[10] = *&v47[96];
      a8[11] = v32;
      v33 = *&v47[16];
      a8[4] = *v47;
      a8[5] = v33;
      v34 = *&v47[48];
      a8[6] = *&v47[32];
      a8[7] = v34;
      v35 = v44;
      *a8 = v43;
      a8[1] = v35;
      v36 = v46;
      a8[2] = v45;
      a8[3] = v36;
    }
  }

  return result;
}

uint64_t *sub_1B0DBA0A8(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

    sub_1B0DB7EA8(v10, v8, a3, a4, a5, a6, a7, sub_1B0E07254, &v21);
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

void sub_1B0DBA1E4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  sub_1B0DFE880(0x3D485455413BuLL, 0xE600000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v27 = a5;
    v26 = a8;
    v17 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (v17 >= a3)
      {
        sub_1B0439BCC();
        v18 = swift_allocError();
        *v19 = a3;
        swift_willThrow();
        v28 = v18;
        v20 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
        if (swift_dynamicCast())
        {
        }

        else
        {

          v28 = v18;
          v21 = v18;
          if ((swift_dynamicCast() & 1) == 0)
          {

            return;
          }
        }

        if (v17 >= a3)
        {
          sub_1B0439BCC();
          swift_allocError();
          *v22 = a3;
          swift_willThrow();
          return;
        }

        v23 = sub_1B0DBA0A8(a1, v17, a3, a4, v27, a6, a7);
        v24 = v25;
      }

      else
      {

        sub_1B0DFE880(0x2AuLL, 0xE100000000000000, 0, 0, a1, v17, a3);

        v23 = 0;
        v24 = 0;
      }

      *v26 = v23;
      v26[1] = v24;
    }
  }
}