uint64_t sub_2143D6EA8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v17 = v2;
  v18 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    memcpy(__dst, v5, 0x121uLL);
    memcpy(v12, v5, 0x121uLL);
    memcpy(v14, v6, 0x121uLL);
    memcpy(__src, v6, 0x121uLL);
    sub_21430B818(__dst, v10);
    sub_21430B818(v14, v10);
    v8 = sub_2144D2170(v12, __src);
    memcpy(v15, __src, 0x121uLL);
    sub_21430B698(v15);
    memcpy(v16, v12, 0x121uLL);
    sub_21430B698(v16);
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 296;
    v5 += 296;
  }

  return 1;
}

uint64_t sub_2143D6FD4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v79 = v2;
  v80 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[7];
    v9 = v5[9];
    v62 = v5[8];
    v63 = v9;
    v10 = v5[3];
    v11 = v5[5];
    v58 = v5[4];
    v59 = v11;
    v12 = v5[5];
    v13 = v5[7];
    v60 = v5[6];
    v61 = v13;
    v14 = v5[1];
    v55[0] = *v5;
    v55[1] = v14;
    v15 = v5[3];
    v17 = *v5;
    v16 = v5[1];
    v56 = v5[2];
    v57 = v15;
    v18 = v5[9];
    v52 = v62;
    v53 = v18;
    v48 = v58;
    v49 = v12;
    v50 = v60;
    v51 = v8;
    v44 = v17;
    v45 = v16;
    v46 = v56;
    v47 = v10;
    v19 = v6[7];
    v20 = v6[9];
    v72 = v6[8];
    v73 = v20;
    v21 = v6[3];
    v22 = v6[5];
    v68 = v6[4];
    v69 = v22;
    v23 = v6[5];
    v24 = v6[7];
    v70 = v6[6];
    v71 = v24;
    v25 = v6[1];
    v65[0] = *v6;
    v65[1] = v25;
    v26 = v6[3];
    v28 = *v6;
    v27 = v6[1];
    v66 = v6[2];
    v67 = v26;
    v29 = v6[9];
    v41 = v72;
    v42 = v29;
    v37 = v68;
    v38 = v23;
    v39 = v70;
    v40 = v19;
    v33 = v28;
    v34 = v27;
    v64 = *(v5 + 20);
    v54 = *(v5 + 20);
    v74 = *(v6 + 20);
    v43 = *(v6 + 20);
    v35 = v66;
    v36 = v21;
    sub_2143DA3B8(v55, v32);
    sub_2143DA3B8(v65, v32);
    v30 = sub_2144D2984(&v44, &v33);
    v75[8] = v41;
    v75[9] = v42;
    v76 = v43;
    v75[4] = v37;
    v75[5] = v38;
    v75[6] = v39;
    v75[7] = v40;
    v75[0] = v33;
    v75[1] = v34;
    v75[2] = v35;
    v75[3] = v36;
    sub_2143DA414(v75);
    v77[8] = v52;
    v77[9] = v53;
    v78 = v54;
    v77[4] = v48;
    v77[5] = v49;
    v77[6] = v50;
    v77[7] = v51;
    v77[0] = v44;
    v77[1] = v45;
    v77[2] = v46;
    v77[3] = v47;
    sub_2143DA414(v77);
    if ((v30 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 168);
    v5 = (v5 + 168);
  }

  return 1;
}

uint64_t sub_2143D71CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutProtobuf(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_2143DA4B8(v13, v10, type metadata accessor for WorkoutProtobuf);
      sub_2143DA4B8(v14, v7, type metadata accessor for WorkoutProtobuf);
      v16 = *(v4 + 20);
      v17 = *&v10[v16];
      v18 = *&v7[v16];
      if (v17 != v18)
      {

        v19 = sub_214432358(v17, v18);

        if ((v19 & 1) == 0)
        {
          break;
        }
      }

      sub_2146D8DF8();
      sub_2143DA5E8(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      if ((sub_2146D9578() & 1) == 0)
      {
        break;
      }

      sub_2143DA520(v7, type metadata accessor for WorkoutProtobuf);
      sub_2143DA520(v10, type metadata accessor for WorkoutProtobuf);
      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    sub_2143DA520(v7, type metadata accessor for WorkoutProtobuf);
    sub_2143DA520(v10, type metadata accessor for WorkoutProtobuf);
  }

  return 0;
}

