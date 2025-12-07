void sub_1AE15E4E8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v74 = *(swift_getAssociatedTypeWitness() - 8);
  v75 = *(v74 + 84);
  if (v75)
  {
    v4 = v75 - 1;
  }

  else
  {
    v4 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v72 = *(swift_getAssociatedTypeWitness() - 8);
  v73 = *(v72 + 84);
  v5 = v73 - 1;
  if (!v73)
  {
    v5 = 0;
  }

  v65 = v4;
  v64 = v5;
  if (v5 > v4)
  {
    v4 = v5;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v71 = *(swift_getAssociatedTypeWitness() - 8);
  v70 = *(v71 + 84);
  v6 = v70 - 1;
  if (!v70)
  {
    v6 = 0;
  }

  v63 = v6;
  if (v6 > v4)
  {
    v4 = v6;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v69 = *(swift_getAssociatedTypeWitness() - 8);
  v68 = *(v69 + 84);
  v7 = v68 - 1;
  if (!v68)
  {
    v7 = 0;
  }

  v62 = v7;
  if (v7 <= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v67 = *(swift_getAssociatedTypeWitness() - 8);
  v81 = *(v67 + 84);
  v9 = v81 - 1;
  if (!v81)
  {
    v9 = 0;
  }

  v61 = v9;
  if (v9 > v8)
  {
    v8 = v9;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v66 = *(swift_getAssociatedTypeWitness() - 8);
  v80 = *(v66 + 84);
  v10 = v80 - 1;
  if (!v80)
  {
    v10 = 0;
  }

  v60 = v10;
  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v79 = v12;
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  v59 = v14;
  if (v14 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v14;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v16 = 0;
  v17 = *(swift_getAssociatedTypeWitness() - 8);
  v18 = *(v17 + 84);
  v19 = *(v72 + 64);
  v20 = *(v12 + 64);
  v21 = v18 - 1;
  if (!v18)
  {
    v21 = 0;
  }

  if (v21 <= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = v21;
  }

  if (v75)
  {
    v23 = *(v74 + 64);
  }

  else
  {
    v23 = *(v74 + 64) + 1;
  }

  if (!v73)
  {
    ++v19;
  }

  if (v70)
  {
    v24 = *(v71 + 64);
  }

  else
  {
    v24 = *(v71 + 64) + 1;
  }

  v25 = *(v72 + 80);
  v26 = v23 + v25;
  v27 = *(v71 + 80);
  v28 = *(v69 + 80);
  v29 = v24 + v28 + ((v19 + v27 + ((v23 + v25) & ~v25)) & ~v27);
  v30 = *(v67 + 80);
  v31 = *(v66 + 80);
  v32 = *(v79 + 80);
  v33 = *(v17 + 80);
  v34 = *(v17 + 64);
  if (v68)
  {
    v35 = *(v69 + 64);
  }

  else
  {
    v35 = *(v69 + 64) + 1;
  }

  if (v81)
  {
    v36 = *(v67 + 64);
  }

  else
  {
    v36 = *(v67 + 64) + 1;
  }

  if (v80)
  {
    v37 = *(v66 + 64);
  }

  else
  {
    v37 = *(v66 + 64) + 1;
  }

  if (v13)
  {
    v38 = v20;
  }

  else
  {
    v38 = v20 + 1;
  }

  v39 = v35 + v30;
  v40 = v36 + v31;
  v41 = (v36 + v31 + ((v35 + v30 + (v29 & ~v28)) & ~v30)) & ~v31;
  v42 = v37 + v32;
  v43 = (v37 + v32 + v41) & ~v32;
  v44 = v38 + v33;
  v45 = (v38 + v33 + v43) & ~v33;
  if (!v18)
  {
    ++v34;
  }

  v46 = v45 + v34;
  if (a3 > v22)
  {
    if (v46 <= 3)
    {
      v47 = ((a3 - v22 + ~(-1 << (8 * v46))) >> (8 * v46)) + 1;
      if (HIWORD(v47))
      {
        v16 = 4;
      }

      else
      {
        if (v47 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v47 < 2)
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

  if (v22 < a2)
  {
    v48 = ~v22 + a2;
    if (v46 < 4)
    {
      v49 = (v48 >> (8 * v46)) + 1;
      if (v46)
      {
        v50 = v48 & ~(-1 << (8 * v46));
        bzero(a1, v46);
        if (v46 != 3)
        {
          if (v46 == 2)
          {
            *a1 = v50;
            if (v16 > 1)
            {
LABEL_98:
              if (v16 == 2)
              {
                *&a1[v46] = v49;
              }

              else
              {
                *&a1[v46] = v49;
              }

              return;
            }
          }

          else
          {
            *a1 = v48;
            if (v16 > 1)
            {
              goto LABEL_98;
            }
          }

          goto LABEL_95;
        }

        *a1 = v50;
        a1[2] = BYTE2(v50);
      }

      if (v16 > 1)
      {
        goto LABEL_98;
      }
    }

    else
    {
      bzero(a1, v46);
      *a1 = v48;
      v49 = 1;
      if (v16 > 1)
      {
        goto LABEL_98;
      }
    }

LABEL_95:
    if (v16)
    {
      a1[v46] = v49;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v46] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_85;
    }

    *&a1[v46] = 0;
  }

  else if (v16)
  {
    a1[v46] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_85;
  }

  if (!a2)
  {
    return;
  }

LABEL_85:
  if (v65 == v22)
  {
    v51 = *(v74 + 56);
LABEL_110:

    v51();
    return;
  }

  if (v64 == v22)
  {
    v51 = *(v72 + 56);
    goto LABEL_110;
  }

  if (v63 == v22)
  {
    v51 = *(v71 + 56);
    goto LABEL_110;
  }

  if (v62 == v22)
  {
    v51 = *(v69 + 56);
    goto LABEL_110;
  }

  if (v61 == v22)
  {
    v51 = *(v67 + 56);
    goto LABEL_110;
  }

  if (v60 == v22)
  {
    v51 = *(v66 + 56);
    goto LABEL_110;
  }

  v52 = (v42 + ((v40 + ((v39 + (((((&a1[v26] & ~v25) + v19 + v27) & ~v27) + v24 + v28) & ~v28)) & ~v30)) & ~v31)) & ~v32;
  if (v59 == v22)
  {
    v51 = *(v79 + 56);
    goto LABEL_110;
  }

  v53 = (v44 + v52) & ~v33;
  if (v21 >= a2)
  {
    v57 = *(v17 + 56);
    v58 = (v44 + v52) & ~v33;

    v57(v58, a2 + 1);
  }

  else
  {
    if (v34 <= 3)
    {
      v54 = ~(-1 << (8 * v34));
    }

    else
    {
      v54 = -1;
    }

    if (v34)
    {
      v55 = v54 & (~v21 + a2);
      if (v34 <= 3)
      {
        v56 = v34;
      }

      else
      {
        v56 = 4;
      }

      bzero(((v44 + v52) & ~v33), v34);
      if (v56 > 2)
      {
        if (v56 == 3)
        {
          *v53 = v55;
          *(v53 + 2) = BYTE2(v55);
        }

        else
        {
          *v53 = v55;
        }
      }

      else if (v56 == 1)
      {
        *v53 = v55;
      }

      else
      {
        *v53 = v55;
      }
    }
  }
}

uint64_t sub_1AE15EF90(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = sub_1AE23D7CC();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    result = sub_1AE23D7CC();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      result = sub_1AE23D7CC();
      if (v4 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        result = sub_1AE23D7CC();
        if (v5 <= 0x3F)
        {
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          swift_getAssociatedTypeWitness();
          result = sub_1AE23D7CC();
          if (v6 <= 0x3F)
          {
            swift_getAssociatedTypeWitness();
            swift_getAssociatedConformanceWitness();
            swift_getAssociatedTypeWitness();
            result = sub_1AE23D7CC();
            if (v7 <= 0x3F)
            {
              swift_getAssociatedTypeWitness();
              swift_getAssociatedConformanceWitness();
              swift_getAssociatedTypeWitness();
              result = sub_1AE23D7CC();
              if (v8 <= 0x3F)
              {
                swift_getAssociatedTypeWitness();
                swift_getAssociatedConformanceWitness();
                swift_getAssociatedTypeWitness();
                result = sub_1AE23D7CC();
                if (v9 <= 0x3F)
                {
                  swift_getAssociatedTypeWitness();
                  swift_getAssociatedConformanceWitness();
                  swift_getAssociatedTypeWitness();
                  result = sub_1AE23D7CC();
                  if (v10 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AE15F43C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  v75 = v87;
  v86 = *(v87 + 84);
  if (v86)
  {
    v3 = v86 - 1;
  }

  else
  {
    v3 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v73 = swift_getAssociatedTypeWitness();
  v85 = *(v73 - 8);
  v95 = *(v85 + 84);
  v4 = v95 - 1;
  if (!v95)
  {
    v4 = 0;
  }

  v77 = v3;
  v74 = v4;
  if (v4 > v3)
  {
    v3 = v4;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v71 = swift_getAssociatedTypeWitness();
  v84 = *(v71 - 8);
  v94 = *(v84 + 84);
  v5 = v94 - 1;
  if (!v94)
  {
    v5 = 0;
  }

  v72 = v5;
  if (v5 > v3)
  {
    v3 = v5;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v69 = swift_getAssociatedTypeWitness();
  v83 = *(v69 - 8);
  v93 = *(v83 + 84);
  v6 = v93 - 1;
  if (!v93)
  {
    v6 = 0;
  }

  v70 = v6;
  if (v6 > v3)
  {
    v3 = v6;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v67 = swift_getAssociatedTypeWitness();
  v82 = *(v67 - 8);
  v92 = *(v82 + 84);
  v7 = v92 - 1;
  if (!v92)
  {
    v7 = 0;
  }

  v68 = v7;
  if (v7 > v3)
  {
    v3 = v7;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v65 = swift_getAssociatedTypeWitness();
  v81 = *(v65 - 8);
  v91 = *(v81 + 84);
  v8 = v91 - 1;
  if (!v91)
  {
    v8 = 0;
  }

  v66 = v8;
  if (v8 <= v3)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v63 = swift_getAssociatedTypeWitness();
  v80 = *(v63 - 8);
  v10 = *(v80 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v64 = v11;
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v61 = swift_getAssociatedTypeWitness();
  v79 = *(v61 - 8);
  v13 = *(v79 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  v62 = v14;
  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedTypeWitness();
  result = a2;
  v18 = *(v16 - 8);
  v19 = v18;
  v20 = *(v18 + 84);
  v21 = v20 - 1;
  if (!v20)
  {
    v21 = 0;
  }

  if (v21 <= v15)
  {
    v21 = v15;
  }

  if (v86)
  {
    v22 = *(v87 + 64);
  }

  else
  {
    v22 = *(v87 + 64) + 1;
  }

  if (v95)
  {
    v23 = *(v85 + 64);
  }

  else
  {
    v23 = *(v85 + 64) + 1;
  }

  v24 = *(v84 + 64);
  if (!v94)
  {
    ++v24;
  }

  v89 = v24;
  if (v93)
  {
    v25 = *(v83 + 64);
  }

  else
  {
    v25 = *(v83 + 64) + 1;
  }

  if (v92)
  {
    v26 = *(v82 + 64);
  }

  else
  {
    v26 = *(v82 + 64) + 1;
  }

  if (v91)
  {
    v27 = *(v81 + 64);
  }

  else
  {
    v27 = *(v81 + 64) + 1;
  }

  v88 = v10;
  if (v10)
  {
    v28 = *(v80 + 64);
  }

  else
  {
    v28 = *(v80 + 64) + 1;
  }

  if (v13)
  {
    v29 = *(v79 + 64);
  }

  else
  {
    v29 = *(v79 + 64) + 1;
  }

  v30 = *(v85 + 80);
  v31 = *(v84 + 80);
  v32 = *(v83 + 80);
  v33 = *(v82 + 80);
  v34 = *(v81 + 80);
  v35 = *(v80 + 80);
  v36 = *(v79 + 80);
  v37 = *(v18 + 80);
  v38 = *(v18 + 64);
  if (v20)
  {
    v39 = v38;
  }

  else
  {
    v39 = v38 + 1;
  }

  if (a2)
  {
    v40 = v22 + v30;
    v41 = v25 + v33;
    v42 = v26 + v34;
    v43 = v27 + v35;
    v44 = v28 + v36;
    v45 = v29 + v37;
    if (a2 <= v21)
    {
LABEL_89:
      if (v77 == v21)
      {
        v53 = (*(v75 + 48))(a1, v86, AssociatedTypeWitness);
      }

      else
      {
        v54 = (a1 + v40) & ~v30;
        if (v74 == v21)
        {
          v53 = (*(v85 + 48))(v54, v95, v73);
        }

        else
        {
          v55 = (v54 + v23 + v31) & ~v31;
          if (v72 == v21)
          {
            v53 = (*(v84 + 48))(v55, v94, v71);
          }

          else
          {
            v56 = (v55 + v89 + v32) & ~v32;
            if (v70 == v21)
            {
              v53 = (*(v83 + 48))(v56, v93, v69);
            }

            else
            {
              v57 = (v41 + v56) & ~v33;
              if (v68 == v21)
              {
                v53 = (*(v82 + 48))(v57, v92, v67);
              }

              else
              {
                v58 = (v42 + v57) & ~v34;
                if (v66 == v21)
                {
                  v53 = (*(v81 + 48))(v58, v91, v65);
                }

                else
                {
                  v59 = (v43 + v58) & ~v35;
                  if (v64 == v21)
                  {
                    v53 = (*(v80 + 48))(v59, v88, v63);
                  }

                  else
                  {
                    v60 = (v44 + v59) & ~v36;
                    if (v62 == v21)
                    {
                      v53 = (*(v79 + 48))(v60, v13, v61);
                    }

                    else
                    {
                      v53 = (*(v19 + 48))((v45 + v60) & ~v37);
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (v53 >= 2)
      {
        return v53 - 1;
      }

      else
      {
        return 0;
      }
    }

    v46 = v39 + ((v45 + ((v44 + ((v43 + ((v42 + ((v41 + ((v89 + v32 + ((v23 + v31 + (v40 & ~v30)) & ~v31)) & ~v32)) & ~v33)) & ~v34)) & ~v35)) & ~v36)) & ~v37);
    v47 = 8 * v46;
    if (v46 > 3)
    {
LABEL_68:
      v48 = *(a1 + v46);
      if (!*(a1 + v46))
      {
        goto LABEL_88;
      }

      goto LABEL_75;
    }

    v49 = ((a2 - v21 + ~(-1 << v47)) >> v47) + 1;
    if (HIWORD(v49))
    {
      v48 = *(a1 + v46);
      if (!v48)
      {
        goto LABEL_88;
      }
    }

    else
    {
      if (v49 <= 0xFF)
      {
        if (v49 < 2)
        {
LABEL_88:
          if (!v21)
          {
            return 0;
          }

          goto LABEL_89;
        }

        goto LABEL_68;
      }

      v48 = *(a1 + v46);
      if (!*(a1 + v46))
      {
        goto LABEL_88;
      }
    }

LABEL_75:
    v50 = (v48 - 1) << v47;
    if (v46 > 3)
    {
      v50 = 0;
    }

    if (v46)
    {
      if (v46 <= 3)
      {
        v51 = v46;
      }

      else
      {
        v51 = 4;
      }

      if (v51 > 2)
      {
        if (v51 == 3)
        {
          v52 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v52 = *a1;
        }
      }

      else if (v51 == 1)
      {
        v52 = *a1;
      }

      else
      {
        v52 = *a1;
      }
    }

    else
    {
      v52 = 0;
    }

    return v21 + (v52 | v50) + 1;
  }

  return result;
}

void sub_1AE15FEE4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v81 = *(swift_getAssociatedTypeWitness() - 8);
  v80 = *(v81 + 84);
  if (v80)
  {
    v4 = v80 - 1;
  }

  else
  {
    v4 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v79 = *(swift_getAssociatedTypeWitness() - 8);
  v78 = *(v79 + 84);
  v5 = v78 - 1;
  if (!v78)
  {
    v5 = 0;
  }

  v72 = v4;
  v71 = v5;
  if (v5 > v4)
  {
    v4 = v5;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v77 = *(swift_getAssociatedTypeWitness() - 8);
  v91 = *(v77 + 84);
  v6 = v91 - 1;
  if (!v91)
  {
    v6 = 0;
  }

  v70 = v6;
  if (v6 > v4)
  {
    v4 = v6;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v76 = *(swift_getAssociatedTypeWitness() - 8);
  v90 = *(v76 + 84);
  v7 = v90 - 1;
  if (!v90)
  {
    v7 = 0;
  }

  v69 = v7;
  if (v7 <= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v75 = *(swift_getAssociatedTypeWitness() - 8);
  v89 = *(v75 + 84);
  v9 = v89 - 1;
  if (!v89)
  {
    v9 = 0;
  }

  v68 = v9;
  if (v9 > v8)
  {
    v8 = v9;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v74 = *(swift_getAssociatedTypeWitness() - 8);
  v88 = *(v74 + 84);
  v10 = v88 - 1;
  if (!v88)
  {
    v10 = 0;
  }

  v67 = v10;
  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v73 = *(swift_getAssociatedTypeWitness() - 8);
  v87 = *(v73 + 84);
  v12 = v87 - 1;
  if (!v87)
  {
    v12 = 0;
  }

  v66 = v12;
  if (v12 > v11)
  {
    v11 = v12;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v86 = v13;
  v85 = *(v13 + 84);
  v14 = v85 - 1;
  if (!v85)
  {
    v14 = 0;
  }

  v65 = v14;
  if (v14 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v14;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v16 = 0;
  v17 = *(swift_getAssociatedTypeWitness() - 8);
  v18 = v17;
  v19 = *(v17 + 84);
  v20 = *(v79 + 64);
  v21 = *(v13 + 64);
  v22 = v19 - 1;
  if (!v19)
  {
    v22 = 0;
  }

  if (v22 <= v15)
  {
    v23 = v15;
  }

  else
  {
    v23 = v22;
  }

  if (v80)
  {
    v24 = *(v81 + 64);
  }

  else
  {
    v24 = *(v81 + 64) + 1;
  }

  if (!v78)
  {
    ++v20;
  }

  if (v91)
  {
    v25 = *(v77 + 64);
  }

  else
  {
    v25 = *(v77 + 64) + 1;
  }

  v26 = *(v79 + 80);
  v27 = v24 + v26;
  v28 = *(v77 + 80);
  v29 = *(v76 + 80);
  v30 = v25 + v29 + ((v20 + v28 + ((v24 + v26) & ~v26)) & ~v28);
  v31 = *(v75 + 80);
  v32 = *(v74 + 80);
  v33 = *(v73 + 80);
  v34 = *(v86 + 80);
  v35 = *(v17 + 80);
  v36 = *(v17 + 64);
  if (v90)
  {
    v37 = *(v76 + 64);
  }

  else
  {
    v37 = *(v76 + 64) + 1;
  }

  if (v89)
  {
    v38 = *(v75 + 64);
  }

  else
  {
    v38 = *(v75 + 64) + 1;
  }

  if (v88)
  {
    v39 = *(v74 + 64);
  }

  else
  {
    v39 = *(v74 + 64) + 1;
  }

  if (v87)
  {
    v40 = *(v73 + 64);
  }

  else
  {
    v40 = *(v73 + 64) + 1;
  }

  if (v85)
  {
    v41 = v21;
  }

  else
  {
    v41 = v21 + 1;
  }

  v42 = v37 + v31;
  v43 = (v37 + v31 + (v30 & ~v29)) & ~v31;
  v44 = v38 + v32;
  v45 = v39 + v33;
  v46 = (v39 + v33 + ((v38 + v32 + v43) & ~v32)) & ~v33;
  v47 = v40 + v34;
  v48 = (v40 + v34 + v46) & ~v34;
  v49 = v41 + v35;
  v50 = (v41 + v35 + v48) & ~v35;
  if (!v19)
  {
    ++v36;
  }

  v51 = v50 + v36;
  if (a3 > v23)
  {
    if (v51 <= 3)
    {
      v52 = ((a3 - v23 + ~(-1 << (8 * v51))) >> (8 * v51)) + 1;
      if (HIWORD(v52))
      {
        v16 = 4;
      }

      else
      {
        if (v52 < 0x100)
        {
          v53 = 1;
        }

        else
        {
          v53 = 2;
        }

        if (v52 >= 2)
        {
          v16 = v53;
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

  if (v23 < a2)
  {
    v54 = ~v23 + a2;
    if (v51 < 4)
    {
      v55 = (v54 >> (8 * v51)) + 1;
      if (v51)
      {
        v56 = v54 & ~(-1 << (8 * v51));
        bzero(a1, v51);
        if (v51 != 3)
        {
          if (v51 == 2)
          {
            *a1 = v56;
            if (v16 > 1)
            {
LABEL_105:
              if (v16 == 2)
              {
                *&a1[v51] = v55;
              }

              else
              {
                *&a1[v51] = v55;
              }

              return;
            }
          }

          else
          {
            *a1 = v54;
            if (v16 > 1)
            {
              goto LABEL_105;
            }
          }

          goto LABEL_102;
        }

        *a1 = v56;
        a1[2] = BYTE2(v56);
      }

      if (v16 > 1)
      {
        goto LABEL_105;
      }
    }

    else
    {
      bzero(a1, v51);
      *a1 = v54;
      v55 = 1;
      if (v16 > 1)
      {
        goto LABEL_105;
      }
    }

LABEL_102:
    if (v16)
    {
      a1[v51] = v55;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v51] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_92;
    }

    *&a1[v51] = 0;
  }

  else if (v16)
  {
    a1[v51] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_92;
  }

  if (!a2)
  {
    return;
  }

LABEL_92:
  if (v72 == v23)
  {
    v57 = *(v81 + 56);
LABEL_119:

    v57();
    return;
  }

  if (v71 == v23)
  {
    v57 = *(v79 + 56);
    goto LABEL_119;
  }

  if (v70 == v23)
  {
    v57 = *(v77 + 56);
    goto LABEL_119;
  }

  if (v69 == v23)
  {
    v57 = *(v76 + 56);
    goto LABEL_119;
  }

  if (v68 == v23)
  {
    v57 = *(v75 + 56);
    goto LABEL_119;
  }

  if (v67 == v23)
  {
    v57 = *(v74 + 56);
    goto LABEL_119;
  }

  if (v66 == v23)
  {
    v57 = *(v73 + 56);
    goto LABEL_119;
  }

  v58 = (v47 + ((v45 + ((v44 + ((v42 + (((((&a1[v27] & ~v26) + v20 + v28) & ~v28) + v25 + v29) & ~v29)) & ~v31)) & ~v32)) & ~v33)) & ~v34;
  if (v65 == v23)
  {
    v57 = *(v86 + 56);
    goto LABEL_119;
  }

  v59 = (v49 + v58) & ~v35;
  if (v22 >= a2)
  {
    v63 = *(v18 + 56);
    v64 = (v49 + v58) & ~v35;

    v63(v64, a2 + 1);
  }

  else
  {
    if (v36 <= 3)
    {
      v60 = ~(-1 << (8 * v36));
    }

    else
    {
      v60 = -1;
    }

    if (v36)
    {
      v61 = v60 & (~v22 + a2);
      if (v36 <= 3)
      {
        v62 = v36;
      }

      else
      {
        v62 = 4;
      }

      bzero(((v49 + v58) & ~v35), v36);
      if (v62 > 2)
      {
        if (v62 == 3)
        {
          *v59 = v61;
          *(v59 + 2) = BYTE2(v61);
        }

        else
        {
          *v59 = v61;
        }
      }

      else if (v62 == 1)
      {
        *v59 = v61;
      }

      else
      {
        *v59 = v61;
      }
    }
  }
}

uint64_t sub_1AE160A9C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = sub_1AE23D7CC();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    result = sub_1AE23D7CC();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      result = sub_1AE23D7CC();
      if (v4 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        result = sub_1AE23D7CC();
        if (v5 <= 0x3F)
        {
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          swift_getAssociatedTypeWitness();
          result = sub_1AE23D7CC();
          if (v6 <= 0x3F)
          {
            swift_getAssociatedTypeWitness();
            swift_getAssociatedConformanceWitness();
            swift_getAssociatedTypeWitness();
            result = sub_1AE23D7CC();
            if (v7 <= 0x3F)
            {
              swift_getAssociatedTypeWitness();
              swift_getAssociatedConformanceWitness();
              swift_getAssociatedTypeWitness();
              result = sub_1AE23D7CC();
              if (v8 <= 0x3F)
              {
                swift_getAssociatedTypeWitness();
                swift_getAssociatedConformanceWitness();
                swift_getAssociatedTypeWitness();
                result = sub_1AE23D7CC();
                if (v9 <= 0x3F)
                {
                  swift_getAssociatedTypeWitness();
                  swift_getAssociatedConformanceWitness();
                  swift_getAssociatedTypeWitness();
                  result = sub_1AE23D7CC();
                  if (v10 <= 0x3F)
                  {
                    swift_getAssociatedTypeWitness();
                    swift_getAssociatedConformanceWitness();
                    swift_getAssociatedTypeWitness();
                    result = sub_1AE23D7CC();
                    if (v11 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
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

  return result;
}

uint64_t sub_1AE160FC0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v93 = *(AssociatedTypeWitness - 8);
  v80 = v93;
  v103 = *(v93 + 84);
  if (v103)
  {
    v3 = v103 - 1;
  }

  else
  {
    v3 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v78 = swift_getAssociatedTypeWitness();
  v91 = *(v78 - 8);
  v102 = *(v91 + 84);
  v4 = v102 - 1;
  if (!v102)
  {
    v4 = 0;
  }

  v82 = v3;
  v79 = v4;
  if (v4 > v3)
  {
    v3 = v4;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v76 = swift_getAssociatedTypeWitness();
  v90 = *(v76 - 8);
  v101 = *(v90 + 84);
  v5 = v101 - 1;
  if (!v101)
  {
    v5 = 0;
  }

  v77 = v5;
  if (v5 > v3)
  {
    v3 = v5;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v74 = swift_getAssociatedTypeWitness();
  v89 = *(v74 - 8);
  v100 = *(v89 + 84);
  v6 = v100 - 1;
  if (!v100)
  {
    v6 = 0;
  }

  v75 = v6;
  if (v6 > v3)
  {
    v3 = v6;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v72 = swift_getAssociatedTypeWitness();
  v88 = *(v72 - 8);
  v99 = *(v88 + 84);
  v7 = v99 - 1;
  if (!v99)
  {
    v7 = 0;
  }

  v73 = v7;
  if (v7 > v3)
  {
    v3 = v7;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v70 = swift_getAssociatedTypeWitness();
  v87 = *(v70 - 8);
  v98 = *(v87 + 84);
  v8 = v98 - 1;
  if (!v98)
  {
    v8 = 0;
  }

  v71 = v8;
  if (v8 > v3)
  {
    v3 = v8;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v68 = swift_getAssociatedTypeWitness();
  v86 = *(v68 - 8);
  v97 = *(v86 + 84);
  v9 = v97 - 1;
  if (!v97)
  {
    v9 = 0;
  }

  v69 = v9;
  if (v9 > v3)
  {
    v3 = v9;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v66 = swift_getAssociatedTypeWitness();
  v85 = *(v66 - 8);
  v10 = *(v85 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v67 = v11;
  if (v11 <= v3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v11;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v64 = swift_getAssociatedTypeWitness();
  v13 = *(v64 - 8);
  v84 = v13;
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  v65 = v15;
  if (v15 <= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedTypeWitness();
  result = a2;
  v19 = *(v17 - 8);
  v20 = *(v19 + 84);
  v21 = v20 - 1;
  if (!v20)
  {
    v21 = 0;
  }

  if (v21 <= v16)
  {
    v21 = v16;
  }

  if (v103)
  {
    v22 = *(v93 + 64);
  }

  else
  {
    v22 = *(v93 + 64) + 1;
  }

  if (v102)
  {
    v23 = *(v91 + 64);
  }

  else
  {
    v23 = *(v91 + 64) + 1;
  }

  v24 = *(v90 + 64);
  if (!v101)
  {
    ++v24;
  }

  v95 = v24;
  if (v100)
  {
    v25 = *(v89 + 64);
  }

  else
  {
    v25 = *(v89 + 64) + 1;
  }

  if (v99)
  {
    v26 = *(v88 + 64);
  }

  else
  {
    v26 = *(v88 + 64) + 1;
  }

  if (v98)
  {
    v27 = *(v87 + 64);
  }

  else
  {
    v27 = *(v87 + 64) + 1;
  }

  if (v97)
  {
    v28 = *(v86 + 64);
  }

  else
  {
    v28 = *(v86 + 64) + 1;
  }

  v94 = v10;
  if (v10)
  {
    v29 = *(v85 + 64);
  }

  else
  {
    v29 = *(v85 + 64) + 1;
  }

  v92 = v14;
  if (v14)
  {
    v30 = *(v13 + 64);
  }

  else
  {
    v30 = *(v13 + 64) + 1;
  }

  v31 = *(v91 + 80);
  v32 = *(v90 + 80);
  v33 = *(v89 + 80);
  v34 = *(v88 + 80);
  v35 = *(v87 + 80);
  v36 = *(v86 + 80);
  v37 = *(v85 + 80);
  v38 = *(v84 + 80);
  v39 = *(v19 + 80);
  if (v20)
  {
    v40 = *(*(v17 - 8) + 64);
  }

  else
  {
    v40 = *(*(v17 - 8) + 64) + 1;
  }

  if (a2)
  {
    v41 = v22 + v31;
    v42 = v25 + v34;
    v43 = v26 + v35;
    v44 = v27 + v36;
    v45 = v28 + v37;
    v46 = v29 + v38;
    v47 = v30 + v39;
    if (a2 <= v21)
    {
LABEL_95:
      if (v82 == v21)
      {
        v55 = (*(v80 + 48))(a1, v103, AssociatedTypeWitness);
      }

      else
      {
        v56 = (a1 + v41) & ~v31;
        if (v79 == v21)
        {
          v55 = (*(v91 + 48))(v56, v102, v78);
        }

        else
        {
          v57 = (v56 + v23 + v32) & ~v32;
          if (v77 == v21)
          {
            v55 = (*(v90 + 48))(v57, v101, v76);
          }

          else
          {
            v58 = (v57 + v95 + v33) & ~v33;
            if (v75 == v21)
            {
              v55 = (*(v89 + 48))(v58, v100, v74);
            }

            else
            {
              v59 = (v42 + v58) & ~v34;
              if (v73 == v21)
              {
                v55 = (*(v88 + 48))(v59, v99, v72);
              }

              else
              {
                v60 = (v43 + v59) & ~v35;
                if (v71 == v21)
                {
                  v55 = (*(v87 + 48))(v60, v98, v70);
                }

                else
                {
                  v61 = (v44 + v60) & ~v36;
                  if (v69 == v21)
                  {
                    v55 = (*(v86 + 48))(v61, v97, v68);
                  }

                  else
                  {
                    v62 = (v45 + v61) & ~v37;
                    if (v67 == v21)
                    {
                      v55 = (*(v85 + 48))(v62, v94, v66);
                    }

                    else
                    {
                      v63 = (v46 + v62) & ~v38;
                      if (v65 == v21)
                      {
                        v55 = (*(v84 + 48))(v63, v92, v64);
                      }

                      else
                      {
                        v55 = (*(v19 + 48))((v47 + v63) & ~v39);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (v55 >= 2)
      {
        return v55 - 1;
      }

      else
      {
        return 0;
      }
    }

    v48 = v40 + ((v47 + ((v46 + ((v45 + ((v44 + ((v43 + ((v42 + ((v95 + v33 + ((v23 + v32 + (v41 & ~v31)) & ~v32)) & ~v33)) & ~v34)) & ~v35)) & ~v36)) & ~v37)) & ~v38)) & ~v39);
    v49 = 8 * v48;
    if (v48 > 3)
    {
LABEL_74:
      v50 = *(a1 + v48);
      if (!*(a1 + v48))
      {
        goto LABEL_94;
      }

      goto LABEL_81;
    }

    v51 = ((a2 - v21 + ~(-1 << v49)) >> v49) + 1;
    if (HIWORD(v51))
    {
      v50 = *(a1 + v48);
      if (!v50)
      {
        goto LABEL_94;
      }
    }

    else
    {
      if (v51 <= 0xFF)
      {
        if (v51 < 2)
        {
LABEL_94:
          if (!v21)
          {
            return 0;
          }

          goto LABEL_95;
        }

        goto LABEL_74;
      }

      v50 = *(a1 + v48);
      if (!*(a1 + v48))
      {
        goto LABEL_94;
      }
    }

LABEL_81:
    v52 = (v50 - 1) << v49;
    if (v48 > 3)
    {
      v52 = 0;
    }

    if (v48)
    {
      if (v48 <= 3)
      {
        v53 = v48;
      }

      else
      {
        v53 = 4;
      }

      if (v53 > 2)
      {
        if (v53 == 3)
        {
          v54 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v54 = *a1;
        }
      }

      else if (v53 == 1)
      {
        v54 = *a1;
      }

      else
      {
        v54 = *a1;
      }
    }

    else
    {
      v54 = 0;
    }

    return v21 + (v54 | v52) + 1;
  }

  return result;
}

void sub_1AE161B8C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v76 = *(swift_getAssociatedTypeWitness() - 8);
  v89 = *(v76 + 84);
  if (v89)
  {
    v4 = v89 - 1;
  }

  else
  {
    v4 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v75 = *(swift_getAssociatedTypeWitness() - 8);
  v88 = *(v75 + 84);
  v5 = v88 - 1;
  if (!v88)
  {
    v5 = 0;
  }

  v68 = v4;
  v67 = v5;
  if (v5 > v4)
  {
    v4 = v5;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v74 = *(swift_getAssociatedTypeWitness() - 8);
  v87 = *(v74 + 84);
  v6 = v87 - 1;
  if (!v87)
  {
    v6 = 0;
  }

  v66 = v6;
  if (v6 > v4)
  {
    v4 = v6;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v73 = *(swift_getAssociatedTypeWitness() - 8);
  v86 = *(v73 + 84);
  v7 = v86 - 1;
  if (!v86)
  {
    v7 = 0;
  }

  v65 = v7;
  if (v7 > v4)
  {
    v4 = v7;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v72 = *(swift_getAssociatedTypeWitness() - 8);
  v85 = *(v72 + 84);
  v8 = v85 - 1;
  if (!v85)
  {
    v8 = 0;
  }

  v64 = v8;
  if (v8 <= v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = v8;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v71 = *(swift_getAssociatedTypeWitness() - 8);
  v84 = *(v71 + 84);
  v10 = v84 - 1;
  if (!v84)
  {
    v10 = 0;
  }

  v63 = v10;
  if (v10 > v9)
  {
    v9 = v10;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v70 = *(swift_getAssociatedTypeWitness() - 8);
  v83 = *(v70 + 84);
  v11 = v83 - 1;
  if (!v83)
  {
    v11 = 0;
  }

  v62 = v11;
  if (v11 > v9)
  {
    v9 = v11;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v69 = *(swift_getAssociatedTypeWitness() - 8);
  v82 = *(v69 + 84);
  v12 = v82 - 1;
  if (!v82)
  {
    v12 = 0;
  }

  v61 = v12;
  if (v12 > v9)
  {
    v9 = v12;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v81 = v13;
  v80 = *(v13 + 84);
  v14 = v80 - 1;
  if (!v80)
  {
    v14 = 0;
  }

  v60 = v14;
  if (v14 > v9)
  {
    v9 = v14;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15 = 0;
  v16 = *(swift_getAssociatedTypeWitness() - 8);
  v17 = *(v16 + 84);
  v18 = *(v75 + 64);
  v19 = *(v69 + 64);
  v20 = *(v13 + 64);
  v21 = v17 - 1;
  if (!v17)
  {
    v21 = 0;
  }

  if (v21 <= v9)
  {
    v22 = v9;
  }

  else
  {
    v22 = v21;
  }

  if (v89)
  {
    v23 = *(v76 + 64);
  }

  else
  {
    v23 = *(v76 + 64) + 1;
  }

  if (!v88)
  {
    ++v18;
  }

  if (v87)
  {
    v24 = *(v74 + 64);
  }

  else
  {
    v24 = *(v74 + 64) + 1;
  }

  v25 = *(v75 + 80);
  v26 = v23 + v25;
  v27 = *(v74 + 80);
  v28 = *(v73 + 80);
  v29 = v24 + v28 + ((v18 + v27 + ((v23 + v25) & ~v25)) & ~v27);
  v30 = *(v72 + 80);
  v31 = *(v71 + 80);
  v32 = *(v70 + 80);
  v33 = *(v69 + 80);
  v34 = *(v81 + 80);
  v35 = *(v16 + 80);
  v36 = *(v16 + 64);
  if (v86)
  {
    v37 = *(v73 + 64);
  }

  else
  {
    v37 = *(v73 + 64) + 1;
  }

  if (v85)
  {
    v38 = *(v72 + 64);
  }

  else
  {
    v38 = *(v72 + 64) + 1;
  }

  if (v84)
  {
    v39 = *(v71 + 64);
  }

  else
  {
    v39 = *(v71 + 64) + 1;
  }

  if (v83)
  {
    v40 = *(v70 + 64);
  }

  else
  {
    v40 = *(v70 + 64) + 1;
  }

  if (!v82)
  {
    ++v19;
  }

  if (!v80)
  {
    ++v20;
  }

  v41 = v37 + v30;
  v42 = v39 + v32;
  v43 = v40 + v33;
  v44 = (v19 + v34 + ((v43 + ((v39 + v32 + ((v38 + v31 + ((v37 + v30 + (v29 & ~v28)) & ~v30)) & ~v31)) & ~v32)) & ~v33)) & ~v34;
  v45 = v20 + v35;
  v46 = (v20 + v35 + v44) & ~v35;
  if (!v17)
  {
    ++v36;
  }

  v47 = v46 + v36;
  if (a3 > v22)
  {
    if (v47 <= 3)
    {
      v48 = ((a3 - v22 + ~(-1 << (8 * v47))) >> (8 * v47)) + 1;
      if (HIWORD(v48))
      {
        v15 = 4;
      }

      else
      {
        if (v48 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v48 < 2)
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  if (v22 < a2)
  {
    v49 = ~v22 + a2;
    if (v47 < 4)
    {
      v50 = (v49 >> (8 * v47)) + 1;
      if (v47)
      {
        v51 = v49 & ~(-1 << (8 * v47));
        bzero(a1, v47);
        if (v47 != 3)
        {
          if (v47 == 2)
          {
            *a1 = v51;
            if (v15 > 1)
            {
LABEL_108:
              if (v15 == 2)
              {
                *&a1[v47] = v50;
              }

              else
              {
                *&a1[v47] = v50;
              }

              return;
            }
          }

          else
          {
            *a1 = v49;
            if (v15 > 1)
            {
              goto LABEL_108;
            }
          }

          goto LABEL_105;
        }

        *a1 = v51;
        a1[2] = BYTE2(v51);
      }

      if (v15 > 1)
      {
        goto LABEL_108;
      }
    }

    else
    {
      bzero(a1, v47);
      *a1 = v49;
      v50 = 1;
      if (v15 > 1)
      {
        goto LABEL_108;
      }
    }

LABEL_105:
    if (v15)
    {
      a1[v47] = v50;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v47] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_95;
    }

    *&a1[v47] = 0;
  }

  else if (v15)
  {
    a1[v47] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_95;
  }

  if (!a2)
  {
    return;
  }

LABEL_95:
  if (v68 == v22)
  {
    v52 = *(v76 + 56);
LABEL_124:

    v52();
    return;
  }

  if (v67 == v22)
  {
    v52 = *(v75 + 56);
    goto LABEL_124;
  }

  if (v66 == v22)
  {
    v52 = *(v74 + 56);
    goto LABEL_124;
  }

  if (v65 == v22)
  {
    v52 = *(v73 + 56);
    goto LABEL_124;
  }

  if (v64 == v22)
  {
    v52 = *(v72 + 56);
    goto LABEL_124;
  }

  if (v63 == v22)
  {
    v52 = *(v71 + 56);
    goto LABEL_124;
  }

  if (v62 == v22)
  {
    v52 = *(v70 + 56);
    goto LABEL_124;
  }

  if (v61 == v22)
  {
    v52 = *(v69 + 56);
    goto LABEL_124;
  }

  v53 = (v19 + v34 + ((v43 + ((v42 + ((v38 + v31 + ((v41 + (((((&a1[v26] & ~v25) + v18 + v27) & ~v27) + v24 + v28) & ~v28)) & ~v30)) & ~v31)) & ~v32)) & ~v33)) & ~v34;
  if (v60 == v22)
  {
    v52 = *(v81 + 56);
    goto LABEL_124;
  }

  v54 = (v45 + v53) & ~v35;
  if (v21 >= a2)
  {
    v58 = *(v16 + 56);
    v59 = (v45 + v53) & ~v35;

    v58(v59, a2 + 1);
  }

  else
  {
    if (v36 <= 3)
    {
      v55 = ~(-1 << (8 * v36));
    }

    else
    {
      v55 = -1;
    }

    if (v36)
    {
      v56 = v55 & (~v21 + a2);
      if (v36 <= 3)
      {
        v57 = v36;
      }

      else
      {
        v57 = 4;
      }

      bzero(((v45 + v53) & ~v35), v36);
      if (v57 > 2)
      {
        if (v57 == 3)
        {
          *v54 = v56;
          *(v54 + 2) = BYTE2(v56);
        }

        else
        {
          *v54 = v56;
        }
      }

      else if (v57 == 1)
      {
        *v54 = v56;
      }

      else
      {
        *v54 = v56;
      }
    }
  }
}

unint64_t sub_1AE16287C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE1628A4(a1, a2, a3);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1AE1628A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BD478;
  if (!qword_1EB5BD478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BD478);
  }

  return result;
}

unint64_t sub_1AE1628F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE162920(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AE162920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BD480;
  if (!qword_1EB5BD480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BD480);
  }

  return result;
}

unint64_t sub_1AE162974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1629A4(a1, a2, a3);
  *(a1 + 8) = v4;
  result = sub_1AE1629F8(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AE1629A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BD488;
  if (!qword_1EB5BD488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BD488);
  }

  return result;
}

unint64_t sub_1AE1629F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BD490;
  if (!qword_1EB5BD490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BD490);
  }

  return result;
}

unint64_t sub_1AE162A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BD498;
  if (!qword_1EB5BD498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BD498);
  }

  return result;
}

unint64_t sub_1AE162AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BD4A0;
  if (!qword_1EB5BD4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BD4A0);
  }

  return result;
}

uint64_t sub_1AE162BBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1AE23BFEC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AE23BDDC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_1AE23BD1C();
  v21[0] = 0;
  v13 = [v11 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:v21];

  if (v13)
  {
    if (v19)
    {
      v14 = v21[0];
      sub_1AE23BFDC();
      sub_1AE23BF6C();
      (*(v4 + 8))(v6, v3);
      sub_1AE23BD3C();

      sub_1AE23BD4C();
      return (*(v8 + 8))(v10, v7);
    }

    else
    {
      v16 = v21[0];
      sub_1AE23BFDC();
      sub_1AE23BF6C();
      (*(v4 + 8))(v6, v3);
      sub_1AE23BD3C();
    }
  }

  else
  {
    v17 = v21[0];
    sub_1AE23BC9C();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void sub_1AE162EAC(uint64_t a1, uint64_t a2, void **a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_1AE23BD1C();
  v6 = sub_1AE23BD1C();
  v13[0] = 0;
  v7 = [v4 copyItemAtURL:v5 toURL:v6 error:v13];

  v8 = v13[0];
  if (v7)
  {

    v9 = v8;
  }

  else
  {
    v10 = v13[0];
    v11 = sub_1AE23BC9C();

    swift_willThrow();
    v12 = *a3;
    *a3 = v11;
  }
}

uint64_t sub_1AE162FF8()
{
  v1 = v0;
  v2 = sub_1AE23BDDC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  v7 = OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url;
  (*(v3 + 16))(v5, v0 + OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url, v2);
  v8 = sub_1AE23BD1C();
  v9 = *(v3 + 8);
  v9(v5, v2);
  aBlock[4] = sub_1AE018648;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADE8AB00;
  aBlock[3] = &block_descriptor_9;
  v10 = _Block_copy(aBlock);

  [v6 coordinateWritingItemAtURL:v8 options:1 error:0 byAccessor:v10];

  _Block_release(v10);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v9((v1 + v7), v2);
    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t CRStableAsset.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url;
  v5 = sub_1AE23BDDC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t CRStableAsset.init(url:extension:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18[-v9];
  v11 = sub_1AE23BDDC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v12 + 16))(v15, a1, v11, v13);
  (*(v12 + 56))(v10, 1, 1, v11);
  v16 = sub_1AE163454(v15, 0, a2, a3, v10);
  result = (*(v12 + 8))(a1, v11);
  *a4 = v16;
  return result;
}

uint64_t sub_1AE163454(uint64_t a1, int a2, void (*a3)(uint64_t, char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v61 = a4;
  v62 = a3;
  LODWORD(v63) = a2;
  v65[1] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v56 - v8;
  v10 = sub_1AE23BDDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v57 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v56 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v56 - v17;
  v58 = a5;
  sub_1AE163C90(a5, v9);
  v19 = (*(v11 + 48))(v9, 1, v10);
  v59 = a1;
  v60 = v15;
  if (v19 == 1)
  {
    sub_1AE163D00(v9);
    v20 = objc_opt_self();
    v21 = [v20 defaultManager];
    v22 = sub_1AE23BD1C();
    aBlock[0] = 0;
    v23 = [v21 URLForDirectory:99 inDomain:1 appropriateForURL:v22 create:1 error:aBlock];

    v24 = aBlock[0];
    if (v23)
    {
      sub_1AE23BD8C();
      v25 = v24;
    }

    else
    {
      v26 = aBlock[0];
      v27 = sub_1AE23BC9C();

      swift_willThrow();
      v28 = [v20 &selRef_coalesce + 3];
      v29 = [v28 temporaryDirectory];

      sub_1AE23BD8C();
      v56[2] = 0;
    }

    a1 = v59;
    v15 = v60;
  }

  else
  {
    (*(v11 + 32))(v18, v9, v10);
  }

  v56[1] = type metadata accessor for CRFileSnapshot(0);
  sub_1AE162BBC(v62, v61, v15);

  if ((v63 & 1) == 0)
  {
    v43 = [objc_opt_self() defaultManager];
    v44 = sub_1AE23BD1C();
    v45 = sub_1AE23BD1C();
    aBlock[0] = 0;
    v46 = [v43 copyItemAtURL:v44 toURL:v45 error:aBlock];

    if (!v46)
    {
      v51 = aBlock[0];
      sub_1AE23BC9C();

      swift_willThrow();
      sub_1AE163D00(v58);
      v52 = *(v11 + 8);
      v41 = v11 + 8;
      v52(a1, v10);
      v52(v15, v10);
      v52(v18, v10);
      return v41;
    }

    v47 = aBlock[0];
    sub_1AE163D00(v58);
    v48 = *(v11 + 8);
    v48(a1, v10);
    v48(v18, v10);
    v49 = 0;
    v34 = 0;
    v50 = *(v11 + 32);
LABEL_15:
    v54 = v57;
    v50(v57, v15, v10);
    v41 = swift_allocObject();
    v50(v41 + OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url, v54, v10);
    sub_1ADDDCE7C(v49, v34);
    return v41;
  }

  v63 = v18;
  v30 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  v65[0] = 0;
  v31 = sub_1AE23BD1C();
  v32 = v57;
  (*(v11 + 16))(v57, v15, v10);
  v33 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v34 = swift_allocObject();
  v35 = v32;
  v36 = v30;
  v62 = *(v11 + 32);
  v62(v34 + v33, v35, v10);
  *(v34 + ((v12 + v33 + 7) & 0xFFFFFFFFFFFFFFF8)) = v65;
  v37 = swift_allocObject();
  v37[2] = sub_1AE163D68;
  v37[3] = v34;
  aBlock[4] = sub_1AE02ACF8;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADE8AB00;
  aBlock[3] = &block_descriptor_9_0;
  v38 = _Block_copy(aBlock);

  [v30 coordinateReadingItemAtURL:v31 options:0 error:0 byAccessor:v38];

  _Block_release(v38);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if (v30)
  {
    __break(1u);
  }

  v39 = v65[0];
  if (!v65[0])
  {

    sub_1AE163D00(v58);
    v53 = *(v11 + 8);
    v53(v59, v10);
    v53(v63, v10);

    v49 = sub_1AE163D68;
    v15 = v60;
    v50 = v62;
    goto LABEL_15;
  }

  swift_willThrow();
  v40 = v39;

  sub_1AE163D00(v58);
  v42 = *(v11 + 8);
  v41 = v11 + 8;
  v42(v59, v10);
  v42(v60, v10);
  v42(v63, v10);

  return v41;
}

uint64_t type metadata accessor for CRFileSnapshot(uint64_t a1)
{
  result = qword_1ED966868;
  if (!qword_1ED966868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AE163BF0(uint64_t a1)
{
  result = sub_1AE23BDDC();
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

uint64_t sub_1AE163C90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AE163D00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AE163D68(uint64_t a1)
{
  v3 = *(sub_1AE23BDDC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1AE162EAC(a1, v1 + v4, v5);
}

void sub_1AE163E0C(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_1ADE0CA18(a1, a2, 0, a3, a4);
  sub_1AE030800(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
  type metadata accessor for CRSequenceStorage(0, a3, a4, v11);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = v10;
  v14 = objc_allocWithZone(ObjCClassFromMetadata);
  v15 = sub_1ADE0A808(v13);
  if (v5)
  {
  }

  else
  {
    v16 = v15;

    type metadata accessor for CRSequenceRef(0, a3, a4, v17);
    v18 = swift_allocObject();
    sub_1AE166990(v16);

    *a5 = v18;
  }
}

void sub_1AE163F34(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  v7 = sub_1AE16A270(a1, *(a2 + 16), *(a2 + 24));
  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = [*(v6 + qword_1ED96F258) fullyRenamed_];
  *&v22 = 0;
  v9 = [v8 saveToEncoder:v7 error:&v22];

  if (v9)
  {
    v10 = v22;
LABEL_4:
    v11 = &v7[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence];
    swift_beginAccess();
    v12 = *v11;
    v13 = *(v11 + 2);
    v23 = *(v11 + 1);
    v24 = v13;
    v22 = v12;
    v14 = *(v11 + 3);
    v15 = *(v11 + 4);
    v16 = *(v11 + 5);
    v28 = *(v11 + 12);
    v26 = v15;
    v27 = v16;
    v25 = v14;
    sub_1ADE51B64(&v22, &v21);

    v17 = v27;
    *(a3 + 64) = v26;
    *(a3 + 80) = v17;
    *(a3 + 96) = v28;
    v18 = v23;
    *a3 = v22;
    *(a3 + 16) = v18;
    v19 = v25;
    *(a3 + 32) = v24;
    *(a3 + 48) = v19;
    return;
  }

  v20 = v22;
  sub_1AE23BC9C();

  swift_willThrow();
}

void CRSequence.merge(_:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_1AE1687B8(&v5, 0, a2);
  if (qword_1EB5B9528 != -1)
  {
    swift_once();
  }

  v4 = byte_1EB5D74C2;
  *a3 = word_1EB5D74C0;
  *(a3 + 2) = v4;
}

Swift::Void __swiftcall CRSequence.remove(at:)(Swift::Int at)
{
  sub_1ADE108AC(v1, v1, v2, v3);
  if (*v4)
  {
    v6 = *(*v4 + qword_1ED96F258);

    [v6 removeObjectsInRange_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t CRSequence.newRefs(from:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *v2;
  v6 = (*(*(*(a2 + 24) + 8) + 80))();
  v7 = MEMORY[0x1E69E7CD0];
  if ((v6 & 1) != 0 && v5)
  {
    if (v4)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      v9 = *(v4 + qword_1ED96F258);
      v10 = *(v5 + qword_1ED96F258);
      objc_opt_self();
      v11 = swift_dynamicCastObjCClassUnconditional();
      v12 = swift_allocObject();
      *(v12 + 16) = v5;
      *(v12 + 24) = v8;
      v18[4] = sub_1AE16A950;
      v18[5] = v12;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 1107296256;
      v18[2] = sub_1AE168B70;
      v18[3] = &block_descriptor_10;
      v13 = _Block_copy(v18);
      swift_retain_n();

      v14 = v9;
      v15 = v10;

      [v14 addedRefsInRangesTo:v11 newRange:v13];

      _Block_release(v13);

      swift_beginAccess();
      v7 = *(v8 + 16);
    }

    else
    {
      v18[0] = v5;
      WitnessTable = swift_getWitnessTable();
      return sub_1ADECE30C(a2, WitnessTable);
    }
  }

  return v7;
}

void CRSequence.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;

  if (v6)
  {
    v7 = sub_1AE167078();

    if (v7)
    {
      sub_1ADE108AC(a2, v8, v9, v10);
      if (*v3)
      {
        sub_1AE1671C8(a1);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
  }
}

void CRSequence.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ADE108AC(a2, a2, a3, a4);
  if (*v4)
  {
    sub_1AE166AE4(a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AE1644B0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v30 = a2;
  v5 = *(*(a3 + 16) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = sub_1AE23D7CC();
  v9 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v37 = *v3;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B26FB780](&v38, a3, WitnessTable);
  v37 = v38;
  sub_1AE23DC9C();
  sub_1AE23DC6C();
  v15 = sub_1AE23DC8C();
  v32 = (v9 + 32);
  v33 = v15;
  v31 = TupleTypeMetadata2 - 8;
  v26 = (v5 + 32);
  while (1)
  {
    v16 = v34;
    sub_1AE23DC7C();
    (*v32)(v13, v16, v35);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v13, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v17 = *v13;
    v18 = TupleTypeMetadata2;
    v19 = *(TupleTypeMetadata2 + 48);
    v20 = v27;
    v21 = v28;
    (*v26)(v27, &v13[v19], v28);
    v22 = v36;
    v23 = v29(v20);
    (*(v5 + 8))(v20, v21);
    v36 = v22;
    if (!v22)
    {
      TupleTypeMetadata2 = v18;
      if ((v23 & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_7;
  }

  v17 = 0;
LABEL_7:

  return v17;
}

void CRSequence.insert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ADE108AC(a3, a2, a3, a4);
  if (*v4)
  {
    sub_1AE167954(a1, a2);
  }

  else
  {
    __break(1u);
  }
}

void CRSequence.subscript.getter(uint64_t a1)
{
  if (*v1)
  {

    sub_1AE167854(a1);
  }

  else
  {
    sub_1AE23DC5C();
    __break(1u);
  }
}

void CRSequence.removeSubrange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ADE108AC(a3, a2, a3, a4);
  if (!*v4)
  {
    goto LABEL_7;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v7 = *(*v4 + qword_1ED96F258);

  [v7 removeObjectsInRange_];
}

void CRSequence.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1ADE108AC(a4, a2, a3, a4);
  if (*v6)
  {
    sub_1AE167E20(a1, a2, a3, a5, a6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t CRSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ADDEF6DC(a1);
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t CRSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  v6 = sub_1AE23D0AC();
  v7 = v2[1];
  if (v7 != v6)
  {
    v10 = sub_1AE23D08C();
    sub_1AE23D00C();
    if (v10)
    {
      v11 = *(v5 - 8);
      result = (*(v11 + 16))(a2, v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v7, v5);
      v12 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
LABEL_7:
        v2[1] = v12;
        return (*(v11 + 56))(a2, 0, 1, v5);
      }
    }

    else
    {
      result = sub_1AE23DAAC();
      v11 = *(v5 - 8);
      if (*(v11 + 64) != 8)
      {
LABEL_12:
        __break(1u);
        return result;
      }

      v13 = result;
      (*(v11 + 16))(a2, &v13, v5);
      result = swift_unknownObjectRelease();
      v12 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  v8 = *(*(v5 - 8) + 56);

  return v8(a2, 1, 1, v5);
}

void CRSequence.observableDifference(from:with:)(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *v3;
  if (!*v3)
  {

    if (!v6)
    {

      goto LABEL_23;
    }

    goto LABEL_8;
  }

  if (!v6)
  {
    swift_retain_n();
LABEL_8:

    goto LABEL_9;
  }

  if (v7 == v6)
  {
    goto LABEL_21;
  }

LABEL_9:
  if (CRSequence.isEmpty.getter(a2) & 1) != 0 && (CRSequence.isEmpty.getter(a2))
  {
    goto LABEL_21;
  }

  if (!v6)
  {

    if ((CRSequence.isEmpty.getter(a2) & 1) == 0)
    {
      type metadata accessor for _NSRange(255);
      type metadata accessor for CRSequenceStorage(255, *(a2 + 16), *(a2 + 24), v10);
      sub_1AE23D7CC();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      sub_1AE23DDAC();
      swift_allocObject();
      v12 = sub_1AE23CFFC();
      v14 = v13;
      *v13 = 0;
      v13[1] = 0;
      if (v7)
      {
        v15 = v12;
        v13[2] = sub_1ADE0A96C();
        v16 = sub_1ADDEFD10();
        v12 = v15;
      }

      else
      {
        v16 = 0;
        v13[2] = 0;
      }

      v14[3] = v16;
      sub_1ADE0FCBC(v12, TupleTypeMetadata3);
      v9 = v17;
      goto LABEL_24;
    }

LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  if (!v7)
  {
    goto LABEL_22;
  }

  sub_1AE167490(v7);
  type metadata accessor for _NSRange(255);
  type metadata accessor for CRSequenceStorage(255, *(a2 + 16), *(a2 + 24), v8);
  sub_1AE23D7CC();
  swift_getTupleTypeMetadata3();
  if (sub_1AE23D0AC() < 1)
  {

LABEL_21:

LABEL_22:

    goto LABEL_23;
  }

  swift_getTupleTypeMetadata3();
  v9 = sub_1AE23DB9C();

LABEL_24:
  *a3 = v9;
}

unint64_t CRSequence.hasDelta(from:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  if (v3)
  {
    if (v2)
    {
      if (v3 == v2)
      {
        return 0;
      }
    }

    else
    {
    }

    v5 = [*(v3 + qword_1ED96F258) isEmptyCRDT];
    v4 = v5;
    if (!v2)
    {
      return v5 ^ 1;
    }
  }

  else
  {

    if (!v2)
    {

      return 0;
    }

    v4 = 1;
  }

  v6 = [*(v2 + qword_1ED96F258) isEmptyCRDT];
  result = v4 ^ 1u;
  if ((v4 & 1) == 0 && (v6 & 1) == 0)
  {
    if (v3)
    {
      return sub_1AE1677EC(v2) & 1;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void CRSequence.actionUndoingDifference(from:)(void *a1@<X0>, void *a2@<X8>)
{
  if (*v2)
  {
    v4 = *(*v2 + qword_1ED96F258);
    if (*a1)
    {
      v5 = *(*a1 + qword_1ED96F258);
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v5;
      }
    }

    else
    {
      v6 = 0;
    }

    v9 = v4;
    v8 = [v9 undoCommandToChangeFrom:v6 unedited:0];
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
}

uint64_t sub_1AE16501C(id *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 1;
  }

  v4 = *a1;
  sub_1ADE108AC(a2, v5, v6, v7);
  objc_opt_self();
  result = swift_dynamicCastObjCClassUnconditional();
  if (*v2)
  {
    v9 = result;
    objc_opt_self();
    v10 = [v9 applyToString_];

    return v10;
  }

  __break(1u);
  return result;
}

void sub_1AE1650E8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = *v2;
  v6 = sub_1AE16A448(a1);
  if (!v5)
  {
    goto LABEL_4;
  }

  v7 = [*(v5 + qword_1ED96F258) fullyRenamed_];
  *&v21 = 0;
  v8 = [v7 saveToEncoder:v6 error:&v21];

  if (v8)
  {
    v9 = v21;
LABEL_4:
    v10 = &v6[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence];
    swift_beginAccess();
    v11 = *v10;
    v12 = *(v10 + 2);
    v22 = *(v10 + 1);
    v23 = v12;
    v21 = v11;
    v13 = *(v10 + 3);
    v14 = *(v10 + 4);
    v15 = *(v10 + 5);
    v27 = *(v10 + 12);
    v25 = v14;
    v26 = v15;
    v24 = v13;
    sub_1ADE51B64(&v21, &v20);

    v16 = v26;
    *(a2 + 64) = v25;
    *(a2 + 80) = v16;
    *(a2 + 96) = v27;
    v17 = v22;
    *a2 = v21;
    *(a2 + 16) = v17;
    v18 = v24;
    *(a2 + 32) = v23;
    *(a2 + 48) = v18;
    return;
  }

  v19 = v21;
  sub_1AE23BC9C();

  swift_willThrow();
}

uint64_t sub_1AE165268(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v26 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  if (!*v4)
  {
    return sub_1AE23D05C();
  }

  v22[0] = v11;

  v29 = sub_1AE23C9DC();
  sub_1ADE0A96C();
  v24 = sub_1AE23D11C();
  sub_1AE23D02C();
  v22[1] = v13;
  v14 = sub_1ADDEFD10();
  v15 = qword_1EB5BD4A8;
  swift_beginAccess();
  v16 = *&v14[v15];

  if (!sub_1AE23D0AC())
  {
LABEL_13:

    return v29;
  }

  v17 = 0;
  v22[2] = v7;
  v23 = (v27 + 16);
  v18 = (v27 + 8);
  while (1)
  {
    v19 = sub_1AE23D08C();
    sub_1AE23D00C();
    if (v19)
    {
      (*(v27 + 16))(v12, v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v17, v9);
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_12;
      }

      goto LABEL_6;
    }

    result = sub_1AE23DAAC();
    if (v22[0] != 8)
    {
      break;
    }

    v28 = result;
    (*v23)(v12, &v28, v9);
    swift_unknownObjectRelease();
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

LABEL_6:
    v25(v12);
    (*v18)(v12, v9);
    if (v5)
    {
    }

    sub_1AE23D0CC();
    ++v17;
    if (v20 == sub_1AE23D0AC())
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE165584(uint64_t a1)
{
  v3 = qword_1EB5BD4A8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1AE165610()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v3 = *((v2 & v1) + 0x50);

  MEMORY[0x1B26FB890](v4, v3);

  v5 = sub_1AE23CCDC();

  return v5;
}

id sub_1AE1656BC(void *a1)
{
  v1 = a1;
  v2 = sub_1AE165610();

  return v2;
}

uint64_t sub_1AE165700(uint64_t result, uint64_t a2)
{
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else if (result + a2 >= result)
  {
    swift_beginAccess();
    sub_1AE23D11C();
    swift_getWitnessTable();
    sub_1AE23D54C();
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

void sub_1AE1657E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  sub_1AE165700(a3, a4);
}

uint64_t sub_1AE165840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CRSequenceStorage(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  result = swift_dynamicCastClassUnconditional();
  v8 = __OFADD__(a2, a3);
  v9 = a2 + a3;
  if (v8)
  {
    __break(1u);
  }

  else if (v9 >= a2)
  {
    swift_beginAccess();

    sub_1AE23D14C();

    swift_beginAccess();
    sub_1AE23D11C();
    sub_1AE23D87C();
    swift_getWitnessTable();
    sub_1AE23D0BC();
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

void sub_1AE1659D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1AE165840(a3, a4, a5, v9);
  swift_unknownObjectRelease();
}

uint64_t sub_1AE165A50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (__OFADD__(result, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result + a2 < result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  type metadata accessor for CRSequenceStorage(0, *((*MEMORY[0x1E69E7D40] & *v5) + 0x50), *((*MEMORY[0x1E69E7D40] & *v5) + 0x58), a4);
  result = swift_dynamicCastClassUnconditional();
  v8 = __OFADD__(a4, a5);
  v9 = a4 + a5;
  if (v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 >= a4)
  {
    swift_beginAccess();

    sub_1AE23D14C();

    swift_beginAccess();
    sub_1AE23D11C();
    sub_1AE23D87C();
    swift_getWitnessTable();
    sub_1AE23D01C();
    return swift_endAccess();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1AE165C0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_unknownObjectRetain();
  v13 = a1;
  sub_1AE165A50(a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();
}

char *sub_1AE165CA4@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else if (&result[a2] >= result)
  {
    v6 = type metadata accessor for CRSequenceStorage(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a3);
    swift_beginAccess();

    sub_1AE23D14C();

    sub_1AE23D87C();
    swift_getWitnessTable();
    v7 = sub_1AE23D13C();
    v8 = objc_allocWithZone(v6);
    result = sub_1ADE0CD68(v7, v8, v9, v10);
    a4[3] = v6;
    *a4 = result;
    return result;
  }

  __break(1u);
  return result;
}

id sub_1AE165E08(void *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = a1;
  sub_1AE165CA4(a3, a4, v7, v10);

  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v8 = sub_1AE23DFFC();
  __swift_destroy_boxed_opaque_existential_1(v10);

  return v8;
}

void sub_1AE165E98(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CRSequenceStorage(0, *((*MEMORY[0x1E69E7D40] & *v2) + 0x50), *((*MEMORY[0x1E69E7D40] & *v2) + 0x58), a1);
  v5 = v2;
  v9 = sub_1AE16AD78(v5, v6, v7, v8);

  a2[3] = v4;
  *a2 = v9;
}

uint64_t sub_1AE165F24(void *a1)
{
  v1 = a1;
  sub_1AE165E98(v2, v5);

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = sub_1AE23DFFC();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

id sub_1AE165F84@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  v4 = type metadata accessor for CRSequenceStorage(0, *((*MEMORY[0x1E69E7D40] & *v2) + 0x50), *((*MEMORY[0x1E69E7D40] & *v2) + 0x58), a1);
  result = [objc_allocWithZone(v4) init];
  a2[3] = v4;
  *a2 = result;
  return result;
}

id sub_1AE166000(void *a1)
{
  v1 = a1;
  sub_1AE165F84(v2, v5);

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = sub_1AE23DFFC();
  __swift_destroy_boxed_opaque_existential_1(v5);

  return v3;
}

id sub_1AE166070(void *a1)
{
  v1 = a1;
  sub_1AE1660D8();

  v2 = sub_1AE23CCDC();

  return v2;
}

uint64_t sub_1AE1660D8()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = qword_1EB5BD4A8;
  swift_beginAccess();
  v12 = *(v0 + v2);
  v11[1] = *(v1 + 80);
  v3 = sub_1AE23D11C();

  WitnessTable = swift_getWitnessTable();
  v6 = sub_1ADE08EB0(sub_1AE16AF10, v11, v3, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v5);

  v12 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
  sub_1ADDCC7D4(&qword_1EB5B8C10, &qword_1EB5BA250, &unk_1AE251E30, MEMORY[0x1E69E6310]);
  v7 = sub_1AE23CBFC();
  v9 = v8;

  v12 = 91;
  v13 = 0xE100000000000000;
  MEMORY[0x1B26FB670](v7, v9);

  MEMORY[0x1B26FB670](93, 0xE100000000000000);

  return v12;
}

uint64_t sub_1AE1662B0@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB390, &unk_1AE24FCE0);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    v7 = sub_1AE23DD9C();
    v9 = v8;
    result = __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    result = sub_1ADDCEDE0(&v11, &unk_1EB5BEB20, &qword_1AE24C510);
    v9 = 0xE100000000000000;
    v7 = 63;
  }

  *a3 = v7;
  a3[1] = v9;
  return result;
}

id sub_1AE166410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CRSequenceStorage(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1AE166480(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *a1;
  type metadata accessor for CRDecoder();
  swift_allocObject();

  v11 = sub_1ADE0262C(v10, a2);

  result = (*(*(*(a4 + 8) + 8) + 8))(v11, a3);
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

void *sub_1AE166550(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = qword_1EB5BD4A8;
  swift_beginAccess();
  v12[5] = *(v1 + v4);
  v10[1] = *(v3 + 80);
  v11 = a1;
  v5 = sub_1AE23D11C();

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1ADE08EB0(sub_1ADF863D4, v10, v5, &type metadata for Proto_Value, v6, WitnessTable, MEMORY[0x1E69E7288], v12);

  return v8;
}

uint64_t sub_1AE1666A4()
{
  v0 = swift_allocObject();
  sub_1AE1666DC();
  return v0;
}

uint64_t *sub_1AE1666DC()
{
  v1 = *v0;
  v2 = sub_1AE23BFEC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
  v6 = type metadata accessor for CRSequenceStorage(0, *(v1 + 80), *(v1 + 88), v5);
  v7 = [objc_allocWithZone(v6) init];
  v10[3] = v6;
  v10[0] = v7;
  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  *(v0 + qword_1ED96F258) = sub_1ADE16668(v10, v4);
  return v0;
}

uint64_t sub_1AE166940(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t sub_1AE166990(uint64_t a1)
{
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  *(v1 + qword_1ED96F258) = a1;
  return v1;
}

uint64_t sub_1AE166A7C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1ADDF4E90(a1, a2, a3);
  return v6;
}

void sub_1AE166AE4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = aBlock - v6;
  v8 = *(v1 + qword_1ED96F258);
  v9 = [v8 length];
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = *(v3 + 88);
  (*(v5 + 32))(v11 + v10, v7, v4);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1AE16B0B8;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1AE16B1E4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADE0EEE0;
  aBlock[3] = &block_descriptor_85;
  v13 = _Block_copy(aBlock);

  [v8 insertAtIndex:v9 length:1 getStorage:v13];

  _Block_release(v13);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }
}

uint64_t sub_1AE166D58(void *a1)
{
  v23 = *v1;
  v3 = *(v23 + 80);
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = sub_1ADDEFD10();
  v10 = qword_1EB5BD4A8;
  swift_beginAccess();
  v11 = *&v9[v10];

  if (!sub_1AE23D0AC())
  {
  }

  v12 = 0;
  v21 = (v24 + 32);
  v22 = (v24 + 16);
  v20 = (v24 + 8);
  while (1)
  {
    v13 = sub_1AE23D08C();
    sub_1AE23D00C();
    if (v13)
    {
      (*(v24 + 16))(v8, v11 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v12, v3);
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }

    result = sub_1AE23DAAC();
    if (v19 != 8)
    {
      break;
    }

    v25 = result;
    (*v22)(v8, &v25, v3);
    swift_unknownObjectRelease();
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
LABEL_11:
      __break(1u);
LABEL_12:
      (*v20)(v5, v3);
    }

LABEL_5:
    v15 = v8;
    (*v21)(v5, v8, v3);
    v17 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v17);
    if ((*(v16 + 8))(v17, v16))
    {
      goto LABEL_12;
    }

    (*(*(*(v23 + 88) + 8) + 48))(a1, v3);
    (*v20)(v5, v3);
    ++v12;
    v8 = v15;
    if (v14 == sub_1AE23D0AC())
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE167078()
{
  if ([*(v0 + qword_1ED96F258) needToFinalizeTimestamps])
  {
    v1 = 1;
  }

  else
  {
    v2 = sub_1ADDEFD10();
    swift_beginAccess();

    MEMORY[0x1EEE9AC00](v3);
    sub_1AE23D11C();
    swift_getWitnessTable();
    v1 = sub_1AE23CF4C();
  }

  return v1 & 1;
}

uint64_t sub_1AE1671C8(uint64_t a1)
{
  v3 = *v1;
  v4 = qword_1ED96F258;
  [*(v1 + qword_1ED96F258) finalizeTimestamps_];
  v5 = [*(v1 + v4) attributedString];
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  type metadata accessor for CRSequenceStorage(0, v6, v7, v8);
  v9 = swift_dynamicCastClassUnconditional();
  v10 = qword_1EB5BD4A8;
  swift_beginAccess();
  v17[9] = *(v9 + v10);
  v17[2] = v6;
  v17[3] = v7;
  v17[4] = a1;
  v11 = sub_1AE23D11C();

  WitnessTable = swift_getWitnessTable();
  v14 = sub_1ADE08EB0(sub_1AE16B138, v17, v11, v6, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);

  v15 = qword_1EB5BD4A8;
  swift_beginAccess();
  *(v9 + v15) = v14;
  swift_unknownObjectRelease();
}

id sub_1AE167374(uint64_t a1, char a2)
{
  v4 = *(a1 + qword_1ED96F258);
  v5 = qword_1EB5B96D8;
  v6 = *(v2 + qword_1ED96F258);
  v7 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB5D7500);
  v8 = byte_1EB5D7504;
  os_unfair_lock_unlock(&dword_1EB5D7500);
  if (v8 == 1)
  {
    if (qword_1EB5B9940 != -1)
    {
      swift_once();
    }

    v9 = qword_1EB5B9948;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v6 mergeWithString:v7 optimized:a2 & 1 suggestedContext:v9];

  return v10;
}

uint64_t sub_1AE167490(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  type metadata accessor for _NSRange(255);
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  type metadata accessor for CRSequenceStorage(255, v5, v6, v7);
  sub_1AE23D7CC();
  swift_getTupleTypeMetadata3();
  *(v4 + 16) = sub_1AE23C9DC();
  v8 = *(v1 + qword_1ED96F258);
  v9 = *(a1 + qword_1ED96F258);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = v6;
  v11[4] = v4;
  aBlock[4] = sub_1AE16B02C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADE4EFB0;
  aBlock[3] = &block_descriptor_65_0;
  v12 = _Block_copy(aBlock);
  v13 = v8;
  v14 = v9;

  [v13 deltaTo:v10 edited:v12 unedited:0];
  _Block_release(v12);

  swift_beginAccess();

  swift_getTupleTypeMetadata3();
  v15 = sub_1AE23DB9C();

  return v15;
}

uint64_t sub_1AE1676F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for CRSequenceStorage(0, a6, a7, a4);
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
  }

  swift_beginAccess();
  type metadata accessor for _NSRange(255);
  sub_1AE23D7CC();
  swift_getTupleTypeMetadata3();
  sub_1AE23D11C();
  sub_1AE23D0CC();
  return swift_endAccess();
}

id sub_1AE1677EC(uint64_t a1)
{
  v1 = *(a1 + qword_1ED96F258);
  objc_opt_self();
  return [v1 hasDeltaTo:swift_dynamicCastObjCClassUnconditional() compareElements:0];
}

uint64_t sub_1AE167854(uint64_t a1)
{
  v2 = *v1;
  v3 = [*(v1 + qword_1ED96F258) attributedString];
  type metadata accessor for CRSequenceStorage(0, *(v2 + 80), *(v2 + 88), v4);
  swift_dynamicCastClassUnconditional();
  swift_beginAccess();

  swift_unknownObjectRelease();
  sub_1AE23D15C();
}

void sub_1AE167954(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = aBlock - v8;
  v10 = *(v2 + qword_1ED96F258);
  (*(v6 + 16))(aBlock - v8, v7);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = *(v4 + 88);
  (*(v6 + 32))(v12 + v11, v9, v5);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1AE16B1EC;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1AE16B1E4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADE0EEE0;
  aBlock[3] = &block_descriptor_75;
  v14 = _Block_copy(aBlock);
  v15 = v10;

  [v15 insertAtIndex:a2 length:1 getStorage:v14];

  _Block_release(v14);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }
}

void sub_1AE167BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v12 = *(v8 + 80);
  v13 = sub_1AE23D13C();
  v14 = *(v4 + qword_1ED96F258);
  v15 = sub_1AE23D0AC();
  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = a3;
  v16[4] = *(v8 + 88);
  v16[5] = a4;
  v16[6] = v13;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1AE16B1E8;
  *(v17 + 24) = v16;
  aBlock[4] = sub_1ADE0F074;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADE0EEE0;
  aBlock[3] = &block_descriptor_46;
  v18 = _Block_copy(aBlock);

  [v14 insertAtIndex:a2 length:v15 getStorage:v18];

  _Block_release(v18);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }
}

void sub_1AE167E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CRSequenceStorage(0, *(v14 + 80), *(v14 + 88), v15);
  (*(v11 + 16))(v13, a3, a4);
  v17 = sub_1AE23D13C();
  v18 = objc_allocWithZone(v16);
  v21 = sub_1ADE0CD68(v17, v18, v19, v20);
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else
  {
    v22 = v21;
    [*(v6 + qword_1ED96F258) replaceStorageInRange:a1 withStorage:{a2 - a1, v21}];
  }
}

uint64_t CRSequence.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(*a1 + 16))
  {
    v20 = *v3;
    MEMORY[0x1EEE9AC00](a1);
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    v19[2] = v6;
    v19[3] = v7;
    v19[4] = v8;
    v20 = sub_1AE165268(sub_1ADF86234, v19, a2, v6);
    v9 = sub_1AE23D11C();
    WitnessTable = swift_getWitnessTable();
    v12 = a3;
    v13 = v6;
    v14 = v9;
    v15 = v7;
  }

  else
  {
    v20 = *v3;
    v16 = *(a2 + 16);
    v17 = *(a2 + 24);

    WitnessTable = swift_getWitnessTable();
    v12 = a3;
    v13 = v16;
    v14 = a2;
    v15 = v17;
  }

  return CRSequence.init<A>(_:)(&v20, v13, v14, v15, WitnessTable, v11, v12);
}

uint64_t CRSequence.init<A>(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t *a7@<X8>)
{
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v12 = sub_1ADE13AA8(sub_1ADF5C63C, v18, a3, a2, MEMORY[0x1E69E73E0], a5, MEMORY[0x1E69E7410], a6);
  v19 = v12;
  v13 = sub_1AE23D11C();
  swift_getWitnessTable();
  if (sub_1AE23D4CC())
  {
    (*(*(a3 - 1) + 8))(a1, a3);

    v16 = 0;
  }

  else
  {
    type metadata accessor for CRSequenceRef(0, a2, a4, v14);
    v16 = swift_allocObject();
    sub_1AE1666DC();
    v19 = v12;
    WitnessTable = swift_getWitnessTable();
    sub_1ADE16C80(&v19, v13, WitnessTable);
    (*(*(a3 - 1) + 8))(a1, a3);
  }

  *a7 = v16;
  return result;
}

uint64_t CRSequence.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v7 = v5;

  CRSequence.copy(renamingReferences:)(&v7, a2, a3);
}

uint64_t CRSequence.init<A>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, unsigned int (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = *(a4 - 1);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v15);
  CRSequence.init<A>(_:)(v17, a3, a4, a5, a6, v18, &v21);

  result = (*(v14 + 8))(a2, a4);
  *a7 = v21;
  return result;
}

uint64_t sub_1AE168474(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4C0, &unk_1AE2514B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4C8, &unk_1AE24C640);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - v10;
  sub_1ADE108AC(a2, v12, v13, v14);
  sub_1AE23C10C();
  v15 = sub_1AE23C0EC();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v11, v7, v15);
  v17 = *(v9 + 44);
  sub_1AE16AF30(&qword_1ED96A708, MEMORY[0x1E6969B48]);
  sub_1AE23D46C();
  (*(v16 + 8))(v7, v15);
  sub_1AE23D41C();
  if (*&v11[v17] == v23[0])
  {
    return sub_1ADDCEDE0(v11, &qword_1EB5BB4C8, &unk_1AE24C640);
  }

  sub_1AE16AF30(&qword_1EB5BB4E0, MEMORY[0x1E6969B38]);
  while (1)
  {
    sub_1AE23CBDC();
    v18 = sub_1AE23D51C();
    v20 = *v19;
    v21 = v19[1];
    result = v18(v23, 0);
    if (!*v3)
    {
      break;
    }

    if (__OFSUB__(v21, v20))
    {
      __break(1u);
      break;
    }

    [*(*v3 + qword_1ED96F258) removeObjectsInRange_];
    sub_1AE23D41C();
    if (*&v11[v17] == v23[0])
    {
      return sub_1ADDCEDE0(v11, &qword_1EB5BB4C8, &unk_1AE24C640);
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall CRSequence.removeAll()()
{
  v2 = v0;
  if ((CRSequence.isEmpty.getter(v0) & 1) == 0)
  {
    sub_1ADE108AC(v2, v3, v4, v5);
    if (*v1)
    {
      v6 = *(*v1 + qword_1ED96F258);

      [v6 removeAll];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1AE1687B8(uint64_t *a1, char a2, uint64_t a3)
{
  v4 = *a1;
  if (*a1)
  {
    if (*v3)
    {
      if (*v3 != v4)
      {

        sub_1ADE108AC(a3, v7, v8, v9);
        v10 = v3;
        if (*v3)
        {
          v11 = sub_1AE167374(v4, a2 & 1);

          if (v11 == 2)
          {

            *v10 = v4;
          }
        }

        else
        {
          __break(1u);
        }
      }
    }

    else
    {
      *v3 = v4;
    }
  }
}

uint64_t sub_1AE1688A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  v7 = *(*a5 + 80);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v28 - v11;
  if (v13)
  {
    return 1;
  }

  v14 = v10;
  v15 = v9;
  result = sub_1ADDEFD10();
  if (__OFADD__(a1, v15))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a1 + v15 >= a1)
  {
    v17 = result;
    v30 = v6;
    v31 = v14;
    swift_beginAccess();

    sub_1AE23D14C();
    v19 = v18;
    v21 = v20;
    v23 = v22;

    swift_unknownObjectRetain();
    v24 = sub_1AE23D84C();
    swift_unknownObjectRelease();
    v25 = sub_1AE23D86C();
    v32 = v24;
    if (v24 != v25)
    {
      v28[1] = v8 + 16;
      v29 = v23 >> 1;
      v28[0] = v8 + 8;
      v26 = v32;
      while (1)
      {
        result = sub_1AE23D85C();
        if (v32 < v21 || v29 <= v26)
        {
          break;
        }

        (*(v8 + 16))(v12, v19 + *(v8 + 72) * v26++, v7);
        v27 = sub_1ADECE30C(v7, *(*(v30 + 88) + 8));
        swift_beginAccess();
        sub_1AE00F014(v27);
        swift_endAccess();
        (*(v8 + 8))(v12, v7);
        if (v26 == sub_1AE23D86C())
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_12;
    }

LABEL_9:
    swift_unknownObjectRelease();
    return 1;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1AE168B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  LOBYTE(a5) = v9(a2, a3, a4, a5);

  return a5 & 1;
}

void *CRSequence.visitReferences(_:)(void *result)
{
  if (*v1)
  {
    return sub_1AE166D58(result);
  }

  return result;
}

void CRSequence.insert<A>(contentsOf:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1ADE108AC(a3, a2, a3, a4);
  if (*v5)
  {
    sub_1AE167BB8(a1, a2, a4, a5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t CRSequence.index(where:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v30 = a2;
  v5 = *(*(a3 + 16) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = sub_1AE23D7CC();
  v9 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v37 = *v3;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B26FB780](&v38, a3, WitnessTable);
  v37 = v38;
  sub_1AE23DC9C();
  sub_1AE23DC6C();
  v15 = sub_1AE23DC8C();
  v32 = (v9 + 32);
  v33 = v15;
  v31 = TupleTypeMetadata2 - 8;
  v26 = (v5 + 32);
  while (1)
  {
    v16 = v34;
    sub_1AE23DC7C();
    (*v32)(v13, v16, v35);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v13, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v17 = *v13;
    v18 = TupleTypeMetadata2;
    v19 = *(TupleTypeMetadata2 + 48);
    v20 = v27;
    v21 = v28;
    (*v26)(v27, &v13[v19], v28);
    v22 = v36;
    v23 = v29(v20);
    (*(v5 + 8))(v20, v21);
    v36 = v22;
    if (!v22)
    {
      TupleTypeMetadata2 = v18;
      if ((v23 & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_7;
  }

  v17 = 0;
LABEL_7:

  return v17;
}

uint64_t CRSequence.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2 && sub_1ADE0A96C() >= 1)
  {
    CRSequence.subscript.getter(0);
    v5 = *(*(*(a1 + 16) - 8) + 56);
    v6 = a2;
    v7 = 0;
  }

  else
  {
    v5 = *(*(*(a1 + 16) - 8) + 56);
    v6 = a2;
    v7 = 1;
  }

  return v5(v6, v7, 1);
}

void CRSequence.filter(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = *v4;

  sub_1AE1690D8(a1, a2, a3);
  if (v5)
  {
  }

  else
  {
    *a4 = v10;
  }
}

void sub_1AE1690D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1ADDEF6DC(a3);
  sub_1AE23D11C();
  swift_getWitnessTable();
  sub_1AE23D3FC();

  sub_1ADDEF6DC(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4D0, qword_1AE24CCE0);
  sub_1AE16AF80();
  swift_getWitnessTable();
  sub_1AE23E25C();

  sub_1AE23DA9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BD698, &qword_1AE2530A8);
  swift_getWitnessTable();
  sub_1AE23CF2C();

  if (!v12)
  {
    v9 = *(v13 + 16);
    if (v9)
    {
      sub_1ADE108AC(a3, v6, v7, v8);
      v10 = (v13 + 16 * v9 + 24);
      v11 = v9 - 1;
      while (v11 < *(v13 + 16))
      {
        if (!*v4)
        {
          goto LABEL_12;
        }

        if (__OFSUB__(*v10, *(v10 - 1)))
        {
          goto LABEL_11;
        }

        [*(*v4 + qword_1ED96F258) removeObjectsInRange_];
        v10 -= 2;
        if (--v11 == -1)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
    }

    else
    {
LABEL_8:
    }
  }
}

void sub_1AE16936C(char **a1@<X0>, char *a2@<X1>, uint64_t (*a3)(char *)@<X2>, char **a5@<X8>)
{
  v9 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = a3(&a2[*(TupleTypeMetadata2 + 48)]);
  if (!v5)
  {
    if (v11)
    {
      *a5 = v9;

      return;
    }

    v12 = *(v9 + 2);
    v13 = *a2;
    if (v12)
    {
      v14 = v12 - 1;
      v15 = &v9[16 * v12 - 16];
      if (*(v15 + 5) == v13)
      {
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
        }

        else
        {
          v13 = *(v15 + 4);
          if (v16 >= v13)
          {

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_16;
            }

            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_23:
        v9 = sub_1ADF79AB8(v9);
LABEL_16:
        v18 = &v9[16 * v14];
        *(v18 + 4) = v13;
        *(v18 + 5) = v16;
        *a5 = v9;
        return;
      }
    }

    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
    }

    else if (v16 >= v13)
    {

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_13:
        v14 = *(v9 + 2);
        v17 = *(v9 + 3);
        if (v14 >= v17 >> 1)
        {
          v9 = sub_1ADE5522C((v17 > 1), v14 + 1, 1, v9);
        }

        *(v9 + 2) = v14 + 1;
        goto LABEL_16;
      }

LABEL_20:
      v9 = sub_1ADE5522C(0, v12 + 1, 1, v9);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_20;
  }
}

void CRSequence.delta(_:from:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (!*v4)
  {
    goto LABEL_6;
  }

  v13 = *a2;

  CRSequence.finalizeTimestamps(_:)(a1, a3);
  CRSequence.finalizeTimestamps(_:)(a1, a3);
  if (!v13)
  {
    type metadata accessor for CRSequenceRef(0, *(a3 + 16), *(a3 + 24), v8);
    swift_allocObject();
    sub_1AE1666DC();
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = objc_allocWithZone(_TtC9Coherence24CRTTMergeableStringDelta);

  v12 = [v11 initWithDeltasTo:v9 from:v10 compareElements:0];

  if (v12)
  {
    *a4 = v12;
  }

  else
  {
LABEL_6:
    *a4 = 0;
  }
}

uint64_t CRSequence.canMerge(delta:)(void *a1)
{
  if (*v1)
  {
    return [*(*v1 + qword_1ED96F258) canDeltaMerge_];
  }

  else
  {
    return 1;
  }
}

void CRSequence.merge(delta:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  sub_1ADE108AC(a2, a2, a3, a4);
  if (*v4)
  {
    [*(*v4 + qword_1ED96F258) deltaMerge_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t static CRSequence.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (!v3)
    {

      return 0;
    }

    if (v2 == v3)
    {
      return 1;
    }
  }

  else
  {

    if (!v3)
    {

      return 1;
    }
  }

  v4 = [*(v3 + qword_1ED96F258) isEmptyCRDT];
  result = 0;
  if (v2 && (v4 & 1) == 0)
  {
    if ([*(v2 + qword_1ED96F258) isEmptyCRDT])
    {
      return 0;
    }

    if (v2 != v3)
    {
      return [*(v2 + qword_1ED96F258) graphIsEqual_];
    }

    return 1;
  }

  return result;
}

void CRSequence.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    sub_1ADE65304(a2, a3, &v11);
    swift_setDeallocating();

    if (!v4)
    {
      *a4 = v11;
    }
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v10 = 0xD000000000000014;
    *(v10 + 8) = 0x80000001AE25FB50;
    *(v10 + 16) = 0;
    swift_willThrow();
  }
}

double CRSequence.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_1ADDFCC74(a1, a2, a3);
  if (!v4)
  {
    v11 = v6;
    v9 = *(a2 + 16);
    v8 = *(a2 + 24);

    sub_1ADE6C0BC(&v11, v9, v8, v10);
  }

  return result;
}

uint64_t CRSequence.isDefaultState.getter()
{
  if (*v0)
  {
    return [*(*v0 + qword_1ED96F258) isEmptyCRDT];
  }

  else
  {
    return 1;
  }
}

uint64_t CRSequence.MergeableDelta.visitReferences(_:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v28 = &v23 - v11;
  v12 = [*v2 attributedString];
  v27 = *(a2 + 24);
  type metadata accessor for CRSequenceStorage(0, v5, v27, v13);
  v14 = swift_dynamicCastClassUnconditional();
  v15 = qword_1EB5BD4A8;
  swift_beginAccess();
  v16 = *(v14 + v15);

  swift_unknownObjectRelease();
  if (!sub_1AE23D0AC())
  {
  }

  v17 = 0;
  v25 = (v6 + 32);
  v26 = (v6 + 16);
  v24 = (v6 + 8);
  while (1)
  {
    v18 = sub_1AE23D08C();
    sub_1AE23D00C();
    if (v18)
    {
      (*(v6 + 16))(v28, v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, v5);
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }

    result = sub_1AE23DAAC();
    if (v23 != 8)
    {
      break;
    }

    v29 = result;
    (*v26)(v28, &v29, v5);
    swift_unknownObjectRelease();
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
LABEL_11:
      __break(1u);
LABEL_12:
      (*v24)(v8, v5);
    }

LABEL_5:
    (*v25)(v8, v28, v5);
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    if ((*(v21 + 8))(v20, v21))
    {
      goto LABEL_12;
    }

    (*(*(v27 + 8) + 48))(a1, v5);
    (*v24)(v8, v5);
    ++v17;
    if (v19 == sub_1AE23D0AC())
    {
    }
  }

  __break(1u);
  return result;
}

void CRSequence.MergeableDelta.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    sub_1ADDE78C8();
    v11 = *(v10 + 16);
    if ((~v11 & 0xF000000000000007) != 0 && (v11 & 0xF000000000000000) == 0x5000000000000000)
    {
      v22 = v11 & 0xFFFFFFFFFFFFFFFLL;
      v23 = *(v22 + 80);
      *&v28[16] = *(v22 + 64);
      *&v28[32] = v23;
      *&v28[48] = *(v22 + 96);
      *&v28[64] = *(v22 + 112);
      v24 = *(v22 + 32);
      v26 = *(v22 + 16);
      v27 = v24;
      *v28 = *(v22 + 48);
      sub_1ADE51B64(&v26, v25);

      v20 = *&v28[56];
      v19 = *&v28[40];
      v18 = *&v28[24];
      v16 = *&v28[8];
      v14 = *v28;
      v15 = v27;
      v17 = *(&v26 + 1);
      v13 = v26;
    }

    else
    {

      v13 = 0;
      v14 = MEMORY[0x1E69E7CC0];
      v15 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
      v16 = 0uLL;
      v17 = 0xE000000000000000;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
    }

    *&v30[0] = v13;
    *(&v30[0] + 1) = v17;
    v30[1] = v15;
    v31 = v14;
    v32 = v16;
    v33 = v18;
    v34 = v19;
    v35 = v20;
    sub_1AE169F80(v30, a1, 0, a2, a3, &v29);

    if (!v4)
    {
      *a4 = v29;
    }
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v21 = 0xD000000000000014;
    *(v21 + 8) = 0x80000001AE25FB50;
    *(v21 + 16) = 0;
    swift_willThrow();
  }
}

void sub_1AE169F80(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1ADE0CA18(a1, a2, a3, a4, a5);

  sub_1AE030800(a1);
  v13[0] = 0;
  v9 = [objc_allocWithZone(_TtC9Coherence24CRTTMergeableStringDelta) initWithDecoder:v8 error:v13];
  if (v9)
  {
    v10 = v9;
    v11 = v13[0];

    *a6 = v10;
  }

  else
  {
    v12 = v13[0];
    sub_1AE23BC9C();

    swift_willThrow();
  }
}

double CRSequence.MergeableDelta.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADDFCC74(a1, a2, a3);
  if (!v3)
  {

    sub_1AE16A124(a1, a2, v7);
    swift_beginAccess();
    sub_1AE1B6EA4(v7);
    swift_endAccess();
  }

  return result;
}

void sub_1AE16A124(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = *v3;
  v6 = sub_1AE16A270(a1, *(a2 + 16), *(a2 + 24));
  *&v21 = 0;
  v7 = [v5 saveToEncoder:v6 error:&v21];
  v8 = v21;
  if (v7)
  {
    v9 = &v6[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence];
    swift_beginAccess();
    v10 = *v9;
    v11 = *(v9 + 2);
    v22 = *(v9 + 1);
    v23 = v11;
    v21 = v10;
    v12 = *(v9 + 3);
    v13 = *(v9 + 4);
    v14 = *(v9 + 5);
    v27 = *(v9 + 12);
    v25 = v13;
    v26 = v14;
    v24 = v12;
    v15 = v8;
    sub_1ADE51B64(&v21, &v20);

    v16 = v26;
    *(a3 + 64) = v25;
    *(a3 + 80) = v16;
    *(a3 + 96) = v27;
    v17 = v22;
    *a3 = v21;
    *(a3 + 16) = v17;
    v18 = v24;
    *(a3 + 32) = v23;
    *(a3 + 48) = v18;
  }

  else
  {
    v19 = v21;
    sub_1AE23BC9C();

    swift_willThrow();
  }
}

id sub_1AE16A270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;
  v7 = objc_allocWithZone(type metadata accessor for CRSequenceEncoder()) + OBJC_IVAR____TtC9Coherence17CRSequenceEncoder_getElements;
  *v7 = sub_1AE16AF74;
  v7[1] = v6;
  v8 = swift_retain_n();
  return sub_1ADF8B964(v8);
}

void sub_1AE16A304(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v5 = sub_1AE16A448(a2);
  *&v20 = 0;
  v6 = [v4 saveToEncoder:v5 error:&v20];
  v7 = v20;
  if (v6)
  {
    v8 = &v5[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence];
    swift_beginAccess();
    v9 = *v8;
    v10 = *(v8 + 2);
    v21 = *(v8 + 1);
    v22 = v10;
    v20 = v9;
    v11 = *(v8 + 3);
    v12 = *(v8 + 4);
    v13 = *(v8 + 5);
    v26 = *(v8 + 12);
    v24 = v12;
    v25 = v13;
    v23 = v11;
    v14 = v7;
    sub_1ADE51B64(&v20, &v19);

    v15 = v25;
    *(a1 + 64) = v24;
    *(a1 + 80) = v15;
    *(a1 + 96) = v26;
    v16 = v21;
    *a1 = v20;
    *(a1 + 16) = v16;
    v17 = v23;
    *(a1 + 32) = v22;
    *(a1 + 48) = v17;
  }

  else
  {
    v18 = v20;
    sub_1AE23BC9C();

    swift_willThrow();
  }
}

id sub_1AE16A448(uint64_t a1)
{
  v1 = (objc_allocWithZone(type metadata accessor for CRSequenceEncoder()) + OBJC_IVAR____TtC9Coherence17CRSequenceEncoder_getElements);
  *v1 = sub_1ADF9437C;
  v1[1] = 0;

  return sub_1ADF8B964(v2);
}

double sub_1AE16A4F0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  CRSequence.makeIterator()(a1, a2);

  return result;
}

uint64_t sub_1AE16A51C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AE1DCD68(v2, a1, a2);

  return v3;
}

void sub_1AE16A558(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = type metadata accessor for CRSequenceStorage(0, a3, a4, a4);

  v10 = sub_1AE16ADB4(a1, a2);

  if (!v5)
  {
    a5[3] = v9;
    *a5 = v10;
  }
}

void *sub_1AE16A5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ADDE4E28(a1, v11);
  type metadata accessor for CRSequenceStorage(0, a3, a4, v7);
  if (swift_dynamicCast())
  {
    v8 = sub_1AE166550(a2);

    return v8;
  }

  else
  {
    sub_1AE23DC5C();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t CRSequence<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v6 = *(a2 + 16);
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = *v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE23E3AC();
  v26[6] = v12;
  v13 = v22;
  v24 = sub_1ADDEF6DC(v22);
  v25 = 0;
  v22 = type metadata accessor for CRSequence.Iterator(0, v6, *(v13 + 24), v14);
  CRSequence.Iterator.next()(v22, v11);
  v15 = v19;
  v20 = *(v19 + 48);
  v21 = v19 + 48;
  if (v20(v11, 1, v6) != 1)
  {
    v17 = *(v15 + 32);
    v16 = v15 + 32;
    v19 = v17;
    do
    {
      (v19)(v8, v11, v6);
      __swift_mutable_project_boxed_opaque_existential_1(v26, v26[3]);
      sub_1AE23DE6C();
      (*(v16 - 24))(v8, v6);
      if (v4)
      {
        break;
      }

      CRSequence.Iterator.next()(v22, v11);
    }

    while (v20(v11, 1, v6) != 1);
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_1AE16A958()
{
  v1 = qword_1EB5BD4A8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1AE16A9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE16AA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE16AA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE16AAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_1AE16AB34(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  sub_1ADE0FC48(v5, v5);
  v6 = *(v5 - 8);
  swift_allocObject();
  v7 = sub_1AE23CFFC();
  (*(v6 + 16))(v8, a1, v5);
  sub_1ADE0FCBC(v7, v5);
  *(v1 + qword_1EB5BD4A8) = v9;
  v11 = type metadata accessor for CRSequenceStorage(0, v5, *((v4 & v3) + 0x58), v10);
  v13.receiver = v1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_1AE16ACB8(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = qword_1EB5BD4A8;
  swift_beginAccess();
  *(v1 + qword_1EB5BD4A8) = *(a1 + v5);
  v7 = type metadata accessor for CRSequenceStorage(0, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v6);
  v9.receiver = v1;
  v9.super_class = v7;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_1AE16ADB4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v16[2] = a1;
  v14 = *(v2 + 5);
  v15 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCC8, &qword_1AE251C00);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  v7 = sub_1ADDCC7D4(&qword_1EB5BD690, &qword_1EB5BCCC8, &qword_1AE251C00, MEMORY[0x1E69E6340]);
  v8 = sub_1ADE08EB0(sub_1AE16AEEC, v13, v5, v14, v6, v7, MEMORY[0x1E69E7288], v16);

  if (!v3)
  {
    v10 = objc_allocWithZone(v4);
    return sub_1ADE0CD68(v8, v10, v11, v12);
  }

  return result;
}

uint64_t sub_1AE16AF30(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AE23C0EC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AE16AF80()
{
  result = qword_1EB5BB4D8;
  if (!qword_1EB5BB4D8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BB4D0, qword_1AE24CCE0);
    sub_1ADF5C80C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB4D8);
  }

  return result;
}

uint64_t objectdestroy_67Tm_0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

id sub_1AE16B0BC@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  v4 = (*(*(*(v2 + 16) - 8) + 80) + 32) & ~*(*(*(v2 + 16) - 8) + 80);
  v5 = type metadata accessor for CRSequenceStorage(0, *(v2 + 16), *(v2 + 24), a1);
  result = sub_1AE16AC7C(v2 + v4, v6, v7, v8);
  a2[3] = v5;
  *a2 = result;
  return result;
}

uint64_t sub_1AE16B138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  (*(*(v3 - 8) + 16))(a2, a1, v3);
  return (*(*(v4 + 8) + 64))(v5, v3);
}

void sub_1AE16B204(uint64_t a1@<X0>, void *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  v8 = *(a1 + 16);
  if ((~v8 & 0xF000000000000007) != 0 && (v8 & 0xF000000000000000) == 0x1000000000000000)
  {
    v17 = (v8 & 0xFFFFFFFFFFFFFFFLL);
    v18 = v17[2];
    v19 = v17[3];
    v20 = v17[5];
    *&v30[48] = v17[4];
    v31 = v20;
    *&v30[16] = v18;
    *&v30[32] = v19;
    *v30 = v17[1];
    v28 = *(&v20 + 1);
    v40 = v20;
    v15 = v30[56];
    v26 = *&v30[24];
    v27 = *&v30[40];
    v25 = *&v30[8];
    v10 = *v30;
    v21 = a3;
    v22 = a6;
    v23 = a5;
    v24 = a4;
    sub_1ADFAEE10(v30, v29);
    v14 = v26;
    v16 = v27;
    v13 = v25;
    v12 = v28;
    v11 = v40;
    a3 = v21;
    a4 = v24;
    a5 = v23;
    a6 = v22;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
    v14 = 0uLL;
    v15 = 1;
    v16 = 0uLL;
  }

  v30[0] = v15;
  v33 = v10;
  v34 = v13;
  v35 = v14;
  v36 = v16;
  v37 = v15;
  v38 = v11;
  v39 = v12;
  sub_1AE17D67C(&v33, a3, a4, a5, a6, &v32);

  if (!v6)
  {
    *a2 = v32;
  }
}

uint64_t sub_1AE16B36C(uint64_t a1)
{
  type metadata accessor for Proto_CRDT._StorageClass();
  inited = swift_initStaticObject();
  v4 = sub_1AE16CC2C(*(a1 + 16));
  sub_1AE17DF00(v4, a1, v13);

  if (!v1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = swift_allocObject();
      v6 = *(inited + 16);
      *(v5 + 16) = v6;
      sub_1ADE5215C(v6);

      inited = v5;
    }

    v7 = swift_allocObject();
    v8 = v13[3];
    *(v7 + 48) = v13[2];
    *(v7 + 64) = v8;
    *(v7 + 80) = v13[4];
    v9 = v13[1];
    *(v7 + 16) = v13[0];
    *(v7 + 32) = v9;
    v10 = v7 | 0x1000000000000000;
    v11 = *(inited + 16);
    *(inited + 16) = v10;
    sub_1ADE52174(v11);
  }

  return inited;
}

void sub_1AE16B474(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v165 = a1;
  v154[0] = a3;
  v5 = *v3;
  v6 = *v3;
  v7 = *(*v3 + 112);
  v8 = *(*v3 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v163 = v154 - v10;
  v11 = *(v5 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v155 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v162 = v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v185 = v154 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v161 = v154 - v17;
  v184 = sub_1AE23D7CC();
  v18 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v160 = v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v174 = v154 - v21;
  v172 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v154 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v197 = v154 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v187 = v154 - v28;
  v171 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v196 = v154 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v193 = v154 - v32;
  v203 = TupleTypeMetadata2;
  v178 = sub_1AE23D7CC();
  v33 = *(v178 - 1);
  MEMORY[0x1EEE9AC00](v178);
  v169 = v154 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v182 = v154 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v177 = v154 - v38;
  swift_beginAccess();
  v201 = *(v3 + 3);
  swift_beginAccess();
  v181 = a2;
  v199 = *(a2 + 24);
  v159 = *(v6 + 96);

  v39 = *(&v159 + 1);
  v40 = sub_1AE175ED0(v11, v8, v159, *(&v159 + 1), v7);
  v202 = v11;
  v204 = v8;
  v200 = v39;
  v198 = v7;
  v42 = sub_1AE175F68(v11, v8, v41, v39, v7);
  v210 = v201;
  v211 = v199;
  *&v212 = v40;
  *(&v212 + 1) = v42;
  swift_beginAccess();
  v166 = v3;
  v43 = v3[5];
  if ((v43 & 0xC000000000000001) != 0)
  {
    v44 = sub_1AE23DC1C();
    v180 = 0;
    v45 = 0;
    v46 = 0;
    v47 = v44 | 0x8000000000000000;
  }

  else
  {
    v48 = -1 << *(v43 + 32);
    v45 = ~v48;
    v49 = *(v43 + 64);
    v180 = (v43 + 64);
    v50 = -v48;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    else
    {
      v51 = -1;
    }

    v46 = v51 & v49;
    v47 = v43;
  }

  swift_beginAccess();
  *&v201 = v171 + 32;
  *&v199 = v172 + 32;
  v192 = (v155 + 56);
  v154[1] = v45;
  v156 = (v45 + 64) >> 6;
  v188 = (v171 + 16);
  v170 = v172 + 16;
  v176 = (v33 + 32);
  v191 = (v155 + 48);
  v175 = v198 + 24;
  v173 = (v172 + 48);
  v190 = (v172 + 8);
  v189 = (v171 + 8);
  *&v52 = v202;
  *(&v52 + 1) = v204;
  v157 = v52;
  v53 = (v18 + 8);
  v54 = 0;
  v183 = v53;
  v55 = v193;
  v158 = v24;
  for (i = v47; ; v47 = i)
  {
    v194 = v54;
    if ((v47 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_1AE23DC3C())
    {
      v83 = v202;
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      v84 = v55;
      v85 = v187;
      v86 = v204;
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      v87 = v203;
      v88 = *(v203 + 48);
      v64 = v182;
      (*v201)(v182, v84, v83);
      v89 = v85;
      v81 = v199;
      (*v199)(&v64[v88], v89, v86);
      v82 = *v192;
      (*v192)(v64, 0, 1, v87);
      v62 = v54;
      v195 = v46;
    }

    else
    {
      v82 = *v192;
      v64 = v182;
      (*v192)(v182, 1, 1, v203);
      v62 = v54;
      v195 = v46;
LABEL_26:
      v81 = v199;
    }

LABEL_27:
    v90 = v177;
    (*v176)(v177, v64, v178);
    v91 = *v191;
    if ((*v191)(v90, 1, v203) == 1)
    {
      sub_1ADDDCE74(i);
      v110 = v181[5];
      v111 = v193;
      v168 = v82;
      v167 = v91;
      if ((v110 & 0xC000000000000001) != 0)
      {
        v112 = sub_1AE23DC1C();
        v182 = 0;
        v113 = 0;
        v114 = 0;
        v186 = v112 | 0x8000000000000000;
      }

      else
      {
        v115 = -1 << *(v110 + 32);
        v113 = ~v115;
        v116 = *(v110 + 64);
        v182 = (v110 + 64);
        v117 = -v115;
        if (v117 < 64)
        {
          v118 = ~(-1 << v117);
        }

        else
        {
          v118 = -1;
        }

        v114 = (v118 & v116);
        v186 = v110;
      }

      v119 = v187;
      v177 = v113;
      v181 = ((v113 + 64) >> 6);
      v180 = (v155 + 16);
      i = v198 + 56;
      v178 = (v155 + 8);

      v120 = 0;
      while (1)
      {
        v196 = v120;
        if ((v186 & 0x8000000000000000) != 0)
        {
          v131 = sub_1AE23DC3C();
          v123 = v169;
          v124 = v168;
          v125 = v167;
          if (!v131)
          {
            v168(v169, 1, 1, v203);
LABEL_56:
            sub_1ADDDCE74(v186);
            v152 = v211;
            v153 = v154[0];
            *v154[0] = v210;
            *(v153 + 16) = v152;
            *(v153 + 32) = v212;
            return;
          }

          sub_1AE23DFEC();
          swift_unknownObjectRelease();
          sub_1AE23DFEC();
          swift_unknownObjectRelease();
          v122 = v120;
          v197 = v114;
        }

        else
        {
          v121 = v114;
          v122 = v120;
          v123 = v169;
          v124 = v168;
          v125 = v167;
          if (!v114)
          {
            if (v181 <= (v120 + 1))
            {
              v126 = v120 + 1;
            }

            else
            {
              v126 = v181;
            }

            v127 = v120;
            v128 = v126 - 1;
            do
            {
              v122 = (v127 + 1);
              if (__OFADD__(v127, 1))
              {
                goto LABEL_58;
              }

              if (v122 >= v181)
              {
                v197 = 0;
                v133 = 1;
                goto LABEL_52;
              }

              v121 = *&v182[8 * v122];
              ++v127;
            }

            while (!v121);
          }

          v197 = ((v121 - 1) & v121);
          v129 = __clz(__rbit64(v121)) | (v122 << 6);
          v130 = v186;
          (*(v171 + 16))(v111, *(v186 + 48) + *(v171 + 72) * v129, v202);
          (*(v172 + 16))(v119, *(v130 + 56) + *(v172 + 72) * v129, v204);
        }

        v132 = *(v203 + 48);
        (*v201)(v123, v111, v202);
        (*v199)(&v123[v132], v119, v204);
        v133 = 0;
        v128 = v122;
LABEL_52:
        v134 = v203;
        v124(v123, v133, 1, v203);
        if (v125(v123, 1, v134) == 1)
        {
          goto LABEL_56;
        }

        v135 = v203;
        v196 = v128;
        v136 = *(v203 + 48);
        v137 = v161;
        v138 = v202;
        (*v201)(v161, v123, v202);
        v139 = v204;
        (*v199)(&v137[v136], &v123[v136], v204);
        v140 = *v180;
        (*v180)(v185, v137, v135);
        v195 = *(v135 + 48);
        v141 = v162;
        v140(v162, v137, v135);
        v194 = *(v135 + 48);
        v142 = v166;

        v143 = v160;
        sub_1AE23CB7C();

        v144 = v142[4];
        *&v205 = v142[3];
        *(&v205 + 1) = v144;
        v145 = v198;
        v146 = *(v198 + 56);

        v147 = v145;
        v148 = v135;
        v149 = v138;
        v119 = v187;
        v146(v165, v143, &v205, v139, v147);

        (*v183)(v143, v184);
        v150 = *v190;
        (*v190)(&v141[v194], v139);
        (*v189)(v141, v149);
        sub_1AE23CB1C();
        v151 = v185;
        sub_1AE23CB8C();
        (*v178)(v137, v148);
        v150(&v151[v195], v139);
        v111 = v193;
        v120 = v196;
        v114 = v197;
      }
    }

    v194 = v62;
    v92 = *(v203 + 48);
    (*v201)(v196, v90, v202);
    v93 = v204;
    v186 = *v81;
    (v186)(v197, &v90[v92], v204);
    v94 = v198;
    v95 = *(v198 + 24);
    v209 = v95(v93, v198);
    v96 = v181[4];
    *&v205 = v181[3];
    *(&v205 + 1) = v96;

    sub_1ADF7845C(&v205);

    v97 = v174;
    sub_1AE23CB7C();

    v98 = (*v173)(v97, 1, v93);
    v55 = v193;
    if (v98 == 1)
    {
      (*v183)(v97, v184);
      v56 = *(v209 + 16);

      if (v56)
      {
        v57 = v196;
        v58 = v202;
        (*v188)(v55, v196, v202);
        v208 = 0;
        v206 = v159;
        v205 = v157;
        v207 = v198;
        type metadata accessor for CRSetRefMergeableDelta.RemovedVersion(255, &v205);
        sub_1AE23CB1C();
        sub_1AE23CB8C();
        (*v190)(v197, v204);
        (*v189)(v57, v58);
      }

      else
      {
        (*v190)(v197, v204);
        (*v189)(v196, v202);
      }
    }

    else
    {
      v99 = v158;
      v100 = v204;
      (v186)(v158, v97, v204);
      v101 = v95(v100, v94);
      sub_1ADF78130(v101);

      v102 = v209;
      if (*(v209 + 16))
      {
        v103 = v196;
        v104 = v202;
        (*v188)(v55, v196, v202);
        v208 = v102;
        *&v205 = v104;
        v105 = v204;
        *(&v205 + 1) = v204;
        v206 = v159;
        v207 = v94;
        type metadata accessor for CRSetRefMergeableDelta.RemovedVersion(255, &v205);
        sub_1AE23CB1C();
        sub_1AE23CB8C();
        v106 = *v190;
        (*v190)(v99, v105);
        v106(v197, v105);
        (*v189)(v103, v104);
      }

      else
      {
        v107 = *v190;
        v108 = v99;
        v109 = v204;
        (*v190)(v108, v204);
        v107(v197, v109);
        (*v189)(v196, v202);
      }
    }

    v54 = v194;
    v46 = v195;
  }

  v59 = v46;
  v60 = v54;
  if (v46)
  {
LABEL_20:
    v195 = (v59 - 1) & v59;
    v65 = __clz(__rbit64(v59)) | (v60 << 6);
    v66 = v171;
    v67 = v202;
    (*(v171 + 16))(v55, *(v47 + 48) + *(v171 + 72) * v65, v202);
    v68 = *(v47 + 56);
    v69 = v172;
    v70 = v68 + *(v172 + 72) * v65;
    v71 = *(v172 + 16);
    v72 = v55;
    v73 = v187;
    v186 = v46;
    v74 = v204;
    v71(v187, v70, v204);
    v75 = v203;
    v76 = *(v203 + 48);
    v77 = *(v66 + 32);
    v78 = v182;
    v79 = v199;
    v77(v182, v72, v67);
    v64 = v78;
    v80 = v73;
    v81 = v79;
    (*(v69 + 32))(&v78[v76], v80, v74);
    v82 = *v192;
    (*v192)(v78, 0, 1, v75);
    v62 = v60;
    goto LABEL_27;
  }

  if (v156 <= v54 + 1)
  {
    v61 = v54 + 1;
  }

  else
  {
    v61 = v156;
  }

  v62 = v61 - 1;
  v63 = v54;
  v64 = v182;
  while (1)
  {
    v60 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v60 >= v156)
    {
      v82 = *v192;
      (*v192)(v182, 1, 1, v203);
      v195 = 0;
      goto LABEL_26;
    }

    v59 = v180[v60];
    ++v63;
    if (v59)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
}

void sub_1AE16CB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_1AE173A7C(a1, a2, a3, 0, v3);
}

void *sub_1AE16CB8C(uint64_t a1, char a2, uint64_t a3)
{
  if (v3[6] >= a1)
  {
  }

  else
  {
    v3 = (*(*v3 + 288))();
    v8[0] = 0;
    v8[1] = 0;
    sub_1AE173A7C(a1, a2 & 1, a3, 0, v8);
  }

  return v3;
}

void *sub_1AE16CC2C(uint64_t a1)
{
  v2.n128_f64[0] = sub_1ADDF5234(0, &v12);
  v3 = v12;
  v4 = v13;
  if (*(v13 + 16) || *(v12 + 16))
  {
    v5 = (*(*v1 + 288))(v2);
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    v6 = swift_beginAccess();
    MEMORY[0x1EEE9AC00](v6);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
    sub_1AE23D6AC();

    v7 = v12;
    v8 = v13;
    v9 = v15;
    v10 = v16;
    v12 = v15;
    v13 = v16;
    sub_1AE173A7C(v7, v8, v14, 1, &v12);

    sub_1ADE42CB8(v9, v10);
    v12 = v3;
    v13 = v4;
    sub_1ADDF8100(&v12);
  }

  else
  {

    return v1;
  }

  return v5;
}

uint64_t sub_1AE16CE24(void *a1)
{
  if (v1[6] == a1[6])
  {
    swift_beginAccess();

    v3 = sub_1AE23CA7C();

    swift_beginAccess();

    v4 = sub_1AE23CA7C();

    if (v3 == v4)
    {
      swift_beginAccess();
      v5 = v1[3];
      v6 = v1[4];
      swift_beginAccess();
      v8 = a1[3];
      v7 = a1[4];

      sub_1ADF64C74(v6, v7);
      if (v9)
      {
        sub_1ADF64C74(v5, v8);
        v11 = v10;

        return v11 & 1;
      }
    }

    v11 = 0;
    return v11 & 1;
  }

  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  sub_1AE23D6AC();
  sub_1AE16CB8C(v14, v15, v16);
  v12 = sub_1AE16CB8C(v14, v15, v16);

  v11 = sub_1AE16CE24(v12);

  return v11 & 1;
}

uint64_t sub_1AE16D0B0(uint64_t a1, uint64_t a2)
{
  v77 = a1;
  v80 = *v2;
  v4 = v80;
  v5 = *(v80 + 88);
  v6 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v79 = &v65 - v7;
  v78 = *(v80 + 80);
  v75 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v65 - v9;
  v10 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AE23C12C();
  v72 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v66 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Timestamp(0);
  v83 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v65 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v65 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v65 - v24;
  v74 = v26;
  v70 = *(v26 + 16);
  v71 = v26 + 16;
  v70(&v65 - v24, a2, v5, v23);
  sub_1ADE10580(v21);
  v82 = v2;
  v27 = *(*(v4 + 112) + 40);
  v73 = v25;
  v69 = v5;
  v81 = v27(v85, v5);
  v29 = v28;
  v30 = *v28;
  v31 = (*v28)[2];

  if (v31)
  {
    v32 = v30 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    v33 = *(v83 + 72);
    do
    {
      sub_1ADDF8030(v32, v18, type metadata accessor for Timestamp);
      if (*(v18 + *(v14 + 20)) == *&v21[*(v14 + 20)] && *(v18 + *(v10 + 20)) == *&v21[*(v10 + 20)])
      {
        v34 = sub_1AE23BF8C();
        sub_1AE017AB8(v18);
        if (v34)
        {

          v35 = v82;
          goto LABEL_14;
        }
      }

      else
      {
        sub_1AE017AB8(v18);
      }

      v32 += v33;
      --v31;
    }

    while (v31);
  }

  v36 = v68;
  sub_1ADDF8030(v21, v68, type metadata accessor for Timestamp);
  v37 = *v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v29 = v37;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v37 = sub_1ADE09898(0, v37[2] + 1, 1, v37);
    *v29 = v37;
  }

  v40 = v37[2];
  v39 = v37[3];
  v18 = v40 + 1;
  if (v40 >= v39 >> 1)
  {
    v37 = sub_1ADE09898((v39 > 1), v40 + 1, 1, v37);
    *v29 = v37;
  }

  v35 = v82;
  v41 = v83;
  v37[2] = v18;
  sub_1AE017B14(v36, v37 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40);
  sub_1ADF771F0(sub_1ADF7B924, 0);
LABEL_14:
  v81(v85, 0);
  swift_beginAccess();
  if (!*&v21[*(v10 + 20)])
  {
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v84 = v35[3];
    v43 = v84;
    v35[3] = 0x8000000000000000;
    v45 = sub_1ADDD8A6C(v21);
    v54 = v43[2];
    v55 = (v53 & 1) == 0;
    v56 = v54 + v55;
    if (!__OFADD__(v54, v55))
    {
      v57 = v53;
      if (v43[3] >= v56)
      {
        v10 = v79;
        if ((v52 & 1) == 0)
        {
          sub_1ADDFB81C();
          v43 = v84;
        }

        v51 = v69;
        v35[3] = v43;
        if (v57)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      sub_1ADDDDED0(v56, v52);
      v43 = v84;
      v58 = sub_1ADDD8A6C(v21);
      if ((v57 & 1) == (v59 & 1))
      {
        v45 = v58;
        v51 = v69;
        v10 = v79;
        v35[3] = v43;
        if (v57)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v42 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v35[4];
  v43 = v84;
  v35[4] = 0x8000000000000000;
  v45 = sub_1ADDD8A6C(v21);
  v46 = v43[2];
  v47 = (v44 & 1) == 0;
  v48 = v46 + v47;
  if (__OFADD__(v46, v47))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  LOBYTE(v18) = v44;
  if (v43[3] >= v48)
  {
    v10 = v79;
    if (v42)
    {
LABEL_25:
      v51 = v69;
LABEL_26:
      v35[4] = v43;
      if (v18)
      {
LABEL_28:
        sub_1AE23C08C();
        swift_endAccess();
        (*(v75 + 16))(v76, v77, v78);
        v62 = v73;
        (v70)(v10, v73, v51);
        v63 = v74;
        (*(v74 + 56))(v10, 0, 1, v51);
        swift_beginAccess();
        sub_1AE23CB1C();
        sub_1AE23CB8C();
        swift_endAccess();
        sub_1AE017AB8(v21);
        return (*(v63 + 8))(v62, v51);
      }

LABEL_27:
      v60 = v66;
      sub_1AE23C11C();
      v61 = v67;
      sub_1ADDF8030(v21, v67, type metadata accessor for Replica);
      sub_1ADDDE678(v45, v61, v60, v43);
      goto LABEL_28;
    }

LABEL_35:
    sub_1ADDFB81C();
    v43 = v84;
    goto LABEL_25;
  }

  sub_1ADDDDED0(v48, v42);
  v43 = v84;
  v49 = sub_1ADDD8A6C(v21);
  if ((v18 & 1) == (v50 & 1))
  {
    v45 = v49;
    v51 = v69;
    v10 = v79;
    goto LABEL_26;
  }

LABEL_36:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1AE16D8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = *v3;
  v6 = v25[10];
  v23[1] = v25[11];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = v23 - v9;
  v11 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = v3[5];
  if ((v14 & 0xC000000000000001) != 0)
  {
    v24 = a2;

    sub_1AE23DFFC();
    v15 = sub_1AE23DC2C();
    v23[0] = v16;
    swift_unknownObjectRelease();

    if (!v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!*(v14 + 16))
    {
      v21 = 1;
      return (*(v8 + 56))(a2, v21, 1, TupleTypeMetadata2);
    }

    v24 = a2;
    v17 = v25[13];

    v18 = sub_1ADDFFB6C(a1, v6, v17);
    if ((v19 & 1) == 0)
    {

LABEL_10:
      v21 = 1;
      a2 = v24;
      return (*(v8 + 56))(a2, v21, 1, TupleTypeMetadata2);
    }

    v15 = v18;
    v23[0] = *(v14 + 36);
  }

  sub_1ADE10580(v13);
  swift_beginAccess();
  type metadata accessor for Replica(0);
  sub_1ADDD828C(v13);
  sub_1AE017AB8(v13);
  swift_endAccess();
  swift_beginAccess();
  sub_1AE23CB1C();
  v20 = v23[0];
  sub_1AE23CABC();
  swift_endAccess();
  sub_1ADDFFBC8(v15, v20, (v14 & 0xC000000000000001) != 0);
  a2 = v24;
  (*(v8 + 32))(v24, v10, TupleTypeMetadata2);
  v21 = 0;
  return (*(v8 + 56))(a2, v21, 1, TupleTypeMetadata2);
}

uint64_t sub_1AE16DC4C(uint64_t a1)
{
  v1 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1AE23CB1C();
  sub_1AE23CB0C();
  swift_endAccess();
  sub_1ADE10580(v3);
  swift_beginAccess();
  type metadata accessor for Replica(0);
  sub_1ADDD828C(v3);
  sub_1AE017AB8(v3);
  return swift_endAccess();
}

uint64_t sub_1AE16DD98(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v49 = v3 + 5;
  v50 = a1;
  v48 = v5;
  v6 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v5 + 88);
  v46 = sub_1AE23D7CC();
  v43 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v38 - v8;
  v41 = v3;
  v9 = *(v5 + 80);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v38 - v15;
  v17 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  v22 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = &v38 - v23;
  (*(v17 + 16))(v20, v50, a2, v22);
  v25 = AssociatedTypeWitness;
  sub_1AE23CE7C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v50 = v24;
  v44 = AssociatedConformanceWitness;
  sub_1AE23D80C();
  v27 = v10;
  v30 = *(v10 + 48);
  v28 = v10 + 48;
  v29 = v30;
  if (v30(v16, 1, v9) != 1)
  {
    v31 = (v43 + 8);
    v42 = *(v27 + 32);
    v43 = v27 + 32;
    do
    {
      v42(v13, v16, v9);
      swift_beginAccess();
      sub_1AE23CB1C();
      v32 = v28;
      v33 = v25;
      v34 = v45;
      sub_1AE23CA1C();
      v35 = v34;
      v25 = v33;
      v28 = v32;
      (*v31)(v35, v46);
      swift_endAccess();
      (*(v27 + 8))(v13, v9);
      sub_1AE23D80C();
    }

    while (v29(v16, 1, v9) != 1);
  }

  (*(v39 + 8))(v50, v25);
  v36 = v40;
  sub_1ADE10580(v40);
  swift_beginAccess();
  type metadata accessor for Replica(0);
  sub_1ADDD828C(v36);
  sub_1AE017AB8(v36);
  return swift_endAccess();
}

void sub_1AE16E2A4(unint64_t a1, int64_t *a2)
{
  v3 = v2;
  v165 = a1;
  v143 = *v2;
  v5 = v143;
  v160 = sub_1AE23C12C();
  v164 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v159 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for Timestamp(0);
  v135 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v129 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v161 = &v128 - v9;
  v10 = v5[11];
  v149 = sub_1AE23D7CC();
  v168 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v132 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v137 = &v128 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v170 = &v128 - v15;
  v166 = v10;
  v16 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v138 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v140 = &v128 - v20;
  v21 = v5[10];
  v163 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v131 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v151 = &v128 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v144 = &v128 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v139 = &v128 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v128 - v31;
  v33 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v33 - 8);
  v169 = &v128 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v128 - v36;
  v38 = a2[1];
  v142 = *a2;
  v141 = v38;
  v184 = 0;
  swift_beginAccess();
  v39 = v2[5];
  v175 = v5[13];
  if ((v39 & 0xC000000000000001) != 0)
  {
    v40 = sub_1AE23DC1C();
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v162 = v40 | 0x8000000000000000;
  }

  else
  {
    v44 = -1 << *(v39 + 32);
    v42 = ~v44;
    v41 = v39 + 64;
    v45 = -v44;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    v43 = v46 & *(v39 + 64);
    v162 = v39;
  }

  v150 = v3 + 3;
  v174 = (v163 + 56);
  v133 = v42;
  v157 = (v42 + 64) >> 6;
  v173 = (v163 + 16);
  v172 = (v163 + 32);
  v47 = v16;
  v48 = (v16 + 48);
  v148 = (v47 + 32);
  v171 = (v163 + 8);
  v134 = v47;
  v147 = (v47 + 8);
  v145 = v3 + 4;
  v146 = (v168 + 1);

  v167 = 0;
  v153 = v3;
  v49 = v166;
  v168 = v48;
  v50 = v144;
  v156 = v37;
  for (i = v41; ; v41 = i)
  {
    v55 = v170;
    if ((v162 & 0x8000000000000000) != 0)
    {
      if (sub_1AE23DC4C())
      {
        sub_1AE23DFEC();
        swift_unknownObjectRelease();
        v55 = v170;
        goto LABEL_22;
      }

LABEL_26:
      v154 = *v174;
      (v154)(v37, 1, 1, v21);
      v71 = sub_1ADDDCE74(v162);
      v72 = v153;
      MEMORY[0x1EEE9AC00](v71);
      v73 = v166;
      *(&v128 - 6) = v21;
      *(&v128 - 5) = v73;
      v74 = v143;
      v75 = v175;
      *(&v128 - 4) = v143[12];
      *(&v128 - 3) = v75;
      v144 = v74[14];
      v127 = v144;

      v76 = v72;
      v72[5] = sub_1AE23CAAC();

      v77 = v137;
      if ((v165 & 0xC000000000000001) != 0)
      {
        v78 = sub_1AE23DC1C();
        v167 = 0;
        v79 = 0;
        v80 = 0;
        v162 = v78 | 0x8000000000000000;
      }

      else
      {
        v81 = -1 << *(v165 + 32);
        v79 = ~v81;
        v82 = *(v165 + 64);
        v167 = v165 + 64;
        v83 = -v81;
        if (v83 < 64)
        {
          v84 = ~(-1 << v83);
        }

        else
        {
          v84 = -1;
        }

        v80 = v84 & v82;
        v162 = v165;
      }

      v85 = v151;
      v86 = v169;
      v87 = v134;

      swift_beginAccess();
      v170 = 0;
      v136 = v79;
      v88 = (v79 + 64) >> 6;
      v140 = v144 + 24;
      v157 = v164 + 16;
      v156 = (v164 + 8);
      v134 = v144 + 40;
      v133 = (v87 + 16);
      v130 = (v87 + 56);
      v89 = v166;
      for (j = v88; ; v88 = j)
      {
        while (1)
        {
          if ((v162 & 0x8000000000000000) != 0)
          {
            if (!sub_1AE23DC4C())
            {
              v86 = v169;
LABEL_68:
              (v154)(v86, 1, 1, v21);
              sub_1ADDDCE74(v162);
              swift_beginAccess();
              sub_1ADF5F770(v141, &v178);
              sub_1ADF5F770(v142, &v180);
              v176 = v180;
              v177 = BYTE2(v180);
              v125 = &v176;
              MergeResult.merge(_:)(v125);
              swift_endAccess();
              if (v184 == 1)
              {
                v126 = v129;
                sub_1ADE10580(v129);
                swift_beginAccess();
                type metadata accessor for Replica(0);
                sub_1ADDD828C(v126);
                sub_1AE017AB8(v126);
                swift_endAccess();
              }

              return;
            }

            v86 = v169;
            sub_1AE23DFEC();
            swift_unknownObjectRelease();
          }

          else
          {
            v90 = v170;
            if (!v80)
            {
              while (1)
              {
                v91 = (v90 + 1);
                if (__OFADD__(v90, 1))
                {
                  goto LABEL_73;
                }

                if (v91 >= v88)
                {
                  goto LABEL_68;
                }

                v80 = *(v167 + 8 * v91);
                ++v90;
                if (v80)
                {
                  v170 = v91;
                  goto LABEL_42;
                }
              }
            }

            v91 = v170;
LABEL_42:
            v92 = __clz(__rbit64(v80));
            v80 &= v80 - 1;
            (*(v163 + 16))(v86, *(v162 + 48) + *(v163 + 72) * (v92 | (v91 << 6)), v21);
          }

          (v154)(v86, 0, 1, v21);
          (*v172)(v85, v86, v21);
          v93 = v76[5];
          if ((v93 & 0xC000000000000001) != 0)
          {
            break;
          }

          if (*(v93 + 16))
          {

            sub_1ADDFFB6C(v85, v21, v175);
            v97 = v96;

            if (v97)
            {
              goto LABEL_50;
            }
          }

LABEL_51:
          sub_1AE23CB7C();
          if ((*v168)(v77, 1, v89) == 1)
          {
            (*v171)(v85, v21);
            (*v146)(v77, v149);
            goto LABEL_34;
          }

          v143 = v80;
          (*v148)(v138, v77, v89);
          v98 = *v150;
          v99 = *v145;
          v100 = v144;
          v101 = *(v144 + 3);

          v102 = v101(v89, v100);
          v103 = *(v102 + 16);
          if (v103)
          {
            v104 = (*(v135 + 80) + 32) & ~*(v135 + 80);
            v139 = v102;
            v105 = v102 + v104;
            i = *(v135 + 72);
            while (1)
            {
              v106 = v161;
              sub_1ADDF8030(v105, v161, type metadata accessor for Timestamp);
              v107 = *(v106 + *(type metadata accessor for Replica(0) + 20)) ? v99 : v98;
              if (!*(v107 + 16))
              {
                break;
              }

              v108 = sub_1ADDD8A6C(v106);
              if ((v109 & 1) == 0)
              {

                break;
              }

              v110 = v21;
              v111 = v98;
              v112 = v164;
              v113 = v159;
              v114 = v160;
              (*(v164 + 16))(v159, *(v107 + 56) + *(v164 + 72) * v108, v160);

              v115 = sub_1AE23C0CC();
              sub_1AE017AB8(v106);
              v116 = *(v112 + 8);
              v98 = v111;
              v21 = v110;
              v116(v113, v114);
              if ((v115 & 1) == 0)
              {
                goto LABEL_66;
              }

              v105 += i;
              if (!--v103)
              {

                v89 = v166;
                v85 = v151;
                goto LABEL_63;
              }
            }

            sub_1AE017AB8(v106);
LABEL_66:

            v117 = *v145;
            v178 = *v150;
            v179 = v117;
            v118 = v144;
            v119 = *(v144 + 5);

            v120 = v138;
            v89 = v166;
            v121 = v119(v183, v166, v118);
            sub_1ADF777D8(&v178);

            v121(v183, 0);
            v122 = v151;
            (*v173)(v131, v151, v21);
            v123 = v132;
            (*v133)(v132, v120, v89);
            (*v130)(v123, 0, 1, v89);
            v76 = v153;
            swift_beginAccess();
            sub_1AE23CB1C();
            sub_1AE23CB8C();
            swift_endAccess();
            v124 = v120;
            v85 = v122;
            (*v147)(v124, v89);
            (*v171)(v122, v21);
          }

          else
          {

LABEL_63:
            (*v147)(v138, v89);
            (*v171)(v85, v21);
            v76 = v153;
          }

          v77 = v137;
          v86 = v169;
          v88 = j;
          v80 = v143;
        }

        sub_1AE23DFFC();
        v94 = sub_1AE23DC2C();
        swift_unknownObjectRelease();

        v95 = v94;
        v85 = v151;
        v89 = v166;
        if (!v95)
        {
          goto LABEL_51;
        }

LABEL_50:
        (*v171)(v85, v21);
LABEL_34:
        v86 = v169;
      }
    }

    v56 = v167;
    if (v43)
    {
      v57 = v167;
      goto LABEL_19;
    }

LABEL_15:
    v57 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v57 >= v157)
    {
      goto LABEL_26;
    }

    v43 = *(v41 + 8 * v57);
    ++v56;
    if (!v43)
    {
      goto LABEL_15;
    }

    v167 = v57;
LABEL_19:
    v58 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    (*(v163 + 16))(v37, *(v162 + 48) + *(v163 + 72) * (v58 | (v57 << 6)), v21);
LABEL_22:
    (*v174)(v37, 0, 1, v21);
    (*v172)(v32, v37, v21);
    sub_1AE23CB7C();
    v59 = *v48;
    if ((*v48)(v55, 1, v49) == 1)
    {
      (*v146)(v55, v149);
      (*v173)(v50, v32, v21);
      v51 = sub_1AE16CB10(v183);
      sub_1AE23CB1C();
      v52 = sub_1AE23CB6C();
      if (!v59(v53, 1, v49))
      {
        v180 = v142;
        v181 = v141;
        v70 = (*(v143[14] + 40))(&v178, v49);
        sub_1ADF777D8(&v180);
        v70(&v178, 0);
      }

      v52(v182, 0);
      v54 = *v171;
      (*v171)(v50, v21);
      (v51)(v183, 0);
      v54(v32, v21);
      v48 = v168;
    }

    else
    {
      v60 = v140;
      (*v148)(v140, v55, v49);
      v61 = v32;
      v62 = v139;
      (*v173)(v139, v61, v21);
      v154 = sub_1AE16CB10(v183);
      sub_1AE23CB1C();
      j = sub_1AE23CB6C();
      if (!v59(v63, 1, v49))
      {
        v64 = v150;
        swift_beginAccess();
        v65 = *v145;
        v178 = *v64;
        v179 = v65;
        v180 = v142;
        v181 = v141;
        v66 = v143;
        v67 = v143[14];
        v136 = *(v67 + 6);

        v68 = v66[12];
        v127 = v67;
        v49 = v166;
        v136(v60, v61, &v178, &v180, &v184, v21, v68, v166, v127);
      }

      j(v182, 0);
      v69 = *v171;
      (*v171)(v62, v21);
      (v154)(v183, 0);
      (*v147)(v60, v49);
      v69(v61, v21);
      v48 = v168;
      v50 = v144;
      v32 = v61;
    }

    v37 = v156;
  }

  __break(1u);
LABEL_73:
  __break(1u);
}

void sub_1AE16F8E0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v4 = sub_1AE23C88C();
  v102 = *(v4 - 8);
  v103 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v100 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1AE23C8CC();
  v99 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v98 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v95 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v97 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v110 = &v95 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v111 = &v95 - v12;
  v96 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v106 = &v95 - v15;
  v16 = sub_1AE23BFEC();
  v112 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v107 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v95 - v19;
  sub_1ADDF5234(1, &v116);
  v108 = v116;
  v109 = v117;
  v114 = v2;
  if (*(v2 + 48) == a1[6])
  {
  }

  else
  {
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    sub_1AE23D6AC();
    v21 = v116;
    v22 = v117;
    v23 = v118;
    a1 = sub_1AE16CB8C(v116, v117, v118);
    v116 = 0;
    v117 = 0;
    sub_1AE173A7C(v21, v22, v23, 1, &v116);
  }

  v24 = *(v114 + 16);
  v25 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  v26 = v112;
  v27 = v112 + 16;
  v28 = *(v112 + 16);
  v28(v20, v24 + v25, v16);
  v113 = a1;
  v29 = a1[2];
  v30 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  v31 = v107;
  v104 = v28;
  v28(v107, v29 + v30, v16);
  sub_1ADDCEF38(&qword_1ED96A710, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  LOBYTE(v29) = sub_1AE23CCBC();
  v32 = *(v26 + 8);
  v32(v31, v16);
  v32(v20, v16);
  v33 = &unk_1ED96B000;
  if (v29)
  {
LABEL_15:
    v67 = v113;
    swift_beginAccess();
    v68 = v67[5];
    swift_beginAccess();
    v69 = v67[4];
    v116 = v67[3];
    v117 = v69;

    sub_1AE16E2A4(v68, &v116);
    LODWORD(v104) = v70;

    sub_1ADDF5234(1, &v116);
    v107 = v116;
    v112 = v117;
    v71 = v109;
    if (v33[97] != -1)
    {
      swift_once();
    }

    v72 = qword_1ED96F2F8;
    v73 = *(v114 + 16);
    v74 = qword_1ED967EE8;

    v75 = v111;
    if (v74 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1ED96F1F8);
    v76 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
    swift_beginAccess();
    sub_1ADDCEE40(v73 + v76, v75, &unk_1EB5B9E70, &unk_1AE240EC0);
    os_unfair_lock_unlock(&dword_1ED96F1F8);

    v77 = v113[2];

    os_unfair_lock_lock(&dword_1ED96F1F8);
    v78 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
    swift_beginAccess();
    v79 = v77 + v78;
    v80 = v110;
    sub_1ADDCEE40(v79, v110, &unk_1EB5B9E70, &unk_1AE240EC0);
    os_unfair_lock_unlock(&dword_1ED96F1F8);

    if (*(v71 + 16) || *(v112 + 16))
    {
      v114 = *(v72 + 40);
      v81 = v106;
      sub_1ADDCEE40(v75, v106, &unk_1EB5B9E70, &unk_1AE240EC0);
      v82 = v97;
      sub_1ADDCEE40(v80, v97, &unk_1EB5B9E70, &unk_1AE240EC0);
      v83 = *(v95 + 80);
      v84 = (v83 + 56) & ~v83;
      v85 = (v96 + v83 + v84) & ~v83;
      v86 = swift_allocObject();
      v87 = v107;
      v86[2] = v108;
      v86[3] = v71;
      v86[4] = v87;
      v86[5] = v112;
      v86[6] = v72;
      sub_1ADDD2198(v81, v86 + v84, &unk_1EB5B9E70, &unk_1AE240EC0);
      sub_1ADDD2198(v82, v86 + v85, &unk_1EB5B9E70, &unk_1AE240EC0);
      v120 = sub_1ADE4315C;
      v121 = v86;
      v116 = MEMORY[0x1E69E9820];
      v117 = 1107296256;
      v118 = sub_1ADDD2200;
      v119 = &block_descriptor_62;
      v88 = _Block_copy(&v116);

      v89 = v98;
      sub_1AE23C8AC();
      v115 = MEMORY[0x1E69E7CC0];
      sub_1ADDCEF38(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
      sub_1ADDCC7D4(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0, MEMORY[0x1E69E6328]);
      v90 = v100;
      v91 = v103;
      sub_1AE23D8DC();
      MEMORY[0x1B26FBF60](0, v89, v90, v88);
      _Block_release(v88);

      (*(v102 + 8))(v90, v91);
      (*(v99 + 8))(v89, v101);
      sub_1ADDCEDE0(v110, &unk_1EB5B9E70, &unk_1AE240EC0);
      sub_1ADDCEDE0(v111, &unk_1EB5B9E70, &unk_1AE240EC0);

      if (v104)
      {
        goto LABEL_22;
      }
    }

    else
    {

      sub_1ADDCEDE0(v80, &unk_1EB5B9E70, &unk_1AE240EC0);
      sub_1ADDCEDE0(v75, &unk_1EB5B9E70, &unk_1AE240EC0);
      if (v104)
      {
LABEL_22:
        v27 = v105;
        if (qword_1EB5B9920 == -1)
        {
LABEL_23:
          v92 = &word_1EB5D750E;
LABEL_28:
          v93 = *v92;
          v94 = *(v92 + 2);

          *v27 = v93;
          *(v27 + 2) = v94;
          return;
        }

LABEL_30:
        swift_once();
        goto LABEL_23;
      }
    }

    v27 = v105;
    if (qword_1EB5B9528 != -1)
    {
      swift_once();
    }

    v92 = &word_1EB5D74C0;
    goto LABEL_28;
  }

  v34 = v114;
  swift_beginAccess();
  v35 = *(*(v34 + 24) + 16);
  v36 = *(*(v34 + 32) + 16);
  v37 = v35 + v36;
  if (__OFADD__(v35, v36))
  {
    __break(1u);
    goto LABEL_30;
  }

  v38 = v20;
  v40 = v112;
  v39 = v113;
  swift_beginAccess();
  v41 = *(v39[3] + 16);
  v42 = *(v39[4] + 16);
  v43 = __OFADD__(v41, v42);
  v44 = v41 + v42;
  if (!v43)
  {
    v45 = v37 == v44;
    v46 = v37 < v44;
    v47 = v40;
    v48 = v38;
    if (v46 || v45 && (v59 = *(v114 + 16), v60 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity, swift_beginAccess(), v61 = v59 + v60, v62 = v104, v104(v48, v61, v16), v63 = v113[2], v64 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity, swift_beginAccess(), v65 = v107, v62(v107, v63 + v64, v16), LOBYTE(v64) = sub_1ADF5EB00(v48), v66 = v65, v33 = &unk_1ED96B000, v47 = v112, v32(v66, v16), v32(v48, v16), (v64 & 1) != 0))
    {
      v49 = v114;
      v50 = *(v114 + 16);
      v51 = v113[2];
      v52 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
      swift_beginAccess();
      v104(v48, v51 + v52, v16);
      v53 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
      swift_beginAccess();
      v54 = *(v47 + 40);

      v54(v50 + v53, v48, v16);
      swift_endAccess();

      v55 = *(v49 + 16);
      v56 = type metadata accessor for Replica(0);
      v57 = v106;
      (*(*(v56 - 8) + 56))(v106, 1, 1, v56);
      v58 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
      swift_beginAccess();

      sub_1ADDD85E4(v57, v55 + v58);
      swift_endAccess();
    }

    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_1AE1705C0(uint64_t a1)
{
  v2 = v1;
  v111 = *v1;
  v4 = v111;
  v5 = *(v111 + 88);
  v105 = sub_1AE23D7CC();
  v6 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v112 = &v80 - v10;
  v87 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v106 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v85 = &v80 - v14;
  v86 = *(*(v4 + 80) - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v80 - v19;
  v109 = v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v97 = sub_1AE23D7CC();
  v22 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v80 - v25;
  v27 = v2[6];
  v99 = a1;
  if (v27 != *(a1 + 48))
  {
    if (qword_1ED96B308 != -1)
    {
      goto LABEL_36;
    }

    goto LABEL_5;
  }

  v110 = v6;
  v88 = v20;
  v113 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v28 = v2[5];
  v82 = v8;
  v100 = v26;
  if ((v28 & 0xC000000000000001) != 0)
  {
    v29 = sub_1AE23DC1C();
    v95 = 0;
    v30 = 0;
    v31 = 0;
    v94 = v29 | 0x8000000000000000;
  }

  else
  {
    v38 = -1 << *(v28 + 32);
    v30 = ~v38;
    v39 = *(v28 + 64);
    v95 = v28 + 64;
    v40 = -v38;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v31 = v41 & v39;
    v94 = v28;
  }

  v42 = v85;
  v43 = v109;
  v80 = v30;

  swift_beginAccess();
  v44 = 0;
  v108 = (v86 + 32);
  v107 = (v87 + 32);
  v93 = TupleTypeMetadata2 - 8;
  v45 = (v30 + 64) >> 6;
  v84 = v86 + 16;
  v83 = v87 + 16;
  v92 = (v22 + 32);
  v104 = (v87 + 48);
  v81 = (v110 + 16);
  v103 = (v87 + 8);
  v90 = (v86 + 8);
  v89 = (v110 + 8);
  v101 = v17;
  v46 = v95;
  v47 = v94;
  v91 = v45;
  v48 = v31;
  while (1)
  {
    v102 = v48;
    if ((v47 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_1AE23DC3C())
    {
      v62 = v88;
      v60 = v109;
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      v55 = v44;
      v110 = v102;
      goto LABEL_25;
    }

    v66 = 1;
    v57 = v44;
    v110 = v102;
    v63 = TupleTypeMetadata2;
    v65 = v96;
LABEL_26:
    v59 = v100;
LABEL_27:
    v67 = *(v63 - 8);
    (*(v67 + 56))(v65, v66, 1, v63);
    (*v92)(v59, v65, v97);
    if ((*(v67 + 48))(v59, 1, v63) == 1)
    {
      sub_1ADDDCE74(v94);
      return v113;
    }

    v68 = v42;
    v69 = *(v63 + 48);
    v43 = v109;
    (*v108)(v17, v59, v109);
    v70 = &v59[v69];
    v71 = v106;
    (*v107)(v106, v70, v5);

    v72 = v112;
    sub_1AE23CB7C();

    v73 = *v104;
    if ((*v104)(v72, 1, v5) == 1)
    {
      goto LABEL_11;
    }

    v74 = v111;
    v75 = v82;
    (*v81)(v82, v112, v105);
    result = v73(v75, 1, v5);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v51 = *(v74 + 112);
    v76 = *(v51 + 24);
    v77 = v76(v5, v51);
    (*v103)(v75, v5);
    v71 = v106;
    v78 = v76(v5, v51);
    v79 = sub_1ADF77EEC(v78, v77);

    v68 = v85;
    v43 = v109;
    v17 = v101;
    if (v79)
    {
LABEL_11:
      v49 = v111;
      v50 = sub_1ADECE30C(v43, *(*(v111 + 96) + 8));
      sub_1AE00F014(v50);
      v51 = *(v49 + 112);
    }

    v52 = v112;
    v53 = (*(v51 + 64))(v112, v5, v51);
    sub_1AE00F014(v53);
    (*v103)(v71, v5);
    (*v90)(v17, v43);
    (*v89)(v52, v105);
    v44 = v57;
    v48 = v110;
    v46 = v95;
    v47 = v94;
    v45 = v91;
    v42 = v68;
  }

  v54 = v48;
  v55 = v44;
  if (v48)
  {
LABEL_22:
    v110 = (v54 - 1) & v54;
    v60 = v43;
    v61 = __clz(__rbit64(v54)) | (v55 << 6);
    v62 = v88;
    (*(v86 + 16))(v88, *(v47 + 48) + *(v86 + 72) * v61, v60);
    (*(v87 + 16))(v42, *(v47 + 56) + *(v87 + 72) * v61, v5);
LABEL_25:
    v63 = TupleTypeMetadata2;
    v64 = *(TupleTypeMetadata2 + 48);
    v65 = v96;
    (*v108)(v96, v62, v60);
    (*v107)(&v65[v64], v42, v5);
    v66 = 0;
    v57 = v55;
    v17 = v101;
    goto LABEL_26;
  }

  if (v45 <= v44 + 1)
  {
    v56 = v44 + 1;
  }

  else
  {
    v56 = v45;
  }

  v57 = v56 - 1;
  v58 = v44;
  v59 = v100;
  while (1)
  {
    v55 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v55 >= v45)
    {
      v110 = 0;
      v66 = 1;
      v63 = TupleTypeMetadata2;
      v65 = v96;
      goto LABEL_27;
    }

    v54 = *(v46 + 8 * v55);
    ++v58;
    if (v54)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_36:
  swift_once();
LABEL_5:
  sub_1AE23D6AC();
  v32 = v114;
  v33 = v115;
  v34 = v116;
  sub_1AE16CB8C(v114, v115, v116);
  v35 = sub_1AE16CB8C(v32, v33, v34);

  v36 = sub_1AE1705C0(v35);

  return v36;
}

uint64_t sub_1AE1710B0(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v160 = a6;
  v159 = a5;
  v156 = a4;
  v155 = a3;
  v177 = *v6;
  v8 = *(v177 + 80);
  v9 = *(v177 + 88);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v154 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v163 = &v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v158 = &v153 - v13;
  v14 = sub_1AE23C12C();
  v15 = *(v14 - 8);
  v203 = v14;
  v204 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v189 = &v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v196 = &v153 - v18;
  v202 = type metadata accessor for Timestamp(0);
  v161 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v193 = &v153 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v153 - v21;
  v188 = sub_1AE23D7CC();
  v23 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v162 = &v153 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v170 = &v153 - v26;
  v169 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v182 = &v153 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v153 - v30;
  v205 = v8;
  v168 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v181 = &v153 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v180 = &v153 - v35;
  v175 = sub_1AE23D7CC();
  v36 = *(v175 - 1);
  MEMORY[0x1EEE9AC00](v175);
  v164 = &v153 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v174 = &v153 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v173 = &v153 - v41;
  swift_beginAccess();
  v165 = a1;
  v42 = *(a1 + 40);
  if ((v42 & 0xC000000000000001) != 0)
  {
    v43 = sub_1AE23DC1C();
    v179 = 0;
    v44 = 0;
    v45 = 0;
    v178 = v43 | 0x8000000000000000;
  }

  else
  {
    v46 = -1 << *(v42 + 32);
    v44 = ~v46;
    v47 = *(v42 + 64);
    v179 = v42 + 64;
    v48 = -v46;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v45 = v49 & v47;
    v178 = v42;
  }

  v153 = v44;

  swift_beginAccess();
  v176 = v6;
  result = swift_beginAccess();
  v199 = (v168 + 32);
  v198 = (v169 + 32);
  v192 = (v154 + 56);
  v157 = (v44 + 64) >> 6;
  v167 = v168 + 16;
  v166 = v169 + 16;
  v172 = (v36 + 32);
  v191 = (v154 + 48);
  v187 = (v169 + 48);
  v186 = (v169 + 8);
  v185 = (v168 + 8);
  v51 = (v23 + 8);
  v52 = 0;
  v184 = v51;
  v200 = v204 + 8;
  v201 = v204 + 16;
  v197 = v9;
  v183 = TupleTypeMetadata2;
  v190 = v31;
  v53 = v177;
  v54 = v45;
  while (1)
  {
    v171 = v54;
    if ((v178 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_1AE23DC3C())
    {
      v65 = v54;
      v60 = v53;
      v62 = v190;
      v63 = v180;
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      v56 = v52;
      v195 = v65;
      goto LABEL_21;
    }

    v68 = 1;
    v194 = v52;
    v195 = v54;
LABEL_24:
    v67 = v174;
    v69 = v190;
LABEL_25:
    v70 = *v192;
    (*v192)(v67, v68, 1, TupleTypeMetadata2);
    v71 = v173;
    (*v172)(v173, v67, v175);
    v72 = *v191;
    v73 = (*v191)(v71, 1, TupleTypeMetadata2);
    v74 = TupleTypeMetadata2;
    v75 = v182;
    v76 = v181;
    if (v73 == 1)
    {
      v175 = v72;
      v182 = v70;
      sub_1ADDDCE74(v178);
      v99 = v176[5];
      if ((v99 & 0xC000000000000001) != 0)
      {
        v100 = 0;
        v101 = 0;
        v102 = 0;
        v103 = sub_1AE23DC1C() | 0x8000000000000000;
      }

      else
      {
        v104 = -1 << *(v99 + 32);
        v101 = ~v104;
        v100 = (v99 + 64);
        v105 = -v104;
        if (v105 < 64)
        {
          v106 = ~(-1 << v105);
        }

        else
        {
          v106 = -1;
        }

        v102 = v106 & *(v99 + 64);
        v103 = v176[5];
      }

      v107 = v158;
      v108 = v180;
      v173 = v101;

      result = swift_beginAccess();
      v109 = 0;
      v110 = (v101 + 64) >> 6;
      v176 = (v154 + 16);
      v174 = (v154 + 8);
      v181 = v100;
      v179 = v103;
      v178 = v110;
      v111 = v102;
      while (1)
      {
        if ((v103 & 0x8000000000000000) != 0)
        {
          if (!sub_1AE23DC3C())
          {
            (v182)(v164, 1, 1, v183);
            return sub_1ADDDCE74(v179);
          }

          v117 = v107;
          sub_1AE23DFEC();
          swift_unknownObjectRelease();
          v119 = v108;
          v120 = v197;
          sub_1AE23DFEC();
          swift_unknownObjectRelease();
          v113 = v109;
          v196 = v111;
        }

        else
        {
          v112 = v111;
          v113 = v109;
          if (!v111)
          {
            if (v110 <= v109 + 1)
            {
              v114 = v109 + 1;
            }

            else
            {
              v114 = v110;
            }

            v115 = v114 - 1;
            v116 = v109;
            do
            {
              v113 = v116 + 1;
              if (__OFADD__(v116, 1))
              {
                goto LABEL_85;
              }

              if (v113 >= v110)
              {
                v195 = v115;
                v196 = 0;
                v124 = 1;
                v121 = v183;
                v123 = v164;
                goto LABEL_64;
              }

              v112 = *&v100[8 * v113];
              ++v116;
            }

            while (!v112);
          }

          v117 = v107;
          v196 = ((v112 - 1) & v112);
          v118 = __clz(__rbit64(v112)) | (v113 << 6);
          (*(v168 + 16))(v108, *(v103 + 48) + *(v168 + 72) * v118, v205);
          v119 = v108;
          v120 = v197;
          (*(v169 + 16))(v69, *(v103 + 56) + *(v169 + 72) * v118, v197);
        }

        v121 = v183;
        v122 = *(v183 + 48);
        v123 = v164;
        (*v199)(v164, v119, v205);
        (*v198)(&v123[v122], v69, v120);
        v124 = 0;
        v195 = v113;
        v107 = v117;
LABEL_64:
        (v182)(v123, v124, 1, v121);
        if (v175(v123, 1, v121) == 1)
        {
          return sub_1ADDDCE74(v179);
        }

        v125 = *(v121 + 48);
        v126 = v205;
        (*v199)(v107, v123, v205);
        v127 = *v198;
        v194 = v125;
        v128 = v197;
        v127(&v107[v125], &v123[v125], v197);
        v129 = v107;
        v130 = v163;
        (*v176)(v163, v107, v121);
        v131 = v165;

        v132 = v177;
        v133 = v162;
        sub_1AE23CB7C();

        v134 = (*v187)(v133, 1, v128);
        v135 = *(v121 + 48);
        (*v184)(v133, v188);
        (*v186)(&v130[v135], v128);
        (*v185)(v130, v126);
        if (v134 == 1)
        {
          v136 = *(v131 + 24);
          v137 = *(v131 + 32);
          v138 = *(v132 + 112);
          v139 = *(v138 + 24);

          v140 = v139(v128, v138);
          v141 = *(v140 + 16);
          if (v141)
          {
            v142 = (*(v161 + 80) + 32) & ~*(v161 + 80);
            v194 = v140;
            v143 = v140 + v142;
            v144 = *(v161 + 72);
            while (1)
            {
              v145 = v193;
              sub_1ADDF8030(v143, v193, type metadata accessor for Timestamp);
              v146 = *(v145 + *(type metadata accessor for Replica(0) + 20)) ? v137 : v136;
              if (!*(v146 + 16))
              {
                break;
              }

              v147 = sub_1ADDD8A6C(v145);
              if ((v148 & 1) == 0)
              {

                break;
              }

              v150 = v203;
              v149 = v204;
              v151 = v189;
              (*(v204 + 16))(v189, *(v146 + 56) + *(v204 + 72) * v147, v203);

              v152 = sub_1AE23C0CC();
              sub_1AE017AB8(v145);
              (*(v149 + 8))(v151, v150);
              if ((v152 & 1) == 0)
              {
                goto LABEL_80;
              }

              v143 += v144;
              if (!--v141)
              {

                v107 = v158;
                goto LABEL_81;
              }
            }

            sub_1AE017AB8(v145);
LABEL_80:

            v107 = v158;
            v155(v158);
          }

          else
          {
            v107 = v129;
          }

LABEL_81:
          result = (*v174)(v107, v183);
          v109 = v195;
          v111 = v196;
        }

        else
        {
          result = (*v174)(v129, v121);
          v109 = v195;
          v111 = v196;
          v107 = v129;
        }

        v69 = v190;
        v108 = v180;
        v100 = v181;
        v103 = v179;
        v110 = v178;
      }
    }

    v77 = v205;
    v78 = v74;
    v79 = *(v74 + 48);
    (*v199)(v181, v71, v205);
    v9 = v197;
    (*v198)(v75, &v71[v79], v197);
    v80 = v176;

    v81 = v170;
    sub_1AE23CB7C();

    if ((*v187)(v81, 1, v9) == 1)
    {
      (*v184)(v81, v188);
      v82 = v80[3];
      v83 = v80[4];
      v84 = *(v53 + 112);
      v85 = *(v84 + 24);

      v86 = v85(v9, v84);
      v87 = *(v86 + 16);
      if (v87)
      {
        v88 = (*(v161 + 80) + 32) & ~*(v161 + 80);
        v171 = v86;
        v89 = v86 + v88;
        v90 = *(v161 + 72);
        while (1)
        {
          sub_1ADDF8030(v89, v22, type metadata accessor for Timestamp);
          v91 = *&v22[*(type metadata accessor for Replica(0) + 20)] ? v83 : v82;
          if (!*(v91 + 16))
          {
            break;
          }

          v92 = sub_1ADDD8A6C(v22);
          if ((v93 & 1) == 0)
          {

            break;
          }

          v95 = v203;
          v94 = v204;
          v96 = v196;
          (*(v204 + 16))(v196, *(v91 + 56) + *(v204 + 72) * v92, v203);

          v97 = sub_1AE23C0CC();
          sub_1AE017AB8(v22);
          (*(v94 + 8))(v96, v95);
          if ((v97 & 1) == 0)
          {
            goto LABEL_41;
          }

          v89 += v90;
          if (!--v87)
          {

            v53 = v177;
            TupleTypeMetadata2 = v183;
            goto LABEL_38;
          }
        }

        sub_1AE017AB8(v22);
LABEL_41:

        v9 = v197;
        (*v186)(v182, v197);
        result = (*v185)(v181, v205);
        v52 = v194;
        v54 = v195;
        v53 = v177;
        TupleTypeMetadata2 = v183;
      }

      else
      {

        TupleTypeMetadata2 = v183;
LABEL_38:
        v98 = v181;
        v159(v181);
        v9 = v197;
        (*v186)(v182, v197);
        result = (*v185)(v98, v205);
        v52 = v194;
        v54 = v195;
      }
    }

    else
    {
      (*v186)(v75, v9);
      (*v185)(v76, v77);
      result = (*v184)(v81, v188);
      v52 = v194;
      v54 = v195;
      TupleTypeMetadata2 = v78;
    }
  }

  v55 = v54;
  v56 = v52;
  if (v54)
  {
LABEL_18:
    v60 = v53;
    v195 = (v55 - 1) & v55;
    v61 = __clz(__rbit64(v55)) | (v56 << 6);
    v62 = v190;
    v63 = v180;
    v64 = v178;
    (*(v168 + 16))(v180, *(v178 + 48) + *(v168 + 72) * v61, v205);
    (*(v169 + 16))(v62, *(v64 + 56) + *(v169 + 72) * v61, v9);
LABEL_21:
    v66 = *(TupleTypeMetadata2 + 48);
    v67 = v174;
    (*v199)(v174, v63, v205);
    (*v198)(&v67[v66], v62, v9);
    v68 = 0;
    v194 = v56;
    v69 = v62;
    v53 = v60;
    goto LABEL_25;
  }

  if (v157 <= v52 + 1)
  {
    v57 = v52 + 1;
  }

  else
  {
    v57 = v157;
  }

  v58 = v57 - 1;
  v59 = v52;
  while (1)
  {
    v56 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    if (v56 >= v157)
    {
      v194 = v58;
      v195 = 0;
      v68 = 1;
      goto LABEL_24;
    }

    v55 = *(v179 + 8 * v56);
    ++v59;
    if (v55)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

uint64_t sub_1AE17261C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  v4 = v1[3];
  v5 = v1[4];
  if (*(v5 + 16))
  {
    v6 = v1[6];
    v7 = qword_1ED96B308;

    if (v7 != -1)
    {
      swift_once();
    }

    sub_1AE23D6AC();
    if (v6 != v13)
    {
      sub_1AE23D6AC();
      sub_1ADDF8898(v13, v14, v15);
    }
  }

  else
  {
  }

  sub_1ADF637A8(v3, v5);
  if (v8)
  {

    v9 = 0;
  }

  else
  {
    sub_1ADF637A8(v2, v4);
    v11 = v10;

    v9 = v11 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_1AE1727BC(__int128 *a1)
{
  v2 = v1;
  v142 = *v2;
  v4 = v142;
  v5 = v142[11];
  v130 = sub_1AE23D7CC();
  v141 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v114 = v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v129 = v110 - v8;
  v118 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v146 = v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v110 - v12;
  v14 = v4[10];
  v117 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v112 = v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v140 = v110 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v145 = v110 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v143 = v110 - v22;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v132 = sub_1AE23D7CC();
  v135 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v136 = v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v131 = v110 - v26;
  v27 = a1[1];
  v154 = *a1;
  v155 = v27;
  v156 = a1[2];
  if (qword_1ED96B308 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    sub_1AE23D6AC();
    v28 = v149;
    swift_beginAccess();
    v29 = v2[4];
    v30 = *(v29 + 16);
    v144 = TupleTypeMetadata2;
    if (v30 && v2[6] != v28)
    {
      sub_1AE23D6AC();
      v31 = v149;
      v32 = BYTE8(v149);
      v149 = 0uLL;
      sub_1AE173A7C(v31, v32, v150, 0, &v149);

      v29 = v2[4];
    }

    v2[6] = v28;
    v33 = v2[3];
    *v159 = v154;
    v34 = *(&v154 + 1);

    sub_1ADDD7B0C(v159, &v149);
    sub_1ADF637A8(v34, v29);
    if (v35)
    {
      sub_1AE18009C(v159);

      return 0;
    }

    sub_1ADF637A8(v159[0], v33);
    v38 = v37;
    sub_1AE18009C(v159);

    if (v38)
    {
      return 0;
    }

    v39 = v2[3];
    v40 = v2[4];
    v158 = v155;
    v41 = *(&v155 + 1);
    sub_1ADDD7B0C(&v158, &v149);
    sub_1ADDD7B0C(&v158, &v149);

    sub_1ADF637A8(v41, v40);
    if ((v42 & 1) == 0)
    {
      break;
    }

    sub_1AE18009C(&v158);

LABEL_12:
    v127 = v13;
    v139 = v110;
    v157 = *(&v156 + 1);
    *&v149 = *(&v156 + 1);
    MEMORY[0x1EEE9AC00](v43);
    v110[-2] = v2;
    v110[-1] = &v154;
    MEMORY[0x1EEE9AC00](v46);
    v138 = &v110[-10];
    v110[-8] = v14;
    v110[-7] = v5;
    v47 = v142;
    v48 = v142[13];
    v123 = v142[12];
    v110[-6] = v123;
    v110[-5] = v48;
    v49 = v47[14];
    v110[-4] = v49;
    v110[-3] = sub_1AE1800F0;
    v110[-2] = v50;
    swift_getAssociatedTypeWitness();
    v125 = v48;
    v51 = sub_1AE23CB1C();

    v52 = swift_getTupleTypeMetadata2();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    WitnessTable = swift_getWitnessTable();
    v55 = sub_1ADE08EB0(sub_1AE18010C, v138, v51, v52, v53, WitnessTable, MEMORY[0x1E69E7288], v147);
    v137 = v49;
    v56 = v55;
    (*(*(v51 - 8) + 8))(&v157, v51);
    *&v149 = v56;
    sub_1AE23D11C();
    swift_getWitnessTable();
    v153 = sub_1AE23CA4C();
    swift_beginAccess();
    v57 = v2[5];
    v110[1] = v2;
    if ((v57 & 0xC000000000000001) != 0)
    {
      v58 = sub_1AE23DC1C();
      v124 = 0;
      v59 = 0;
      v60 = 0;
      v126 = v58 | 0x8000000000000000;
    }

    else
    {
      v61 = -1 << *(v57 + 32);
      v59 = ~v61;
      v62 = *(v57 + 64);
      v124 = v57 + 64;
      v63 = -v61;
      if (v63 < 64)
      {
        v64 = ~(-1 << v63);
      }

      else
      {
        v64 = -1;
      }

      v60 = v64 & v62;
      v126 = v57;
    }

    v65 = v140;
    v66 = v143;
    TupleTypeMetadata2 = v144;
    v139 = (v117 + 32);
    v138 = (v118 + 32);
    v121 = v144 - 8;
    v110[0] = v59;
    v122 = (v59 + 64) >> 6;
    v2 = (v117 + 16);
    v119 = (v118 + 16);
    v120 = v135 + 4;
    v134 = (v118 + 48);
    v116 = (v141 + 8);
    v113 = v137 + 40;
    v111 = (v118 + 56);
    v133 = (v118 + 8);
    v115 = (v117 + 8);

    v13 = 0;
    v135 = v2;
    v67 = v60;
    while (1)
    {
      v68 = v126;
      v128 = v67;
      if ((v126 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_1AE23DC3C())
      {
        v66 = v143;
        sub_1AE23DFEC();
        swift_unknownObjectRelease();
        v76 = v127;
        sub_1AE23DFEC();
        swift_unknownObjectRelease();
        v70 = v13;
        v142 = v128;
        goto LABEL_35;
      }

      v78 = 1;
      v141 = v13;
      v142 = v128;
      TupleTypeMetadata2 = v144;
      v74 = v136;
LABEL_36:
      v79 = v131;
      v80 = *(TupleTypeMetadata2 - 8);
      (*(v80 + 56))(v74, v78, 1, TupleTypeMetadata2);
      (*v120)(v79, v74, v132);
      if ((*(v80 + 48))(v79, 1, TupleTypeMetadata2) == 1)
      {
        sub_1ADDDCE74(v126);
        v149 = v158;

        sub_1AE16E2A4(v109, &v149);

        return 1;
      }

      v81 = *(TupleTypeMetadata2 + 48);
      v82 = v145;
      (*v139)(v145, v79, v14);
      (*v138)(v146, &v79[v81], v5);
      v83 = v129;
      v84 = v125;
      sub_1AE23CB7C();
      v85 = *v134;
      LODWORD(v81) = (*v134)(v83, 1, v5);
      (*v116)(v83, v130);
      if (v81 == 1)
      {
        v128 = v85;
        v86 = *v119;
        v87 = v127;
        (*v119)(v127, v146, v5);
        v147[0] = *v159;
        v88 = v14;
        v89 = v137;
        v90 = *(v137 + 40);
        sub_1ADDD7B0C(v159, &v149);
        v91 = v89;
        v14 = v88;
        v92 = v90(&v149, v5, v91);
        sub_1ADF7845C(v147);

        v92(&v149, 0);
        (*v135)(v143, v145, v88);
        v93 = v114;
        v86(v114, v87, v5);
        v85 = v128;
        v82 = v145;
        (*v111)(v93, 0, 1, v5);
        sub_1AE23CB1C();
        sub_1AE23CB8C();
        v94 = v87;
        v65 = v140;
        (*v133)(v94, v5);
      }

      *&v149 = v14;
      *(&v149 + 1) = v5;
      v150 = v123;
      v151 = v84;
      v152 = v137;
      type metadata accessor for CRSetRefMergeableDelta.RemovedVersion(0, &v149);
      sub_1AE23CB7C();
      v95 = *&v147[0];
      v2 = v135;
      if (*&v147[0] == 1)
      {
        (*v133)(v146, v5);
        (*v115)(v82, v14);
        v13 = v141;
        v67 = v142;
        goto LABEL_21;
      }

      v96 = *v135;
      if (*&v147[0])
      {
        v96(v65, v82, v14);
        sub_1AE23CB1C();
        v97 = v82;
        v98 = sub_1AE23CB6C();
        if (v85(v99, 1, v5))
        {
          sub_1AE180144(v95);
        }

        else
        {
          v107 = (*(v137 + 40))(v147, v5);
          sub_1ADF78130(v95);
          sub_1AE180144(v95);
          v107(v147, 0);
        }

        v98(&v149, 0);
        v108 = *v115;
        (*v115)(v65, v14);
        (*v133)(v146, v5);
        v108(v97, v14);
        v13 = v141;
        v67 = v142;
        v66 = v143;
        TupleTypeMetadata2 = v144;
      }

      else
      {
        v100 = v112;
        v96(v112, v82, v14);
        sub_1AE23CB1C();
        v101 = sub_1AE23CB6C();
        if (!v85(v102, 1, v5))
        {
          v148 = v158;
          v103 = v137;
          v104 = *(v137 + 40);
          sub_1ADDD7B0C(&v158, v147);
          v105 = v104(v147, v5, v103);
          sub_1ADF777D8(&v148);

          v105(v147, 0);
        }

        v101(&v149, 0);
        v106 = *v115;
        (*v115)(v100, v14);
        (*v133)(v146, v5);
        v106(v82, v14);
        v13 = v141;
        v67 = v142;
        v65 = v140;
LABEL_21:
        v66 = v143;
        TupleTypeMetadata2 = v144;
      }
    }

    v69 = v67;
    v70 = v13;
    if (v67)
    {
LABEL_32:
      v142 = ((v69 - 1) & v69);
      v75 = __clz(__rbit64(v69)) | (v70 << 6);
      (*(v117 + 16))(v66, *(v68 + 48) + *(v117 + 72) * v75, v14);
      v76 = v127;
      (*(v118 + 16))(v127, *(v68 + 56) + *(v118 + 72) * v75, v5);
LABEL_35:
      TupleTypeMetadata2 = v144;
      v77 = *(v144 + 48);
      v74 = v136;
      (*v139)(v136, v66, v14);
      (*v138)(&v74[v77], v76, v5);
      v78 = 0;
      v141 = v70;
      v65 = v140;
      goto LABEL_36;
    }

    if (v122 <= (v13 + 1))
    {
      v71 = v13 + 1;
    }

    else
    {
      v71 = v122;
    }

    v72 = v71 - 1;
    v73 = v13;
    v74 = v136;
    while (1)
    {
      v70 = (v73 + 1);
      if (__OFADD__(v73, 1))
      {
        break;
      }

      if (v70 >= v122)
      {
        v141 = v72;
        v142 = 0;
        v78 = 1;
        goto LABEL_36;
      }

      v69 = *(v124 + 8 * v70);
      ++v73;
      if (v69)
      {
        v68 = v126;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_53:
    swift_once();
  }

  sub_1ADF637A8(v158, v39);
  v45 = v44;
  sub_1AE18009C(&v158);

  if (v45)
  {
    goto LABEL_12;
  }

  sub_1AE18009C(&v158);
  return 1;
}

uint64_t sub_1AE1738A8(void *a1)
{
  v2 = v1;
  if (*(v1 + 48) == a1[6])
  {
    swift_beginAccess();
    v4 = *(v1 + 24);
    v5 = *(v2 + 32);
    swift_beginAccess();
    v7 = a1[3];
    v6 = a1[4];

    sub_1ADF637A8(v5, v6);
    if (v8)
    {

      v9 = 1;
    }

    else
    {
      sub_1ADF637A8(v4, v7);
      v9 = v11;
    }
  }

  else
  {
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    sub_1AE23D6AC();
    sub_1AE16CB8C(v13, v14, v15);
    v10 = sub_1AE16CB8C(v13, v14, v15);

    v9 = sub_1AE1738A8(v10);
  }

  return v9 & 1;
}

void sub_1AE173A7C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t *a5)
{
  v11 = sub_1AE23C88C();
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1AE23C8CC();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v58 = &v46 - v25;
  v27 = *a5;
  v26 = a5[1];
  if (a4)
  {

    sub_1AE177450(v27, v26, v5, a1, a2 & 1, a3);
  }

  else
  {
    v47 = v24;
    v48 = v23;
    sub_1ADDF5234(0, &aBlock);
    v57 = aBlock;
    sub_1AE177450(v27, v26, v5, a1, a2 & 1, a3);
    sub_1ADDF5234(0, &aBlock);
    v56 = aBlock;
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    v28 = qword_1ED96F2F8;
    v29 = v5[2];
    v30 = qword_1ED967EE8;

    if (v30 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1ED96F1F8);
    v31 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
    swift_beginAccess();
    v32 = v29 + v31;
    v33 = v58;
    sub_1ADDCEE40(v32, v58, &unk_1EB5B9E70, &unk_1AE240EC0);
    os_unfair_lock_unlock(&dword_1ED96F1F8);

    v34 = type metadata accessor for Replica(0);
    (*(*(v34 - 8) + 56))(v21, 1, 1, v34);
    v35 = *(*(&v57 + 1) + 16);
    v49 = *(&v56 + 1);
    if (v35 || *(v49 + 16))
    {
      v46 = *(v28 + 40);
      sub_1ADDCEE40(v33, v18, &unk_1EB5B9E70, &unk_1AE240EC0);
      v36 = v48;
      sub_1ADDCEE40(v21, v48, &unk_1EB5B9E70, &unk_1AE240EC0);
      v37 = v47[80];
      v38 = (v37 + 56) & ~v37;
      v47 = v21;
      v39 = (v15 + v37 + v38) & ~v37;
      v40 = swift_allocObject();
      v41 = v56;
      *(v40 + 16) = v57;
      *(v40 + 32) = v41;
      *(v40 + 48) = v28;
      sub_1ADDD2198(v18, v40 + v38, &unk_1EB5B9E70, &unk_1AE240EC0);
      sub_1ADDD2198(v36, v40 + v39, &unk_1EB5B9E70, &unk_1AE240EC0);
      v63 = sub_1ADE42B98;
      v64 = v40;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v61 = sub_1ADDD2200;
      v62 = &block_descriptor_11;
      v42 = _Block_copy(&aBlock);

      v43 = v50;
      sub_1AE23C8AC();
      v59 = MEMORY[0x1E69E7CC0];
      sub_1ADDCEF38(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
      sub_1ADDCC7D4(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0, MEMORY[0x1E69E6328]);
      v44 = v52;
      v45 = v55;
      sub_1AE23D8DC();
      MEMORY[0x1B26FBF60](0, v43, v44, v42);
      _Block_release(v42);

      (*(v54 + 8))(v44, v45);
      (*(v51 + 8))(v43, v53);
      sub_1ADDCEDE0(v47, &unk_1EB5B9E70, &unk_1AE240EC0);
      sub_1ADDCEDE0(v58, &unk_1EB5B9E70, &unk_1AE240EC0);
    }

    else
    {

      sub_1ADDCEDE0(v21, &unk_1EB5B9E70, &unk_1AE240EC0);
      sub_1ADDCEDE0(v33, &unk_1EB5B9E70, &unk_1AE240EC0);
    }
  }
}

void sub_1AE1741D4(uint64_t a1)
{
  v2 = v1;
  v56 = a1;
  v3 = sub_1AE23C88C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AE23C8CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v54 = *(v11 - 8);
  v12 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v55 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v46 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v57 = v46 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v58 = v46 - v19;
  swift_beginAccess();
  v20 = *(v2 + 32);
  if (*(v20 + 16))
  {
    v47 = v10;
    v48 = v8;
    v49 = v6;
    v50 = v7;
    v51 = v4;
    v52 = v3;
    v21 = *(v2 + 24);
    v22 = qword_1ED96B308;

    v24 = v20;
    v53 = v21;
    if (v22 != -1)
    {
      v23 = swift_once();
      v21 = *(v2 + 24);
      v24 = *(v2 + 32);
    }

    v25 = qword_1ED96F2F8;
    MEMORY[0x1EEE9AC00](v23);
    v46[-4] = v21;
    v46[-3] = v24;
    v26 = v56;
    v46[-2] = v25;
    v46[-1] = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
    sub_1AE23D6AC();

    v27 = aBlock;
    v28 = v61;
    v29 = v63;
    v30 = v64;
    aBlock = v63;
    v61 = v64;
    sub_1AE173A7C(v27, v28, v62, 1, &aBlock);

    sub_1ADE42CB8(v29, v30);
    v31 = *(v2 + 24);
    v32 = *(v2 + 32);
    v56 = v31;
    v33 = type metadata accessor for Replica(0);
    v34 = *(*(v33 - 8) + 56);
    v35 = v58;
    v34(v58, 1, 1, v33);
    v36 = v57;
    v34(v57, 1, 1, v33);
    if (*(v20 + 16) || *(v32 + 16))
    {
      v46[1] = *(v25 + 40);
      sub_1ADDCEE40(v35, v15, &unk_1EB5B9E70, &unk_1AE240EC0);
      v37 = v55;
      sub_1ADDCEE40(v36, v55, &unk_1EB5B9E70, &unk_1AE240EC0);
      v38 = *(v54 + 80);
      v39 = (v38 + 56) & ~v38;
      v40 = (v12 + v38 + v39) & ~v38;
      v41 = swift_allocObject();
      v41[2] = v53;
      v41[3] = v20;
      v41[4] = v56;
      v41[5] = v32;
      v41[6] = v25;
      sub_1ADDD2198(v15, v41 + v39, &unk_1EB5B9E70, &unk_1AE240EC0);
      sub_1ADDD2198(v37, v41 + v40, &unk_1EB5B9E70, &unk_1AE240EC0);
      v64 = sub_1ADE4315C;
      v65 = v41;
      aBlock = MEMORY[0x1E69E9820];
      v61 = 1107296256;
      v62 = sub_1ADDD2200;
      v63 = &block_descriptor_53;
      v42 = _Block_copy(&aBlock);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v43 = v47;
      sub_1AE23C8AC();
      v59 = MEMORY[0x1E69E7CC0];
      sub_1ADDCEF38(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
      sub_1ADDCC7D4(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0, MEMORY[0x1E69E6328]);
      v44 = v49;
      v45 = v52;
      sub_1AE23D8DC();
      MEMORY[0x1B26FBF60](0, v43, v44, v42);
      _Block_release(v42);

      (*(v51 + 8))(v44, v45);
      (*(v48 + 8))(v43, v50);
      sub_1ADDCEDE0(v57, &unk_1EB5B9E70, &unk_1AE240EC0);
      sub_1ADDCEDE0(v58, &unk_1EB5B9E70, &unk_1AE240EC0);
    }

    else
    {

      sub_1ADDCEDE0(v36, &unk_1EB5B9E70, &unk_1AE240EC0);
      sub_1ADDCEDE0(v35, &unk_1EB5B9E70, &unk_1AE240EC0);
    }
  }
}

void sub_1AE174904(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v62 = a6;
  v63 = a7;
  v61 = a5;
  v14 = a1[3];
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v14)
  {
    v17 = a1[4];
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v14, a1[4]);

  sub_1ADDD6748(v16, v17, a2, &v64);
  if (v8)
  {

    sub_1ADFAECE8(a1);
  }

  else
  {
    v60 = v64;
    v58 = a8;
    v59 = v65;
    v19 = a1[8];
    v18 = a1[9];
    if (v19)
    {
      v20 = a1[8];
    }

    else
    {
      v20 = v15;
    }

    if (v19)
    {
      v15 = a1[9];
    }

    sub_1ADE42C78(v19, v18);
    sub_1ADDD6748(v20, v15, a2, &v64);
    v54 = &v49;
    v55 = v65;
    v56 = v64;
    v72 = a1[1];
    v64 = v72;
    MEMORY[0x1EEE9AC00](v72);
    v43 = a3;
    v44 = a4;
    v45 = v61;
    v46 = v62;
    v57 = a1;
    v21 = a2;
    v22 = a4;
    v47 = v63;
    v48 = v21;

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BBB90, &unk_1AE24EC40);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v53 = a3;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    v26 = sub_1ADDCC7D4(qword_1ED969F40, qword_1EB5BBB90, &unk_1AE24EC40, MEMORY[0x1E69E6340]);
    v27 = sub_1ADE08EB0(sub_1AE17FFFC, v42, v23, TupleTypeMetadata2, v25, v26, MEMORY[0x1E69E7288], &v70);
    v49 = v26;
    v50 = v25;
    v28 = v61;
    v51 = v21;
    v29 = sub_1ADDCEDE0(&v72, qword_1EB5BBB90, &unk_1AE24EC40);
    v64 = v27;
    MEMORY[0x1EEE9AC00](v29);
    v43 = v53;
    v44 = v22;
    v54 = v22;
    v30 = v62;
    v45 = v28;
    v46 = v62;
    v47 = v63;
    sub_1AE23D11C();
    swift_getWitnessTable();
    v31 = sub_1AE23CB2C();
    AssociatedTypeWitness = &v49;
    v70 = v57[2];
    v71 = v70;
    MEMORY[0x1EEE9AC00](v70);
    v32 = v53;
    v33 = v54;
    v43 = v53;
    v44 = v54;
    v45 = v28;
    v46 = v30;
    v34 = v63;
    v47 = v63;
    v48 = v51;

    v64 = v32;
    v65 = v33;
    v66 = v28;
    v67 = v30;
    v68 = v34;
    type metadata accessor for CRSetRefMergeableDelta.RemovedVersion(255, &v64);
    v35 = swift_getTupleTypeMetadata2();
    v36 = sub_1ADE08EB0(sub_1AE180028, v42, v23, v35, v50, v49, MEMORY[0x1E69E7288], &v69);
    sub_1ADFAECE8(v57);
    v37 = sub_1ADDCEDE0(&v71, qword_1EB5BBB90, &unk_1AE24EC40);
    v64 = v36;
    MEMORY[0x1EEE9AC00](v37);
    v43 = v53;
    v44 = v54;
    v45 = v28;
    v46 = v30;
    v47 = v63;
    sub_1AE23D11C();
    swift_getWitnessTable();
    v38 = sub_1AE23CB2C();

    v39 = v55;
    v40 = v58;
    *v58 = v56;
    v40[1] = v39;
    v41 = v59;
    v40[2] = v60;
    v40[3] = v41;
    v40[4] = v38;
    v40[5] = v31;
  }
}

uint64_t sub_1AE174F20@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v4;
  v58 = a3;
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 5);
  v61 = *(v3 + 4);
  v67 = v8;
  *v66 = *(a1 + 16);
  v10 = *(*(&v8 + 1) + 16);
  v11 = *(&v7 + 1);
  v12 = &unk_1ED96B000;
  v64 = a1;
  v85 = v9;
  *&v66[8] = v7;
  if (v10)
  {
    v13 = qword_1ED96B308;

    if (v13 != -1)
    {
      v14 = swift_once();
    }

    MEMORY[0x1EEE9AC00](v14);
    v54 = v67;
    v55 = v15;
    v56 = *v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
    sub_1AE23D6AC();

    v16 = v77;
    v17 = v64;
    v9 = v85;
    v12 = &unk_1ED96B000;
  }

  else
  {
    v17 = a1;

    v16 = v67;
  }

  v75 = v16;
  sub_1ADDF5C7C(v17);
  v65 = v18;
  *&v67 = v19;

  v20 = sub_1ADE42CB8(0, 0);
  if (*(v11 + 16))
  {
    if (v12[97] != -1)
    {
      v20 = swift_once();
    }

    *&v21 = MEMORY[0x1EEE9AC00](v20);
    v54 = v21;
    v55 = v22;
    v56 = *v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
    sub_1AE23D6AC();
    v63 = v5;

    v23 = *(&v77 + 1);
  }

  else
  {
    v63 = v5;
    v23 = *&v66[16];
  }

  *(&v75 + 1) = v23;
  sub_1ADDF5C7C(v17);
  *v66 = v24;
  *&v66[8] = v25;

  v26 = sub_1ADE42CB8(0, 0);
  v62 = &v57;
  *&v75 = v9;
  MEMORY[0x1EEE9AC00](v26);
  v27 = v17;
  v28 = a2[3];
  v52 = a2[2];
  v29 = v52;
  v53 = v28;
  v30 = a2[5];
  *&v54 = a2[4];
  *(&v54 + 1) = v30;
  v55 = a2[6];
  v31 = v55;
  v56 = v27;
  MEMORY[0x1EEE9AC00](v32);
  v51[2] = v52;
  v51[3] = v28;
  v59 = v33;
  v51[4] = v33;
  v51[5] = v30;
  v51[6] = v55;
  v51[7] = sub_1AE17FF60;
  v51[8] = v34;
  swift_getAssociatedTypeWitness();
  v35 = sub_1AE23CB1C();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  WitnessTable = swift_getWitnessTable();
  v60 = v36;
  v38 = v63;
  v39 = sub_1ADE08EB0(sub_1AE17FF84, v51, v35, &type metadata for Proto_Set.Element, v36, WitnessTable, MEMORY[0x1E69E7288], &v69);
  if (v38)
  {

    *&v75 = 0;
    *(&v75 + 1) = MEMORY[0x1E69E7CC0];
    v76 = MEMORY[0x1E69E7CC0];
    *&v77 = v65;
    v78 = 0;
    v79 = 0;
    *(&v77 + 1) = v67;
    v80 = 1;
    *v81 = v84[0];
    *&v81[3] = *(v84 + 3);
    v82 = *v66;
    v83 = *&v66[8];
    return sub_1ADFAECE8(&v75);
  }

  else
  {
    v40 = v39;

    v85 = v51;
    v74[1] = v61;
    MEMORY[0x1EEE9AC00](v41);
    v63 = &v51[-8];
    v51[-6] = v29;
    v51[-5] = v28;
    v42 = v59;
    v51[-4] = v59;
    v51[-3] = v30;
    v43 = v64;
    v51[-2] = v31;
    v51[-1] = v43;

    *&v75 = v29;
    *(&v75 + 1) = v28;
    v76 = v42;
    *&v77 = v30;
    *(&v77 + 1) = v31;
    type metadata accessor for CRSetRefMergeableDelta.RemovedVersion(255, &v75);
    v44 = sub_1AE23CB1C();
    v45 = swift_getWitnessTable();
    v47 = sub_1ADE08EB0(sub_1AE17FFBC, v63, v44, &type metadata for Proto_Set.Element, v60, v45, MEMORY[0x1E69E7288], v74);

    *&v69 = 0;
    *(&v69 + 1) = v40;
    *&v70 = v47;
    *(&v70 + 1) = v65;
    *&v72 = 0;
    v71 = v67;
    BYTE8(v72) = 1;
    *(&v72 + 9) = v84[0];
    HIDWORD(v72) = *(v84 + 3);
    v73 = *v66;
    *&v75 = 0;
    *(&v75 + 1) = v40;
    v76 = v47;
    *&v77 = v65;
    v78 = 0;
    v79 = 0;
    *(&v77 + 1) = v67;
    v80 = 1;
    *v81 = v84[0];
    *&v81[3] = *(v84 + 3);
    v82 = *v66;
    v83 = *&v66[8];
    sub_1ADFAEE10(&v69, &v68);
    result = sub_1ADFAECE8(&v75);
    v48 = v72;
    v49 = v58;
    v58[2] = v71;
    v49[3] = v48;
    v49[4] = v73;
    v50 = v70;
    *v49 = v69;
    v49[1] = v50;
  }

  return result;
}