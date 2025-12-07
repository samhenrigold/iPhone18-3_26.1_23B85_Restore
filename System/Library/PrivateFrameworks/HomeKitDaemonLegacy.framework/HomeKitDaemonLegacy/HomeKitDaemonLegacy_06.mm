uint64_t sub_25328CD04(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v42 = a1;
  v52 = sub_253CCFF58();
  v49 = *(v52 - 8);
  v7 = MEMORY[0x28223BE20](v52);
  v51 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v37 - v9;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DB0, &qword_253D4B120);
  result = sub_253CD10C8();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v42;
  }

  v13 = 0;
  v40 = v49 + 16;
  v41 = result;
  v50 = v49 + 32;
  v14 = result + 64;
  v38 = a2;
  v39 = a4;
  while (v12)
  {
    v46 = a3;
    v15 = __clz(__rbit64(v12));
    v44 = (v12 - 1) & v12;
LABEL_16:
    v18 = v15 | (v13 << 6);
    v19 = a4[6];
    v20 = v49;
    v48 = *(v49 + 72);
    v21 = v43;
    v22 = v52;
    (*(v49 + 16))(v43, v19 + v48 * v18, v52);
    v23 = (a4[7] + 24 * v18);
    v25 = *v23;
    v24 = v23[1];
    v26 = v23[2];
    v45 = *(v20 + 32);
    v45(v51, v21, v22);
    v11 = v41;
    sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v47 = v25;

    v27 = v26;
    result = sub_253CD08F8();
    v28 = -1 << *(v11 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v14 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    result = (v45)(*(v11 + 48) + v31 * v48, v51, v52);
    v36 = (*(v11 + 56) + 24 * v31);
    *v36 = v47;
    v36[1] = v24;
    v36[2] = v26;
    ++*(v11 + 16);
    a3 = v46 - 1;
    if (__OFSUB__(v46, 1))
    {
      goto LABEL_32;
    }

    a2 = v38;
    a4 = v39;
    v12 = v44;
    if (v46 == 1)
    {
      return v11;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      return v11;
    }

    v17 = v42[v13];
    ++v16;
    if (v17)
    {
      v46 = a3;
      v15 = __clz(__rbit64(v17));
      v44 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_25328D0D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x259C00B80](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_253286FEC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *sub_25328D168(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3CD8, &unk_253D4AD60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v48 - v3;
  v54 = sub_253CD02B8();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v57 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DC8, &qword_253D4B138);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v48 - v7;
  v9 = sub_253CD0178();
  v53 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = [result wifiInfo];

  if (v13)
  {
    v14 = [objc_opt_self() wifiNetworkInfoFromProto_];
  }

  else
  {
    v14 = 0;
  }

  result = [a1 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    goto LABEL_57;
  }

  v15 = result;
  v16 = [result networkInfos];

  v58 = v4;
  if (v16 && (v61 = 0, sub_253200644(0, &qword_27F5A33A0, 0x277CD1718), sub_253CD0A48(), v16, (v17 = v61) != 0))
  {
    v18 = v61 & 0xFFFFFFFFFFFFFF8;
    if (v61 >> 62)
    {
      goto LABEL_27;
    }

    v19 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v49 = a1;
    for (i = v14; v19; i = v14)
    {
      a1 = 0;
      v14 = (v53 + 48);
      v55 = (v53 + 32);
      v56 = v17 & 0xC000000000000001;
      v60 = MEMORY[0x277D84F90];
      v51 = v19;
      while (1)
      {
        if (v56)
        {
          v20 = MEMORY[0x259C00F30](a1, v17);
        }

        else
        {
          if (a1 >= *(v18 + 16))
          {
            goto LABEL_26;
          }

          v20 = *(v17 + 8 * a1 + 32);
        }

        v21 = v20;
        v22 = (a1 + 1);
        if (__OFADD__(a1, 1))
        {
          break;
        }

        sub_253228E48(v20, v8);

        if ((*v14)(v8, 1, v9) == 1)
        {
          sub_253206054(v8, &qword_27F5A3DC8, &qword_253D4B138);
        }

        else
        {
          v23 = v9;
          v24 = v17;
          v25 = v18;
          v26 = *v55;
          v27 = v23;
          (*v55)(v59, v8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = sub_253283960(0, v60[2] + 1, 1, v60, &qword_27F5A3DD0, &qword_253D4B140, MEMORY[0x277D0EF88]);
          }

          v29 = v60[2];
          v28 = v60[3];
          if (v29 >= v28 >> 1)
          {
            v60 = sub_253283960((v28 > 1), v29 + 1, 1, v60, &qword_27F5A3DD0, &qword_253D4B140, MEMORY[0x277D0EF88]);
          }

          v30 = v59;
          v31 = v60;
          v60[2] = v29 + 1;
          (v26)(v31 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v29, v30, v27);
          v4 = v58;
          v18 = v25;
          v17 = v24;
          v9 = v27;
          v19 = v51;
        }

        ++a1;
        if (v22 == v19)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v19 = sub_253CD0ED8();
      v49 = a1;
    }

    v60 = MEMORY[0x277D84F90];
LABEL_29:

    a1 = v49;
    v14 = i;
  }

  else
  {
    v60 = MEMORY[0x277D84F90];
  }

  result = [a1 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    goto LABEL_58;
  }

  v32 = result;
  v33 = [result networkServiceInfos];

  if (v33)
  {
    v61 = 0;
    sub_253200644(0, &qword_27F5A3398, 0x277CD1720);
    sub_253CD0A48();

    v34 = v61;
    if (v61)
    {
      v35 = (v61 & 0xFFFFFFFFFFFFFF8);
      if (v61 >> 62)
      {
        goto LABEL_55;
      }

      for (j = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_253CD0ED8())
      {
        v37 = v54;
        i = v14;
        if (!j)
        {
          break;
        }

        v38 = 0;
        v59 = (v34 & 0xC000000000000001);
        v14 = (v52 + 48);
        v39 = (v52 + 32);
        v40 = MEMORY[0x277D84F90];
        v56 = v35;
        while (1)
        {
          if (v59)
          {
            v41 = MEMORY[0x259C00F30](v38, v34);
          }

          else
          {
            if (v38 >= v35[2])
            {
              goto LABEL_54;
            }

            v41 = *(v34 + 8 * v38 + 32);
          }

          v35 = v41;
          v42 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          sub_25322953C(v41, v4);

          if ((*v14)(v4, 1, v37) == 1)
          {
            sub_253206054(v4, &qword_27F5A3CD8, &unk_253D4AD60);
          }

          else
          {
            v43 = v37;
            v44 = *v39;
            (*v39)(v57, v4, v43);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = sub_253283960(0, *(v40 + 2) + 1, 1, v40, &qword_27F5A3DD8, &qword_253D4B148, MEMORY[0x277D0EFB0]);
            }

            v46 = *(v40 + 2);
            v45 = *(v40 + 3);
            if (v46 >= v45 >> 1)
            {
              v40 = sub_253283960((v45 > 1), v46 + 1, 1, v40, &qword_27F5A3DD8, &qword_253D4B148, MEMORY[0x277D0EFB0]);
            }

            *(v40 + 2) = v46 + 1;
            v47 = v54;
            v44(&v40[((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v46], v57, v54);
            v37 = v47;
            v4 = v58;
          }

          v35 = v56;
          ++v38;
          if (v42 == j)
          {
            goto LABEL_51;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        ;
      }

LABEL_51:
    }
  }

  return v60;
}

uint64_t type metadata accessor for NetworkDetectAccessory(uint64_t a1)
{
  result = qword_2815311C0;
  if (!qword_2815311C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_25328D968(void *a1, uint64_t a2)
{
  v87 = a1;
  v3 = sub_253CCFF58();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v80 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v95 = &v79 - v8;
  MEMORY[0x28223BE20](v7);
  v82 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DC0, &qword_253D4B130);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v92 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v89 = &v79 - v13;
  v14 = *(a2 + 64);
  v91 = a2 + 64;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v90 = (v15 + 63) >> 6;
  v84 = v4;
  v85 = (v4 + 16);
  v93 = (v4 + 32);
  v88 = (v4 + 8);
  v83 = a2;

  v18 = 0;
  v81 = MEMORY[0x277D84F98];
  v86 = v3;
  while (2)
  {
    while (2)
    {
      v20 = v90;
      for (i = v91; ; i = v91)
      {
        if (!v17)
        {
          if (v20 <= v18 + 1)
          {
            v22 = v18 + 1;
          }

          else
          {
            v22 = v20;
          }

          v23 = v22 - 1;
          v24 = v92;
          while (1)
          {
            v21 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              break;
            }

            if (v21 >= v20)
            {
              v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3D98, &qword_253D4B108);
              (*(*(v53 - 8) + 56))(v24, 1, 1, v53);
              v17 = 0;
              v18 = v23;
              goto LABEL_18;
            }

            v17 = *(i + 8 * v21);
            ++v18;
            if (v17)
            {
              v18 = v21;
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_48;
        }

        v21 = v18;
LABEL_17:
        v25 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v26 = v25 | (v21 << 6);
        v27 = v83;
        v28 = v84;
        (*(v84 + 16))(v82, *(v83 + 48) + *(v84 + 72) * v26, v3);
        v29 = (*(v27 + 56) + 24 * v26);
        v30 = *v29;
        v31 = v29[1];
        v32 = v29[2];
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3D98, &qword_253D4B108);
        v34 = &v92[*(v33 + 48)];
        v35 = *(v28 + 32);
        v24 = v92;
        v35();
        *v34 = v30;
        *(v34 + 1) = v31;
        *(v34 + 2) = v32;
        (*(*(v33 - 8) + 56))(v24, 0, 1, v33);
        v36 = v32;

LABEL_18:
        v37 = v89;
        sub_25328ED94(v24, v89, &qword_27F5A3DC0, &qword_253D4B130);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3D98, &qword_253D4B108);
        if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
        {

          return v81;
        }

        v39 = (v37 + *(v38 + 48));
        v40 = v39[1];
        v94 = *v39;
        v41 = v39[2];
        (*v93)(v95, v37, v3);
        if (!v41)
        {
LABEL_33:
          v42 = v41;
          goto LABEL_36;
        }

        v42 = v41;
        v43 = [v42 SSID];
        if (v43)
        {
          v44 = v43;
          v45 = sub_253CD0968();
          v47 = v46;
        }

        else
        {
          v45 = 0;
          v47 = 0;
        }

        v48 = [v87 SSID];
        if (!v48)
        {
          if (v47)
          {
LABEL_34:

            v3 = v86;
            goto LABEL_36;
          }

          goto LABEL_30;
        }

        v49 = v48;
        v50 = sub_253CD0968();
        v52 = v51;

        if (!v47)
        {
          break;
        }

        if (!v52)
        {
          goto LABEL_34;
        }

        if (v45 == v50 && v47 == v52)
        {

LABEL_30:

          v3 = v86;
          goto LABEL_6;
        }

        v54 = sub_253CD1118();

        v3 = v86;
        if ((v54 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_6:

        (*v88)(v95, v3);
        v20 = v90;
      }

      v3 = v86;
      if (!v52)
      {
        goto LABEL_6;
      }

LABEL_36:
      v55 = *v85;
      v56 = v80;
      (*v85)(v80, v95, v3);
      v79 = v42;

      v57 = v81;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v96 = v57;
      v59 = sub_253217E4C(v56);
      v61 = v57[2];
      v62 = (v60 & 1) == 0;
      v63 = __OFADD__(v61, v62);
      v64 = v61 + v62;
      if (v63)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v65 = v60;
      if (v57[3] >= v64)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v77 = v59;
          sub_253285F40();
          v59 = v77;
        }
      }

      else
      {
        sub_2532847E4(v64, isUniquelyReferenced_nonNull_native);
        v59 = sub_253217E4C(v80);
        if ((v65 & 1) != (v66 & 1))
        {
          goto LABEL_50;
        }
      }

      v81 = v96;
      if (v65)
      {
        v67 = (v96[7] + 24 * v59);
        v68 = v67[2];
        *v67 = v94;
        v67[1] = v40;
        v67[2] = v41;

        v69 = *v88;
        (*v88)(v80, v3);
        v69(v95, v3);
        continue;
      }

      break;
    }

    v96[(v59 >> 6) + 8] |= 1 << v59;
    v70 = v80;
    v71 = v84;
    v72 = v59;
    v55(v81[6] + *(v84 + 72) * v59, v80, v3);
    v73 = (v81[7] + 24 * v72);
    *v73 = v94;
    v73[1] = v40;
    v73[2] = v41;

    v74 = *(v71 + 8);
    v74(v70, v3);
    v74(v95, v3);
    v75 = v81[2];
    v63 = __OFADD__(v75, 1);
    v76 = v75 + 1;
    if (!v63)
    {
      v81[2] = v76;
      continue;
    }

    break;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_253CD1158();
  __break(1u);
  return result;
}

uint64_t sub_25328E170(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_253CD02B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 networkGatewayIPAddress];
  if (!result)
  {
    return result;
  }

  v50 = v6;
  v11 = result;
  v51 = sub_253CD0968();
  v13 = v12;

  v14 = [a1 networkGatewayMACAddress];
  if (!v14)
  {
LABEL_31:

    return 0;
  }

  v15 = v14;
  v45 = sub_253CD0968();
  v46 = v16;

  if (!a3)
  {
LABEL_15:
    v29 = *(a2 + 16);
    if (v29)
    {
      v48 = *(v7 + 16);
      v49 = v7 + 16;
      v30 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v31 = (v7 + 8);
      v47 = *(v7 + 72);
      v48(v9, v30, v50);
      while (1)
      {
        v33 = sub_253CD0268();
        if (v34)
        {
          v35 = v33;
          v36 = v34;
          v54 = v33;
          v55 = v34;
          v52 = v51;
          v53 = v13;
          sub_25322CFB4();
          if (sub_253CD0DF8())
          {
            v54 = v35;
            v55 = v36;
            v52 = v45;
            v53 = v46;
            v37 = sub_253CD0DF8();

            if (v37)
            {
              (*v31)(v9, v50);

              goto LABEL_35;
            }
          }

          else
          {
          }
        }

        v38 = sub_253CD0278();
        if (v39)
        {
          v40 = v38;
          v41 = v39;
          v54 = v38;
          v55 = v39;
          v52 = v51;
          v53 = v13;
          sub_25322CFB4();
          if (sub_253CD0DF8())
          {
            v54 = v40;
            v55 = v41;
            v52 = v45;
            v53 = v46;
            v42 = sub_253CD0DF8();
            v32 = v50;
            (*v31)(v9, v50);

            if (v42)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v32 = v50;
            (*v31)(v9, v50);
          }
        }

        else
        {
          v32 = v50;
          (*v31)(v9, v50);
        }

        v30 += v47;
        if (!--v29)
        {
          break;
        }

        v48(v9, v30, v32);
      }
    }

    goto LABEL_31;
  }

  v17 = a3;
  v18 = [v17 networkGatewayIPAddress];
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v18;
  v20 = sub_253CD0968();
  v22 = v21;

  if (v20 == v51 && v22 == v13)
  {

    goto LABEL_10;
  }

  v23 = sub_253CD1118();

  if ((v23 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_10:
  v24 = [v17 networkGatewayMACAddress];
  if (!v24)
  {
    goto LABEL_14;
  }

  v25 = v24;
  v26 = sub_253CD0968();
  v28 = v27;

  if (v26 == v45 && v28 == v46)
  {

    return 1;
  }

  v43 = sub_253CD1118();

  if ((v43 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_34:

LABEL_35:

  return 1;
}

uint64_t sub_25328E5DC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v32 = a2;
  v44 = a4;
  v33 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3D98, &qword_253D4B108);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - v5;
  v41 = sub_253CCFF58();
  result = MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v45 = a3;
  v10 = *(a3 + 64);
  v36 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v34 = 0;
  v35 = (v11 + 63) >> 6;
  v47 = v7;
  v38 = v7 + 8;
  v39 = v7 + 16;
  while (v13)
  {
    v14 = __clz(__rbit64(v13));
    v46 = (v13 - 1) & v13;
LABEL_11:
    v17 = v14 | (v9 << 6);
    v18 = v45;
    v19 = *(v47 + 16);
    v20 = v40;
    v21 = v41;
    v19(v40, v45[6] + *(v47 + 72) * v17, v41);
    v22 = v18[7];
    v37 = v17;
    v23 = (v22 + 24 * v17);
    v25 = *v23;
    v24 = v23[1];
    v26 = v23[2];
    v27 = v42;
    v19(v42, v20, v21);
    v28 = (v27 + *(v43 + 48));
    *v28 = v25;
    v28[1] = v24;
    v28[2] = v26;
    v29 = v26;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v30 = v29;
    LOBYTE(v26) = sub_25328E170(v44, v24, v26);
    sub_253206054(v27, &qword_27F5A3D98, &qword_253D4B108);

    result = (*(v47 + 8))(v20, v21);
    v13 = v46;
    if ((v26 & 1) == 0)
    {
      *(v33 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
        return sub_25328CD04(v33, v32, v34, v45);
      }
    }
  }

  v15 = v9;
  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v35)
    {
      return sub_25328CD04(v33, v32, v34, v45);
    }

    v16 = *(v36 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v46 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25328E904(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v9 = v8;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      v14 = v9;
      v11 = sub_25328C6DC(v13, v6, a1, v14);
      MEMORY[0x259C040E0](v13, -1, -1);

      return v11;
    }
  }

  MEMORY[0x28223BE20](v8);
  bzero(v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
  v10 = v9;
  v11 = sub_25328E5DC((v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1, v10);

  if (v2)
  {
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_25328EAB0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25320C7A8;

  return sub_253281498(a1, a2, v6, v7, v8);
}

uint64_t sub_25328EB74(uint64_t a1)
{
  v4 = *(type metadata accessor for NetworkDetectAccessory(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25320C438;

  return sub_253282188(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_25328EC78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25320C438;

  return sub_253228334(a1, v4);
}

unint64_t sub_25328ED30()
{
  result = qword_27F5A3E08;
  if (!qword_27F5A3E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5A3E00, &unk_253D4B180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3E08);
  }

  return result;
}

uint64_t sub_25328ED94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25328EDFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25323FBE4();
  result = MEMORY[0x259C00B80](v2, &type metadata for HomeCapability, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_253287664(&v7, v6, sub_253243DB4, sub_253289E68);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_25328EE98(uint64_t a1)
{
  v2 = type metadata accessor for HomeGroupEntity(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_25328F154(&qword_27F5A3E38, type metadata accessor for HomeGroupEntity, &unk_253D49B40);
  result = MEMORY[0x259C00B80](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_25328F024(v12, v6, type metadata accessor for HomeGroupEntity);
      sub_2532873A4(v8, v6);
      sub_25328F08C(v8, type metadata accessor for HomeGroupEntity);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_25328F024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25328F08C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25328F0EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25328F154(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25328F1C4(uint64_t a1)
{
  result = sub_253CCFF58();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25328F250(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = 0;
    v22 = *(v3 + 16);
    v20 = v4 - 1;
    v8 = MEMORY[0x277D84F90];
    v23 = result;
    do
    {
      v21 = v8;
      v9 = (v3 + 40 + 16 * v7);
      v10 = v7;
      while (1)
      {
        if (v10 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v12 = *(v9 - 1);
        v11 = *v9;
        v7 = v10 + 1;
        if ((*v9 & 0x2000000000000000) != 0)
        {
          v13 = HIBYTE(*v9) & 0xF;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFFFFFFLL;
        }

        if (!v13 || (v12 == v6 ? (v14 = v11 == a2) : (v14 = 0), v14 || (sub_253CD1118() & 1) != 0))
        {
          v12 = 0;
          v11 = 0xE000000000000000;
          v8 = v21;
          goto LABEL_18;
        }

        MEMORY[0x259C00940](46, 0xE100000000000000);
        if (sub_253CD0A08())
        {
          break;
        }

        v9 += 2;
        ++v10;
        v6 = v23;
        if (v22 == v7)
        {
          v8 = v21;
          goto LABEL_29;
        }
      }

      v18 = sub_253CD09B8();

      v8 = v21;
      if (v18)
      {
        if ((v18 & 0x8000000000000000) == 0)
        {
          result = sub_253CD09C8();
          if ((v19 & 1) == 0)
          {
            sub_253CD0998();

            goto LABEL_18;
          }

LABEL_35:
          __break(1u);
          return result;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_18:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2532836C0(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_2532836C0((v15 > 1), v16 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v16 + 1;
      v17 = v8 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v11;
      v6 = v23;
    }

    while (v20 != v10);
LABEL_29:
    if (!*(v8 + 16))
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v8 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_30:
    type metadata accessor for KeyPaths.KeyPathsSet();
    result = swift_allocObject();
    *(result + 16) = v8;
    return result;
  }

LABEL_32:

  return 0;
}

uint64_t sub_25328F4FC(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v13 = *(v3 + 16);
  if (!v13)
  {
    return 0;
  }

  v5 = result;
  v6 = 0;
  for (i = (v3 + 40); ; i += 2)
  {
    if (v6 >= *(v3 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v8 = *(i - 1);
    if ((*i & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(*i) & 0xFLL;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v9)
    {
      return 1;
    }

    v10 = v8 == v5 && *i == a2;
    if (v10 || (sub_253CD1118() & 1) != 0)
    {
      return 1;
    }

    MEMORY[0x259C00940](46, 0xE100000000000000);
    if (sub_253CD0A08())
    {
      break;
    }

    ++v6;

    if (v13 == v6)
    {
      return 0;
    }
  }

  v11 = sub_253CD09B8();

  if (!v11)
  {

    goto LABEL_21;
  }

  if (v11 < 0)
  {
    goto LABEL_25;
  }

  result = sub_253CD09C8();
  if ((v12 & 1) == 0)
  {
    sub_253CD0998();

LABEL_21:

    return 1;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_25328F6C0()
{

  return swift_deallocClassInstance();
}

id KeyPaths.__allocating_init(for:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AE8, &unk_253D4B300);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_253D48D90;
  type metadata accessor for KeyPaths.KeyPathsSet();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v4 + 32) = v5;
  *&v3[OBJC_IVAR___HMDKeyPaths_keyPathsStack] = v4;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id KeyPaths.init(for:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AE8, &unk_253D4B300);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_253D48D90;
  type metadata accessor for KeyPaths.KeyPathsSet();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v3 + 32) = v4;
  *&v1[OBJC_IVAR___HMDKeyPaths_keyPathsStack] = v3;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for KeyPaths();
  return objc_msgSendSuper2(&v6, sel_init);
}

Swift::Bool __swiftcall KeyPaths.push(key:)(Swift::String key)
{
  v3 = v1;
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  v6 = OBJC_IVAR___HMDKeyPaths_keyPathsStack;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = sub_253CD0ED8();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  v2 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v2 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_15:

  MEMORY[0x259C00F30](v2, v7);

LABEL_8:
  countAndFlagsBits = sub_25328F250(countAndFlagsBits, object);

  if (countAndFlagsBits)
  {
    swift_beginAccess();

    MEMORY[0x259C00990](v9);
    if (*((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_10:
      sub_253CD0A88();
      swift_endAccess();

      return countAndFlagsBits != 0;
    }

LABEL_18:
    sub_253CD0A78();
    goto LABEL_10;
  }

  return countAndFlagsBits != 0;
}

Swift::Bool __swiftcall KeyPaths.popKey()()
{
  v1 = OBJC_IVAR___HMDKeyPaths_keyPathsStack;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = sub_253CD0ED8();
    if (v3 < 2)
    {
      goto LABEL_10;
    }

LABEL_3:
    swift_beginAccess();
    v4 = *(v0 + v1);
    if (v4 >> 62)
    {
      if (sub_253CD0ED8())
      {
LABEL_5:
        if (sub_2532900A4())
        {
LABEL_9:

          swift_endAccess();
          goto LABEL_10;
        }

        v5 = *(v0 + v1);
        if (!(v5 >> 62))
        {
          v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v7 = __OFSUB__(v6, 1);
          v8 = v6 - 1;
          if (!v7)
          {
LABEL_8:
            sub_253290014(v8);
            goto LABEL_9;
          }

LABEL_17:
          __break(1u);
          return v8;
        }

LABEL_15:
        v9 = sub_253CD0ED8();
        v7 = __OFSUB__(v9, 1);
        v8 = v9 - 1;
        if (!v7)
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_15;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3 >= 2)
  {
    goto LABEL_3;
  }

LABEL_10:
  LOBYTE(v8) = v3 > 1;
  return v8;
}

Swift::Bool __swiftcall KeyPaths.contains(key:)(Swift::String key)
{
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  v5 = OBJC_IVAR___HMDKeyPaths_keyPathsStack;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = sub_253CD0ED8();
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  v2 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_12:

    MEMORY[0x259C00F30](v2, v6);

    goto LABEL_8;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    __break(1u);
    return v7;
  }

LABEL_8:
  v8 = sub_25328F4FC(countAndFlagsBits, object);

  LOBYTE(v7) = v8 & 1;
  return v7;
}

id KeyPaths.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id KeyPaths.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KeyPaths();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25328FFB0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_253CD0ED8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

unint64_t sub_253290014(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_25328FFB0(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

unint64_t sub_2532900A4()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_25328FFB0(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void significantTimeDidChangeNotification(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = a3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@System time changed %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [v4 _handleSignificantTimeChange];
}

void sub_253292AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253296630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25329B30C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_25329D680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__544(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2532A2004(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2532A2108(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2532A621C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __HMDShortcutActionInitializeWithSerializedShortcut(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    objc_storeStrong(v3 + 3, a2);
    if (WorkflowKitLibraryCore(0))
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2050000000;
      v5 = getWFHomeWorkflowClass_softClass;
      v21 = getWFHomeWorkflowClass_softClass;
      if (!getWFHomeWorkflowClass_softClass)
      {
        v13 = MEMORY[0x277D85DD0];
        v14 = 3221225472;
        v15 = __getWFHomeWorkflowClass_block_invoke;
        v16 = &unk_279731AD0;
        v17 = &v18;
        __getWFHomeWorkflowClass_block_invoke(&v13);
        v5 = v19[3];
      }

      v6 = v5;
      _Block_object_dispose(&v18, 8);
      v7 = [[v5 alloc] initWithData:v4];
      v8 = v3[4];
      v3[4] = v7;

      v18 = 0;
      v19 = &v18;
      v20 = 0x2050000000;
      v9 = getWFHomeWorkflowControllerClass_softClass;
      v21 = getWFHomeWorkflowControllerClass_softClass;
      if (!getWFHomeWorkflowControllerClass_softClass)
      {
        v13 = MEMORY[0x277D85DD0];
        v14 = 3221225472;
        v15 = __getWFHomeWorkflowControllerClass_block_invoke;
        v16 = &unk_279731AD0;
        v17 = &v18;
        __getWFHomeWorkflowControllerClass_block_invoke(&v13);
        v9 = v19[3];
      }

      v10 = v9;
      _Block_object_dispose(&v18, 8);
      v11 = [[v9 alloc] initWithWorkflow:v3[4]];
      v12 = v3[5];
      v3[5] = v11;
    }
  }
}

void sub_2532B1E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WorkflowKitLibraryCore(uint64_t a1)
{
  if (!WorkflowKitLibraryCore_frameworkLibrary)
  {
    WorkflowKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return WorkflowKitLibraryCore_frameworkLibrary;
}

Class __getWFHomeWorkflowClass_block_invoke(uint64_t a1)
{
  WorkflowKitLibrary();
  result = objc_getClass("WFHomeWorkflow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFHomeWorkflowClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "WFHomeWorkflow");
    return __getWFHomeWorkflowControllerClass_block_invoke(v3);
  }

  return result;
}

void __getWFHomeWorkflowControllerClass_block_invoke(uint64_t a1)
{
  WorkflowKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFHomeWorkflowController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFHomeWorkflowControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "WFHomeWorkflowController");
    WorkflowKitLibrary();
  }
}

void WorkflowKitLibrary()
{
  v2 = 0;
  v0 = WorkflowKitLibraryCore(&v2);
  v1 = v2;
  if (!v0)
  {
    v1 = abort_report_np("%s", v2);
    goto LABEL_5;
  }

  if (v2)
  {
LABEL_5:
    free(v1);
  }
}

uint64_t __WorkflowKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  WorkflowKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2532B579C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDResetConfigPostCleanupStepsToString(uint64_t a1)
{
  if (!a1)
  {
    v2 = @"Unknown";
    goto LABEL_15;
  }

  v1 = a1;
  if (a1 == -1)
  {
    v2 = @"everything";
    goto LABEL_15;
  }

  v3 = [MEMORY[0x277CBEB18] array];
  v4 = v3;
  if ((v1 & 2) != 0)
  {
    [v3 addObject:@"working store"];
    if ((v1 & 4) == 0)
    {
LABEL_7:
      if ((v1 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  else if ((v1 & 4) == 0)
  {
    goto LABEL_7;
  }

  [v4 addObject:@"cloud store"];
  if ((v1 & 8) == 0)
  {
LABEL_8:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v4 addObject:@"local store"];
  if ((v1 & 0x10) == 0)
  {
LABEL_9:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v4 addObject:@"shared cloud store"];
  if ((v1 & 0x20) == 0)
  {
LABEL_10:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v4 addObject:@"HH1 keyed archive"];
  if ((v1 & 0x40) == 0)
  {
LABEL_11:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    [v4 addObject:@"everything except demo mode"];
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_23:
  [v4 addObject:@"HH1 SQL store"];
  if ((v1 & 0x80) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v1 & 0x100) != 0)
  {
LABEL_13:
    [v4 addObject:@"client store"];
  }

LABEL_14:
  v2 = [v4 componentsJoinedByString:{@", "}];

LABEL_15:

  return v2;
}

void sub_2532CC278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2532CC5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2532CE5E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2532CE930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2532CEC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2532E11A4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2532E1230(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2532E88D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4666(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id arrayToString(void *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n %@ [", v4];
  [v5 appendString:v6];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = MEMORY[0x277CCACA8];
        v13 = [*(*(&v18 + 1) + 8 * i) descriptionWithIndent:v4];
        v14 = [v12 stringWithFormat:@" %@", v13];
        [v5 appendString:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n %@ ]", v4];
  [v5 appendString:v15];

  v16 = objc_msgSend_copy(v5);

  return v16;
}

BOOL checkForParseResult(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = &a10;
  if (!a9)
  {
    return 0;
  }

  v10 = 0;
  while (a1 - 1 != v10)
  {
    v11 = v13++;
    ++v10;
    if (!*v11)
    {
      return v10 >= a1;
    }
  }

  return 1;
}

void sub_2532FF5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2533036B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __languageChanged()
{
  v0 = +[HMDMainDriver driver];
  [v0 localeChanged];
}

void sub_25330AF7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_25330B760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDRemoteLoginAccountTypeAsString(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDRemoteLoginAccountType %tu", a1];
  }

  else
  {
    v2 = @"HMDRemoteLoginAccountTypeITunes";
  }

  return v2;
}

void sub_25331F540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9033(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HMDRemoteEventRouterProtoConnectResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(MEMORY[0x277D174E0]);
        [a1 addCachedEvents:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HMEProtoEventInfoReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_25332445C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_25332455C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

id reportContextFromMessage(void *a1)
{
  v1 = a1;
  v2 = [v1 messagePayload];
  v3 = [v2 hmf_stringForKey:*MEMORY[0x277CD0500]];

  v4 = [v1 messagePayload];
  v5 = [v4 hmf_dataForKey:*MEMORY[0x277CD0510]];

  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CD1C88] reportContextWithDomain:v3 requestInfo:v5];
    v8 = [v1 messagePayload];
    v9 = [v8 hmf_numberForKey:*MEMORY[0x277CD0508]];
    [v9 floatValue];
    [v7 setReportTimeout:v10];

    v11 = objc_msgSend_copy(v7);
  }

  return v11;
}

void sub_253334C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253335818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253335B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253336DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25333790C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak((v33 + 56));
  objc_destroyWeak(&a25);
  objc_destroyWeak(&a33);
  objc_destroyWeak((v34 - 120));
  objc_destroyWeak((v34 - 112));
  _Unwind_Resume(a1);
}

void sub_2533386C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&a30);
  objc_destroyWeak((v30 - 112));
  _Unwind_Resume(a1);
}

void sub_253339B10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v4 + 56));
  objc_destroyWeak((v3 + 56));
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v5 - 112));
  _Unwind_Resume(a1);
}

void sub_25333A700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  objc_destroyWeak(&a32);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v39 - 200), 8);
  _Block_object_dispose((v39 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10664(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25333BA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak(&a35);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25333BDF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25333C430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25333C6B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_25333CD24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_25333D4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25333DD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_25333E788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __transactionHomeSettingsUpdated(void *a1, void *a2, void *a3)
{
  v18 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v6 transactionResult];
  v8 = [v5 setProperties];
  if ([v8 containsObject:@"automaticSoftwareUpdateEnabled"])
  {
    v9 = [v18 isAutomaticSoftwareUpdateEnabled];
    v10 = [v5 automaticSoftwareUpdateEnabled];
    v11 = [v10 BOOLValue];

    if (v9 != v11)
    {
      v12 = [v5 automaticSoftwareUpdateEnabled];
      [v18 setAutomaticSoftwareUpdateEnabled:{objc_msgSend(v12, "BOOLValue")}];

      [v7 markChanged];
    }
  }

  else
  {
  }

  v13 = [v5 setProperties];
  if ([v13 containsObject:@"automaticThirdPartyAccessorySoftwareUpdateEnabled"])
  {
    v14 = [v18 isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];
    v15 = [v5 automaticThirdPartyAccessorySoftwareUpdateEnabled];
    v16 = [v15 BOOLValue];

    if (v14 != v16)
    {
      v17 = [v5 automaticThirdPartyAccessorySoftwareUpdateEnabled];
      [v18 setAutomaticThirdPartyAccessorySoftwareUpdateEnabled:{objc_msgSend(v17, "BOOLValue")}];

      [v7 markChanged];
    }
  }

  else
  {
  }

  [v6 respondWithPayload:0];
}

void __transactionHomeMediaSettingsUpdated(void *a1, void *a2, void *a3)
{
  v23 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v6 transactionResult];
  v8 = [v5 setProperties];
  if ([v8 containsObject:@"minimumMediaUserPrivilege"])
  {
    v9 = [v23 minimumMediaUserPrivilege];
    v10 = [v5 minimumMediaUserPrivilege];
    v11 = [v10 unsignedIntegerValue];

    if (v9 != v11)
    {
      v12 = [v5 minimumMediaUserPrivilege];
      [v23 setMinimumMediaUserPrivilege:{objc_msgSend(v12, "unsignedIntegerValue")}];

      [v7 markChanged];
    }
  }

  else
  {
  }

  v13 = [v5 setProperties];
  if ([v13 containsObject:@"mediaPeerToPeerEnabled"])
  {
    v14 = [v23 isMediaPeerToPeerEnabled];
    v15 = [v5 mediaPeerToPeerEnabled];
    v16 = [v15 BOOLValue];

    if (v14 != v16)
    {
      v17 = [v5 mediaPeerToPeerEnabled];
      [v23 setMediaPeerToPeerEnabled:{objc_msgSend(v17, "BOOLValue")}];

      [v7 markChanged];
    }
  }

  else
  {
  }

  v18 = [v5 setProperties];
  if ([v18 containsObject:@"mediaPassword"])
  {
    v19 = [v23 mediaPassword];
    v20 = [v5 mediaPassword];
    v21 = HMFEqualObjects();

    if ((v21 & 1) == 0)
    {
      v22 = [v5 mediaPassword];
      [v23 setMediaPassword:v22];

      [v7 markChanged];
    }
  }

  else
  {
  }

  [v6 respondWithPayload:0];
}

void __updateAccountHandleForCurrentUser(void *a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 primaryHandle];
  if (v6)
  {
    v7 = [v3 currentUser];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 accountHandle];
      v10 = HMFEqualObjects();

      if (!v10)
      {
        v22 = [v8 newModelWithChangeType:2];
        [v22 setAccountHandle:v6];
        v23 = +[HMDAccountHandleFormatter defaultFormatter];
        v24 = [v23 stringForObjectValue:v6];

        [v22 setUserID:v24];
        v25 = [v3 backingStore];
        v26 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
        v27 = [v25 transaction:@"HMDAppleAccountManagerAccountUpdatedNotification" options:v26];

        [v27 add:v22 withMessage:0];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = ____updateAccountHandleForCurrentUser_block_invoke;
        v28[3] = &unk_2797359D8;
        v29 = v3;
        [v27 run:v28];

        goto LABEL_14;
      }

      v11 = objc_autoreleasePoolPush();
      v12 = v3;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v14;
        v15 = "%{public}@Home's current user has an unchanged account handle";
        v16 = v13;
        v17 = OS_LOG_TYPE_DEBUG;
LABEL_11:
        _os_log_impl(&dword_2531F8000, v16, v17, v15, buf, 0xCu);
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v3;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v14;
        v15 = "%{public}@Home does not yet have a current user, cannot update account handle";
        v16 = v13;
        v17 = OS_LOG_TYPE_INFO;
        goto LABEL_11;
      }
    }

    objc_autoreleasePoolPop(v11);
LABEL_14:

    goto LABEL_15;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = v3;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v21;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Cannot update home current user account handle because primary handle cannot be determined", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
LABEL_15:
}

void ____updateAccountHandleForCurrentUser_block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to change account handle for current user: %@", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

void sub_253349490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253349AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25334C98C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 240));
  _Unwind_Resume(a1);
}

void sub_25334FC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253361620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253363A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __decodeAndVerifyCurrentUser(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 uuidForKey:@"kUserUUIDKey"];
  if (v5)
  {
    v6 = [v3 currentUser];
    v7 = [v6 uuid];
    v8 = [v7 hmf_isEqualToUUID:v5];

    if (v8)
    {
      v9 = v6;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v3;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v14;
        v19 = 2112;
        v20 = v5;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Specified user identifier does not match current user: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [v4 respondWithError:v15];

      v9 = 0;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    [v4 respondWithError:v10];

    v9 = 0;
  }

  return v9;
}

void sub_253365E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253366678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253366D10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_253367758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25336A07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25336A3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HMDSecureAccessErrorCodeForMessage(void *a1, uint64_t a2)
{
  v3 = a1;
  if ([v3 isEntitledForSPIAccess])
  {
    v4 = 2003;
  }

  else
  {
    v5 = [v3 isInternal];
    if (a2 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    if (v6)
    {
      v4 = 2003;
    }

    else
    {
      v4 = 10;
    }
  }

  v7 = MEMORY[0x277CCA9B8];
  if (+[HMDDeviceCapabilities supportsDeviceLock])
  {
    v8 = 82;
  }

  else
  {
    v8 = v4;
  }

  v9 = [v7 hmErrorWithCode:v8];

  return v9;
}

void sub_25336F764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2533717AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id location)
{
  objc_destroyWeak(&a51);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253372A4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_253372ED4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_253373E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak((v35 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2533742FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25337493C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_253375E80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_253377294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25337AC48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id location)
{
  objc_destroyWeak((v56 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25337B8B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_25337BE90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 240));
  _Unwind_Resume(a1);
}

void sub_25337F38C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak(&STACK[0x250]);
  _Unwind_Resume(a1);
}

void sub_253384650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____authenticateAcceptedOutgoingInvitation_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ____authenticateAcceptedOutgoingInvitation_block_invoke_2;
    block[3] = &unk_279725170;
    v13 = v6;
    v10 = v8;
    v11 = *(a1 + 40);
    v14 = v10;
    v15 = v11;
    v19 = *(a1 + 56);
    v16 = v5;
    v17 = *(a1 + 48);
    v18 = *(a1 + 32);
    dispatch_async(v9, block);
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

uint64_t ____authenticateAcceptedOutgoingInvitation_block_invoke_4364(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v7 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v7;
    v8 = "%{public}@Failed to authenticate invitation";
    v9 = v6;
    v10 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v7 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v7;
    v8 = "%{public}@Authenticated invitation after resolving";
    v9 = v6;
    v10 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_2531F8000, v9, v10, v8, &v12, 0xCu);

LABEL_7:
  objc_autoreleasePoolPop(v3);
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 48) + 8) + 40));
  }

  return result;
}

void ____authenticateAcceptedOutgoingInvitation_block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [*(a1 + 48) shortDescription];
      v7 = *(*(*(a1 + 80) + 8) + 40);
      v24 = 138543874;
      v25 = v5;
      v26 = 2112;
      v27 = v6;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to resolve handle, %@, with error: %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
    v8 = *(*(a1 + 80) + 8);
    v10 = *(v8 + 40);
    v9 = (v8 + 40);
    if (!v10)
    {
      objc_storeStrong(v9, *(a1 + 32));
    }
  }

  else
  {
    v11 = [*(a1 + 56) isEqual:*(a1 + 64)];
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = HMFGetOSLogHandle();
    v15 = v14;
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [*(a1 + 48) shortDescription];
        v24 = 138543618;
        v25 = v16;
        v26 = 2112;
        v27 = v17;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Authenticated handle: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [*(a1 + 64) shortDescription];
        v20 = [*(a1 + 56) shortDescription];
        v24 = 138543874;
        v25 = v18;
        v26 = 2112;
        v27 = v19;
        v28 = 2112;
        v29 = v20;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Invitation response received from account, %@, expected: %@", &v24, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      if (!*(*(*(a1 + 80) + 8) + 40))
      {
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:55];
        v22 = *(*(a1 + 80) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = v21;
      }
    }
  }

  dispatch_group_leave(*(a1 + 72));
}

void sub_253387FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id location)
{
  objc_destroyWeak((v47 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a31);
  objc_destroyWeak(&a39);
  _Unwind_Resume(a1);
}

void sub_253388E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25338A3C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25338D290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25338DD28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_2533952F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253397008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak(&a38);
  objc_destroyWeak((v38 - 168));
  _Unwind_Resume(a1);
}

void sub_253397C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25339EE6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __handleAccessoryReachabilityRegistration(void *a1, void *a2, int a3)
{
  v127 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = [v5 workQueue];
  dispatch_assert_queue_V2(v7);

  if (![v6 isRemote] || (objc_msgSend(v6, "isSecureRemote") & 1) != 0)
  {
    v90 = *MEMORY[0x277CD0640];
    v8 = [v6 stringForKey:?];
    v9 = [v5 uuid];
    v10 = [v9 UUIDString];
    v93 = v8;
    LOBYTE(v8) = [v8 isEqualToString:v10];

    if (v8)
    {
      v94 = 0;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v5;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        [v12 uuid];
        v16 = v15 = v6;
        v17 = [v16 UUIDString];
        *buf = 138543874;
        v122 = v14;
        v123 = 2112;
        v124 = v93;
        v125 = 2112;
        v126 = v17;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Home does not match, received: %@, current: %@", buf, 0x20u);

        v6 = v15;
      }

      objc_autoreleasePoolPop(v11);
      v94 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
    }

    v18 = [v6 responseHandler];

    if (v18)
    {
      v19 = [v6 responseHandler];
      (v19)[2](v19, v94, 0);
    }

    v20 = objc_autoreleasePoolPush();
    v21 = v5;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v122 = v23;
      v123 = 2112;
      v124 = v21;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Registering for remote reachability for home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [v6 remoteSourceID];
    v25 = [HMDDevice deviceWithDestination:v24];
    v26 = v25;
    if (a3)
    {
      v91 = v24;
      v92 = v25;
      v88 = v6;
      v89 = v5;
      v27 = [v6 messagePayload];
      v87 = *MEMORY[0x277CCE7A8];
      v28 = [v27 hmf_arrayForKey:?];

      if (!v28)
      {
        v29 = [MEMORY[0x277CBEB18] array];
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v30 = [v21 accessories];
        v31 = objc_msgSend_copy(v30);

        v32 = [v31 countByEnumeratingWithState:&v110 objects:v120 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v111;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v111 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = [*(*(&v110 + 1) + 8 * i) uuid];
              v37 = [v36 UUIDString];
              [v29 addObject:v37];
            }

            v33 = [v31 countByEnumeratingWithState:&v110 objects:v120 count:16];
          }

          while (v33);
        }

        v28 = v29;
        v38 = objc_autoreleasePoolPush();
        v39 = v21;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543618;
          v122 = v41;
          v123 = 2112;
          v124 = v28;
          _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Registering for reachability notification for all accessories: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v38);
      }

      v95 = [v21 homeManager];
      v98 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v28, "count")}];
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      obj = v28;
      v101 = [obj countByEnumeratingWithState:&v106 objects:v119 count:16];
      if (v101)
      {
        v100 = *v107;
        v97 = v21;
        do
        {
          for (j = 0; j != v101; ++j)
          {
            if (*v107 != v100)
            {
              objc_enumerationMutation(obj);
            }

            v43 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v106 + 1) + 8 * j)];
            if (v43)
            {
              v104 = 0u;
              v105 = 0u;
              v102 = 0u;
              v103 = 0u;
              v44 = [v21 accessories];
              v45 = objc_msgSend_copy(v44);

              v46 = [v45 countByEnumeratingWithState:&v102 objects:v118 count:16];
              if (v46)
              {
                v47 = v46;
                v48 = *v103;
                while (2)
                {
                  for (k = 0; k != v47; ++k)
                  {
                    if (*v103 != v48)
                    {
                      objc_enumerationMutation(v45);
                    }

                    v50 = *(*(&v102 + 1) + 8 * k);
                    v51 = [v50 uuid];
                    v52 = [v51 isEqual:v43];

                    if (v52)
                    {
                      if ([v50 isReachable])
                      {
                        v53 = 1;
                      }

                      else
                      {
                        v54 = [v95 residentMesh];
                        v55 = [v54 deviceForAccessory:v50 residentOrder:1 reachableResidents:0];
                        v53 = v55 != 0;
                      }

                      v56 = objc_autoreleasePoolPush();
                      v57 = v21;
                      v58 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
                      {
                        v59 = HMFGetLogIdentifier();
                        [v50 uuid];
                        v61 = v60 = v53;
                        [v61 UUIDString];
                        v62 = v96 = v56;
                        *buf = 138543874;
                        v122 = v59;
                        v123 = 2112;
                        v124 = v62;
                        v125 = 1024;
                        LODWORD(v126) = v60;
                        _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_INFO, "%{public}@Updating reachability for accessory: %@ to: %d", buf, 0x1Cu);

                        v53 = v60;
                        v56 = v96;
                      }

                      objc_autoreleasePoolPop(v56);
                      v63 = [v50 uuid];
                      v64 = [v63 UUIDString];
                      v116 = v64;
                      v65 = [MEMORY[0x277CCABB0] numberWithBool:v53];
                      v117 = v65;
                      v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
                      [v98 addObject:v66];

                      v21 = v97;
                      goto LABEL_45;
                    }
                  }

                  v47 = [v45 countByEnumeratingWithState:&v102 objects:v118 count:16];
                  if (v47)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_45:
            }
          }

          v101 = [obj countByEnumeratingWithState:&v106 objects:v119 count:16];
        }

        while (v101);
      }

      v5 = v89;
      v24 = v91;
      if (v91 && v92)
      {
        [v21 _registerDeviceForReachabilityNotification:v92 accessoryList:obj];
        v67 = objc_autoreleasePoolPush();
        v68 = v21;
        v69 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          v70 = HMFGetLogIdentifier();
          *buf = 138543618;
          v122 = v70;
          v123 = 2112;
          v124 = v91;
          _os_log_impl(&dword_2531F8000, v69, OS_LOG_TYPE_INFO, "%{public}@Sending current reachability to destination:%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v67);
        v114[0] = v87;
        v71 = objc_msgSend_copy(v98);
        v114[1] = v90;
        v115[0] = v71;
        v72 = [v68 uuid];
        v73 = [v72 UUIDString];
        v115[1] = v73;
        v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:2];

        v75 = [HMDRemoteMessage messageWithName:@"kRemoteReachabilityChangedNotificationKey" identifier:0 messagePayload:v74];
        v76 = [v95 messageDispatcher];
        v77 = [v68 uuid];
        v78 = [v92 remoteDestinationString];
        v79 = [v68 workQueue];
        [v76 sendSecureMessage:v75 target:v77 userID:0 destination:v78 responseQueue:v79 responseHandler:0];

        v24 = v91;
      }

      v6 = v88;
      v26 = v92;
    }

    else
    {
      [v21 _deregisterDeviceForReachabilityNotification:v25];
    }

    v80 = v93;
    goto LABEL_56;
  }

  v81 = objc_autoreleasePoolPush();
  v82 = v5;
  v83 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    v84 = HMFGetLogIdentifier();
    *buf = 138543618;
    v122 = v84;
    v123 = 2112;
    v124 = v6;
    _os_log_impl(&dword_2531F8000, v83, OS_LOG_TYPE_DEFAULT, "%{public}@Message not supported: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v81);
  v85 = [v6 responseHandler];

  if (v85)
  {
    v86 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    v80 = [v6 responseHandler];
    v94 = v86;
    v80[2](v80, v86, 0);
LABEL_56:
  }
}

void sub_2533A3AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2533A9D8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak(&STACK[0x290]);
  _Unwind_Resume(a1);
}