uint64_t sub_2143D7490(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2143D74EC(uint64_t a1, uint64_t a2)
{
  v86 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = *(a1 + 112);
  *v78 = *(a1 + 96);
  *&v78[16] = v3;
  v79 = *(a1 + 128);
  v4 = *(a1 + 48);
  v74 = *(a1 + 32);
  v75 = v4;
  v5 = *(a1 + 80);
  v76 = *(a1 + 64);
  v77 = v5;
  v6 = *(a2 + 48);
  v80 = *(a2 + 32);
  v81 = v6;
  v7 = *(a2 + 64);
  v8 = *(a2 + 80);
  v9 = *(a2 + 96);
  v10 = *(a2 + 112);
  v85 = *(a2 + 128);
  *v84 = v9;
  *&v84[16] = v10;
  v82 = v7;
  v83 = v8;
  if (v74 != v80)
  {
    return 0;
  }

  v11 = 0;
  v12 = (a2 + 136);
  v13 = (a1 + 136);
  while (1)
  {
    if (BYTE8(v74))
    {
      if ((BYTE8(v80) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((BYTE8(v80) & 1) != 0 || DWORD1(v74) != DWORD1(v80))
    {
      return 0;
    }

    v14 = *(&v76 + 1);
    if (*(&v76 + 1) >> 60 == 15)
    {
      break;
    }

    v15 = *(&v82 + 1);
    if (*(&v82 + 1) >> 60 == 15)
    {
      break;
    }

    v16 = v76;
    v17 = v82;
    v18 = *(&v76 + 1) >> 62;
    v19 = *(&v82 + 1) >> 62;
    if (*(&v76 + 1) >> 62 == 3)
    {
      v20 = 0;
      if (v76 == __PAIR128__(0xC000000000000000, 0) && *(&v82 + 1) >> 62 == 3)
      {
        v20 = 0;
        if (v82 == __PAIR128__(0xC000000000000000, 0))
        {
          goto LABEL_39;
        }
      }

LABEL_27:
      if (v19 <= 1)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v26 = *(v76 + 16);
        v25 = *(v76 + 24);
        v23 = __OFSUB__(v25, v26);
        v20 = v25 - v26;
        if (v23)
        {
          goto LABEL_125;
        }

        goto LABEL_27;
      }

      v20 = 0;
      if (v19 <= 1)
      {
        goto LABEL_28;
      }
    }

    else if (v18)
    {
      LODWORD(v20) = DWORD1(v76) - v76;
      if (__OFSUB__(DWORD1(v76), v76))
      {
        goto LABEL_124;
      }

      v20 = v20;
      if (v19 <= 1)
      {
LABEL_28:
        if (v19)
        {
          LODWORD(v24) = DWORD1(v82) - v82;
          if (__OFSUB__(DWORD1(v82), v82))
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
          }

          v24 = v24;
        }

        else
        {
          v24 = BYTE14(v82);
        }

        goto LABEL_34;
      }
    }

    else
    {
      v20 = BYTE14(v76);
      if (v19 <= 1)
      {
        goto LABEL_28;
      }
    }

LABEL_21:
    if (v19 != 2)
    {
      if (v20)
      {
        return 0;
      }

LABEL_39:
      sub_2142EB200(&v74, v73);
      sub_2142EB200(&v80, v73);
      goto LABEL_60;
    }

    v22 = *(v82 + 16);
    v21 = *(v82 + 24);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if (v23)
    {
      goto LABEL_121;
    }

LABEL_34:
    if (v20 != v24)
    {
      return 0;
    }

    if (v20 < 1)
    {
      goto LABEL_39;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v70 = v11;
        v27 = *(v76 + 16);
        v68 = *(v76 + 24);
        sub_213FDCA18(v82, *(&v82 + 1));
        sub_2142EB200(&v74, v73);
        sub_2142EB200(&v80, v73);
        sub_213FDCA18(v17, v15);
        sub_2142EB0A8(&v74, v73);
        sub_2142EB0A8(&v80, v73);
        sub_213FDCA18(v16, v14);
        v28 = sub_2146D8728();
        if (v28)
        {
          v29 = sub_2146D8758();
          if (__OFSUB__(v27, v29))
          {
            goto LABEL_132;
          }

          v28 += v27 - v29;
        }

        if (__OFSUB__(v68, v27))
        {
          goto LABEL_129;
        }

        sub_2146D8748();
        v30 = v28;
        v31 = v17;
        v32 = v15;
        v11 = v70;
        goto LABEL_56;
      }

      *(v72 + 6) = 0;
      v72[0] = 0;
      sub_213FDCA18(v82, *(&v82 + 1));
      sub_2142EB200(&v74, v73);
      sub_2142EB200(&v80, v73);
      sub_213FDCA18(v17, v15);
      sub_2142EB0A8(&v74, v73);
      sub_2142EB0A8(&v80, v73);
    }

    else
    {
      if (v18)
      {
        if (v76 >> 32 < v76)
        {
          goto LABEL_128;
        }

        sub_213FDCA18(v82, *(&v82 + 1));
        sub_2142EB200(&v74, v73);
        sub_2142EB200(&v80, v73);
        sub_213FDCA18(v17, v15);
        sub_2142EB0A8(&v74, v73);
        sub_2142EB0A8(&v80, v73);
        sub_213FDCA18(v16, v14);
        v33 = sub_2146D8728();
        if (v33)
        {
          v34 = sub_2146D8758();
          if (__OFSUB__(v16, v34))
          {
            goto LABEL_133;
          }

          v33 += v16 - v34;
        }

        sub_2146D8748();
        v30 = v33;
        v31 = v17;
        v32 = v15;
LABEL_56:
        sub_2143D9A20(v30, v31, v32, v73);
        sub_213FDC6BC(v17, v15);
        sub_213FDC6BC(v16, v14);
        sub_213FDC6BC(v17, v15);
        v35 = v73[0];
        sub_2142EB000(&v80);
        sub_2142EB000(&v74);
        if ((v35 & 1) == 0)
        {
          goto LABEL_118;
        }

        goto LABEL_60;
      }

      LODWORD(v72[0]) = v76;
      WORD2(v72[0]) = WORD2(v76);
      *(v72 + 6) = *(&v76 + 6);
      sub_213FDCA18(v82, *(&v82 + 1));
      sub_2142EB200(&v74, v73);
      sub_2142EB200(&v80, v73);
      sub_213FDCA18(v17, v15);
      sub_2142EB0A8(&v74, v73);
      sub_2142EB0A8(&v80, v73);
    }

    sub_2143D9A20(v72, v17, v15, v73);
    sub_213FDC6BC(v17, v15);
    sub_213FDC6BC(v16, v14);
    sub_213FDC6BC(v17, v15);
    v36 = v73[0];
    sub_2142EB000(&v80);
    sub_2142EB000(&v74);
    if ((v36 & 1) == 0)
    {
      goto LABEL_118;
    }

LABEL_60:
    v37 = *&v78[16];
    if (*&v78[16] >> 60 == 15)
    {
      break;
    }

    v38 = *&v84[16];
    if (*&v84[16] >> 60 == 15)
    {
      break;
    }

    v39 = *&v78[8];
    v40 = *&v84[8];
    v41 = *&v78[16] >> 62;
    v42 = *&v84[16] >> 62;
    if (*&v78[16] >> 62 == 3)
    {
      v43 = 0;
      if (*&v78[8] == __PAIR128__(0xC000000000000000, 0) && *&v84[16] >> 62 == 3)
      {
        v43 = 0;
        if (*&v84[8] == __PAIR128__(0xC000000000000000, 0))
        {
          goto LABEL_88;
        }
      }

LABEL_76:
      if (v42 <= 1)
      {
        goto LABEL_77;
      }

      goto LABEL_70;
    }

    if (v41 > 1)
    {
      if (v41 == 2)
      {
        v48 = *(*&v78[8] + 16);
        v47 = *(*&v78[8] + 24);
        v23 = __OFSUB__(v47, v48);
        v43 = v47 - v48;
        if (v23)
        {
          goto LABEL_126;
        }

        goto LABEL_76;
      }

      v43 = 0;
      if (v42 <= 1)
      {
        goto LABEL_77;
      }
    }

    else if (v41)
    {
      LODWORD(v43) = *&v78[12] - *&v78[8];
      if (__OFSUB__(*&v78[12], *&v78[8]))
      {
        goto LABEL_127;
      }

      v43 = v43;
      if (v42 <= 1)
      {
LABEL_77:
        if (v42)
        {
          LODWORD(v46) = *&v84[12] - *&v84[8];
          if (__OFSUB__(*&v84[12], *&v84[8]))
          {
            goto LABEL_122;
          }

          v46 = v46;
        }

        else
        {
          v46 = v84[22];
        }

        goto LABEL_83;
      }
    }

    else
    {
      v43 = v78[22];
      if (v42 <= 1)
      {
        goto LABEL_77;
      }
    }

LABEL_70:
    if (v42 != 2)
    {
      if (v43)
      {
        goto LABEL_118;
      }

LABEL_88:
      sub_2142EB104(&v80);
      sub_2142EB104(&v74);
      goto LABEL_109;
    }

    v45 = *(*&v84[8] + 16);
    v44 = *(*&v84[8] + 24);
    v23 = __OFSUB__(v44, v45);
    v46 = v44 - v45;
    if (v23)
    {
      goto LABEL_123;
    }

LABEL_83:
    if (v43 != v46)
    {
LABEL_118:
      sub_2142EB104(&v80);
      sub_2142EB104(&v74);
      return 0;
    }

    if (v43 < 1)
    {
      goto LABEL_88;
    }

    if (v41 > 1)
    {
      if (v41 != 2)
      {
        *&v73[6] = 0;
        *v73 = 0;
        sub_213FDCA18(*&v78[8], *&v78[16]);
        sub_213FDCA18(v40, v38);
LABEL_108:
        sub_2143D9A20(v73, v40, v38, v72);
        sub_213FDC6BC(v39, v37);
        sub_213FDC6BC(v40, v38);
        sub_2142EB104(&v80);
        sub_2142EB104(&v74);
        if ((v72[0] & 1) == 0)
        {
          return 0;
        }

        goto LABEL_109;
      }

      v71 = v11;
      v49 = *(*&v78[8] + 16);
      v69 = *(*&v78[8] + 24);
      sub_213FDCA18(*&v78[8], *&v78[16]);
      sub_213FDCA18(v40, v38);
      v50 = sub_2146D8728();
      if (v50)
      {
        v51 = sub_2146D8758();
        if (__OFSUB__(v49, v51))
        {
          goto LABEL_134;
        }

        v50 += v49 - v51;
      }

      if (__OFSUB__(v69, v49))
      {
        goto LABEL_131;
      }

      sub_2146D8748();
      v52 = v50;
      v53 = v40;
      v54 = v38;
      v11 = v71;
    }

    else
    {
      if (!v41)
      {
        *v73 = *&v78[8];
        *&v73[8] = *&v78[16];
        *&v73[12] = *&v78[20];
        sub_213FDCA18(*&v78[8], *&v78[16]);
        sub_213FDCA18(v40, v38);
        goto LABEL_108;
      }

      if (*&v78[8] >> 32 < *&v78[8])
      {
        goto LABEL_130;
      }

      sub_213FDCA18(*&v78[8], *&v78[16]);
      sub_213FDCA18(v40, v38);
      v55 = sub_2146D8728();
      if (v55)
      {
        v56 = sub_2146D8758();
        if (__OFSUB__(v39, v56))
        {
          goto LABEL_135;
        }

        v55 += v39 - v56;
      }

      sub_2146D8748();
      v52 = v55;
      v53 = v40;
      v54 = v38;
    }

    sub_2143D9A20(v52, v53, v54, v73);
    sub_213FDC6BC(v39, v37);
    sub_213FDC6BC(v40, v38);
    sub_2142EB104(&v80);
    sub_2142EB104(&v74);
    if ((v73[0] & 1) == 0)
    {
      return 0;
    }

LABEL_109:
    if (v79)
    {
      if ((v85 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v85 & 1) != 0 || *&v78[28] != *&v84[28])
    {
      return 0;
    }

    if (!--v2)
    {
      return 1;
    }

    v57 = v13[5];
    *v78 = v13[4];
    *&v78[16] = v57;
    v58 = v13[1];
    v74 = *v13;
    v75 = v58;
    v59 = v13[3];
    v76 = v13[2];
    v77 = v59;
    v60 = v12[1];
    v80 = *v12;
    v81 = v60;
    v61 = v12[2];
    v62 = v12[3];
    v63 = v12[4];
    v64 = v12[5];
    v65 = *(v12 + 96);
    v12 = (v12 + 104);
    v66 = *(v13 + 96);
    v13 = (v13 + 104);
    v79 = v66;
    v85 = v65;
    *v84 = v63;
    *&v84[16] = v64;
    v82 = v61;
    v83 = v62;
    if (v74 != v80)
    {
      return 0;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2143D7F2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 96);
  for (i = (a1 + 96); ; i += 9)
  {
    v5 = *(i - 5);
    if (v5 == 1)
    {
      break;
    }

    v6 = *(v3 - 5);
    if (v6 == 1)
    {
      break;
    }

    v7 = *(i - 6);
    v8 = *(i - 3);
    v9 = *(i - 2);
    v10 = *i;
    v11 = *(v3 - 6);
    v13 = *(v3 - 3);
    v12 = *(v3 - 2);
    v14 = *v3;
    v16 = *(v3 - 1);
    v17 = *(i - 1);
    if (v5)
    {
      if (!v6 || (v7 != v11 || v5 != v6) && (sub_2146DA6A8() & 1) == 0)
      {
        return 0;
      }

      if (!v9)
      {
LABEL_22:
        if (v12)
        {
          return 0;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (v6)
      {
        return 0;
      }

      sub_213FDC9D0(v11, 0);
      sub_213FDC9D0(v7, 0);
      if (!v9)
      {
        goto LABEL_22;
      }
    }

    if (!v12 || (v8 != v13 || v9 != v12) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }

LABEL_23:
    if (v10)
    {
      if (!v14 || (v17 != v16 || v10 != v14) && (sub_2146DA6A8() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v14)
    {
      return 0;
    }

    v3 += 9;
    if (!--v2)
    {
      return 1;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

void sub_2143D80E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v9 = *(i - 2);
    v10 = *(i - 1);
    v11 = *i;
    v12 = *(v3 - 2);
    v13 = *(v3 - 1);
    v14 = *v3;
    if (v11 <= 2)
    {
      if (!*i)
      {
        if (*v3)
        {
          sub_2143DA468(*(v3 - 2), *(v3 - 1), *v3);
          v22 = v9;
          v23 = v10;
          v24 = 0;
          goto LABEL_36;
        }

        if (v9 != v12 || v10 != v13)
        {
          v5 = sub_2146DA6A8();
          sub_2143DA468(v12, v13, 0);
          sub_2143DA468(v9, v10, 0);
          sub_2143DA490(v9, v10, 0);
          v6 = v12;
          v7 = v13;
          v8 = 0;
          goto LABEL_6;
        }

        sub_2143DA468(*(i - 2), *(i - 1), 0);
        sub_2143DA468(v9, v10, 0);
        sub_2143DA490(v9, v10, 0);
        v15 = v9;
        v16 = v10;
        v17 = 0;
        goto LABEL_30;
      }

      if (v11 != 1)
      {
        v20 = *(v3 - 2);
        v21 = *(v3 - 1);
        if (v14 != 2)
        {
          sub_2143DA468(v20, v21, *v3);
          v22 = v9;
          v23 = v10;
          v24 = 2;
          goto LABEL_36;
        }

        sub_2143DA468(v20, v21, 2);
        sub_2143DA468(v9, v10, 2);
        sub_2143DA468(v12, v13, 2);
        sub_2143DA468(v9, v10, 2);
        v5 = sub_214464F80(v9, v12);
        sub_2143DA490(v9, v10, 2);
        sub_2143DA490(v12, v13, 2);
        sub_2143DA490(v12, v13, 2);
        v6 = v9;
        v7 = v10;
        v8 = 2;
        goto LABEL_6;
      }

      if (v14 != 1)
      {
        goto LABEL_32;
      }

      sub_2143DA490(*(i - 2), *(i - 1), 1);
      sub_2143DA490(v12, v13, 1);
      if (v9 != v12)
      {
        return;
      }

      goto LABEL_7;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 != 4)
    {
      if (v14 != 5 || v13 | v12)
      {
LABEL_32:
        v22 = *(v3 - 2);
        v23 = *(v3 - 1);
        v24 = *v3;
        goto LABEL_36;
      }

      sub_2143DA490(*(i - 2), *(i - 1), 5);
      v15 = 0;
      v16 = 0;
      v17 = 5;
LABEL_30:
      sub_2143DA490(v15, v16, v17);
      goto LABEL_7;
    }

    if (v14 != 4)
    {
      goto LABEL_32;
    }

    sub_2143DA490(*(i - 2), *(i - 1), 4);
    sub_2143DA490(v12, v13, 4);
    if ((v12 ^ v9))
    {
      return;
    }

LABEL_7:
    v3 += 24;
    if (!--v2)
    {
      return;
    }
  }

  v18 = *(v3 - 2);
  v19 = *(v3 - 1);
  if (v14 == 3)
  {
    sub_2143DA468(v18, v19, 3);
    sub_2143DA468(v9, v10, 3);
    sub_2143DA468(v12, v13, 3);
    sub_2143DA468(v9, v10, 3);
    v5 = sub_2143D80E4(v9, v12);
    sub_2143DA490(v9, v10, 3);
    sub_2143DA490(v12, v13, 3);
    sub_2143DA490(v12, v13, 3);
    v6 = v9;
    v7 = v10;
    v8 = 3;
LABEL_6:
    sub_2143DA490(v6, v7, v8);
    if ((v5 & 1) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  sub_2143DA468(v18, v19, *v3);
  v22 = v9;
  v23 = v10;
  v24 = 3;
LABEL_36:
  sub_2143DA468(v22, v23, v24);
  sub_2143DA490(v9, v10, v11);
  sub_2143DA490(v12, v13, v14);
}

uint64_t sub_2143D84A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyGroup_Member(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v25 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_24:
    v23 = 0;
    return v23 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_2143DA4B8(v13, v10, type metadata accessor for NearbyGroup_Member);
      sub_2143DA4B8(v14, v7, type metadata accessor for NearbyGroup_Member);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_2146DA6A8() & 1) == 0)
      {
        break;
      }

      v17 = *(v4 + 24);
      v18 = (v10 + v17);
      v19 = *(v10 + v17 + 8);
      v20 = (v7 + v17);
      v21 = v20[1];
      if (v19)
      {
        if (!v21)
        {
          break;
        }

        v22 = *v18 == *v20 && v19 == v21;
        if (!v22 && (sub_2146DA6A8() & 1) == 0)
        {
          break;
        }
      }

      else if (v21)
      {
        break;
      }

      sub_2146D8DF8();
      sub_2143DA5E8(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v23 = sub_2146D9578();
      sub_2143DA520(v7, type metadata accessor for NearbyGroup_Member);
      sub_2143DA520(v10, type metadata accessor for NearbyGroup_Member);
      if (v23)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v23 & 1;
    }

    sub_2143DA520(v7, type metadata accessor for NearbyGroup_Member);
    sub_2143DA520(v10, type metadata accessor for NearbyGroup_Member);
    goto LABEL_24;
  }

  v23 = 1;
  return v23 & 1;
}

uint64_t sub_2143D879C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_2143DA4B8(v20, v17, a4);
        sub_2143DA4B8(v21, v14, a4);
        v23 = a5(v17, v14);
        sub_2143DA520(v14, a6);
        sub_2143DA520(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_2143D893C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMConversationParticipantProto(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v20 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_2143DA4B8(v13, v10, type metadata accessor for CSDMConversationParticipantProto);
        sub_2143DA4B8(v14, v7, type metadata accessor for CSDMConversationParticipantProto);
        v16 = *(v4 + 20);
        v17 = *&v10[v16];
        v18 = *&v7[v16];
        if (v17 != v18)
        {

          v19 = sub_21401A114(v17, v18);

          if ((v19 & 1) == 0)
          {
            break;
          }
        }

        sub_2146D8DF8();
        sub_2143DA5E8(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v20 = sub_2146D9578();
        sub_2143DA520(v7, type metadata accessor for CSDMConversationParticipantProto);
        sub_2143DA520(v10, type metadata accessor for CSDMConversationParticipantProto);
        if (v20)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v20 & 1;
      }

      sub_2143DA520(v7, type metadata accessor for CSDMConversationParticipantProto);
      sub_2143DA520(v10, type metadata accessor for CSDMConversationParticipantProto);
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_2143D8BC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMConversationActivityProto(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v62 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903858, &unk_2146E6F50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D80, &qword_2146E9860);
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  v65 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v13 = MEMORY[0x28223BE20](v65);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v64 = &v54 - v17;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    goto LABEL_36;
  }

  if (!v18 || a1 == a2)
  {
    v49 = 1;
    return v49 & 1;
  }

  v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v60 = (v5 + 48);
  v61 = v4;
  v57 = *(v16 + 72);
  v58 = v9;
  v22 = v64;
  v55 = v10;
  v56 = v12;
  v59 = v15;
  while (1)
  {
    v63 = v20;
    sub_2143DA4B8(v20, v22, type metadata accessor for CSDMConversationActivitySessionProto);
    sub_2143DA4B8(v21, v15, type metadata accessor for CSDMConversationActivitySessionProto);
    v23 = v65[5];
    v24 = (v22 + v23);
    v25 = *(v22 + v23 + 8);
    v26 = &v15[v23];
    v27 = *(v26 + 1);
    if (v25)
    {
      if (!v27)
      {
        goto LABEL_35;
      }

      v28 = *v24 == *v26 && v25 == v27;
      if (!v28 && (sub_2146DA6A8() & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (v27)
    {
      goto LABEL_35;
    }

    v29 = v65[6];
    v30 = *(v10 + 48);
    sub_213FB2E54(v22 + v29, v12, &unk_27C903858, &unk_2146E6F50);
    sub_213FB2E54(&v15[v29], &v12[v30], &unk_27C903858, &unk_2146E6F50);
    v31 = *v60;
    v32 = v12;
    v33 = v12;
    v34 = v61;
    if ((*v60)(v32, 1, v61) != 1)
    {
      break;
    }

    if (v31((v33 + v30), 1, v34) != 1)
    {
      goto LABEL_32;
    }

    sub_213FB2DF4(v33, &unk_27C903858, &unk_2146E6F50);
    v12 = v33;
    v15 = v59;
    v22 = v64;
LABEL_21:
    v44 = v65[7];
    v45 = (v22 + v44);
    v46 = *(v22 + v44 + 8);
    v47 = &v15[v44];
    v48 = v15[v44 + 8];
    if (v46)
    {
      if (!v48)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (*v45 != *v47)
      {
        LOBYTE(v48) = 1;
      }

      if (v48)
      {
        goto LABEL_35;
      }
    }

    sub_2146D8DF8();
    sub_2143DA5E8(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v49 = sub_2146D9578();
    sub_2143DA520(v15, type metadata accessor for CSDMConversationActivitySessionProto);
    sub_2143DA520(v22, type metadata accessor for CSDMConversationActivitySessionProto);
    if (v49)
    {
      v21 += v57;
      v20 = v63 + v57;
      if (--v18)
      {
        continue;
      }
    }

    return v49 & 1;
  }

  v35 = v58;
  sub_213FB2E54(v33, v58, &unk_27C903858, &unk_2146E6F50);
  if (v31((v33 + v30), 1, v34) == 1)
  {
    sub_2143DA520(v35, type metadata accessor for CSDMConversationActivityProto);
LABEL_32:
    v50 = &qword_27C903D80;
    v51 = &qword_2146E9860;
    v52 = v33;
    goto LABEL_34;
  }

  v36 = v62;
  sub_2143DA580(v33 + v30, v62, type metadata accessor for CSDMConversationActivityProto);
  v37 = *(v34 + 20);
  v38 = *(v35 + v37);
  v39 = *(v36 + v37);
  if (v38 == v39 || (, , v40 = sub_214021228(v38, v39), , , (v40 & 1) != 0))
  {
    sub_2146D8DF8();
    sub_2143DA5E8(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v41 = v58;
    v42 = v62;
    v43 = sub_2146D9578();
    sub_2143DA520(v42, type metadata accessor for CSDMConversationActivityProto);
    sub_2143DA520(v41, type metadata accessor for CSDMConversationActivityProto);
    v12 = v56;
    sub_213FB2DF4(v56, &unk_27C903858, &unk_2146E6F50);
    v10 = v55;
    v15 = v59;
    v22 = v64;
    if ((v43 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_21;
  }

  sub_2143DA520(v62, type metadata accessor for CSDMConversationActivityProto);
  sub_2143DA520(v58, type metadata accessor for CSDMConversationActivityProto);
  v50 = &unk_27C903858;
  v51 = &unk_2146E6F50;
  v52 = v56;
LABEL_34:
  sub_213FB2DF4(v52, v50, v51);
  v15 = v59;
  v22 = v64;
LABEL_35:
  sub_2143DA520(v15, type metadata accessor for CSDMConversationActivitySessionProto);
  sub_2143DA520(v22, type metadata accessor for CSDMConversationActivitySessionProto);
LABEL_36:
  v49 = 0;
  return v49 & 1;
}

uint64_t sub_2143D9264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMConversationInvitationPreferenceProto(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v31 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_2143DA4B8(v13, v10, type metadata accessor for CSDMConversationInvitationPreferenceProto);
        sub_2143DA4B8(v14, v7, type metadata accessor for CSDMConversationInvitationPreferenceProto);
        v16 = v4[5];
        v17 = &v10[v16];
        v18 = v10[v16 + 4];
        v19 = &v7[v16];
        v20 = v7[v16 + 4];
        if (v18)
        {
          if (!v20)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (*v17 != *v19)
          {
            LOBYTE(v20) = 1;
          }

          if (v20)
          {
LABEL_25:
            sub_2143DA520(v7, type metadata accessor for CSDMConversationInvitationPreferenceProto);
            sub_2143DA520(v10, type metadata accessor for CSDMConversationInvitationPreferenceProto);
            goto LABEL_26;
          }
        }

        v21 = v4[6];
        v22 = v10[v21];
        v23 = v7[v21];
        if (v22 == 4)
        {
          if (v23 != 4)
          {
            goto LABEL_25;
          }
        }

        else if (v22 != v23)
        {
          goto LABEL_25;
        }

        v24 = v4[7];
        v25 = &v10[v24];
        v26 = v10[v24 + 4];
        v27 = &v7[v24];
        v28 = v7[v24 + 4];
        if (v26)
        {
          if (!v28)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (*v25 != *v27)
          {
            LOBYTE(v28) = 1;
          }

          if (v28)
          {
            goto LABEL_25;
          }
        }

        sub_2146D8DF8();
        sub_2143DA5E8(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v29 = sub_2146D9578();
        sub_2143DA520(v7, type metadata accessor for CSDMConversationInvitationPreferenceProto);
        sub_2143DA520(v10, type metadata accessor for CSDMConversationInvitationPreferenceProto);
        if (v29)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v29 & 1;
      }
    }

    v29 = 1;
  }

  else
  {
LABEL_26:
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t sub_2143D9534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthSharingAuthorization(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v36 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_2143DA4B8(v13, v10, type metadata accessor for HealthSharingAuthorization);
        sub_2143DA4B8(v14, v7, type metadata accessor for HealthSharingAuthorization);
        v16 = v4[5];
        v17 = &v10[v16];
        v18 = *&v10[v16 + 8];
        v19 = &v7[v16];
        v20 = *(v19 + 1);
        if (v18)
        {
          if (!v20 || (*v17 == *v19 ? (v21 = v18 == v20) : (v21 = 0), !v21 && (sub_2146DA6A8() & 1) == 0))
          {
LABEL_36:
            sub_2143DA520(v10, type metadata accessor for HealthSharingAuthorization);
            sub_2143DA520(v7, type metadata accessor for HealthSharingAuthorization);
            goto LABEL_37;
          }
        }

        else if (v20)
        {
          goto LABEL_36;
        }

        v22 = v4[6];
        v23 = &v10[v22];
        v24 = *&v10[v22 + 8];
        v25 = &v7[v22];
        v26 = *(v25 + 1);
        if (v24)
        {
          if (!v26)
          {
            goto LABEL_36;
          }

          v27 = *v23 == *v25 && v24 == v26;
          if (!v27 && (sub_2146DA6A8() & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else if (v26)
        {
          goto LABEL_36;
        }

        v28 = v4[7];
        v29 = &v10[v28];
        v30 = *&v10[v28 + 8];
        v31 = &v7[v28];
        v32 = *(v31 + 1);
        if (v30)
        {
          if (!v32)
          {
            goto LABEL_36;
          }

          v33 = *v29 == *v31 && v30 == v32;
          if (!v33 && (sub_2146DA6A8() & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else if (v32)
        {
          goto LABEL_36;
        }

        sub_2146D8DF8();
        sub_2143DA5E8(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v34 = sub_2146D9578();
        sub_2143DA520(v10, type metadata accessor for HealthSharingAuthorization);
        sub_2143DA520(v7, type metadata accessor for HealthSharingAuthorization);
        if (v34)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v34 & 1;
      }
    }

    v34 = 1;
  }

  else
  {
LABEL_37:
    v34 = 0;
  }

  return v34 & 1;
}

uint64_t sub_2143D9840(uint64_t a1)
{
  v3 = *(v1 + 8);
  sub_2146DA998();

  return sub_2143D9DE0(a1, v3);
}

uint64_t sub_2143D9890()
{
  v1 = *(v0 + 8);
  sub_2146DA958();
  sub_2146DA998();
  sub_2143D9DE0(v3, v1);
  return sub_2146DA9B8();
}

uint64_t sub_2143D98F0()
{
  v1 = *(v0 + 8);
  sub_2146DA958();
  sub_2146DA998();
  sub_2143D9DE0(v3, v1);
  return sub_2146DA9B8();
}

uint64_t sub_2143D9950(uint64_t a1)
{
  v3 = *(v1 + 8);
  sub_2146DA998();

  return sub_2143D9DE0(a1, v3);
}

uint64_t sub_2143D99A0(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_2146DA958();
  sub_2146DA998();
  sub_2143D9DE0(v4, v2);
  return sub_2146DA9B8();
}

uint64_t sub_2143D9A20@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2146D8728();
    if (v10)
    {
      v11 = sub_2146D8758();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2146D8748();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2146D8728();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2146D8758();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2146D8748();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2143D9C50(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2143D9FFC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_213FB54FC(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2143D9A20(v13, a3, a4, &v12);
  v10 = v4;
  sub_213FB54FC(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_2143D9DE0(uint64_t a1, uint64_t a2)
{
  v3 = _s5CodecVMa(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x216055860](v7);
  if (v7)
  {
    v9 = &v6[*(v3 + 20)];
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_2143DA4B8(v10, v6, _s5CodecVMa);
      sub_2146D9C68();
      sub_2143DA5E8(&qword_27C912920, MEMORY[0x277D850E8], MEMORY[0x277D850F0]);
      sub_2146D94E8();
      if (*(v9 + 1))
      {
        sub_2146DA978();
        sub_2146D9698();
      }

      else
      {
        sub_2146DA978();
      }

      sub_2146D9C88();
      sub_2143DA5E8(&qword_27C912928, MEMORY[0x277D85100], MEMORY[0x277D85108]);
      sub_2146D94E8();
      result = sub_2143DA520(v6, _s5CodecVMa);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_2143D9FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2146D8728();
  v11 = result;
  if (result)
  {
    result = sub_2146D8758();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2146D8748();
  sub_2143D9A20(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_2143DA0B4(uint64_t a1, uint64_t a2)
{
  sub_2146D9C68();
  sub_2143DA5E8(&qword_27C9054F8, MEMORY[0x277D850E8], MEMORY[0x277D850F8]);
  sub_2146D97C8();
  sub_2146D97C8();
  if (v12 == v11)
  {
    v4 = *(_s5CodecVMa(0) + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_2146DA6A8() & 1) != 0)
        {
          goto LABEL_9;
        }
      }
    }

    else if (!v8)
    {
LABEL_9:
      sub_2146D9C88();
      sub_2143DA5E8(&qword_27C912950, MEMORY[0x277D85100], MEMORY[0x277D85110]);
      sub_2146D97C8();
      sub_2146D97C8();
      return v12 == v11;
    }
  }

  return 0;
}

unint64_t sub_2143DA290()
{
  result = qword_27C912938;
  if (!qword_27C912938)
  {
    result = swift_getWitnessTable(byte_214739BD8, &_s4InfoVN, v0, v1);
    atomic_store(result, &qword_27C912938);
  }

  return result;
}

void sub_2143DA30C(uint64_t a1)
{
  sub_2146D9C68();
  if (v1 <= 0x3F)
  {
    sub_2143ACE3C();
    if (v2 <= 0x3F)
    {
      sub_2146D9C88();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2143DA468(uint64_t result, uint64_t a2, char a3)
{
  if (!a3 || a3 == 3 || a3 == 2)
  {
  }

  return v3;
}

double sub_2143DA490(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 3 || a3 == 2)
  {
  }

  return result;
}

uint64_t sub_2143DA4B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2143DA520(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2143DA580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2143DA5E8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2143DA630@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2143DA67C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2143DA6D8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2143DA754(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v5 = 3;
  if (v4 < 3)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t sub_2143DA7D4(char *a1, char *a2)
{
  if (*&aFqdn_3[8 * *a1] == *&aFqdn_3[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2146DA6A8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_2143DA83C()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2143DA898(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2143DA8D8(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2143DAA18(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2143DAB60(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_2143DABFC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
}

void (*sub_2143DAC74(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

unint64_t sub_2143DAD9C()
{
  result = qword_27C912960;
  if (!qword_27C912960)
  {
    result = swift_getWitnessTable(aY_11, &type metadata for LBOPCSCFAddress.AddressType, v0, v1);
    atomic_store(result, &qword_27C912960);
  }

  return result;
}

unint64_t sub_2143DADF4()
{
  result = qword_27C912968;
  if (!qword_27C912968)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C912970, qword_214739D60);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27C912968);
  }

  return result;
}

uint64_t sub_2143DAEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2143DAF1C()
{
  result = qword_27C912978;
  if (!qword_27C912978)
  {
    result = swift_getWitnessTable(byte_214739CD8, &type metadata for LBOPCSCFAddress.AddressType, v0, v1);
    atomic_store(result, &qword_27C912978);
  }

  return result;
}

unint64_t sub_2143DAF70@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 16;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2143DB0D8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2143E05A8;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_214059908;
  v6[3] = 0;
  v6[4] = 32;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_21439DF90;
  *(v5 + 24) = v6;
  *(v3 + 40) = v5;
  v7 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_214032610;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2143DB2A8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

uint64_t sub_2143DB418@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2143DB470(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_i64[0];
  v7 = v1[1].n128_u64[1];

  sub_214032564(v6, v7);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2143DB4D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2143DB530(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2143DB598@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2143DB5F0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[6].n128_i64[0];
  v7 = v1[6].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2143DB658@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2143DB6B0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[9].n128_i64[0];
  v7 = v1[9].n128_u64[1];

  sub_214032564(v6, v7);
  result = *a1;
  v1[8] = *a1;
  v1[9].n128_u64[0] = v3;
  v1[9].n128_u64[1] = v4;
  v1[10].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2143DB718()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2143DB7A0()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

uint64_t sub_2143DB820()
{
  if (*(v0 + 104) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 96);

    return v1;
  }

  return result;
}

uint64_t sub_2143DB8A0()
{
  v1 = *(v0 + 152);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 144);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

unint64_t sub_2143DB928@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2143E05A8;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_214059908;
  v6[3] = 0;
  v6[4] = 32;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_21439DF90;
  *(v5 + 24) = v6;
  *(v3 + 40) = v5;
  v7 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_214032610;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2143DBAC4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2143DBC68@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 16;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A571C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5724;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2143DBDD0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2140676DC;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_214059908;
  v6[3] = 0;
  v6[4] = 255;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_214059860;
  *(v5 + 24) = v6;
  *(v3 + 40) = v5;
  v7 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_21403254C;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2143DBF64@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2143DBFBC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_2143DC024@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2143DC07C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[4].n128_i64[0];
  v7 = v1[4].n128_u64[1];

  sub_214032564(v6, v7);
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2143DC0E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2143DC13C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 88) = *a1;
  *(v1 + 104) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  return result;
}

uint64_t sub_2143DC1A4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2143DC1FC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[9].n128_i64[0];
  v7 = v1[9].n128_u64[1];

  sub_214032564(v6, v7);
  result = *a1;
  v1[8] = *a1;
  v1[9].n128_u64[0] = v3;
  v1[9].n128_u64[1] = v4;
  v1[10].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2143DC264@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  v4 = *(v1 + 192);
  v5 = *(v1 + 200);
  *a1 = *(v1 + 168);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2143DC2BC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 184);
  v7 = *(v1 + 192);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 168) = *a1;
  *(v1 + 184) = v3;
  *(v1 + 192) = v4;
  *(v1 + 200) = v5;
  return result;
}

uint64_t sub_2143DC324()
{
  if (*(v0 + 32) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 24);

    return v1;
  }

  return result;
}

uint64_t sub_2143DC3A4()
{
  v1 = *(v0 + 72);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 64);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2143DC42C()
{
  if (*(v0 + 112) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 104);

    return v1;
  }

  return result;
}

uint64_t sub_2143DC4AC()
{
  v1 = *(v0 + 152);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 144);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2143DC534()
{
  if (*(v0 + 192) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 184);

    return v1;
  }

  return result;
}

uint64_t sub_2143DC5B4@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 0xFu)
  {
    if (result <= 0x21u)
    {
      if (result <= 0x11u)
      {
        if (result == 16)
        {
          result = 13;
          *a2 = 13;
          return result;
        }

        if (result == 17)
        {
          result = 14;
          *a2 = 14;
          return result;
        }
      }

      else
      {
        switch(result)
        {
          case 0x12u:
            result = 15;
            *a2 = 15;
            return result;
          case 0x20u:
            result = 16;
            *a2 = 16;
            return result;
          case 0x21u:
            result = 17;
            *a2 = 17;
            return result;
        }
      }
    }

    else if (result > 0x3Fu)
    {
      switch(result)
      {
        case '@':
          result = 21;
          *a2 = 21;
          return result;
        case 'A':
          result = 22;
          *a2 = 22;
          return result;
        case 'B':
          result = 23;
          *a2 = 23;
          return result;
      }
    }

    else
    {
      switch(result)
      {
        case '""':
          result = 18;
          *a2 = 18;
          return result;
        case '0':
          result = 19;
          *a2 = 19;
          return result;
        case '1':
          result = 20;
          *a2 = 20;
          return result;
      }
    }
  }

  else if (result < 0xDu)
  {
    *a2 = result;
    return result;
  }

  result = 24;
  *a2 = 24;
  return result;
}

uint64_t sub_2143DC708()
{
  sub_2146DA958();
  sub_2146DA978();
  return sub_2146DA9B8();
}

uint64_t sub_2143DC790(uint64_t a1)
{
  sub_2146DA958();
  sub_2146DA978();
  return sub_2146DA9B8();
}

uint64_t sub_2143DC8E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 152);
  v14[8] = *(v1 + 136);
  v14[9] = v3;
  v15 = *(v1 + 168);
  v4 = *(v1 + 56);
  v5 = *(v1 + 88);
  v14[4] = *(v1 + 72);
  v14[5] = v5;
  v14[6] = *(v1 + 104);
  v14[7] = v2;
  v6 = *(v1 + 24);
  v14[0] = *(v1 + 8);
  v14[1] = v6;
  v14[2] = *(v1 + 40);
  v14[3] = v4;
  v7 = *(v1 + 120);
  v8 = *(v1 + 152);
  *(a1 + 128) = *(v1 + 136);
  *(a1 + 144) = v8;
  *(a1 + 160) = *(v1 + 168);
  v9 = *(v1 + 56);
  v10 = *(v1 + 88);
  *(a1 + 64) = *(v1 + 72);
  *(a1 + 80) = v10;
  *(a1 + 96) = *(v1 + 104);
  *(a1 + 112) = v7;
  v11 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v11;
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = v9;
  return sub_213FB2E54(v14, v13, &qword_27C9085E8, &qword_2146F50F0);
}

__n128 sub_2143DC9B0(uint64_t a1)
{
  v3 = *(v1 + 120);
  v4 = *(v1 + 152);
  v14[8] = *(v1 + 136);
  v14[9] = v4;
  v15 = *(v1 + 168);
  v5 = *(v1 + 56);
  v6 = *(v1 + 88);
  v14[4] = *(v1 + 72);
  v14[5] = v6;
  v14[6] = *(v1 + 104);
  v14[7] = v3;
  v7 = *(v1 + 24);
  v14[0] = *(v1 + 8);
  v14[1] = v7;
  v14[2] = *(v1 + 40);
  v14[3] = v5;
  sub_213FB2DF4(v14, &qword_27C9085E8, &qword_2146F50F0);
  v8 = *(a1 + 96);
  *(v1 + 120) = *(a1 + 112);
  v9 = *(a1 + 144);
  *(v1 + 136) = *(a1 + 128);
  *(v1 + 152) = v9;
  v10 = *(a1 + 32);
  *(v1 + 56) = *(a1 + 48);
  v11 = *(a1 + 80);
  *(v1 + 72) = *(a1 + 64);
  *(v1 + 88) = v11;
  *(v1 + 104) = v8;
  result = *a1;
  v13 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v13;
  *(v1 + 168) = *(a1 + 160);
  *(v1 + 40) = v10;
  return result;
}

uint64_t sub_2143DCA98@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[20];
  v3 = v1[22];
  v30 = v1[21];
  v31[0] = v3;
  v4 = v1[16];
  v5 = v1[18];
  v26 = v1[17];
  v6 = v26;
  v27 = v5;
  v7 = v1[18];
  v8 = v1[20];
  v28 = v1[19];
  v9 = v28;
  v29 = v8;
  v10 = v1[12];
  v11 = v1[14];
  v22 = v1[13];
  v12 = v22;
  v23 = v11;
  v13 = v1[14];
  v14 = v1[16];
  v24 = v1[15];
  v15 = v24;
  v25 = v14;
  v16 = v1[12];
  v21[0] = v1[11];
  v17 = v21[0];
  v21[1] = v16;
  *(v31 + 9) = *(v1 + 361);
  v18 = v1[22];
  a1[10] = v30;
  a1[11] = v18;
  *(a1 + 185) = *(v1 + 361);
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v9;
  a1[9] = v2;
  a1[2] = v12;
  a1[3] = v13;
  a1[4] = v15;
  a1[5] = v4;
  *a1 = v17;
  a1[1] = v10;
  return sub_213FB2E54(v21, &v20, &qword_27C908600, &qword_2146F50F8);
}

__n128 sub_2143DCB54(uint64_t a1)
{
  v3 = v1[22];
  v15[10] = v1[21];
  v16[0] = v3;
  v4 = v1[18];
  v15[6] = v1[17];
  v15[7] = v4;
  v5 = v1[20];
  v15[8] = v1[19];
  v15[9] = v5;
  v6 = v1[14];
  v15[2] = v1[13];
  v15[3] = v6;
  v7 = v1[16];
  v15[4] = v1[15];
  v15[5] = v7;
  v8 = v1[12];
  v15[0] = v1[11];
  v15[1] = v8;
  *(v16 + 9) = *(v1 + 361);
  sub_213FB2DF4(v15, &qword_27C908600, &qword_2146F50F8);
  v9 = *(a1 + 176);
  v1[21] = *(a1 + 160);
  v1[22] = v9;
  *(v1 + 361) = *(a1 + 185);
  v10 = *(a1 + 112);
  v1[17] = *(a1 + 96);
  v1[18] = v10;
  v11 = *(a1 + 144);
  v1[19] = *(a1 + 128);
  v1[20] = v11;
  v12 = *(a1 + 48);
  v1[13] = *(a1 + 32);
  v1[14] = v12;
  v13 = *(a1 + 80);
  v1[15] = *(a1 + 64);
  v1[16] = v13;
  result = *(a1 + 16);
  v1[11] = *a1;
  v1[12] = result;
  return result;
}

uint64_t sub_2143DCC30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 16);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

double sub_2143DCCA4(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

uint64_t sub_2143DCD50(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2143DCE18(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 24);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2143DCEB8;
  }

  return result;
}

uint64_t sub_2143DCEB8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2143DCFF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2143DD044(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v8, v9);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

void (*sub_2143DD0CC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2143DD16C;
}

void sub_2143DD16C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  if (a2)
  {

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v10);
    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_214032564(v11, v12);
  }

  else
  {

    sub_214032564(v9, v10);
    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
  }

  free(v2);
}

void sub_2143DD24C(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 56), *(v2 + 64));

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2143DD390(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21407493C;
  }

  return result;
}

void (*sub_2143DD468(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214074D48;
}

uint64_t sub_2143DD508@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 104);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 96);
    a2[1] = v4;
  }

  return result;
}

double sub_2143DD57C(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2143DD62C(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 80);
  v8 = *(v2 + 112);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 96), *(v2 + 104));

    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2143DD770(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 96);
  *(v3 + 24) = v5;
  v6 = *(v1 + 104);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2143DD848;
  }

  return result;
}

void sub_2143DD848(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 80);
    v13 = *(v3 + 112);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 96) = v5;
      *(v9 + 104) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 80);
  v13 = *(v3 + 112);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 96) = v5;
  *(v7 + 104) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_2143DDA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  *a2 = *(a1 + 80);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2143DDA6C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 96);
  v9 = *(a2 + 104);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 80) = v4;
  *(a2 + 88) = v3;
  *(a2 + 96) = v5;
  *(a2 + 104) = v6;
  *(a2 + 112) = v7;
  return result;
}

void (*sub_2143DDAF4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2143DDB94;
}

void sub_2143DDB94(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 96);
  v10 = *(v3 + 104);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v7;
    *(v3 + 104) = v6;
    *(v3 + 112) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v7;
    *(v3 + 104) = v6;
    *(v3 + 112) = v8;
  }

  free(v2);
}

uint64_t sub_2143DDC94(uint64_t result)
{
  *(v1 + 116) = result;
  *(v1 + 120) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2143DDCC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 152);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 144);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

