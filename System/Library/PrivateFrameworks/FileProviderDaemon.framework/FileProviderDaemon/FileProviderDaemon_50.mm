uint64_t sub_1CF552C5C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, void, void, void))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(a1, v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1CF552D9C(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF54B9FC(a1, v5, v6, v7, v1 + v4, v8);
}

uint64_t objectdestroy_201Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_204Tm()
{
  v1 = sub_1CF9E6448();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  sub_1CF540FDC(*(v0 + 56));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF55301C(uint64_t a1)
{
  v3 = *(type metadata accessor for Signpost(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF5B9F38(a1, v1 + v4, v5);
}

uint64_t objectdestroy_306Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v132 = *(*(v1 - 8) + 80);
  v133 = v1;

  v2 = v0 + ((v132 + 40) & ~v132);
  *(v2 + 40), v3, v4, v5, v6, v7, v8, v9;
  v10 = type metadata accessor for VFSItem(0);
  v11 = v2 + v10[7];
  v12 = type metadata accessor for ItemMetadata(0);
  v13 = v12[7];
  v14 = sub_1CF9E5CF8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(v11 + v13, v14);
  v16(v11 + v12[8], v14);
  *(v11 + v12[14] + 8), v17, v18, v19, v20, v21, v22, v23;
  v24 = v12[30];
  if (!(*(v15 + 48))(v11 + v24, 1, v14))
  {
    v16(v11 + v24, v14);
  }

  *(v11 + v12[31]), v25, v26, v27, v28, v29, v30, v31;
  *(v11 + v12[33]), v32, v33, v34, v35, v36, v37, v38;
  v45 = (v11 + v12[34]);
  v46 = v45[1];
  if (v46 >> 60 != 15)
  {
    sub_1CEFE4714(*v45, v46);
  }

  *(v11 + v12[38] + 8), v46, v39, v40, v41, v42, v43, v44;
  v47 = v2 + v10[8];
  v48 = *(v47 + 16);
  if (v48 != 1)
  {

    *(v47 + 48), v49, v50, v51, v52, v53, v54, v55;
    *(v47 + 64), v56, v57, v58, v59, v60, v61, v62;
    *(v47 + 88), v63, v64, v65, v66, v67, v68, v69;

    *(v47 + 120), v70, v71, v72, v73, v74, v75, v76;
    *(v47 + 136), v77, v78, v79, v80, v81, v82, v83;
    *(v47 + 152), v84, v85, v86, v87, v88, v89, v90;
    *(v47 + 168), v91, v92, v93, v94, v95, v96, v97;
    *(v47 + 184), v98, v99, v100, v101, v102, v103, v104;
    v112 = *(v47 + 192);
    if (v112)
    {
      v112, v105, v106, v107, v108, v109, v110, v111;
      *(v47 + 200), v113, v114, v115, v116, v117, v118, v119;
    }

    *(v47 + 224), v105, v106, v107, v108, v109, v110, v111;
    *(v47 + 240), v120, v121, v122, v123, v124, v125, v126;
  }

  v127 = v10[12];
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v128 - 8) + 48))(v2 + v127, 1, v128))
  {
    v129 = sub_1CF9E5A58();
    v130 = *(v129 - 8);
    if (!(*(v130 + 48))(v2 + v127, 1, v129))
    {
      (*(v130 + 8))(v2 + v127, v129);
    }
  }

  return swift_deallocObject();
}