void sub_2533AA3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2533AA714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2533AED8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

id __createAccessoryBrowserAddAccessoryCompletionHandler(id val, void *a2, void *a3, void *a4, void *a5)
{
  objc_initWeak(&location, val);
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ____createAccessoryBrowserAddAccessoryCompletionHandler_block_invoke;
  v19[3] = &unk_279722EE8;
  v20 = v9;
  v21 = v11;
  v22 = v12;
  v13 = v12;
  v14 = v11;
  v15 = v9;
  objc_copyWeak(&v24, &location);
  v23 = v10;
  v16 = v10;
  v17 = _Block_copy(v19);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  return v17;
}

void ____createAccessoryBrowserAddAccessoryCompletionHandler_block_invoke(id *a1, void *a2, void *a3, uint64_t a4, unsigned int a5, unsigned int a6, void *a7, void *a8)
{
  v90 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v69 = a3;
  v13 = a7;
  v67 = a8;
  v14 = [a1[4] accessoryUUID];

  if (v69 && !v14)
  {
    [a1[4] setAccessoryUUID:v69];
  }

  [a1[5] pairedToServer:v12 certificationStatus:a4 addedViaWAC:a5 legacyWAC:a6];
  [a1[5] setAuthenticationMethod:{objc_msgSend(v12, "authMethod")}];
  v15 = objc_alloc(MEMORY[0x277D0F770]);
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s(), %s:%ld", "HMDAccessoryBrowserAddAccessoryCompletionHandler __createAccessoryBrowserAddAccessoryCompletionHandler(HMDHome *__weak, HMSetupAccessoryDescription *__strong, HMDUnpairedHAPAccessoryConfiguration *__strong, HMDAccessoryPairingEvent *__strong, HMFMessage *__strong)_block_invoke", "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/Home/HMDHome.m", 11629];
  v17 = [a1[6] activity];
  v79 = [v15 initWithName:v16 parent:v17];

  WeakRetained = objc_loadWeakRetained(a1 + 8);
  [WeakRetained unsetFabricForPairing];
  if (!v13 && WeakRetained)
  {
    v19 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ____createAccessoryBrowserAddAccessoryCompletionHandler_block_invoke_4350;
    block[3] = &unk_279722EC0;
    v71 = v79;
    v72 = WeakRetained;
    v73 = a1[4];
    v74 = a1[7];
    v75 = a1[5];
    v76 = v12;
    v78 = a4;
    v77 = a1[6];
    dispatch_async(v19, block);

    v20 = 0;
    v21 = v71;
    goto LABEL_37;
  }

  if (!WeakRetained)
  {
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];

    v13 = v22;
  }

  v21 = [a1[5] vendorDetailsForReporting];
  v23 = v13;
  v20 = v23;
  v24 = v23;
  if (WeakRetained)
  {
    v24 = v23;
    if ([v23 code] == 2010)
    {
      v25 = [WeakRetained threadNetworkID];

      if (v25)
      {
        v26 = 2009;
      }

      else
      {
        v26 = 2010;
      }

      v24 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:v26];
    }
  }

  v27 = objc_autoreleasePoolPush();
  v28 = WeakRetained;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138544386;
    v81 = v30;
    v82 = 2112;
    v83 = v69;
    v84 = 2112;
    v85 = v20;
    v86 = 2112;
    v87 = v24;
    v88 = 2112;
    v89 = v67;
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Add accessory completion handler for accessory uuid %@ error %@ mapped error %@ context %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v27);
  if ([a1[5] isMatterAccessory] && objc_msgSend(a1[5], "isAddOperation"))
  {
    if (!v67)
    {
      context = objc_autoreleasePoolPush();
      v31 = v28;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        v81 = v33;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Matter pairing end context is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(context);
    }

    if (![v67 isCancelled])
    {
      notifyMatterMetricPairingEnded(v28, v67);
      goto LABEL_29;
    }

    v34 = v28;
    v61 = v67;
    contexta = objc_autoreleasePoolPush();
    v35 = v34;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543618;
      v81 = v37;
      v82 = 2112;
      v83 = v61;
      _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@Notifying matter metric pairing cancelled %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(contexta);
    contextb = [MEMORY[0x277CBEB38] dictionary];
    [contextb setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HMDMatterAccessoryPairingSubmitKey"];
    v38 = [v61 error];
    [contextb setObject:v38 forKeyedSubscript:@"HMDMatterAccessoryPairingFailureErrorKey"];

    v39 = [v61 sourceErrorDomain];
    [contextb setObject:v39 forKeyedSubscript:@"HMDMatterAccessoryPairingSourceErrorDomain"];

    v40 = [MEMORY[0x277CCAB98] defaultCenter];
    v41 = objc_msgSend_copy(contextb);
    [v40 postNotificationName:@"HMDMatterAccessoryUpdatePairingMetricNotification" object:0 userInfo:v41];
  }

  else
  {
    v35 = [v28 logEventSubmitter];
    [v35 submitLogEvent:a1[5] error:v24];
  }

LABEL_29:
  v42 = objc_autoreleasePoolPush();
  v43 = v28;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    v45 = HMFGetLogIdentifier();
    v46 = a1[4];
    *buf = 138543874;
    v81 = v45;
    v82 = 2112;
    v83 = v46;
    v84 = 2112;
    v85 = v24;
    _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_DEBUG, "%{public}@Failed to add accessory %@ with error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v42);
  v47 = v79;
  [v12 category];

  [v21 model];
  [v21 manufacturer];

  [v21 firmwareVersion];
  [a1[5] linkType];
  v48 = HAPLinkTypeDescription();
  v49 = HMFBooleanToString();
  v50 = HMFBooleanToString();
  v51 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v24 domain];

  [v24 code];
  [a1[5] isThreadAccessory];
  v52 = HMFBooleanToString();
  [a1[5] accessorySupportsWoL];
  v53 = HMFBooleanToString();

  v54 = [a1[6] responseHandler];

  if (v54)
  {
    v55 = [a1[6] responseHandler];
    (v55)[2](v55, v24, 0);
  }

  if (WeakRetained)
  {
    [v43 _removePendingAccessoryAdd:a1[4]];
    v56 = [v43 accessoryBrowser];
    [v56 removePairingInformationForAccessoryServer:v12];

    v57 = [a1[7] networkCredential];
    v58 = [v57 clientIdentifier];

    if (v58)
    {
      v59 = [a1[7] networkCredential];
      v60 = [v59 clientIdentifier];
      [v43 _removeClientConfigurationWithIdentifier:v60];
    }
  }