double sub_2143DDD38(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

uint64_t sub_2143DDDE8(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2143DDEB4(uint64_t *a1))()
{
  a1[2] = v1;
  v2 = *(v1 + 152);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 144);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2143E05A0;
  }

  return result;
}

uint64_t sub_2143DDF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 144);
  v4 = *(a1 + 152);
  v5 = *(a1 + 160);
  *a2 = *(a1 + 128);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2143DDFA8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 144);
  v9 = *(a2 + 152);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v8, v9);
  *(a2 + 128) = v4;
  *(a2 + 136) = v3;
  *(a2 + 144) = v5;
  *(a2 + 152) = v6;
  *(a2 + 160) = v7;
  return result;
}

uint64_t (*sub_2143DE030(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  v8 = *(v1 + 160);
  *v4 = *(v1 + 128);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2143E05A4;
}

uint64_t sub_2143DE0D0()
{
  sub_2143DE178();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2143DE124()
{
  sub_2143DE178();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2143DE178()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 == 11)
  {
    goto LABEL_16;
  }

  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 104);
  v21 = *(v0 + 96);
  v5 = *(v0 + 116);
  v6 = *(v0 + 120);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v9 = MEMORY[0x277D84F98];
  if (v1 >> 60 != 15)
  {
    v20 = *(v0 + 144);
    v10 = *(v0 + 120);
    v11 = *(v0 + 116);
    v12 = *(v0 + 16);
    v24 = MEMORY[0x277CC9318];
    *&v23 = v12;
    *(&v23 + 1) = v1;
    sub_213FDC730(&v23, v22);
    sub_21404F7E0(v12, v1);
    sub_213FDCA18(v12, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v22, 0x4B5249645FLL, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v14 = v12;
    v5 = v11;
    v6 = v10;
    v7 = v20;
    sub_214032564(v14, v1);
  }

  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_16;
    }

    v24 = MEMORY[0x277D837D0];
    *&v23 = v3;
    *(&v23 + 1) = v2;
    sub_213FDC730(&v23, v22);

    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v22, 0x6C65646F6DLL, 0xE500000000000000, v15);
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  if (v4 == 1)
  {
LABEL_16:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v24 = MEMORY[0x277D837D0];
  *&v23 = v21;
  *(&v23 + 1) = v4;
  sub_213FDC730(&v23, v22);

  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v22, 0x44497364695FLL, 0xE600000000000000, v16);
LABEL_10:
  if ((v6 & 1) == 0)
  {
    v24 = MEMORY[0x277D84CC0];
    LODWORD(v23) = v5;
    sub_213FDC730(&v23, v22);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v22, 6710879, 0xE300000000000000, v17);
  }

  if (v8 >> 60 == 11)
  {
    goto LABEL_16;
  }

  if (v8 >> 60 != 15)
  {
    v24 = MEMORY[0x277CC9318];
    *&v23 = v7;
    *(&v23 + 1) = v8;
    sub_213FDC730(&v23, v22);
    sub_21404F7E0(v7, v8);
    sub_213FDCA18(v7, v8);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v22, 0x4B5064655FLL, 0xE500000000000000, v18);
    sub_214032564(v7, v8);
  }

  return v9;
}

uint64_t sub_2143DE474(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_2143DE4A4(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 8);
  v8 = *(v2 + 40);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 24), *(v2 + 32));

    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2143DE5E8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 24);
  *(v3 + 24) = v5;
  v6 = *(v1 + 32);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214053CC4;
  }

  return result;
}

void (*sub_2143DE6C0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2140540D0;
}

uint64_t sub_2143DE760@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 72);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 64);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

double sub_2143DE7D4(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

uint64_t sub_2143DE884(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2143DE950(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 72);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 64);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2143DE9F0;
  }

  return result;
}

uint64_t sub_2143DE9F0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2143DEB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  *a2 = *(a1 + 48);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2143DEB84(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v8, v9);
  *(a2 + 48) = v4;
  *(a2 + 56) = v3;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  *(a2 + 80) = v7;
  return result;
}

void (*sub_2143DEC0C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2143DECAC;
}

void sub_2143DECAC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 64);
  v10 = *(v3 + 72);
  if (a2)
  {

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v10);
    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v7;
    *(v3 + 72) = v6;
    *(v3 + 80) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_214032564(v11, v12);
  }

  else
  {

    sub_214032564(v9, v10);
    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v7;
    *(v3 + 72) = v6;
    *(v3 + 80) = v8;
  }

  free(v2);
}

void sub_2143DED8C(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 88);
  v8 = *(v2 + 120);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 104), *(v2 + 112));

    *(v2 + 104) = a1;
    *(v2 + 112) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2143DEED0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 104);
  *(v3 + 24) = v5;
  v6 = *(v1 + 112);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214054E1C;
  }

  return result;
}

void (*sub_2143DEFA8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  v8 = *(v1 + 120);
  *v4 = *(v1 + 88);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214055228;
}

uint64_t sub_2143DF048(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2143DF114(uint64_t *a1))()
{
  a1[2] = v1;
  v2 = *(v1 + 152);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 144);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2143DF1B4;
  }

  return result;
}

uint64_t sub_2143DF1B8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t (*sub_2143DF2F8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  v8 = *(v1 + 160);
  *v4 = *(v1 + 128);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2143DF398;
}

void sub_2143DF39C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 144);
  v10 = *(v3 + 152);
  if (a2)
  {

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v10);
    *(v3 + 128) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v7;
    *(v3 + 152) = v6;
    *(v3 + 160) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_214032564(v11, v12);
  }

  else
  {

    sub_214032564(v9, v10);
    *(v3 + 128) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v7;
    *(v3 + 152) = v6;
    *(v3 + 160) = v8;
  }

  free(v2);
}

uint64_t sub_2143DF47C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 192);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 184);
    a2[1] = v4;
  }

  return result;
}

double sub_2143DF4F0(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2143DF5A0(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 168);
  v8 = *(v2 + 200);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 184), *(v2 + 192));

    *(v2 + 184) = a1;
    *(v2 + 192) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2143DF6E4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 184);
  *(v3 + 24) = v5;
  v6 = *(v1 + 192);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2143DF7BC;
  }

  return result;
}

void sub_2143DF7BC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 168);
    v13 = *(v3 + 200);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 184) = v5;
      *(v9 + 192) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 168);
  v13 = *(v3 + 200);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 184) = v5;
  *(v7 + 192) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_2143DF98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 176);
  v3 = *(a1 + 184);
  v4 = *(a1 + 192);
  v5 = *(a1 + 200);
  *a2 = *(a1 + 168);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2143DF9E0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 184);
  v9 = *(a2 + 192);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 168) = v4;
  *(a2 + 176) = v3;
  *(a2 + 184) = v5;
  *(a2 + 192) = v6;
  *(a2 + 200) = v7;
  return result;
}

void (*sub_2143DFA68(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 176);
  v6 = *(v1 + 184);
  v7 = *(v1 + 192);
  v8 = *(v1 + 200);
  *v4 = *(v1 + 168);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2143DFB08;
}

void sub_2143DFB08(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 184);
  v10 = *(v3 + 192);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 168) = v5;
    *(v3 + 176) = v4;
    *(v3 + 184) = v7;
    *(v3 + 192) = v6;
    *(v3 + 200) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 168) = v5;
    *(v3 + 176) = v4;
    *(v3 + 184) = v7;
    *(v3 + 192) = v6;
    *(v3 + 200) = v8;
  }

  free(v2);
}

uint64_t sub_2143DFBE8()
{
  sub_2143DFC90();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2143DFC3C()
{
  sub_2143DFC90();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2143DFC90()
{
  v2 = *(v0 + 3);
  v1 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  v5 = *(v0 + 14);
  v6 = *(v0 + 18);
  v7 = *(v0 + 19);
  v8 = *(v0 + 24);
  v18 = *(v0 + 13);
  v19 = *(v0 + 23);
  v9 = MEMORY[0x277D84F98];
  if ((v0[1] & 1) == 0)
  {
    v10 = *v0;
    v22 = MEMORY[0x277D84CC0];
    LODWORD(v21) = v10;
    sub_213FDC730(&v21, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v20, 6710879, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  }

  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_19;
    }

    v22 = MEMORY[0x277D837D0];
    *&v21 = v2;
    *(&v21 + 1) = v1;
    sub_213FDC730(&v21, v20);

    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v20, 0x6C65646F6DLL, 0xE500000000000000, v12);
  }

  if (v4 >> 60 != 11)
  {
    if (v4 >> 60 != 15)
    {
      v22 = MEMORY[0x277CC9318];
      *&v21 = v3;
      *(&v21 + 1) = v4;
      sub_213FDC730(&v21, v20);
      sub_21404F7E0(v3, v4);
      sub_213FDCA18(v3, v4);
      v13 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v20, 0x4B5064655FLL, 0xE500000000000000, v13);
      sub_214032564(v3, v4);
    }

    if (v5)
    {
      if (v5 == 1)
      {
        goto LABEL_19;
      }

      v22 = MEMORY[0x277D837D0];
      *&v21 = v18;
      *(&v21 + 1) = v5;
      sub_213FDC730(&v21, v20);

      v14 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v20, 0x44497364695FLL, 0xE600000000000000, v14);
    }

    if (v7 >> 60 != 11)
    {
      if (v7 >> 60 != 15)
      {
        v22 = MEMORY[0x277CC9318];
        *&v21 = v6;
        *(&v21 + 1) = v7;
        sub_213FDC730(&v21, v20);
        sub_21404F7E0(v6, v7);
        sub_213FDCA18(v6, v7);
        v15 = swift_isUniquelyReferenced_nonNull_native();
        sub_2140524DC(v20, 0x4B5249645FLL, 0xE500000000000000, v15);
        sub_214032564(v6, v7);
      }

      if (!v8)
      {
        return v9;
      }

      if (v8 != 1)
      {
        v22 = MEMORY[0x277D837D0];
        *&v21 = v19;
        *(&v21 + 1) = v8;
        sub_213FDC730(&v21, v20);

        v16 = swift_isUniquelyReferenced_nonNull_native();
        sub_2140524DC(v20, 1701667182, 0xE400000000000000, v16);
        return v9;
      }
    }
  }

LABEL_19:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2143DFFB8()
{
  result = qword_27C912980;
  if (!qword_27C912980)
  {
    result = swift_getWitnessTable(byte_214739EB0, &type metadata for RapportMessage.RPFrameType, v0, v1);
    atomic_store(result, &qword_27C912980);
  }

  return result;
}