void sub_1CF553440(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_1CF54C7A8(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_161Tm()
{

  sub_1CF540FDC(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{

  sub_1CF540FDC(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t objectdestroy_11Tm()
{

  sub_1CF540FDC(*(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1CF553650(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedConformanceWitness();
  result = type metadata accessor for FPFSID(319, &AssociatedTypeWitness);
  if (v2 <= 0x3F)
  {
    v8 = 0;
    AssociatedTypeWitness = result;
    result = sub_1CF9E75D8();
    if (v3 <= 0x3F)
    {
      v9 = 0;
      v5 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF553798(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v5 + 80);
  v11 = *(v5 + 64);
  if (!v7)
  {
    ++v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
    goto LABEL_31;
  }

  v12 = v11 + ((v10 + 8) & ~v10);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((a2 - v9 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_31:
      if ((v8 & 0x80000000) != 0)
      {
        v19 = (*(v6 + 48))((a1 + v10 + 8) & ~v10);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_31;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v9 + (v12 | v17) + 1;
}

void sub_1CF553978(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  v11 = *(v8 + 80);
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10;
  }

  if (v9)
  {
    v13 = *(v8 + 64);
  }

  else
  {
    v13 = *(v8 + 64) + 1;
  }

  v14 = ((v11 + 8) & ~v11) + v13;
  if (a3 <= v12)
  {
    goto LABEL_20;
  }

  if (v14 <= 3)
  {
    v15 = ((a3 - v12 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
    if (HIWORD(v15))
    {
      v7 = 4;
      if (v12 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v15 >= 2)
    {
      v7 = v16;
    }

    else
    {
      v7 = 0;
    }

LABEL_20:
    if (v12 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v7 = 1;
  if (v12 >= a2)
  {
LABEL_30:
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        *&a1[v14] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v14] = 0;
    }

    else if (v7)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      if ((v10 & 0x80000000) != 0)
      {
        v21 = (&a1[v11 + 8] & ~v11);
        if (v10 >= a2)
        {
          v25 = *(v8 + 56);

          v25(v21, a2 + 1);
        }

        else
        {
          if (v13 <= 3)
          {
            v22 = ~(-1 << (8 * v13));
          }

          else
          {
            v22 = -1;
          }

          if (v13)
          {
            v23 = v22 & (~v10 + a2);
            if (v13 <= 3)
            {
              v24 = v13;
            }

            else
            {
              v24 = 4;
            }

            bzero(v21, v13);
            if (v24 > 2)
            {
              if (v24 == 3)
              {
                *v21 = v23;
                v21[2] = BYTE2(v23);
              }

              else
              {
                *v21 = v23;
              }
            }

            else if (v24 == 1)
            {
              *v21 = v23;
            }

            else
            {
              *v21 = v23;
            }
          }
        }
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *a1 = v20;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v17 = ~v12 + a2;
  if (v14 >= 4)
  {
    bzero(a1, ((v11 + 8) & ~v11) + v13);
    *a1 = v17;
    v18 = 1;
    if (v7 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v18 = (v17 >> (8 * v14)) + 1;
  if (!v14)
  {
LABEL_59:
    if (v7 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v19 = v17 & ~(-1 << (8 * v14));
  bzero(a1, v14);
  if (v14 == 3)
  {
    *a1 = v19;
    a1[2] = BYTE2(v19);
    goto LABEL_59;
  }

  if (v14 == 2)
  {
    *a1 = v19;
    if (v7 > 1)
    {
LABEL_63:
      if (v7 == 2)
      {
        *&a1[v14] = v18;
      }

      else
      {
        *&a1[v14] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v7 > 1)
    {
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v7)
  {
    a1[v14] = v18;
  }
}

uint64_t sub_1CF553C94(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_1CF9E75D8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF553D50(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = a3[2];
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  v14 = *(v9 + 80);
  v15 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v11)
  {
    ++v15;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v6 + 64) + v14;
  if (a2 > v13)
  {
    v17 = v15 + (v16 & ~v14) + 2;
    v18 = 8 * v17;
    if (v17 > 3)
    {
      goto LABEL_14;
    }

    v20 = ((a2 - v13 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v20))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v20 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v20 >= 2)
    {
LABEL_14:
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_34;
      }

LABEL_21:
      v21 = (v19 - 1) << v18;
      if (v17 > 3)
      {
        v21 = 0;
      }

      if (v17)
      {
        if (v17 <= 3)
        {
          v22 = v17;
        }

        else
        {
          v22 = 4;
        }

        if (v22 > 2)
        {
          if (v22 == 3)
          {
            v23 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v23 = *a1;
          }
        }

        else if (v22 == 1)
        {
          v23 = *a1;
        }

        else
        {
          v23 = *a1;
        }
      }

      else
      {
        v23 = 0;
      }

      v29 = v13 + (v23 | v21);
      return (v29 + 1);
    }
  }

LABEL_34:
  if (v7 != v13)
  {
    v26 = (a1 + v16) & ~v14;
    if (v12 == v13)
    {
      if (v11 >= 2)
      {
        v27 = (*(v10 + 48))(v26);
        if (v27 >= 2)
        {
          return v27 - 1;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }

    v28 = *(v26 + v15);
    if (v28 < 2)
    {
      return 0;
    }

    v29 = (v28 + 2147483646) & 0x7FFFFFFF;
    return (v29 + 1);
  }

  v24 = *(v6 + 48);

  return v24(a1, v7, v5);
}

void sub_1CF554000(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v7 = a4[2];
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v11 + 80);
  v17 = *(v11 + 64);
  if (v15 <= 0xFE)
  {
    v15 = 254;
  }

  v18 = *(v8 + 64) + v16;
  if (!v13)
  {
    ++v17;
  }

  v19 = v17 + (v18 & ~v16) + 2;
  if (a3 > v15)
  {
    v10 = 1;
    if (v19 <= 3)
    {
      v20 = ((a3 - v15 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
      v21 = HIWORD(v20);
      if (v20 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v20 >= 2)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      if (v21)
      {
        v10 = 4;
      }

      else
      {
        v10 = v23;
      }
    }
  }

  if (v15 < a2)
  {
    v24 = ~v15 + a2;
    if (v19 < 4)
    {
      v25 = (v24 >> (8 * v19)) + 1;
      if (v17 + (v18 & ~v16) != -2)
      {
        v26 = v24 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v26;
            if (v10 > 1)
            {
LABEL_53:
              if (v10 == 2)
              {
                *&a1[v19] = v25;
              }

              else
              {
                *&a1[v19] = v25;
              }

              return;
            }
          }

          else
          {
            *a1 = v24;
            if (v10 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v26;
        a1[2] = BYTE2(v26);
      }

      if (v10 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v17 + (v18 & ~v16) + 2);
      *a1 = v24;
      v25 = 1;
      if (v10 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v10)
    {
      a1[v19] = v25;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v19] = 0;
  }

  else if (v10)
  {
    a1[v19] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 == v15)
  {
    v27 = *(v30 + 56);

    v27(a1, a2, v9, v7);
  }

  else
  {
    v28 = &a1[v18] & ~v16;
    if (v14 == v15)
    {
      v29 = *(v12 + 56);

      v29(v28, (a2 + 1));
    }

    else
    {
      *(v28 + v17) = a2 + 1;
    }
  }
}

uint64_t sub_1CF55446C(uint64_t a1)
{
  v1 = *(a1 + 96);
  v4 = *(a1 + 80);
  v5 = v1;
  result = type metadata accessor for ReconciliationID(319, &v4);
  if (v3 <= 0x3F)
  {
    *&v4 = *(result - 8) + 64;
    *(&v4 + 1) = v4;
    *&v5 = &unk_1CFA0A460;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF554514(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1CF554554(a1);
  return v2;
}

uint64_t *sub_1CF554554(uint64_t a1)
{
  v3 = *v1;
  *(v1 + *(*v1 + 128)) = 0;
  v4 = *(*v1 + 120);
  v5 = *(v3 + 96);
  v9[0] = *(v3 + 80);
  v9[1] = v5;
  v6 = type metadata accessor for ReconciliationID(0, v9);
  v7 = *(v6 - 8);
  (*(v7 + 16))(v1 + v4, a1, v6);
  (*(v7 + 32))(v1 + *(*v1 + 112), a1, v6);
  return v1;
}

uint64_t sub_1CF554678@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48 = a4;
  v49 = a5;
  v46 = a1;
  v47 = a3;
  LODWORD(v51) = a2;
  v52 = a6;
  v7 = *v6;
  v8 = *v6;
  v9 = *(*v6 + 80);
  v10 = sub_1CF9E75D8();
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v37 - v11;
  v44 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v37 - v13;
  v14 = *(v7 + 88);
  v45 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v53[0] = v9;
  v53[1] = v14;
  v54 = *(v8 + 96);
  v18 = type metadata accessor for ReconciliationID(0, v53);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v37 - v22;
  v24 = *(v7 + 128);
  if (*(v6 + v24) == 1 && (v51 & 1) == 0)
  {
    v25 = *(v8 + 120);
    swift_beginAccess();
    return (*(v19 + 16))(v52, v6 + v25, v18);
  }

  v40 = v21;
  *(v6 + v24) = 1;
  v27 = *(*v6 + 120);
  swift_beginAccess();
  v51 = *(v19 + 16);
  v51(v23, v6 + v27, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = v27;
    v39 = v6;
    v28 = v45;
    (*(v45 + 32))(v17, v23, v14);
    v29 = v55;
    (*(**(v46 + 16) + 152))(v17, v47, v48, v49);
    result = (*(v28 + 8))(v17, v14);
    if (v29)
    {
      return result;
    }

    v30 = v44;
    v31 = v50;
    v32 = (*(v44 + 48))(v50, 1, v9);
    v33 = v31;
    if (v32 == 1)
    {
      (*(v42 + 8))(v31, v43);
      v6 = v39;
      v27 = v38;
    }

    else
    {
      v34 = *(v30 + 32);
      v35 = v41;
      v34(v41, v33, v9);
      v36 = v40;
      v34(v40, v35, v9);
      swift_storeEnumTagMultiPayload();
      v6 = v39;
      v27 = v38;
      swift_beginAccess();
      (*(v19 + 40))(v6 + v27, v36, v18);
      swift_endAccess();
    }
  }

  else
  {
    (*(v19 + 8))(v23, v18);
  }

  return (v51)(v52, v6 + v27, v18);
}

uint64_t sub_1CF554B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a4;
  v24 = a2;
  v25 = a3;
  v23 = a1;
  v7 = *v5;
  v8 = *(*v5 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v22 - v10;
  v12 = *(v7 + 104);
  v26 = v8;
  v22 = *(v13 + 88);
  v27 = v22;
  v28 = v12;
  v14 = type metadata accessor for ReconciliationID(0, &v26);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  (*(v18 + 16))(&v22 - v16, v5 + *(v7 + 112), v14, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v22;
    v20 = *(v22 - 8);
    (*(v20 + 32))(a5, v17, v22);
    return (*(v20 + 56))(a5, 0, 1, v19);
  }

  else
  {
    (*(v9 + 32))(v11, v17, v8);
    (*(**(v23 + 16) + 160))(v11, v24, v25, v29);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1CF554E8C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v21 - v4;
  v6 = *(v2 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  *&v12 = v6;
  *(&v12 + 1) = v3;
  v23 = *(v11 + 96);
  v26[0] = v12;
  v26[1] = v23;
  v13 = type metadata accessor for ReconciliationID(0, v26);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  v17 = *(v2 + 120);
  swift_beginAccess();
  (*(v14 + 16))(v16, v1 + v17, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v22;
    (*(v22 + 32))(v5, v16, v3);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_1CF9E7FE8();
    v19 = v24;
    (*(v18 + 8))(v5, v3);
  }

  else
  {
    (*(v7 + 32))(v10, v16, v6);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_1CF9E7FE8();
    v19 = v24;
    (*(v7 + 8))(v10, v6);
  }

  return v19;
}

uint64_t sub_1CF5551A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v21 - v4;
  v6 = *(v2 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  *&v12 = v6;
  *(&v12 + 1) = v3;
  v23 = *(v11 + 96);
  v24[0] = v12;
  v24[1] = v23;
  v13 = type metadata accessor for ReconciliationID(0, v24);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  v17 = *(v2 + 120);
  swift_beginAccess();
  (*(v14 + 16))(v16, v1 + v17, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v22;
    (*(v22 + 32))(v5, v16, v3);
    v19 = (*(*(&v23 + 1) + 64))(v3);
    (*(v18 + 8))(v5, v3);
  }

  else
  {
    (*(v7 + 32))(v10, v16, v6);
    v19 = (*(v23 + 64))(v6);
    (*(v7 + 8))(v10, v6);
  }

  return v19 & 1;
}

uint64_t sub_1CF5554C0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v21 - v4;
  v6 = *(v2 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  *&v12 = v6;
  *(&v12 + 1) = v3;
  v23 = *(v11 + 96);
  v24[0] = v12;
  v24[1] = v23;
  v13 = type metadata accessor for ReconciliationID(0, v24);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  v17 = *(v2 + 120);
  swift_beginAccess();
  (*(v14 + 16))(v16, v1 + v17, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v22;
    (*(v22 + 32))(v5, v16, v3);
    v19 = (*(*(&v23 + 1) + 72))(v3);
    (*(v18 + 8))(v5, v3);
  }

  else
  {
    (*(v7 + 32))(v10, v16, v6);
    v19 = (*(v23 + 72))(v6);
    (*(v7 + 8))(v10, v6);
  }

  return v19 & 1;
}

uint64_t sub_1CF5557D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 104);
  v17 = *(*v1 + 80);
  v16 = *(v4 + 88);
  v18 = v16;
  v19 = v5;
  v6 = type metadata accessor for ReconciliationID(0, &v17);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  (*(v7 + 16))(&v16 - v9, v1 + *(v3 + 112), v6, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = v16;
  v13 = *(v16 - 8);
  v14 = v13;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v13 + 32))(a1, v10, v16);
    return (*(v14 + 56))(a1, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(a1, 1, 1, v16);
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1CF5559E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v15 = *(*v1 + 80);
  v16[0] = v15;
  v16[1] = v4;
  v5 = type metadata accessor for ReconciliationID(0, v16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-1] - v7;
  v9 = *(v3 + 120);
  swift_beginAccess();
  (*(v6 + 16))(v8, v1 + v9, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = v15;
  v12 = *(v15 - 8);
  v13 = v12;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v12 + 56))(a1, 1, 1, v15);
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v12 + 32))(a1, v8, v15);
    return (*(v13 + 56))(a1, 0, 1, v11);
  }
}

uint64_t sub_1CF555C0C(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v6[0] = *(*v1 + 80);
  v6[1] = v3;
  v4 = type metadata accessor for ReconciliationID(0, v6);
  return sub_1CF01D348(a1, v4);
}

uint64_t sub_1CF555CB8()
{
  sub_1CF9E81D8();
  sub_1CF555C0C(v1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF555D40(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CF555C0C(v2);
  return sub_1CF9E8228();
}

void sub_1CF555DCC(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a2;
  v13 = a2[4];
  if (sub_1CF056558())
  {
    v15 = type metadata accessor for SnapshotItem(0, *(v12 + 80), *(v12 + 96), v14);
    v16 = (*(*v13 + 320))(a1 + *(v15 + 36), 0, a4, a5, a6);
    if (!v6)
    {
      if (v16 == 2 || (v16 & 1) == 0)
      {
        v17 = a1 + *(v15 + 48);
        v18 = type metadata accessor for ItemMetadata(0);
        *(v17 + *(v18 + 48)) = *(v17 + *(v18 + 44));
      }

      else
      {
        sub_1CF55666C(a1, a3);
      }
    }
  }
}

void sub_1CF555F04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v89 = a6;
  v90 = a7;
  v88 = a1;
  v91 = *a4;
  v87 = sub_1CF9E5CF8();
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a4 + 32);
  if (sub_1CF056558())
  {
    v17 = *a3;
    if ((*a3 & 0x20002) != 0)
    {
      v80 = a3;
      v81 = a5;
      v18 = v91[12];
      v82 = v91[10];
      v83 = v17;
      v19 = a8;
      v20 = type metadata accessor for SnapshotItem(0, v82, v18, v16);
      v21 = (*v15 + 320);
      v22 = *v21;
      v23 = (*v21)(a2 + *(v20 + 36), 0, v89, v90, v19);
      v84 = v8;
      if (!v8)
      {
        v78 = v18;
        v79 = v20;
        v77 = a2;
        if (v23 == 2)
        {
          if ((v83 & 2) == 0)
          {
            v24 = v77;
            v25 = v82;
            v26 = v91;
            v27 = v79;
            goto LABEL_31;
          }

          v29 = v19;
          v28 = 0;
        }

        else
        {
          v28 = v23;
          v29 = v19;
          if ((v83 & 2) == 0)
          {
            v27 = v79;
            v30 = *(v79 + 48);
            v31 = type metadata accessor for ItemMetadata(0);
            v25 = v82;
            v26 = v91;
            if (v28)
            {
              v32 = *(v88 + v30 + *(v31 + 48));
              v33 = v81;
              goto LABEL_16;
            }

            goto LABEL_30;
          }
        }

        v34 = v89;
        v35 = v90;
        v36 = v84;
        v37 = (*(**(a4 + 24) + 336))(0, 68, v89, v90, v29);
        v84 = v36;
        if (v37)
        {
          v32 = v22(v88, 0, v34, v35, v29);
          v84 = 0;
          v27 = v79;
        }

        else
        {
          v27 = v79;
          v38 = v88 + *(v79 + 48);
          v32 = *(v38 + *(type metadata accessor for ItemMetadata(0) + 48));
        }

        v33 = v81;
        v25 = v82;
        v39 = v78;
        v26 = v91;
        if (v28)
        {
LABEL_16:
          v40 = v77;
          v41 = v84;
          if ((v32 & 1) == 0)
          {
            sub_1CF55666C(v77, v33);
            if (v41)
            {
              return;
            }

            if ((v83 & 0x800000000000000) == 0)
            {
              *v80 = v83 | 0x800000000000000;
            }
          }

          v42 = v40 + *(v27 + 48);
          if (*(v42 + *(type metadata accessor for ItemMetadata(0) + 44)) != 1)
          {
            return;
          }

          v43 = v26[11];
          v44 = v26[13];
          v92 = v25;
          v93 = v43;
          v45 = v78;
          v94 = v78;
          v95 = v44;
          type metadata accessor for JobResult(0, &v92);
          v92 = v25;
          v93 = v43;
          v94 = v45;
          v95 = v44;
          type metadata accessor for PinningJob.UnpinItem(0, &v92);
          v46 = v86;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v48 = v47;
          (*(v85 + 8))(v46, v87);
          v49 = v48 * 1000000000.0;
          if (COERCE__INT64(fabs(v48 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v49 > -9.22337204e18)
            {
              if (v49 < 9.22337204e18)
              {
                v50 = sub_1CF559420();
                v51 = v33;
LABEL_41:
                sub_1CF803A0C(v51, v50);

                return;
              }

              goto LABEL_50;
            }

LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        if (v32)
        {
          v52 = v91[11];
          v53 = v91[13];
          v92 = v82;
          v93 = v52;
          v94 = v78;
          v95 = v53;
          type metadata accessor for JobResult(0, &v92);
          v92 = v25;
          v93 = v52;
          v94 = v39;
          v95 = v53;
          type metadata accessor for PinningJob.PinItem(0, &v92);
          v54 = v86;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v56 = v55;
          (*(v85 + 8))(v54, v87);
          v57 = v56 * 1000000000.0;
          v24 = v77;
          if (COERCE__INT64(fabs(v56 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          if (v57 <= -9.22337204e18)
          {
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          v27 = v79;
          if (v57 >= 9.22337204e18)
          {
LABEL_53:
            __break(1u);
            return;
          }

          v58 = sub_1CF559420();
          sub_1CF803A0C(v33, v58);

LABEL_31:
          v59 = v24 + *(v27 + 48);
          v60 = type metadata accessor for ItemMetadata(0);
          v61 = *(v59 + *(v60 + 44));
          *(v59 + *(v60 + 48)) = v61;
          if (v61 == *(v88 + *(v27 + 48) + *(v60 + 48)))
          {
            return;
          }

          if ((v83 & 0x800000000000000) == 0)
          {
            *v80 = v83 | 0x800000000000000;
          }

          v62 = v26[11];
          v63 = v26[13];
          v92 = v25;
          v93 = v62;
          v64 = v78;
          v94 = v78;
          v95 = v63;
          type metadata accessor for JobResult(0, &v92);
          v92 = v25;
          v93 = v62;
          v94 = v64;
          v95 = v63;
          type metadata accessor for PinningJob.RefreshChildPinStatus(0, &v92);
          v65 = v86;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v67 = v66;
          v68 = *(v85 + 8);
          v68(v65, v87);
          v69 = v67 * 1000000000.0;
          if (COERCE__INT64(fabs(v67 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v69 > -9.22337204e18)
          {
            if (v69 < 9.22337204e18)
            {
              v70 = sub_1CF559420();
              sub_1CF803A0C(v81, v70);

              v92 = v82;
              v93 = v62;
              v94 = v78;
              v95 = v63;
              type metadata accessor for Maintenance.ResolveItemEvictability(0, &v92);
              v71 = v86;
              sub_1CF9E5CE8();
              sub_1CF9E5C98();
              v73 = v72;
              v68(v71, v87);
              v74 = v73 * 1000000000.0;
              if (COERCE__INT64(fabs(v73 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v74 > -9.22337204e18)
                {
                  v75 = v81;
                  if (v74 < 9.22337204e18)
                  {
                    v50 = sub_1CF559420();
                    v51 = v75;
                    goto LABEL_41;
                  }

                  goto LABEL_47;
                }

LABEL_46:
                __break(1u);
LABEL_47:
                __break(1u);
                goto LABEL_48;
              }

LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          __break(1u);
          goto LABEL_44;
        }

LABEL_30:
        v24 = v77;
        goto LABEL_31;
      }
    }
  }
}

void sub_1CF55666C(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = sub_1CF9E5CF8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v4[10];
  v10 = v4[12];
  v12 = *(type metadata accessor for SnapshotItem(0, v9, v10, v11) + 48);
  v33 = a1;
  v13 = a1 + v12;
  v14 = type metadata accessor for ItemMetadata(0);
  *(v13 + *(v14 + 48)) = 1;
  v15 = v4[11];
  v16 = v4[13];
  if (*(v13 + *(v14 + 44)) != 1)
  {
LABEL_6:
    *&v23 = v9;
    *(&v23 + 1) = v15;
    *&v24 = v10;
    *(&v24 + 1) = v16;
    v31 = v24;
    v32 = v23;
    v34 = v23;
    v35 = v24;
    type metadata accessor for JobResult(0, &v34);
    v34 = v32;
    v35 = v31;
    type metadata accessor for PinningJob.RefreshChildPinStatus(0, &v34);
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v26 = v25;
    (*(v6 + 8))(v8, v5);
    v27 = v26 * 1000000000.0;
    if (COERCE__INT64(fabs(v26 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v27 > -9.22337204e18)
    {
      if (v27 < 9.22337204e18)
      {
        v28 = sub_1CF559420();
        sub_1CF803A0C(a2, v28);

        return;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *&v17 = v9;
  *(&v17 + 1) = v4[11];
  *&v18 = v10;
  v30 = v4[13];
  *(&v18 + 1) = v16;
  v31 = v18;
  v32 = v17;
  v34 = v17;
  v35 = v18;
  v29[1] = type metadata accessor for JobResult(0, &v34);
  v34 = v32;
  v35 = v31;
  type metadata accessor for PinningJob.UnpinItem(0, &v34);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v20 = v19;
  (*(v6 + 8))(v8, v5);
  v21 = v20 * 1000000000.0;
  if (COERCE__INT64(fabs(v20 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v21 < 9.22337204e18)
  {
    v22 = sub_1CF559420();
    sub_1CF803A0C(a2, v22);

    v16 = v30;
    goto LABEL_6;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1CF5569CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CF55900C(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v5;
}

double sub_1CF556AB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a7;
  v36 = a8;
  v43 = a6;
  v44 = a5;
  v37 = a4;
  v38 = a3;
  v39 = a1;
  v41 = *a2;
  v40 = v41[10];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v13 = sub_1CF9E8238();
  v34 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - v16;
  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a8;
  v18[4] = a3;
  v18[5] = a2;
  v19 = swift_allocObject();
  v42 = v19;
  v20 = v44;
  *(v19 + 16) = a4;
  *(v19 + 24) = v20;
  (*(v14 + 16))(v17, v39, v13);
  v21 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v22 = (v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v41;
  *(v25 + 2) = v40;
  *(v25 + 3) = v26[11];
  v27 = v34;
  *(v25 + 4) = v35;
  *(v25 + 5) = v26[12];
  *(v25 + 6) = v26[13];
  *(v25 + 7) = v36;
  (*(v14 + 32))(&v25[v21], v17, v27);
  v28 = v37;
  *&v25[v22] = v38;
  *&v25[v23] = a2;
  v29 = v44;
  *&v25[v24] = v43;
  v30 = &v25[(v24 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v30 = v28;
  v30[1] = v29;
  v31 = type metadata accessor for Continuation();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF559114, v18, sub_1CF559418, v42, sub_1CF5592D8, v25, v31, MEMORY[0x1E69E6158]);

  return result;
}

double sub_1CF556E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v18 = *(*(a1 + 32) + 16);
  v19 = *(*v11 + 576);
  v20 = swift_allocObject();
  v20[2] = a7;
  v20[3] = a8;
  v20[4] = a1;
  v20[5] = v11;
  v20[6] = a5;
  v20[7] = a6;
  v20[8] = a3;
  v21 = *(*v18 + 776);

  v21(v11 + v19, a10, a11, v20);

  return result;
}

double sub_1CF556FA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a7;
  v36 = a8;
  v43 = a6;
  v44 = a5;
  v37 = a4;
  v38 = a3;
  v39 = a1;
  v41 = *a2;
  v40 = v41[10];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v13 = sub_1CF9E8238();
  v34 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - v16;
  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a8;
  v18[4] = a3;
  v18[5] = a2;
  v19 = swift_allocObject();
  v42 = v19;
  v20 = v44;
  *(v19 + 16) = a4;
  *(v19 + 24) = v20;
  (*(v14 + 16))(v17, v39, v13);
  v21 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v22 = (v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v41;
  *(v25 + 2) = v40;
  *(v25 + 3) = v26[11];
  v27 = v34;
  *(v25 + 4) = v35;
  *(v25 + 5) = v26[12];
  *(v25 + 6) = v26[13];
  *(v25 + 7) = v36;
  (*(v14 + 32))(&v25[v21], v17, v27);
  v28 = v37;
  *&v25[v22] = v38;
  *&v25[v23] = a2;
  v29 = v44;
  *&v25[v24] = v43;
  v30 = &v25[(v24 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v30 = v28;
  v30[1] = v29;
  v31 = type metadata accessor for Continuation();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF55942C, v18, sub_1CF559088, v42, sub_1CF559464, v25, v31, MEMORY[0x1E69E6158]);

  return result;
}

uint64_t sub_1CF5572C4(void *a1, uint64_t a2, void *a3, void (*a4)(char *, uint64_t), uint64_t a5, void (*a6)(_BYTE *, void, void, void, void *), uint64_t a7)
{
  v42 = a7;
  v43 = a6;
  v40 = a5;
  v44 = a2;
  v50 = a1;
  v9 = *(*a3 + 600);
  v38 = *(*a3 + 616);
  v10 = type metadata accessor for SnapshotItem(255, v9, v38, a4);
  v41 = sub_1CF9E75D8();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v12 = &v36 - v11;
  v47 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v36 - v14;
  v15 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v45 = &v36 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v21 = sub_1CF9E8238();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = (&v36 - v23);
  (*(v25 + 16))(&v36 - v23, v44, v21, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v24;
    sub_1CF1A91AC(v50, v49);
    v27 = v26;
    v43(v49, 0, 0, 0, v26);

    return sub_1CEFCCC44(v49, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  else
  {
    v29 = v45;
    (*(v15 + 32))(v45, v24, v9);
    v44 = v15;
    (*(v15 + 16))(v18, v29, v9);
    v37 = a4;
    v30 = v46;
    sub_1CF06B77C(v18, v9, v38, v46);
    v31 = v50[3];
    v32 = v50[4];
    v33 = __swift_project_boxed_opaque_existential_1(v50, v31);
    v34 = v47;
    (*(v47 + 16))(v12, v30, v10);
    (*(v34 + 56))(v12, 0, 1, v10);
    v35 = v48;
    sub_1CF611904(v12, a3 + *(*a3 + 576), 0, 0, 0, v37, a3[15], a3[16], a3[17], v40, v33, v31, v32);
    (*(v39 + 8))(v12, v41);
    if (!v35)
    {
      sub_1CF1A91AC(v50, v49);
      v43(v49, 0, 0, 0, 0);
      sub_1CEFCCC44(v49, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    (*(v47 + 8))(v46, v10);
    return (*(v44 + 8))(v45, v9);
  }
}

char *sub_1CF5577D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v37 = a1;
  v8 = *v5;
  v9 = type metadata accessor for JobLockRule(0, *(v8 + 600), *(v8 + 616), a4);
  v36 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1CF9E75D8();
  v38 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v39 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - v18;
  v20 = v8;
  v21 = *(a2 + 32);
  v22 = *(v20 + 576);
  v23 = v44;
  (*(*v21 + 288))(&v6[v22], v40, v41, v42, v17);
  if (!v23)
  {
    v24 = v38;
    v42 = v9;
    v44 = 0;
    if ((*(v39 + 48))(v15, 1, AssociatedTypeWitness) == 1)
    {
      (*(v24 + 8))(v15, v13);
      return 0;
    }

    else
    {
      v25 = v39;
      (*(v39 + 32))(v19, v15, AssociatedTypeWitness);
      swift_beginAccess();
      sub_1CF053478((v6 + 56), v43);
      v41 = *(v6 + 15);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v27 = *(TupleTypeMetadata3 + 48);
      v28 = *(TupleTypeMetadata3 + 64);
      v29 = *(v25 + 16);
      v30 = &v6[v22];
      v31 = v11;
      v29(v11, v30, AssociatedTypeWitness);
      v29(&v11[v27], v19, AssociatedTypeWitness);
      v29(&v11[v28], v19, AssociatedTypeWitness);
      v32 = v42;
      swift_storeEnumTagMultiPayload();
      v11 = sub_1CF052B3C(v43, v41, v11, v33);
      (*(v36 + 8))(v31, v32);
      sub_1CEFCCC44(v43, &unk_1EC4C1BE0, &unk_1CF9FD400);
      (*(v39 + 8))(v19, AssociatedTypeWitness);
    }
  }

  return v11;
}

char *sub_1CF557C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1CF5577D4(a1, a2, a3, a4, *(a5 + 8));
  if (v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1CF557C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v176 = a8;
  v177 = a4;
  v168 = a6;
  v169 = a5;
  v175 = a3;
  v156 = a2;
  v170 = *v8;
  v11 = v170[77];
  v12 = v170[75];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v179 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v181 = swift_getAssociatedConformanceWitness();
  v157 = type metadata accessor for FileItemVersion(255, &AssociatedTypeWitness);
  v164 = sub_1CF9E75D8();
  v159 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v158 = &v137 - v13;
  v15 = type metadata accessor for SnapshotMutation(0, v12, v11, v14);
  v154 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v162 = &v137 - v16;
  v167 = sub_1CF9E5CF8();
  v155 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v166 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = v12;
  v173 = v11;
  v19 = type metadata accessor for SnapshotItem(255, v12, v11, v18);
  v20 = sub_1CF9E75D8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v137 - v22;
  v171 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v165 = &v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v174 = &v137 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v163 = &v137 - v29;
  v153 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v160 = &v137 - v32;
  v161 = a1;
  v33 = *(a1 + 32);
  result = sub_1CF056558();
  if ((result & 1) == 0)
  {
    return result;
  }

  v151 = v21;
  v152 = v15;
  v35 = *(*v8 + 576);
  v36 = *(v176 + 8);
  v37 = 0;
  (*(*v33 + 240))(v35 + v8, 1, v177, a7, v36);
  v147 = v35;
  v142 = v36;
  v143 = v8;
  v150 = a7;
  v40 = v171;
  v41 = (*(v171 + 48))(v23, 1, v19);
  if (v41 == 1)
  {
    (*(v151 + 8))(v23, v20);
    v42 = v150;
    v181 = v150;
    v182 = v176;
    v43 = __swift_allocate_boxed_opaque_existential_0(&AssociatedTypeWitness);
    (*(*(v42 - 8) + 16))(v43, v177, v42);
    v44 = v158;
    (*(*(v157 - 1) + 56))(v158, 1, 1);
    v46 = v172;
    v45 = v173;
    type metadata accessor for FileTreeError(0, v172, v173, v47);
    swift_getWitnessTable();
    v37 = swift_allocError();
    sub_1CF72C4D8(v147 + v143, v44, 0, v46, v45, v48);
    v159[1](v44, v164);
    v169(&AssociatedTypeWitness, 0, 0, 0, v37);
LABEL_3:

    return sub_1CEFCCC44(&AssociatedTypeWitness, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v49 = *(v40 + 32);
  v50 = v160;
  v149 = v40 + 32;
  v148 = v49;
  v49(v160, v23, v19);
  v51 = v50 + *(v19 + 48);
  v52 = type metadata accessor for ItemMetadata(0);
  LODWORD(v151) = *(v51 + *(v52 + 48));
  if (v151 != 1)
  {
    v55 = v150;
    v56 = v143;
    goto LABEL_15;
  }

  WitnessTable = swift_getWitnessTable();
  v54 = sub_1CF937C7C(v19, WitnessTable);
  v55 = v150;
  v56 = v143;
  if ((v54 & 1) == 0)
  {
LABEL_15:
    v61 = v147;
    goto LABEL_16;
  }

  v57 = v166;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v59 = v58;
  result = (*(v155 + 8))(v57, v167);
  v60 = v59 * 1000000000.0;
  if (COERCE__INT64(fabs(v59 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_61;
  }

  if (v60 <= -9.22337204e18)
  {
LABEL_62:
    __break(1u);
  }

  else
  {
    v61 = v147;
    if (v60 < 9.22337204e18)
    {
      sub_1CF5666D4(v50, 0, v60, 0x10000000000, v161, 0, v175, v177, v55, v142);
LABEL_16:
      v63 = (*(*v33 + 496))(v61 + v56, v156, v177, v55, v142);
      v137 = v64;
      v65 = sub_1CF9E6DF8();
      v73 = v174;
      v74 = v163;
      if (!v65)
      {
LABEL_50:
        v63, v66, v67, v68, v69, v70, v71, v72;
        v132 = v150;
        v181 = v150;
        v182 = v176;
        v133 = __swift_allocate_boxed_opaque_existential_0(&AssociatedTypeWitness);
        (*(*(v132 - 8) + 16))(v133, v177, v132);
        v134 = v137;

        v169(&AssociatedTypeWitness, v134, 0, 0, 0);

        (*(v40 + 8))(v160, v19);
        return sub_1CEFCCC44(&AssociatedTypeWitness, &unk_1EC4C1B30, &qword_1CFA05300);
      }

      v75 = v52;
      v76 = 0;
      v158 = (v40 + 16);
      v146 = (v155 + 8);
      v139 = 0x80000001CFA52340;
      v138 = (v154 + 8);
      v155 = v40 + 8;
      LODWORD(v164) = v151;
      v77 = v151;
      v154 = v75;
      v147 = v63;
      while (1)
      {
        v78 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v78)
        {
          v79 = v63 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v76;
          v157 = *(v40 + 16);
          v157(v74, v79, v19);
          v80 = v76 + 1;
          if (__OFADD__(v76, 1))
          {
            goto LABEL_49;
          }
        }

        else
        {
          result = sub_1CF9E7998();
          if (v153 != 8)
          {
            goto LABEL_64;
          }

          AssociatedTypeWitness = result;
          v157 = *v158;
          v157(v74, &AssociatedTypeWitness, v19);
          swift_unknownObjectRelease();
          v80 = v76 + 1;
          if (__OFADD__(v76, 1))
          {
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }
        }

        v148(v73, v74, v19);
        v81 = *(v75 + 44);
        v159 = (v73 + *(v19 + 48));
        v82 = *(v159 + v81);
        if ((v151 & v82) == 1)
        {
          v83 = v170[76];
          v84 = v170[78];
          v85 = v172;
          v86 = v173;
          AssociatedTypeWitness = v172;
          v179 = v83;
          AssociatedConformanceWitness = v173;
          v181 = v84;
          type metadata accessor for JobResult(0, &AssociatedTypeWitness);
          AssociatedTypeWitness = v85;
          v179 = v83;
          AssociatedConformanceWitness = v86;
          v181 = v84;
          type metadata accessor for PinningJob.UnpinItem(0, &AssociatedTypeWitness);
          v87 = v166;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v89 = v88;
          result = (*v146)(v87, v167);
          v90 = v89 * 1000000000.0;
          if (COERCE__INT64(fabs(v89 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
LABEL_53:
            __break(1u);
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
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          if (v90 <= -9.22337204e18)
          {
            goto LABEL_53;
          }

          v40 = v171;
          v73 = v174;
          if (v90 >= 9.22337204e18)
          {
            goto LABEL_54;
          }

          v91 = v90;
          swift_allocObject();
          v92 = sub_1CF052464(v73, 0x2000000000000000, v91, 0x10000000000);
          sub_1CF803A0C(v175, v92);

          LODWORD(v164) = 1;
          v77 = 1;
          v75 = v154;
        }

        else
        {
          v93 = v82 ^ 1;
          LODWORD(v164) = v93 & v164;
          v77 &= v93;
        }

        v156 = swift_getWitnessTable();
        if (sub_1CF937C7C(v19, v156))
        {
          if (v77)
          {
            v94 = v166;
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v96 = v95;
            result = (*v146)(v94, v167);
            v97 = v96 * 1000000000.0;
            if (COERCE__INT64(fabs(v96 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_55;
            }

            if (v97 <= -9.22337204e18)
            {
              goto LABEL_56;
            }

            if (v97 >= 9.22337204e18)
            {
              goto LABEL_57;
            }

            sub_1CF5666D4(v73, 0, v97, 0x10000000000, v161, 0, v175, v177, v150, v142);
            if (v37)
            {
              v147, v98, v99, v100, v101, v102, v103, v104;

              v135 = *v155;
              (*v155)(v73, v19);
              v135(v160, v19);
              v62 = v150;
              v181 = v150;
              v182 = v176;
              v38 = __swift_allocate_boxed_opaque_existential_0(&AssociatedTypeWitness);
              (*(*(v62 - 8) + 16))(v38, v177, v62);
              v39 = v37;
              v169(&AssociatedTypeWitness, 0, 0, 0, v37);

              goto LABEL_3;
            }

            v105 = 1;
            if (*(v159 + *(v75 + 48)))
            {
LABEL_18:
              LODWORD(v164) = v105;
              (*v155)(v73, v19);
              goto LABEL_19;
            }
          }

          else
          {
            v105 = 0;
            if ((*(v159 + *(v75 + 48)) & 1) == 0)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
          v105 = v164;
          if ((v164 & 1) == *(v159 + *(v75 + 48)))
          {
            goto LABEL_18;
          }
        }

        v144 = v77;
        v145 = v80;
        v159 = v37;
        v106 = v165;
        v107 = v157;
        v157(v165, v73, v19);
        v108 = &v106[*(v19 + 48)];
        v109 = *(v75 + 48);
        LODWORD(v164) = v105;
        v108[v109] = v105 & 1;
        v110 = v170[76];
        v111 = v170[78];
        AssociatedTypeWitness = v172;
        v179 = v110;
        v140 = v110;
        AssociatedConformanceWitness = v173;
        v181 = v111;
        v141 = v111;
        v112 = type metadata accessor for JobResult(0, &AssociatedTypeWitness);
        MEMORY[0x1EEE9AC00](v112);
        qmemcpy(&v137 - 4, "from to  reason ", 16);
        LOBYTE(v136) = 0;
        AssociatedTypeWitness = v19;
        v179 = v19;
        AssociatedConformanceWitness = &type metadata for Fields;
        v181 = MEMORY[0x1E69E6158];
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v114 = TupleTypeMetadata[12];
        v115 = TupleTypeMetadata[16];
        v116 = v162;
        v117 = &v162[TupleTypeMetadata[20]];
        v107(v162, v174, v19);
        v118 = v106;
        v74 = v163;
        v107((v116 + v114), v118, v19);
        *(v116 + v115) = 0x800000000000000;
        v40 = v171;
        *v117 = 0xD000000000000019;
        *(v117 + 1) = v139;
        v119 = v152;
        swift_storeEnumTagMultiPayload();
        sub_1CF9491AC(v175, v116);
        v120 = v116;
        v73 = v174;
        (*v138)(v120, v119);
        v121 = v156;
        if ((sub_1CF937C7C(v19, v156) & 1) == 0)
        {
          AssociatedTypeWitness = v172;
          v179 = v140;
          AssociatedConformanceWitness = v173;
          v181 = v141;
          type metadata accessor for Maintenance.ResolveItemEvictability(0, &AssociatedTypeWitness);
          v122 = v166;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v124 = v123;
          result = (*v146)(v122, v167);
          v125 = v124 * 1000000000.0;
          if (COERCE__INT64(fabs(v124 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_58;
          }

          if (v125 <= -9.22337204e18)
          {
            goto LABEL_59;
          }

          if (v125 >= 9.22337204e18)
          {
            goto LABEL_60;
          }

          v126 = sub_1CF559420();
          sub_1CF803A0C(v175, v126);

          sub_1CF06D940(v19, v121, &AssociatedTypeWitness);
          if (AssociatedTypeWitness == 1)
          {
            v127 = v143[15];
            v128 = v143[16];
            v129 = v143[17];
            swift_allocObject();
            v130 = sub_1CF052464(v73, v127, v128, v129);
            sub_1CF803A0C(v175, v130);
          }
        }

        v131 = *v155;
        (*v155)(v165, v19);
        v131(v73, v19);
        v75 = v154;
        v37 = v159;
        v80 = v145;
        v77 = v144;
LABEL_19:
        v63 = v147;
        ++v76;
        if (v80 == sub_1CF9E6DF8())
        {
          goto LABEL_50;
        }
      }
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_1CF558FA0()
{
  sub_1CF059B48();

  return swift_deallocClassInstance();
}

uint64_t objectdestroyTm_3()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v2 = *(sub_1CF9E8238() - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(v1 - 8) + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF5592F0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v3 = *(sub_1CF9E8238() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF5572C4(a1, v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1CF559504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1CF9E6EC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a9;
  v15[5] = a1;
  v15[6] = a2;
  sub_1CF559F20(sub_1CF559EF8, v15, v9, a7, a8, a9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA46EA0);
    sub_1CF9E7FD8();
    MEMORY[0x1D3868CC0](46, 0xE100000000000000);
    sub_1CF9E7B68();
    __break(1u);
  }
}

void sub_1CF5596B8(uint64_t a1)
{
  if (!fpfs_is_internal_build())
  {
    goto LABEL_6;
  }

  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = sub_1CF9E6888();
  v3 = [v1 initWithSuiteName_];

  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = sub_1CF9E6888();
  v5 = [v3 objectForKey_];

  if (!v5)
  {

    memset(v8, 0, sizeof(v8));
    sub_1CF0248E0(v8);
LABEL_6:
    v7 = 600;
    goto LABEL_7;
  }

  sub_1CF9E7728();
  swift_unknownObjectRelease();
  sub_1CF0248E0(v8);
  v6 = sub_1CF9E6888();
  v7 = [v3 integerForKey_];

LABEL_7:
  qword_1EC4C1710 = v7;
}

void sub_1CF5597FC(uint64_t a1)
{
  v2 = *v1;
  v7 = a1;
  v3 = *(v2 + 96);
  v8[0] = *(v2 + 80);
  v8[1] = v3;
  v4 = type metadata accessor for StuckDeletionMonitor(0, v8);
  WitnessTable = swift_getWitnessTable();
  sub_1CF559504(sub_1CF559EDC, v6, "FileProviderDaemon/StuckDeletionMonitor.swift", 45, 2u, 87, v4, MEMORY[0x1E69E7CA8] + 8, WitnessTable);
}

void sub_1CF5598CC(uint64_t *a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  v6 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, v4);
  sub_1CF4FB2BC(0xD000000000000021, 0x80000001CFA46F30, v4, v5);
  v7 = a1[7];
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v10 = *(v6 + 96);
  v18[1] = *(v6 + 80);
  v18[2] = v10;
  v19 = v7;

  sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF559FFC, v18, v8, MEMORY[0x1E69E7CA8] + 8, v9);
  v7, v11, v12, v13, v14, v15, v16, v17;
}

void sub_1CF5599EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v50 = v36 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if (sub_1CF9E7028())
  {
    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    sub_1CF4FB2BC(0xD000000000000013, 0x80000001CFA46F60, v11, v12);
    return;
  }

  v38 = a1;
  v36[2] = v5;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1CF9E7808();
    sub_1CF9E7038();
    a2 = v45;
    v13 = v46;
    v14 = v47;
    v40 = v48;
    v15 = v49;
  }

  else
  {
    v16 = -1 << *(a2 + 32);
    v13 = a2 + 56;
    v14 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a2 + 56);

    v40 = 0;
  }

  v41 = AssociatedTypeWitness - 8;
  v36[1] = v14;
  v39 = a2;
  v37 = v13;
  while (a2 < 0)
  {
    v35 = sub_1CF9E7838();
    v33 = v50;
    if (!v35)
    {
LABEL_22:
      (*(*(AssociatedTypeWitness - 8) + 56))(v50, 1, 1, AssociatedTypeWitness);
      sub_1CEFCB59C(a2);
      return;
    }

    sub_1CF9E8008();
    swift_unknownObjectRelease();
    v22 = *(AssociatedTypeWitness - 8);
LABEL_12:
    (*(v22 + 56))(v33, 0, 1, AssociatedTypeWitness);
    v24 = v38[3];
    v23 = v38[4];
    __swift_project_boxed_opaque_existential_1(v38, v24);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1CF9E7FE8();
    (*(v22 + 8))(v33, AssociatedTypeWitness);
    v25 = v44;
    sub_1CF4FB2BC(v43, v44, v24, v23);
    v25, v26, v27, v28, v29, v30, v31, v32;
    a2 = v39;
    v13 = v37;
  }

  v33 = v50;
  if (v15)
  {
    v19 = v40;
LABEL_11:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = *(a2 + 48);
    v22 = *(AssociatedTypeWitness - 8);
    (*(v22 + 16))(v50, v21 + *(v22 + 72) * (v20 | (v19 << 6)), AssociatedTypeWitness);
    goto LABEL_12;
  }

  v34 = v40;
  while (1)
  {
    v19 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v19 >= ((v14 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v15 = *(v13 + 8 * v19);
    ++v34;
    if (v15)
    {
      v40 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1CF559E4C()
{
  swift_weakDestroy();

  *(v0 + 56), v1, v2, v3, v4, v5, v6, v7;

  return v0;
}

uint64_t sub_1CF559E8C()
{
  sub_1CF559E4C();

  return swift_deallocClassInstance();
}

double sub_1CF559F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;

  v14 = a3;
  sub_1CF559FD0(&v14);

  return result;
}

void sub_1CF55A020(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_1CF9E53C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v35 - v11;
  if (qword_1EC4BCD50 != -1)
  {
    swift_once();
  }

  if (sub_1CEFDB148(a1, a2, qword_1EC4C1718))
  {
    v35[2] = 22;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF198A44();
    sub_1CF9E57D8();
    v12 = v9;
LABEL_5:
    sub_1CF9E53A8();
    (*(v7 + 8))(v12, v6);
    swift_willThrow();
    return;
  }

  v13 = sub_1CF008708(&unk_1F4BED7D0);
  v14 = sub_1CF9E6978();
  v15 = fremovexattr(a3, (v14 + 32), 0);

  if (v15 < 0 && MEMORY[0x1D38683F0](v16))
  {
    v24 = MEMORY[0x1D38683F0]();
    v25 = sub_1CF008830(v24, v13);
    v13, v26, v27, v28, v29, v30, v31, v32;
    if (!v25)
    {
      MEMORY[0x1D38683F0]();
      v33 = sub_1CF9E6138();
      if ((v33 & 0x100000000) != 0)
      {
        v34 = 22;
      }

      else
      {
        v34 = v33;
      }

      v35[3] = v34;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF198A44();
      sub_1CF9E57D8();
      goto LABEL_5;
    }
  }

  else
  {
    v13, v17, v18, v19, v20, v21, v22, v23;
  }
}

uint64_t sub_1CF55A274()
{
  v0 = sub_1CF6F4950(&unk_1F4BED720);
  result = swift_arrayDestroy();
  qword_1EC4C1718 = v0;
  return result;
}

void sub_1CF55A2C0(int a1@<W0>, const void *a4@<X3>, uint64_t a5@<X4>, int *a6@<X8>)
{
  if (a4)
  {
    v9 = a5 - a4;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1CF9E6978();
  v11 = fsetxattr(a1, (v10 + 32), a4, v9, 0, 0);

  *a6 = v11;
}

void sub_1CF55A348(int a1@<W0>, _TtC18FileProviderDaemon8FSTester **a4@<X3>, size_t *a5@<X4>, ssize_t *a6@<X8>)
{
  v9 = *a5;
  v10 = sub_1CF9E6978();
  v11 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1CF1F7574(0, *v11->tree, 0, v11, v13, v14, v15, v16);
  }

  *a4 = v11;
  v17 = fgetxattr(a1, (v10 + 32), &v11[1], v9, 0, 0);

  *a6 = v17;
}

id sub_1CF55A400(id *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  [*a1 fractionCompleted];
  if (v5 >= 1.0)
  {
    v7 = [a3 totalUnitCount];
  }

  else
  {
    [v4 fractionCompleted];
    [a3 totalUnitCount];
    v6 = sub_1CF9E6F48();
    v7 = sub_1CF9E8198();
  }

  return [a3 setCompletedUnitCount_];
}

uint64_t sub_1CF55A4C4(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1CF9E7818();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1CF55A4E8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v13 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1CF6E9500(v12, *v11, *(v11 + 8)))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(v2 + 48) + ((v9 << 10) | (16 * v10));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v13;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1CF55A5D0(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(a1 + 48) + ((v8 << 10) | (16 * v9));
      sub_1CF6E9500(&v11, *v10, *(v10 + 8));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

_TtC18FileProviderDaemon8FSTester *sub_1CF55A6B8(uint64_t a1, uint64_t a2, uint64_t a3, _TtC18FileProviderDaemon8FSTester *a4)
{
  v9 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E5268();
  v43 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a3;
  v46 = a4;
  v47 = v4;
  v48 = a1;
  v16 = (*a4->tester)(sub_1CF55B560, v44, a3, a4, v13);
  if (!v5)
  {
    v17 = v16;
    v49 = v15;
    v42 = 0;
    if ([v16 next])
    {
      v40 = v11;
      v41 = v12;
      a4 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = v17;
        v20 = [v19 longAtIndex_];
        if (v20 == 0x8000000000000000)
        {
          v23 = 2;
          v21 = 1;
        }

        else
        {
          v21 = v20;
          v22 = v49;
          if (v20)
          {
            if (v20 < 0)
            {
              v21 = -v20;
              if (-v20 >> 32)
              {
                sub_1CF9E51B8();
                sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
                sub_1CF24D0AC();
                v32 = v41;
                sub_1CF9E57D8();
                sub_1CF9E50D8();
                (*(v43 + 8))(v22, v32);
                swift_willThrow();

                objc_autoreleasePoolPop(v18);
                a4, v33, v34, v35, v36, v37, v38, v39;

                return a4;
              }

              v23 = 0;
            }

            else
            {
              v23 = 1;
            }
          }

          else
          {
            v23 = 2;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a4 = sub_1CF1F67E4(0, *a4->tree + 1, 1, a4, v24, v25, v26, v27);
        }

        v29 = *a4->tree;
        v28 = *a4->tester;
        if (v29 >= v28 >> 1)
        {
          a4 = sub_1CF1F67E4((v28 > 1), v29 + 1, 1, a4, v24, v25, v26, v27);
        }

        *a4->tree = v29 + 1;
        v30 = a4 + 16 * v29;
        *(v30 + 4) = v21;
        v30[40] = v23;
        objc_autoreleasePoolPop(v18);
        if (([v19 next] & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    a4 = MEMORY[0x1E69E7CC0];
LABEL_19:
  }

  return a4;
}

uint64_t sub_1CF55A9DC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA44540);
  v4 = sub_1CF47FA34();
  v5 = *(v4 + qword_1EDEBBD78);
  v6 = *(v4 + qword_1EDEBBD78 + 8);

  MEMORY[0x1D3868CC0](v5, v6);
  v6, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](0x44455845444E4920, 0xEC00000020594220);
  v14 = sub_1CF47FA34();
  v15 = *(v14 + qword_1EDEBBD78);
  v16 = *(v14 + qword_1EDEBBD78 + 8);

  MEMORY[0x1D3868CC0](v15, v16);
  v16, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA49F30);
  v24 = sub_1CF9E8268();
  v25 = [a1 bindObjectParameter_];

  v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v28 = v27;

  MEMORY[0x1D3868CC0](v26, v28);
  v28, v29, v30, v31, v32, v33, v34, v35;
  return 0;
}

uint64_t sub_1CF55AB78(uint64_t a1)
{
  v3 = v2;
  v44 = MEMORY[0x1E69E7CD0];
  v5 = v1 + qword_1EDEBBC20;
  os_unfair_lock_lock((v1 + qword_1EDEBBC20));
  sub_1CF55AE0C((v5 + 8), &v44, a1);
  os_unfair_lock_unlock(v5);
  v7 = *(v1 + qword_1EC4EBCD0);
  if (!v7)
  {
LABEL_8:
    MEMORY[0x1EEE9AC00](v6);
    v39 = &v44;
    v40 = v1;
    v41 = a1;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CF0, qword_1CFA0A740);
    sub_1CF3C8850(0, "lookup(byFileID:)", 17, 2, 2, sub_1CF55B588, v38, v21, &v42);
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v8 = *(v1 + qword_1EC4EBCD0 + 8);
  sub_1CF1FD6B8(*(v1 + qword_1EC4EBCD0), v8);
  v9 = v7;
  sub_1CF1FD6F8(v7, v8);
  v10 = sub_1CF033B88();
  if ((v10 & 0x200000) != 0)
  {
    MEMORY[0x1EEE9AC00](v10);
    v39 = &v44;
    v40 = v1;
    v41 = a1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CF0, qword_1CFA0A740);
    sub_1CF3C8850(0, "lookup(byFileID:)", 17, 2, 0, sub_1CF55B540, v38, v20, &v42);
    if (!v2)
    {

LABEL_12:
      a1 = v42;
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v11 = v44;
  v42 = v9;
  v43 = 2;

  v12 = sub_1CF55A6B8(a1, &v42, &type metadata for SQLDatabaseReadOnlyAccessor, &off_1F4C179D8);
  if (v2)
  {

    v11, v13, v14, v15, v16, v17, v18, v19;
LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  v29 = v12;
  a1 = sub_1CF55B4E0(v12, v11);

  v29, v30, v31, v32, v33, v34, v35, v36;
LABEL_13:
  v44, v22, v23, v24, v25, v26, v27, v28;
  return a1;
}

void sub_1CF55AE0C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(*a1 + 16) && (sub_1CF7BF380(a3), (v5 & 1) != 0))
  {
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  sub_1CF55A5D0(v6);
  if (*(a1[12] + 16) && (sub_1CF7BF380(a3), (v7 & 1) != 0))
  {
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  sub_1CF55A5D0(v8);
}

void sub_1CF55AEAC(void *a1@<X0>, _TtC18FileProviderDaemon8FSTester **a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v8 = *a2;
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);

  v12 = sub_1CF55A6B8(a3, v11, v9, v10);
  if (v5)
  {
    v8, v13, v14, v15, v16, v17, v18, v19;
  }

  else
  {
    v20 = v12;
    v21 = sub_1CF55B4E0(v12, v8);
    v20, v22, v23, v24, v25, v26, v27, v28;
    *a4 = v21;
  }
}

void sub_1CF55AF5C(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v15[2] = a2;
  v15[3] = a3;
  v15[5] = a1;
  v6 = (*(a3 + 24))(sub_1CF55B4D4, v15);
  if (!v4)
  {
    v7 = v6;
    if ([v6 next])
    {
      v8 = v7;
      sub_1CEFE9AC4([v8 longAtIndex_], &v16);

      v9 = v16;
      v10 = v17;
      v11 = [v8 stringAtIndex_];
      v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v14 = v13;

      *a4 = v9;
      a4[1] = v10;
      a4[2] = v12;
      a4[3] = v14;
    }

    else
    {

      *a4 = 0u;
      *(a4 + 1) = 0u;
    }
  }
}

uint64_t sub_1CF55B08C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA524A0);
  v4 = sub_1CF47FA34();
  v5 = *(v4 + qword_1EDEBBD78);
  v6 = *(v4 + qword_1EDEBBD78 + 8);

  MEMORY[0x1D3868CC0](v5, v6);
  v6, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](0x44455845444E4920, 0xEC00000020594220);
  v14 = sub_1CF47FA34();
  v15 = *(v14 + qword_1EDEBBD78);
  v16 = *(v14 + qword_1EDEBBD78 + 8);

  MEMORY[0x1D3868CC0](v15, v16);
  v16, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA49F30);
  v24 = sub_1CF9E8268();
  v25 = [a1 bindObjectParameter_];

  v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v28 = v27;

  MEMORY[0x1D3868CC0](v26, v28);
  v28, v29, v30, v31, v32, v33, v34, v35;
  return 0;
}

void sub_1CF55B228(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *(v2 + qword_1EC4EBCD0);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = *(v2 + qword_1EC4EBCD0 + 8);
  sub_1CF1FD6B8(*(v2 + qword_1EC4EBCD0), v7);
  v8 = v6;
  sub_1CF1FD6F8(v6, v7);
  v9 = sub_1CF033B88();
  if ((v9 & 0x200000) != 0)
  {
    MEMORY[0x1EEE9AC00](v9);
    v13 = v2;
    v14 = a1;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1720, &qword_1CFA0A738);
    sub_1CF3C8850(0, "lookupLink(byFileID:)", 21, 2, 0, sub_1CF55B56C, v12, v10, a2);
    if (v3)
    {

      goto LABEL_7;
    }
  }

  else
  {
    v15 = v8;
    v16 = 2;
    sub_1CF55AF5C(a1, &type metadata for SQLDatabaseReadOnlyAccessor, &off_1F4C179D8, a2);
    if (v3)
    {

LABEL_7:
      MEMORY[0x1EEE9AC00](a1);
      v13 = v2;
      v14 = a1;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1720, &qword_1CFA0A738);
      sub_1CF3C8850(0, "lookupLink(byFileID:)", 21, 2, 2, sub_1CF55B458, v12, v11, a2);
      return;
    }
  }
}

void sub_1CF55B470(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  sub_1CF55AF5C(v4, v5, v6, a2);
}

uint64_t sub_1CF55B4E0(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v3 += 16;
      sub_1CF6E9500(v7, v4, v5);
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

void sub_1CF55B5A4(const char *a1, uint64_t a2, unint64_t *a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t (*a7)(char *), uint64_t a8, unsigned __int8 a9)
{
  v230 = a8;
  v229 = a7;
  v242 = a3;
  v239 = a2;
  v255 = *MEMORY[0x1E69E9840];
  v240 = sub_1CF9E53C8();
  v237 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v14 = &v206 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v238 = &v206 - v16;
  v17 = type metadata accessor for FSDirectoryEnumerator(0);
  MEMORY[0x1EEE9AC00](v17);
  v225 = (&v206 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v223 = sub_1CF9E5648();
  v19 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v228 = &v206 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C50C0, &unk_1CFA084A0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v233 = &v206 - v22;
  v231 = sub_1CF9E5FF8();
  v23 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231);
  v224 = &v206 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v227 = &v206 - v26;
  v235 = sub_1CF9E5A58();
  v234 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v226 = &v206 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v232 = &v206 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v236 = &v206 - v31;
  v32 = opendir(a1);
  if (!v32)
  {
    MEMORY[0x1D38683F0]();
    v108 = sub_1CF9E6138();
    if ((v108 & 0x100000000) == 0)
    {
      *&v246[1] = v108;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF198A44();
      sub_1CF9E57D8();
      *&v246[1] = 0;
      *&v246[9] = 0xE000000000000000;
      sub_1CF9E7948();
      *&v246[9], v109, v110, v111, v112, v113, v114, v115;
      *&v246[1] = 0xD000000000000018;
      *&v246[9] = 0x80000001CFA524F0;
      v116 = sub_1CF9E5A18();
      v118 = v117;
      MEMORY[0x1D3868CC0](v116);
      v118, v119, v120, v121, v122, v123, v124, v125;
      v126 = *&v246[1];
      v127 = *&v246[9];
      v128 = sub_1CF008708(&unk_1F4BEF058);
      sub_1CF9E57A8();
      v129 = sub_1CF9E6148();
      v130 = sub_1CF008830(v129, v128);
      v128, v131, v132, v133, v134, v135, v136, v137;
      if (v130)
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v138 = qword_1EDEBB5A0;
        v139 = sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v140 = swift_allocObject();
        *(v140 + 16) = xmmword_1CF9FA440;
        *(v140 + 56) = MEMORY[0x1E69E6158];
        *(v140 + 64) = sub_1CEFD51C4();
        *(v140 + 32) = v126;
        *(v140 + 40) = v127;
        v141 = v240;
        sub_1CF9E57A8();
        v142 = sub_1CF9E6148();
        v143 = MEMORY[0x1E69E7358];
        *(v140 + 96) = MEMORY[0x1E69E72F0];
        *(v140 + 104) = v143;
        *(v140 + 72) = v142;
        sub_1CF9E6018("[DEBUG] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v138, v139, v140);
      }

      else
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v151 = qword_1EDEBB5A0;
        v152 = sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v140 = swift_allocObject();
        *(v140 + 16) = xmmword_1CF9FA440;
        *(v140 + 56) = MEMORY[0x1E69E6158];
        *(v140 + 64) = sub_1CEFD51C4();
        *(v140 + 32) = v126;
        *(v140 + 40) = v127;
        v141 = v240;
        sub_1CF9E57A8();
        v153 = sub_1CF9E6148();
        v154 = MEMORY[0x1E69E7358];
        *(v140 + 96) = MEMORY[0x1E69E72F0];
        *(v140 + 104) = v154;
        *(v140 + 72) = v153;
        sub_1CF9E6018("[ERROR] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v151, v152, v140);
      }

      v140, v144, v145, v146, v147, v148, v149, v150;
      (*(v237 + 8))(v14, v141);
      return;
    }

LABEL_103:
    __break(1u);
LABEL_104:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 80);
  }

  v33 = v32;
  v34 = readdir(v32);
  if (!v34)
  {
LABEL_81:
    if (!closedir(v33))
    {
      return;
    }

    MEMORY[0x1D38683F0]();
    v155 = sub_1CF9E6138();
    if ((v155 & 0x100000000) == 0)
    {
      *&v246[1] = v155;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF198A44();
      v156 = v240;
      sub_1CF9E57D8();
      *&v246[1] = 0;
      *&v246[9] = 0xE000000000000000;
      sub_1CF9E7948();
      *&v246[9], v157, v158, v159, v160, v161, v162, v163;
      *&v246[1] = 0xD000000000000019;
      *&v246[9] = 0x80000001CFA52510;
      sub_1CF9E5A18();
      v165 = v164;
      v166 = sub_1CF9E6888();
      v165, v167, v168, v169, v170, v171, v172, v173;
      v174 = [v166 fp_prettyPath];

      v175 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v177 = v176;

      MEMORY[0x1D3868CC0](v175, v177);
      v177, v178, v179, v180, v181, v182, v183, v184;
      v185 = *&v246[1];
      v186 = *&v246[9];
      sub_1CF9E57A8();
      v187 = sub_1CF9E6148();
      if (sub_1CF008830(v187, MEMORY[0x1E69E7CD0]))
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v188 = qword_1EDEBB5A0;
        v189 = sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v190 = swift_allocObject();
        *(v190 + 16) = xmmword_1CF9FA440;
        *(v190 + 56) = MEMORY[0x1E69E6158];
        *(v190 + 64) = sub_1CEFD51C4();
        *(v190 + 32) = v185;
        *(v190 + 40) = v186;
        v191 = v238;
        sub_1CF9E57A8();
        v192 = sub_1CF9E6148();
        v193 = MEMORY[0x1E69E7358];
        *(v190 + 96) = MEMORY[0x1E69E72F0];
        *(v190 + 104) = v193;
        *(v190 + 72) = v192;
        sub_1CF9E6018("[DEBUG] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v188, v189, v190);
      }

      else
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v201 = qword_1EDEBB5A0;
        v202 = sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v190 = swift_allocObject();
        *(v190 + 16) = xmmword_1CF9FA440;
        *(v190 + 56) = MEMORY[0x1E69E6158];
        *(v190 + 64) = sub_1CEFD51C4();
        *(v190 + 32) = v185;
        *(v190 + 40) = v186;
        v191 = v238;
        sub_1CF9E57A8();
        v203 = sub_1CF9E6148();
        v204 = MEMORY[0x1E69E7358];
        *(v190 + 96) = MEMORY[0x1E69E72F0];
        *(v190 + 104) = v204;
        *(v190 + 72) = v203;
        sub_1CF9E6018("[ERROR] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v201, v202, v190);
      }

      v190, v194, v195, v196, v197, v198, v199, v200;
      (*(v237 + 8))(v191, v156);
      return;
    }

    __break(1u);
    goto LABEL_103;
  }

  v35 = v34;
  v221 = a5;
  v219 = (v234 + 16);
  v214 = (v23 + 56);
  v220 = a9;
  v211 = (v19 + 8);
  v217 = *MEMORY[0x1E695DAA0];
  v216 = (v23 + 48);
  v213 = (v23 + 32);
  v215 = (v23 + 8);
  v218 = xmmword_1CF9FA450;
  v36 = v242;
  v243 = v17;
  v244 = v33;
  v222 = (v234 + 8);
  while (1)
  {
    v245 = objc_autoreleasePoolPush();
    v44 = sub_1CF9E6A68();
    v45 = v37;
    v46 = *v36;
    v47 = *(a4 + *(v17 + 28));
    if (*v36 >= v47 && *v36 - v47 >= *(a4 + *(v17 + 32)))
    {
      v37, v37, v38, v39, v40, v41, v42, v43;
      *v221 = 0;
      objc_autoreleasePoolPop(v245);
      v33 = v244;
      goto LABEL_81;
    }

    if (v46 == -1)
    {
      __break(1u);
LABEL_93:
      objc_autoreleasePoolPop(v44);
      (*v222)(v236, v45);
      goto LABEL_94;
    }

    *v36 = v46 + 1;
    if ((a6 & 1) != 0 && (sub_1CF9E6AE8() & 1) == 0)
    {
      break;
    }

    v48 = 0;
    if (v44 == 46 && v45 == 0xE100000000000000)
    {
      goto LABEL_21;
    }

LABEL_17:
    if (sub_1CF9E8048() & 1) != 0 || v44 == 11822 && v45 == 0xE200000000000000 || (sub_1CF9E8048())
    {
LABEL_21:
      v45, v37, v38, v39, v40, v41, v42, v43;
      v33 = v244;
      v35 = readdir(v244);
      v17 = v243;
      goto LABEL_22;
    }

    if (sub_1CF9E6AE8())
    {
      if (a6)
      {
        goto LABEL_21;
      }
    }

    else if (a6 & v48)
    {
      goto LABEL_21;
    }

    LODWORD(v212) = v35->d_type;
    v52 = v236;
    sub_1CF9E5958();
    v45, v53, v54, v55, v56, v57, v58, v59;
    if (v46 >= v47)
    {
      v44 = objc_autoreleasePoolPush();
      v60 = v241;
      v61 = v229(v52);
      v241 = v60;
      v45 = v235;
      if (v60)
      {
        goto LABEL_93;
      }

      *v221 = v61 & 1;
      objc_autoreleasePoolPop(v44);
    }

    else
    {
      v45 = v235;
    }

    if ((v220 & 1) != 0 || v212 != 4)
    {
      v17 = v243;
      v33 = v244;
      v78 = v222;
      goto LABEL_70;
    }

    v212 = a6;
    v62 = v236;
    if ((sub_1CF9E5848() & 1) == 0)
    {
      goto LABEL_104;
    }

    v210 = objc_autoreleasePoolPush();
    v208 = *v219;
    v208(v232, v62, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
    inited = swift_initStackObject();
    *(inited + 16) = v218;
    v64 = v217;
    *(inited + 32) = v217;
    v65 = v64;
    sub_1CEFF8A84(inited);
    v67 = v66;
    swift_setDeallocating();
    sub_1CF008180(inited + 32, type metadata accessor for URLResourceKey);
    v68 = v228;
    v69 = v241;
    sub_1CF9E58A8();
    if (v69)
    {
      v67, v70, v71, v72, v73, v74, v75, v76;

      v77 = v231;
      (*v214)(v233, 1, 1, v231);
      v241 = 0;
      v17 = v243;
    }

    else
    {
      v241 = 0;
      v67, v70, v71, v72, v73, v74, v75, v76;
      sub_1CF9E55E8();
      (*v211)(v68, v223);
      v17 = v243;
      v77 = v231;
    }

    v79 = v232;
    sub_1CF9E5998();
    v80 = v235;
    v209 = *v222;
    v209(v79, v235);
    objc_autoreleasePoolPop(v210);
    if ((*v216)(v233, 1, v77) != 1)
    {
      v45 = v80;
      (*v213)(v227, v233, v77);
      v81 = v224;
      sub_1CF9E5FA8();
      v82 = sub_1CF9E5FB8();
      v210 = *v215;
      (v210)(v81, v77);
      if (v82)
      {
        if ((v212 & 2) != 0)
        {
          goto LABEL_43;
        }

LABEL_45:
        v84 = *(a4 + *(v17 + 32));
        v85 = *v36;
        if (v46 >= v47)
        {
          v86 = v85 >= v47;
          v89 = v85 - v47;
          if (!v86)
          {
            goto LABEL_99;
          }

          v86 = v84 >= v89;
          v84 -= v89;
          v88 = v208;
          if (!v86)
          {
            goto LABEL_101;
          }

          v207 = 0;
        }

        else
        {
          v86 = v47 >= v85;
          v87 = v47 - v85;
          if (!v86)
          {
            goto LABEL_100;
          }

          v88 = v208;
          v207 = v87;
        }

        v208 = objc_autoreleasePoolPush();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
        v90 = (*(v234 + 80) + 32) & ~*(v234 + 80);
        v91 = swift_allocObject();
        *(v91 + 16) = v218;
        v88(v91 + v90, v236, v45);
        v92 = v243;
        v93 = v225;
        sub_1CF004C30(a4 + v243[5], v225 + v243[5]);
        v94 = (v93 + v92[9]);
        *v93 = v91;
        *(v93 + v92[6]) = 1;
        *(v93 + v92[7]) = v207;
        v95 = v84;
        *(v93 + v92[8]) = v84;
        v96 = a4 + v92[9];
        v97 = *v96;
        v98 = *(v96 + 8);
        *v94 = *v96;
        v94[1] = v98;
        v246[8] = 0;
        *v246 = v95 != 0;
        sub_1CF03C63C(v97, v98);
        if (!*(v91 + 16))
        {
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
        }

        v88(v226, (v91 + v90), v235);
        v33 = v244;
        if (v246[0])
        {
          v99 = objc_autoreleasePoolPush();
          a6 = v212;
          v100 = v209;
          if (v97)
          {
            v101 = v99;
            v102 = v97(v226);
            if (v103)
            {
              v104 = 3;
            }

            else
            {
              v104 = v102;
            }

            objc_autoreleasePoolPop(v101);
            v17 = v243;
            v45 = v235;
            if ((v104 & 8) != 0)
            {
              v83 = v231;
              v33 = v244;
              goto LABEL_67;
            }
          }

          else
          {
            objc_autoreleasePoolPop(v99);
            v104 = 3;
            v17 = v243;
            v45 = v235;
          }

          LODWORD(v207) = (~v104 & 6) == 0;
          v105 = objc_autoreleasePoolPush();
          MEMORY[0x1EEE9AC00](v105);
          *(&v206 - 8) = v226;
          *(&v206 - 7) = &v246[1];
          *(&v206 - 6) = v225;
          *(&v206 - 5) = v246;
          v106 = v229;
          *(&v206 - 4) = v104;
          *(&v206 - 3) = v106;
          *(&v206 - 2) = v230;
          *(&v206 - 8) = v207;
          v107 = v241;
          sub_1CF9E59B8();
          v241 = v107;
          v51 = v105;
          if (v107)
          {
            goto LABEL_96;
          }

          objc_autoreleasePoolPop(v105);
          v83 = v231;
          v33 = v244;
        }

        else
        {
          a6 = v212;
          v17 = v243;
          v83 = v231;
          v45 = v235;
        }

        v100 = v209;
LABEL_67:
        v78 = v222;
        v100(v226, v45);
        if (__CFADD__(*v36, *&v246[1]))
        {
          goto LABEL_98;
        }

        *v36 += *&v246[1];
        sub_1CF008180(v225, type metadata accessor for FSDirectoryEnumerator);
        objc_autoreleasePoolPop(v208);
      }

      else
      {
        if ((v212 & 4) == 0)
        {
          goto LABEL_45;
        }

LABEL_43:
        a6 = v212;
        v83 = v231;
        v33 = v244;
        v78 = v222;
      }

      (v210)(v227, v83);
LABEL_70:
      v35 = readdir(v33);
      (*v78)(v236, v45);
      goto LABEL_22;
    }

    sub_1CF55CEA0(v233);
    v33 = v244;
    v35 = readdir(v244);
    v209(v236, v80);
    a6 = v212;
LABEL_22:
    objc_autoreleasePoolPop(v245);
    if (!v35)
    {
      goto LABEL_81;
    }
  }

  v254 = 0u;
  v252 = 0u;
  v253 = 0u;
  v250 = 0u;
  v251 = 0u;
  v248 = 0u;
  v249 = 0u;
  v247 = 0u;
  *&v246[1] = 0u;
  dd_fd = v244->__dd_fd;
  v50 = sub_1CF9E6978();
  fstatat(dd_fd, (v50 + 32), &v246[1], 32);

  if ((DWORD1(v253) & 0x80000000) == 0)
  {
    v48 = (DWORD1(v253) >> 15) & 1;
    if (v44 == 46)
    {
      v36 = v242;
      if (v45 == 0xE100000000000000)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v36 = v242;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_96:
  objc_autoreleasePoolPop(v51);
  v205 = v209;
  v209(v226, v45);
  sub_1CF008180(v225, type metadata accessor for FSDirectoryEnumerator);
  objc_autoreleasePoolPop(v208);
  (v210)(v227, v231);
  v205(v236, v45);
LABEL_94:
  objc_autoreleasePoolPop(v245);
}

uint64_t sub_1CF55CB7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(id), uint64_t a4)
{
  v28 = a4;
  v29 = a3;
  v30 = a1;
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = sub_1CF9E5A58();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v28 - v19;
  v21 = *(v14 + 16);
  v21(&v28 - v19, v30, v13, v18);
  v22 = type metadata accessor for FSDirectoryEnumerator(0);
  sub_1CF004C30(v31 + *(v22 + 20), v12);
  (v21)(v16, v20, v13);
  sub_1CF004C30(v12, v9);
  v23 = type metadata accessor for VFSItem(0);
  v24 = 1;
  (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  v25 = objc_allocWithZone(type metadata accessor for LocalItem(0));
  v26 = sub_1CF001704(v16, v9, v6);
  sub_1CF008180(v12, type metadata accessor for LocalDomain);
  (*(v14 + 8))(v20, v13);
  if (v26)
  {
    v24 = v29(v26);
  }

  return v24 & 1;
}

uint64_t sub_1CF55CE4C()
{
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF55CEA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C50C0, &unk_1CFA084A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CF55CF30(uint64_t a1)
{
  sub_1CF55CFE0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LocalDomain(319);
    if (v2 <= 0x3F)
    {
      sub_1CF55D038(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CF55CFE0(uint64_t a1)
{
  if (!qword_1EDEA3808)
  {
    sub_1CF9E5A58();
    v1 = sub_1CF9E6E58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEA3808);
    }
  }
}

void sub_1CF55D038(uint64_t a1)
{
  if (!qword_1EDEA3338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
    v1 = sub_1CF9E75D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEA3338);
    }
  }
}

unint64_t sub_1CF55D0B0()
{
  result = qword_1EC4C1728;
  if (!qword_1EC4C1728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1728);
  }

  return result;
}

unint64_t sub_1CF55D108()
{
  result = qword_1EC4C1730;
  if (!qword_1EC4C1730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1730);
  }

  return result;
}

unint64_t sub_1CF55D160()
{
  result = qword_1EC4C1738;
  if (!qword_1EC4C1738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1738);
  }

  return result;
}

unint64_t sub_1CF55D1B8()
{
  result = qword_1EC4C1740;
  if (!qword_1EC4C1740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1740);
  }

  return result;
}

void sub_1CF55D20C(uint64_t a1)
{
  sub_1CF9E5D98();
  if (v1 <= 0x3F)
  {
    sub_1CF194384(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CF55D2C4(uint64_t a1)
{
  sub_1CF9E69C8();

  0xE100000000000000, v1, v2, v3, v4, v5, v6, v7;
}

unint64_t sub_1CF55D30C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF55D520(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1CF55D358@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF55D520(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF55D38C(uint64_t a1)
{
  v2 = sub_1CF0152C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF55D3C8(uint64_t a1)
{
  v2 = sub_1CF0152C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1CF55D41C()
{
  result = qword_1EC4C1760;
  if (!qword_1EC4C1760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1760);
  }

  return result;
}

unint64_t sub_1CF55D474()
{
  result = qword_1EDEA84F8;
  if (!qword_1EDEA84F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA84F8);
  }

  return result;
}

unint64_t sub_1CF55D4CC()
{
  result = qword_1EDEA8500;
  if (!qword_1EDEA8500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8500);
  }

  return result;
}

unint64_t sub_1CF55D520(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2)
{
  v3 = sub_1CF9E7C78();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

void sub_1CF55D574(uint64_t a1, char *a2, int a3, void *a4)
{
  v578 = a4;
  v584 = a3;
  v583 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v573 = v561 - v7;
  v8 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v571 = (v561 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v572 = v561 - v11;
  v565 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1778, qword_1CFA0AC20);
  MEMORY[0x1EEE9AC00](v565);
  *&v566 = v561 - v12;
  v13 = sub_1CF9E5A58();
  v14 = *(v13 - 8);
  v579 = v13;
  v580 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v575 = v561 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v562 = v561 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v570 = (v561 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v568 = v561 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v576 = v561 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v577 = v561 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v561 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v574 = v561 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v564 = v561 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v563 = v561 - v34;
  MEMORY[0x1EEE9AC00](v35);
  *&v569 = v561 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v561 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = (v561 - v41);
  MEMORY[0x1EEE9AC00](v43);
  v45 = v561 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = v561 - v47;
  v49 = sub_1CF9E64A8();
  v50 = *(v49 - 8);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v53 = (v561 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v581 = a1;
  v54 = *(a1 + 24);
  *v53 = v54;
  (*(v50 + 104))(v53, *MEMORY[0x1E69E8020], v49, v51);
  v55 = v54;
  v56 = sub_1CF9E64D8();
  (*(v50 + 8))(v53, v49);
  if ((v56 & 1) == 0)
  {
    __break(1u);
    goto LABEL_107;
  }

  v57 = *(v4 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observedID);
  v567 = *MEMORY[0x1E6967298];
  v58 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v49 = v59;
  v585 = v57;
  v61 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v67 = v60;
  v582 = v4;
  if (v58 == v61 && v49 == v60)
  {
    v56 = v4;
    v49, v60, v61, v62, v63, v64, v65, v66;
    v67, v68, v69, v70, v71, v72, v73, v74;
LABEL_7:
    v91 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v92 = sub_1CF9E6888();
    v93 = [v91 initWithSuiteName_];

    v94 = v585;
    v45 = v583;
    if (!v93 || (v95 = sub_1CF9E6888(), v49 = [v93 BOOLForKey_], v93, v95, (v49 & 1) == 0))
    {
      if (v45[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isAncestorInTrash] == 1)
      {
        v96 = *&v45[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier];
        v97 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
        swift_beginAccess();
        sub_1CF33F8C8(&v45[v97], v48);
        sub_1CF55F0FC(v581, v96, v48);
        sub_1CEFCCC44(v48, &unk_1EC4BE310, qword_1CF9FCBE0);
        return;
      }
    }

    v98 = 1;
    goto LABEL_12;
  }

  v75 = sub_1CF9E8048();
  v76 = v585;
  v49, v77, v78, v79, v80, v81, v82, v83;
  v67, v84, v85, v86, v87, v88, v89, v90;
  if (v75)
  {

    v56 = v582;
    goto LABEL_7;
  }

  v169 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v171 = v170;
  v172 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v49 = v173;
  if (v169 != v172 || v171 != v173)
  {
    v206 = sub_1CF9E8048();
    v171, v207, v208, v209, v210, v211, v212, v213;
    v49, v214, v215, v216, v217, v218, v219, v220;
    if (v206)
    {

      goto LABEL_26;
    }

    v561[1] = *MEMORY[0x1E6967258];
    v259 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v261 = v260;
    v94 = v585;
    v263 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v264 = v259;
    v49 = v261;
    v265 = v262;
    if (v264 == v263 && v49 == v262)
    {

      v49, v266, v267, v268, v269, v270, v271, v272;
      v265, v273, v274, v275, v276, v277, v278, v279;
      v280 = v580;
LABEL_39:
      sub_1CF33F8C8(v578, v45);
      v49 = v280;
      v325 = *(v280 + 48);
      v326 = v579;
      if (v325(v45, 1, v579) == 1)
      {
        sub_1CEFCCC44(v45, &unk_1EC4BE310, qword_1CF9FCBE0);
        v45 = v583;
        v327 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v329 = v328;
        v331 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v337 = v327;
        v338 = v330;
        if (v337 != v331 || v329 != v330)
        {
          v49 = sub_1CF9E8048();
          v329, v339, v340, v341, v342, v343, v344, v345;
          v338, v346, v347, v348, v349, v350, v351, v352;
          if (v49)
          {
            goto LABEL_73;
          }

          goto LABEL_46;
        }

        goto LABEL_72;
      }

      v570 = v325;
      (*(v49 + 32))(v28, v45, v326);
      v353 = v577;
      sub_1CF9E5988();
      v354 = *(v581 + 48);
      if (*(v354 + 16))
      {
        v355 = v576;
        (*(v49 + 16))(v576, v354 + ((*(v49 + 80) + 32) & ~*(v49 + 80)), v326);
        LODWORD(v569) = sub_1CF9E59A8();
        v356 = *(v49 + 8);
        v49 += 8;
        v356(v355, v326);
        v356(v353, v326);
        v356(v28, v326);
        v45 = v583;
        v325 = v570;
        if ((v569 & 1) == 0)
        {
LABEL_46:
          sub_1CF33F8C8(v578, v42);
          v357 = v579;
          if (v325(v42, 1, v579) == 1)
          {
            sub_1CEFCCC44(v42, &unk_1EC4BE310, qword_1CF9FCBE0);
            v358 = objc_allocWithZone(MEMORY[0x1E695E000]);
            v359 = sub_1CF9E6888();
            v360 = [v358 initWithSuiteName_];

            v56 = v582;
            if (!v360 || (v361 = sub_1CF9E6888(), v49 = [v360 BOOLForKey_], v360, v361, (v49 & 1) == 0))
            {
              v362 = sub_1CF4F1CC8();
              if (v362)
              {
                v363 = v362;
                (*(v580 + 56))(v48, 1, 1, v579);
                sub_1CF55D574(v581, v363, 0, v48);

                sub_1CEFCCC44(v48, &unk_1EC4BE310, qword_1CF9FCBE0);
              }
            }
          }

          else
          {
            v49 = v568;
            (*(v580 + 32))(v568, v42, v357);
            v56 = v582;
            sub_1CF5602E8(v49, v581);
            if ((v447 & 1) == 0)
            {
              v448 = objc_allocWithZone(MEMORY[0x1E695E000]);
              v449 = sub_1CF9E6888();
              v450 = [v448 initWithSuiteName_];

              if (!v450 || (v451 = sub_1CF9E6888(), v452 = [v450 BOOLForKey_], v450, v451, (v452 & 1) == 0))
              {
                sub_1CF560998(v49, v581);
              }
            }

            (*(v580 + 8))(v49, v579);
          }

          goto LABEL_79;
        }

LABEL_73:
        v98 = 0;
        v56 = v582;
        goto LABEL_12;
      }

      __break(1u);
LABEL_112:
      __break(1u);
      return;
    }

    v310 = sub_1CF9E8048();

    v49, v311, v312, v313, v314, v315, v316, v317;
    v265, v318, v319, v320, v321, v322, v323, v324;
    v280 = v580;
    if (v310)
    {
      goto LABEL_39;
    }

    sub_1CF33F8C8(v578, v39);
    v42 = (v280 + 48);
    v435 = *(v280 + 48);
    v436 = v579;
    if (v435(v39, 1, v579) == 1)
    {
      sub_1CEFCCC44(v39, &unk_1EC4BE310, qword_1CF9FCBE0);
      v45 = v583;
      v437 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v329 = v438;
      v331 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v439 = v437;
      v338 = v330;
      if (v439 == v331 && v329 == v330)
      {
LABEL_72:
        v329, v330, v331, v332, v333, v334, v335, v336;
        v338, v440, v441, v442, v443, v444, v445, v446;
        goto LABEL_73;
      }

      v511 = sub_1CF9E8048();
      v329, v512, v513, v514, v515, v516, v517, v518;
      v338, v519, v520, v521, v522, v523, v524, v525;
      v56 = v582;
      if ((v511 & 1) == 0)
      {
LABEL_103:
        v558 = v564;
        sub_1CF33F8C8(v578, v564);
        v559 = v579;
        if (v435(v558, 1, v579) == 1)
        {
          sub_1CEFCCC44(v558, &unk_1EC4BE310, qword_1CF9FCBE0);
        }

        else
        {
          v560 = v580;
          v49 = v562;
          (*(v580 + 32))(v562, v558, v559);
          sub_1CF5602E8(v49, v581);
          (*(v560 + 8))(v49, v559);
        }
      }

LABEL_79:
      v98 = 0;
      goto LABEL_12;
    }

    v488 = v436;
    v489 = *(v280 + 32);
    v489(v570, v39, v488);
    v490 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v492 = v491;
    v494 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v500 = v490;
    v501 = v493;
    if (v500 == v494 && v492 == v493)
    {
      v492, v493, v494, v495, v496, v497, v498, v499;
      v501, v502, v503, v504, v505, v506, v507, v508;
      v509 = v570;
      v510 = v569;
    }

    else
    {
      v526 = sub_1CF9E8048();
      v492, v527, v528, v529, v530, v531, v532, v533;
      v501, v534, v535, v536, v537, v538, v539, v540;
      v509 = v570;
      v510 = v569;
      if ((v526 & 1) == 0)
      {
        goto LABEL_101;
      }
    }

    v568 = v489;
    v541 = v579;
    v542 = v580;
    (*(v580 + 16))(v510, v509, v579);
    (*(v542 + 56))(v510, 0, 1, v541);
    v543 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
    v544 = v583;
    swift_beginAccess();
    v545 = *(v565 + 48);
    v546 = v566;
    sub_1CF33F8C8(v510, v566);
    sub_1CF33F8C8(&v544[v543], v546 + v545);
    if (v435(v546, 1, v541) == 1)
    {
      sub_1CEFCCC44(v510, &unk_1EC4BE310, qword_1CF9FCBE0);
      if (v435(v546 + v545, 1, v541) == 1)
      {
        sub_1CEFCCC44(v546, &unk_1EC4BE310, qword_1CF9FCBE0);
        v509 = v570;
        goto LABEL_101;
      }
    }

    else
    {
      v547 = v563;
      sub_1CF33F8C8(v546, v563);
      if (v435(v546 + v545, 1, v541) != 1)
      {
        v548 = v546 + v545;
        v549 = v577;
        (v568)(v577, v548, v541);
        sub_1CF01C474(&qword_1EDEAB410, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
        v550 = sub_1CF9E6868();
        v551 = *(v580 + 8);
        v551(v549, v541);
        sub_1CEFCCC44(v569, &unk_1EC4BE310, qword_1CF9FCBE0);
        v551(v547, v541);
        sub_1CEFCCC44(v566, &unk_1EC4BE310, qword_1CF9FCBE0);
        v509 = v570;
        if (v550)
        {
LABEL_101:
          v552 = v577;
          sub_1CF9E5988();
          v553 = *(v581 + 48);
          if (!*(v553 + 16))
          {
            goto LABEL_112;
          }

          v49 = v579;
          v554 = v580;
          v555 = v576;
          (*(v580 + 16))(v576, v553 + ((*(v554 + 80) + 32) & ~*(v554 + 80)), v579);
          v556 = sub_1CF9E59A8();
          v557 = *(v554 + 8);
          v557(v555, v49);
          v557(v552, v49);
          v557(v509, v49);
          v56 = v582;
          v45 = v583;
          if ((v556 & 1) == 0)
          {
            goto LABEL_103;
          }

          goto LABEL_79;
        }

LABEL_99:
        sub_1CF560EF8(v581, 0xD000000000000020, 0x80000001CFA527E0);
        (*(v580 + 8))(v509, v579);
        return;
      }

      sub_1CEFCCC44(v569, &unk_1EC4BE310, qword_1CF9FCBE0);
      (*(v580 + 8))(v547, v541);
    }

    sub_1CEFCCC44(v546, &qword_1EC4C1778, qword_1CFA0AC20);
    v509 = v570;
    goto LABEL_99;
  }

  v171, v174, v175, v176, v177, v178, v179, v180;
  v49, v181, v182, v183, v184, v185, v186, v187;
LABEL_26:
  v56 = v582;
  v45 = v583;
  if ((v583[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isFolder] & 1) == 0)
  {
    v586 = 0;
    v587 = 0xE000000000000000;
    sub_1CF9E7948();
    v587, v221, v222, v223, v224, v225, v226, v227;
    v586 = 0xD000000000000011;
    v587 = 0x80000001CFA52730;
    v228 = [v45 description];
    v229 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v231 = v230;

    MEMORY[0x1D3868CC0](v229, v231);
    v231, v232, v233, v234, v235, v236, v237, v238;
    MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA52810);
    v239 = NSFileProviderItemIdentifier.description.getter(v76);
    v241 = v240;
    MEMORY[0x1D3868CC0](v239);
    v241, v242, v243, v244, v245, v246, v247, v248;
    v142 = v586;
    v140 = v587;
    if (qword_1EDEA3408 == -1)
    {
LABEL_29:
      v249 = qword_1EDEBB5A0;
      v250 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v251 = swift_allocObject();
      *(v251 + 16) = xmmword_1CF9FA450;
      *(v251 + 56) = MEMORY[0x1E69E6158];
      *(v251 + 64) = sub_1CEFD51C4();
      *(v251 + 32) = v142;
      *(v251 + 40) = v140;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v249, v250, v251);
      v251, v252, v253, v254, v255, v256, v257, v258;
      return;
    }

LABEL_110:
    swift_once();
    goto LABEL_29;
  }

  v98 = 1;
  v94 = v585;
LABEL_12:
  v53 = OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfChanges;
  v99 = *(v56 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfChanges);
  v100 = __CFADD__(v99, 1);
  v101 = v99 + 1;
  if (!v100)
  {
    LODWORD(v583) = v98;
    *(v56 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfChanges) = v101;
    v588 = 0;
    v589 = 0xE000000000000000;
    sub_1CF9E7948();
    v589, v102, v103, v104, v105, v106, v107, v108;
    v588 = 0xD000000000000012;
    v589 = 0x80000001CFA52790;
    v109 = [v45 description];
    v110 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v112 = v111;

    MEMORY[0x1D3868CC0](v110, v112);
    v112, v113, v114, v115, v116, v117, v118, v119;
    MEMORY[0x1D3868CC0](544175136, 0xE400000000000000);
    v120 = NSFileProviderItemIdentifier.description.getter(v94);
    v122 = v121;
    MEMORY[0x1D3868CC0](v120);
    v122, v123, v124, v125, v126, v127, v128, v129;
    v49 = v588;
    v42 = v589;
    if (qword_1EDEA3408 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_108;
  }

LABEL_107:
  __break(1u);
LABEL_108:
  swift_once();
LABEL_14:
  v130 = qword_1EDEBB5A0;
  v131 = sub_1CF9E7298();
  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v132 = swift_allocObject();
  v569 = xmmword_1CF9FA450;
  *(v132 + 16) = xmmword_1CF9FA450;
  *(v132 + 56) = MEMORY[0x1E69E6158];
  v568 = sub_1CEFD51C4();
  *(v132 + 64) = v568;
  *(v132 + 32) = v49;
  *(v132 + 40) = v42;
  sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v130, v131, v132);
  v132, v133, v134, v135, v136, v137, v138, v139;
  v140 = *(v56 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
  v141 = swift_allocObject();
  v566 = xmmword_1CFA00250;
  *(v141 + 16) = xmmword_1CFA00250;
  *(v141 + 32) = v45;
  v142 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
  v143 = sub_1CF9E6D28();
  v141, v144, v145, v146, v147, v148, v149, v150;
  [(FSTester *)v140 didUpdateItems:v143];

  if ((v584 & 0xB00) != 0)
  {
    v151 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v153 = v152;
    v155 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v161 = v154;
    if (v151 == v155 && v153 == v154)
    {
      v153, v154, v155, v156, v157, v158, v159, v160;
      v161, v162, v163, v164, v165, v166, v167, v168;
      goto LABEL_54;
    }

    v188 = sub_1CF9E8048();
    v153, v189, v190, v191, v192, v193, v194, v195;
    v161, v196, v197, v198, v199, v200, v201, v202;
    if (v188)
    {
      goto LABEL_54;
    }

    v565 = v130;
    v203 = v574;
    sub_1CF33F8C8(v578, v574);
    v205 = v579;
    v204 = v580;
    if ((*(v580 + 48))(v203, 1, v579) == 1)
    {
      sub_1CEFCCC44(v203, &unk_1EC4BE310, qword_1CF9FCBE0);
      goto LABEL_54;
    }

    v578 = v53;
    (*(v204 + 32))(v575, v203, v205);
    v281 = v577;
    sub_1CF9E5988();
    v282 = v572;
    sub_1CF00BE78(v582 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_domain, v572, type metadata accessor for LocalDomain);
    (*(v204 + 16))(v576, v281, v205);
    v283 = v571;
    sub_1CF00BE78(v282, v571, type metadata accessor for LocalDomain);
    v284 = type metadata accessor for VFSItem(0);
    v285 = v573;
    (*(*(v284 - 8) + 56))(v573, 1, 1, v284);
    v286 = objc_allocWithZone(type metadata accessor for LocalItem(0));
    v287 = sub_1CF001704(v576, v283, v285);
    sub_1CF00F364(v282, type metadata accessor for LocalDomain);
    v290 = *(v204 + 8);
    v289 = v204 + 8;
    v288 = v290;
    (v290)(v577, v205);
    if (!v287)
    {
      (v288)(v575, v205);
      v53 = v578;
      goto LABEL_54;
    }

    v577 = v288;
    v580 = v289;
    v291 = v287;
    v292 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v294 = v293;
    v296 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v302 = v295;
    if (v292 == v296 && v294 == v295)
    {
      v53 = v578;
    }

    else
    {
      v364 = sub_1CF9E8048();
      v294, v365, v366, v367, v368, v369, v370, v371;
      v302, v372, v373, v374, v375, v376, v377, v378;
      v53 = v578;
      if (v364)
      {
        goto LABEL_53;
      }

      v453 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v294 = v454;
      v296 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v302 = v295;
      if (v453 != v296 || v294 != v295)
      {
        v455 = sub_1CF9E8048();
        v294, v456, v457, v458, v459, v460, v461, v462;
        v302, v463, v464, v465, v466, v467, v468, v469;
        if (v455)
        {
          goto LABEL_53;
        }

        v470 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v294 = v471;
        v296 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v472 = v470;
        v302 = v295;
        if (v472 != v296 || v294 != v295)
        {
          v473 = sub_1CF9E8048();
          v294, v474, v475, v476, v477, v478, v479, v480;
          v302, v481, v482, v483, v484, v485, v486, v487;
          if ((v473 & 1) == 0)
          {
            (v577)(v575, v579);

            goto LABEL_54;
          }

          goto LABEL_53;
        }
      }
    }

    v294, v295, v296, v297, v298, v299, v300, v301;
    v302, v303, v304, v305, v306, v307, v308, v309;
LABEL_53:
    v588 = 0;
    v589 = 0xE000000000000000;
    sub_1CF9E7948();
    v589, v379, v380, v381, v382, v383, v384, v385;
    v588 = 0xD000000000000019;
    v589 = 0x80000001CFA52710;
    v386 = [v291 description];
    v387 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v389 = v388;

    MEMORY[0x1D3868CC0](v387, v389);
    v389, v390, v391, v392, v393, v394, v395, v396;
    MEMORY[0x1D3868CC0](544175136, 0xE400000000000000);
    v397 = NSFileProviderItemIdentifier.description.getter(v585);
    v399 = v398;
    MEMORY[0x1D3868CC0](v397);
    v399, v400, v401, v402, v403, v404, v405, v406;
    v408 = v588;
    v407 = v589;
    v409 = sub_1CF9E7298();
    v410 = swift_allocObject();
    *(v410 + 16) = v569;
    v411 = v568;
    *(v410 + 56) = MEMORY[0x1E69E6158];
    *(v410 + 64) = v411;
    *(v410 + 32) = v408;
    *(v410 + 40) = v407;
    sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v565, v409, v410);
    v410, v412, v413, v414, v415, v416, v417, v418;
    v419 = swift_allocObject();
    *(v419 + 16) = v566;
    *(v419 + 32) = v291;
    v420 = v291;
    v421 = sub_1CF9E6D28();
    v419, v422, v423, v424, v425, v426, v427, v428;
    [(FSTester *)v140 didUpdateItems:v421];

    (v577)(v575, v579);
  }

LABEL_54:
  if ((v584 & 0x1B2F) != 0 && (v583 & v142[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isFolder]) == 1)
  {
    if ([(_SwiftObject *)v140 respondsToSelector:sel_suggestedBatchSize])
    {
      v429 = [(FSTester *)v140 suggestedBatchSize];
      if ((v429 & 0x8000000000000000) == 0)
      {
        goto LABEL_60;
      }

      __break(1u);
    }

    v429 = 200;
LABEL_60:
    sub_1CF5611E4(v142, ((v429 >> 1) + 1));
    v431 = v430;
    if ([(_SwiftObject *)v140 respondsToSelector:sel_suggestedBatchSize])
    {
      v432 = [(FSTester *)v140 suggestedBatchSize];
      if ((v432 & 0x8000000000000000) == 0)
      {
LABEL_64:
        if (v431 > v432 >> 1)
        {
          sub_1CF560EF8(v581, 0xD000000000000022, 0x80000001CFA527B0);
          return;
        }

        v433 = *(v53 + v582);
        v100 = __CFADD__(v433, v431);
        v434 = v433 + v431;
        if (!v100)
        {
          *(v53 + v582) = v434;
          return;
        }

        __break(1u);
        goto LABEL_110;
      }

      __break(1u);
    }

    v432 = 200;
    goto LABEL_64;
  }
}

void sub_1CF55F0FC(uint64_t a1, void *a2, uint64_t a3)
{
  v486 = a3;
  v490 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v482 = &v471 - v6;
  v7 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v480 = (&v471 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v481 = &v471 - v10;
  v477 = sub_1CF9E63A8();
  v476 = *(v477 - 8);
  MEMORY[0x1EEE9AC00](v477);
  v473 = &v471 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v474 = sub_1CF9E6448();
  v472 = *(v474 - 8);
  MEMORY[0x1EEE9AC00](v474);
  v13 = &v471 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v471 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v471 - v18;
  v20 = sub_1CF9E5A58();
  v21 = *(v20 - 8);
  v487 = v20;
  v488 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v479 = &v471 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v484 = &v471 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v483 = &v471 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v471 - v28;
  v30 = sub_1CF9E64A8();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = (&v471 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v475 = a1;
  v35 = *(a1 + 24);
  *v34 = v35;
  (*(v31 + 104))(v34, *MEMORY[0x1E69E8020], v30, v32);
  v471 = v35;
  LOBYTE(v35) = sub_1CF9E64D8();
  (*(v31 + 8))(v34, v30);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_58;
  }

  v489 = v3;
  v36 = *&v3[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observedID];
  v478 = *MEMORY[0x1E6967298];
  v37 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v39 = v38;
  v41 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v47 = v37;
  v48 = v40;
  v485 = v36;
  if (v47 == v41 && v39 == v40)
  {
    v39, v40, v41, v42, v43, v44, v45, v46;
    v48, v49, v50, v51, v52, v53, v54, v55;
LABEL_7:
    v72 = v490;
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v74 = v73;
    v75 = sub_1CF9E6AE8();
    v74, v76, v77, v78, v79, v80, v81, v82;
    if (v75)
    {
LABEL_15:
      aBlock = 0;
      v493 = 0xE000000000000000;
      sub_1CF9E7948();
      v493, v135, v136, v137, v138, v139, v140, v141;
      aBlock = 0xD000000000000011;
      v493 = 0x80000001CFA52730;
      v142 = NSFileProviderItemIdentifier.description.getter(v72);
      v144 = v143;
      MEMORY[0x1D3868CC0](v142);
      v144, v145, v146, v147, v148, v149, v150, v151;
      v152 = "; item is not a directory";
      v153 = 0xD00000000000001CLL;
      goto LABEL_16;
    }

    v83 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v85 = v84;
    v87 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v57 = v86;
    if (v83 == v87 && v85 == v86)
    {
      v85, v86, v87, v88, v89, v90, v91, v92;
      v57, v93, v94, v95, v96, v97, v98, v99;
      goto LABEL_15;
    }

    v120 = sub_1CF9E8048();
    v85, v121, v122, v123, v124, v125, v126, v127;
    v57, v128, v129, v130, v131, v132, v133, v134;
    if (v120)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

  v56 = sub_1CF9E8048();
  v57 = v36;
  v39, v58, v59, v60, v61, v62, v63, v64;
  v48, v65, v66, v67, v68, v69, v70, v71;
  if (v56)
  {

    goto LABEL_7;
  }

  v100 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v102 = v101;
  v103 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v105 = v104;
  if (v100 == v103 && v102 == v104)
  {

    v102, v106, v107, v108, v109, v110, v111, v112;
    v105, v113, v114, v115, v116, v117, v118, v119;
    goto LABEL_20;
  }

  v164 = sub_1CF9E8048();
  v102, v165, v166, v167, v168, v169, v170, v171;
  v105, v172, v173, v174, v175, v176, v177, v178;
  if (v164)
  {

LABEL_20:
    v72 = v490;
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v57 = v179;
    v180 = sub_1CF9E6AE8();
    v57, v181, v182, v183, v184, v185, v186, v187;
    if ((v180 & 1) == 0)
    {
      v188 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v190 = v189;
      v192 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v57 = v191;
      if (v188 == v192 && v190 == v191)
      {
        v190, v191, v192, v193, v194, v195, v196, v197;
        v57, v198, v199, v200, v201, v202, v203, v204;
      }

      else
      {
        v225 = sub_1CF9E8048();
        v190, v226, v227, v228, v229, v230, v231, v232;
        v57, v233, v234, v235, v236, v237, v238, v239;
        if ((v225 & 1) == 0)
        {
          aBlock = 0;
          v493 = 0xE000000000000000;
          sub_1CF9E7948();
          v493, v240, v241, v242, v243, v244, v245, v246;
          aBlock = 0xD000000000000011;
          v493 = 0x80000001CFA52730;
          v247 = NSFileProviderItemIdentifier.description.getter(v72);
          v249 = v248;
          MEMORY[0x1D3868CC0](v247);
          v249, v250, v251, v252, v253, v254, v255, v256;
          v152 = "ignore update of ";
          v153 = 0xD000000000000019;
LABEL_16:
          MEMORY[0x1D3868CC0](v153, v152 | 0x8000000000000000);
          v34 = aBlock;
          v22 = v493;
          if (qword_1EDEA3408 == -1)
          {
LABEL_17:
            v154 = qword_1EDEBB5A0;
            v155 = sub_1CF9E7298();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
            v156 = swift_allocObject();
            *(v156 + 16) = xmmword_1CF9FA450;
            *(v156 + 56) = MEMORY[0x1E69E6158];
            *(v156 + 64) = sub_1CEFD51C4();
            *(v156 + 32) = v34;
            *(v156 + 40) = v22;
            sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v154, v155, v156);
            v156, v157, v158, v159, v160, v161, v162, v163;
            return;
          }

LABEL_58:
          swift_once();
          goto LABEL_17;
        }
      }
    }

    goto LABEL_38;
  }

  v205 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v207 = v206;
  v208 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v210 = v209;
  if (v205 == v208 && v207 == v209)
  {

    v207, v211, v212, v213, v214, v215, v216, v217;
    v210, v218, v219, v220, v221, v222, v223, v224;
    v72 = v490;
  }

  else
  {
    v257 = sub_1CF9E8048();

    v207, v258, v259, v260, v261, v262, v263, v264;
    v210, v265, v266, v267, v268, v269, v270, v271;
    v72 = v490;
    if ((v257 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v273 = v272;
  v274 = sub_1CF9E6AE8();
  v273, v275, v276, v277, v278, v279, v280, v281;
  if ((v274 & 1) == 0)
  {
    v282 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v284 = v283;
    v286 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v292 = v282;
    v293 = v285;
    if (v292 == v286 && v284 == v285)
    {
      v284, v285, v286, v287, v288, v289, v290, v291;
      v293, v294, v295, v296, v297, v298, v299, v300;
    }

    else
    {
      v301 = sub_1CF9E8048();
      v284, v302, v303, v304, v305, v306, v307, v308;
      v293, v309, v310, v311, v312, v313, v314, v315;
      if ((v301 & 1) == 0)
      {
        sub_1CF33F8C8(v486, v19);
        v316 = v487;
        v57 = v488;
        if ((*v488[1].tree)(v19, 1, v487) == 1)
        {
          sub_1CEFCCC44(v19, &unk_1EC4BE310, qword_1CF9FCBE0);
        }

        else
        {
          isa = v57[1].super.isa;
          isa(v29, v19, v316);
          v318 = v483;
          (*v57->tree)(v483, v29, v316);
          v319 = (v57[2].tree[0] + 24) & ~v57[2].tree[0];
          v320 = swift_allocObject();
          v321 = v316;
          v322 = v320;
          v323 = v489;
          *(v320 + 16) = v489;
          v324 = v318;
          v19 = v321;
          (isa)(v320 + v319, v324);
          *(v322 + ((v22 + v319 + 7) & 0xFFFFFFFFFFFFFFF8)) = v475;
          v496 = sub_1CF562730;
          v497 = v322;
          aBlock = MEMORY[0x1E69E9820];
          v493 = 1107296256;
          v494 = sub_1CEFCA444;
          v495 = &block_descriptor_8;
          v325 = _Block_copy(&aBlock);
          v326 = v323;

          sub_1CF9E63F8();
          v491 = MEMORY[0x1E69E7CC0];
          sub_1CF01C474(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
          sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
          v327 = v473;
          v72 = v490;
          v57 = v477;
          sub_1CF9E77B8();
          MEMORY[0x1D3869630](0, v13, v327, v325);
          _Block_release(v325);
          (*(v476 + 8))(v327, v57);
          (*(v472 + 8))(v13, v474);
          (*v488->_anon_8)(v29, v19);
        }
      }
    }
  }

LABEL_38:
  v328 = v489;
  v329 = *&v489[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfChanges];
  v330 = __CFADD__(v329, 1);
  v331 = v329 + 1;
  if (v330)
  {
    __break(1u);
    goto LABEL_60;
  }

  *&v489[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfChanges] = v331;
  sub_1CF33F8C8(v486, v16);
  v19 = v487;
  v332 = v488;
  v13 = &unk_1EDEBB000;
  if ((*v488[1].tree)(v16, 1, v487) != 1)
  {
    v333 = v484;
    (v332[1].super.isa)(v484, v16, v19);
    v334 = v483;
    sub_1CF9E5988();
    v335 = v481;
    sub_1CF00BE78(&v328[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_domain], v481, type metadata accessor for LocalDomain);
    v336 = v479;
    (*v332->tree)(v479, v334, v19);
    v337 = v480;
    sub_1CF00BE78(v335, v480, type metadata accessor for LocalDomain);
    v338 = type metadata accessor for VFSItem(0);
    v339 = v482;
    (*(*(v338 - 8) + 56))(v482, 1, 1, v338);
    v340 = objc_allocWithZone(type metadata accessor for LocalItem(0));
    v57 = sub_1CF001704(v336, v337, v339);
    sub_1CF00F364(v335, type metadata accessor for LocalDomain);
    v341 = *v332->_anon_8;
    (v341)(v334, v19);
    if (!v57)
    {
      (v341)(v333, v19);
      v328 = v489;
      v13 = &unk_1EDEBB000;
      goto LABEL_49;
    }

    v342 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v344 = v343;
    v346 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v352 = v342;
    v353 = v345;
    v13 = &unk_1EDEBB000;
    if (v352 == v346 && v344 == v345)
    {
      goto LABEL_44;
    }

    v361 = sub_1CF9E8048();
    v344, v362, v363, v364, v365, v366, v367, v368;
    v353, v369, v370, v371, v372, v373, v374, v375;
    if ((v361 & 1) == 0)
    {
      v436 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v344 = v437;
      v346 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v438 = v436;
      v353 = v345;
      if (v438 == v346 && v344 == v345)
      {
        goto LABEL_44;
      }

      v439 = sub_1CF9E8048();
      v344, v440, v441, v442, v443, v444, v445, v446;
      v353, v447, v448, v449, v450, v451, v452, v453;
      if (v439)
      {
        goto LABEL_47;
      }

      v454 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v344 = v455;
      v346 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v353 = v345;
      if (v454 == v346 && v344 == v345)
      {
LABEL_44:
        v344, v345, v346, v347, v348, v349, v350, v351;
        v353, v354, v355, v356, v357, v358, v359, v360;
        goto LABEL_47;
      }

      v456 = sub_1CF9E8048();
      v344, v457, v458, v459, v460, v461, v462, v463;
      v353, v464, v465, v466, v467, v468, v469, v470;
      if ((v456 & 1) == 0)
      {
        (v341)(v333, v19);

        v328 = v489;
        goto LABEL_49;
      }
    }

LABEL_47:
    v488 = v341;
    aBlock = 0;
    v493 = 0xE000000000000000;
    sub_1CF9E7948();
    v493, v376, v377, v378, v379, v380, v381, v382;
    aBlock = 0xD000000000000019;
    v493 = 0x80000001CFA52710;
    v383 = [(_SwiftObject *)v57 description];
    v384 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v386 = v385;

    MEMORY[0x1D3868CC0](v384, v386);
    v386, v387, v388, v389, v390, v391, v392, v393;
    MEMORY[0x1D3868CC0](544175136, 0xE400000000000000);
    v394 = NSFileProviderItemIdentifier.description.getter(v485);
    v396 = v395;
    MEMORY[0x1D3868CC0](v394);
    v396, v397, v398, v399, v400, v401, v402, v403;
    v72 = aBlock;
    v29 = v493;
    if (qword_1EDEA3408 == -1)
    {
LABEL_48:
      v404 = qword_1EDEBB5A0;
      v405 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v406 = swift_allocObject();
      *(v406 + 16) = xmmword_1CF9FA450;
      *(v406 + 56) = MEMORY[0x1E69E6158];
      *(v406 + 64) = sub_1CEFD51C4();
      *(v406 + 32) = v72;
      *(v406 + 40) = v29;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v404, v405, v406);
      v406, v407, v408, v409, v410, v411, v412, v413;
      v328 = v489;
      v414 = *&v489[*(v13 + 266)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
      v415 = swift_allocObject();
      *(v415 + 16) = xmmword_1CFA00250;
      *(v415 + 32) = v57;
      v416 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
      v417 = sub_1CF9E6D28();
      v415, v418, v419, v420, v421, v422, v423, v424;
      [v414 didUpdateItems_];

      (v488)(v484, v19);
      v72 = v490;
      goto LABEL_49;
    }

LABEL_60:
    swift_once();
    goto LABEL_48;
  }

  sub_1CEFCCC44(v16, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_49:
  v425 = *&v328[*(v13 + 266)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1770, &qword_1CFA05A80);
  v426 = swift_allocObject();
  *(v426 + 16) = xmmword_1CF9FA450;
  *(v426 + 32) = v72;
  type metadata accessor for NSFileProviderItemIdentifier(0);
  v427 = v72;
  v428 = sub_1CF9E6D28();
  v426, v429, v430, v431, v432, v433, v434, v435;
  [v425 didDeleteItemsWithIdentifiers_];
}

void sub_1CF5602E8(char *a1, uint64_t a2)
{
  v155 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v144 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v144 - v8;
  v10 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v144 - v14;
  v16 = sub_1CF9E5A58();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v25 = MEMORY[0x1EEE9AC00](v20);
  v26 = &v144 - v21;
  v27 = *(a2 + 48);
  if (*(v27 + 16))
  {
    v148 = v24;
    v149 = v23;
    v150 = v12;
    v151 = v15;
    v152 = v9;
    v153 = v2;
    v154 = v22;
    v145 = v6;
    v146 = a2;
    v28 = *(v17 + 16);
    v29 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v28(&v144 - v21, v27 + v29, v16, v25);
    sub_1CF9E5A18();
    v30 = v16;
    v32 = v31;
    sub_1CF9E5A18();
    v34 = v33;
    v35 = sub_1CF9E6AE8();
    v32, v36, v37, v38, v39, v40, v41, v42;
    v34, v43, v44, v45, v46, v47, v48, v49;
    if ((v35 & 1) == 0)
    {
      (*(v17 + 8))(v26, v30);
      return;
    }

    v144 = v17;
    v147 = v30;
    v50 = sub_1CF9E5898();
    v51 = sub_1CF9E5898();
    v52 = *v50->tree;
    v50, v53, v54, v55, v56, v57, v58, v59;
    if (v52 >= *v51->tree)
    {
      (*(v144 + 8))(v26, v147);
      v51, v117, v118, v119, v120, v121, v122, v123;
      return;
    }

    v60 = *&v51[1]._anon_8[16 * v52];

    v51, v61, v62, v63, v64, v65, v66, v67;
    if (*(v27 + 16))
    {
      v155 = v26;
      v68 = v27 + v29;
      v69 = v149;
      v70 = v147;
      (v28)(v149, v68, v147);
      v71 = v154;
      sub_1CF9E5968();
      v60, v72, v73, v74, v75, v76, v77, v78;
      v79 = *(v144 + 8);
      v79(v69, v70);
      (v28)(v69, v71, v70);
      v80 = v151;
      sub_1CF00BE78(v153 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_domain, v151, type metadata accessor for LocalDomain);
      v81 = v148;
      (v28)(v148, v69, v70);
      v82 = v150;
      sub_1CF00BE78(v80, v150, type metadata accessor for LocalDomain);
      v83 = type metadata accessor for VFSItem(0);
      v84 = v152;
      (*(*(v83 - 8) + 56))(v152, 1, 1, v83);
      v85 = objc_allocWithZone(type metadata accessor for LocalItem(0));
      v86 = sub_1CF001704(v81, v82, v84);
      sub_1CF00F364(v80, type metadata accessor for LocalDomain);
      v79(v69, v70);
      if (!v86)
      {
        v79(v71, v70);
        v79(v155, v70);
        return;
      }

      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v88 = v87;
      v89 = sub_1CF9E6AE8();
      v88, v90, v91, v92, v93, v94, v95, v96;
      v97 = v155;
      if ((v89 & 1) == 0)
      {
        v98 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v100 = v99;
        v102 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v108 = v98;
        v109 = v101;
        if (v108 == v102 && v100 == v101)
        {
          v100, v101, v102, v103, v104, v105, v106, v107;
          v109, v110, v111, v112, v113, v114, v115, v116;
        }

        else
        {
          v124 = sub_1CF9E8048();
          v100, v125, v126, v127, v128, v129, v130, v131;
          v109, v132, v133, v134, v135, v136, v137, v138;
          if ((v124 & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      if (*&v86[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_filename] == 0x68736172542ELL && *&v86[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_filename + 8] == 0xE600000000000000 || (sub_1CF9E8048() & 1) != 0)
      {

        v139 = v147;
        v79(v154, v147);
        v140 = v97;
        v141 = v139;
LABEL_19:
        v79(v140, v141);
        return;
      }

LABEL_18:
      v142 = v145;
      v143 = v147;
      (*(v144 + 56))(v145, 1, 1, v147);
      sub_1CF55D574(v146, v86, 0, v142);

      sub_1CEFCCC44(v142, &unk_1EC4BE310, qword_1CF9FCBE0);
      v79(v154, v143);
      v140 = v97;
      v141 = v143;
      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1CF560998(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v67 = &v67 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v72 = &v67 - v6;
  v7 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v70 = (&v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v67 - v10;
  v12 = sub_1CF9E5A58();
  v71 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v67 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = (&v67 - v19);
  v21 = type metadata accessor for LocalContainer(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v2;
  sub_1CF0047A0(v2 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_domain, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1CEFCCC44(v20, &unk_1EC4C1110, &qword_1CFA08100);
  }

  else
  {
    sub_1CEFFC4F4(v20, v24, type metadata accessor for LocalContainer);
    v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v27 = v26;
    v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v35 = v28;
    if (v25 == v29 && v27 == v28)
    {
      v27, v28, v29, v30, v31, v32, v33, v34;
      v35, v36, v37, v38, v39, v40, v41, v42;
    }

    else
    {
      v43 = sub_1CF9E8048();
      v27, v44, v45, v46, v47, v48, v49, v50;
      v35, v51, v52, v53, v54, v55, v56, v57;
      if ((v43 & 1) == 0)
      {
        v58 = v71;
        v59 = *(v71 + 16);
        v59(v17, &v24[*(v21 + 28)], v12);
        sub_1CF00BE78(&v24[*(v21 + 24)], v11, type metadata accessor for LocalDomain);
        v59(v14, v17, v12);
        v60 = v70;
        sub_1CF00BE78(v11, v70, type metadata accessor for LocalDomain);
        v61 = type metadata accessor for VFSItem(0);
        v62 = v72;
        (*(*(v61 - 8) + 56))(v72, 1, 1, v61);
        v63 = objc_allocWithZone(type metadata accessor for LocalItem(0));
        v64 = sub_1CF001704(v14, v60, v62);
        sub_1CF00F364(v11, type metadata accessor for LocalDomain);
        (*(v58 + 8))(v17, v12);
        if (v64)
        {
          v65 = v67;
          (*(v58 + 56))(v67, 1, 1, v12);
          sub_1CF55D574(v68, v64, 0, v65);

          sub_1CEFCCC44(v65, &unk_1EC4BE310, qword_1CF9FCBE0);
          sub_1CF00F364(v24, type metadata accessor for LocalContainer);
          return 1;
        }
      }
    }

    sub_1CF00F364(v24, type metadata accessor for LocalContainer);
  }

  return 0;
}

void sub_1CF560EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1CF9E64A8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 24);
  v12->super.isa = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1CF9E64D8();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1CF02AA74();
  *(a1 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_1CF9E7948();
  v37, v15, v16, v17, v18, v19, v20, v21;
  v36 = 0xD000000000000015;
  v37 = 0x80000001CFA526A0;
  MEMORY[0x1D3868CC0](a2, a3);
  v8 = v36;
  v12 = v37;
  if (qword_1EDEA3408 != -1)
  {
LABEL_5:
    swift_once();
  }

  v22 = qword_1EDEBB5A0;
  v23 = sub_1CF9E7288();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1CF9FA450;
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = sub_1CEFD51C4();
  *(v24 + 32) = v8;
  *(v24 + 40) = v12;
  sub_1CF9E6018("[INFO] %@", 9, 2, &dword_1CEFC7000, v22, v23, v24);
  v24, v25, v26, v27, v28, v29, v30, v31;
  v32 = *(v4 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observer);
  type metadata accessor for NSFileProviderError(0);
  v35[1] = -1002;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF01C474(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
  sub_1CF9E57D8();
  v33 = v36;
  v34 = sub_1CF9E57E8();

  [v32 finishEnumeratingWithError_];
}

void sub_1CF5611E4(uint64_t a1, char *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v101 - v7;
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
  swift_beginAccess();
  sub_1CF33F8C8(a1 + v13, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    __break(1u);

    v90 = sub_1CF9E7298();
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_1CF9FA450;
    v110 = v104;
    v92 = sub_1CF9E7718();
    *(v91 + 56) = v12;
    *(v91 + 64) = a1;
    *(v91 + 32) = v92;
    *(v91 + 40) = v93;
    sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v3, v90, v91);
    v91, v94, v95, v96, v97, v98, v99, v100;
    __break(1u);
  }

  else
  {
    v106 = v2;
    v107 = a1;
    v108 = v10;
    v109 = v9;
    (*(v10 + 32))(v12, v8, v9);
    v111 = 0;
    v112 = 0xE000000000000000;
    sub_1CF9E7948();
    v112, v14, v15, v16, v17, v18, v19, v20;
    v111 = 0xD000000000000010;
    v112 = 0x80000001CFA52830;
    sub_1CF9E5A18();
    v22 = v21;
    v23 = sub_1CF9E6888();
    v22, v24, v25, v26, v27, v28, v29, v30;
    v31 = [v23 fp_prettyPath];

    v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v34 = v33;

    MEMORY[0x1D3868CC0](v32, v34);
    v34, v35, v36, v37, v38, v39, v40, v41;
    MEMORY[0x1D3868CC0](0x696C206874697720, 0xEC0000002074696DLL);
    v110 = a2;
    v42 = sub_1CF9E7F98();
    v44 = v43;
    MEMORY[0x1D3868CC0](v42);
    v44, v45, v46, v47, v48, v49, v50, v51;
    v52 = v112;
    v102 = v111;
    v53 = sub_1CEFFCE80();
    v103 = a2;
    v54 = v12;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v55 = qword_1EDEBB5A0;
    v56 = sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1CF9FA440;
    v111 = v53;
    v58 = sub_1CEFFD0A8();
    v104 = v53;
    v105 = v58;
    v59 = sub_1CF9E7718();
    v61 = v60;
    v62 = MEMORY[0x1E69E6158];
    *(v57 + 56) = MEMORY[0x1E69E6158];
    v63 = sub_1CEFD51C4();
    *(v57 + 32) = v59;
    *(v57 + 40) = v61;
    *(v57 + 96) = v62;
    *(v57 + 104) = v63;
    v64 = v102;
    *(v57 + 64) = v63;
    *(v57 + 72) = v64;
    *(v57 + 80) = v52;

    sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v55, v56, v57);
    v57, v65, v66, v67, v68, v69, v70, v71;
    sub_1CF56199C(v54, v106, v103, v107, &v111);
    v52, v72, v73, v74, v75, v76, v77, v78;
    v79 = sub_1CF9E7298();
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1CF9FA450;
    v110 = v104;
    v81 = sub_1CF9E7718();
    *(v80 + 56) = v62;
    *(v80 + 64) = v63;
    *(v80 + 32) = v81;
    *(v80 + 40) = v82;
    sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v55, v79, v80);
    v80, v83, v84, v85, v86, v87, v88, v89;
    (*(v108 + 8))(v54, v109);
  }
}

void sub_1CF5616B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_currentToken;
  v7 = *(v6 + *(type metadata accessor for FSChangeToken(0) + 32));
  v8 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfChanges);
  v9 = v8 - v7;
  if (v8 < v7)
  {
    goto LABEL_7;
  }

  v10 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observer);
  if (([v10 respondsToSelector_] & 1) == 0)
  {
    if (v9 >= 0x64)
    {
      return;
    }

    goto LABEL_7;
  }

  v11 = [v10 suggestedBatchSize];
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return;
  }

  if (v9 < v11 >> 1)
  {
LABEL_7:
    v12 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v13 = sub_1CF9E6888();
    v14 = [v12 initWithSuiteName_];

    if (!v14 || (v15 = sub_1CF9E6888(), v16 = [v14 BOOLForKey_], v14, v15, (v16 & 1) == 0))
    {
      sub_1CF560998(a2, a3);
    }
  }
}

void sub_1CF561818(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfChanges);
  v4 = v1 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_currentToken;
  v5 = *(v4 + *(type metadata accessor for FSChangeToken(0) + 32));
  v6 = v3 - v5;
  if (v3 < v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observer);
  if (([v7 respondsToSelector_] & 1) == 0)
  {
    if (v6 < 0xC8)
    {
      return;
    }

    goto LABEL_7;
  }

  v8 = [v7 suggestedBatchSize];
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6 < v8)
  {
    return;
  }

LABEL_7:

  sub_1CF560EF8(a1, 0xD000000000000010, 0x80000001CFA52680);
}

double sub_1CF56190C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    sub_1CF560EF8(v4, 0xD000000000000019, 0x80000001CFA526F0);
  }

  return result;
}

void sub_1CF56199C(uint64_t *a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v159 = a1;
  v147 = a4;
  v148 = a5;
  v152 = a3;
  v153 = a2;
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for FSDirectoryEnumerator(0);
  v11 = (v10 - 8);
  v151 = *(v10 - 8);
  v12 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v150 = &v145 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v145 - v14);
  v16 = swift_allocObject();
  v154 = v16;
  *(v16 + 16) = MEMORY[0x1E69E7CC0];
  v149 = v16 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v155 = *(v6 + 72);
  v18 = swift_allocObject();
  v145 = xmmword_1CF9FA450;
  *(v18 + 16) = xmmword_1CF9FA450;
  v19 = v18 + v17;
  v20 = v18;
  v146 = v7;
  v21 = *(v7 + 16);
  v157 = (v7 + 16);
  v158 = v5;
  v156 = v21;
  v21((v18 + v17), v159, v5);
  v22 = v153;
  sub_1CF00BE78(v153 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_domain, v15 + v11[7], type metadata accessor for LocalDomain);
  v23 = (v15 + v11[11]);
  *v23 = 0;
  v23[1] = 0;
  *v15 = v20;
  v24 = v20;
  *(v15 + v11[8]) = 1;
  *(v15 + v11[9]) = 0;
  v25 = v11[10];
  v26 = v152;
  *(v15 + v25) = v152;
  v27 = swift_allocObject();
  v28 = v154;
  *(v27 + 16) = v22;
  *(v27 + 24) = v28;
  v159 = v15;
  v29 = v15;
  v30 = v150;
  sub_1CF00BE78(v29, v150, type metadata accessor for FSDirectoryEnumerator);
  v31 = (*(v151 + 80) + 16) & ~*(v151 + 80);
  v32 = (v12 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_1CEFFC4F4(v30, v33 + v31, type metadata accessor for FSDirectoryEnumerator);
  v34 = (v33 + v32);
  *v34 = sub_1CF5627C0;
  v34[1] = v27;
  v163 = 0;
  LOBYTE(v161) = v26 != 0;
  v35 = *(v24 + 16);
  v152 = v153;

  v153 = v27;

  if (v35)
  {
    v36 = 0;
    v37 = (v146 + 8);
    v38 = v158;
    while (v36 < *(v24 + 16))
    {
      v156(v9, v19, v38);
      if ((v161 & 1) == 0)
      {
        (*v37)(v9, v38);
        goto LABEL_9;
      }

      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v27 = objc_autoreleasePoolPush();
      MEMORY[0x1EEE9AC00](v27);
      *(&v145 - 8) = v9;
      *(&v145 - 7) = &v163;
      v39 = v160;
      *(&v145 - 6) = v159;
      *(&v145 - 5) = &v161;
      *(&v145 - 4) = 3;
      *(&v145 - 3) = sub_1CF326E94;
      *(&v145 - 2) = v33;
      *(&v145 - 8) = 0;
      sub_1CF9E59B8();
      v160 = v39;
      if (v39)
      {
        goto LABEL_49;
      }

      ++v36;
      objc_autoreleasePoolPop(v27);
      v38 = v158;
      (*v37)(v9, v158);
      v19 += v155;
      if (v35 == v36)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_42:
    if (sub_1CF9E7818() < 1)
    {
      goto LABEL_40;
    }

    goto LABEL_11;
  }

LABEL_9:

  v19 = v163;
  v27 = v149;
  swift_beginAccess();
  if (*v27 >> 62)
  {
    goto LABEL_42;
  }

  if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
LABEL_40:
    sub_1CF00F364(v159, type metadata accessor for FSDirectoryEnumerator);

    *v148 = v19;
    return;
  }

LABEL_11:
  v40 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v41 = sub_1CF9E6888();
  v42 = [v40 initWithSuiteName_];

  if (v42 && (v43 = sub_1CF9E6888(), v44 = [v42 BOOLForKey_], v42, v43, (v44 & 1) != 0) || (*(v147 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isTrashed) & 1) == 0 && *(v147 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isAncestorInTrash) != 1)
  {
    v161 = 0;
    v162 = 0xE000000000000000;
    sub_1CF9E7948();
    v162, v90, v91, v92, v93, v94, v95, v96;
    v161 = 0xD000000000000012;
    v162 = 0x80000001CFA52790;
    if (*v27 >> 62)
    {
      v97 = sub_1CF9E7818();
    }

    else
    {
      v97 = *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v164 = v97;
    v98 = sub_1CF9E7F98();
    v100 = v99;
    MEMORY[0x1D3868CC0](v98);
    v100, v101, v102, v103, v104, v105, v106, v107;
    MEMORY[0x1D3868CC0](0x736D65746920, 0xE600000000000000);
    v108 = v161;
    v109 = v162;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v110 = qword_1EDEBB5A0;
    v111 = sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v112 = swift_allocObject();
    *(v112 + 16) = v145;
    *(v112 + 56) = MEMORY[0x1E69E6158];
    *(v112 + 64) = sub_1CEFD51C4();
    *(v112 + 32) = v108;
    *(v112 + 40) = v109;
    sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v110, v111, v112);
    v112, v113, v114, v115, v116, v117, v118, v119;
    v120 = *&v152[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observer];
    v121 = *v27;
    if (*v27 >> 62)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
      v129 = sub_1CF9E7B78();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_1CF9E8068();
      v129 = v121;
    }

    v121, v122, v123, v124, v125, v126, v127, v128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
    v130 = sub_1CF9E6D28();
    v129, v131, v132, v133, v134, v135, v136, v137;
    [v120 didUpdateItems_];
    goto LABEL_39;
  }

  v161 = 0;
  v162 = 0xE000000000000000;
  sub_1CF9E7948();
  v162, v45, v46, v47, v48, v49, v50, v51;
  v161 = 0xD000000000000014;
  v162 = 0x80000001CFA52850;
  if (*v27 >> 62)
  {
    v52 = sub_1CF9E7818();
  }

  else
  {
    v52 = *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v164 = v52;
  v53 = sub_1CF9E7F98();
  v55 = v54;
  MEMORY[0x1D3868CC0](v53);
  v55, v56, v57, v58, v59, v60, v61, v62;
  MEMORY[0x1D3868CC0](0x736D65746920, 0xE600000000000000);
  v63 = v161;
  v64 = v162;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v65 = qword_1EDEBB5A0;
  v66 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v67 = swift_allocObject();
  *(v67 + 16) = v145;
  *(v67 + 56) = MEMORY[0x1E69E6158];
  *(v67 + 64) = sub_1CEFD51C4();
  *(v67 + 32) = v63;
  *(v67 + 40) = v64;
  sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v65, v66, v67);
  v67, v68, v69, v70, v71, v72, v73, v74;
  v37 = *&v152[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observer];
  v75 = *v27;
  if (*v27 >> 62)
  {
    v27 = sub_1CF9E7818();
  }

  else
  {
    v27 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v76 = MEMORY[0x1E69E7CC0];
  if (!v27)
  {
LABEL_38:
    type metadata accessor for NSFileProviderItemIdentifier(0);
    v130 = sub_1CF9E6D28();
    v76, v138, v139, v140, v141, v142, v143, v144;
    [v37 didDeleteItemsWithIdentifiers_];
LABEL_39:

    goto LABEL_40;
  }

  v157 = v37;
  v158 = v19;
  v161 = MEMORY[0x1E69E7CC0];

  v9 = &v161;
  sub_1CF680D2C(0, v27 & ~(v27 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v77 = 0;
    v76 = v161;
    do
    {
      if ((v75 & 0xC000000000000001) != 0)
      {
        v78 = MEMORY[0x1D3869C30](v77, v75);
      }

      else
      {
        v78 = *(&v75[1].super.isa + v77);
      }

      v79 = v78;
      v80 = *&v78[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier];

      v161 = v76;
      v89 = *v76->tree;
      v88 = *v76->tester;
      if (v89 >= v88 >> 1)
      {
        sub_1CF680D2C((v88 > 1), v89 + 1, 1);
        v76 = v161;
      }

      ++v77;
      *v76->tree = v89 + 1;
      *(&v76[1].super.isa + v89) = v80;
    }

    while (v27 != v77);
    v75, v81, v82, v83, v84, v85, v86, v87;
    v37 = v157;
    v19 = v158;
    goto LABEL_38;
  }

  __break(1u);
LABEL_49:
  objc_autoreleasePoolPop(v27);
  (*v37)(v9, v158);
  __break(1u);
}

uint64_t sub_1CF562474(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v6;
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v9;
  if (v5 == v8 && v7 == v9)
  {
    v7, v9, v10, v11, v12, v13, v14, v15;
    v16, v33, v34, v35, v36, v37, v38, v39;
LABEL_8:
    if (a1[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isFolder] != 1)
    {
      return 1;
    }

    goto LABEL_9;
  }

  v18 = sub_1CF9E8048();
  v7, v19, v20, v21, v22, v23, v24, v25;
  v16, v26, v27, v28, v29, v30, v31, v32;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v40 = a1;
  MEMORY[0x1D3868FA0]();
  if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1CF9E6D88();
  }

  sub_1CF9E6DE8();
  swift_endAccess();
  return 1;
}

uint64_t sub_1CF5625F8(uint64_t a1)
{
  result = type metadata accessor for FSChangeToken(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LocalDomain(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1CF562730()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF5616B8(v3, v0 + v2, v4);
}

uint64_t sub_1CF56284C@<X0>(uint64_t a2@<X8>)
{
  if ((sub_1CF9E5848() & 1) == 0)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 51);
  }

  type metadata accessor for stat(0);
  sub_1CF9E59B8();
  return sub_1CF01A820(v4, a2);
}

uint64_t sub_1CF562AD8(uint64_t a1)
{
  result = type metadata accessor for LocalDomain(319);
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

uint64_t sub_1CF562C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59[0] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v59 - v8;
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E64A8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59[1] = a1;
  v19 = *(a1 + 24);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14, v16);
  v20 = v19;
  LOBYTE(v19) = sub_1CF9E64D8();
  result = (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v62 = 91;
    v63 = 0xE100000000000000;
    v22 = NSFileProviderItemIdentifier.description.getter(a2);
    v24 = v23;
    MEMORY[0x1D3868CC0](v22);
    v24, v25, v26, v27, v28, v29, v30, v31;
    sub_1CF33F8C8(v59[0], v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1CEFCCC44(v9, &unk_1EC4BE310, qword_1CF9FCBE0);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      v60 = 0x273A68746170202CLL;
      v61 = 0xE800000000000000;
      v32 = sub_1CF9E5A18();
      v34 = v33;
      MEMORY[0x1D3868CC0](v32);
      v34, v35, v36, v37, v38, v39, v40, v41;
      MEMORY[0x1D3868CC0](39, 0xE100000000000000);
      v42 = v61;
      MEMORY[0x1D3868CC0](v60, v61);
      v42, v43, v44, v45, v46, v47, v48, v49;
      (*(v11 + 8))(v13, v10);
    }

    MEMORY[0x1D3868CC0](93, 0xE100000000000000);
    v50 = v63;
    v51 = *(v4 + 16);
    v52 = *(v4 + 24);
    *(v4 + 16) = v62;
    *(v4 + 24) = v50;
    sub_1CF563558(v51, v52, v53, v54, v55, v56, v57, v58);
    sub_1CF01C144(sub_1CF02AEF0, &block_descriptor_30);
    return sub_1CF9E74B8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF562F4C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CF9E64A8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 24);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1CF9E64D8();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v18 = *(v2 + 16);
    v19 = *(v2 + 24);
    *(v2 + 16) = xmmword_1CF9FC980;
    sub_1CF563558(v18, v19, v12, v13, v14, v15, v16, v17);
    sub_1CF01C144(sub_1CF02AEF0, &block_descriptor_30);
    return sub_1CF9E74B8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF563098(uint64_t a1, uint64_t a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  sub_1CF563558(*(v8 + 16), *(v8 + 24), a3, a4, a5, a6, a7, a8);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon36FSEventReaderGatherPhaseResumeStatusO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CF563114(uint64_t a1, unsigned int a2)
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

uint64_t sub_1CF563168(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1CF5631C4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1CF563208()
{
  result = qword_1EC4C1780;
  if (!qword_1EC4C1780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1780);
  }

  return result;
}

uint64_t sub_1CF56325C(uint64_t a1)
{
  v2 = sub_1CF9E64A8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 24);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1CF9E64D8();
  result = (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF563364(uint64_t a1)
{
  v2 = sub_1CF9E64A8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 24);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1CF9E64D8();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    sub_1CF01C144(sub_1CF02AEF0, &block_descriptor_30);
    return sub_1CF9E74B8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF5634F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VFSItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CF563558(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (a2 >= 2)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

uint64_t *sub_1CF56356C(void *a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3)
{
  v135 = a3;
  v133 = a1;
  v126 = *v3;
  v130 = sub_1CF9E7318();
  MEMORY[0x1EEE9AC00](v130);
  v129 = v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CF9E6448();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v128 = v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E7388();
  v124 = *(v8 - 8);
  v125 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v127 = v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v132 = v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E5A58();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v118 - v17;
  v19 = sub_1CF9E5D98();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v131 = v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v3;
  *(v3 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_shouldSignalChange) = 0;
  if (*a2->tree)
  {
    v22 = type metadata accessor for FSEventReader(0);
    v23 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v121 = *(v13 + 16);
    v121(v15, a2 + v23, v12);
    v123 = v22;
    sub_1CF56284C(v18);
    v24 = v12;
    v25 = *(v13 + 8);
    v122 = v24;
    v25(v15);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_1CF0156A8(v18);
      v136 = 0;
      v137 = 0xE000000000000000;
      sub_1CF9E7948();
      v137, v26, v27, v28, v29, v30, v31, v32;
      v136 = 0xD00000000000001BLL;
      v137 = 0x80000001CFA52DB0;
      v33 = a2 + v23;
      v34 = v122;
      v121(v15, v33, v122);
      a2, v35, v36, v37, v38, v39, v40, v41;
      sub_1CF9E5A18();
      v43 = v42;
      (v25)(v15, v34);
      v44 = sub_1CF9E6888();
      v43, v45, v46, v47, v48, v49, v50, v51;
      v52 = [v44 fp_prettyPath];

      v53 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v55 = v54;

      MEMORY[0x1D3868CC0](v53, v55);
      v55, v56, v57, v58, v59, v60, v61, v62;
      MEMORY[0x1D3868CC0](34, 0xE100000000000000);
      v63 = v136;
      v64 = v137;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v65 = qword_1EDEBB5A0;
      v66 = sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1CF9FA450;
      *(v67 + 56) = MEMORY[0x1E69E6158];
      *(v67 + 64) = sub_1CEFD51C4();
      *(v67 + 32) = v63;
      *(v67 + 40) = v64;
      sub_1CF9E6018("[ERROR] %@", 10, 2, &dword_1CEFC7000, v65, v66, v67);

      v67, v68, v69, v70, v71, v72, v73, v74;
      sub_1CF56506C(v135);
      swift_deallocPartialClassInstance();
      return 0;
    }

    else
    {
      v76 = a2;
      v77 = *(v20 + 32);
      v126 = v19;
      v121 = v77;
      v122 = v20 + 32;
      v77(v131, v18, v19);
      v78 = v133;
      v75 = v134;
      v134[2] = v133;
      v79 = v135;
      sub_1CF004C30(v135, v75 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_domain);
      sub_1CF004C30(v79, v132);
      v136 = 0;
      v137 = 0xE000000000000000;
      v80 = v78;
      sub_1CF9E7948();
      v137, v81, v82, v83, v84, v85, v86, v87;
      v136 = 0xD000000000000013;
      v137 = 0x80000001CFA52DD0;
      v133 = v80;
      v88 = NSFileProviderItemIdentifier.description.getter(v80);
      v90 = v89;
      MEMORY[0x1D3868CC0](v88);
      v90, v91, v92, v93, v94, v95, v96, v97;
      MEMORY[0x1D3868CC0](62, 0xE100000000000000);
      v98 = v136;
      v99 = v137;
      CurrentEventId = FSEventsGetCurrentEventId();
      v100 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v101 = sub_1CF9E6888();
      v102 = [v100 initWithSuiteName_];

      v119 = v76;
      if (v102 && (v103 = sub_1CF9E6888(), v104 = [v102 BOOLForKey_], v102, v103, v104))
      {
        v105 = 0.1;
      }

      else
      {
        v105 = 0.5;
      }

      v106 = swift_allocObject();
      v106[2] = 0;
      *(v106 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = 0;
      swift_unknownObjectWeakInit();
      v118[1] = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
      v136 = 0;
      v137 = 0xE000000000000000;
      sub_1CF9E7948();
      v137, v107, v108, v109, v110, v111, v112, v113;
      v136 = 0xD00000000000001ELL;
      v137 = 0x80000001CFA51120;
      MEMORY[0x1D3868CC0](v98, v99);
      v123 = v98;
      (*(v124 + 104))(v127, *MEMORY[0x1E69E8098], v125);
      sub_1CF9E63F8();
      v136 = MEMORY[0x1E69E7CC0];
      sub_1CF518BB8(&qword_1EDEAED80, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
      sub_1CF4F0754();
      sub_1CF9E77B8();
      v114 = sub_1CF9E73B8();

      sub_1CF56506C(v135);
      v106[3] = v114;
      v106[6] = v119;
      sub_1CF5650C8(v132, v106 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_domain);
      v115 = CurrentEventId;
      v106[4] = CurrentEventId;
      v106[5] = v115;
      *(v106 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_mode) = 0;
      *(v106 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_latency) = v105;
      *(v106 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) = 1;
      v116 = (v106 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_ownerDescription);
      *v116 = v123;
      v116[1] = v99;
      *(v75 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_reader) = v106;
      v121(v75 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_deviceUUID, v131, v126);
    }

    return v75;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF563F2C()
{
  MEMORY[0x1D3868CC0](60, 0xE100000000000000);
  v0 = sub_1CF9E82E8();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0;
}

void sub_1CF564004(uint64_t a1)
{
  v3 = sub_1CF9E64A8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 24);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1CF9E64D8();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (*(v1 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_shouldSignalChange) == 1)
  {
    *(v1 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_shouldSignalChange) = 0;
    v10 = *MEMORY[0x1E6967298];
    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v13 = v12;
    v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v21 = v11;
    v22 = v14;
    if (v21 == v15 && v13 == v14)
    {
      v13, v14, v15, v16, v17, v18, v19, v20;
      v22, v42, v43, v44, v45, v46, v47, v48;
    }

    else
    {
      v24 = sub_1CF9E8048();
      v13, v25, v26, v27, v28, v29, v30, v31;
      v22, v32, v33, v34, v35, v36, v37, v38;
      if ((v24 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1770, &qword_1CFA05A80);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1CF9FA440;
        v40 = *MEMORY[0x1E6967258];
        *(v39 + 32) = *MEMORY[0x1E6967258];
        *(v39 + 40) = v10;
        v41 = v10;
        v10 = v40;
LABEL_11:
        v49 = v10;
        sub_1CF564CD0(v39);
        v39, v50, v51, v52, v53, v54, v55, v56;
        return;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1770, &qword_1CFA05A80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1CF9FA450;
    *(v39 + 32) = v10;
    goto LABEL_11;
  }
}

void sub_1CF564230(uint64_t a1)
{
  v2 = [objc_opt_self() legacyDefaultManager];
  v3 = v2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      aBlock[4] = sub_1CF565064;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CF00A468;
      aBlock[3] = &block_descriptor_31;
      v8 = _Block_copy(aBlock);
      v9 = v6;

      [v3 signalEnumeratorForContainerItemIdentifier:v9 completionHandler:v8];
      _Block_release(v8);

      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

void sub_1CF564394(void *a1, uint64_t a2)
{
  v4 = sub_1CF9E53C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - v9;
  if (a1)
  {
    v62 = 0;
    v63 = 0xE000000000000000;
    v11 = a1;
    sub_1CF9E7948();
    v63, v12, v13, v14, v15, v16, v17, v18;
    v62 = 0xD000000000000019;
    v63 = 0x80000001CFA503E0;
    v19 = NSFileProviderItemIdentifier.description.getter(a2);
    v21 = v20;
    MEMORY[0x1D3868CC0](v19);
    v21, v22, v23, v24, v25, v26, v27, v28;
    v29 = v62;
    v30 = v63;
    v62 = a1;
    v31 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    if (swift_dynamicCast())
    {
      v61 = *(v5 + 8);
      v61(v10, v4);
      v62 = a1;
      v32 = a1;
      swift_dynamicCast();
      sub_1CF518BB8(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      sub_1CF9E57A8();
      v33 = sub_1CF9E6148();
      if (sub_1CF008830(v33, MEMORY[0x1E69E7CD0]))
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v60 = qword_1EDEBB5A0;
        v34 = sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1CF9FA440;
        *(v35 + 56) = MEMORY[0x1E69E6158];
        *(v35 + 64) = sub_1CEFD51C4();
        *(v35 + 32) = v29;
        *(v35 + 40) = v30;
        sub_1CF9E57A8();
        v36 = sub_1CF9E6148();
        v37 = MEMORY[0x1E69E7358];
        *(v35 + 96) = MEMORY[0x1E69E72F0];
        *(v35 + 104) = v37;
        *(v35 + 72) = v36;
        sub_1CF9E6018("[DEBUG] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v60, v34, v35);
      }

      else
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v60 = qword_1EDEBB5A0;
        v49 = sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1CF9FA440;
        *(v35 + 56) = MEMORY[0x1E69E6158];
        *(v35 + 64) = sub_1CEFD51C4();
        *(v35 + 32) = v29;
        *(v35 + 40) = v30;
        sub_1CF9E57A8();
        v50 = sub_1CF9E6148();
        v51 = MEMORY[0x1E69E7358];
        *(v35 + 96) = MEMORY[0x1E69E72F0];
        *(v35 + 104) = v51;
        *(v35 + 72) = v50;
        sub_1CF9E6018("[ERROR] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v60, v49, v35);
      }

      v35, v52, v53, v54, v55, v56, v57, v58;
      v61(v7, v4);
    }

    else
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v38 = qword_1EDEBB5A0;
      v39 = sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1CF9FA440;
      *(v40 + 56) = MEMORY[0x1E69E6158];
      *(v40 + 64) = sub_1CEFD51C4();
      *(v40 + 32) = v29;
      *(v40 + 40) = v30;
      v41 = sub_1CF9E57E8();
      *(v40 + 96) = sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      *(v40 + 104) = sub_1CF326DD0();
      *(v40 + 72) = v41;
      sub_1CF9E6018("[ERROR] %@ %@", 13, 2, &dword_1CEFC7000, v38, v39, v40);

      v40, v42, v43, v44, v45, v46, v47, v48;
    }
  }
}

uint64_t sub_1CF564884()
{
  sub_1CF56506C(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_domain);

  v1 = OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_deviceUUID;
  v2 = sub_1CF9E5D98();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FSChangesNotifier(uint64_t a1)
{
  result = qword_1EC4C1790;
  if (!qword_1EC4C1790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF56499C(uint64_t a1)
{
  result = type metadata accessor for LocalDomain(319);
  if (v2 <= 0x3F)
  {
    result = sub_1CF9E5D98();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1CF564AAC(uint64_t a1)
{
  v3 = sub_1CF9E64A8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 24);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1CF9E64D8();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    *(v1 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_shouldSignalChange) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF564BC8(uint64_t a1)
{
  v2 = sub_1CF9E64A8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 24);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1CF9E64D8();
  result = (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

void sub_1CF564CD0(uint64_t a1)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](60, 0xE100000000000000);
  v2 = sub_1CF9E82E8();
  v4 = v3;
  MEMORY[0x1D3868CC0](v2);
  v4, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  0xE000000000000000, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA52D20);
  type metadata accessor for NSFileProviderItemIdentifier(0);
  v20 = MEMORY[0x1D3868FE0](a1, v19);
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v30 = qword_1EDEBB5A0;
  v31 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v33 = sub_1CF9E7718();
  v35 = v34;
  v36 = MEMORY[0x1E69E6158];
  *(v32 + 56) = MEMORY[0x1E69E6158];
  v37 = sub_1CEFD51C4();
  *(v32 + 32) = v33;
  *(v32 + 40) = v35;
  *(v32 + 96) = v36;
  *(v32 + 104) = v37;
  *(v32 + 64) = v37;
  *(v32 + 72) = 0;
  *(v32 + 80) = 0xE000000000000000;

  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v30, v31, v32);
  v32, v38, v39, v40, v41, v42, v43, v44;
  sub_1CF564230(a1);
  0xE000000000000000, v45, v46, v47, v48, v49, v50, v51;
  v52 = sub_1CF9E7298();
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1CF9FA450;
  v54 = sub_1CF9E7718();
  *(v53 + 56) = MEMORY[0x1E69E6158];
  *(v53 + 64) = v37;
  *(v53 + 32) = v54;
  *(v53 + 40) = v55;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v30, v52, v53);
  v53, v56, v57, v58, v59, v60, v61, v62;
}

uint64_t sub_1CF56506C(uint64_t a1)
{
  v2 = type metadata accessor for LocalDomain(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF5650C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalDomain(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CF56512C(void (*a1)(uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, _TtC18FileProviderDaemon8FSTester *a5, uint64_t a6)
{
  v238 = a5;
  v239 = a6;
  v237 = a4;
  v224 = a3;
  v240 = a1;
  v8 = *(*a2 + 88);
  v9 = *(*a2 + 96);
  v10 = *(*a2 + 104);
  p_isa = *(*a2 + 80);
  v7 = p_isa;
  v243 = v8;
  v244 = v9;
  v245 = v10;
  v218 = type metadata accessor for ReconciliationMutation(0, &p_isa);
  v216 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v217 = v212 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v236 = sub_1CF9E75D8();
  v233 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v213 = v212 - v13;
  v227 = AssociatedTypeWitness;
  v214 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v215 = v212 - v15;
  p_isa = v7;
  v243 = v8;
  v244 = v9;
  v245 = v10;
  v16 = type metadata accessor for ItemReconciliation(255, &p_isa);
  v17 = sub_1CF9E75D8();
  v231 = *(v17 - 8);
  v232 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v230 = (v212 - v18);
  v223 = v16;
  v222 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v219 = v212 - v20;
  v21 = sub_1CF9E6118();
  v228 = *(v21 - 8);
  v229 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v234 = v212 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2[3];
  p_isa = v7;
  v243 = v8;
  v244 = v9;
  v245 = v10;
  v235 = type metadata accessor for ItemJob(255, &p_isa);
  MetatypeMetadata = swift_getMetatypeMetadata();
  sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
  swift_allocObject();
  v25 = sub_1CF9E6D68();
  v220 = v7;
  p_isa = v7;
  v243 = v8;
  v226 = v8;
  v221 = v9;
  v244 = v9;
  v245 = v10;
  v225 = v10;
  *v26 = type metadata accessor for Materialization.MaterializeItem(0, &p_isa);
  v27 = sub_1CF045898(v25, MetatypeMetadata);
  v28 = v241;
  v29 = (*(*v23 + 312))(v240, v27, v237, v238, v239);
  v27, v30, v31, v32, v33, v34, v35, v36;
  v241 = v28;
  if (v28)
  {
    return;
  }

  v37 = v234;
  v212[1] = a2;
  v38 = v236;
  v212[0] = v23;
  p_isa = &v29->super.isa;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  sub_1CF9E7118();
  v39 = v246;
  v29, v40, v41, v42, v43, v44, v45, v46;
  if (!v39)
  {
    return;
  }

  v47 = *(v39 + 136);
  if ((v47 & 0x10000) != 0 || (v47 & 0x20000) != 0)
  {

    return;
  }

  v48 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v49 = sub_1CF9E6108();
  v50 = sub_1CF9E72C8();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    p_isa = v52;
    *v51 = 136446210;
    v53 = sub_1CF044BA4();
    v55 = v54;

    v56 = sub_1CEFD0DF0(v53, v55, &p_isa);
    v55, v57, v58, v59, v60, v61, v62, v63;
    *(v51 + 4) = v56;
    _os_log_impl(&dword_1CEFC7000, v49, v50, "✴️  cancelling materialization %{public}s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x1D386CDC0](v52, -1, -1);
    MEMORY[0x1D386CDC0](v51, -1, -1);
  }

  else
  {
  }

  (*(v228 + 8))(v37, v229);
  v64 = v38;
  v65 = v233;
  v66 = v230;
  v67 = v241;
  sub_1CF68DDB0(v240, v237, v238, v239, v230);
  v69 = v231;
  v68 = v232;
  v241 = v67;
  if (v67)
  {

    return;
  }

  v235 = v39;
  v70 = v222;
  v71 = v223;
  if ((*(v222 + 48))(v66, 1, v223) == 1)
  {
    (v69)[1](v66, v68);
LABEL_16:
    v78 = v220;
    p_isa = v220;
    v243 = v226;
    v79 = v221;
    v244 = v221;
    v245 = v225;
    type metadata accessor for JobResult(0, &p_isa);
    v80 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v82 = v227;
    v83 = swift_getAssociatedConformanceWitness();
    p_isa = v80;
    v243 = v82;
    v244 = AssociatedConformanceWitness;
    v245 = v83;
    type metadata accessor for ReconciliationID(255, &p_isa);
    type metadata accessor for ReconciliationSideMutation(255, v78, v79, v84);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v86 = v217;
    v87 = &v217[*(TupleTypeMetadata2 + 48)];
    (*(*(v80 - 8) + 16))(v217, v240, v80);
    swift_storeEnumTagMultiPayload();
    v88 = *(v235 + 120);
    v89 = *(v235 + 128);

    *v87 = 1280;
    *(v87 + 1) = v88;
    *(v87 + 2) = v89;
    swift_storeEnumTagMultiPayload();
    v90 = v218;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v224, v86);

    (*(v216 + 8))(v86, v90);
    return;
  }

  v72 = v219;
  (*(v70 + 32))(v219, v66, v71);
  v73 = v70;
  v74 = &v72[*(v71 + 52)];
  v75 = v213;
  (*(v65 + 16))(v213, v74, v64);
  v76 = v214;
  v77 = v227;
  if ((*(v214 + 48))(v75, 1, v227) == 1)
  {
    (*(v73 + 8))(v72, v71);
    (*(v65 + 8))(v75, v64);
    goto LABEL_16;
  }

  v91 = v215;
  (*(v76 + 32))(v215, v75, v77);
  v93 = v225;
  v92 = v226;
  v95 = type metadata accessor for ItemReconciliationHalf(0, v226, v225, v94);
  v96 = v224;
  if (v74[*(v95 + 52)] != 1)
  {

    p_isa = v220;
    v243 = v92;
    v244 = v221;
    v245 = v93;
    type metadata accessor for JobResult(0, &p_isa);
    v119 = sub_1CF67DD2C();

    sub_1CF803A0C(v96, v119);

    (*(v76 + 8))(v91, v77);
    goto LABEL_46;
  }

  v97 = v223;
  v98 = v219[*(v223 + 56)];
  if (v98 == 1)
  {
    v120 = v226;
    v121 = v220;
    p_isa = v226;
    v243 = v220;
    v122 = v221;
    v244 = v93;
    v245 = v221;
    type metadata accessor for ItemJob(255, &p_isa);
    v123 = swift_getMetatypeMetadata();
    sub_1CF656CD8(v123, v123);
    swift_allocObject();
    v124 = sub_1CF9E6D68();
    p_isa = v120;
    v243 = v121;
    v244 = v93;
    v245 = v122;
    *v125 = type metadata accessor for Ingestion.FetchChildrenMetadata(0, &p_isa);
    v126 = sub_1CF045898(v124, v123);
    v127 = v215;
    v128 = v241;
    v129 = (*(*v212[0] + 304))(v215, v126, v237, v238, v239);
    v241 = v128;
    if (v128)
    {
      v126, v130, v131, v132, v133, v134, v135, v136;
LABEL_25:

      (*(v214 + 8))(v127, v227);
      goto LABEL_46;
    }

    v137 = v129;
    v126, v130, v131, v132, v133, v134, v135, v136;
    p_isa = &v137->super.isa;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    sub_1CF9E7118();
    v145 = v246;
    if (!v246)
    {

      (*(v214 + 8))(v127, v227);
      (*(v222 + 8))(v219, v223);
      v137, v205, v206, v207, v208, v209, v210, v211;
      return;
    }

    v137, v138, v139, v140, v141, v142, v143, v144;
    v146 = *(v145 + 112);
    if (*(v145 + 112))
    {
      v147 = v225;
      if (v146 == 1)
      {
        if (!*(v145 + 96))
        {
          goto LABEL_30;
        }
      }

      else if (v146 != 2)
      {
LABEL_30:
        p_isa = v121;
        v243 = v226;
        v148 = v221;
        v244 = v221;
        v245 = v147;
        v239 = type metadata accessor for JobResult(0, &p_isa);
        v149 = swift_getAssociatedTypeWitness();
        v150 = v121;
        v151 = swift_getAssociatedConformanceWitness();
        v152 = v227;
        v153 = swift_getAssociatedConformanceWitness();
        p_isa = v149;
        v243 = v152;
        v244 = v151;
        v245 = v153;
        type metadata accessor for ReconciliationID(255, &p_isa);
        type metadata accessor for ReconciliationSideMutation(255, v150, v148, v154);
        v155 = swift_getTupleTypeMetadata2();
        v156 = v217;
        v157 = &v217[*(v155 + 48)];
        (*(*(v149 - 8) + 16))(v217, v240, v149);
        swift_storeEnumTagMultiPayload();
        v158 = *(v235 + 120);
        v159 = *(v235 + 128);

        *v157 = 1280;
        *(v157 + 1) = v158;
        *(v157 + 2) = v159;
        swift_storeEnumTagMultiPayload();
        v160 = v218;
        swift_storeEnumTagMultiPayload();
        v161 = v224;
        sub_1CF06EB44(v224, v156);
        v240 = *(v216 + 8);
        v240(v156, v160);
        type metadata accessor for ReconciliationSideMutation(255, v226, v225, v162);
        v163 = *(swift_getTupleTypeMetadata2() + 48);
        v164 = v214;
        (*(v214 + 16))(v156, v215, v227);
        swift_storeEnumTagMultiPayload();
        *(v156 + v163) = 0;
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v161, v156);
        v240(v156, v160);
        v165 = sub_1CF67DD2C();

        sub_1CF8039C4(v161, v165);

        v166 = sub_1CF67DD2C();

        sub_1CF803A0C(v161, v166);

        (*(v164 + 8))(v215, v227);
        goto LABEL_46;
      }
    }

    else
    {
      v147 = v225;
      if (!*(v145 + 104))
      {
        goto LABEL_30;
      }
    }

    goto LABEL_25;
  }

  v99 = v220;
  v100 = v221;
  if (v98 == 4)
  {
    __break(1u);
    return;
  }

  v101 = v226;
  p_isa = v226;
  v243 = v220;
  v244 = v93;
  v245 = v221;
  v236 = type metadata accessor for ItemJob(255, &p_isa);
  v102 = swift_getMetatypeMetadata();
  sub_1CF656CD8(v102, v102);
  swift_allocObject();
  v103 = sub_1CF9E6D68();
  v104 = v93;
  v105 = v103;
  v107 = v106;
  p_isa = v101;
  v243 = v99;
  v244 = v104;
  v245 = v100;
  Content = type metadata accessor for Ingestion.FetchContent(0, &p_isa);
  *v107 = Content;
  v109 = sub_1CF045898(v105, v102);
  v110 = v241;
  v111 = (*(*v212[0] + 304))(v215, v109, v237, v238, v239);
  v241 = v110;
  if (v110)
  {
    v109, v112, v113, v114, v115, v116, v117, v118;

    (*(v214 + 8))(v215, v227);
    (*(v222 + 8))(v219, v97);
    return;
  }

  v167 = v111;
  v109, v112, v113, v114, v115, v116, v117, v118;
  if (!sub_1CF9E6DF8())
  {
    goto LABEL_45;
  }

  v231 = (v216 + 8);
  v230 = (v214 + 16);
  v175 = 4;
  v234 = Content;
  v238 = v167;
  while (1)
  {
    v176 = v175 - 4;
    v177 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if ((v177 & 1) == 0)
    {
      break;
    }

    v178 = *(&v167->super.isa + v175);

    v179 = v175 - 3;
    if (__OFADD__(v176, 1))
    {
      goto LABEL_44;
    }

LABEL_37:
    if (*(v178 + 136))
    {
      v180 = swift_dynamicCastClassUnconditional();
      if (*(v180 + 112) == 2)
      {
        v181 = *(v180 + 96);
        v182 = *(v180 + 104);
        v183 = v220;
        v185 = v225;
        v184 = v226;
        p_isa = v220;
        v243 = v226;
        v186 = v221;
        v244 = v221;
        v245 = v225;
        v239 = type metadata accessor for JobResult(0, &p_isa);
        p_isa = v184;
        v243 = v183;
        v244 = v185;
        v245 = v186;
        type metadata accessor for Ingestion.CancelFetchFileContent(0, &p_isa);
        v187 = sub_1CF65A050(v215, *(v178 + 120), *(v178 + 128), 0x80000);
        sub_1CF03C530(v181, v182, 2u);
        sub_1CF8039C4(v224, v187);

        sub_1CF03D7A8(v181, v182, 2u);
      }

      else
      {
        v188 = v220;
        p_isa = v220;
        v243 = v226;
        v233 = v179;
        v189 = v221;
        v244 = v221;
        v245 = v225;
        v237 = v180;
        v239 = type metadata accessor for JobResult(0, &p_isa);
        v190 = swift_getAssociatedTypeWitness();
        v191 = swift_getAssociatedConformanceWitness();
        v179 = v233;
        v192 = v227;
        v193 = swift_getAssociatedConformanceWitness();
        p_isa = v190;
        v243 = v192;
        v244 = v191;
        v245 = v193;
        type metadata accessor for ReconciliationID(255, &p_isa);
        type metadata accessor for ReconciliationSideMutation(255, v188, v189, v194);
        v195 = swift_getTupleTypeMetadata2();
        v196 = v217;
        v197 = &v217[*(v195 + 48)];
        (*(*(v190 - 8) + 16))(v217, v240, v190);
        swift_storeEnumTagMultiPayload();
        v198 = *(v235 + 120);
        *v197 = 1280;
        *(v197 + 8) = v198;
        swift_storeEnumTagMultiPayload();
        v199 = v218;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v224, v196);
        v232 = *v231;
        v232(v196, v199);
        type metadata accessor for ReconciliationSideMutation(255, v226, v225, v200);
        v201 = *(swift_getTupleTypeMetadata2() + 48);
        (*v230)(v196, v215, v227);
        swift_storeEnumTagMultiPayload();
        *(v196 + v201) = 0;
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v202 = v224;
        sub_1CF06EB44(v224, v196);
        v232(v196, v199);
        v203 = sub_1CF67DD2C();

        sub_1CF8039C4(v202, v203);

        v204 = sub_1CF67DD2C();

        sub_1CF803A0C(v202, v204);
      }

      v167 = v238;
    }

    else
    {
    }

    ++v175;
    if (v179 == sub_1CF9E6DF8())
    {
      goto LABEL_45;
    }
  }

  v178 = sub_1CF9E7998();
  v179 = v175 - 3;
  if (!__OFADD__(v176, 1))
  {
    goto LABEL_37;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  v167, v168, v169, v170, v171, v172, v173, v174;

  (*(v214 + 8))(v215, v227);
LABEL_46:
  (*(v222 + 8))(v219, v223);
}

uint64_t sub_1CF5666D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v129 = a7;
  v133 = a8;
  v128 = a6;
  v122 = a2;
  v123 = a4;
  v121 = a3;
  v158 = a1;
  v11 = *a5;
  v12 = (*a5)[13];
  v13 = (*a5)[11];
  v132 = a10;
  v131 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1CF9E75D8();
  v117 = *(v15 - 8);
  v118 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v116 = v105 - v16;
  v127 = AssociatedTypeWitness;
  v119 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v112 = v105 - v18;
  v120 = v11[10];
  v19.i64[0] = v120;
  v124 = v13;
  v19.i64[1] = v13;
  v135 = v19;
  v20 = v11[12];
  v125 = v12;
  v126 = v20;
  v21.i64[0] = v20;
  v21.i64[1] = v12;
  v134 = v21;
  v142 = v19;
  v143 = v21;
  v22 = type metadata accessor for ReconciliationMutation(0, &v142);
  v114 = *(v22 - 8);
  v115 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v113 = v105 - v23;
  v142 = v135;
  v143 = v134;
  v24 = type metadata accessor for ItemReconciliation(255, &v142);
  v25 = sub_1CF9E75D8();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v105 - v27;
  v29 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v105 - v31;
  v33 = v130;
  result = sub_1CF68DDB0(v158, v133, v131, v132, v28);
  if (!v33)
  {
    v109 = a5;
    v110 = 0;
    v130 = v32;
    v35 = v128;
    v36 = v129;
    v37 = (*(v29 + 48))(v28, 1, v24);
    v111 = v24;
    if (v37 == 1)
    {
      return (*(v26 + 8))(v28, v25);
    }

    (*(v29 + 32))(v130, v28, v111);
    if (v35)
    {
      v39 = v35;
    }

    else
    {

      v39 = v36;
    }

    v40 = v120;
    v41 = type metadata accessor for ItemReconciliationHalf(0, v120, v126, v38);
    v42 = v130;
    v43 = v130[*(v41 + 56)];
    v106 = v29;
    v107 = v41;
    if (v43 == 2)
    {
      v142 = v135;
      v143 = v134;
      type metadata accessor for JobResult(0, &v142);
      v46 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v48 = v39;
      v49 = v127;
      v50 = swift_getAssociatedConformanceWitness();
      v142.i64[0] = v46;
      v142.i64[1] = v49;
      v39 = v48;
      v143.i64[0] = AssociatedConformanceWitness;
      v143.i64[1] = v50;
      type metadata accessor for ReconciliationID(255, &v142);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v52 = *(TupleTypeMetadata3 + 48);
      v53 = *(TupleTypeMetadata3 + 64);
      v54 = *(*(v46 - 8) + 16);
      v55 = v113;
      v56 = v46;
      v42 = v130;
      v54(v113, v158, v56);
      swift_storeEnumTagMultiPayload();
      *(v55 + v52) = 3;
      *(v55 + v53) = 0;
      v44 = v107;
      v57 = v115;
      swift_storeEnumTagMultiPayload();

      sub_1CF06EB44(v129, v55);
      v40 = v120;
      v45 = (*(v114 + 8))(v55, v57);
    }

    else
    {
      v44 = v41;
    }

    v58 = v123;
    v59 = (*v109 + 19);
    v120 = *v59;
    v105[1] = v59;
    v60 = v120(v45);
    v108 = v39;
    if ((v60 & 0x20000) == 0 || *&v42[*(v44 + 68) + 24] >> 60 == 11 || (v58 & 0x400001000000) != 0)
    {
      v61 = v42[*(v44 + 44)];
      v63 = v134;
      v62 = v135;
      v64 = v121;
      if (v61 == 4)
      {
        goto LABEL_17;
      }

      v142 = v135;
      v143 = v134;
      v128 = type metadata accessor for JobResult(0, &v142);
      v65 = v126;
      v66 = swift_getAssociatedTypeWitness();
      v67 = swift_getAssociatedConformanceWitness();
      v68 = v40;
      v69 = v127;
      v70 = swift_getAssociatedConformanceWitness();
      v142.i64[0] = v66;
      v142.i64[1] = v69;
      v143.i64[0] = v67;
      v143.i64[1] = v70;
      type metadata accessor for ReconciliationID(255, &v142);
      v72 = 0;
    }

    else
    {
      v142 = v135;
      v143 = v134;
      v128 = type metadata accessor for JobResult(0, &v142);
      v65 = v126;
      v66 = swift_getAssociatedTypeWitness();
      v73 = swift_getAssociatedConformanceWitness();
      v68 = v40;
      v74 = v127;
      v75 = swift_getAssociatedConformanceWitness();
      v142.i64[0] = v66;
      v142.i64[1] = v74;
      v143.i64[0] = v73;
      v143.i64[1] = v75;
      type metadata accessor for ReconciliationID(255, &v142);
      v72 = 4;
    }

    type metadata accessor for ReconciliationSideMutation(255, v68, v65, v71);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v77 = v113;
    v78 = &v113[*(TupleTypeMetadata2 + 48)];
    (*(*(v66 - 8) + 16))(v113, v158, v66);
    swift_storeEnumTagMultiPayload();
    *v78 = 5;
    v78[1] = v72;
    v64 = v121;
    *(v78 + 1) = v122;
    *(v78 + 2) = v64;
    swift_storeEnumTagMultiPayload();
    v79 = v115;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v108, v77);
    (*(v114 + 8))(v77, v79);
    v58 = v123;
    v63 = v134;
    v62 = v135;
    v44 = v107;
LABEL_17:
    v142 = v62;
    v143 = v63;
    v80 = type metadata accessor for JobResult(0, &v142);
    v142 = v135;
    v143 = v134;
    type metadata accessor for Materialization.MaterializeItem(0, &v142);
    v81 = sub_1CF57488C(v158, v122, v64, v58 | 1, 32);
    v126 = v80;
    sub_1CF803A0C(v129, v81);

    v82 = v130;
    v84 = v116;
    v83 = v117;
    v85 = *(v117 + 16);
    v128 = &v130[v111[13]];
    v86 = v118;
    v85(v116);
    v87 = v119;
    v88 = v127;
    if ((*(v119 + 48))(v84, 1, v127) == 1)
    {
      (*(v83 + 8))(v84, v86);
LABEL_19:
      v90 = 0;
      v91 = v124;
      v92 = v125;
      goto LABEL_20;
    }

    v96 = v112;
    (*(v87 + 32))(v112, v84, v88);
    v97 = v110;
    (*(*v109[5] + 264))(&v142, v96, v133, v131, v132);
    v110 = v97;
    if (v97)
    {
      (*(v87 + 8))(v96, v88);
LABEL_29:

      return (*(v106 + 8))(v82, v111);
    }

    v136[12] = v154;
    v136[13] = v155;
    v136[14] = v156;
    v136[8] = v150;
    v136[9] = v151;
    v136[10] = v152;
    v136[11] = v153;
    v136[4] = v146;
    v136[5] = v147;
    v136[6] = v148;
    v136[7] = v149;
    v136[0] = v142;
    v136[1] = v143;
    v136[2] = v144;
    v136[3] = v145;
    v138[12] = v154;
    v139 = v155;
    v140 = v156;
    v138[8] = v150;
    v138[9] = v151;
    v138[10] = v152;
    v138[11] = v153;
    v138[4] = v146;
    v138[5] = v147;
    v138[6] = v148;
    v138[7] = v149;
    v138[0] = v142;
    v138[1] = v143;
    v137 = v157;
    v141 = v157;
    v138[2] = v144;
    v138[3] = v145;
    enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v138);
    v44 = v107;
    if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
    {
      (*(v119 + 8))(v112, v127);
      goto LABEL_19;
    }

    v99 = ((*v109)[75])();
    v100 = sub_1CEFF8538(v139, *(&v139 + 1), 0, v99, v82[v111[14]] == 1, *&v82[v111[20]] & 1);
    v101 = v112;
    if (v100 == 500 || v100 == 3)
    {
      sub_1CEFCCC44(v136, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      (*(v119 + 8))(v101, v127);
      v91 = v124;
      v92 = v125;
LABEL_36:
      v90 = 1;
      goto LABEL_20;
    }

    v102 = v100;
    v103 = (v120)();
    sub_1CEFCCC44(v136, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    (*(v119 + 8))(v101, v127);
    if ((v103 & 0x40000) != 0)
    {
      v90 = 0;
      v91 = v124;
      v92 = v125;
      v82 = v130;
    }

    else
    {
      v104 = v102 == 501;
      v91 = v124;
      v92 = v125;
      v82 = v130;
      if (v104)
      {
        goto LABEL_36;
      }

      v90 = 0;
    }

LABEL_20:
    if (v82[*(v44 + 44)])
    {
      v93 = type metadata accessor for ItemReconciliationHalf(0, v91, v92, v89);
      if (*(v128 + *(v93 + 64) + 16) == 2)
      {
        v94 = v90;
      }

      else
      {
        v94 = 1;
      }

      if ((v94 & 1) == 0)
      {
        v142 = vextq_s8(v135, v135, 8uLL);
        v143 = vextq_s8(v134, v134, 8uLL);
        type metadata accessor for Propagation.CancelUpdate(0, &v142);
        v95 = sub_1CF559420();
        sub_1CF803A0C(v129, v95);

        v82 = v130;
      }
    }

    goto LABEL_29;
  }

  return result;
}

uint64_t sub_1CF5673DC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v176 = a7;
  v160 = a5;
  v161 = a8;
  v159 = a4;
  v150 = a3;
  v179 = a1;
  v204 = a11;
  v180 = a10;
  v178 = a9;
  v14 = (*a6)[11];
  v15 = (*a6)[12];
  v16 = (*a6)[13];
  *&v188 = (*a6)[10];
  v13 = v188;
  *(&v188 + 1) = v14;
  *&v189 = v15;
  *(&v189 + 1) = v16;
  v17 = type metadata accessor for ReconciliationMutation(0, &v188);
  v152 = *(v17 - 8);
  v153 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v151 = &v145 - v18;
  *&v188 = v13;
  *(&v188 + 1) = v14;
  *&v189 = v15;
  *(&v189 + 1) = v16;
  v19 = type metadata accessor for PersistenceTrigger(0, &v188);
  v148 = *(v19 - 8);
  v149 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v147 = &v145 - v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v158 = sub_1CF9E75D8();
  v156 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v155 = &v145 - v22;
  v162 = AssociatedTypeWitness;
  v157 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23);
  v154 = &v145 - v24;
  *&v188 = v13;
  v163 = v16;
  v164 = v14;
  *(&v188 + 1) = v14;
  *&v189 = v15;
  *(&v189 + 1) = v16;
  v25 = type metadata accessor for ItemReconciliation(255, &v188);
  v26 = sub_1CF9E75D8();
  v165 = *(v26 - 8);
  v166 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v172 = &v145 - v27;
  v170 = v25;
  v171 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v167 = &v145 - v29;
  v168 = v13;
  v169 = v15;
  v31 = type metadata accessor for SnapshotItem(255, v13, v15, v30);
  v32 = sub_1CF9E75D8();
  v174 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v145 - v33;
  v175 = *(v31 - 8);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v145 - v37;
  v39 = *a2;
  v40 = v177;
  v41 = *v176;
  v173 = a6;
  result = (*(*a6[4] + 240))(v179, 1, v178, v180, v204, v36);
  if (!v40)
  {
    LODWORD(v176) = v41;
    v43 = v39;
    v177 = v38;
    v45 = v174;
    v44 = v175;
    if ((*(v175 + 48))(v34, 1, v31) == 1)
    {
      return (*(v45 + 8))(v34, v32);
    }

    v46 = v44;
    v47 = v177;
    (*(v44 + 32))(v177, v34, v31);
    if (v43 == 4)
    {
      WitnessTable = swift_getWitnessTable();
      sub_1CF06D940(v31, WitnessTable, &v188);
      v43 = v188;
    }

    v49 = v204;
    v50 = v180;
    if (v43 != 2)
    {
      LODWORD(v174) = v43;
      v51 = &v47[*(v31 + 48)];
      v52 = type metadata accessor for ItemMetadata(0);
      if ((v51[*(v52 + 64)] & 1) == 0)
      {
        v53 = v51[*(v52 + 68)];
        if (v53 == 2 || (v53 & 1) == 0)
        {
          v145 = v31;
          v54 = v172;
          sub_1CF68DDB0(v179, v178, v50, v49, v172);
          v146 = 0;
          v56 = v170;
          v55 = v171;
          if ((*(v171 + 48))(v54, 1, v170) == 1)
          {
            (*(v46 + 8))(v47, v145);
            return (*(v165 + 8))(v54, v166);
          }

          v57 = v167;
          (*(v55 + 32))(v167, v54, v56);
          v59 = type metadata accessor for ItemReconciliationHalf(0, v168, v169, v58);
          if ((v57[*(v59 + 36)] & 0x10) != 0 || (v60 = &v57[*(v59 + 64)], !v60[16]) && (v60[2] & 4) != 0)
          {
            (*(v46 + 8))(v47, v145);
            return (*(v55 + 8))(v57, v56);
          }

          if (v176 == 2)
          {
            v176 = (v160 | 0x20000000002);
            v61 = v168;
            v62 = v164;
            v63 = v173;
            goto LABEL_24;
          }

          v64 = v155;
          v65 = v156;
          (*(v156 + 16))(v155, &v57[*(v56 + 52)], v158);
          v66 = v157;
          v67 = v162;
          if ((*(v157 + 48))(v64, 1, v162) == 1)
          {
            (*(v65 + 8))(v64, v158);
LABEL_22:
            v63 = v173;
            v68 = (v160 | 2);
LABEL_23:
            v176 = v68;
            v61 = v168;
            v62 = v164;
LABEL_24:
            v69 = v63[3];
            *&v188 = v61;
            *(&v188 + 1) = v62;
            v70 = v169;
            *&v189 = v169;
            v71 = v163;
            *(&v189 + 1) = v163;
            v173 = type metadata accessor for ItemJob(255, &v188);
            MetatypeMetadata = swift_getMetatypeMetadata();
            sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
            swift_allocObject();
            v73 = sub_1CF9E6D68();
            *&v188 = v61;
            *(&v188 + 1) = v62;
            *&v189 = v70;
            *(&v189 + 1) = v71;
            *v74 = type metadata accessor for Materialization.EvictItem(0, &v188);
            v75 = sub_1CF045898(v73, MetatypeMetadata);
            v76 = v146;
            v77 = (*(*v69 + 312))(v179, v75, v178, v180, v204);
            v146 = v76;
            if (v76)
            {
              (*(v175 + 8))(v177, v145);
              v75, v85, v86, v87, v88, v89, v90, v91;
              return (*(v171 + 8))(v167, v170);
            }

            v92 = v77;
            v75, v78, v79, v80, v81, v82, v83, v84;
            *&v188 = v92;
            sub_1CF9E6E58();
            swift_getWitnessTable();
            sub_1CF9E7118();
            v93 = *&v184[0];
            v92, v94, v95, v96, v97, v98, v99, v100;
            if (v93)
            {
              v101 = v169;
              if (*(v93 + 112) == 1)
              {
                *&v188 = v168;
                v102 = v164;
                *(&v188 + 1) = v164;
                *&v189 = v169;
                *(&v189 + 1) = v71;
                type metadata accessor for JobResult(0, &v188);
                v103 = sub_1CF67DD2C();

                sub_1CF803A0C(v161, v103);
                v101 = v169;

                v104 = v102;
                v105 = v179;
                v106 = v150;
LABEL_35:
                v109 = v168;
                *&v188 = v168;
                *(&v188 + 1) = v104;
                *&v189 = v101;
                v110 = v163;
                *(&v189 + 1) = v163;
                v111 = type metadata accessor for JobResult(0, &v188);
                v112 = sub_1CF57488C(v105, v106, v159, v176, 64);
                v204 = v111;
                v113 = v106;
                v114 = v105;
                v115 = v110;
                v116 = v109;
                sub_1CF803A0C(v161, v112);

                if (v174 == 1)
                {
                  *&v188 = v109;
                  *(&v188 + 1) = v164;
                  *&v189 = v101;
                  *(&v189 + 1) = v115;
                  type metadata accessor for Materialization.EvictChildren(0, &v188);
                  v117 = sub_1CF55900C(v114, v106, v159, v176);
                  sub_1CF803A0C(v161, v117);
                }

                v118 = swift_getAssociatedTypeWitness();
                AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
                v120 = v162;
                v121 = swift_getAssociatedConformanceWitness();
                *&v188 = v118;
                *(&v188 + 1) = v120;
                *&v189 = AssociatedConformanceWitness;
                *(&v189 + 1) = v121;
                type metadata accessor for ReconciliationID(255, &v188);
                type metadata accessor for ReconciliationSideMutation(255, v116, v101, v122);
                TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
                v124 = v151;
                v125 = &v151[*(TupleTypeMetadata2 + 48)];
                (*(*(v118 - 8) + 16))(v151, v179, v118);
                swift_storeEnumTagMultiPayload();
                *v125 = 261;
                v126 = v159;
                *(v125 + 1) = v113;
                *(v125 + 2) = v126;
                swift_storeEnumTagMultiPayload();
                v127 = v153;
                swift_storeEnumTagMultiPayload();
                sub_1CF06EB44(v161, v124);
                (*(v152 + 8))(v124, v127);
                goto LABEL_38;
              }

              v105 = v179;
            }

            else
            {
              v105 = v179;
              v101 = v169;
            }

            v106 = v150;
            v104 = v164;
            goto LABEL_35;
          }

          v107 = v154;
          (*(v66 + 32))(v154, v64, v67);
          v108 = v146;
          (*(*v173[5] + 264))(&v188, v107, v178, v180, v204);
          v146 = v108;
          if (v108)
          {
            (*(v66 + 8))(v107, v162);
            (*(v46 + 8))(v47, v145);
            return (*(v171 + 8))(v57, v56);
          }

          v182[12] = v200;
          v182[13] = v201;
          v182[14] = v202;
          v182[8] = v196;
          v182[9] = v197;
          v182[10] = v198;
          v182[11] = v199;
          v182[4] = v192;
          v182[5] = v193;
          v182[6] = v194;
          v182[7] = v195;
          v182[0] = v188;
          v182[1] = v189;
          v182[2] = v190;
          v182[3] = v191;
          v184[12] = v200;
          v185 = v201;
          v186 = v202;
          v184[8] = v196;
          v184[9] = v197;
          v184[10] = v198;
          v184[11] = v199;
          v184[4] = v192;
          v184[5] = v193;
          v184[6] = v194;
          v184[7] = v195;
          v184[0] = v188;
          v184[1] = v189;
          v183 = v203;
          v187 = v203;
          v184[2] = v190;
          v184[3] = v191;
          if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v184) == 1)
          {
            (*(v157 + 8))(v154, v162);
            goto LABEL_22;
          }

          v128 = v56;
          v129 = *&v167[*(v56 + 80)];
          v63 = v173;
          v130 = ((*v173)[75])();
          v131 = 0;
          v132 = v167[*(v128 + 56)];
          v133 = v160;
          if (v132 > 1)
          {
            v132 -= 2;
            if (v132 < 2)
            {
LABEL_47:
              if (sub_1CEFF8538(v185, *(&v185 + 1), 0, v130, v131, v129 & 1) == 3)
              {
                v134 = v168;
                v135 = v169;
                v136 = swift_getAssociatedTypeWitness();
                v137 = swift_getAssociatedConformanceWitness();
                v138 = v162;
                v139 = swift_getAssociatedConformanceWitness();
                v181[0] = v136;
                v181[1] = v138;
                v181[2] = v137;
                v181[3] = v139;
                type metadata accessor for ReconciliationID(255, v181);
                __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
                TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
                v141 = *(TupleTypeMetadata3 + 48);
                v204 = *(TupleTypeMetadata3 + 64);
                v142 = v147;
                (*(*(v136 - 8) + 16))(v147, v179, v136);
                swift_storeEnumTagMultiPayload();
                type metadata accessor for FileTreeError(0, v134, v135, v143);
                swift_getWitnessTable();
                *&v142[v141] = swift_allocError();
                swift_storeEnumTagMultiPayload();
                v142[v204] = 0;
                v144 = v149;
                swift_storeEnumTagMultiPayload();
                ((*v173)[39])(v142);
                sub_1CEFCCC44(v182, &qword_1EC4BECF0, &unk_1CF9FEEB0);
                (*(v148 + 8))(v142, v144);
                (*(v157 + 8))(v154, v138);
LABEL_38:
                (*(v175 + 8))(v177, v145);
                return (*(v171 + 8))(v167, v170);
              }

              (*(v157 + 8))(v154, v162);
              sub_1CEFCCC44(v182, &qword_1EC4BECF0, &unk_1CF9FEEB0);
              v68 = (v133 | 2);
              goto LABEL_23;
            }

            __break(1u);
          }

          if (v132)
          {
            v131 = 1;
          }

          goto LABEL_47;
        }
      }
    }

    return (*(v46 + 8))(v47, v31);
  }

  return result;
}

uint64_t sub_1CF56852C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1CF57488C(a1, a2, a3, a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v6;
}

uint64_t sub_1CF5685B4(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, void, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v325 = a8;
  v326 = a7;
  v323 = a5;
  v324 = a6;
  v330 = a4;
  v311 = a3;
  v327 = a1;
  v10 = *v8;
  v11 = *(*v8 + 77);
  v12 = *(*v8 + 75);
  *&v331 = swift_getAssociatedTypeWitness();
  *(&v331 + 1) = swift_getAssociatedTypeWitness();
  *&v332 = swift_getAssociatedConformanceWitness();
  *(&v332 + 1) = swift_getAssociatedConformanceWitness();
  v307 = type metadata accessor for FileItemVersion(255, &v331);
  v310 = sub_1CF9E75D8();
  v309 = *(v310 - 8);
  MEMORY[0x1EEE9AC00](v310);
  v308 = &v257 - v13;
  v322 = v10;
  v14 = *(v10 + 76);
  *&v15 = v12;
  *(&v15 + 1) = v14;
  v329 = v15;
  v16 = *(v10 + 78);
  *&v17 = v11;
  *(&v17 + 1) = v16;
  v328 = v17;
  v332 = v17;
  v331 = v15;
  v285 = type metadata accessor for PersistenceTrigger(0, &v331);
  v284 = *(v285 - 8);
  MEMORY[0x1EEE9AC00](v285);
  v283 = &v257 - v18;
  v332 = v328;
  v331 = v329;
  v293 = type metadata accessor for ReconciliationMutation(0, &v331);
  v296 = *(v293 - 8);
  MEMORY[0x1EEE9AC00](v293);
  v294 = &v257 - v19;
  v282 = sub_1CF9E5CF8();
  v281 = *(v282 - 8);
  MEMORY[0x1EEE9AC00](v282);
  v280 = &v257 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = sub_1CF9E5248();
  v265 = *(v266 - 8);
  MEMORY[0x1EEE9AC00](v266);
  v264 = &v257 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = swift_getAssociatedConformanceWitness();
  *&v331 = AssociatedTypeWitness;
  *(&v331 + 1) = v23;
  v298 = v23;
  *(&v297 + 1) = AssociatedConformanceWitness;
  *&v332 = AssociatedConformanceWitness;
  *(&v332 + 1) = v25;
  *&v297 = v25;
  v269 = type metadata accessor for ThrottlingKey(255, &v331);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v268 = sub_1CF9E75D8();
  v267 = *(v268 - 8);
  MEMORY[0x1EEE9AC00](v268);
  v271 = &v257 - v26;
  v290 = sub_1CF9E75D8();
  v292 = *(v290 - 8);
  MEMORY[0x1EEE9AC00](v290);
  v287 = &v257 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v277 = &v257 - v29;
  v295 = AssociatedTypeWitness;
  v291 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v30);
  v278 = &v257 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v272 = &v257 - v33;
  v275 = v14;
  v274 = v16;
  v300 = type metadata accessor for ItemReconciliationHalf(0, v14, v16, v34);
  v303 = *(v300 - 8);
  MEMORY[0x1EEE9AC00](v300);
  v299 = &v257 - v35;
  v306 = type metadata accessor for ItemReconciliationHalf(0, v12, v11, v36);
  v302 = *(v306 - 8);
  MEMORY[0x1EEE9AC00](v306);
  v301 = &v257 - v37;
  v314 = v12;
  v313 = v11;
  v39 = type metadata accessor for SnapshotItem(255, v12, v11, v38);
  v305 = sub_1CF9E75D8();
  v304 = *(v305 - 1);
  MEMORY[0x1EEE9AC00](v305);
  v318 = &v257 - v40;
  v317 = v39;
  v315 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v316 = &v257 - v42;
  v332 = v328;
  v331 = v329;
  v312 = type metadata accessor for ItemReconciliation(255, &v331);
  v321 = sub_1CF9E75D8();
  v319 = *(v321 - 8);
  MEMORY[0x1EEE9AC00](v321);
  v273 = &v257 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v286 = &v257 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v276 = &v257 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v279 = &v257 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v289 = &v257 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v288 = &v257 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v257 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v257 - v58;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v257 - v61;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v257 - v64;
  v66 = *(v322 + 72);
  v67 = *(v325 + 8);
  v320 = v9;
  v68 = v9 + v66;
  v69 = v326;
  sub_1CF68DDB0(v68, v330, v326, v67, &v257 - v64);
  v263 = v62;
  v261 = v59;
  v262 = v56;
  v322 = v65;
  v70 = v318;
  (*(**(v327 + 4) + 240))(v320 + v66, 1, v330, v69, v67);
  v257 = v67;
  v260 = v66;
  v72 = v315;
  v73 = v317;
  v74 = (*(v315 + 48))(v70, 1, v317);
  if (v74 == 1)
  {
    (*(v304 + 8))(v70, v305);
LABEL_5:
    v75 = v319;
    v76 = v320;
    v78 = v325;
    v77 = v326;
    v79 = v313;
    if ((*(v320 + 138) & 2) != 0)
    {
      v331 = v329;
      v332 = v328;
      type metadata accessor for JobResult(0, &v331);
      v332 = v328;
      v331 = v329;
      type metadata accessor for DiskImport.MarkDirectorDiskImportAsDone(0, &v331);
      v80 = sub_1CF559420();
      sub_1CF803A0C(v311, v80);
    }

    *(&v332 + 1) = v77;
    v333 = v78;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v331);
    (*(*(v77 - 8) + 16))(boxed_opaque_existential_0, v330, v77);
    v82 = v308;
    (*(*(v307 - 8) + 56))(v308, 1, 1);
    v83 = v314;
    type metadata accessor for FileTreeError(0, v314, v79, v84);
    swift_getWitnessTable();
    v85 = swift_allocError();
    sub_1CF72C4D8(v76 + v260, v82, 0, v83, v79, v86);
    (*(v309 + 8))(v82, v310);
    v323(&v331, 0, 0, 0, v85);

    goto LABEL_38;
  }

  (*(v72 + 32))(v316, v70, v73);
  v87 = v319;
  v88 = *(v319 + 16);
  v89 = v263;
  v318 = (v319 + 16);
  v305 = v88;
  v88(v263, v322, v321);
  v90 = v312;
  v91 = *(v312 - 8);
  v92 = *(v91 + 48);
  v304 = v91 + 48;
  v259 = v92;
  v93 = v92(v89, 1, v312);
  v258 = v91;
  if (v93 == 1)
  {
    (*(v87 + 8))(v89, v321);
    v94 = v306;
  }

  else
  {
    v95 = v302;
    v96 = v301;
    v94 = v306;
    (*(v302 + 16))(v301, v89, v306);
    (*(v91 + 8))(v89, v90);
    v97 = *&v96[*(v94 + 36)];
    (*(v95 + 8))(v96, v94);
    if (v97)
    {
      (*(v72 + 8))(v316, v73);
      goto LABEL_5;
    }
  }

  v98 = v261;
  v305(v261, v322, v321);
  v99 = v259(v98, 1, v90);
  v75 = v319;
  v100 = v90;
  if (v99 == 1)
  {
    (*(v319 + 8))(v98, v321);
    v101 = 6;
    v102 = v258;
  }

  else
  {
    v103 = v302;
    v104 = v301;
    (*(v302 + 16))(v301, v98, v94);
    v102 = v258;
    (*(v258 + 8))(v98, v100);
    v101 = v104[*(v94 + 56)];
    (*(v103 + 8))(v104, v94);
  }

  v105 = v262;
  v305(v262, v322, v321);
  v106 = v259(v105, 1, v100);
  v107 = v320;
  if (v106 == 1)
  {
    (*(v75 + 8))(v105, v321);
    v108 = 0;
    v109 = v303;
  }

  else
  {
    v109 = v303;
    v110 = v320;
    v111 = v299;
    v112 = v300;
    (*(v303 + 16))(v299, &v105[*(v100 + 52)], v300);
    (*(v102 + 8))(v105, v100);
    v113 = v111[*(v112 + 52)];
    v114 = v111;
    v107 = v110;
    (*(v109 + 8))(v114, v112);
    v108 = v113 == 4;
  }

  if (v101 == 6)
  {
LABEL_27:
    v123 = 0;
    goto LABEL_29;
  }

  if (v101 == 4)
  {
    v115 = v288;
    v305(v288, v322, v321);
    if (v259(v115, 1, v100) == 1)
    {
      (*(v75 + 8))(v115, v321);
      v116 = v289;
LABEL_25:
      v305(v116, v322, v321);
      if (v259(v116, 1, v100) != 1)
      {
        v124 = v107;
        v125 = v299;
        v126 = v300;
        (*(v109 + 16))(v299, &v116[*(v100 + 52)], v300);
        (*(v258 + 8))(v116, v100);
        v127 = v125[*(v126 + 52)];
        v128 = v125;
        v107 = v124;
        (*(v109 + 8))(v128, v126);
        v123 = v127 == 1;
        goto LABEL_29;
      }

      (*(v75 + 8))(v116, v321);
      goto LABEL_27;
    }

    v117 = v107;
    v118 = v299;
    v119 = v300;
    (*(v109 + 16))(v299, &v115[*(v100 + 52)], v300);
    (*(v258 + 8))(v115, v100);
    v120 = v118[*(v119 + 52)];
    v121 = v118;
    v107 = v117;
    (*(v109 + 8))(v121, v119);
    v122 = v120 == 3;
    v116 = v289;
    if (!v122)
    {
      goto LABEL_25;
    }
  }

  v123 = 1;
LABEL_29:
  v129 = v317;
  WitnessTable = swift_getWitnessTable();
  if (v108 | (((sub_1CF937C7C(v129, WitnessTable) | v123) & 1) == 0))
  {
    v331 = v329;
    v332 = v328;
    v131 = type metadata accessor for JobResult(0, &v331);
    v132 = v298;
    *&v331 = v298;
    *(&v331 + 1) = v295;
    v332 = v297;
    type metadata accessor for ReconciliationID(255, &v331);
    type metadata accessor for ReconciliationSideMutation(255, v314, v313, v133);
    v134 = swift_getTupleTypeMetadata2();
    v135 = v294;
    v136 = &v294[*(v134 + 48)];
    v137 = *(v132 - 8);
    v138 = v260;
    v314 = *(v137 + 16);
    v313 = v137 + 16;
    v314(v294, v107 + v260, v132);
    swift_storeEnumTagMultiPayload();
    *v136 = 1280;
    *(v136 + 8) = *(v107 + 120);
    swift_storeEnumTagMultiPayload();
    v139 = v107;
    v140 = v135;
    v141 = v293;
    swift_storeEnumTagMultiPayload();
    v142 = v311;
    v318 = v131;
    sub_1CF06EB44(v311, v140);
    (*(v296 + 8))(v140, v141);
    if ((*(v139 + 138) & 2) != 0)
    {
      v331 = v329;
      v332 = v328;
      type metadata accessor for DiskImport.MarkDirectorDiskImportAsDone(0, &v331);
      v165 = sub_1CF559420();
      sub_1CF803A0C(v142, v165);
    }

    else
    {
      v143 = *(swift_getTupleTypeMetadata2() + 48);
      v144 = v283;
      v314(v283, v139 + v138, v132);
      swift_storeEnumTagMultiPayload();
      v144[v143] = 0;
      v145 = v285;
      swift_storeEnumTagMultiPayload();
      (*(*v327 + 312))(v144);
      (*(v284 + 8))(v144, v145);
    }

    v166 = v326;
    *(&v332 + 1) = v326;
    v333 = v325;
    v167 = __swift_allocate_boxed_opaque_existential_0(&v331);
    (*(*(v166 - 8) + 16))(v167, v330, v166);
    v323(&v331, 0, 0, 0, 0);
    goto LABEL_37;
  }

  v146 = v314;
  v147 = v298;
  v148 = *(&v297 + 1);
  if ((*(v107 + 138) & 2) == 0)
  {
    goto LABEL_33;
  }

  v168 = (*(v297 + 72))(v298);
  v169 = v312;
  if ((v168 & 1) == 0)
  {
    goto LABEL_54;
  }

  v170 = v279;
  v305(v279, v322, v321);
  if (v259(v170, 1, v169) == 1)
  {
    (*(v75 + 8))(v170, v321);
    v171 = v169;
    v172 = v295;
    v173 = v292;
  }

  else
  {
    v197 = v303;
    v198 = v299;
    v199 = v300;
    (*(v303 + 16))(v299, &v170[*(v169 + 52)], v300);
    (*(v258 + 8))(v170, v169);
    v200 = v198[*(v199 + 52)];
    (*(v197 + 8))(v198, v199);
    v171 = v169;
    v172 = v295;
    v173 = v292;
    if (v200 == 2)
    {
LABEL_53:
      v107 = v320;
      goto LABEL_54;
    }
  }

  v201 = v276;
  v305(v276, v322, v321);
  if (v259(v201, 1, v171) == 1)
  {
    (*(v75 + 8))(v201, v321);
    v202 = v277;
    (*(v291 + 56))(v277, 1, 1, v172);
LABEL_52:
    (*(v292 + 8))(v202, v290);
    goto LABEL_53;
  }

  v203 = v303;
  v204 = v299;
  v205 = v300;
  (*(v303 + 16))(v299, &v201[*(v171 + 52)], v300);
  (*(v258 + 8))(v201, v171);
  v202 = v277;
  (*(v173 + 16))(v277, v204, v290);
  (*(v203 + 8))(v204, v205);
  v206 = v291;
  if ((*(v291 + 48))(v202, 1, v172) == 1)
  {
    goto LABEL_52;
  }

  v223 = v272;
  (*(v206 + 32))(v272, v202, v172);
  *&v331 = (*(**(v327 + 3) + 376))(v223, 6, 0, 1, v330, v326, v257);
  v224 = v331;
  v225 = TupleTypeMetadata2;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  v226 = v271;
  sub_1CF9E7118();
  v224, v227, v228, v229, v230, v231, v232, v233;
  v234 = (*(*(v225 - 8) + 48))(v226, 1, v225);
  if (v234 == 1)
  {
    (*(v291 + 8))(v223, v295);
    (*(v267 + 8))(v226, v268);
    goto LABEL_53;
  }

  v235 = &v226[*(v225 + 48)];
  v236 = *(v235 + 5);
  v237 = *(v235 + 8);
  (*(*(v269 - 8) + 8))(v226);
  if (!v236)
  {

    v237, v250, v251, v252, v253, v254, v255, v256;
    (*(v291 + 8))(v223, v295);
    goto LABEL_53;
  }

  v238 = v236;
  v239 = v264;
  sub_1CF9E5108();
  sub_1CF574EBC();
  v240 = v223;
  v241 = v266;
  v242 = sub_1CF9E5658();

  v237, v243, v244, v245, v246, v247, v248, v249;
  (*(v265 + 8))(v239, v241);
  (*(v291 + 8))(v240, v295);
  v146 = v314;
  v147 = v298;
  v148 = *(&v297 + 1);
  v107 = v320;
  if ((v242 & 1) == 0)
  {
LABEL_54:
    v207 = v280;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v209 = v208;
    result = (*(v281 + 8))(v207, v282);
    v210 = v209 * 1000000000.0;
    if (COERCE__INT64(fabs(v209 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v212 = v325;
      v211 = v326;
      if (v210 > -9.22337204e18)
      {
        if (v210 < 9.22337204e18)
        {
          v213 = v330;
          sub_1CF5666D4(v107 + v260, 0x2000000000000000, v210, 0x20000, v327, 0, v311, v330, v326, v257);
          *(&v332 + 1) = v211;
          v333 = v212;
          v214 = __swift_allocate_boxed_opaque_existential_0(&v331);
          (*(*(v211 - 8) + 16))(v214, v213, v211);
          sub_1CF4810BC();
          v215 = swift_allocError();
          *v216 = 5;
          v323(&v331, 0, 0, 0, v215);

LABEL_37:
          (*(v315 + 8))(v316, v317);
LABEL_38:
          (*(v75 + 8))(v322, v321);
          return sub_1CEFCCC44(&v331, &unk_1EC4C1B30, &qword_1CFA05300);
        }

        goto LABEL_72;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

LABEL_33:
  v331 = v329;
  v332 = v328;
  v149 = type metadata accessor for JobResult(0, &v331);
  v150 = v295;
  *&v331 = v147;
  *(&v331 + 1) = v295;
  *&v332 = v297;
  *(&v332 + 1) = v148;
  type metadata accessor for ReconciliationID(255, &v331);
  type metadata accessor for ReconciliationSideMutation(255, v146, v313, v151);
  v152 = swift_getTupleTypeMetadata2();
  v153 = v294;
  v154 = &v294[*(v152 + 48)];
  (*(*(v147 - 8) + 16))(v294, v107 + v260, v147);
  swift_storeEnumTagMultiPayload();
  *v154 = 1280;
  *(v154 + 8) = *(v107 + 120);
  swift_storeEnumTagMultiPayload();
  v155 = v293;
  swift_storeEnumTagMultiPayload();
  *&v329 = v149;
  sub_1CF06EB44(v311, v153);
  v156 = v321;
  v158 = v296 + 8;
  v157 = *(v296 + 8);
  v157(v153, v155);
  v159 = v286;
  v305(v286, v322, v156);
  v160 = v312;
  if (v259(v159, 1, v312) == 1)
  {
    (*(v75 + 8))(v159, v156);
    v161 = v287;
    (*(v291 + 56))(v287, 1, 1, v150);
    v162 = v323;
    v163 = v290;
    v164 = v292;
LABEL_43:
    (*(v164 + 8))(v161, v163);
LABEL_44:
    v180 = v325;
    v181 = v326;
    v182 = v321;
    v183 = v319;
LABEL_45:
    *(&v332 + 1) = v181;
    v333 = v180;
    v184 = __swift_allocate_boxed_opaque_existential_0(&v331);
    (*(*(v181 - 8) + 16))(v184, v330, v181);
    sub_1CF4810BC();
    v185 = swift_allocError();
    *v186 = 3;
    v162(&v331, 0, 0, 0, v185);

    (*(v315 + 8))(v316, v317);
    (*(v183 + 8))(v322, v182);
    return sub_1CEFCCC44(&v331, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  *&v328 = v157;
  v296 = v158;
  v174 = v303;
  v175 = v299;
  v176 = v300;
  (*(v303 + 16))(v299, &v159[*(v160 + 52)], v300);
  v177 = *(v258 + 8);
  v258 += 8;
  v327 = v177;
  v177(v159, v160);
  v164 = v292;
  v161 = v287;
  v163 = v290;
  (*(v292 + 16))(v287, v175, v290);
  (*(v174 + 8))(v175, v176);
  v178 = v291;
  v179 = (*(v291 + 48))(v161, 1, v150);
  v162 = v323;
  if (v179 == 1)
  {
    goto LABEL_43;
  }

  v187 = v278;
  (*(v178 + 32))(v278, v161, v150);
  v189 = type metadata accessor for ReconciliationSideMutation(255, v275, v274, v188);
  v190 = v155;
  v313 = swift_getTupleTypeMetadata2();
  v191 = *(v313 + 48);
  v192 = *(v178 + 16);
  v193 = v294;
  v314 = v192;
  v192(v294, v187, v150);
  swift_storeEnumTagMultiPayload();
  *(v193 + v191) = 0;
  v320 = v189;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v311, v193);
  v194 = v328;
  (v328)(v193, v190);
  v195 = v273;
  v182 = v321;
  v305(v273, v322, v321);
  v196 = v312;
  if (v259(v195, 1, v312) == 1)
  {
    v183 = v319;
    (*(v319 + 8))(v195, v182);
    (*(v291 + 8))(v187, v150);
    v162 = v323;
    v180 = v325;
    v181 = v326;
    goto LABEL_45;
  }

  v217 = v195[*(v196 + 56)];
  result = v327(v195, v196);
  if (v217 == 1)
  {
    (*(v291 + 8))(v278, v295);
    goto LABEL_63;
  }

  v122 = v217 == 4;
  v218 = v278;
  if (!v122)
  {
    v219 = v294;
    v220 = &v294[*(v313 + 48)];
    v221 = v295;
    v314(v294, v278, v295);
    swift_storeEnumTagMultiPayload();
    *v220 = 0;
    *(v220 + 1) = 0;
    *(v220 + 2) = 0;
    *(v220 + 3) = 0xB000000000000000;
    *(v220 + 2) = 0u;
    *(v220 + 3) = 0u;
    *(v220 + 32) = 0;
    swift_storeEnumTagMultiPayload();
    v222 = v293;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v311, v219);
    v194(v219, v222);
    (*(v291 + 8))(v218, v221);
LABEL_63:
    v162 = v323;
    goto LABEL_44;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_1CF56ACB4@<X0>(uint64_t a1@<X8>)
{
  v4[0] = swift_getAssociatedTypeWitness();
  v4[1] = swift_getAssociatedTypeWitness();
  v4[2] = swift_getAssociatedConformanceWitness();
  v4[3] = swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for ThrottlingKey(0, v4);
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

uint64_t sub_1CF56AE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, void, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v53 = a8;
  v55 = a7;
  v60 = a6;
  v61 = a5;
  v57 = a3;
  v58 = a4;
  v59 = a1;
  v10 = *v8;
  v11 = v10[75];
  v12 = v10[77];
  v47 = type metadata accessor for SnapshotItem(255, v11, v12, a4);
  v46 = sub_1CF9E75D8();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v44 - v13;
  v51 = v10;
  *&v14 = v11;
  *(&v14 + 1) = v10[76];
  v52 = v14;
  *&v15 = v12;
  *(&v15 + 1) = v10[78];
  v48 = v15;
  v63 = v15;
  v62 = v14;
  v54 = type metadata accessor for ReconciliationMutation(0, &v62);
  v56 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v17 = &v44 - v16;
  v63 = v48;
  v62 = v52;
  *&v52 = type metadata accessor for JobResult(0, &v62);
  v49 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = v53;
  v22 = swift_getAssociatedConformanceWitness();
  *&v62 = AssociatedTypeWitness;
  *(&v62 + 1) = v19;
  v23 = v55;
  *&v63 = AssociatedConformanceWitness;
  *(&v63 + 1) = v22;
  v24 = v50;
  type metadata accessor for ReconciliationID(255, &v62);
  type metadata accessor for ReconciliationSideMutation(255, v49, v12, v25);
  v26 = &v17[*(swift_getTupleTypeMetadata2() + 48)];
  v27 = v51[72];
  (*(*(AssociatedTypeWitness - 8) + 16))(v17, v9 + v27, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  *v26 = 1281;
  *(v26 + 8) = *(v9 + 15);
  swift_storeEnumTagMultiPayload();
  v28 = v54;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v57, v17);
  v29 = v17;
  v30 = v58;
  (*(v56 + 8))(v29, v28);
  (*(**(v59 + 32) + 240))(v9 + v27, 1, v30, v23, *(v21 + 8));
  v31 = v45;
  v32 = v46;
  v33 = v61;
  v34 = v47;
  v35 = *(v47 - 8);
  if ((*(v35 + 48))(v24, 1, v47) == 1)
  {
    (*(v31 + 8))(v24, v32);
    v36 = v33;
  }

  else
  {
    WitnessTable = swift_getWitnessTable();
    v38 = sub_1CF937C7C(v34, WitnessTable);
    (*(v35 + 8))(v24, v34);
    v36 = v33;
    if ((v38 & 1) == 0)
    {
      *(&v63 + 1) = v23;
      v64 = v21;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v62);
      (*(*(v23 - 8) + 16))(boxed_opaque_existential_0, v30, v23);
      sub_1CF4810BC();
      v42 = swift_allocError();
      *v43 = 4;
      v33(&v62, 0, 0, 0, v42);

      return sub_1CEFCCC44(&v62, &unk_1EC4C1B30, &qword_1CFA05300);
    }
  }

  *(&v63 + 1) = v23;
  v64 = v21;
  v39 = __swift_allocate_boxed_opaque_existential_0(&v62);
  (*(*(v23 - 8) + 16))(v39, v30, v23);
  v36(&v62, 0, 0, 0, 0);
  return sub_1CEFCCC44(&v62, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF56B4A4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v61 = a5;
  v62 = a6;
  v67 = a3;
  v15 = *v9;
  v16 = type metadata accessor for SnapshotItem(0, *(*v9 + 600), *(*v9 + 616), a4);
  v73 = *(v16 - 8);
  v17 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v72 = &v58 - v21;
  v66 = a1;
  v22 = *(v15 + 576);
  v23 = *(*a1[4] + 496);
  v24 = *(a8 + 8);
  v68 = a4;
  v25 = a4;
  v26 = a7;
  v27 = v23(&v9[v22], a2, v25, a7, v24, v20);
  v28 = a8;
  v29 = v27;
  v64 = v24;
  v65 = v26;
  v59 = v17;
  v60 = v30;
  if ((*(v9 + 17) & 0x20000000000) != 0)
  {
    v31 = 2;
  }

  else
  {
    v31 = 4;
  }

  v63 = v31;
  if (!sub_1CF9E6DF8())
  {
LABEL_15:
    v29, v32, v33, v34, v35, v36, v37, v38;
    v53 = v61;
    v54 = v65;
    v55 = v68;
    v75[3] = v65;
    v75[4] = v28;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v75);
    (*(*(v54 - 8) + 16))(boxed_opaque_existential_0, v55, v54);
    v57 = v60;

    v53(v75, v57, 0, 0, 0);

    return sub_1CEFCCC44(v75, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v39 = v9;
  v40 = 0;
  v41 = v73;
  v69 = (v73 + 32);
  v70 = (v73 + 8);
  v71 = (v73 + 16);
  while (1)
  {
    v43 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v43)
    {
      v44 = v29 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40;
      v45 = *(v41 + 16);
      v46 = v72;
      v45(v72, v44, v16);
      v47 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    result = sub_1CF9E7998();
    if (v59 != 8)
    {
      break;
    }

    v75[0] = result;
    v46 = v72;
    (*v71)(v72, v75, v16);
    swift_unknownObjectRelease();
    v47 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_9:
    (*v69)(v18, v46, v16);
    WitnessTable = swift_getWitnessTable();
    sub_1CF06D940(v16, WitnessTable, v75);
    if (LOBYTE(v75[0]) != 2)
    {
      sub_1CF06D940(v16, WitnessTable, v75);
      v49 = *(v39 + 15);
      v50 = *(v39 + 16);
      v51 = *(v39 + 17);
      v74 = v63;
      sub_1CF5673DC(v18, v75, v49, v50, v51, v66, &v74, v67, v68, v65, v64);
    }

    (*v70)(v18, v16);
    v42 = sub_1CF9E6DF8();
    ++v40;
    v41 = v73;
    if (v47 == v42)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

double sub_1CF56B9CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v84 = a6;
  v82 = a4;
  v83 = a5;
  v73 = a3;
  v9 = *(*a2 + 88);
  v10 = *(*a2 + 96);
  v11 = *(*a2 + 104);
  p_isa = *(*a2 + 80);
  v8 = p_isa;
  v87 = v9;
  v88 = v10;
  v89 = v11;
  v75 = type metadata accessor for ReconciliationMutation(0, &p_isa);
  v77 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v72 - v12;
  v13 = sub_1CF9E6118();
  v79 = *(v13 - 8);
  v80 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2[3];
  p_isa = v8;
  v87 = v9;
  v88 = v10;
  v89 = v11;
  v78 = type metadata accessor for ItemJob(255, &p_isa);
  MetatypeMetadata = swift_getMetatypeMetadata();
  sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
  swift_allocObject();
  v17 = sub_1CF9E6D68();
  v74 = v8;
  p_isa = v8;
  v87 = v9;
  v88 = v10;
  v89 = v11;
  *v18 = type metadata accessor for Materialization.EvictItem(0, &p_isa);
  v19 = sub_1CF045898(v17, MetatypeMetadata);
  v20 = v85;
  v21 = (*(*v15 + 312))(a1, v19, v82, v83, v84);
  v19, v22, v23, v24, v25, v26, v27, v28;
  if (!v20)
  {
    v30 = v80;
    v31 = v81;
    v32 = v79;
    v84 = a1;
    v85 = 0;
    v72 = v11;
    v82 = v9;
    v83 = v10;
    p_isa = &v21->super.isa;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    sub_1CF9E7118();
    v33 = v90;
    v21, v34, v35, v36, v37, v38, v39, v40;
    if (v33)
    {
      v41 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v42 = sub_1CF9E6108();
      v43 = sub_1CF9E72C8();
      v44 = os_log_type_enabled(v42, v43);
      v78 = v33;
      if (v44)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        p_isa = v46;
        *v45 = 136446210;
        v47 = sub_1CF044BA4();
        v49 = v48;

        v50 = sub_1CEFD0DF0(v47, v49, &p_isa);
        v49, v51, v52, v53, v54, v55, v56, v57;
        *(v45 + 4) = v50;
        _os_log_impl(&dword_1CEFC7000, v42, v43, "✴️  cancelling eviction %{public}s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x1D386CDC0](v46, -1, -1);
        MEMORY[0x1D386CDC0](v45, -1, -1);

        (*(v32 + 8))(v81, v30);
      }

      else
      {

        (*(v32 + 8))(v31, v30);
      }

      v58 = v74;
      v59 = v83;
      p_isa = v74;
      v87 = v82;
      v88 = v83;
      v89 = v72;
      v83 = type metadata accessor for JobResult(0, &p_isa);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v61 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v63 = swift_getAssociatedConformanceWitness();
      p_isa = AssociatedTypeWitness;
      v87 = v61;
      v88 = AssociatedConformanceWitness;
      v89 = v63;
      type metadata accessor for ReconciliationID(255, &p_isa);
      type metadata accessor for ReconciliationSideMutation(255, v58, v59, v64);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v66 = v76;
      v67 = &v76[*(TupleTypeMetadata2 + 48)];
      (*(*(AssociatedTypeWitness - 8) + 16))(v76, v84, AssociatedTypeWitness);
      swift_storeEnumTagMultiPayload();
      v68 = *(v78 + 120);
      *v67 = 1281;
      *(v67 + 8) = v68;
      swift_storeEnumTagMultiPayload();
      v69 = v75;
      swift_storeEnumTagMultiPayload();
      v70 = v73;
      sub_1CF06EB44(v73, v66);
      (*(v77 + 8))(v66, v69);
      v71 = sub_1CF67DD2C();

      sub_1CF803A0C(v70, v71);
    }
  }

  return result;
}