LABEL_37:
  __HMFActivityScopeLeave();
}

void ____createAccessoryBrowserAddAccessoryCompletionHandler_block_invoke_4350(uint64_t a1)
{
  [*(a1 + 32) begin];
  v2 = *(a1 + 32);
  [*(a1 + 40) _accessoryPairingDidComplete:*(a1 + 48) configuration:*(a1 + 56) pairingEvent:*(a1 + 64) accessoryServer:*(a1 + 72) certificationStatus:*(a1 + 88) requestMessage:*(a1 + 80)];
  __HMFActivityScopeLeave();
}

id HMDHomeCreateAddAccessoryProgressHandler(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  objc_initWeak(&location, v5);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __HMDHomeCreateAddAccessoryProgressHandler_block_invoke;
  aBlock[3] = &unk_2797223D8;
  v14 = v5;
  v8 = v5;
  objc_copyWeak(&v17, &location);
  v15 = v6;
  v16 = v7;
  v9 = v7;
  v10 = v6;
  v11 = _Block_copy(aBlock);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v11;
}

void __HMDHomeCreateAddAccessoryProgressHandler_block_invoke(id *a1, uint64_t a2, void *a3)
{
  v85 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = a1[4];
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMSetupAccessoryProgressAsString();
    *buf = 138543618;
    v82 = v9;
    v83 = 2112;
    v84 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Progress Handler called with progress: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v78 = [v5 accessoryUUID];
    if (v78 || ([a1[5] addRequestIdentifier], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      v77 = a1;
      v13 = objc_autoreleasePoolPush();
      v75 = WeakRetained;
      v14 = WeakRetained;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = HMSetupAccessoryProgressAsString();
        *buf = 138543618;
        v82 = v16;
        v83 = 2112;
        v84 = v17;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Posting accessory pairing state progress notification to %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v18 = [MEMORY[0x277CCAB98] defaultCenter];
      v79[0] = @"HMDSetupAccessoryProgressStateKey";
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
      v80[0] = v19;
      v79[1] = @"HMDAccessoryProgressStateNotificationKey";
      v20 = HMSetupAccessoryProgressAsString();
      v80[1] = v20;
      v79[2] = @"HMDAccessoryProgressStateTimeNotificationKey";
      v21 = [MEMORY[0x277CBEAA8] date];
      v80[2] = v21;
      v79[3] = @"HMDAccessoryProgressStateforAccessoryKey";
      if (v78)
      {
        [v78 UUIDString];
      }

      else
      {
        v74 = [v77[5] addRequestIdentifier];
        [v74 UUIDString];
      }
      v22 = ;
      v80[3] = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:4];
      [v18 postNotificationName:@"HMDAccessoryProgressStateUpdateNotification" object:v14 userInfo:v23];

      if (!v78)
      {

        v22 = v74;
      }

      WeakRetained = v75;
      a1 = v77;
    }

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v25 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    [v24 setObject:v25 forKeyedSubscript:*MEMORY[0x277CD2020]];

    v26 = [v5 accessoryName];

    if (v26)
    {
      v27 = [v5 accessoryName];
      [v24 setObject:v27 forKeyedSubscript:*MEMORY[0x277CD1FC8]];
    }

    v28 = [v5 accessoryUUID];

    if (v28)
    {
      v29 = [v5 accessoryUUID];
      v30 = [v29 UUIDString];
      [v24 setObject:v30 forKeyedSubscript:*MEMORY[0x277CCF0B0]];
    }

    v31 = [v5 manufacturerName];

    if (v31)
    {
      v32 = [v5 manufacturerName];
      [v24 setObject:v32 forKeyedSubscript:@"kAccessoryInfoManufacturerKey"];
    }

    v33 = [v5 category];

    if (v33)
    {
      v34 = [v5 category];
      v35 = encodeRootObjectForIncomingXPCMessage(v34, 0);
      [v24 setObject:v35 forKeyedSubscript:@"kAccessoryCategory"];
    }

    if ([v5 certificationStatus])
    {
      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "certificationStatus")}];
      [v24 setObject:v36 forKeyedSubscript:@"kAccessoryCertificationStatusKey"];
    }

    v37 = [v5 commissioneeInfo];

    if (v37)
    {
      v38 = [v5 commissioneeInfo];
      v39 = encodeRootObjectForIncomingXPCMessage(v38, 0);
      [v24 setObject:v39 forKeyedSubscript:*MEMORY[0x277CCFDA0]];
    }

    v40 = [v5 systemCommissionerUUID];

    if (v40)
    {
      v41 = [v5 systemCommissionerUUID];
      v42 = [v41 UUIDString];
      [v24 setObject:v42 forKeyedSubscript:*MEMORY[0x277CCFDC0]];
    }

    if (a2 == 9)
    {
      v48 = [WeakRetained wiFiRouterAccessories];
      v44 = [v48 firstObject];

      if (v44)
      {
        v49 = [v44 uuid];
        v50 = [v49 UUIDString];
        [v24 setObject:v50 forKeyedSubscript:*MEMORY[0x277CD04F8]];
      }

      else
      {
        v51 = objc_autoreleasePoolPush();
        v52 = WeakRetained;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = HMFGetLogIdentifier();
          v55 = HMSetupAccessoryProgressAsString();
          *buf = 138543618;
          v82 = v54;
          v83 = 2112;
          v84 = v55;
          _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_INFO, "%{public}@Progress is %@ but no accessory being replaced", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v51);
        v44 = 0;
      }
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_47;
      }

      v43 = [v5 productData];

      if (!v43)
      {
        goto LABEL_47;
      }

      v44 = +[HMDVendorDataManager sharedVendorDataManager];
      v45 = [v5 productData];
      v46 = [v44 vendorModelEntryForProductData:v45];

      v47 = [a1[5] addRequestIdentifier];
      if (v47)
      {

LABEL_48:
        goto LABEL_49;
      }

      v56 = [a1[5] appIdentifier];
      v57 = [v46 appBundleID];
      v58 = [v56 isEqual:v57];

      if (v58)
      {
        goto LABEL_48;
      }

      v59 = [v46 appStoreID];
      if (v59 && (v60 = v59, [v46 appBundleID], v61 = objc_claimAutoreleasedReturnValue(), v61, v60, v61))
      {
        v62 = [v46 appStoreID];
        [v24 setObject:v62 forKeyedSubscript:@"kAccessoryVendorInfoStoreIDKey"];

        v63 = [v46 appBundleID];
        [v24 setObject:v63 forKeyedSubscript:@"kAccessoryVendorInfoBundleIDKey"];
      }

      else
      {
        v64 = objc_autoreleasePoolPush();
        v76 = WeakRetained;
        v65 = WeakRetained;
        v66 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          v67 = HMFGetLogIdentifier();
          v68 = [v5 productData];
          *buf = 138543618;
          v82 = v67;
          v83 = 2112;
          v84 = v68;
          _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_DEBUG, "%{public}@No appID/bundleID found for productData: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v64);
        WeakRetained = v76;
      }
    }