uint64_t sub_2143E0090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor17RPFrameTypeFriendVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor17RPFrameTypeFamilyVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2143E0104(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 377))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2143E0160(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
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
    *(result + 376) = 0;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 377) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 377) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RapportMessage.RPFrameType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RapportMessage.RPFrameType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2143E0378(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
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

uint64_t sub_2143E03C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy201_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_2143E0480(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
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

uint64_t sub_2143E04C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2143E054C()
{
  result = qword_27C912988;
  if (!qword_27C912988)
  {
    result = swift_getWitnessTable(byte_214739F18, &type metadata for RapportMessage.RPFrameType, v0, v1);
    atomic_store(result, &qword_27C912988);
  }

  return result;
}

unint64_t sub_2143E05E0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 64;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_2143E18F8;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2143E072C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = sub_213FDC8D0;
  *(v4 + 16) = sub_214059804;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2143E08B0@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  v4 = sub_214069764(&unk_282653D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_21438F524;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_214069888(&unk_282653DC0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_2143E1900;
  *(v8 + 24) = v9;
  *(v3 + 40) = v8;
  v10 = sub_2142E0124(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_2143E1904;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_21404352C(inited, a1);
}

unint64_t sub_2143E0A5C@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  v4 = sub_214069764(&unk_282653E10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_21409A858;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_214069888(&unk_282653EB0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_2143E18F0;
  *(v8 + 24) = v9;
  *(v3 + 40) = v8;
  v10 = sub_2142E0124(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_21409A868;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_21404352C(inited, a1);
}

unint64_t sub_2143E0C3C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21439DF24;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21439DF24;
  *(v5 + 24) = 0;
  *(v3 + 40) = v5;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403254C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

void sub_2143E0D88(char *a3@<X8>)
{
  v4 = sub_2146DA098();

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

uint64_t sub_2143E0DEC()
{
  if (*v0)
  {
    return 0x6574656C6564;
  }

  else
  {
    return 7824750;
  }
}

uint64_t sub_2143E0E1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574656C6564;
  }

  else
  {
    v3 = 7824750;
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
    v5 = 0x6574656C6564;
  }

  else
  {
    v5 = 7824750;
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
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2143E0EB8()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2143E0F30(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2143E0F94(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2143E1008(char *a2@<X8>)
{
  v3 = sub_2146DA098();

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

void sub_2143E1068(uint64_t *a1@<X8>)
{
  v2 = 7824750;
  if (*v1)
  {
    v2 = 0x6574656C6564;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2143E114C()
{
  sub_2143E11F4();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2143E11A0()
{
  sub_2143E11F4();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2143E11F4()
{
  v1 = *v0;
  v2 = MEMORY[0x277D84F98];
  if (v1 != 2)
  {
    v3 = (v1 & 1) == 0;
    v4 = 7824750;
    if (!v3)
    {
      v4 = 0x6574656C6564;
    }

    v5 = 0xE300000000000000;
    v13 = MEMORY[0x277D837D0];
    if (!v3)
    {
      v5 = 0xE600000000000000;
    }

    *&v12 = v4;
    *(&v12 + 1) = v5;
    sub_213FDC730(&v12, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v11, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for PhotosSharedAlbumMessage(0);
  v7 = sub_21404D3BC();
  v13 = MEMORY[0x277CC9318];
  *&v12 = v7;
  *(&v12 + 1) = v8;
  sub_213FDC730(&v12, v11);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v11, 0x7461446D75626C61, 0xE900000000000061, v9);
  return v2;
}

unint64_t sub_2143E1314()
{
  result = qword_27C912990;
  if (!qword_27C912990)
  {
    result = swift_getWitnessTable(aI_12, &type metadata for PhotosSharedAlbumMessage.MessageType, v0, v1);
    atomic_store(result, &qword_27C912990);
  }

  return result;
}

unint64_t sub_2143E1368(uint64_t a1)
{
  *(a1 + 8) = sub_2142FC0A8();
  result = sub_2142FC180();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143E1398(uint64_t a1)
{
  *(a1 + 8) = sub_2143E143C(&qword_27C908350, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum, byte_2146FF180);
  result = sub_2143E143C(&qword_27C908370, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum, a1_35);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143E143C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2143E1484(uint64_t a1)
{
  *(a1 + 8) = sub_2143E143C(&qword_27C90CA30, type metadata accessor for PhotosSharedAlbumMessage, byte_2146FB620);
  result = sub_2143E143C(&qword_27C90C950, type metadata accessor for PhotosSharedAlbumMessage, byte_2146FB648);
  *(a1 + 16) = result;
  return result;
}

void sub_2143E1550(uint64_t a1)
{
  sub_2143E1844(319, &qword_27C9129A8, &type metadata for PhotosSharedAlbumMessage.MessageType, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2143E1630(uint64_t a1)
{
  sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
  if (v1 <= 0x3F)
  {
    sub_2143E1844(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2143E1844(319, &qword_280B34BD8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21403BE74(319, &qword_280B35230, MEMORY[0x277CC9578]);
        if (v4 <= 0x3F)
        {
          sub_21403BE74(319, &qword_280B353F8, MEMORY[0x277CC95F0]);
          if (v5 <= 0x3F)
          {
            sub_2143E1844(319, &qword_27C9129C0, MEMORY[0x277D849A8], type metadata accessor for Validated);
            if (v6 <= 0x3F)
            {
              sub_21409A2B4(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_2143E1844(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2143E1894()
{
  result = qword_27C9129C8;
  if (!qword_27C9129C8)
  {
    result = swift_getWitnessTable(byte_21473A9E8, &type metadata for PhotosSharedAlbumMessage.MessageType, v0, v1);
    atomic_store(result, &qword_27C9129C8);
  }

  return result;
}

uint64_t sub_2143E1908(uint64_t a1, uint64_t a2)
{
  MBDChipList.dictionaryRepresentation.getter();
  v2 = sub_2146D9468();

  return v2;
}

uint64_t MBDChipList.bridgedToObjectiveC.getter(uint64_t a1, uint64_t a2)
{
  MBDChipList.dictionaryRepresentation.getter();
  v2 = sub_2146D9468();

  return v2;
}

uint64_t MBDChipList.dictionaryRepresentation.getter()
{
  v1 = type metadata accessor for MBDChip(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v19[1] = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E6910;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x8000000214799BC0;
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    v10 = MEMORY[0x277D84F90];
    do
    {
      sub_2143E1C68(v8, v4);
      v11 = sub_2144DA1CC();
      sub_2143E1CCC(v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_214095798(0, v10[2] + 1, 1, v10);
      }

      v13 = v10[2];
      v12 = v10[3];
      if (v13 >= v12 >> 1)
      {
        v10 = sub_214095798((v12 > 1), v13 + 1, 1, v10);
      }

      v10[2] = v13 + 1;
      v10[v13 + 4] = v11;
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9050E8, &qword_2147726C0);
  *(inited + 48) = v10;
  *(inited + 72) = v14;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x8000000214799BE0;
  v15 = sub_2146D9988();
  *(inited + 120) = sub_21403EBDC();
  *(inited + 96) = v15;
  v16 = sub_214045690(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
  swift_arrayDestroy();
  v17 = sub_2140418B8(v16);

  return v17;
}

uint64_t sub_2143E1C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MBDChip(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2143E1CCC(uint64_t a1)
{
  v2 = type metadata accessor for MBDChip(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2143E1D2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6465696C706572;
  }

  else
  {
    v3 = 0x7473694C70696863;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6465696C706572;
  }

  else
  {
    v5 = 0x7473694C70696863;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2143E1DD4()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2143E1E58(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2143E1EC8(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2143E1F48(char *a2@<X8>)
{
  v3 = sub_2146DA098();

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

void sub_2143E1FA8(uint64_t *a1@<X8>)
{
  v2 = 0x7473694C70696863;
  if (*v1)
  {
    v2 = 0x6465696C706572;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_2143E1FE8(char *a3@<X8>)
{
  v4 = sub_2146DA098();

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

uint64_t sub_2143E204C(uint64_t a1)
{
  v2 = sub_2143E24F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143E2088(uint64_t a1)
{
  v2 = sub_2143E24F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MBDChipList.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9129D0, ":J\t");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143E24F8();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905FF8, &qword_2146F4170);
    v12[15] = 0;
    sub_2143E254C(&qword_27C9129E0, &qword_27C9129E8, byte_214756600, MEMORY[0x277CC9C38]);
    sub_2146DA0D8();
    v9 = v13;
    v12[14] = 1;
    v10 = sub_2146DA178();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MBDChipList.encode(to:configuration:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9129F0, &qword_21473AB68);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[2] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143E24F8();

  sub_2146DAA28();
  v13 = v8;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905FF8, &qword_2146F4170);
  sub_2143E254C(&qword_27C9129F8, &qword_27C912A00, byte_214756630, MEMORY[0x277CC9C40]);
  sub_2146DA2A8();

  if (!v2)
  {
    v11 = 1;
    sub_2146DA338();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2143E24F8()
{
  result = qword_27C9129D8;
  if (!qword_27C9129D8)
  {
    result = swift_getWitnessTable(asc_21473AD00, &_s19CodingConfigurationV10CodingKeysON_4, v0, v1);
    atomic_store(result, &qword_27C9129D8);
  }

  return result;
}

uint64_t sub_2143E254C(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905FF8, &qword_2146F4170);
    v10 = sub_2140326D4(a2, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2143E25F8()
{
  result = qword_27C912A08;
  if (!qword_27C912A08)
  {
    result = swift_getWitnessTable(byte_21473ACD8, &_s19CodingConfigurationV10CodingKeysON_4, v0, v1);
    atomic_store(result, &qword_27C912A08);
  }

  return result;
}

unint64_t sub_2143E2650()
{
  result = qword_27C912A10;
  if (!qword_27C912A10)
  {
    result = swift_getWitnessTable(byte_21473AC10, &_s19CodingConfigurationV10CodingKeysON_4, v0, v1);
    atomic_store(result, &qword_27C912A10);
  }

  return result;
}

unint64_t sub_2143E26A8()
{
  result = qword_27C912A18;
  if (!qword_27C912A18)
  {
    result = swift_getWitnessTable(byte_21473AC38, &_s19CodingConfigurationV10CodingKeysON_4, v0, v1);
    atomic_store(result, &qword_27C912A18);
  }

  return result;
}

uint64_t sub_2143E26FC()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 32) = 0x5479616C70736964;
  *(inited + 16) = xmmword_2146E68D0;
  v8 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xEB00000000747865;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  *(inited + 72) = v8;
  *(inited + 80) = 0x6B63616274736F70;
  *(inited + 88) = 0xE800000000000000;
  if (v3)
  {
    v9 = MEMORY[0x277D837D0];
    v10 = v3;
  }

  else
  {
    v4 = 0;
    v10 = 0;
    v9 = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v4;
  *(inited + 104) = v10;
  *(inited + 120) = v9;
  *(inited + 128) = 0x54796C7065526E69;
  *(inited + 136) = 0xEB0000000044496FLL;
  if (v5)
  {
    v11 = MEMORY[0x277D837D0];
  }

  else
  {
    v6 = 0;
    v11 = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v6;
  *(inited + 152) = v5;
  *(inited + 168) = v11;
  v12 = inited;

  v13 = sub_214045690(v12);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
  swift_arrayDestroy();
  v14 = sub_2140418B8(v13);

  return v14;
}

uint64_t sub_2143E28A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6B63616274736F70;
  if (v2 != 1)
  {
    v4 = 0x54796C7065526E69;
    v3 = 0xEB0000000044496FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x5479616C70736964;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB00000000747865;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6B63616274736F70;
  if (*a2 != 1)
  {
    v8 = 0x54796C7065526E69;
    v7 = 0xEB0000000044496FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x5479616C70736964;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB00000000747865;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2143E29B8()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2143E2A6C(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_2143E2B0C(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2143E2BBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2143E32C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2143E2BEC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000747865;
  v4 = 0xE800000000000000;
  v5 = 0x6B63616274736F70;
  if (v2 != 1)
  {
    v5 = 0x54796C7065526E69;
    v4 = 0xEB0000000044496FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x5479616C70736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_2143E2C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143E32C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2143E2C84(uint64_t a1)
{
  v2 = sub_2143E3144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143E2CC0(uint64_t a1)
{
  v2 = sub_2143E3144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143E2CFC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912A20, &qword_21473AD50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143E3144();
  sub_2146DAA08();
  if (!v2)
  {
    v25 = 0;
    v9 = sub_2146DA168();
    v11 = v10;
    v22 = v9;
    v24 = 1;
    v12 = sub_2146DA0F8();
    v14 = v13;
    v21 = v12;
    v23 = 2;
    v16 = sub_2146DA0F8();
    v17 = v8;
    v19 = v18;
    (*(v6 + 8))(v17, v5);
    v20 = v21;
    *a2 = v22;
    a2[1] = v11;
    a2[2] = v20;
    a2[3] = v14;
    a2[4] = v16;
    a2[5] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2143E2F2C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912A30, &unk_21473AD58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = v1[2];
  v16 = v1[3];
  v17 = v7;
  v8 = v1[4];
  v14 = v1[5];
  v15 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143E3144();
  sub_2146DAA28();
  LOBYTE(v19) = 0;
  v9 = v18;
  sub_2146DA328();
  if (!v9)
  {
    v11 = v14;
    v10 = v15;
    v19 = v17;
    v20 = v16;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v19 = v10;
    v20 = v11;
    v21 = 2;
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2143E3144()
{
  result = qword_27C912A28;
  if (!qword_27C912A28)
  {
    result = swift_getWitnessTable(a9_3, &_s19CodingConfigurationV10CodingKeysON_5, v0, v1);
    atomic_store(result, &qword_27C912A28);
  }

  return result;
}

unint64_t sub_2143E31BC()
{
  result = qword_27C912A38;
  if (!qword_27C912A38)
  {
    result = swift_getWitnessTable(byte_21473AEC8, &_s19CodingConfigurationV10CodingKeysON_5, v0, v1);
    atomic_store(result, &qword_27C912A38);
  }

  return result;
}

unint64_t sub_2143E3214()
{
  result = qword_27C912A40;
  if (!qword_27C912A40)
  {
    result = swift_getWitnessTable(byte_21473AE00, &_s19CodingConfigurationV10CodingKeysON_5, v0, v1);
    atomic_store(result, &qword_27C912A40);
  }

  return result;
}

unint64_t sub_2143E326C()
{
  result = qword_27C912A48;
  if (!qword_27C912A48)
  {
    result = swift_getWitnessTable(byte_21473AE28, &_s19CodingConfigurationV10CodingKeysON_5, v0, v1);
    atomic_store(result, &qword_27C912A48);
  }

  return result;
}

unint64_t sub_2143E32C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2146DA098();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2143E330C(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_214095BE4(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_214095BE4((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = *(type metadata accessor for LinkPresentation.EncodedToken(0) - 8);
  result = sub_214400A9C(a1, v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, type metadata accessor for LinkPresentation.EncodedToken);
  *v1 = v3;
  return result;
}

uint64_t sub_2143E341C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    sub_2146D9FB8();
    v4 = a1 + 32;
    do
    {
      sub_2143F7CD4();
      sub_2146D9F98();
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      v4 += 128;
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t sub_2143E34EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    sub_2146D9FB8();
    v4 = a1 + 32;
    do
    {
      sub_214400398();
      sub_2146D9F98();
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      v4 += 128;
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

char *sub_2143E35B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2146DA028())
  {
    v4 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v4;
    }

    v22 = MEMORY[0x277D84F90];
    result = sub_2140A0000(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v6 = 0;
    v4 = v22;
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = i - 1;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x216054E00](v6, a1);
      }

      else
      {
        if (v6 >= *(v23 + 16))
        {
          goto LABEL_19;
        }

        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      sub_2143EE118(v9, v20);
      if (v1)
      {

        return v4;
      }

      v15 = v20[2];
      v16 = v20[3];
      *&v19[9] = *(v21 + 9);
      v18 = v20[5];
      *v19 = v21[0];
      v17 = v20[4];
      v13 = v20[0];
      v14 = v20[1];
      v22 = v4;
      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2140A0000((v10 > 1), v11 + 1, 1);
        v4 = v22;
      }

      *(v4 + 16) = v11 + 1;
      v12 = (v4 + (v11 << 7));
      v12[4] = v15;
      v12[5] = v16;
      v12[2] = v13;
      v12[3] = v14;
      *(v12 + 137) = *&v19[9];
      v12[7] = v18;
      v12[8] = *v19;
      v12[6] = v17;
      if (v7 == v6)
      {
        return v4;
      }

      ++v6;
    }

    while (!__OFADD__(v6, 1));
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

char *sub_2143E3784(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2146DA028())
  {
    v3 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v3;
    }

    v17 = MEMORY[0x277D84F90];
    result = sub_2140A0020(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v5 = 0;
    v3 = v17;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x216054E00](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_2144001E4(v6, v16);
      v17 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2140A0020((v7 > 1), v8 + 1, 1);
        v3 = v17;
      }

      *(v3 + 16) = v8 + 1;
      v9 = (v3 + (v8 << 7));
      v10 = v16[0];
      v11 = v16[1];
      v12 = v16[3];
      v9[4] = v16[2];
      v9[5] = v12;
      v9[2] = v10;
      v9[3] = v11;
      v13 = v16[4];
      v14 = v16[5];
      v15 = v16[7];
      v9[8] = v16[6];
      v9[9] = v15;
      v9[6] = v13;
      v9[7] = v14;
      if (i - 1 == v5)
      {
        return v3;
      }

      ++v5;
    }

    while (!__OFADD__(v5, 1));
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_2143E38F4()
{
  v0 = sub_2143E3A80();
  v2 = v1;
  v3 = sub_2146D8A38();
  sub_213FB54FC(v0, v2);
  return v3;
}

uint64_t sub_2143E393C()
{
  v0 = sub_2143E3A80();
  v2 = v1;
  v3 = sub_2146D8A38();
  sub_213FB54FC(v0, v2);
  return v3;
}

void sub_2143E3984(void *a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1)
  {
    sub_2143EE118(a1, a2);
    if (!v2)
    {
      nullsub_1();
    }
  }

  else
  {
    sub_2144008B4(v7);
    v4 = v7[5];
    a2[4] = v7[4];
    a2[5] = v4;
    a2[6] = v8[0];
    *(a2 + 105) = *(v8 + 9);
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    v6 = v7[3];
    a2[2] = v7[2];
    a2[3] = v6;
  }
}

double sub_2143E3A0C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_2144001E4(a1, a2);
    nullsub_1();
  }

  else
  {
    sub_214400940(v8);
    v4 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v4;
    v5 = v14;
    *(a2 + 96) = v13;
    *(a2 + 112) = v5;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

uint64_t sub_2143E3A80()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v1 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912A50, off_278175228);
  [v0 setClassName:v1 forClass:swift_getObjCClassFromMetadata()];

  v2 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912A58, off_278175138);
  [v0 setClassName:v2 forClass:swift_getObjCClassFromMetadata()];

  v3 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912A60, off_2781751E8);
  [v0 setClassName:v3 forClass:swift_getObjCClassFromMetadata()];

  v4 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912A68, off_278175278);
  [v0 setClassName:v4 forClass:swift_getObjCClassFromMetadata()];

  v5 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912A70, off_278175130);
  [v0 setClassName:v5 forClass:swift_getObjCClassFromMetadata()];

  v6 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912A78, off_278175198);
  [v0 setClassName:v6 forClass:swift_getObjCClassFromMetadata()];

  v7 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912A80, off_2781751E0);
  [v0 setClassName:v7 forClass:swift_getObjCClassFromMetadata()];

  v8 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912A88, off_278175270);
  [v0 setClassName:v8 forClass:swift_getObjCClassFromMetadata()];

  v9 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912A90, off_278175140);
  [v0 setClassName:v9 forClass:swift_getObjCClassFromMetadata()];

  v10 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912A98, off_2781751F0);
  [v0 setClassName:v10 forClass:swift_getObjCClassFromMetadata()];

  v11 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AA0, off_2781751D8);
  [v0 setClassName:v11 forClass:swift_getObjCClassFromMetadata()];

  v12 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AA8, off_278175280);
  [v0 setClassName:v12 forClass:swift_getObjCClassFromMetadata()];

  v13 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AB0, off_2781751A0);
  [v0 setClassName:v13 forClass:swift_getObjCClassFromMetadata()];

  v14 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AB8, off_278175188);
  [v0 setClassName:v14 forClass:swift_getObjCClassFromMetadata()];

  v15 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AC0, off_278175208);
  [v0 setClassName:v15 forClass:swift_getObjCClassFromMetadata()];

  v16 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AC8, off_278175200);
  [v0 setClassName:v16 forClass:swift_getObjCClassFromMetadata()];

  v17 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AD0, off_278175238);
  [v0 setClassName:v17 forClass:swift_getObjCClassFromMetadata()];

  v18 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AD8, off_278175258);
  [v0 setClassName:v18 forClass:swift_getObjCClassFromMetadata()];

  v19 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AE0, off_278175308);
  [v0 setClassName:v19 forClass:swift_getObjCClassFromMetadata()];

  v20 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AE8, off_2781752A8);
  [v0 setClassName:v20 forClass:swift_getObjCClassFromMetadata()];

  v21 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AF0, off_2781752B0);
  [v0 setClassName:v21 forClass:swift_getObjCClassFromMetadata()];

  v22 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912AF8, off_2781752D8);
  [v0 setClassName:v22 forClass:swift_getObjCClassFromMetadata()];

  v23 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B00, off_2781752E0);
  [v0 setClassName:v23 forClass:swift_getObjCClassFromMetadata()];

  v24 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B08, off_2781752F8);
  [v0 setClassName:v24 forClass:swift_getObjCClassFromMetadata()];

  v25 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B10, off_278175300);
  [v0 setClassName:v25 forClass:swift_getObjCClassFromMetadata()];

  v26 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B18, off_2781752C0);
  [v0 setClassName:v26 forClass:swift_getObjCClassFromMetadata()];

  v27 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B20, off_2781752B8);
  [v0 setClassName:v27 forClass:swift_getObjCClassFromMetadata()];

  v28 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B28, off_2781752E8);
  [v0 setClassName:v28 forClass:swift_getObjCClassFromMetadata()];

  v29 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B30, off_2781752F0);
  [v0 setClassName:v29 forClass:swift_getObjCClassFromMetadata()];

  v30 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B38, off_278175310);
  [v0 setClassName:v30 forClass:swift_getObjCClassFromMetadata()];

  v31 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B40, off_278175318);
  [v0 setClassName:v31 forClass:swift_getObjCClassFromMetadata()];

  v32 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B48, off_278175158);
  [v0 setClassName:v32 forClass:swift_getObjCClassFromMetadata()];

  v33 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B50, off_2781752D0);
  [v0 setClassName:v33 forClass:swift_getObjCClassFromMetadata()];

  v34 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B58, off_2781752C8);
  [v0 setClassName:v34 forClass:swift_getObjCClassFromMetadata()];

  v35 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B60, off_2781752A0);
  [v0 setClassName:v35 forClass:swift_getObjCClassFromMetadata()];

  v36 = sub_2146D9588();
  sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
  [v0 setClassName:v36 forClass:swift_getObjCClassFromMetadata()];

  v37 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B68, off_278175298);
  [v0 setClassName:v37 forClass:swift_getObjCClassFromMetadata()];

  v38 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B70, off_2781751D0);
  [v0 setClassName:v38 forClass:swift_getObjCClassFromMetadata()];

  v39 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B78, off_278175220);
  [v0 setClassName:v39 forClass:swift_getObjCClassFromMetadata()];

  v40 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B80, off_278175210);
  [v0 setClassName:v40 forClass:swift_getObjCClassFromMetadata()];

  v41 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B88, off_278175218);
  [v0 setClassName:v41 forClass:swift_getObjCClassFromMetadata()];

  v42 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B90, off_2781751C0);
  [v0 setClassName:v42 forClass:swift_getObjCClassFromMetadata()];

  v43 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912B98, off_278175160);
  [v0 setClassName:v43 forClass:swift_getObjCClassFromMetadata()];

  v44 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BA0, off_278175260);
  [v0 setClassName:v44 forClass:swift_getObjCClassFromMetadata()];

  v45 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BA8, off_278175180);
  [v0 setClassName:v45 forClass:swift_getObjCClassFromMetadata()];

  v46 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BB0, off_278175168);
  [v0 setClassName:v46 forClass:swift_getObjCClassFromMetadata()];

  v47 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BB8, off_278175178);
  [v0 setClassName:v47 forClass:swift_getObjCClassFromMetadata()];

  v48 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BC0, off_278175170);
  [v0 setClassName:v48 forClass:swift_getObjCClassFromMetadata()];

  v49 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BC8, off_2781751B0);
  [v0 setClassName:v49 forClass:swift_getObjCClassFromMetadata()];

  v50 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BD0, off_278175290);
  [v0 setClassName:v50 forClass:swift_getObjCClassFromMetadata()];

  v51 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BD8, off_278175150);
  [v0 setClassName:v51 forClass:swift_getObjCClassFromMetadata()];

  v52 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BE0, off_278175268);
  [v0 setClassName:v52 forClass:swift_getObjCClassFromMetadata()];

  v53 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BE8, off_2781751B8);
  [v0 setClassName:v53 forClass:swift_getObjCClassFromMetadata()];

  v54 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BF0, off_278175230);
  [v0 setClassName:v54 forClass:swift_getObjCClassFromMetadata()];

  v55 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912BF8, off_278175248);
  [v0 setClassName:v55 forClass:swift_getObjCClassFromMetadata()];

  v56 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912C08, off_278175190);
  [v0 setClassName:v56 forClass:swift_getObjCClassFromMetadata()];

  v57 = sub_2146D9588();
  sub_21404A8B8(0, &qword_27C912C00, off_2781751C8);
  [v0 setClassName:v57 forClass:swift_getObjCClassFromMetadata()];

  v58 = sub_2143E4D5C();
  [v0 encodeObject:v58 forKey:*MEMORY[0x277CCA308]];

  v59 = [v0 encodedData];
  v60 = sub_2146D8A58();

  return v60;
}