LABEL_47:
    v69 = MEMORY[0x277D0F848];
    v70 = *MEMORY[0x277CD2068];
    v71 = [WeakRetained messageDestination];
    v44 = [v69 messageWithName:v70 destination:v71 payload:v24];

    v72 = [a1[6] identifier];
    [v44 setIdentifier:v72];

    [v44 setRequiresSPIEntitlement];
    v73 = [a1[6] transport];
    [v44 setTransport:v73];

    v46 = [WeakRetained msgDispatcher];
    [v46 sendMessage:v44 completionHandler:0];
    goto LABEL_48;
  }

LABEL_49:
}

void sub_2533B3A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2533B3FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2533B75DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _mediaSystemsContainsAccessory(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___mediaSystemsContainsAccessory_block_invoke;
  v7[3] = &unk_279726148;
  v8 = v3;
  v4 = v3;
  v5 = [a1 na_any:v7];

  return v5;
}

uint64_t _mediaSystemContainsAccessory(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 components];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___mediaSystemContainsAccessory_block_invoke;
  v8[3] = &unk_279722E98;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t ___mediaSystemContainsAccessory_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessory];
  v4 = [v3 uuid];
  v5 = [*(a1 + 32) uuid];
  v6 = [v4 hmf_isEqualToUUID:v5];

  return v6;
}

void sub_2533C46E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2533CB1B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2533CC890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2533DB618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2533E06EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  objc_destroyWeak((v2 - 176));
  objc_destroyWeak((v2 - 168));
  _Unwind_Resume(a1);
}

void __notifyRegisteredIdentityRemoved(void *a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v3;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v9;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Notifying of removed identity: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    v11 = [v5 identity];
    [v10 setObject:v11 forKeyedSubscript:@"HMDIdentityNotificationKey"];

    v12 = v5;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (isKindOfClass)
    {
      v16 = [v12 device];
      [v10 setObject:v16 forKeyedSubscript:@"HMDDeviceNotificationKey"];
    }

    v17 = v12;
    objc_opt_class();
    v18 = objc_opt_isKindOfClass();
    if (v18)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    if (v18)
    {
      v21 = [v17 account];
      [v10 setObject:v21 forKeyedSubscript:@"HMDAccountNotificationKey"];
    }

    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    v23 = objc_msgSend_copy(v10);
    [v22 postNotificationName:@"HMDIdentityRegistryRemovedIdentity" object:v7 userInfo:v23];
  }
}

void __removeRegisteredObjectForRegisteredIdentity(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5 && v6 && v7)
  {
    v9 = [v5 lock];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ____removeRegisteredObjectForRegisteredIdentity_block_invoke;
    v10[3] = &unk_279734960;
    v11 = v6;
    v12 = v8;
    v13 = v5;
    [v9 performBlock:v10];
  }
}

void ____removeRegisteredObjectForRegisteredIdentity_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) registeredObjects];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) registeredObjects];
  v4 = [v3 hmf_isEmpty];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 48);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing registered identity, %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [*(*(a1 + 48) + 8) removeObject:*(a1 + 32)];
    __notifyRegisteredIdentityRemoved(*(a1 + 48), *(a1 + 32));
  }
}

id __registeredIdentitiesForIdentity(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v3[1];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [v13 identity];
          v15 = [v14 isEqual:v5];

          if (v15)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    v6 = objc_msgSend_copy(v7);
  }

  return v6;
}