id sub_2143E4D5C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904860, &qword_2146EDB50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = [objc_allocWithZone(_BlastDoorLPMessagesPayload) init];
  sub_213FB2E54(v1, v4, &qword_27C904860, &qword_2146EDB50);
  v6 = type metadata accessor for LinkPresentation.LinkMetadata(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_213FB2DF4(v4, &qword_27C904860, &qword_2146EDB50);
    v7 = 0;
  }

  else
  {
    v7 = sub_2143EB164();
    sub_214400B04(v4, type metadata accessor for LinkPresentation.LinkMetadata);
  }

  [v5 setMetadata_];

  [v5 setPlaceholder_];
  return v5;
}

void sub_2143E4ED8(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904860, &qword_2146EDB50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v161 - v8);
  v10 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  v11 = sub_21404A62C();
  if (!v3)
  {
    v161 = a3;
    v162 = v9;
    v163 = 0;
    v170 = a2;
    v171 = a1;
    v26 = v11;
    [v26 _enableStrictSecureDecodingMode];
    [v26 setDecodingFailurePolicy_];
    v165 = sub_21404A8B8(0, &qword_27C912A50, off_278175228);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v28 = sub_2146D9588();
    [v26 setClass:ObjCClassFromMetadata forClassName:v28];

    sub_21404A8B8(0, &qword_27C912A58, off_278175138);
    v29 = swift_getObjCClassFromMetadata();
    v30 = sub_2146D9588();
    [v26 setClass:v29 forClassName:v30];

    sub_21404A8B8(0, &qword_27C912A60, off_2781751E8);
    v31 = swift_getObjCClassFromMetadata();
    v32 = sub_2146D9588();
    [v26 setClass:v31 forClassName:v32];

    sub_21404A8B8(0, &qword_27C912A68, off_278175278);
    v33 = swift_getObjCClassFromMetadata();
    v34 = sub_2146D9588();
    [v26 setClass:v33 forClassName:v34];

    sub_21404A8B8(0, &qword_27C912A70, off_278175130);
    v35 = swift_getObjCClassFromMetadata();
    v36 = sub_2146D9588();
    [v26 setClass:v35 forClassName:v36];

    sub_21404A8B8(0, &qword_27C912A78, off_278175198);
    v37 = swift_getObjCClassFromMetadata();
    v38 = sub_2146D9588();
    [v26 setClass:v37 forClassName:v38];

    sub_21404A8B8(0, &qword_27C912A80, off_2781751E0);
    v39 = swift_getObjCClassFromMetadata();
    v40 = sub_2146D9588();
    [v26 setClass:v39 forClassName:v40];

    sub_21404A8B8(0, &qword_27C912A88, off_278175270);
    v41 = swift_getObjCClassFromMetadata();
    v42 = sub_2146D9588();
    [v26 setClass:v41 forClassName:v42];

    sub_21404A8B8(0, &qword_27C912A90, off_278175140);
    v43 = swift_getObjCClassFromMetadata();
    v166 = 0xD000000000000011;
    v44 = sub_2146D9588();
    [v26 setClass:v43 forClassName:v44];

    sub_21404A8B8(0, &qword_27C912A98, off_2781751F0);
    v45 = swift_getObjCClassFromMetadata();
    v46 = sub_2146D9588();
    [v26 setClass:v45 forClassName:v46];

    sub_21404A8B8(0, &qword_27C912AA0, off_2781751D8);
    v47 = swift_getObjCClassFromMetadata();
    v48 = sub_2146D9588();
    [v26 setClass:v47 forClassName:v48];

    sub_21404A8B8(0, &qword_27C912AA8, off_278175280);
    v49 = swift_getObjCClassFromMetadata();
    v50 = sub_2146D9588();
    [v26 setClass:v49 forClassName:v50];

    sub_21404A8B8(0, &qword_27C912AB0, off_2781751A0);
    v51 = swift_getObjCClassFromMetadata();
    v52 = sub_2146D9588();
    [v26 setClass:v51 forClassName:v52];

    sub_21404A8B8(0, &qword_27C912AB8, off_278175188);
    v53 = swift_getObjCClassFromMetadata();
    v54 = sub_2146D9588();
    [v26 setClass:v53 forClassName:v54];

    sub_21404A8B8(0, &qword_27C912AC0, off_278175208);
    v55 = swift_getObjCClassFromMetadata();
    v167 = 0xD000000000000016;
    v56 = sub_2146D9588();
    [v26 setClass:v55 forClassName:v56];

    sub_21404A8B8(0, &qword_27C912AC8, off_278175200);
    v57 = swift_getObjCClassFromMetadata();
    v58 = sub_2146D9588();
    [v26 setClass:v57 forClassName:v58];

    sub_21404A8B8(0, &qword_27C912AD0, off_278175238);
    v59 = swift_getObjCClassFromMetadata();
    v60 = sub_2146D9588();
    [v26 setClass:v59 forClassName:v60];

    sub_21404A8B8(0, &qword_27C912AD8, off_278175258);
    v61 = swift_getObjCClassFromMetadata();
    v168 = 0xD000000000000018;
    v62 = sub_2146D9588();
    [v26 setClass:v61 forClassName:v62];

    sub_21404A8B8(0, &qword_27C912AE0, off_278175308);
    v63 = swift_getObjCClassFromMetadata();
    v164 = 0xD000000000000019;
    v64 = sub_2146D9588();
    [v26 setClass:v63 forClassName:v64];

    sub_21404A8B8(0, &qword_27C912AE8, off_2781752A8);
    v65 = swift_getObjCClassFromMetadata();
    v66 = sub_2146D9588();
    [v26 setClass:v65 forClassName:v66];

    sub_21404A8B8(0, &qword_27C912AF0, off_2781752B0);
    v67 = swift_getObjCClassFromMetadata();
    v68 = sub_2146D9588();
    [v26 setClass:v67 forClassName:v68];

    sub_21404A8B8(0, &qword_27C912AF8, off_2781752D8);
    v69 = swift_getObjCClassFromMetadata();
    v169 = 0xD00000000000001FLL;
    v70 = sub_2146D9588();
    [v26 setClass:v69 forClassName:v70];

    sub_21404A8B8(0, &qword_27C912B00, off_2781752E0);
    v71 = swift_getObjCClassFromMetadata();
    v72 = sub_2146D9588();
    [v26 setClass:v71 forClassName:v72];

    sub_21404A8B8(0, &qword_27C912B08, off_2781752F8);
    v73 = swift_getObjCClassFromMetadata();
    v74 = sub_2146D9588();
    [v26 setClass:v73 forClassName:v74];

    sub_21404A8B8(0, &qword_27C912B10, off_278175300);
    v75 = swift_getObjCClassFromMetadata();
    v76 = sub_2146D9588();
    [v26 setClass:v75 forClassName:v76];

    sub_21404A8B8(0, &qword_27C912B18, off_2781752C0);
    v77 = swift_getObjCClassFromMetadata();
    v78 = sub_2146D9588();
    [v26 setClass:v77 forClassName:v78];

    sub_21404A8B8(0, &qword_27C912B20, off_2781752B8);
    v79 = swift_getObjCClassFromMetadata();
    v80 = sub_2146D9588();
    [v26 setClass:v79 forClassName:v80];

    sub_21404A8B8(0, &qword_27C912B28, off_2781752E8);
    v81 = swift_getObjCClassFromMetadata();
    v82 = sub_2146D9588();
    [v26 setClass:v81 forClassName:v82];

    sub_21404A8B8(0, &qword_27C912B30, off_2781752F0);
    v83 = swift_getObjCClassFromMetadata();
    v84 = v165;
    v85 = sub_2146D9588();
    [v26 setClass:v83 forClassName:v85];

    sub_21404A8B8(0, &qword_27C912B38, off_278175310);
    v86 = swift_getObjCClassFromMetadata();
    v87 = sub_2146D9588();
    [v26 setClass:v86 forClassName:v87];

    sub_21404A8B8(0, &qword_27C912B40, off_278175318);
    v88 = swift_getObjCClassFromMetadata();
    v89 = sub_2146D9588();
    [v26 setClass:v88 forClassName:v89];

    sub_21404A8B8(0, &qword_27C912B48, off_278175158);
    v90 = swift_getObjCClassFromMetadata();
    v91 = sub_2146D9588();
    [v26 setClass:v90 forClassName:v91];

    sub_21404A8B8(0, &qword_27C912B50, off_2781752D0);
    v92 = swift_getObjCClassFromMetadata();
    v93 = sub_2146D9588();
    [v26 setClass:v92 forClassName:v93];

    sub_21404A8B8(0, &qword_27C912B58, off_2781752C8);
    v94 = swift_getObjCClassFromMetadata();
    v95 = sub_2146D9588();
    [v26 setClass:v94 forClassName:v95];

    sub_21404A8B8(0, &qword_27C912B60, off_2781752A0);
    v96 = swift_getObjCClassFromMetadata();
    v97 = sub_2146D9588();
    [v26 setClass:v96 forClassName:v97];

    sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
    v98 = swift_getObjCClassFromMetadata();
    v99 = sub_2146D9588();
    [v26 setClass:v98 forClassName:v99];

    sub_21404A8B8(0, &qword_27C912B68, off_278175298);
    v100 = swift_getObjCClassFromMetadata();
    v101 = sub_2146D9588();
    [v26 setClass:v100 forClassName:v101];

    sub_21404A8B8(0, &qword_27C912B70, off_2781751D0);
    v102 = swift_getObjCClassFromMetadata();
    v103 = sub_2146D9588();
    [v26 setClass:v102 forClassName:v103];

    sub_21404A8B8(0, &qword_27C912B78, off_278175220);
    v104 = swift_getObjCClassFromMetadata();
    v105 = sub_2146D9588();
    [v26 setClass:v104 forClassName:v105];

    sub_21404A8B8(0, &qword_27C912B80, off_278175210);
    v106 = swift_getObjCClassFromMetadata();
    v107 = sub_2146D9588();
    [v26 setClass:v106 forClassName:v107];

    sub_21404A8B8(0, &qword_27C912B88, off_278175218);
    v108 = swift_getObjCClassFromMetadata();
    v109 = sub_2146D9588();
    [v26 setClass:v108 forClassName:v109];

    sub_21404A8B8(0, &qword_27C912B90, off_2781751C0);
    v110 = swift_getObjCClassFromMetadata();
    v111 = sub_2146D9588();
    [v26 setClass:v110 forClassName:v111];

    sub_21404A8B8(0, &qword_27C912B98, off_278175160);
    v112 = swift_getObjCClassFromMetadata();
    v113 = sub_2146D9588();
    [v26 setClass:v112 forClassName:v113];

    sub_21404A8B8(0, &qword_27C912BA0, off_278175260);
    v114 = swift_getObjCClassFromMetadata();
    v115 = sub_2146D9588();
    [v26 setClass:v114 forClassName:v115];

    sub_21404A8B8(0, &qword_27C912BA8, off_278175180);
    v116 = swift_getObjCClassFromMetadata();
    v117 = sub_2146D9588();
    [v26 setClass:v116 forClassName:v117];

    sub_21404A8B8(0, &qword_27C912BB0, off_278175168);
    v118 = swift_getObjCClassFromMetadata();
    v119 = sub_2146D9588();
    [v26 setClass:v118 forClassName:v119];

    sub_21404A8B8(0, &qword_27C912BB8, off_278175178);
    v120 = swift_getObjCClassFromMetadata();
    v121 = sub_2146D9588();
    [v26 setClass:v120 forClassName:v121];

    sub_21404A8B8(0, &qword_27C912BC0, off_278175170);
    v122 = swift_getObjCClassFromMetadata();
    v123 = sub_2146D9588();
    [v26 setClass:v122 forClassName:v123];

    sub_21404A8B8(0, &qword_27C912BC8, off_2781751B0);
    v124 = swift_getObjCClassFromMetadata();
    v125 = sub_2146D9588();
    [v26 setClass:v124 forClassName:v125];

    sub_21404A8B8(0, &qword_27C912BD0, off_278175290);
    v126 = swift_getObjCClassFromMetadata();
    v127 = sub_2146D9588();
    [v26 setClass:v126 forClassName:v127];

    sub_21404A8B8(0, &qword_27C912BD8, off_278175150);
    v128 = swift_getObjCClassFromMetadata();
    v129 = sub_2146D9588();
    [v26 setClass:v128 forClassName:v129];

    sub_21404A8B8(0, &qword_27C912BE0, off_278175268);
    v130 = swift_getObjCClassFromMetadata();
    v131 = sub_2146D9588();
    [v26 setClass:v130 forClassName:v131];

    sub_21404A8B8(0, &qword_27C912BE8, off_2781751B8);
    v132 = swift_getObjCClassFromMetadata();
    v133 = sub_2146D9588();
    [v26 setClass:v132 forClassName:v133];

    sub_21404A8B8(0, &qword_27C912BF0, off_278175230);
    v134 = swift_getObjCClassFromMetadata();
    v135 = sub_2146D9588();
    [v26 setClass:v134 forClassName:v135];

    sub_21404A8B8(0, &qword_27C912BF8, off_278175248);
    v136 = swift_getObjCClassFromMetadata();
    v137 = sub_2146D9588();
    [v26 setClass:v136 forClassName:v137];

    sub_21404A8B8(0, &qword_27C912C00, off_2781751C8);
    v138 = swift_getObjCClassFromMetadata();
    v139 = sub_2146D9588();
    [v26 setClass:v138 forClassName:v139];

    sub_21404A8B8(0, &qword_27C912C08, off_278175190);
    v140 = swift_getObjCClassFromMetadata();
    v141 = sub_2146D9588();
    [v26 setClass:v140 forClassName:v141];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913160, &unk_21473D7C0);
    v142 = swift_allocObject();
    *(v142 + 16) = xmmword_2146EA710;
    *(v142 + 32) = v84;
    sub_2146D95B8();
    sub_2146D9D08();

    if (v174)
    {
      v143 = swift_dynamicCast();
      v144 = v170;
      v145 = v171;
      if (v143)
      {
        v146 = v176;
        v147 = [v176 metadata];
        if (v147)
        {
          v148 = v147;
          v150 = v162;
          v149 = v163;
          sub_2143E6788(v148, v162);
          if (v149)
          {

LABEL_12:
            sub_213FB54FC(v145, v144);
            return;
          }

          v157 = 0;
        }

        else
        {
          v157 = 1;
          v150 = v162;
        }

        v158 = type metadata accessor for LinkPresentation.LinkMetadata(0);
        (*(*(v158 - 8) + 56))(v150, v157, 1, v158);
        v159 = [v146 isPlaceholder];

        v160 = v161;
        sub_21408AC04(v150, v161, &qword_27C904860, &qword_2146EDB50);

        sub_213FB54FC(v145, v144);
        *(v160 + *(type metadata accessor for LinkPresentation.MessagesPayload(0) + 20)) = v159;
        return;
      }
    }

    else
    {
      sub_213FB2DF4(&v172, &qword_27C913170, &qword_2146EAB20);
      v144 = v170;
      v145 = v171;
    }

    v154 = sub_2146D9F58();
    swift_allocError();
    v156 = v155;
    sub_2146D9F28();
    (*(*(v154 - 8) + 104))(v156, *MEMORY[0x277D84168], v154);
    swift_willThrow();

    goto LABEL_12;
  }

  v176 = v3;
  v12 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
  sub_21404A8B8(0, &qword_27C9131B0, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    v13 = v175;
    v171 = 0x8000000214799C00;
    sub_21404A6EC();
    swift_allocError();
    v15 = v14;
    v16 = v13;
    v17 = [v16 domain];
    v18 = sub_2146D95B8();
    v19 = a1;
    v21 = v20;

    v172 = 0xD000000000000014;
    v173 = 0x800000021478AAD0;
    MEMORY[0x2160545D0](v18, v21);

    v22 = v173;
    *v15 = v172;
    v15[1] = v22;
    v172 = [v16 code];
    v23 = sub_2146DA428();
    v25 = v24;

    v15[2] = v23;
    v15[3] = v25;
    v15[4] = 0xD000000000000020;
    v15[5] = v171;
    swift_willThrow();
    sub_213FB54FC(v19, a2);
  }

  else
  {

    sub_21404A6EC();
    swift_allocError();
    v152 = v151;
    v153 = v3;
    sub_214689A34(v3, 0xD000000000000020, 0x8000000214799C00, v152);
    swift_willThrow();
    sub_213FB54FC(a1, a2);
  }
}