void __notifyRegisteredIdentityAdded(void *a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v3;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v9;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Notifying of added identity: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    v11 = [v5 identity];
    [v10 setObject:v11 forKeyedSubscript:@"HMDIdentityNotificationKey"];

    v12 = v5;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (isKindOfClass)
    {
      v16 = [v12 device];
      [v10 setObject:v16 forKeyedSubscript:@"HMDDeviceNotificationKey"];
    }

    v17 = v12;
    objc_opt_class();
    v18 = objc_opt_isKindOfClass();
    if (v18)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    if (v18)
    {
      v21 = [v17 account];
      [v10 setObject:v21 forKeyedSubscript:@"HMDAccountNotificationKey"];
    }

    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    v23 = objc_msgSend_copy(v10);
    [v22 postNotificationName:@"HMDIdentityRegistryAddedIdentity" object:v7 userInfo:v23];
  }
}

void __registerObjectForRegisteredIdentity(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5 && v6 && v7)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [v6 registeredObjects];
    v11 = [v10 containsObject:v8];

    if ((v11 & 1) == 0)
    {
      objc_initWeak(&location, v5);
      objc_initWeak(&v22, v8);
      objc_initWeak(&from, v6);
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = ____registerObjectForRegisteredIdentity_block_invoke;
      v17 = &unk_27972D160;
      objc_copyWeak(&v18, &location);
      objc_copyWeak(&v19, &from);
      objc_copyWeak(&v20, &v22);
      [v8 setDeallocationBlock:&v14];
      v12 = [v8 observedObject];

      if (v12)
      {
        v13 = [v6 registeredObjects];
        [v13 addObject:v8];
      }

      else
      {
        __removeRegisteredObjectForRegisteredIdentity(v5, v6, v8);
      }

      objc_destroyWeak(&v20);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&from);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    objc_autoreleasePoolPop(v9);
  }
}

void sub_2533E59F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak(v17 + 6);
  objc_destroyWeak(v17 + 5);
  objc_destroyWeak(v17 + 4);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void ____registerObjectForRegisteredIdentity_block_invoke(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v3 = objc_loadWeakRetained(a1 + 5);
  v4 = objc_loadWeakRetained(a1 + 6);
  v5 = v4;
  if (WeakRetained && v3 && v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = WeakRetained;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v9;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Registered object deallocated, removing object from identity: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    __removeRegisteredObjectForRegisteredIdentity(v7, v3, v5);
  }
}

void sub_2533E6120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11258(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2533E6494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2533E67BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2533E6B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2533E707C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2533E73F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2533ED268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2533EF2C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2533F1A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2533F56F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13089(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2533F6F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id location)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&STACK[0x250], 8);
  _Unwind_Resume(a1);
}

id actionResultForAction(void *a1)
{
  v1 = MEMORY[0x277D47338];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [v2 aceId];

  [v3 setRequestActionId:v4];

  return v3;
}

uint64_t isActivationCharacteristicType(void *a1)
{
  v1 = a1;
  if ([v1 isEqual:*MEMORY[0x277CCF9F0]])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqual:*MEMORY[0x277CCF748]];
  }

  return v2;
}

uint64_t isOutcomeSuccess(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D47E50]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D47DB0]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D47DB8]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D47E40]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x277D47E38]];
  }

  return v2;
}

void sub_2533FC8DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 208));
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

id getActivationCharacteristicFromServiceIfAny(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [a1 characteristics];
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v9 + 1) + 8 * i);
        v6 = [v5 type];
        v7 = isActivationCharacteristicType(v6);

        if (v7)
        {
          v2 = v5;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

void sub_2533FFBFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id location)
{
  objc_destroyWeak((v49 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25340119C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id location)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&STACK[0x230], 8);
  _Unwind_Resume(a1);
}

void sub_253402FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t isTemperatureAttribute(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D480B0]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D47F60]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D47FA8]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D47F68]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x277D47FB8]];
  }

  return v2;
}

uint64_t temperatureConversionIsNeeded(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    if (isMetricLocale_onceToken != -1)
    {
      dispatch_once(&isMetricLocale_onceToken, &__block_literal_global_133089);
    }

    if (isMetricLocale_isMetricLocale != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  if (([v1 isEqualToString:*MEMORY[0x277D48390]] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v3 = 1;
LABEL_8:

  return v3;
}

void sub_253409B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253409D38(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

__CFString *HMDUserSettingsBackingStoreControllerRunStateAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
    v1 = [v2 stringWithFormat:@"Unknown state %@", v3];
  }

  else
  {
    v1 = off_2797232D8[a1];
  }

  return v1;
}

void sub_253415998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534161EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

HMDHTTPDevice *__httpDeviceForNetService(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc(MEMORY[0x277CCAD78]);
  v6 = [v3 name];
  v7 = [v5 initWithUUIDString:v6];

  if (v7)
  {
    v8 = [[HMDHTTPDevice alloc] initWithIdentifier:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v4;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v3 name];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Unable to parse UUID from net service name %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  return v8;
}

void sub_253416AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253417A84(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253417B14(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253417BA4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253418390(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253418FC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_25341A30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25341D90C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 120));
  _Block_object_dispose((v3 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25341E99C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25341F5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14888(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25341FC94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253420CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getRadarDraftClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  result = objc_getClass("RadarDraft");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRadarDraftClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "RadarDraft");
    return __getRadarComponentClass_block_invoke(v3);
  }

  return result;
}

void __getRadarComponentClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RadarComponent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRadarComponentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np("Unable to find class %s", "RadarComponent");
    __125__HMDTTRManager_initiateRadarWithTitle_componentName_componentVersion_componentID_displayReason_attachments_isUserInitiated___block_invoke(v2, v3);
  }
}

void TapToRadarKitLibrary()
{
  v2 = 0;
  v0 = TapToRadarKitLibraryCore(&v2);
  v1 = v2;
  if (!v0)
  {
    v1 = abort_report_np("%s", v2);
    goto LABEL_5;
  }

  if (v2)
  {
LABEL_5:
    free(v1);
  }
}

uint64_t TapToRadarKitLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = TapToRadarKitLibraryCore_frameworkLibrary;
  v6 = TapToRadarKitLibraryCore_frameworkLibrary;
  if (!TapToRadarKitLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_2797234A8;
    v8 = *off_2797234B8;
    v9 = 0;
    v4[3] = _sl_dlopen();
    TapToRadarKitLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_25342C814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TapToRadarKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  TapToRadarKitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_25342D0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTapToRadarServiceClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  result = objc_getClass("TapToRadarService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTapToRadarServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "TapToRadarService");
    return +[(HMDTTRManager *)v3];
  }

  return result;
}

void sub_253433288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak(&a38);
  objc_destroyWeak((v38 - 184));
  _Unwind_Resume(a1);
}

void sub_253435C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16828(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253437A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2534380A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253438C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2534398D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25343A01C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_25343DFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17408(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HMDIsSiriClientIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.Siri"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"assistant_service"];
  }

  return v2;
}

uint64_t HMDIsFirstPartyClientIdentifier(void *a1)
{
  v1 = a1;
  if (HMDIsFirstPartyClientIdentifier_onceToken != -1)
  {
    dispatch_once(&HMDIsFirstPartyClientIdentifier_onceToken, &__block_literal_global_17822);
  }

  if ([v1 hasPrefix:@"com.apple."] & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"apple."))
  {
    v2 = 1;
  }

  else
  {
    v2 = [HMDIsFirstPartyClientIdentifier_knownClientIdentifiers containsObject:v1];
  }

  return v2;
}

uint64_t __HMDIsFirstPartyClientIdentifier_block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"accountsd", @"amsaccountsd", @"announced", @"assistant_service", @"assistantd", @"Carousel", @"CarPlay", @"cloudmediaservicesd", @"companiond", @"coordinated", @"coreautomationd", @"diagnosticextensionsd", @"hdsutil", @"HDSViewService", @"HomeAppIntentsExtension", @"homeenergyd", @"homehubd", @"HomeIntegrationTests-Runner", @"HomeKitDiagnosticExtension", @"HomeKitIntentExtension", @"homepodsensoryreporterd", @"homepodsettingsd", @"homeutil", @"itunescloudd", @"knowledgeconstructiond", @"mediaanalysisd-service", @"mediaanalysisd", @"mediaremoted", @"mediasetupd", @"passd", @"PineBoard", @"proximitycontrold", @"rapportd", @"seserviced", @"sharingd", @"Shortcuts", @"Siri Debug", @"siri", @"siriinferenced", @"siriknowledged", @"sirittsd", @"SiriUI", @"SiriUserFeedbackLearningUnivers", @"SoundBoard", @"SpringBoard", @"taptoradard", @"tvairplayd", @"tvremoted", @"tvsetuputil", @"userprofilesd", @"voiced", @"wifid", 0}];
  v1 = HMDIsFirstPartyClientIdentifier_knownClientIdentifiers;
  HMDIsFirstPartyClientIdentifier_knownClientIdentifiers = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

__CFString *HMDRequestSourceAsString(uint64_t a1)
{
  if (a1 > 1059)
  {
    if (a1 <= 1139)
    {
      if (a1 > 1099)
      {
        if (a1 > 1119)
        {
          if (a1 == 1120)
          {
            v2 = @"HMDHome";

            return v2;
          }

          if (a1 == 1130)
          {
            v2 = @"PeriodicReader";

            return v2;
          }
        }

        else
        {
          if (a1 == 1100)
          {
            v2 = @"HMDService";

            return v2;
          }

          if (a1 == 1110)
          {
            v2 = @"WalletKeyAccessory";

            return v2;
          }
        }
      }

      else if (a1 > 1079)
      {
        if (a1 == 1080)
        {
          v2 = @"Climate";

          return v2;
        }

        if (a1 == 1090)
        {
          v2 = @"DataStream";

          return v2;
        }
      }

      else
      {
        if (a1 == 1060)
        {
          v2 = @"ActionSets";

          return v2;
        }

        if (a1 == 1070)
        {
          v2 = @"Camera";

          return v2;
        }
      }
    }

    else if (a1 <= 1179)
    {
      if (a1 > 1159)
      {
        if (a1 == 1160)
        {
          v2 = @"MediaAccessory";

          return v2;
        }

        if (a1 == 1170)
        {
          v2 = @"NetworkRouterController";

          return v2;
        }
      }

      else
      {
        if (a1 == 1140)
        {
          v2 = @"Light";

          return v2;
        }

        if (a1 == 1150)
        {
          v2 = @"NaturalLight";

          return v2;
        }
      }
    }

    else if (a1 <= 1199)
    {
      if (a1 == 1180)
      {
        v2 = @"WakeOnLan";

        return v2;
      }

      if (a1 == 1190)
      {
        v2 = @"SiriEndpoint";

        return v2;
      }
    }

    else
    {
      switch(a1)
      {
        case 1200:
          v2 = @"TargetControl";

          return v2;
        case 1210:
          v2 = @"Widgets";

          return v2;
        case 1220:
          v2 = @"WifiManagement";

          return v2;
      }
    }

LABEL_148:
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected source value: %lu", a1];

    return v2;
  }

  if (a1 <= 7)
  {
    if (a1 > 3)
    {
      if (a1 > 5)
      {
        if (a1 == 6)
        {
          v2 = @"ThirdParty";
        }

        else
        {
          v2 = @"SourceInternalLegacy";
        }
      }

      else if (a1 == 4)
      {
        v2 = @"TimerTrigger";
      }

      else
      {
        v2 = @"FirstParty";
      }

      return v2;
    }

    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v2 = @"User";
      }

      else
      {
        v2 = @"EventTrigger";
      }

      return v2;
    }

    if (!a1)
    {
      v2 = @"Unknown";

      return v2;
    }

    if (a1 == 1)
    {
      v2 = @"Siri";

      return v2;
    }

    goto LABEL_148;
  }

  if (a1 <= 1009)
  {
    if (a1 <= 9)
    {
      if (a1 == 8)
      {
        v2 = @"RemoteRequested";
      }

      else
      {
        v2 = @"IntentSuggestion";
      }

      return v2;
    }

    if (a1 == 10)
    {
      v2 = @"Shortcuts";

      return v2;
    }

    if (a1 == 1000)
    {
      v2 = @"AccessoryFirmwareUpdate";

      return v2;
    }

    goto LABEL_148;
  }

  if (a1 <= 1029)
  {
    if (a1 == 1010)
    {
      v2 = @"AccessoryMetrics";

      return v2;
    }

    if (a1 == 1020)
    {
      v2 = @"AccessoryDiagnostics";

      return v2;
    }

    goto LABEL_148;
  }

  switch(a1)
  {
    case 1030:
      v2 = @"ThreadNetworkManagement";

      break;
    case 1040:
      v2 = @"HAPAccessory";

      break;
    case 1050:
      v2 = @"SiriTVRemote";

      return v2;
    default:
      goto LABEL_148;
  }

  return v2;
}

id HMDRequestSourceAsLegacyMetricString(uint64_t a1)
{
  v1 = HMDRequestSourceAsString(a1);
  if (([v1 hasPrefix:@"Unexpected"] & 1) == 0)
  {
    v2 = [@"Source_" stringByAppendingString:v1];

    v1 = v2;
  }

  return v1;
}

void sub_253441E60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_253443554(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_253444CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25344559C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253447110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25344756C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253447BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18677(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25345684C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25345DE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  os_unfair_lock_unlock((a25 + v40));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25345EDF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_253460AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  os_unfair_lock_unlock((v16 + v17));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253460E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  os_unfair_lock_unlock((v16 + v17));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HMDLocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (!isAppleTV())
  {
    goto LABEL_4;
  }

  v4 = [v1 stringByAppendingString:@"_APPLETV"];
  v5 = [v3 localizedStringForKey:v4 value:@"HMDDefaultLocalizedStringValue" table:@"HomeKitDaemon"];
  if ([v5 isEqualToString:@"HMDDefaultLocalizedStringValue"])
  {

LABEL_4:
    v5 = [v3 localizedStringForKey:v1 value:&stru_286509E58 table:@"HomeKitDaemon"];
    goto LABEL_6;
  }

LABEL_6:
  objc_autoreleasePoolPop(v2);

  return v5;
}

id HMDLocalizedStringForKeyWithCount(void *a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = @"_SINGULAR";
  }

  else
  {
    v2 = @"_PLURAL";
  }

  v3 = [a1 stringByAppendingString:v2];
  v4 = HMDLocalizedStringForKey(v3);

  return v4;
}