void sub_2143E6788(id a1@<X0>, unsigned int *a2@<X8>)
{
  v3 = v2;
  v497 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912C10, &qword_21473AF48);
  MEMORY[0x28223BE20](v5 - 8);
  v498 = &v462 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904870, &qword_2146EDB60);
  v495 = *(v7 - 8);
  v496 = v7;
  MEMORY[0x28223BE20](v7);
  v526 = &v462 - v8;
  v499 = type metadata accessor for LinkPresentation.AudioMetadata(0);
  v503 = *(v499 - 8);
  MEMORY[0x28223BE20](v499);
  v505 = &v462 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v500 = type metadata accessor for LinkPresentation.VideoMetadata(0);
  v502 = *(v500 - 8);
  v10 = MEMORY[0x28223BE20](v500);
  v507 = &v462 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v509 = &v462 - v12;
  v542 = type metadata accessor for LinkPresentation.IconMetadata(0);
  v541 = *(v542 - 8);
  v13 = MEMORY[0x28223BE20](v542);
  v514 = (&v462 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v524 = &v462 - v16;
  MEMORY[0x28223BE20](v15);
  v513 = &v462 - v17;
  v527 = type metadata accessor for LinkPresentation.ARAssetMetadata(0);
  v525 = *(v527 - 8);
  v18 = MEMORY[0x28223BE20](v527);
  v512 = (&v462 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v522 = &v462 - v21;
  MEMORY[0x28223BE20](v20);
  v511 = &v462 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C60, &qword_2146EE6E0);
  MEMORY[0x28223BE20](v23 - 8);
  v501 = &v462 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C58, &unk_2146F6450);
  MEMORY[0x28223BE20](v25 - 8);
  v504 = &v462 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C50, &unk_2146EE6D0);
  MEMORY[0x28223BE20](v27 - 8);
  v506 = &v462 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904888, &unk_2146EDB80);
  MEMORY[0x28223BE20](v29 - 8);
  v515 = &v462 - v30;
  v549 = type metadata accessor for LinkPresentation.ImageMetadata(0);
  v543 = *(v549 - 8);
  v31 = MEMORY[0x28223BE20](v549);
  v508 = (&v462 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x28223BE20](v31);
  v518 = &v462 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v510 = (&v462 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v520 = &v462 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v540 = &v462 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v548 = &v462 - v42;
  MEMORY[0x28223BE20](v41);
  v539 = &v462 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C48, &qword_2146EE6C8);
  MEMORY[0x28223BE20](v44 - 8);
  v516 = &v462 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C40, &qword_2146EE6C0);
  MEMORY[0x28223BE20](v46 - 8);
  v48 = &v462 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C38, &qword_2146EE6B8);
  MEMORY[0x28223BE20](v49 - 8);
  v51 = &v462 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v53 = MEMORY[0x28223BE20](v52 - 8);
  v517 = &v462 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v53);
  v519 = &v462 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v523 = &v462 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v521 = &v462 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v547 = &v462 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v65 = &v462 - v64;
  v66 = MEMORY[0x28223BE20](v63);
  v68 = &v462 - v67;
  MEMORY[0x28223BE20](v66);
  v70 = &v462 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C68, &qword_2146EE6E8);
  v72 = MEMORY[0x28223BE20](v71 - 8);
  v74 = &v462 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v550 = &v462 - v75;
  v76 = [a1 associatedApplication];
  v626 = a1;
  if (v76)
  {
    v77 = v48;
    v78 = v76;
    sub_2143EDE48(v78, &v614);
    if (v2)
    {

      return;
    }

    nullsub_1();
    v48 = v77;
    a1 = v626;
  }

  else
  {
    sub_214400888(&v602);
    v622 = v610;
    v623 = v611;
    v624 = v612;
    v625 = v613;
    v618 = v606;
    v619 = v607;
    v620 = v608;
    v621 = v609;
    v614 = v602;
    v615 = v603;
    v616 = v604;
    v617 = v605;
  }

  v546 = v65;
  v610 = v622;
  v611 = v623;
  v612 = v624;
  v613 = v625;
  v606 = v618;
  v607 = v619;
  v608 = v620;
  v609 = v621;
  v602 = v614;
  v603 = v615;
  v604 = v616;
  v605 = v617;
  v79 = [a1 collaborationMetadata];
  v80 = v48;
  if (v79)
  {
    sub_21449979C(v79, v74);
    v81 = 0;
  }

  else
  {
    v81 = 1;
  }

  v82 = type metadata accessor for CollaborationMetadata(0);
  v83 = 1;
  (*(*(v82 - 8) + 56))(v74, v81, 1, v82);
  sub_21408AC04(v74, v550, &qword_27C904C68, &qword_2146EE6E8);
  v84 = v626;
  v493 = [v626 version];
  v85 = [v84 originalURL];
  if (v85)
  {
    v86 = v85;
    sub_2146D88E8();

    v83 = 0;
  }

  i = v546;
  v88 = sub_2146D8958();
  v89 = *(v88 - 8);
  v90 = *(v89 + 56);
  v91 = 1;
  v553 = v88;
  v552 = v90;
  v551 = v89 + 56;
  v90(v70, v83, 1);
  v92 = [v626 URL];
  if (v92)
  {
    v93 = v92;
    sub_2146D88E8();

    v91 = 0;
  }

  v94 = v80;
  (v552)(v68, v91, 1, v553);
  v95 = v626;
  v96 = [v626 title];
  if (v96)
  {
    v97 = v96;
    v492 = sub_2146D95B8();
    v538 = v98;
  }

  else
  {
    v492 = 0;
    v538 = 0;
  }

  v99 = [v95 summary];
  if (v99)
  {
    v100 = v99;
    v491 = sub_2146D95B8();
    v537 = v101;
  }

  else
  {
    v491 = 0;
    v537 = 0;
  }

  v102 = [v95 selectedText];
  if (v102)
  {
    v103 = v102;
    v490 = sub_2146D95B8();
    v536 = v104;
  }

  else
  {
    v490 = 0;
    v536 = 0;
  }

  v105 = [v95 siteName];
  if (v105)
  {
    v106 = v105;
    v489 = sub_2146D95B8();
    v535 = v107;
  }

  else
  {
    v489 = 0;
    v535 = 0;
  }

  v108 = [v95 itemType];
  if (v108)
  {
    v109 = v108;
    v488 = sub_2146D95B8();
    v533 = v110;
  }

  else
  {
    v488 = 0;
    v533 = 0;
  }

  v111 = [v95 relatedURL];
  if (v111)
  {
    v112 = v111;
    sub_2146D88E8();

    v113 = 0;
  }

  else
  {
    v113 = 1;
  }

  (v552)(i, v113, 1, v553);
  v114 = [v95 creator];
  if (v114)
  {
    v115 = v114;
    v487 = sub_2146D95B8();
    v531 = v116;
  }

  else
  {
    v487 = 0;
    v531 = 0;
  }

  v117 = [v95 creatorFacebookProfile];
  if (v117)
  {
    v118 = v117;
    v486 = sub_2146D95B8();
    v530 = v119;
  }

  else
  {
    v486 = 0;
    v530 = 0;
  }

  v120 = [v95 creatorTwitterUsername];
  if (v120)
  {
    v121 = v120;
    v485 = sub_2146D95B8();
    v529 = v122;
  }

  else
  {
    v485 = 0;
    v529 = 0;
  }

  v123 = [v95 twitterCard];
  if (v123)
  {
    v124 = v123;
    v484 = sub_2146D95B8();
    v528 = v125;
  }

  else
  {
    v484 = 0;
    v528 = 0;
  }

  v483 = [v95 usesActivityPub];
  v126 = [v95 themeColor];
  v127 = v126;
  if (v126)
  {
    [v126 r];
    v545 = v128;
    [v127 g];
    v534 = v129;
    [v127 b];
    v544 = v130;
    [v127 a];
    v532 = v131;

    *&v132 = v545;
    *(&v132 + 1) = v534;
    v545 = v132;
    *&v133 = v544;
    *(&v133 + 1) = v532;
  }

  else
  {
    v133 = 0uLL;
    v545 = 0u;
  }

  v544 = v133;
  v481 = v127;
  v134 = [v95 appleContentID];
  if (v134)
  {
    v135 = v134;
    v482 = sub_2146D95B8();
    *&v534 = v136;
  }

  else
  {
    v482 = 0;
    *&v534 = 0;
  }

  v137 = [v95 appleSummary];
  if (v137)
  {
    v138 = v137;
    v480 = sub_2146D95B8();
    *&v532 = v139;
  }

  else
  {
    v480 = 0;
    *&v532 = 0;
  }

  v140 = [v95 icon];
  if (v140)
  {
    v141 = v140;
    sub_2143EE118(v141, &v595);
    if (v2)
    {

      v142 = &qword_27C90B408;
      v143 = &qword_2146F64D8;
      v144 = &v602;
LABEL_60:
      sub_213FB2DF4(v144, v142, v143);

LABEL_73:
      v150 = i;
LABEL_74:
      sub_213FB2DF4(v150, &unk_27C9131A0, &unk_2146E9D10);
      v151 = v68;
LABEL_75:
      sub_213FB2DF4(v151, &unk_27C9131A0, &unk_2146E9D10);
      sub_213FB2DF4(v70, &unk_27C9131A0, &unk_2146E9D10);
      sub_213FB2DF4(v550, &qword_27C904C68, &qword_2146EE6E8);
      return;
    }

    nullsub_1();
  }

  else
  {
    sub_2144008B4(&v588);
    v599 = v592;
    v600 = v593;
    v601[0] = v594[0];
    *(v601 + 9) = *(v594 + 9);
    v595 = v588;
    v596 = v589;
    v597 = v590;
    v598 = v591;
  }

  v592 = v599;
  v593 = v600;
  v594[0] = v601[0];
  *(v594 + 9) = *(v601 + 9);
  v588 = v595;
  v589 = v596;
  v590 = v597;
  v591 = v598;
  v145 = [v95 iconMetadata];
  if (v145)
  {
    v141 = v145;
    sub_2143EE4E0(v141, v51);
    if (v2)
    {

      sub_213FB2DF4(&v602, &qword_27C90B408, &qword_2146F64D8);
      v142 = &qword_27C904868;
      v143 = &qword_2146EDB58;
      v144 = &v588;
      goto LABEL_60;
    }

    v146 = 0;
  }

  else
  {
    v146 = 1;
  }

  (*(v541 + 56))(v51, v146, 1, v542);
  v147 = [v95 arAsset];
  if (v147)
  {
    v148 = v147;
    sub_2143EE758(v148, &v583);
    if (v2)
    {

      sub_213FB2DF4(&v602, &qword_27C90B408, &qword_2146F64D8);
      sub_213FB2DF4(&v588, &qword_27C904868, &qword_2146EDB58);
LABEL_71:

LABEL_72:
      sub_213FB2DF4(v51, &qword_27C904C38, &qword_2146EE6B8);
      goto LABEL_73;
    }

    v469 = v583;
    v470 = v584;
    v471 = v585;
    v472 = v586;
    v473 = v587;
  }

  else
  {
    v472 = 0;
    v473 = 0;
    v469 = 0;
    v470 = 0;
    v584 = 0;
    v583 = 0;
    v587 = 0;
    v471 = 1;
    v585 = 1;
    v586 = 0;
  }

  v149 = [v95 arAssetMetadata];
  if (v149)
  {
    v148 = v149;
    sub_2143EF124(v148, type metadata accessor for LinkPresentation.ARAssetMetadata, type metadata accessor for LinkPresentation.ARAssetMetadata, v94);
    if (v2)
    {

      sub_213FB2DF4(&v602, &qword_27C90B408, &qword_2146F64D8);
      sub_213FB2DF4(&v588, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v469, v470, v471, v472, v473);
      goto LABEL_71;
    }

    v465 = v94;

    v152 = 0;
  }

  else
  {
    v465 = v94;
    v152 = 1;
  }

  (*(v525 + 56))(v465, v152, 1, v527);
  v153 = [v95 image];
  if (v153)
  {
    v154 = v153;
    sub_2143EE118(v154, &v576);
    if (v2)
    {

      sub_213FB2DF4(&v602, &qword_27C90B408, &qword_2146F64D8);
      sub_213FB2DF4(&v588, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v469, v470, v471, v472, v473);

      sub_213FB2DF4(v465, &qword_27C904C40, &qword_2146EE6C0);
      goto LABEL_72;
    }

    nullsub_1();
  }

  else
  {
    sub_2144008B4(&v569);
    v580 = v573;
    v581 = v574;
    v582[0] = v575[0];
    *(v582 + 9) = *(v575 + 9);
    v576 = v569;
    v577 = v570;
    v578 = v571;
    v579 = v572;
  }

  v573 = v580;
  v574 = v581;
  v575[0] = v582[0];
  *(v575 + 9) = *(v582 + 9);
  v569 = v576;
  v570 = v577;
  v571 = v578;
  v572 = v579;
  v155 = [v95 alternateImages];
  v474 = v68;
  v475 = v70;
  v494 = v51;
  if (!v155)
  {
    goto LABEL_104;
  }

  sub_21404A8B8(0, &qword_27C912A80, off_2781751E0);
  i = sub_2146D9918();

  if (i >> 62)
  {
LABEL_102:
    v156 = sub_2146DA028();
    if (v156)
    {
LABEL_86:
      v568 = MEMORY[0x277D84F90];
      sub_2140A0000(0, v156 & ~(v156 >> 63), 0);
      if (v156 < 0)
      {
        goto LABEL_130;
      }

      v95 = 0;
      v155 = v568;
      v68 = (i & 0xC000000000000001);
      v479 = i & 0xFFFFFFFFFFFFFF8;
      v70 = (v156 - 1);
      while (1)
      {
        if (v68)
        {
          v157 = MEMORY[0x216054E00](v95, i);
        }

        else
        {
          if (v95 >= *(v479 + 16))
          {
            goto LABEL_101;
          }

          v157 = *(i + 8 * v95 + 32);
        }

        sub_2143EE118(v157, &v561);
        if (v3)
        {
          break;
        }

        v556 = v563;
        v557 = v564;
        *(v560 + 9) = *(v567 + 9);
        v559 = v566;
        v560[0] = v567[0];
        v558 = v565;
        v554 = v561;
        v555 = v562;
        v568 = v155;
        v159 = v155[2];
        v158 = v155[3];
        if (v159 >= v158 >> 1)
        {
          sub_2140A0000((v158 > 1), v159 + 1, 1);
          v155 = v568;
        }

        v155[2] = v159 + 1;
        v160 = &v155[16 * v159];
        v161 = v554;
        v162 = v555;
        v163 = v557;
        v160[4] = v556;
        v160[5] = v163;
        v160[2] = v161;
        v160[3] = v162;
        v164 = v558;
        v165 = v559;
        v166 = v560[0];
        *(v160 + 137) = *(v560 + 9);
        v160[7] = v165;
        v160[8] = v166;
        v160[6] = v164;
        if (v70 == v95)
        {

          v3 = 0;
          v68 = v474;
          v70 = v475;
          i = v546;
          v51 = v494;
          v95 = v626;
          goto LABEL_104;
        }

        ++v95;
        v3 = 0;
        v51 = v494;
        if (__OFADD__(v95, 1))
        {
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }
      }

      sub_213FB2DF4(&v602, &qword_27C90B408, &qword_2146F64D8);
      sub_213FB2DF4(&v588, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v469, v470, v471, v472, v473);

      sub_213FB2DF4(&v569, &qword_27C904868, &qword_2146EDB58);

      goto LABEL_127;
    }
  }

  else
  {
    v156 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v156)
    {
      goto LABEL_86;
    }
  }

  v155 = MEMORY[0x277D84F90];
  i = v546;
LABEL_104:
  v167 = v516;
  v463 = v155;
  v168 = [v95 imageMetadata];
  if (v168)
  {
    v169 = v168;
    sub_2143EECA0(v169, type metadata accessor for LinkPresentation.ImageMetadata, type metadata accessor for LinkPresentation.ImageMetadata, v167);
    if (v3)
    {

      sub_213FB2DF4(&v602, &qword_27C90B408, &qword_2146F64D8);
      sub_213FB2DF4(&v588, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v469, v470, v471, v472, v473);
      sub_213FB2DF4(&v569, &qword_27C904868, &qword_2146EDB58);

LABEL_179:
      sub_213FB2DF4(v465, &qword_27C904C40, &qword_2146EE6C0);
      sub_213FB2DF4(v51, &qword_27C904C38, &qword_2146EE6B8);
      v150 = v546;
      goto LABEL_74;
    }

    v170 = 0;
  }

  else
  {
    v170 = 1;
  }

  (*(v543 + 56))(v167, v170, 1, v549);
  v171 = [v95 contentImages];
  if (!v171)
  {
    v462 = 0;
    goto LABEL_133;
  }

  v172 = v171;
  sub_21404A8B8(0, &qword_27C912A80, off_2781751E0);
  i = sub_2146D9918();

  if (i >> 62)
  {
    goto LABEL_131;
  }

  v167 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v167)
  {
LABEL_112:
    v568 = MEMORY[0x277D84F90];
    v173 = sub_2140A0000(0, v167 & ~(v167 >> 63), 0);
    if (v167 < 0)
    {
      goto LABEL_206;
    }

    v95 = 0;
    v174 = v568;
    v68 = (i & 0xC000000000000001);
    v479 = i & 0xFFFFFFFFFFFFFF8;
    v70 = (v167 - 1);
    while (1)
    {
      if (v68)
      {
        v175 = MEMORY[0x216054E00](v95, i);
      }

      else
      {
        if (v95 >= *(v479 + 16))
        {
          goto LABEL_129;
        }

        v175 = *(i + 8 * v95 + 32);
      }

      sub_2143EE118(v175, &v561);
      if (v3)
      {
        break;
      }

      v556 = v563;
      v557 = v564;
      *(v560 + 9) = *(v567 + 9);
      v559 = v566;
      v560[0] = v567[0];
      v558 = v565;
      v554 = v561;
      v555 = v562;
      v568 = v174;
      v177 = v174[2];
      v176 = v174[3];
      v167 = v177 + 1;
      if (v177 >= v176 >> 1)
      {
        sub_2140A0000((v176 > 1), v177 + 1, 1);
        v174 = v568;
      }

      v174[2] = v167;
      v178 = &v174[16 * v177];
      v179 = v554;
      v180 = v555;
      v181 = v557;
      v178[4] = v556;
      v178[5] = v181;
      v178[2] = v179;
      v178[3] = v180;
      v182 = v558;
      v183 = v559;
      v184 = v560[0];
      *(v178 + 137) = *(v560 + 9);
      v178[7] = v183;
      v178[8] = v184;
      v178[6] = v182;
      if (v70 == v95)
      {
        v462 = v174;

        v3 = 0;
        v68 = v474;
        v70 = v475;
        i = v546;
        v51 = v494;
        v95 = v626;
        goto LABEL_133;
      }

      ++v95;
      v3 = 0;
      v51 = v494;
      if (__OFADD__(v95, 1))
      {
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        v167 = sub_2146DA028();
        if (!v167)
        {
          goto LABEL_132;
        }

        goto LABEL_112;
      }
    }

    sub_213FB2DF4(&v602, &qword_27C90B408, &qword_2146F64D8);
    sub_213FB2DF4(&v588, &qword_27C904868, &qword_2146EDB58);
    sub_214314998(v469, v470, v471, v472, v473);
    sub_213FB2DF4(&v569, &qword_27C904868, &qword_2146EDB58);

    sub_213FB2DF4(v516, &qword_27C904C48, &qword_2146EE6C8);
LABEL_127:
    sub_213FB2DF4(v465, &qword_27C904C40, &qword_2146EE6C0);
    sub_213FB2DF4(v51, &qword_27C904C38, &qword_2146EE6B8);
    sub_213FB2DF4(v546, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v474, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v475, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v550, &qword_27C904C68, &qword_2146EE6E8);

    return;
  }

LABEL_132:

  v462 = MEMORY[0x277D84F90];
  i = v546;
LABEL_133:
  v185 = [v95 contentImagesMetadata];
  if (v185)
  {
    v186 = v185;
    sub_21404A8B8(0, &qword_27C912A98, off_2781751F0);
    v187 = sub_2146D9918();

    v468 = v187;
    if (v187 >> 62)
    {
      goto LABEL_158;
    }

    v188 = *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v546; v188; i = v546)
    {
      *&v561 = MEMORY[0x277D84F90];
      v467 = v188;
      v173 = sub_21409FFBC(0, v188 & ~(v188 >> 63), 0);
      if (v467 < 0)
      {
        goto LABEL_207;
      }

      v189 = 0;
      v190 = v468;
      v466 = v468 & 0xC000000000000001;
      v479 = v561;
      v464 = v468 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v466)
        {
          v191 = MEMORY[0x216054E00](v189, v190);
          goto LABEL_143;
        }

        if ((v189 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v189 >= *(v464 + 16))
        {
          goto LABEL_157;
        }

        v191 = *(v190 + 8 * v189 + 32);
LABEL_143:
        v192 = v191;
        v193 = v549;
        v194 = *(v549 + 20);
        v195 = 1;
        v196 = v548;
        (v552)(&v548[v194], 1, 1, v553);
        v197 = &v196[*(v193 + 24)];
        *v197 = 0;
        *(v197 + 1) = 0;
        v198 = &v196[*(v193 + 32)];
        *v198 = 0;
        *(v198 + 1) = 0;
        v199 = [v192 version];
        v200 = [v192 URL];
        v201 = v547;
        if (v200)
        {
          v202 = v200;
          sub_2146D88E8();

          v195 = 0;
        }

        (v552)(v201, v195, 1, v553);
        v203 = [v192 type];
        if (v203)
        {
          v204 = v203;
          v476 = sub_2146D95B8();
          v206 = v205;
        }

        else
        {
          v476 = 0;
          v206 = 0;
        }

        [v192 size];
        v208 = v207;
        v210 = v209;
        v211 = [v192 accessibilityText];
        v477 = v194;
        v478 = v3;
        if (v211)
        {
          v212 = v211;
          v213 = sub_2146D95B8();
          v215 = v214;
        }

        else
        {

          v213 = 0;
          v215 = 0;
        }

        v216 = v540;
        *v540 = v199;
        v217 = v549;
        sub_21408AC04(v547, v216 + *(v549 + 20), &unk_27C9131A0, &unk_2146E9D10);
        v218 = (v216 + v217[6]);
        *v218 = v476;
        v218[1] = v206;
        v219 = (v216 + v217[7]);
        *v219 = v208;
        v219[1] = v210;
        v220 = (v216 + v217[8]);
        *v220 = v213;
        v220[1] = v215;
        v221 = v548;
        sub_213FB2DF4(&v548[v477], &unk_27C9131A0, &unk_2146E9D10);
        sub_214400A9C(v216, v221, type metadata accessor for LinkPresentation.ImageMetadata);
        v222 = v539;
        sub_214400A9C(v221, v539, type metadata accessor for LinkPresentation.ImageMetadata);
        v223 = v479;
        *&v561 = v479;
        v225 = *(v479 + 16);
        v224 = *(v479 + 24);
        v167 = v225 + 1;
        v95 = v626;
        if (v225 >= v224 >> 1)
        {
          sub_21409FFBC((v224 > 1), v225 + 1, 1);
          v223 = v561;
        }

        ++v189;
        *(v223 + 16) = v167;
        v226 = (*(v543 + 80) + 32) & ~*(v543 + 80);
        v479 = v223;
        sub_214400A9C(v222, v223 + v226 + *(v543 + 72) * v225, type metadata accessor for LinkPresentation.ImageMetadata);
        v190 = v468;
        v68 = v474;
        v70 = v475;
        v51 = v494;
        v3 = v478;
        if (v467 == v189)
        {

          i = v546;
          goto LABEL_160;
        }
      }

      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      v188 = sub_2146DA028();
    }

    v479 = MEMORY[0x277D84F90];
  }

  else
  {
    v479 = 0;
  }

LABEL_160:
  v227 = [v95 video];
  if (v227)
  {
    v228 = v227;
    sub_2143EE928(v228, v515);
    if (v3)
    {

      sub_213FB2DF4(&v602, &qword_27C90B408, &qword_2146F64D8);
      sub_213FB2DF4(&v588, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v469, v470, v471, v472, v473);
      sub_213FB2DF4(&v569, &qword_27C904868, &qword_2146EDB58);

LABEL_178:
      sub_213FB2DF4(v516, &qword_27C904C48, &qword_2146EE6C8);
      goto LABEL_179;
    }

    v229 = 0;
  }

  else
  {
    v229 = 1;
  }

  v230 = type metadata accessor for LinkPresentation.Video(0);
  v231 = 1;
  (*(*(v230 - 8) + 56))(v515, v229, 1, v230);
  v232 = [v95 videoMetadata];
  if (v232)
  {
    v233 = v232;
    sub_2143EECA0(v233, type metadata accessor for LinkPresentation.VideoMetadata, type metadata accessor for LinkPresentation.VideoMetadata, v506);
    if (v3)
    {

      sub_213FB2DF4(&v602, &qword_27C90B408, &qword_2146F64D8);
      sub_213FB2DF4(&v588, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v469, v470, v471, v472, v473);
      sub_213FB2DF4(&v569, &qword_27C904868, &qword_2146EDB58);

LABEL_177:
      sub_213FB2DF4(v515, &qword_27C904888, &unk_2146EDB80);
      goto LABEL_178;
    }

    v231 = 0;
  }

  v234 = 1;
  (*(v502 + 56))(v506, v231, 1, v500);
  v235 = [v95 audio];
  if (v235)
  {
    v236 = v235;
    sub_2143EEF80(v236, v504);
    if (v3)
    {

      sub_213FB2DF4(&v602, &qword_27C90B408, &qword_2146F64D8);
      sub_213FB2DF4(&v588, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v469, v470, v471, v472, v473);
      sub_213FB2DF4(&v569, &qword_27C904868, &qword_2146EDB58);

LABEL_176:
      sub_213FB2DF4(v506, &qword_27C904C50, &unk_2146EE6D0);
      goto LABEL_177;
    }

    v234 = 0;
  }

  v237 = type metadata accessor for LinkPresentation.Audio(0);
  v238 = 1;
  (*(*(v237 - 8) + 56))(v504, v234, 1, v237);
  v239 = [v95 audioMetadata];
  if (v239)
  {
    v240 = v239;
    sub_2143EF124(v240, type metadata accessor for LinkPresentation.AudioMetadata, type metadata accessor for LinkPresentation.AudioMetadata, v501);
    if (v3)
    {

      sub_213FB2DF4(&v602, &qword_27C90B408, &qword_2146F64D8);
      sub_213FB2DF4(&v588, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v469, v470, v471, v472, v473);
      sub_213FB2DF4(&v569, &qword_27C904868, &qword_2146EDB58);

      sub_213FB2DF4(v504, &qword_27C904C58, &unk_2146F6450);
      goto LABEL_176;
    }

    v238 = 0;
  }

  (*(v503 + 56))(v501, v238, 1, v499);
  v241 = [v95 arAssets];
  v167 = v526;
  if (v241)
  {
    v242 = v241;
    sub_21404A8B8(0, &qword_27C912A90, off_278175140);
    v243 = sub_2146D9918();

    v173 = v243;
    if (v243 >> 62)
    {
      goto LABEL_208;
    }

    for (j = *((v243 & 0xFFFFFFFFFFFFFF8) + 0x10); j; v173 = v276)
    {
      v167 = v173;
      *&v561 = MEMORY[0x277D84F90];
      v173 = sub_21409FF78(0, j & ~(j >> 63), 0);
      if (j < 0)
      {
        goto LABEL_346;
      }

      i = 0;
      v245 = v561;
      v246 = v167;
      v499 = v167 & 0xC000000000000001;
      v476 = v167 & 0xFFFFFFFFFFFFFF8;
      v477 = j;
      v478 = v167;
      while (1)
      {
        v547 = v245;
        if (v499)
        {
          v247 = MEMORY[0x216054E00](i, v246);
          goto LABEL_191;
        }

        if ((i & 0x8000000000000000) != 0)
        {
          break;
        }

        if (i >= *(v476 + 16))
        {
          goto LABEL_205;
        }

        v247 = *(v246 + 8 * i + 32);
LABEL_191:
        v248 = v247;
        v249 = v527;
        v250 = 1;
        v251 = v522;
        v540 = *(v527 + 20);
        (v552)(&v522[v540], 1, 1, v553);
        v252 = &v251[*(v249 + 24)];
        *v252 = 0;
        *(v252 + 1) = 0;
        v253 = &v251[*(v249 + 28)];
        *v253 = 0;
        *(v253 + 1) = 0;
        v254 = [v248 version];
        v255 = [v248 URL];
        v256 = v521;
        if (v255)
        {
          v257 = v255;
          sub_2146D88E8();

          v250 = 0;
        }

        (v552)(v256, v250, 1, v553);
        v258 = [v248 type];
        if (v258)
        {
          v259 = v258;
          v539 = sub_2146D95B8();
          v500 = v260;
        }

        else
        {
          v539 = 0;
          v500 = 0;
        }

        v261 = [v248 accessibilityText];
        v548 = i;
        if (v261)
        {
          v262 = v3;
          v263 = v261;
          v264 = sub_2146D95B8();
          v266 = v265;

          v3 = v262;
          v95 = v626;
        }

        else
        {

          v264 = 0;
          v266 = 0;
        }

        v267 = v512;
        *v512 = v254;
        v268 = v527;
        sub_21408AC04(v521, v267 + *(v527 + 20), &unk_27C9131A0, &unk_2146E9D10);
        v269 = (v267 + *(v268 + 24));
        v270 = v500;
        *v269 = v539;
        v269[1] = v270;
        v271 = (v267 + *(v268 + 28));
        *v271 = v264;
        v271[1] = v266;
        v272 = v522;
        sub_213FB2DF4(&v522[v540], &unk_27C9131A0, &unk_2146E9D10);
        sub_214400A9C(v267, v272, type metadata accessor for LinkPresentation.ARAssetMetadata);
        v273 = v511;
        sub_214400A9C(v272, v511, type metadata accessor for LinkPresentation.ARAssetMetadata);
        v245 = v547;
        *&v561 = v547;
        v275 = *(v547 + 16);
        v274 = *(v547 + 24);
        if (v275 >= v274 >> 1)
        {
          sub_21409FF78((v274 > 1), v275 + 1, 1);
          v245 = v561;
        }

        i = (v548 + 1);
        *(v245 + 16) = v275 + 1;
        v173 = sub_214400A9C(v273, v245 + ((*(v525 + 80) + 32) & ~*(v525 + 80)) + *(v525 + 72) * v275, type metadata accessor for LinkPresentation.ARAssetMetadata);
        v246 = v478;
        v70 = v475;
        v51 = v494;
        v167 = v526;
        if (v477 == i)
        {
          v547 = v245;

          i = v546;
          goto LABEL_210;
        }
      }

      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      v276 = v173;
      j = sub_2146DA028();
    }

    v547 = MEMORY[0x277D84F90];
  }

  else
  {
    v547 = 0;
  }