void sub_253464AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20854(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253465BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25346D7DC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

uint64_t __HMDActionSetAddActionWithModel(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v7)
  {
    v10 = [v8 backedObjectWithParent:v7 error:a4];
    if (v10)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      if (isKindOfClass)
      {
        [v7 _handleAddNewAction:v10 message:v9];
      }

      else if (a4)
      {
        *a4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *a4 = isKindOfClass = 0;
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

void sub_2534709EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id location, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, ...)
{
  va_start(va, a45);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22030(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25347119C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(va, 8);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_253471B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  objc_destroyWeak((v43 + 56));
  objc_destroyWeak(&location);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_25347336C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25347FD14(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_25347FDA8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_25347FE3C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2534801D8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253480E88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_253481C88(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253487B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253490A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  _Unwind_Resume(a1);
}

id findResidentDevice(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __findResidentDevice_block_invoke;
  v7[3] = &unk_27972AE10;
  v8 = v3;
  v4 = v3;
  v5 = [a1 na_firstObjectPassingTest:v7];

  return v5;
}

uint64_t __findResidentDevice_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

void sub_253491CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253493278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253493878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25349427C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534956CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_253496A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24695(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __parseGlobalDestination(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    v12 = [v11 rangeOfString:@"/"];
    v13 = v11;
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [v11 substringToIndex:v12];
    }

    if ([v13 containsString:@"self-token:"])
    {
      v14 = [v13 mutableCopy];
      [v14 replaceOccurrencesOfString:@"self-token:" withString:@"token:" options:1 range:{0, objc_msgSend(v14, "length")}];
      v15 = objc_msgSend_copy(v14);

      v13 = v15;
    }

    if (([v13 hasPrefix:@"token:"] & 1) == 0)
    {
      if (a5)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"Invalid destination." reason:@"Missing token prefix." suggestion:0];
        *a5 = v23 = 0;
LABEL_28:

        goto LABEL_29;
      }

LABEL_27:
      v23 = 0;
      goto LABEL_28;
    }

    if (a2)
    {
      v16 = objc_alloc(MEMORY[0x277CCAD78]);
      v17 = +[_HMDDeviceHandle identifierNamespace];
      v18 = [v13 dataUsingEncoding:4];
      *a2 = [v16 initWithNamespace:v17 data:v18];
    }

    v19 = [v13 substringFromIndex:{objc_msgSend(@"token:", "length")}];
    if ([v19 length])
    {
      v20 = objc_alloc(MEMORY[0x277CBEA90]);
      v21 = [v20 hmf_initWithHexadecimalString:v19 options:0];

      if (v21)
      {
        if (a3)
        {
          v22 = v21;
          *a3 = v21;
        }

        if (a4)
        {
          *a4 = [HMDAccountHandle accountHandleForDestination:v11];
        }

        v23 = 1;
        goto LABEL_28;
      }

      if (!a5)
      {
        goto LABEL_26;
      }

      v24 = MEMORY[0x277CCA9B8];
      v25 = @"Invalid token string.";
      v26 = 3;
    }

    else
    {
      if (!a5)
      {
LABEL_26:

        goto LABEL_27;
      }

      v24 = MEMORY[0x277CCA9B8];
      v25 = @"Missing token string.";
      v26 = 19;
    }

    *a5 = [v24 hmErrorWithCode:v26 description:@"Invalid destination." reason:v25 suggestion:0];
    goto LABEL_26;
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *a5 = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

LABEL_29:

  return v23;
}

id __parseLocalDestination(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    if (a2)
    {
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
LABEL_10:
      v7 = 0;
      *a2 = v9;
      goto LABEL_18;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_18;
  }

  if (([v3 hasPrefix:@"device:"] & 1) == 0)
  {
    if (a2)
    {
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"Invalid destination." reason:@"Missing local device prefix." suggestion:0];
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v5 = [v4 substringFromIndex:{objc_msgSend(@"device:", "length")}];
  if ([v5 length])
  {
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else if (a2)
    {
      *a2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"Invalid destination." reason:@"Invalid device identifier" suggestion:0];
    }
  }

  else if (a2)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"Invalid destination." reason:@"Missing device identifier." suggestion:0];
    *a2 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_18:

  return v7;
}

__CFString *HMDCloudShareTrustManagerConfigureStateAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
    v1 = [v2 stringWithFormat:@"Unknown state %@", v3];
  }

  else
  {
    v1 = off_279724418[a1];
  }

  return v1;
}

void sub_2534A82F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __HMDAppleAccountSettingsPostUpdatedNotification(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = v1;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying of updated Apple account settings", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"HMDAppleAccountSettingsUpdatedNotification" object:v3];
  }
}

void sub_2534AB9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534AC2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __legacyWatchOSCategoryMap_block_invoke()
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (BulletinDistributorCompanionLibraryCore(0))
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v0 = getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr;
    v17 = getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr;
    if (!getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr)
    {
      v1 = BulletinDistributorCompanionLibrary();
      v15[3] = dlsym(v1, "BLTBulletinContextKeyWatchLegacyMapKey");
      getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr = v15[3];
      v0 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (!v0)
    {
      goto LABEL_12;
    }

    v2 = *v0;
    v22 = v2;
    v3 = [&unk_286627B80 stringValue];
    v20 = v3;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v4 = getBLTWatchLegacyMapCategoryIDKeySymbolLoc_ptr;
    v17 = getBLTWatchLegacyMapCategoryIDKeySymbolLoc_ptr;
    if (!getBLTWatchLegacyMapCategoryIDKeySymbolLoc_ptr)
    {
      v5 = BulletinDistributorCompanionLibrary();
      v15[3] = dlsym(v5, "BLTWatchLegacyMapCategoryIDKey");
      getBLTWatchLegacyMapCategoryIDKeySymbolLoc_ptr = v15[3];
      v4 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (!v4)
    {
LABEL_12:
      v13 = dlerror();
      abort_report_np("%s", v13);
      __break(1u);
    }

    v18 = *v4;
    v19 = MEMORY[0x277CBEBF8];
    v6 = MEMORY[0x277CBEAC0];
    v7 = v18;
    v8 = [v6 dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v21 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v23[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v11 = legacyWatchOSCategoryMap_legacyWatchOSCategoryMap;
    legacyWatchOSCategoryMap_legacyWatchOSCategoryMap = v10;
  }

  else
  {
    v12 = legacyWatchOSCategoryMap_legacyWatchOSCategoryMap;
    legacyWatchOSCategoryMap_legacyWatchOSCategoryMap = MEMORY[0x277CBEC10];
  }
}

void sub_2534B12DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BulletinDistributorCompanionLibraryCore(uint64_t a1)
{
  if (!BulletinDistributorCompanionLibraryCore_frameworkLibrary)
  {
    BulletinDistributorCompanionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return BulletinDistributorCompanionLibraryCore_frameworkLibrary;
}

void *__getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BulletinDistributorCompanionLibrary();
  result = dlsym(v2, "BLTBulletinContextKeyWatchLegacyMapKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t BulletinDistributorCompanionLibrary()
{
  v3 = 0;
  v0 = BulletinDistributorCompanionLibraryCore(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

void *__getBLTWatchLegacyMapCategoryIDKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BulletinDistributorCompanionLibrary();
  result = dlsym(v2, "BLTWatchLegacyMapCategoryIDKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBLTWatchLegacyMapCategoryIDKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BulletinDistributorCompanionLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BulletinDistributorCompanionLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2534B8080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2534B8434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534B8C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _NCSchedulerDateWithMultiple(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = MEMORY[0x277CBEAB8];
  v9 = a2;
  v10 = a1;
  v11 = objc_alloc_init(v8);
  if (v11)
  {
    v12 = [v7 era];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12 * a4;
    }

    [v11 setEra:v13];
    v14 = [v7 year];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14 * a4;
    }

    [v11 setYear:v15];
    v16 = [v7 month];
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v16 * a4;
    }

    [v11 setMonth:v17];
    v18 = [v7 day];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18 * a4;
    }

    [v11 setDay:v19];
    v20 = [v7 hour];
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v20 * a4;
    }

    [v11 setHour:v21];
    v22 = [v7 minute];
    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22 * a4;
    }

    [v11 setMinute:v23];
    v24 = [v7 second];
    if (v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v25 = v24 * a4;
    }

    [v11 setSecond:v25];
    v26 = [v7 weekday];
    if (v26 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v27 = v26 * a4;
    }

    [v11 setWeekday:v27];
    v28 = [v7 weekdayOrdinal];
    if (v28 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v29 = v28 * a4;
    }

    [v11 setWeekdayOrdinal:v29];
    v30 = [v7 quarter];
    if (v30 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v31 = v30 * a4;
    }

    [v11 setQuarter:v31];
    v32 = [v7 weekOfMonth];
    if (v32 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v33 = v32 * a4;
    }

    [v11 setWeekOfMonth:v33];
    v34 = [v7 weekOfYear];
    if (v34 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v35 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v35 = v34 * a4;
    }

    [v11 setWeekOfYear:v35];
    v36 = [v7 yearForWeekOfYear];
    if (v36 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v37 = v36 * a4;
    }

    [v11 setYearForWeekOfYear:v37];
  }

  v38 = [v9 dateByAddingComponents:v11 toDate:v10 options:0];

  return v38;
}

void sub_2534C4330(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t HMDRemoteEventRouterProtoChangeRegistrationsMessageReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 == 5)
        {
          v14 = objc_alloc_init(HMDRemoteEventRouterProtoTopic);
          [a1 addTopicAdditions:v14];
          goto LABEL_30;
        }

        if (v13 == 6)
        {
          v14 = objc_alloc_init(HMDRemoteEventRouterProtoTopic);
          [a1 addTopicRemovals:v14];
LABEL_30:
          v17[0] = 0;
          v17[1] = 0;
          if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoTopicReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
LABEL_33:

          goto LABEL_34;
        }
      }

      else
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addTopicFilterAdditions:v14];
          }

          goto LABEL_33;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addTopicFilterRemovals:v14];
          }

          goto LABEL_33;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_2534CE038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534CF32C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDAccessorySettingsAuditReasonAsString(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDMediaSystemSettingsAuditReason %tu", a1];
  }

  else
  {
    v2 = off_2797247A8[a1 - 1];
  }

  return v2;
}

__CFString *HMDEventTriggerActivationTypeAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDEventTriggerActivationType %tu", a1];
  }

  else
  {
    v2 = off_2797247E8[a1];
  }

  return v2;
}

void sub_2534D76B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534D93FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534E4B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  objc_destroyWeak(&a35);
  objc_destroyWeak((v35 - 168));
  _Unwind_Resume(a1);
}

void sub_2534E6B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534EA0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534EE348(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2534EE3EC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2534EFECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534F0B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HMDCameraAspectRatioForImageData(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = CGImageSourceCreateWithData(v1, 0);
  if (v2)
  {
    v3 = v2;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v2, 0, 0);
    CFRelease(v3);
    if (ImageAtIndex)
    {
      Width = CGImageGetWidth(ImageAtIndex);
      Height = CGImageGetHeight(ImageAtIndex);
      CFRelease(ImageAtIndex);
      v7 = [MEMORY[0x277CCABB0] numberWithDouble:Width / Height];
      goto LABEL_10;
    }

    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      v11 = "%{public}@Failed to create image";
      goto LABEL_8;
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      v11 = "%{public}@Failed to create image source";
LABEL_8:
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, v11, &v13, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v8);
  v7 = 0;
LABEL_10:

  return v7;
}

id getIDSSessionOptionsAllowedClasses()
{
  v4[8] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:8];
  v2 = [v0 setWithArray:v1];

  return v2;
}

void sub_2534F5CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534F7B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534F9104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534FB494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535025AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535047E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253505EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253506D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak((v33 - 184));
  _Unwind_Resume(a1);
}

void sub_253509014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33507(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25350B364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25350E538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25350FDFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253514314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sha256(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a1;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v20 = &a9;
  v10 = v9;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    do
    {
      *md = 0;
      v23 = 0;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 UTF8String];
        v14 = strlen(v13);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            _HMFPreconditionFailureWithFormat();
          }

          v13 = md;
          [v12 getUUIDBytes:md];
          v15 = 16;
          goto LABEL_10;
        }

        v13 = [v12 bytes];
        v14 = [v12 length];
      }

      v15 = v14;
LABEL_10:
      CC_SHA256_Update(&c, v13, v15);
      v16 = v20++;
      v17 = *v16;

      v12 = v17;
    }

    while (v17);
  }

  CC_SHA256_Final(md, &c);
  v18 = [MEMORY[0x277CBEA90] dataWithBytes:md length:32];

  return v18;
}

void sub_25351F468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253521B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253522140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535226F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253522E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  _Block_object_dispose((v38 - 160), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253528408(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_253528648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25352912C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id hds_log()
{
  if (hds_log__hmf_once_t0 != -1)
  {
    dispatch_once(&hds_log__hmf_once_t0, &__block_literal_global_36104);
  }

  v1 = hds_log__hmf_once_v1;

  return v1;
}

void __hds_log_block_invoke()
{
  v2 = [@"hds" stringByReplacingOccurrencesOfString:@"_" withString:@"."];
  v0 = HMFCreateOSLogHandle();
  v1 = hds_log__hmf_once_v1;
  hds_log__hmf_once_v1 = v0;
}

void sub_25352F19C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25352F54C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25352FDFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535345A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, id a28)
{
  objc_destroyWeak((v28 + 64));
  objc_destroyWeak((v28 + 56));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a28);
  objc_destroyWeak(&a27);
  objc_destroyWeak((v29 - 152));
  objc_destroyWeak((v29 - 144));
  _Unwind_Resume(a1);
}

void sub_253537728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __getDenylistKeys_block_invoke(uint64_t a1, uint64_t a2)
{
  if (isInternalBuild())
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"kAuthorizationDataKey", 0, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17}];
  }

  else
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"kAuthorizationDataKey", *MEMORY[0x277CD1FD8], *MEMORY[0x277CD1FC8], *MEMORY[0x277CD2620], *MEMORY[0x277CD2040], *MEMORY[0x277CD2758], *MEMORY[0x277CD27B0], *MEMORY[0x277CD23D0], *MEMORY[0x277CD0D30], @"kAccessoryInfoSerialNumberKey", @"kUserIDKey", @"kUserIDsKey", @"kUserDisplayNameKey", @"kUserNamesKey", 0}];
  }
  v2 = ;
  v3 = getDenylistKeys_denylistKeys;
  getDenylistKeys_denylistKeys = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

void sub_253538804(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

uint64_t validateEntitlementForConnection(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4 && (([v4 valueForEntitlement:v3], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v7 = 0) : (v7 = v6), v8 = v7, v6, v8))
  {
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id HMXPCClientEntitlementsToComponents(unint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:64];
  if (a1)
  {
    for (i = 1; i - 1 < a1; i *= 2)
    {
      if ((i & a1) != 0)
      {
        if (i <= 2047)
        {
          if (i <= 31)
          {
            if (i <= 3)
            {
              v4 = @"com.apple.developer.homekit";
              if (i == 1)
              {
                goto LABEL_56;
              }

              if (i == 2)
              {
                v4 = @"com.apple.developer.homekit.background-mode";
                goto LABEL_56;
              }
            }

            else
            {
              switch(i)
              {
                case 4:
                  v4 = @"com.apple.private.homekit";
                  goto LABEL_56;
                case 8:
                  v4 = @"com.apple.private.homekit.pairing-identity";
                  goto LABEL_56;
                case 16:
                  v4 = @"com.apple.private.homekit.pairing-identity.private";
                  goto LABEL_56;
              }
            }
          }

          else if (i > 255)
          {
            switch(i)
            {
              case 256:
                v4 = @"com.apple.private.homekit.connectivity-info";
                goto LABEL_56;
              case 512:
                v4 = @"com.apple.private.homekit.multi-user.setup";
                goto LABEL_56;
              case 1024:
                v4 = @"com.apple.private.homekit.location";
                goto LABEL_56;
            }
          }

          else
          {
            switch(i)
            {
              case 32:
                v4 = @"com.apple.private.homekit.remote-login.private";
                goto LABEL_56;
              case 64:
                v4 = @"com.apple.developer.homekit.allow-setup-payload";
                goto LABEL_56;
              case 128:
                v4 = @"com.apple.private.homekit.cameraclips";
                goto LABEL_56;
            }
          }
        }

        else if (i >= 0x20000)
        {
          if (i >= 0x100000)
          {
            switch(i)
            {
              case 0x100000:
                v4 = @"com.apple.private.homekit.location-feedback-debug";
                goto LABEL_56;
              case 0x200000:
                v4 = @"com.apple.developer.matter.allow-setup-payload";
                goto LABEL_56;
              case 0x400000:
                v4 = @"com.apple.private.homekit.modern-messaging";
                goto LABEL_56;
            }
          }

          else
          {
            switch(i)
            {
              case 0x20000:
                v4 = @"com.apple.private.homekit.wallet-key";
                goto LABEL_56;
              case 0x40000:
                v4 = @"com.apple.private.homekit.assistant-identifiers";
                goto LABEL_56;
              case 0x80000:
                v4 = @"com.apple.private.homekit.home-location";
                goto LABEL_56;
            }
          }
        }

        else if (i >= 0x4000)
        {
          switch(i)
          {
            case 0x4000:
              v4 = @"com.apple.private.homekit.allow-secure-access";
              goto LABEL_56;
            case 0x8000:
              v4 = @"com.apple.private.homekit.diagnostics";
              goto LABEL_56;
            case 0x10000:
              v4 = @"com.apple.private.homekit.state-dump";
              goto LABEL_56;
          }
        }

        else
        {
          switch(i)
          {
            case 0x800:
              v4 = @"com.apple.private.homekit.shortcuts-automation-access";
              goto LABEL_56;
            case 0x1000:
              v4 = @"com.apple.private.homekit.messaging";
              goto LABEL_56;
            case 0x2000:
              v4 = @"com.apple.private.homekit.person-manager";
LABEL_56:
              [v2 addObject:v4];
              break;
          }
        }
      }
    }
  }

  v5 = objc_msgSend_copy(v2);

  return v5;
}

void sub_25353CD70(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253542600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__38198(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253542C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2535482CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253551658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__40007(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2535526FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253553180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253553E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535545D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253554F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535554C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253555AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253556D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535575E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

BOOL HMDCloudManagerIsZoneNotExistError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if ([v2 isEqualToString:*MEMORY[0x277CBBF50]])
  {
    v3 = [v1 code] == 26 || objc_msgSend(v1, "code") == 28;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_2535587EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_253558FE8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x253558F94);
  }

  _Unwind_Resume(a1);
}

void sub_25355A40C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25355B22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v66 + 88));
  objc_destroyWeak(&a35);
  objc_destroyWeak(&a49);
  _Block_object_dispose(&a51, 8);
  objc_destroyWeak(&a64);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  objc_destroyWeak(&STACK[0x260]);
  objc_destroyWeak((v67 - 248));
  _Block_object_dispose((v67 - 240), 8);
  _Block_object_dispose((v67 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_25355DA00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25355DE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25355E070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25355E7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25355F390(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_25355FBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25355FE88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_25356079C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253561110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a31);
  objc_destroyWeak(&location);
  _Block_object_dispose((v32 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_253561CC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_2535625D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 64));
  objc_destroyWeak((v2 + 48));
  _Block_object_dispose((v4 - 176), 8);
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_253564094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253564918(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_253564FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&a27);
  _Block_object_dispose((v32 - 176), 8);
  objc_destroyWeak(&a32);
  _Unwind_Resume(a1);
}

void sub_253566648(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_253567028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose((v26 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_253567758(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_253568768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id a47)
{
  objc_destroyWeak(&a47);
  objc_destroyWeak((v47 - 256));
  _Unwind_Resume(a1);
}

void sub_25356F3CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __notifyDelegateAccountRemoved(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [v3 clientQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ____notifyDelegateAccountRemoved_block_invoke;
    v6[3] = &unk_2797359B0;
    v7 = v3;
    v8 = v4;
    dispatch_async(v5, v6);
  }
}

void ____notifyDelegateAccountRemoved_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) shortDescription];
    *buf = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Account removed: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = @"HMDAccountNotificationKey";
  v12 = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v7 postNotificationName:@"HMDAccountRegistryRemovedAccountNotification" object:v9 userInfo:v10];
}