LABEL_210:
  v277 = [v95 icons];
  if (!v277)
  {
    v548 = 0;
    goto LABEL_230;
  }

  v278 = v277;
  sub_21404A8B8(0, &qword_27C912AA0, off_2781751D8);
  v279 = sub_2146D9918();

  v280 = v279;
  if (v279 >> 62)
  {
    v310 = v279;
    v281 = sub_2146DA028();
    v280 = v310;
    if (v281)
    {
      goto LABEL_213;
    }

LABEL_229:

    v548 = MEMORY[0x277D84F90];
    goto LABEL_230;
  }

  v281 = *((v279 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v281)
  {
    goto LABEL_229;
  }

LABEL_213:
  v282 = v280;
  *&v561 = MEMORY[0x277D84F90];
  sub_21409FF34(0, v281 & ~(v281 >> 63), 0);
  if (v281 < 0)
  {
    __break(1u);
LABEL_356:
    __break(1u);
LABEL_357:
    __break(1u);
LABEL_358:
    __break(1u);
LABEL_359:
    __break(1u);
LABEL_360:
    __break(1u);
    return;
  }

  v283 = 0;
  v548 = v561;
  v284 = v282;
  v522 = (v282 & 0xC000000000000001);
  v527 = v282;
  v525 = v281;
  do
  {
    v540 = v283;
    if (v522)
    {
      v285 = MEMORY[0x216054E00](v283, v284);
    }

    else
    {
      v285 = *(v284 + 8 * v283 + 32);
    }

    v286 = v285;
    v287 = v542;
    v288 = 1;
    v289 = v524;
    v539 = *(v542 + 20);
    (v552)(v524 + v539, 1, 1, v553);
    v290 = (v289 + *(v287 + 24));
    *v290 = 0;
    v290[1] = 0;
    v291 = [v286 version];
    v292 = [v286 URL];
    v293 = v523;
    if (v292)
    {
      v294 = v292;
      sub_2146D88E8();

      v288 = 0;
    }

    (v552)(v293, v288, 1, v553);
    v295 = [v286 accessibilityText];
    if (v295)
    {
      v296 = v3;
      v297 = v295;
      v298 = sub_2146D95B8();
      v300 = v299;

      v3 = v296;
      v70 = v475;
    }

    else
    {

      v298 = 0;
      v300 = 0;
    }

    v301 = v514;
    *v514 = v291;
    v302 = v542;
    sub_21408AC04(v523, v301 + *(v542 + 20), &unk_27C9131A0, &unk_2146E9D10);
    v303 = (v301 + *(v302 + 24));
    *v303 = v298;
    v303[1] = v300;
    v304 = v524;
    sub_213FB2DF4(v524 + v539, &unk_27C9131A0, &unk_2146E9D10);
    sub_214400A9C(v301, v304, type metadata accessor for LinkPresentation.IconMetadata);
    v305 = v513;
    sub_214400A9C(v304, v513, type metadata accessor for LinkPresentation.IconMetadata);
    v306 = v548;
    *&v561 = v548;
    v308 = *(v548 + 2);
    v307 = *(v548 + 3);
    if (v308 >= v307 >> 1)
    {
      sub_21409FF34((v307 > 1), v308 + 1, 1);
      v306 = v561;
    }

    v283 = v540 + 1;
    *(v306 + 2) = v308 + 1;
    v309 = (*(v541 + 80) + 32) & ~*(v541 + 80);
    v548 = v306;
    sub_214400A9C(v305, &v306[v309 + *(v541 + 72) * v308], type metadata accessor for LinkPresentation.IconMetadata);
    v167 = v526;
    i = v546;
    v51 = v494;
    v284 = v527;
  }

  while (v525 != v283);

  v95 = v626;
LABEL_230:
  v311 = [v95 images];
  if (v311)
  {
    v312 = v311;
    sub_21404A8B8(0, &qword_27C912A98, off_2781751F0);
    v313 = sub_2146D9918();

    v314 = v313;
    if (v313 >> 62)
    {
      goto LABEL_255;
    }

    for (k = *((v313 & 0xFFFFFFFFFFFFFF8) + 0x10); k; v314 = v350)
    {
      v167 = v314;
      *&v561 = MEMORY[0x277D84F90];
      v314 = sub_21409FFBC(0, k & ~(k >> 63), 0);
      if (k < 0)
      {
        goto LABEL_356;
      }

      i = 0;
      v316 = v167;
      v524 = v167;
      v525 = v167 & 0xC000000000000001;
      v317 = v561;
      v522 = (v167 & 0xFFFFFFFFFFFFFF8);
      v523 = k;
      while (!__OFADD__(i, 1))
      {
        v95 = v520;
        v542 = v317;
        v541 = i + 1;
        if (v525)
        {
          v318 = MEMORY[0x216054E00](i, v316);
        }

        else
        {
          if (i >= *(v522 + 2))
          {
            goto LABEL_254;
          }

          v318 = *(v316 + 8 * i + 32);
        }

        v319 = v318;
        v320 = v549;
        v321 = 1;
        v527 = *(v549 + 20);
        (v552)(v95 + v527, 1, 1, v553);
        v322 = (v95 + *(v320 + 24));
        *v322 = 0;
        v322[1] = 0;
        v323 = (v95 + *(v320 + 32));
        *v323 = 0;
        v323[1] = 0;
        v324 = [v319 version];
        v325 = [v319 URL];
        v326 = v519;
        if (v325)
        {
          v327 = v325;
          sub_2146D88E8();

          v321 = 0;
        }

        (v552)(v326, v321, 1, v553);
        v328 = [v319 type];
        if (v328)
        {
          v329 = v328;
          v540 = sub_2146D95B8();
          v539 = v330;
        }

        else
        {
          v540 = 0;
          v539 = 0;
        }

        [v319 size];
        v332 = v331;
        v334 = v333;
        v335 = [v319 accessibilityText];
        if (v335)
        {
          v336 = v3;
          v337 = v335;
          v338 = sub_2146D95B8();
          v340 = v339;

          v3 = v336;
        }

        else
        {

          v338 = 0;
          v340 = 0;
        }

        v341 = v510;
        *v510 = v324;
        v342 = v549;
        sub_21408AC04(v519, v341 + *(v549 + 20), &unk_27C9131A0, &unk_2146E9D10);
        v343 = (v341 + v342[6]);
        v344 = v539;
        *v343 = v540;
        v343[1] = v344;
        v345 = (v341 + v342[7]);
        *v345 = v332;
        v345[1] = v334;
        v346 = (v341 + v342[8]);
        *v346 = v338;
        v346[1] = v340;
        v347 = v520;
        sub_213FB2DF4(&v520[v527], &unk_27C9131A0, &unk_2146E9D10);
        sub_214400A9C(v341, v347, type metadata accessor for LinkPresentation.ImageMetadata);
        v317 = v542;
        *&v561 = v542;
        v349 = *(v542 + 16);
        v348 = *(v542 + 24);
        if (v349 >= v348 >> 1)
        {
          sub_21409FFBC((v348 > 1), v349 + 1, 1);
          v317 = v561;
        }

        *(v317 + 16) = v349 + 1;
        v314 = sub_214400A9C(v347, v317 + ((*(v543 + 80) + 32) & ~*(v543 + 80)) + *(v543 + 72) * v349, type metadata accessor for LinkPresentation.ImageMetadata);
        ++i;
        v316 = v524;
        v70 = v475;
        v51 = v494;
        v95 = v626;
        v167 = v526;
        if (v541 == v523)
        {
          v542 = v317;

          i = v546;
          goto LABEL_257;
        }
      }

      __break(1u);
LABEL_254:
      __break(1u);
LABEL_255:
      v350 = v314;
      k = sub_2146DA028();
    }

    v542 = MEMORY[0x277D84F90];
  }

  else
  {
    v542 = 0;
  }

LABEL_257:
  v351 = [v95 availableContentImages];
  if (v351)
  {
    v352 = v351;
    sub_21404A8B8(0, &qword_27C912A98, off_2781751F0);
    v353 = sub_2146D9918();

    v354 = v353;
    if (v353 >> 62)
    {
      goto LABEL_282;
    }

    for (m = *((v353 & 0xFFFFFFFFFFFFFF8) + 0x10); m; v354 = v391)
    {
      v167 = v354;
      *&v561 = MEMORY[0x277D84F90];
      v354 = sub_21409FFBC(0, m & ~(m >> 63), 0);
      if (m < 0)
      {
        goto LABEL_357;
      }

      i = 0;
      v356 = v167;
      v522 = v167;
      v523 = v167 & 0xC000000000000001;
      v357 = v561;
      v520 = (v167 & 0xFFFFFFFFFFFFFF8);
      v521 = m;
      while (!__OFADD__(i, 1))
      {
        v51 = v518;
        v541 = v357;
        v540 = i + 1;
        if (v523)
        {
          v358 = MEMORY[0x216054E00](i, v356);
        }

        else
        {
          if (i >= *(v520 + 2))
          {
            goto LABEL_281;
          }

          v358 = *&v356[8 * i + 32];
        }

        v359 = v358;
        v360 = v549;
        v361 = 1;
        v524 = *(v549 + 20);
        (v552)(v51 + v524, 1, 1, v553);
        v362 = (v51 + *(v360 + 24));
        *v362 = 0;
        v362[1] = 0;
        v363 = (v51 + *(v360 + 32));
        *v363 = 0;
        v363[1] = 0;
        v364 = [v359 version];
        v365 = [v359 URL];
        v366 = v517;
        if (v365)
        {
          v367 = v365;
          sub_2146D88E8();

          v361 = 0;
        }

        (v552)(v366, v361, 1, v553);
        v368 = [v359 type];
        if (v368)
        {
          v369 = v368;
          v539 = sub_2146D95B8();
          v527 = v370;
        }

        else
        {
          v539 = 0;
          v527 = 0;
        }

        v371 = v364;
        [v359 size];
        v373 = v372;
        v375 = v374;
        v376 = [v359 accessibilityText];
        v525 = i;
        if (v376)
        {
          v377 = v3;
          v378 = v376;
          v379 = sub_2146D95B8();
          v381 = v380;

          v3 = v377;
          v95 = v626;
        }

        else
        {

          v379 = 0;
          v381 = 0;
        }

        v382 = v508;
        *v508 = v371;
        v383 = v549;
        sub_21408AC04(v517, v382 + *(v549 + 20), &unk_27C9131A0, &unk_2146E9D10);
        v384 = (v382 + v383[6]);
        v385 = v527;
        *v384 = v539;
        v384[1] = v385;
        v386 = (v382 + v383[7]);
        *v386 = v373;
        v386[1] = v375;
        v387 = (v382 + v383[8]);
        *v387 = v379;
        v387[1] = v381;
        v388 = v518;
        sub_213FB2DF4(v518 + v524, &unk_27C9131A0, &unk_2146E9D10);
        sub_214400A9C(v382, v388, type metadata accessor for LinkPresentation.ImageMetadata);
        v357 = v541;
        *&v561 = v541;
        v390 = *(v541 + 16);
        v389 = *(v541 + 24);
        if (v390 >= v389 >> 1)
        {
          sub_21409FFBC((v389 > 1), v390 + 1, 1);
          v357 = v561;
        }

        *(v357 + 16) = v390 + 1;
        v354 = sub_214400A9C(v388, v357 + ((*(v543 + 80) + 32) & ~*(v543 + 80)) + *(v543 + 72) * v390, type metadata accessor for LinkPresentation.ImageMetadata);
        v167 = v526;
        i = v525 + 1;
        v356 = v522;
        v70 = v475;
        v51 = v494;
        if (v540 == v521)
        {
          v541 = v357;

          i = v546;
          goto LABEL_284;
        }
      }

      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      v391 = v354;
      m = sub_2146DA028();
    }

    v541 = MEMORY[0x277D84F90];
  }

  else
  {
    v541 = 0;
  }

LABEL_284:
  v392 = [v95 videos];
  if (v392)
  {
    v393 = v392;
    sub_21404A8B8(0, &qword_27C912AA8, off_278175280);
    v394 = sub_2146D9918();

    if (v394 >> 62)
    {
      goto LABEL_303;
    }

    for (n = *((v394 & 0xFFFFFFFFFFFFFF8) + 0x10); n; n = sub_2146DA028())
    {
      v396 = v3;
      *&v561 = MEMORY[0x277D84F90];
      v553 = n;
      sub_21409FEF0(0, n & ~(n >> 63), 0);
      if ((v553 & 0x8000000000000000) != 0)
      {
        goto LABEL_358;
      }

      v51 = 0;
      v167 = v561;
      v552 = v394 & 0xC000000000000001;
      v551 = v394 & 0xFFFFFFFFFFFFFF8;
      v397 = v502;
      while (1)
      {
        v3 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        if (v552)
        {
          v398 = MEMORY[0x216054E00](v51, v394);
        }

        else
        {
          if (v51 >= *(v551 + 16))
          {
            goto LABEL_302;
          }

          v398 = *(v394 + 8 * v51 + 32);
        }

        v70 = v394;
        sub_2143EECA0(v398, type metadata accessor for LinkPresentation.VideoMetadata, type metadata accessor for LinkPresentation.VideoMetadata, v509);
        if (v396)
        {

          sub_213FB2DF4(&v602, &qword_27C90B408, &qword_2146F64D8);
          sub_213FB2DF4(&v588, &qword_27C904868, &qword_2146EDB58);
          sub_214314998(v469, v470, v471, v472, v473);
          sub_213FB2DF4(&v569, &qword_27C904868, &qword_2146EDB58);

          sub_213FB2DF4(v501, &qword_27C904C60, &qword_2146EE6E0);
          sub_213FB2DF4(v504, &qword_27C904C58, &unk_2146F6450);
          sub_213FB2DF4(v506, &qword_27C904C50, &unk_2146EE6D0);
          sub_213FB2DF4(v515, &qword_27C904888, &unk_2146EDB80);
          sub_213FB2DF4(v516, &qword_27C904C48, &qword_2146EE6C8);
          sub_213FB2DF4(v465, &qword_27C904C40, &qword_2146EE6C0);
          sub_213FB2DF4(v494, &qword_27C904C38, &qword_2146EE6B8);
          sub_213FB2DF4(i, &unk_27C9131A0, &unk_2146E9D10);
          sub_213FB2DF4(v474, &unk_27C9131A0, &unk_2146E9D10);
          sub_213FB2DF4(v475, &unk_27C9131A0, &unk_2146E9D10);
          sub_213FB2DF4(v550, &qword_27C904C68, &qword_2146EE6E8);

          return;
        }

        *&v561 = v167;
        v400 = *(v167 + 16);
        v399 = *(v167 + 24);
        if (v400 >= v399 >> 1)
        {
          sub_21409FEF0((v399 > 1), v400 + 1, 1);
          v397 = v502;
          v167 = v561;
        }

        *(v167 + 16) = v400 + 1;
        sub_214400A9C(v509, v167 + ((*(v397 + 80) + 32) & ~*(v397 + 80)) + *(v397 + 72) * v400, type metadata accessor for LinkPresentation.VideoMetadata);
        ++v51;
        i = v546;
        if (v3 == v553)
        {
          v549 = v167;

          v3 = 0;
          v70 = v475;
          v51 = v494;
          v95 = v626;
          v167 = v526;
          goto LABEL_305;
        }
      }

      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      ;
    }

    v549 = MEMORY[0x277D84F90];
    v95 = v626;
  }

  else
  {
    v549 = 0;
  }

LABEL_305:
  v401 = [v95 streamingVideos];
  if (v401)
  {
    v402 = v401;
    sub_21404A8B8(0, &qword_27C912AA8, off_278175280);
    v403 = sub_2146D9918();

    if (v403 >> 62)
    {
      goto LABEL_324;
    }

    for (ii = *((v403 & 0xFFFFFFFFFFFFFF8) + 0x10); ii; ii = sub_2146DA028())
    {
      *&v561 = MEMORY[0x277D84F90];
      sub_21409FEF0(0, ii & ~(ii >> 63), 0);
      v552 = ii;
      if (ii < 0)
      {
        goto LABEL_359;
      }

      v51 = 0;
      v167 = v561;
      v553 = v403 & 0xC000000000000001;
      v551 = v403 & 0xFFFFFFFFFFFFFF8;
      v405 = v502;
      while (1)
      {
        i = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        if (v553)
        {
          v406 = MEMORY[0x216054E00](v51, v403);
        }

        else
        {
          if (v51 >= *(v551 + 16))
          {
            goto LABEL_323;
          }

          v406 = *(v403 + 8 * v51 + 32);
        }

        sub_2143EECA0(v406, type metadata accessor for LinkPresentation.VideoMetadata, type metadata accessor for LinkPresentation.VideoMetadata, v507);
        if (v3)
        {

          sub_213FB2DF4(&v602, &qword_27C90B408, &qword_2146F64D8);
          sub_213FB2DF4(&v588, &qword_27C904868, &qword_2146EDB58);
          sub_214314998(v469, v470, v471, v472, v473);
          sub_213FB2DF4(&v569, &qword_27C904868, &qword_2146EDB58);

          sub_213FB2DF4(v501, &qword_27C904C60, &qword_2146EE6E0);
          sub_213FB2DF4(v504, &qword_27C904C58, &unk_2146F6450);
          sub_213FB2DF4(v506, &qword_27C904C50, &unk_2146EE6D0);
          sub_213FB2DF4(v515, &qword_27C904888, &unk_2146EDB80);
          sub_213FB2DF4(v516, &qword_27C904C48, &qword_2146EE6C8);
          sub_213FB2DF4(v465, &qword_27C904C40, &qword_2146EE6C0);
          sub_213FB2DF4(v494, &qword_27C904C38, &qword_2146EE6B8);
          sub_213FB2DF4(v546, &unk_27C9131A0, &unk_2146E9D10);
          sub_213FB2DF4(v474, &unk_27C9131A0, &unk_2146E9D10);
          sub_213FB2DF4(v70, &unk_27C9131A0, &unk_2146E9D10);
          sub_213FB2DF4(v550, &qword_27C904C68, &qword_2146EE6E8);

          return;
        }

        *&v561 = v167;
        v408 = *(v167 + 16);
        v407 = *(v167 + 24);
        if (v408 >= v407 >> 1)
        {
          sub_21409FEF0((v407 > 1), v408 + 1, 1);
          v405 = v502;
          v167 = v561;
        }

        *(v167 + 16) = v408 + 1;
        sub_214400A9C(v507, v167 + ((*(v405 + 80) + 32) & ~*(v405 + 80)) + *(v405 + 72) * v408, type metadata accessor for LinkPresentation.VideoMetadata);
        ++v51;
        v70 = v475;
        if (i == v552)
        {
          v551 = v167;

          i = v546;
          v51 = v494;
          v95 = v626;
          v167 = v526;
          goto LABEL_326;
        }
      }

      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      ;
    }

    v551 = MEMORY[0x277D84F90];
    v95 = v626;
  }

  else
  {
    v551 = 0;
  }

LABEL_326:
  v409 = [v95 audios];
  if (v409)
  {
    sub_21404A8B8(0, &qword_27C912AB0, off_2781751A0);
    j = sub_2146D9918();

    if (j >> 62)
    {
      goto LABEL_347;
    }

    for (jj = *((j & 0xFFFFFFFFFFFFFF8) + 0x10); jj; jj = sub_2146DA028())
    {
      v411 = v3;
      *&v561 = MEMORY[0x277D84F90];
      sub_214400810(jj);
      if (jj < 0)
      {
        goto LABEL_360;
      }

      v51 = 0;
      v3 = j & 0xC000000000000001;
      v553 = j;
      v552 = j & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        j = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        if (v3)
        {
          v412 = MEMORY[0x216054E00](v51, v553);
        }

        else
        {
          if (v51 >= *(v552 + 16))
          {
            goto LABEL_345;
          }

          v412 = *(v553 + 8 * v51 + 32);
        }

        sub_2143EF124(v412, type metadata accessor for LinkPresentation.AudioMetadata, type metadata accessor for LinkPresentation.AudioMetadata, v505);
        if (v411)
        {

          sub_213FB2DF4(&v602, &qword_27C90B408, &qword_2146F64D8);
          sub_213FB2DF4(&v588, &qword_27C904868, &qword_2146EDB58);
          sub_214314998(v469, v470, v471, v472, v473);
          sub_213FB2DF4(&v569, &qword_27C904868, &qword_2146EDB58);

          sub_213FB2DF4(v501, &qword_27C904C60, &qword_2146EE6E0);
          sub_213FB2DF4(v504, &qword_27C904C58, &unk_2146F6450);
          sub_213FB2DF4(v506, &qword_27C904C50, &unk_2146EE6D0);
          sub_213FB2DF4(v515, &qword_27C904888, &unk_2146EDB80);
          sub_213FB2DF4(v516, &qword_27C904C48, &qword_2146EE6C8);
          sub_213FB2DF4(v465, &qword_27C904C40, &qword_2146EE6C0);
          sub_213FB2DF4(v494, &qword_27C904C38, &qword_2146EE6B8);
          sub_213FB2DF4(i, &unk_27C9131A0, &unk_2146E9D10);
          sub_213FB2DF4(v474, &unk_27C9131A0, &unk_2146E9D10);
          sub_213FB2DF4(v475, &unk_27C9131A0, &unk_2146E9D10);
          sub_213FB2DF4(v550, &qword_27C904C68, &qword_2146EE6E8);

          return;
        }

        v409 = v561;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21409FEAC(0, v409[2] + 1, 1);
          v409 = v561;
        }

        v414 = v409[2];
        v413 = v409[3];
        v167 = v414 + 1;
        if (v414 >= v413 >> 1)
        {
          sub_21409FEAC((v413 > 1), v414 + 1, 1);
          v409 = v561;
        }

        v409[2] = v167;
        sub_214400A9C(v505, v409 + ((*(v503 + 80) + 32) & ~*(v503 + 80)) + *(v503 + 72) * v414, type metadata accessor for LinkPresentation.AudioMetadata);
        ++v51;
        i = v546;
        if (j == jj)
        {

          v3 = 0;
          v70 = v475;
          v51 = v494;
          v95 = v626;
          v167 = v526;
          goto LABEL_349;
        }
      }

      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      ;
    }

    v409 = MEMORY[0x277D84F90];
    v70 = v475;
    v95 = v626;
  }

LABEL_349:
  v415 = [v95 specialization];
  if (v415)
  {
    v416 = v415;
    v417 = v498;
    sub_2143EF3D8(v416, v498);
    if (v3)
    {

      sub_213FB2DF4(&v602, &qword_27C90B408, &qword_2146F64D8);
      sub_213FB2DF4(&v588, &qword_27C904868, &qword_2146EDB58);
      sub_214314998(v469, v470, v471, v472, v473);
      sub_213FB2DF4(&v569, &qword_27C904868, &qword_2146EDB58);

      sub_213FB2DF4(v501, &qword_27C904C60, &qword_2146EE6E0);
      sub_213FB2DF4(v504, &qword_27C904C58, &unk_2146F6450);
      sub_213FB2DF4(v506, &qword_27C904C50, &unk_2146EE6D0);
      sub_213FB2DF4(v515, &qword_27C904888, &unk_2146EDB80);
      sub_213FB2DF4(v516, &qword_27C904C48, &qword_2146EE6C8);
      sub_213FB2DF4(v465, &qword_27C904C40, &qword_2146EE6C0);
      sub_213FB2DF4(v51, &qword_27C904C38, &qword_2146EE6B8);
      sub_213FB2DF4(v546, &unk_27C9131A0, &unk_2146E9D10);
      v151 = v474;
      goto LABEL_75;
    }

    (*(v495 + 56))(v417, 0, 1, v496);
    sub_21408AC04(v417, v526, &qword_27C904870, &qword_2146EDB60);
  }

  else
  {

    (*(v495 + 56))(v498, 1, 1, v496);
    v418 = type metadata accessor for LinkPresentation.SpecializationMetadata(0);
    (*(*(v418 - 8) + 56))(v167, 1, 1, v418);
  }

  LODWORD(v626) = v481 == 0;
  v419 = type metadata accessor for LinkPresentation.LinkMetadata(0);
  v420 = v497;
  sub_21408AC04(v550, v497 + v419[43], &qword_27C904C68, &qword_2146EE6E8);
  *v420 = v493;
  sub_21408AC04(v70, v420 + v419[5], &unk_27C9131A0, &unk_2146E9D10);
  sub_21408AC04(v474, v420 + v419[6], &unk_27C9131A0, &unk_2146E9D10);
  v421 = (v420 + v419[7]);
  v422 = v538;
  *v421 = v492;
  v421[1] = v422;
  v423 = (v420 + v419[8]);
  v424 = v537;
  *v423 = v491;
  v423[1] = v424;
  v425 = (v420 + v419[9]);
  v426 = v536;
  *v425 = v490;
  v425[1] = v426;
  v427 = (v420 + v419[10]);
  v428 = v535;
  *v427 = v489;
  v427[1] = v428;
  v429 = (v420 + v419[11]);
  v430 = v533;
  *v429 = v488;
  v429[1] = v430;
  sub_21408AC04(v546, v420 + v419[12], &unk_27C9131A0, &unk_2146E9D10);
  v431 = (v420 + v419[13]);
  v432 = v531;
  *v431 = v487;
  v431[1] = v432;
  v433 = (v420 + v419[14]);
  v434 = v530;
  *v433 = v486;
  v433[1] = v434;
  v435 = (v420 + v419[15]);
  v436 = v529;
  *v435 = v485;
  v435[1] = v436;
  v437 = (v420 + v419[16]);
  v438 = v528;
  *v437 = v484;
  v437[1] = v438;
  *(v420 + v419[17]) = v483;
  v439 = v420 + v419[18];
  v440 = v544;
  *v439 = v545;
  *(v439 + 1) = v440;
  v439[32] = v626;
  v441 = (v420 + v419[19]);
  v442 = v534;
  *v441 = v482;
  v441[1] = v442;
  v443 = (v420 + v419[20]);
  v444 = v532;
  *v443 = v480;
  v443[1] = v444;
  v445 = (v420 + v419[21]);
  v446 = v593;
  v445[4] = v592;
  v445[5] = v446;
  v445[6] = v594[0];
  *(v445 + 105) = *(v594 + 9);
  v447 = v589;
  *v445 = v588;
  v445[1] = v447;
  v448 = v591;
  v445[2] = v590;
  v445[3] = v448;
  sub_21408AC04(v51, v420 + v419[22], &qword_27C904C38, &qword_2146EE6B8);
  v449 = (v420 + v419[23]);
  v450 = v470;
  *v449 = v469;
  v449[1] = v450;
  v451 = v472;
  v449[2] = v471;
  v449[3] = v451;
  v449[4] = v473;
  sub_21408AC04(v465, v420 + v419[24], &qword_27C904C40, &qword_2146EE6C0);
  v452 = (v420 + v419[25]);
  v453 = v574;
  v452[4] = v573;
  v452[5] = v453;
  v452[6] = v575[0];
  *(v452 + 105) = *(v575 + 9);
  v454 = v570;
  *v452 = v569;
  v452[1] = v454;
  v455 = v572;
  v452[2] = v571;
  v452[3] = v455;
  *(v420 + v419[26]) = v463;
  sub_21408AC04(v516, v420 + v419[27], &qword_27C904C48, &qword_2146EE6C8);
  *(v420 + v419[28]) = v462;
  *(v420 + v419[29]) = v479;
  sub_21408AC04(v515, v420 + v419[30], &qword_27C904888, &unk_2146EDB80);
  sub_21408AC04(v506, v420 + v419[31], &qword_27C904C50, &unk_2146EE6D0);
  sub_21408AC04(v504, v420 + v419[32], &qword_27C904C58, &unk_2146F6450);
  sub_21408AC04(v501, v420 + v419[33], &qword_27C904C60, &qword_2146EE6E0);
  *(v420 + v419[34]) = v547;
  *(v420 + v419[35]) = v548;
  *(v420 + v419[36]) = v542;
  *(v420 + v419[37]) = v541;
  *(v420 + v419[38]) = v549;
  *(v420 + v419[39]) = v551;
  *(v420 + v419[40]) = v409;
  sub_21408AC04(v526, v420 + v419[41], &qword_27C904870, &qword_2146EDB60);
  v456 = v420 + v419[42];
  v457 = v611;
  *(v456 + 8) = v610;
  *(v456 + 9) = v457;
  *(v456 + 10) = v612;
  *(v456 + 22) = v613;
  v458 = v607;
  *(v456 + 4) = v606;
  *(v456 + 5) = v458;
  v459 = v609;
  *(v456 + 6) = v608;
  *(v456 + 7) = v459;
  v460 = v603;
  *v456 = v602;
  *(v456 + 1) = v460;
  v461 = v605;
  *(v456 + 2) = v604;
  *(v456 + 3) = v461;
}