void __notifyDelegateAccountAdded(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [v3 clientQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ____notifyDelegateAccountAdded_block_invoke;
    v6[3] = &unk_2797359B0;
    v7 = v3;
    v8 = v4;
    dispatch_async(v5, v6);
  }
}

void ____notifyDelegateAccountAdded_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) shortDescription];
    *buf = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Account added: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = @"HMDAccountNotificationKey";
  v12 = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v7 postNotificationName:@"HMDAccountRegistryAddedAccountNotification" object:v9 userInfo:v10];
}

void __cleanupRemoteDevicesWithHandles(void *a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  context = objc_autoreleasePoolPush();
  v35 = v3;
  [v3 remoteAccountManager];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v28 = v44 = 0u;
  obj = [v28 accounts];
  v31 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
  if (v31)
  {
    v30 = *v42;
    v5 = 0x277CBE000uLL;
    v33 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v42 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v6;
        v7 = *(*(&v41 + 1) + 8 * v6);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v36 = v7;
        v34 = [v7 devices];
        v8 = [v34 countByEnumeratingWithState:&v37 objects:v51 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v38;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v38 != v10)
              {
                objc_enumerationMutation(v34);
              }

              v12 = *(*(&v37 + 1) + 8 * i);
              v13 = *(v5 + 2904);
              v14 = [v12 handles];
              v15 = [v13 setWithArray:v14];

              [v15 intersectSet:v4];
              if ([v15 count])
              {
                v16 = objc_autoreleasePoolPush();
                v17 = v35;
                v18 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
                {
                  v19 = HMFGetLogIdentifier();
                  v20 = [v12 shortDescription];
                  *buf = 138543874;
                  v46 = v19;
                  v47 = 2112;
                  v48 = v20;
                  v49 = 2112;
                  v50 = v36;
                  _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Removing duplicate device, %@, from account: %@", buf, 0x20u);

                  v4 = v33;
                  v5 = 0x277CBE000;
                }

                objc_autoreleasePoolPop(v16);
                [v36 removeDevice:v12];
              }
            }

            v9 = [v34 countByEnumeratingWithState:&v37 objects:v51 count:16];
          }

          while (v9);
        }

        v21 = [v36 devices];
        v22 = [v21 hmf_isEmpty];

        v5 = 0x277CBE000;
        if (v22)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = v35;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543618;
            v46 = v26;
            v47 = 2112;
            v48 = v36;
            _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Removing duplicate empty account: %@", buf, 0x16u);

            v5 = 0x277CBE000;
          }

          objc_autoreleasePoolPop(v23);
          [v28 removeAccount:v36];
        }

        v6 = v32 + 1;
        v4 = v33;
      }

      while (v32 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
    }

    while (v31);
  }

  objc_autoreleasePoolPop(context);
}

void __cleanupRemoteAccountsRelatedToAccount(void *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  context = objc_autoreleasePoolPush();
  v5 = [v3 remoteAccountManager];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v5 accounts];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    v18 = v5;
    v19 = v3;
    v20 = v6;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        if (([v4 isEqual:v11] & 1) == 0 && objc_msgSend(v4, "isRelatedToAccount:", v11))
        {
          v12 = objc_autoreleasePoolPush();
          v13 = v3;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = HMFGetLogIdentifier();
            v16 = [v11 shortDescription];
            *buf = 138543618;
            v26 = v15;
            v27 = 2112;
            v28 = v16;
            _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Detected stale account, %@, removing", buf, 0x16u);

            v3 = v19;
            v5 = v18;
          }

          objc_autoreleasePoolPop(v12);
          [v5 removeAccount:v11];
          v6 = v20;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(context);
}

void __registerForAccountUpdates(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = v3;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Registering for account updates: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 removeObserver:v6 name:@"HMDAccountHandlesUpdatedNotification" object:0];

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 removeObserver:v6 name:@"HMDAccountAddedDeviceNotification" object:0];

  if (v4)
  {
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v6 selector:sel___handleAppleAccountHandlesUpdated_ name:@"HMDAccountHandlesUpdatedNotification" object:v4];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v6 selector:sel___handleAppleAccountDeviceAdded_ name:@"HMDAccountAddedDeviceNotification" object:v4];
  }
}

id __deviceForDevice(void *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      v19 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v21;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v21 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v20 + 1) + 8 * j);
                if ([v4 isRelatedToDevice:v16])
                {
                  v17 = v16;

                  goto LABEL_21;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

          v8 = v19;
        }

        v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
        v17 = 0;
      }

      while (v7);
    }

    else
    {
      v17 = 0;
    }

LABEL_21:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id __deviceForHandle(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v14 + 1) + 8 * i) deviceForHandle:{v5, v14}];
          if (v12)
          {
            v6 = v12;
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_13:
  }

  return v6;
}

id __accountForHandle(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 handles];
          v11 = [v10 containsObject:v4];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

__CFString *HMDMatterAccessoryPairingStepAsString(unint64_t a1)
{
  if (a1 >= 0x1C)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Undefined HMDMatterAccessoryPairingStep %tu", a1];
  }

  else
  {
    v2 = off_279725EA8[a1];
  }

  return v2;
}

void sub_25357EBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25357ED20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25357EFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__42241(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2535809A0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253581474(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2535814F8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253581714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__42652(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253588A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__43792(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __createBackboardWatcher(void *a1)
{
  location[3] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!+[HMDDeviceCapabilities supportsBackboard])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@No backboardd support for device, skipping watcher", location, 0xCu);
    }

    goto LABEL_9;
  }

  ServerPort = CARenderServerGetServerPort();
  if ((ServerPort - 1) >= 0xFFFFFFFE)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to find port for default render server", location, 0xCu);
    }

LABEL_9:

    objc_autoreleasePoolPop(v6);
    goto LABEL_10;
  }

  v3 = ServerPort;
  objc_initWeak(location, v1);
  v4 = MEMORY[0x277CF0CB8];
  v5 = [objc_alloc(MEMORY[0x277CF0C60]) initWithPort:v3];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ____createBackboardWatcher_block_invoke;
  v11[3] = &unk_279732FD8;
  objc_copyWeak(&v12, location);
  [v4 monitorSendRight:v5 withHandler:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(location);
LABEL_10:
}

void sub_253588E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____createBackboardWatcher_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _backboardServicesRelaunched];
}

void sub_25358B3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25358C750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v65 + 56));
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose((v66 - 160), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25358F9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__44517(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2535930E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _findConstraintForType(void *a1, uint64_t a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___findConstraintForType_block_invoke;
  v4[3] = &__block_descriptor_40_e38_B16__0__HMAccessorySettingConstraint_8l;
  v4[4] = a2;
  v2 = [a1 na_firstObjectPassingTest:v4];

  return v2;
}

void sub_253595670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535968A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __transactionAccessoryUpdated(void *a1, void *a2, void *a3)
{
  v307[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v262 = a3;
  v7 = [v262 transactionResult];
  [v7 source];
  v8 = MEMORY[0x277CBEB18];
  v9 = +[HMDAccessoryTransaction properties];
  v10 = [v8 arrayWithCapacity:{objc_msgSend(v9, "count")}];

  v11 = [0 configurationTracker];
  v12 = v11;
  if (v11)
  {
    dispatch_group_enter(v11);
  }

  v271 = v10;
  if (([v6 propertyWasSet:@"name"] & 1) != 0 || objc_msgSend(v6, "propertyWasSet:", @"configuredName"))
  {
    v13 = [v6 name];
    v14 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16)
    {
      v17 = [v6 configuredName];

      v13 = v17;
    }

    v18 = [v14 configuredName];
    v19 = [v14 name];
    if ((HMFEqualObjects() & 1) == 0)
    {
      [v14 setConfiguredName:v13];
      [v7 markChanged];
    }

    v20 = [v14 name];
    v21 = HMFEqualObjects();
    if (v20 && (v21 & 1) == 0)
    {
      [v7 markSaveToAssistant];
      v22 = [v14 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ____transactionAccessoryUpdated_block_invoke;
      block[3] = &unk_2797359B0;
      v284 = v14;
      v285 = v20;
      dispatch_async(v22, block);

      v10 = v271;
    }
  }

  if ([v6 propertyWasSet:@"providedName"])
  {
    v23 = [v5 providedName];
    v24 = [v6 providedName];
    v25 = HMFEqualObjects();

    if ((v25 & 1) == 0)
    {
      v26 = [v5 name];
      v27 = [v5 providedName];
      v28 = [v6 providedName];
      [v5 setProvidedName:v28];

      v29 = [v5 name];
      if (v29 && (HMFEqualObjects() & 1) == 0)
      {
        [v7 markSaveToAssistant];
        v30 = [v5 workQueue];
        v280[0] = MEMORY[0x277D85DD0];
        v280[1] = 3221225472;
        v280[2] = ____transactionAccessoryUpdated_block_invoke_2;
        v280[3] = &unk_2797359B0;
        v281 = v5;
        v282 = v29;
        dispatch_async(v30, v280);
      }

      v31 = [v5 providedName];
      v32 = HMFEqualObjects();

      if ((v32 & 1) == 0)
      {
        [v7 markChanged];
      }
    }
  }

  v33 = [v6 setProperties];
  v34 = [v33 containsObject:@"model"];
  v35 = v34;
  if (!v34)
  {
    goto LABEL_28;
  }

  v36 = [v6 model];
  v37 = [v5 model];
  v38 = HMFEqualObjects();

  if ((v38 & 1) == 0)
  {
    v39 = [v6 model];

    if (v39)
    {
      v33 = [v6 model];
      [v5 setModel:v33];
LABEL_28:

      goto LABEL_30;
    }
  }

  v35 = 0;
LABEL_30:
  v40 = [v6 setProperties];
  if (![v40 containsObject:@"manufacturer"])
  {
LABEL_34:

    goto LABEL_35;
  }

  v41 = [v6 manufacturer];
  v42 = [v5 manufacturer];
  v43 = HMFEqualObjects();

  if ((v43 & 1) == 0)
  {
    v44 = [v6 manufacturer];

    if (v44)
    {
      v40 = [v6 manufacturer];
      [v5 setManufacturer:v40];
      v35 = 1;
      goto LABEL_34;
    }
  }

LABEL_35:
  group = v12;
  v45 = [v6 firmwareVersion];
  v267 = v6;
  if (v45)
  {
    v46 = v45;
    v47 = [v6 firmwareVersion];
    v48 = [v5 firmwareVersion];
    v49 = [v48 rawVersionString];
    v50 = HMFEqualObjects();

    if (v50)
    {
      v10 = v271;
    }

    else
    {
      v51 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52 = v51;
      }

      else
      {
        v52 = 0;
      }

      v53 = v52;

      if (v53 && [v53 supportsCHIP])
      {
        v54 = [HMDAccessoryVersion alloc];
        v55 = [v6 firmwareVersion];
        v56 = [(HMDAccessoryVersion *)v54 initWithMatterVersionString:v55];
      }

      else
      {
        v57 = [HMDAccessoryVersion alloc];
        v55 = [v6 firmwareVersion];
        v56 = [(HMDAccessoryVersion *)v57 initWithString:v55];
      }

      v58 = v56;
      v10 = v271;

      if (v58)
      {
        v59 = [v51 firmwareVersion];
        [v51 setFirmwareVersion:v58];
        if (([v58 isEqualToVersion:v59] & 1) == 0)
        {
          if (v59)
          {
            v306 = @"HMDAccessoryPreviousFirmwareVersionKey";
            v307[0] = v59;
            v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v307 forKeys:&v306 count:1];
          }

          else
          {
            v60 = 0;
          }

          logAndPostNotification(@"HMDAccessoryFirmwareVersionUpdatedNotification", v51, v60);
        }

        v35 = 1;
      }
    }
  }

  v61 = [v6 setProperties];
  if (![v61 containsObject:@"displayableFirmwareVersion"])
  {
    goto LABEL_62;
  }

  v62 = [v6 displayableFirmwareVersion];
  v63 = [v5 displayableFirmwareVersion];
  v64 = HMFEqualObjects();

  if ((v64 & 1) == 0)
  {
    v65 = [v6 displayableFirmwareVersion];

    if (v65)
    {
      v61 = [v5 displayableFirmwareVersion];
      v66 = [v6 displayableFirmwareVersion];
      [v5 setDisplayableFirmwareVersion:v66];

      v67 = [v6 displayableFirmwareVersion];
      v68 = [v67 isEqualToString:v61];

      if ((v68 & 1) == 0)
      {
        if (v61)
        {
          v304 = @"HMDAccessoryPreviousDisplayableFirmwareVersionKey";
          v305 = v61;
          v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v305 forKeys:&v304 count:1];
        }

        else
        {
          v69 = 0;
        }

        logAndPostNotification(@"HMDAccessoryFirmwareDisplayableVersionUpdatedNotification", v5, v69);
      }

      v35 = 1;
LABEL_62:
    }
  }

  v70 = [v6 setProperties];
  if ([v70 containsObject:@"serialNumber"])
  {
    v71 = [v6 serialNumber];
    v72 = [v5 serialNumber];
    v73 = HMFEqualObjects();

    if (v73)
    {
      goto LABEL_68;
    }

    v74 = [v6 serialNumber];

    if (!v74)
    {
      goto LABEL_68;
    }

    v70 = [v6 serialNumber];
    [v5 setSerialNumber:v70];
    v35 = 1;
  }

LABEL_68:
  v75 = [v6 hostAccessoryUUID];
  v261 = v75;
  if (v75)
  {
    v266 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v75];
  }

  else
  {
    v266 = 0;
  }

  if ([v6 propertyWasSet:@"hostAccessoryUUID"])
  {
    v76 = [v5 hostAccessory];
    v77 = [v76 uuid];
    v78 = [v77 hmf_isEqualToUUID:v266];

    if ((v78 & 1) == 0)
    {
      [v5 _updateHost:v266];
      [v7 markChanged];
      [v7 markSaveToAssistant];
    }
  }

  v79 = [v5 home];
  v265 = [v79 homeManager];
  v80 = [v5 productData];
  v81 = [v6 productDataV2];
  v269 = [v6 productData];
  v82 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v83 = v82;
  }

  else
  {
    v83 = 0;
  }

  v268 = v83;
  v273 = v82;

  v264 = v80;
  v258 = v81;
  if (v81 && (HMFEqualObjects() & 1) == 0)
  {
    v89 = v82;
    v90 = v81;
LABEL_92:
    [v89 setProductData:{v90, v258}];
    if (v268)
    {
      v96 = [v265 accessoryFirmwareUpdateManager];
      [v96 registerAccessory:v268];
    }

LABEL_94:
    v295 = v273;
    v97 = [MEMORY[0x277CBEA60] arrayWithObjects:&v295 count:{1, v258}];
    [v79 notifyClientsOfAccessoryInfoUpdatedForAccessories:v97];

    [v7 markChanged];
    goto LABEL_95;
  }

  if (v269 && !v80)
  {
    v84 = objc_autoreleasePoolPush();
    v85 = v273;
    v86 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
    {
      v87 = HMFGetLogIdentifier();
      v88 = +[HMDBackingStoreTransactionOptions stringForHMDBackingStoreTransactionSource:](HMDBackingStoreTransactionOptions, "stringForHMDBackingStoreTransactionSource:", [v7 source]);
      *buf = 138543874;
      v297 = v87;
      v298 = 2112;
      v299 = v269;
      v300 = 2112;
      v301 = v88;
      _os_log_impl(&dword_2531F8000, v86, OS_LOG_TYPE_INFO, "%{public}@Applying initial legacy productData %@ (source: %@)", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v84);
    v89 = v85;
    v90 = v269;
    goto LABEL_92;
  }

  if (v269 && (HMFEqualObjects() & 1) == 0)
  {
    v91 = objc_autoreleasePoolPush();
    v92 = v82;
    v93 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
    {
      v94 = HMFGetLogIdentifier();
      v95 = +[HMDBackingStoreTransactionOptions stringForHMDBackingStoreTransactionSource:](HMDBackingStoreTransactionOptions, "stringForHMDBackingStoreTransactionSource:", [v7 source]);
      *buf = 138544130;
      v297 = v94;
      v298 = 2112;
      v299 = v264;
      v300 = 2112;
      v301 = v269;
      v302 = 2112;
      v303 = v95;
      _os_log_impl(&dword_2531F8000, v93, OS_LOG_TYPE_INFO, "%{public}@Ignoring legacy productData change %@ -> %@ (source: %@)", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v91);
  }

  if (v35)
  {
    goto LABEL_94;
  }

LABEL_95:
  v98 = [v6 initialManufacturer];
  if (v98)
  {
    v99 = v98;
    v100 = [v6 initialManufacturer];
    v101 = [v273 initialManufacturer];
    v102 = HMFEqualObjects();

    if ((v102 & 1) == 0)
    {
      v103 = [v6 initialManufacturer];
      [v273 setInitialManufacturer:v103];

      logAndPostNotification(@"HMDAccessoryManufacturerUpdatedNotification", v273, 0);
      [v7 markChanged];
    }
  }

  v104 = [v6 initialModel];
  if (v104)
  {
    v105 = v104;
    v106 = [v6 initialModel];
    v107 = [v273 initialModel];
    v108 = HMFEqualObjects();

    if ((v108 & 1) == 0)
    {
      v109 = [v6 initialModel];
      [v273 setInitialModel:v109];

      [v7 markChanged];
    }
  }

  v110 = [v6 initialCategoryIdentifier];
  if (v110)
  {
    v111 = v110;
    v112 = [v6 initialCategoryIdentifier];
    v113 = [v273 initialCategoryIdentifier];
    v114 = HMFEqualObjects();

    if ((v114 & 1) == 0)
    {
      v115 = [v6 initialCategoryIdentifier];
      [v273 setInitialCategoryIdentifier:v115];

      logAndPostNotification(@"HMDAccessoryCategoryUpdatedNotification", v273, 0);
      [v7 markChanged];
    }
  }

  v116 = [v6 accessoryCategory];

  if (v116)
  {
    v117 = [v6 accessoryCategory];
    v118 = [v273 _updateCategory:v117 notifyClients:1];

    if (v118)
    {
      [v10 addObject:v118];
      [v7 markChanged];
      if (v268)
      {
        [v268 updatePrimaryServiceIfNeeded];
      }
    }
  }

  if ([v6 propertyWasSet:@"networkClientIdentifier"])
  {
    v119 = [v6 networkClientIdentifier];
    v120 = [v273 networkClientIdentifier];
    v121 = HMFEqualObjects();

    if ((v121 & 1) == 0)
    {
      v122 = [v6 networkClientIdentifier];
      [v273 setNetworkClientIdentifier:v122];

      [v7 markChanged];
    }
  }

  if ([v6 propertyWasSet:@"networkRouterUUID"])
  {
    v123 = [v6 networkRouterUUID];
    v124 = [v273 networkRouterUUID];
    v125 = [v124 UUIDString];
    v126 = HMFEqualObjects();

    if ((v126 & 1) == 0)
    {
      v127 = objc_alloc(MEMORY[0x277CCAD78]);
      v128 = [v6 networkRouterUUID];
      v129 = [v127 initWithUUIDString:v128];
      [v273 setNetworkRouterUUID:v129];

      [v7 markChanged];
    }
  }

  v130 = [v6 currentNetworkProtectionMode];
  if (v130)
  {
    v131 = v130;
    v132 = [v6 currentNetworkProtectionMode];
    v133 = [v132 integerValue];
    v134 = [v273 currentNetworkProtectionMode];

    if (v133 != v134)
    {
      v135 = [v6 currentNetworkProtectionMode];
      [v273 setCurrentNetworkProtectionMode:{objc_msgSend(v135, "integerValue")}];

      [v7 markChanged];
    }
  }

  v136 = [v6 wiFiCredentialType];
  if (v136)
  {
    v137 = v136;
    v138 = [v6 wiFiCredentialType];
    v139 = [v138 integerValue];
    v140 = [v273 wiFiCredentialType];

    if (v139 != v140)
    {
      v141 = objc_autoreleasePoolPush();
      v142 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
      {
        v143 = HMFGetLogIdentifier();
        v144 = [v273 wiFiCredentialType];
        v145 = [v6 wiFiCredentialType];
        v146 = [v145 integerValue];
        *buf = 138544130;
        v297 = v143;
        v298 = 2048;
        v299 = v144;
        v300 = 2048;
        v301 = v146;
        v302 = 2112;
        v303 = v273;
        _os_log_impl(&dword_2531F8000, v142, OS_LOG_TYPE_INFO, "%{public}@Updating wiFiCredentialType from [%lu] to [%lu] for accessory: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v141);
      v147 = [v6 wiFiCredentialType];
      [v273 setWiFiCredentialType:{objc_msgSend(v147, "integerValue")}];

      [v7 markChanged];
      v148 = MEMORY[0x277D0F818];
      v149 = *MEMORY[0x277CD0A10];
      v293[0] = *MEMORY[0x277CD0A08];
      v150 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v273, "supportsWiFiReconfiguration")}];
      v294[0] = v150;
      v293[1] = *MEMORY[0x277CD09F8];
      v151 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v273, "wiFiCredentialType")}];
      v294[1] = v151;
      v152 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v294 forKeys:v293 count:2];
      v153 = [v148 entitledMessageWithName:v149 messagePayload:v152];
      [v10 addObject:v153];
    }
  }

  v154 = [v6 networkClientLAN];
  if (v154)
  {
    v155 = v154;
    v156 = [v6 networkClientLAN];
    v157 = [v156 integerValue];
    v158 = [v273 networkClientLAN];

    if (v157 != v158)
    {
      v159 = [v6 networkClientLAN];
      [v273 setNetworkClientLAN:{objc_msgSend(v159, "integerValue")}];

      [v7 markChanged];
    }
  }

  if ([v6 propertyWasSet:@"networkClientProfileFingerprint"])
  {
    v160 = [v6 networkClientProfileFingerprint];
    v161 = [v273 networkClientProfileFingerprint];
    v162 = [v161 UUIDString];
    v163 = HMFEqualObjects();

    if ((v163 & 1) == 0)
    {
      v164 = objc_alloc(MEMORY[0x277CCAD78]);
      v165 = [v6 networkClientProfileFingerprint];
      v166 = [v164 initWithUUIDString:v165];
      [v273 setNetworkClientProfileFingerprint:v166];

      [v7 markChanged];
    }
  }

  if ([v6 propertyWasSet:@"appliedFirewallWANRules"])
  {
    v167 = [v6 appliedFirewallWANRules];
    v168 = [HMDAccessoryAllowedHost allowedHostsFromJSONFirewallWANRules:v167];

    if (v168)
    {
      v169 = [v273 allowedHosts];
      v170 = HMFEqualObjects();

      if ((v170 & 1) == 0)
      {
        [v273 setAllowedHosts:v168];
        [v7 markChanged];
        v171 = MEMORY[0x277D0F818];
        v172 = *MEMORY[0x277CD09E8];
        v291 = *MEMORY[0x277CD09E0];
        v173 = [v273 allowedHosts];
        v174 = encodeRootObjectForSPIClients(v173);
        v292 = v174;
        v175 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v292 forKeys:&v291 count:1];
        v176 = [v171 entitledMessageWithName:v172 messagePayload:v175];

        v10 = v271;
        [v271 addObject:v176];
      }
    }
  }

  if ([v6 propertyWasSet:@"wiFiUniquePreSharedKey"])
  {
    v177 = [v6 wiFiUniquePreSharedKey];
    v178 = [v273 wiFiUniquePreSharedKey];
    v179 = HMFEqualObjects();

    if ((v179 & 1) == 0)
    {
      v180 = [v6 wiFiUniquePreSharedKey];
      [v273 setWiFiUniquePreSharedKey:v180];

      [v7 markChanged];
    }
  }

  if ([v6 propertyWasSet:@"pendingConfigurationIdentifier"])
  {
    v181 = [v6 pendingConfigurationIdentifier];
    v182 = [v273 pendingConfigurationIdentifier];
    v183 = HMFEqualObjects();

    if ((v183 & 1) == 0)
    {
      v184 = [v6 pendingConfigurationIdentifier];
      [v273 setPendingConfigurationIdentifier:v184];

      [v7 markChanged];
    }
  }

  v260 = v79;
  if ([v6 propertyWasSet:@"lastNetworkAccessViolationOccurrenceSince1970"] && objc_msgSend(v6, "propertyWasSet:", @"lastNetworkAccessViolationResetSince1970"))
  {
    v185 = [v273 networkAccessViolation];
    v186 = [HMDAccessoryNetworkAccessViolation alloc];
    v187 = [v6 lastNetworkAccessViolationOccurrenceSince1970];
    v188 = [v6 lastNetworkAccessViolationResetSince1970];
    v189 = [(HMDAccessoryNetworkAccessViolation *)v186 initWithLastViolationTimeInterval:v187 lastViolationResetTimeInterval:v188];

    if ((HMFEqualObjects() & 1) == 0)
    {
      [v273 setNetworkAccessViolation:v189];
      v190 = [(HMDAccessoryNetworkAccessViolation *)v189 hasCurrentViolation];
      v191 = v190 ^ [v185 hasCurrentViolation];
      v192 = [v185 lastViolationDate];
      v193 = [(HMDAccessoryNetworkAccessViolation *)v189 lastViolationDate];
      v194 = v193;
      v195 = 0;
      if (v192 && v189)
      {
        [v193 timeIntervalSinceDate:v192];
        v195 = v196 >= 86400.0;
      }

      v197 = v194;
      if ((v191 | v195))
      {
        [v7 markChanged];
      }

      else
      {
        [v7 markLocalChanged];
      }

      v6 = v267;
      v198 = encodeRootObjectForSPIClients(v189);
      v199 = MEMORY[0x277D0F818];
      v200 = *MEMORY[0x277CD09D8];
      v289 = *MEMORY[0x277CD09D0];
      v290 = v198;
      v201 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v290 forKeys:&v289 count:1];
      v202 = [v199 entitledMessageWithName:v200 messagePayload:v201];

      v10 = v271;
      [v271 addObject:v202];
    }
  }

  if ([v6 propertyWasSet:@"configuredNetworkProtectionGroupUUIDString"])
  {
    v203 = [v6 configuredNetworkProtectionGroupUUIDString];
    v204 = [v273 configuredNetworkProtectionGroupUUID];
    v205 = [v204 UUIDString];
    v206 = HMFEqualObjects();

    if ((v206 & 1) == 0)
    {
      v207 = [v6 configuredNetworkProtectionGroupUUIDString];
      if (v207)
      {
        v208 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v207];
      }

      else
      {
        v208 = 0;
      }

      v209 = [v273 configuredNetworkProtectionGroupUUID];
      [v273 setConfiguredNetworkProtectionGroupUUID:v208];
      if (v209)
      {
        v287 = @"HMDAccessoryPreviousConfiguredNetworkProtectionGroupUUIDKey";
        v288 = v209;
        v210 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v288 forKeys:&v287 count:1];
      }

      else
      {
        v210 = 0;
      }

      logAndPostNotification(@"HMDAccessoryConfiguredNetworkProtectionGroupUpdatedNotification", v273, v210);
      [v7 markChanged];
    }
  }

  v211 = [v6 suspendCapable];
  if (v211)
  {
    v212 = v211;
    v213 = [v273 isSuspendCapable];
    v214 = [v6 suspendCapable];
    v215 = [v214 BOOLValue];

    if (v213 != v215)
    {
      v216 = [v6 suspendCapable];
      [v273 setSuspendCapable:{objc_msgSend(v216, "BOOLValue")}];

      [v7 markChanged];
    }
  }

  v217 = [v6 lastSeenDate];
  if (v217)
  {
    v218 = v217;
    v219 = [v6 lastSeenDate];
    v220 = [v273 lastSeenDate];
    v221 = [v219 isEqualToDate:v220];

    if ((v221 & 1) == 0)
    {
      v222 = [v6 lastSeenDate];
      [v273 setLastSeenDate:v222];

      [v7 markChanged];
    }
  }

  v223 = [v6 lowBattery];
  if (v223)
  {
    v224 = v223;
    v225 = [v273 isLowBattery];
    v226 = [v6 lowBattery];
    v227 = [v226 BOOLValue];

    if (v225 != v227)
    {
      v228 = [v6 lowBattery];
      [v273 setLowBattery:{objc_msgSend(v228, "BOOLValue")}];

      [v7 markChanged];
    }
  }

  v229 = [v6 sharedAdminAddedTimestamp];
  if (v229)
  {
    v230 = v229;
    v231 = [v273 sharedAdminAddedTimestamp];
    v232 = [v6 sharedAdminAddedTimestamp];
    v233 = HMFEqualObjects();

    if ((v233 & 1) == 0)
    {
      v234 = [v6 sharedAdminAddedTimestamp];
      [v273 setSharedAdminAddedTimestamp:v234];

      [v7 markChanged];
    }
  }

  v235 = [v6 pairingsAuditedTimestamp];
  if (v235)
  {
    v236 = v235;
    v237 = [v273 pairingsAuditedTimestamp];
    v238 = [v6 pairingsAuditedTimestamp];
    v239 = HMFEqualObjects();

    if ((v239 & 1) == 0)
    {
      v240 = objc_autoreleasePoolPush();
      v241 = v273;
      v242 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v242, OS_LOG_TYPE_INFO))
      {
        v243 = HMFGetLogIdentifier();
        v244 = [v6 pairingsAuditedTimestamp];
        *buf = 138543618;
        v297 = v243;
        v298 = 2112;
        v299 = v244;
        _os_log_impl(&dword_2531F8000, v242, OS_LOG_TYPE_INFO, "%{public}@Setting pairings audit timestamp to %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v240);
      v245 = [v6 pairingsAuditedTimestamp];
      [v241 setPairingsAuditedTimestamp:v245];

      [v7 markChanged];
    }
  }

  v272 = [v262 transport];
  v246 = dispatch_group_create();
  v276 = 0u;
  v277 = 0u;
  v278 = 0u;
  v279 = 0u;
  obj = v10;
  v247 = [obj countByEnumeratingWithState:&v276 objects:v286 count:16];
  if (v247)
  {
    v248 = v247;
    v249 = *v277;
    do
    {
      for (i = 0; i != v248; ++i)
      {
        if (*v277 != v249)
        {
          objc_enumerationMutation(obj);
        }

        v251 = *(*(&v276 + 1) + 8 * i);
        dispatch_group_enter(v246);
        if (v262)
        {
          v252 = [v251 mutableCopy];
          [v252 setTransport:v272];
          v253 = objc_msgSend_copy(v252);
        }

        else
        {
          v253 = v251;
        }

        v254 = [v273 msgDispatcher];
        v255 = [v273 uuid];
        v274[0] = MEMORY[0x277D85DD0];
        v274[1] = 3221225472;
        v274[2] = ____transactionAccessoryUpdated_block_invoke_1140;
        v274[3] = &unk_279735D00;
        v275 = v246;
        [v254 sendMessage:v253 target:v255 andInvokeCompletionHandler:v274];
      }

      v248 = [obj countByEnumeratingWithState:&v276 objects:v286 count:16];
    }

    while (v248);
  }

  dispatch_group_wait(v246, 0);
  v256 = [v262 responseHandler];

  if (v256)
  {
    v257 = [v262 responseHandler];
    v257[2](v257, 0, 0);
  }

  if (group)
  {
    dispatch_group_leave(group);
  }
}