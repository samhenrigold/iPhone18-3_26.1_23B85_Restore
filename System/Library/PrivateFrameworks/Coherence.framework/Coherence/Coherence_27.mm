uint64_t sub_1AE02A644(char *__dst, char *__src, char *a3, __int16 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 2;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 2;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[2 * v9] <= a4)
    {
      memmove(a4, __dst, 2 * v9);
    }

    v12 = &v4[v9];
    if (v8 < 2)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v13 = *v6;
      if (v13 < *v4)
      {
        break;
      }

      LOWORD(v13) = *v4;
      v14 = v7 == v4++;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 2;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v14 = v7 == v6++;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    *v7 = v13;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[2 * v11] <= a4)
  {
    memmove(a4, __src, 2 * v11);
  }

  v12 = &v4[v11];
  if (v10 >= 2 && v6 > v7)
  {
LABEL_20:
    v15 = v6 - 1;
    v5 -= 2;
    v16 = v12;
    do
    {
      v17 = (v5 + 2);
      v19 = *(v16 - 2);
      v16 -= 2;
      v18 = v19;
      v20 = *v15;
      if (v19 < v20)
      {
        if (v17 != v6)
        {
          *v5 = v20;
        }

        if (v12 <= v4 || (--v6, v15 <= v7))
        {
          v6 = v15;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v17 != v12)
      {
        *v5 = v18;
      }

      v5 -= 2;
      v12 = v16;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v21 = v12 - v4 + ((v12 - v4) >> 63);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFFELL)))
  {
    memmove(v6, v4, 2 * (v21 >> 1));
  }

  return 1;
}

uint64_t sub_1AE02A820(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_1AE02AA44()
{
  v1 = *(v0 + 16);
  type metadata accessor for Replica(0);
  return sub_1ADDD8290(v1);
}

void sub_1AE02AA94(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_1ADDCC35C(a1, a2);

    sub_1ADDCC35C(a3, a4);
  }
}

uint64_t sub_1AE02AAE4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1AE23BDDC() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[6];
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1ADE744B8;

  return sub_1AE01DE50(a1, v9, v10, v11, v1 + v6, v12, v13, v14);
}

uint64_t sub_1AE02AC40(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1ADE74240;

  return sub_1AE01E874(a1, a2, v7, v6);
}

uint64_t sub_1AE02AD38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AE02ADD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1AE02AE6C()
{
  v2 = v0;
  v3 = *v0;
  v4 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[9];
  sub_1AE23D6AC();
  if (!v1)
  {
    *&v87 = v4;
    v88 = v7;
    *&v89 = v6;
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E7CC0];
    v10 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v11 = sub_1ADDD9ECC(v9);
    v8[2] = v10;
    v85 = v8 + 2;
    v118 = v8;
    v8[3] = v11;
    v13 = v2[4];
    v12 = v2[5];
    swift_beginAccess();
    if (*(v13 + 48) == 1)
    {
      __break(1u);
    }

    else
    {
      v15 = *(v3 + 80);
      v16 = *(v3 + 88);
      v17 = type metadata accessor for Capsule(0, v15, v16, v14);
      v18 = v12;

      v83 = v17;
      Capsule.finalizeTimestamps(_:)(v18);
      swift_endAccess();

      v19 = v2[5];
      LOBYTE(v102) = 1;
      type metadata accessor for CREncoder();
      swift_allocObject();
      CREncoder.init(_:version:fileSignature:)(v19, &v102, 0, 0xF000000000000000);
      sub_1AE018590(&v113);
      if (*&v115[0] != 1)
      {
        v94 = v113;
        v95 = v114;
        *&v96[0] = *&v115[0];
        v20 = sub_1ADE68C2C(&v94, v15, v16);
        v80 = v16;
        v81 = v15;
        v21 = v20;
        v22 = v95;
        v82 = v23;
        sub_1ADDCC35C(v94, *(&v94 + 1));
        v24 = v82;
        sub_1ADDCC35C(v22, *(&v22 + 1));

        MEMORY[0x1EEE9AC00](v25);
        *(&v78 - 4) = v2;
        *(&v78 - 3) = v21;
        v26 = v85;
        *(&v78 - 2) = v24;
        *(&v78 - 1) = v26;
        sub_1AE23D6AC();
        v79 = v21;
        v27 = v2[2];
        v84 = v2;
        if (!v27)
        {
          sub_1AE018590(&v90);
          v48 = *&v91[16];
          if (*&v91[16] != 1)
          {
            v49 = *v91;
            v50 = *&v91[8];
            v51 = v90;
            v94 = v90;
            v95 = *v91;
            *&v96[0] = *&v91[16];
            v52 = v89;
            sub_1ADDFC54C(v89);
            sub_1ADE92284(v51, *(&v51 + 1), v49, v50, v48);
            sub_1AE23C1FC();
            sub_1ADDE53C0(v52, type metadata accessor for PartiallyOrderedReferenceMap);
            while (1)
            {
              v53 = v114;
              if (v114 >= DWORD1(v114))
              {
                v54 = sub_1AE23C20C();
                if (!v54)
                {
                  v99 = v115[4];
                  v100[0] = v115[5];
                  *(v100 + 11) = *(&v115[5] + 11);
                  v96[0] = v115[0];
                  v96[1] = v115[1];
                  v97 = v115[2];
                  v98 = v115[3];
                  v94 = v113;
                  v95 = v114;
                  sub_1ADDFD834(&v94);
                  v46 = v84;
                  goto LABEL_21;
                }
              }

              else
              {
                v54 = *(&v113 + 1);
                LODWORD(v114) = v114 + 1;
              }

              v55 = v54 + *(v54 + 24) + (~v53 << 6);
              v56 = *(v55 + 32);
              v57 = *(v55 + 40);
              v59 = *(v55 + 64);
              v58 = *(v55 + 72);
              v61 = *(v55 + 80);
              v60 = *(v55 + 88);
              *&v110 = v56;
              *(&v110 + 1) = v57;
              v89 = *(v55 + 48);
              v102 = v89;
              *&v103 = v59;
              *(&v103 + 1) = v58;
              *&v104 = v61;
              *(&v104 + 1) = v60;
              sub_1ADDD86D8(v56, v57);

              sub_1AE01FE30(&v110, &v102, v84, v118);

              sub_1ADDCC35C(v56, v57);
            }
          }

          goto LABEL_27;
        }

        v78 = v27;
        *&v86 = v2[3];
        sub_1AE018590(&v110);
        v28 = v112;
        if (v112 != 1)
        {
          v29 = *(&v111 + 1);
          v30 = v111;
          v31 = *(&v110 + 1);
          v32 = v110;
          v94 = v110;
          v95 = v111;
          *&v96[0] = v112;
          v33 = v89;
          sub_1ADDFC54C(v89);
          sub_1ADE42C78(v78, v86);
          sub_1ADE92284(v32, v31, v30, v29, v28);
          v34 = (v33 + *(v87 + 20));
          v35 = *v34;
          v36 = v34[1];
          v37 = v34[2];

          sub_1ADEBE8DC(v38);
          v40 = v39;
          sub_1ADDE53C0(v33, type metadata accessor for PartiallyOrderedReferenceMap);
          sub_1ADECD850(&v102);
          *(&v115[5] + 8) = v107;
          *(&v115[6] + 8) = v108;
          *(&v115[7] + 8) = v109[0];
          *(&v115[8] + 3) = *(v109 + 11);
          *(&v115[1] + 8) = v103;
          *(&v115[2] + 8) = v104;
          *(&v115[3] + 8) = v105;
          *(&v115[4] + 8) = v106;
          *(v115 + 8) = v102;
          *&v113 = v35;
          *(&v113 + 1) = v36;
          *&v114 = v37;
          *(&v114 + 1) = v40;
          *&v115[0] = 0;
          *(&v115[9] + 1) = v78;
          *&v116 = v86;
          BYTE8(v116) = 0;
          v117 = 0;
          sub_1AE03163C(&v94);
          v41 = *&v96[0];
          if (*&v96[0])
          {
            v42 = v94;
            v43 = v95;
            v44 = *(v96 + 8);
            v45 = *(&v96[1] + 1);
            v46 = v84;
            v47 = v118;
            do
            {
              v86 = v43;
              v87 = v42;
              v93 = v42;
              v89 = v44;
              v90 = v43;
              *v91 = v41;
              *&v91[8] = v44;
              v92 = v45;
              sub_1AE01FE30(&v93, &v90, v46, v47);

              sub_1ADDCC35C(v87, *(&v87 + 1));
              sub_1AE03163C(&v94);
              v42 = v94;
              v43 = v95;
              v41 = *&v96[0];
              v44 = *(v96 + 8);
              v45 = *(&v96[1] + 1);
            }

            while (*&v96[0]);
          }

          else
          {
            v46 = v84;
          }

          v100[3] = v115[8];
          v100[4] = v115[9];
          v100[5] = v116;
          v101 = v117;
          v99 = v115[4];
          v100[0] = v115[5];
          v100[1] = v115[6];
          v100[2] = v115[7];
          v96[0] = v115[0];
          v96[1] = v115[1];
          v97 = v115[2];
          v98 = v115[3];
          v94 = v113;
          v95 = v114;
          sub_1ADECD8C8(&v94);
LABEL_21:
          sub_1AE018590(&v113);
          v62 = *&v115[0];
          if (*&v115[0] != 1)
          {
            v63 = v46;
            v64 = *(&v114 + 1);
            v65 = v114;
            v66 = *(&v113 + 1);
            v67 = v113;
            v94 = v113;
            v95 = v114;
            *&v96[0] = *&v115[0];
            Capsule.version.getter(&v102);
            sub_1ADE92284(v67, v66, v65, v64, v62);
            v68 = v63[2];
            v69 = v63[3];
            *(v63 + 1) = v102;
            sub_1ADE42CB8(v68, v69);
            v71 = type metadata accessor for CRSQLStoreBundleCapsule(0, v81, v80, v70);
            v72 = v63[5];
            v73 = swift_allocObject();
            v74 = v72;

            sub_1AE020CC8(v74, v63);
            *&v102 = v73;
            swift_beginAccess();
            v75 = v118[2];
            v76 = v118[3];
            v94 = xmmword_1AE2427C0;

            sub_1ADF9B34C(v75, v76, 0, &v94, v71, &off_1F23C3C18);

            *&v94 = MEMORY[0x1E69E7CC0];
            v77 = v63[7];

            sub_1ADE475A4(v77, &v94);
            sub_1ADDCC35C(v79, v82);

            return;
          }

          goto LABEL_26;
        }

LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_25;
  }
}

uint64_t objectdestroy_37Tm(void (*a1)(void))
{
  a1(*(v1 + 16));
  a1(*(v1 + 24));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t sub_1AE02BAE0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1ADE744B8;

  return sub_1AE01F7C4(a1, a2, v7, v6);
}

uint64_t sub_1AE02BB94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1ADE74240;

  return sub_1AE1A7FFC(a1, v4);
}

uint64_t objectdestroy_18Tm()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1AE02BD5C(unint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v93 = a2;
  v121 = *MEMORY[0x1E69E9840];
  v96 = sub_1AE23BFEC();
  v92 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = a1[12];
  v5 = a1[13];
  v7 = a1[10];
  v6 = a1[11];
  if (v4)
  {
    v8 = a1[10];
  }

  else
  {
    v8 = 0;
  }

  if (v4)
  {
    v9 = a1[11];
  }

  else
  {
    v9 = 0xC000000000000000;
  }

  if (v4)
  {
    v10 = a1[12];
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v98 = v10;
  sub_1ADE73C1C(v7, v6, v4, v5);
  sub_1ADE73C1C(v7, v6, v4, v5);
  sub_1ADDD86D8(v8, v9);
  sub_1ADDCC35C(v8, v9);

  v11 = v99;
  v12 = sub_1ADDE70B0(v8, v9);
  v99 = v11;
  if (v11)
  {
    sub_1ADE73B5C(v7, v6, v4);
    sub_1ADDCC35C(v8, v9);
    return;
  }

  v13 = v12;
  v91 = a1;
  sub_1ADDCC35C(v8, v9);
  v14 = v94;
  *(v94 + 16) = v13;

  v15 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v16 = v7;
  }

  else
  {
    v16 = 0;
  }

  if (!v4)
  {
    v6 = 0xC000000000000000;
    v4 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADDCC35C(v16, v6);

  *(v14 + 32) = v4;

  v17 = v91;
  v18 = *v91;
  v19 = 0xF000000000000007;
  v20 = v99;
  if ((~*v91 & 0xF000000000000007) == 0)
  {
    goto LABEL_18;
  }

  if (!(v18 >> 62))
  {

    v73 = sub_1AE02CA90(v18);
    if (!v20)
    {
      v90 = v73;
      sub_1ADE73AC8(v18);
      sub_1ADE73AC8(0xF000000000000007);
      goto LABEL_19;
    }

    goto LABEL_52;
  }

  if (v18 >> 62 != 1)
  {
    v75 = v18 & 0x3FFFFFFFFFFFFFFFLL;
    swift_beginAccess();
    v76 = v20;
    v77 = *((v18 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
    v78 = *((v18 & 0x3FFFFFFFFFFFFFFFLL) + 0x48);
    v79 = *((v18 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
    if (v77)
    {
      v15 = *((v18 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v80 = *((v18 & 0x3FFFFFFFFFFFFFFFLL) + 0x48);
    }

    else
    {
      v80 = 0;
    }

    v98 = v80;
    if (v77)
    {
      v81 = v79;
    }

    else
    {
      v81 = 0xC000000000000000;
    }

    sub_1ADE73AB0(v18);
    sub_1ADE73AB0(v18);
    sub_1ADE56F74(v77, v78, v79);
    sub_1AE02EA38(v15);
    if (!v76)
    {
      v99 = v84;
      v85 = v83;
      v86 = v82;

      sub_1ADDCC35C(v98, v81);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_Reference._StorageClass();
        swift_allocObject();
        v75 = sub_1ADDE4C34(v18 & 0x3FFFFFFFFFFFFFFFLL);
      }

      swift_beginAccess();
      v87 = *(v75 + 64);
      v88 = *(v75 + 72);
      v89 = *(v75 + 80);
      *(v75 + 64) = v86;
      *(v75 + 72) = v85;
      *(v75 + 80) = v99;
      sub_1ADE73D6C(v87, v88, v89);
      sub_1ADE73AC8(v18);
      sub_1ADE73AC8(0xF000000000000007);
      v90 = v75 | 0x8000000000000000;
      v20 = 0;
      v15 = MEMORY[0x1E69E7CC0];
      v14 = v94;
      v17 = v91;
      goto LABEL_19;
    }

    sub_1ADDCC35C(v98, v81);
    sub_1ADE73AC8(v18);
    sub_1ADE73AC8(v18);
    v110 = 0xF000000000000007;
    v111 = 0;
    v112 = 0;
    v113 = MEMORY[0x1E69E7CC0];
    v114 = MEMORY[0x1E69E7CC0];
    v115 = xmmword_1AE241910;
    v116 = MEMORY[0x1E69E7CC0];
    v74 = 0uLL;
    v117 = 0u;
    v118 = 0u;
LABEL_61:
    v119 = v74;
    v120 = v74;
    sub_1ADE6AF00(&v110);
    return;
  }

  v43 = sub_1AE02D2AC(v18 & 0x3FFFFFFFFFFFFFFFLL);
  if (v20)
  {
LABEL_52:
    sub_1ADE73AC8(v18);
    v110 = 0xF000000000000007;
    v111 = 0;
    v112 = 0;
    v113 = v15;
    v115 = xmmword_1AE241910;
    v114 = v15;
    v116 = v15;
    v74 = 0uLL;
    v117 = 0u;
    v118 = 0u;
    goto LABEL_61;
  }

  v44 = v43;
  sub_1ADE73AC8(v18);
  sub_1ADE73AC8(0xF000000000000007);
  v19 = v44 | 0x4000000000000000;
LABEL_18:
  v90 = v19;
LABEL_19:
  v21 = v17[3];
  v22 = *(v21 + 16);
  if (v22)
  {
    v99 = v20;
    *&v101 = v15;
    sub_1AE23DB1C();
    v23 = (v21 + 32);
    do
    {
      v97 = v23;
      v98 = v22;
      v27 = *v23;
      swift_beginAccess();
      v29 = v27[8];
      v28 = v27[9];
      v30 = v27[10];
      if (v29)
      {
        v31 = v27[8];
      }

      else
      {
        v31 = v15;
      }

      if (v29)
      {
        v32 = v27[9];
      }

      else
      {
        v32 = 0;
      }

      if (v29)
      {
        v33 = v27[10];
      }

      else
      {
        v33 = 0xC000000000000000;
      }

      swift_retain_n();
      sub_1ADE56F74(v29, v28, v30);
      v34 = v99;
      sub_1AE02EA38(v31);
      v99 = v34;
      if (v34)
      {

        sub_1ADDCC35C(v32, v33);

        v110 = v90;
        v111 = 0;
        v112 = 0;
        v113 = MEMORY[0x1E69E7CC0];
        v114 = MEMORY[0x1E69E7CC0];
        v115 = xmmword_1AE241910;
        v116 = MEMORY[0x1E69E7CC0];
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        v120 = 0u;
        sub_1ADE6AF00(&v110);
        return;
      }

      v38 = v35;
      v39 = v36;
      v40 = v37;

      sub_1ADDCC35C(v32, v33);
      v41 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_Reference._StorageClass();
        swift_allocObject();

        v41 = sub_1ADDE4C34(v42);
      }

      swift_beginAccess();
      v24 = v41[8];
      v25 = v41[9];
      v26 = v41[10];
      v41[8] = v38;
      v41[9] = v39;
      v41[10] = v40;
      sub_1ADE73D6C(v24, v25, v26);
      sub_1AE23DAEC();
      sub_1AE23DB2C();
      sub_1AE23DB3C();
      sub_1AE23DAFC();
      v23 = v97 + 1;
      v22 = v98 - 1;
      v15 = MEMORY[0x1E69E7CC0];
      v14 = v94;
    }

    while (v98 != 1);

    v45 = v101;
    v20 = v99;
    v17 = v91;
  }

  else
  {
    v45 = MEMORY[0x1E69E7CC0];
  }

  v46 = v17[8];
  v47 = v93;
  if (v46)
  {
    v48 = v17[9];

    v98 = v48;

    sub_1ADE42CB8(0, 0);
  }

  else
  {
    v98 = 0;
  }

  v49 = *(*(v14 + 16) + 16);
  if (v49 >> 59)
  {
    __break(1u);
  }

  v91 = v46;
  v97 = v45;
  v51 = sub_1ADDF6E48(16 * v49);
  v108 = v51;
  v109 = v50;
  v52 = *(v14 + 16);
  v53 = *(v52 + 16);
  if (v53)
  {
    v99 = v20;
    v54 = *(v92 + 16);
    v55 = v52 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
    v56 = *(v92 + 72);
    v57 = (v92 + 8);
    v92 = v52;

    v59 = v95;
    v58 = v96;
    do
    {
      v54(v59, v55, v58);
      v110 = sub_1AE23BFCC();
      LOWORD(v111) = v60;
      BYTE2(v111) = v61;
      BYTE3(v111) = v62;
      BYTE4(v111) = v63;
      BYTE5(v111) = v64;
      BYTE6(v111) = v65;
      HIBYTE(v111) = v66;
      sub_1AE23BFCC();
      sub_1AE23BBCC();
      swift_allocObject();
      sub_1AE23BB6C();
      sub_1AE23BEEC();
      v59 = v95;
      v58 = v96;

      (*v57)(v59, v58);
      v55 += v56;
      --v53;
    }

    while (v53);

    v51 = v108;
    v67 = v109;
    v47 = v93;
    v14 = v94;
    v15 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v67 = v50;
  }

  sub_1ADDD86D8(v51, v67);
  sub_1ADE73C1C(0, 0, 0, 0);
  sub_1ADDCC35C(0, 0xC000000000000000);
  sub_1ADE73B5C(0, 0, 0);
  v68 = *(v14 + 32);

  sub_1ADE73C1C(v51, v67, v15, v15);
  sub_1ADDCC35C(v51, v67);

  sub_1ADE73B5C(v51, v67, v15);
  v101 = v90;
  *&v102 = 0;
  *(&v102 + 1) = v97;
  *(v103 + 8) = xmmword_1AE241910;
  *&v103[0] = v15;
  *(&v103[1] + 1) = v15;
  *&v104 = v91;
  *(&v104 + 1) = v98;
  *&v105 = v51;
  *(&v105 + 1) = v67;
  *&v106 = v68;
  *(&v106 + 1) = v15;
  v107 = 0uLL;
  v110 = v90;
  v111 = 0;
  v112 = 0;
  v113 = v97;
  v115 = xmmword_1AE241910;
  v114 = v15;
  v116 = v15;
  *&v117 = v91;
  *(&v117 + 1) = v98;
  *&v118 = v51;
  *(&v118 + 1) = v67;
  *&v119 = v68;
  *(&v119 + 1) = v15;
  v120 = 0uLL;
  sub_1ADE73B00(&v101, &v100);
  sub_1ADE6AF00(&v110);
  v69 = v105;
  v47[4] = v104;
  v47[5] = v69;
  v70 = v107;
  v47[6] = v106;
  v47[7] = v70;
  v71 = v102;
  *v47 = v101;
  v47[1] = v71;
  v72 = v103[1];
  v47[2] = v103[0];
  v47[3] = v72;
}

double sub_1AE02C6F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  if (v3)
  {
    v7 = *(a1 + 56);
  }

  else
  {
    v7 = 0;
  }

  if (v3)
  {
    v8 = *(a1 + 64);
  }

  else
  {
    v8 = 0xC000000000000000;
  }

  sub_1ADE73C1C(*(a1 + 56), v5, v3, v4);
  sub_1ADE73C1C(v6, v5, v3, v4);
  sub_1ADDD86D8(v7, v8);
  sub_1ADDCC35C(v7, v8);

  v9 = sub_1ADDE70B0(v7, v8);
  if (v56)
  {
    sub_1ADE73B5C(v6, v5, v3);
    sub_1ADDCC35C(v7, v8);
  }

  else
  {
    v56 = 0;
    v11 = v9;
    sub_1ADDCC35C(v7, v8);
    *(v40 + 16) = v11;

    v12 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      v13 = v6;
    }

    else
    {
      v13 = 0;
    }

    if (v3)
    {
      v14 = v5;
    }

    else
    {
      v14 = 0xC000000000000000;
    }

    if (v3)
    {
      v15 = v3;
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADDCC35C(v13, v14);

    *(v40 + 32) = v15;

    v55[0] = *a1;
    v16 = v55[0];
    v17 = *(a1 + 24);
    v18 = *(a1 + 56);
    v52 = *(a1 + 40);
    v53 = v18;
    v54 = *(a1 + 72);
    v50 = *(a1 + 8);
    v51 = v17;
    v19 = *(v55[0] + 16);
    if (v19)
    {
      sub_1ADE73CBC(a1, &v44);
      *v43 = v12;
      sub_1ADE6F2C4(0, v19, 0);
      v20 = v12;
      v38 = v16;
      v21 = (v16 + 48);
      while (1)
      {
        v41 = v19;
        v22 = *(v21 - 2);
        v23 = *(v21 - 1);
        v24 = *v21;

        sub_1ADDD86D8(v23, v24);
        v25 = v56;
        sub_1AE02EA38(v22);
        v56 = v25;
        if (v25)
        {
          break;
        }

        v29 = v26;
        v30 = v27;
        v31 = v28;

        sub_1ADDCC35C(v23, v24);
        *v43 = v20;
        v33 = *(v20 + 16);
        v32 = *(v20 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1ADE6F2C4((v32 > 1), v33 + 1, 1);
          v20 = *v43;
        }

        v21 += 3;
        *(v20 + 16) = v33 + 1;
        v34 = (v20 + 24 * v33);
        v34[4] = v29;
        v34[5] = v30;
        v34[6] = v31;
        v19 = v41 - 1;
        if (v41 == 1)
        {
          sub_1ADDCEDE0(v55, &qword_1EB5BCCD0, &qword_1AE251C08);
          goto LABEL_27;
        }
      }

      sub_1ADDCC35C(v23, v24);

      v44 = v38;
      v47 = v52;
      v48 = v53;
      v49 = v54;
      v45 = v50;
      v46 = v51;
      sub_1ADE73C68(&v44);
    }

    else
    {
      sub_1ADE73CBC(a1, &v44);
      sub_1ADDCEDE0(v55, &qword_1EB5BCCD0, &qword_1AE251C08);
      v20 = MEMORY[0x1E69E7CC0];
LABEL_27:
      *v43 = v20;
      *&v43[24] = v51;
      *&v43[40] = v52;
      *&v43[56] = v53;
      *&v43[72] = v54;
      *&v43[8] = v50;
      v44 = v20;
      v48 = v53;
      v49 = v54;
      v46 = v51;
      v47 = v52;
      v45 = v50;
      sub_1ADE73CBC(v43, v42);
      sub_1ADE73C68(&v44);
      v35 = *&v43[48];
      v36 = *&v43[64];
      *(a2 + 32) = *&v43[32];
      *(a2 + 48) = v35;
      *(a2 + 64) = v36;
      *(a2 + 80) = *&v43[80];
      result = *v43;
      v37 = *&v43[16];
      *a2 = *v43;
      *(a2 + 16) = v37;
    }
  }

  return result;
}

uint64_t sub_1AE02CA90(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((~v2 & 0xF000000000000007) != 0)
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    inited = swift_initStaticObject();
    v4 = v2 >> 60;
    if ((v2 >> 60) <= 4)
    {
      if (v4 <= 1)
      {
        if (v4)
        {
          v60 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v92[1] = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v92[2] = v60;
          v61 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
          v92[3] = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v92[4] = v61;
          v92[0] = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          sub_1ADE5215C(v2);
          sub_1ADFAEE10(v92, &v81);
          sub_1AE02DEDC(v92, v88);
          sub_1ADFAECE8(v92);
          if (!v1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v62 = swift_allocObject();
              v63 = *(inited + 16);
              *(v62 + 16) = v63;
              sub_1ADE5215C(v63);

              inited = v62;
            }

            v64 = swift_allocObject();
            v65 = v88[3];
            *(v64 + 48) = v88[2];
            *(v64 + 64) = v65;
            *(v64 + 80) = v88[4];
            v66 = v88[1];
            *(v64 + 16) = v88[0];
            *(v64 + 32) = v66;
            v17 = v64 | 0x1000000000000000;
            goto LABEL_51;
          }
        }

        else
        {
          sub_1ADE5215C(v2);

          v25 = sub_1AE02DD40(v24);

          if (!v1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = swift_allocObject();
              v27 = *(inited + 16);
              *(v26 + 16) = v27;
              sub_1ADE5215C(v27);

              inited = v26;
            }

            v28 = swift_allocObject();
            *(v28 + 16) = v25;
            v29 = *(inited + 16);
            *(inited + 16) = v28;
            v30 = v29;
            goto LABEL_52;
          }
        }
      }

      else if (v4 == 2)
      {
        v33 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v93[1] = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v93[2] = v33;
        v34 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v93[3] = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v93[4] = v34;
        v93[0] = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1ADE5215C(v2);
        sub_1ADFAEE10(v93, &v81);
        sub_1AE02DEDC(v93, v89);
        sub_1ADFAECE8(v93);
        if (!v1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = swift_allocObject();
            v36 = *(inited + 16);
            *(v35 + 16) = v36;
            sub_1ADE5215C(v36);

            inited = v35;
          }

          v37 = swift_allocObject();
          v38 = v89[3];
          *(v37 + 48) = v89[2];
          *(v37 + 64) = v38;
          *(v37 + 80) = v89[4];
          v39 = v89[1];
          *(v37 + 16) = v89[0];
          *(v37 + 32) = v39;
          v17 = v37 | 0x2000000000000000;
          goto LABEL_51;
        }
      }

      else
      {
        if (v4 != 3)
        {
          v48 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
          v84 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          v85 = v48;
          v86 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
          v87 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
          v49 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v81 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v82 = v49;
          v83 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          sub_1ADE5215C(v2);
          sub_1ADE51B64(&v81, &v80);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = swift_allocObject();
            v51 = *(inited + 16);
            *(v50 + 16) = v51;
            sub_1ADE5215C(v51);

            inited = v50;
          }

          v52 = swift_allocObject();
          v53 = v86;
          *(v52 + 80) = v85;
          *(v52 + 96) = v53;
          *(v52 + 112) = v87;
          v54 = v82;
          *(v52 + 16) = v81;
          *(v52 + 32) = v54;
          v55 = v84;
          *(v52 + 48) = v83;
          *(v52 + 64) = v55;
          v17 = v52 | 0x4000000000000000;
          goto LABEL_51;
        }

        v5 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v6 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v7 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        sub_1ADE5215C(v2);

        v96 = sub_1AE02E2D4(v5, v6, v7);
        v9 = v8;
        v11 = v10;

        if (!v1)
        {
          v12 = v11;
          v13 = v96;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = swift_allocObject();
            v15 = *(inited + 16);
            *(v14 + 16) = v15;
            sub_1ADE5215C(v15);

            inited = v14;
          }

          v16 = swift_allocObject();
          *(v16 + 16) = v13;
          *(v16 + 24) = v9;
          *(v16 + 32) = v12;
          v17 = v16 | 0x3000000000000000;
LABEL_51:
          v30 = *(inited + 16);
          *(inited + 16) = v17;
LABEL_52:
          sub_1ADE52174(v30);
          sub_1ADE52174(v2);
          return inited;
        }
      }

LABEL_44:
      sub_1ADE52174(v2);
      return inited;
    }

    if (v4 <= 6)
    {
      if (v4 == 5)
      {
        v31 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v94[3] = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v94[4] = v31;
        v94[5] = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        v95 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
        v32 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v94[0] = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v94[1] = v32;
        v94[2] = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        sub_1ADE5215C(v2);
        sub_1ADE51B64(v94, &v81);
        sub_1AE02E3EC(v94, v90);
        if (!v1)
        {
          sub_1AE030800(v94);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v69 = swift_allocObject();
            v70 = *(inited + 16);
            *(v69 + 16) = v70;
            sub_1ADE5215C(v70);

            inited = v69;
          }

          v71 = swift_allocObject();
          v72 = v90[5];
          *(v71 + 80) = v90[4];
          *(v71 + 96) = v72;
          *(v71 + 112) = v91;
          v73 = v90[1];
          *(v71 + 16) = v90[0];
          *(v71 + 32) = v73;
          v74 = v90[3];
          *(v71 + 48) = v90[2];
          *(v71 + 64) = v74;
          v17 = v71 | 0x5000000000000000;
          goto LABEL_51;
        }

        sub_1AE030800(v94);
        goto LABEL_44;
      }

      sub_1ADE5215C(v2);

      v68 = sub_1AE02E614(v67);
      if (!v1)
      {
        v75 = v68;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = swift_allocObject();
          v77 = *(inited + 16);
          *(v76 + 16) = v77;
          sub_1ADE5215C(v77);

          inited = v76;
        }

        v78 = swift_allocObject();
        *(v78 + 16) = v75;
        v17 = v78 | 0x6000000000000000;
        goto LABEL_51;
      }
    }

    else
    {
      if (v4 == 7)
      {
        v41 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v40 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v42 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v43 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v44 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        sub_1ADE5215C(v2);
        sub_1ADE42C78(v40, v42);
        sub_1ADE42C78(v43, v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = swift_allocObject();
          v46 = *(inited + 16);
          *(v45 + 16) = v46;
          sub_1ADE5215C(v46);

          inited = v45;
        }

        v47 = swift_allocObject();
        *(v47 + 16) = v41;
        *(v47 + 24) = v40;
        *(v47 + 32) = v42;
        *(v47 + 40) = v43;
        *(v47 + 48) = v44;
        v17 = v47 | 0x7000000000000000;
        goto LABEL_51;
      }

      if (v4 != 8)
      {
        v56 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1ADE5215C(v2);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = swift_allocObject();
          v58 = *(inited + 16);
          *(v57 + 16) = v58;
          sub_1ADE5215C(v58);

          inited = v57;
        }

        v59 = swift_allocObject();
        *(v59 + 16) = v56;
        v17 = v59 | 0x9000000000000000;
        goto LABEL_51;
      }

      sub_1ADE5215C(v2);

      v19 = sub_1AE02E614(v18);
      if (!v1)
      {
        v20 = v19;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = swift_allocObject();
          v22 = *(inited + 16);
          *(v21 + 16) = v22;
          sub_1ADE5215C(v22);

          inited = v21;
        }

        v23 = swift_allocObject();
        *(v23 + 16) = v20;
        v17 = v23 | 0x8000000000000000;
        goto LABEL_51;
      }
    }

    goto LABEL_44;
  }

  result = sub_1AE23DC5C();
  __break(1u);
  return result;
}

uint64_t sub_1AE02D2AC(unint64_t a1)
{
  v2 = *(a1 + 16);
  if ((~v2 & 0xF000000000000007) != 0)
  {
    v3 = a1;
    switch((v2 >> 59) & 0x1E | (v2 >> 2) & 1)
    {
      case 7uLL:
        v16 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        swift_beginAccess();
        v17 = v16[8];
        v18 = v16[9];
        v19 = v16[10];
        if (v17)
        {
          v20 = v16[8];
        }

        else
        {
          v20 = MEMORY[0x1E69E7CC0];
        }

        if (v17)
        {
          v21 = v16[9];
        }

        else
        {
          v21 = 0;
        }

        v22 = 0xC000000000000000;
        if (v17)
        {
          v22 = v16[10];
        }

        v79 = v22;
        v82 = v21;

        sub_1ADE51B2C(v2);

        sub_1ADE56F74(v17, v18, v19);
        sub_1AE02EA38(v20);
        v24 = v23;
        v26 = v25;
        v28 = v27;

        sub_1ADDCC35C(v82, v79);
        if (v1)
        {

          goto LABEL_32;
        }

        v55 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_Reference._StorageClass();
          swift_allocObject();
          v55 = sub_1ADDE4C34(v16);
        }

        swift_beginAccess();
        v56 = v55[8];
        v57 = v55[9];
        v58 = v55[10];
        v55[8] = v24;
        v55[9] = v26;
        v55[10] = v28;
        sub_1ADE73D6C(v56, v57, v58);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_Value._StorageClass();
          v59 = swift_allocObject();
          v60 = *(v3 + 16);
          *(v59 + 16) = v60;
          sub_1ADE51B2C(v60);

          v3 = v59;
        }

        v61 = swift_allocObject();
        *(v61 + 16) = v55;
        v62 = v61 | 0x3000000000000004;
        goto LABEL_76;
      case 8uLL:
        v29 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        swift_beginAccess();
        if (!*(v29 + 16))
        {
          goto LABEL_3;
        }

        sub_1ADE51B2C(v2);

        v31 = sub_1AE02D2AC(v30);
        if (v1)
        {

LABEL_32:
          sub_1ADE51B48(v2);
        }

        else
        {
          v83 = v31;

          v70 = v3;
          v71 = *(v3 + 16);
          if ((~v71 & 0xF000000000000007) != 0 && ((v71 >> 59) & 0x1E | (v71 >> 2) & 1) == 8)
          {

            inited = *((v71 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_Optional._StorageClass();
            inited = swift_initStaticObject();
          }

          v3 = v70;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_Optional._StorageClass();
            v73 = swift_allocObject();
            *(v73 + 16) = 0;
            swift_beginAccess();
            v74 = *(inited + 16);
            swift_beginAccess();
            *(v73 + 16) = v74;

            inited = v73;
          }

          swift_beginAccess();
          *(inited + 16) = v83;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_Value._StorageClass();
            v75 = swift_allocObject();
            v76 = *(v3 + 16);
            *(v75 + 16) = v76;
            sub_1ADE51B2C(v76);

            v3 = v75;
          }

          v77 = swift_allocObject();
          *(v77 + 16) = inited;
          v62 = v77 | 0x4000000000000000;
LABEL_76:
          v78 = *(v3 + 16);
          *(v3 + 16) = v62;
          sub_1ADE51B48(v78);
          sub_1ADE51B48(v2);
        }

        return v3;
      case 0xAuLL:
        v9 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v10 = *(v9 + 16);
        if (!v10)
        {

          sub_1ADE51B2C(v2);
          v13 = v3;
          v12 = MEMORY[0x1E69E7CC0];
          goto LABEL_46;
        }

        v85 = MEMORY[0x1E69E7CC0];

        sub_1ADE51B2C(v2);

        sub_1AE23DB1C();
        v3 = 0;
        while (1)
        {
          if (v3 >= *(v9 + 16))
          {
            goto LABEL_78;
          }

          sub_1AE02D2AC(v11);
          if (v1)
          {
            break;
          }

          ++v3;

          sub_1AE23DAEC();
          sub_1AE23DB2C();
          sub_1AE23DB3C();
          sub_1AE23DAFC();
          if (v10 == v3)
          {

            v12 = v85;
            v13 = a1;
LABEL_46:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_Value._StorageClass();
              v46 = swift_allocObject();
              v47 = *(v13 + 16);
              *(v46 + 16) = v47;
              sub_1ADE51B2C(v47);

              v13 = v46;
            }

            v48 = swift_allocObject();
            *(v48 + 16) = v12;
            v49 = v48 | 0x5000000000000000;
            v50 = *(v13 + 16);
            *(v13 + 16) = v49;
            sub_1ADE51B48(v50);
            sub_1ADE51B48(v2);
            return v13;
          }
        }

LABEL_36:

        sub_1ADE51B48(v2);

        return v3;
      case 0xBuLL:
        v14 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        swift_beginAccess();
        if (*(v14 + 24))
        {
          v15 = *(v14 + 24);
        }

        else
        {
          type metadata accessor for Proto_Value._StorageClass();
          v15 = swift_initStaticObject();
        }

        sub_1ADE51B2C(v2);

        v51 = sub_1AE02D2AC(v15);
        if (v1)
        {

          sub_1ADE51B48(v2);
        }

        else
        {
          v52 = v51;

          v53 = *(v3 + 16);
          if ((~v53 & 0xF000000000000007) != 0 && ((v53 >> 59) & 0x1E | (v53 >> 2) & 1) == 0xB)
          {
            v54 = *((v53 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v54 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();

            v64 = sub_1ADDE5178(v63);

            v54 = v64;
          }

          swift_beginAccess();
          *(v54 + 24) = v52;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_Value._StorageClass();
            v65 = swift_allocObject();
            v66 = *(v3 + 16);
            *(v65 + 16) = v66;
            sub_1ADE51B2C(v66);

            v3 = v65;
          }

          v67 = swift_allocObject();
          *(v67 + 16) = v54;
          v68 = v67 | 0x5000000000000004;
          v69 = *(v3 + 16);
          *(v3 + 16) = v68;
          sub_1ADE51B48(v69);
          sub_1ADE51B48(v2);
        }

        return v3;
      case 0xDuLL:
        v5 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v6 = *(v5 + 16);
        if (!v6)
        {

          sub_1ADE51B2C(v2);
          v8 = MEMORY[0x1E69E7CC0];
          goto LABEL_38;
        }

        v84 = MEMORY[0x1E69E7CC0];

        sub_1ADE51B2C(v2);

        sub_1AE23DB1C();
        v3 = 0;
        break;
      case 0xEuLL:
        v32 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        sub_1ADE51B2C(v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_Value._StorageClass();
          v33 = swift_allocObject();
          v34 = *(v3 + 16);
          *(v33 + 16) = v34;
          sub_1ADE51B2C(v34);

          v3 = v33;
        }

        v35 = swift_allocObject();
        *(v35 + 16) = v32;
        v36 = v35 | 4;
        v37 = *(v3 + 16);
        *(v3 + 16) = v36;
        sub_1ADE51B48(v37);
        sub_1ADE51B48(v2);
        return v3;
      default:
LABEL_3:

        return v3;
    }

    while (v3 < *(v5 + 16))
    {

      sub_1AE02D2AC(v7);
      if (v1)
      {
        goto LABEL_36;
      }

      ++v3;

      sub_1AE23DAEC();
      sub_1AE23DB2C();
      sub_1AE23DB3C();
      sub_1AE23DAFC();
      if (v6 == v3)
      {

        v8 = v84;
        v3 = a1;
LABEL_38:
        v38 = *(v3 + 16);
        if ((~v38 & 0xF000000000000007) != 0 && ((v38 >> 59) & 0x1E | (v38 >> 2) & 1) == 0xD)
        {
          v39 = *((v38 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_44;
          }

LABEL_43:
          type metadata accessor for Proto_Value._StorageClass();
          v41 = swift_allocObject();
          v42 = *(v3 + 16);
          *(v41 + 16) = v42;
          sub_1ADE51B2C(v42);

          v3 = v41;
        }

        else
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39 = MEMORY[0x1E69E7CC0];
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            goto LABEL_43;
          }
        }

LABEL_44:
        v43 = swift_allocObject();
        *(v43 + 16) = v39;
        *(v43 + 24) = v8;
        v44 = v43 | 0x6000000000000004;
        v45 = *(v3 + 16);
        *(v3 + 16) = v44;
        sub_1ADE51B48(v45);
        sub_1ADE51B48(v2);
        return v3;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
  }

  result = sub_1AE23DC5C();
  __break(1u);
  return result;
}

uint64_t sub_1AE02DD40(uint64_t a1)
{
  type metadata accessor for Proto_Register._StorageClass();
  inited = swift_initStaticObject();
  swift_beginAccess();
  if (*(a1 + 32))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if (*(a1 + 32))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 24);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    swift_allocObject();
    inited = sub_1ADDE8D20(inited);
  }

  swift_beginAccess();
  *(inited + 16) = v4;
  *(inited + 24) = v5;
  *(inited + 32) = 0;
  swift_beginAccess();
  if (*(a1 + 40))
  {
    v6 = *(a1 + 40);
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v6 = swift_initStaticObject();
  }

  v7 = sub_1AE02D2AC(v6);

  if (v1)
  {
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      inited = sub_1ADDE8D20(inited);
    }

    swift_beginAccess();
    *(inited + 40) = v7;
  }

  return inited;
}

uint64_t sub_1AE02DEDC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v4 = a2;
  v5 = *a1;
  v6 = a1[1];
  v56 = v6;
  v7 = *(a1 + 2);
  v52 = *(a1 + 1);
  v53 = v7;
  v8 = *(a1 + 4);
  v54 = *(a1 + 3);
  v55 = v8;
  v9 = *(v6 + 16);
  if (!v9)
  {
    sub_1ADFAEE10(a1, &v46);
    sub_1ADDCEDE0(&v56, qword_1EB5BBB90, &unk_1AE24EC40);
    v29 = MEMORY[0x1E69E7CC0];
LABEL_15:
    *&v41 = v5;
    *(&v41 + 1) = v29;
    v42 = v52;
    v43 = v53;
    v44 = v54;
    v45 = v55;
    v46 = v5;
    v47 = v29;
    v48 = v52;
    v49 = v53;
    v50 = v54;
    v51 = v55;
    sub_1ADFAEE10(&v41, v40);
    result = sub_1ADFAECE8(&v46);
    v31 = v44;
    v4[2] = v43;
    v4[3] = v31;
    v4[4] = v45;
    v32 = v42;
    *v4 = v41;
    v4[1] = v32;
    return result;
  }

  v36 = v5;
  sub_1ADFAEE10(a1, &v46);
  *&v41 = MEMORY[0x1E69E7CC0];
  sub_1ADE6F03C(0, v9, 0);
  v10 = v41;
  v35 = v6;
  v11 = (v6 + 64);
  while (1)
  {
    v39 = v10;
    v12 = *(v11 - 3);
    v13 = *(v11 - 2);
    v14 = *(v11 - 1);
    v15 = *v11;
    if (*(v11 - 4))
    {

      sub_1ADE42C78(v13, v14);

      sub_1ADE42C78(v13, v14);

      v17 = sub_1AE02D2AC(v16);
      if (v3)
      {

        sub_1ADE42CB8(v13, v14);

        v33 = v36;
        goto LABEL_18;
      }

      v38 = v17;

      v37 = v9;
      if (!v12)
      {
LABEL_9:
        v23 = v3;

        v19 = v13;
        v20 = v14;
        sub_1ADE42CB8(v13, v14);

        v24 = 0;
        goto LABEL_10;
      }
    }

    else
    {

      sub_1ADE42C78(v13, v14);

      sub_1ADE42C78(v13, v14);

      v38 = 0;
      v37 = v9;
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    v18 = v3;
    v19 = v13;
    v20 = v14;

    v22 = sub_1AE02CA90(v21);
    v23 = v18;
    if (v18)
    {
      break;
    }

    v24 = v22;

    sub_1ADE42CB8(v19, v14);

LABEL_10:
    v10 = v39;
    *&v41 = v39;
    v26 = *(v39 + 16);
    v25 = *(v39 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1ADE6F03C((v25 > 1), v26 + 1, 1);
      v10 = v41;
    }

    v11 += 5;
    *(v10 + 16) = v26 + 1;
    v27 = (v10 + 40 * v26);
    v27[4] = v38;
    v27[5] = v24;
    v27[6] = v19;
    v27[7] = v20;
    v27[8] = v15;
    v9 = v37 - 1;
    v3 = v23;
    if (v37 == 1)
    {
      v28 = v10;
      sub_1ADDCEDE0(&v56, qword_1EB5BBB90, &unk_1AE24EC40);
      v29 = v28;
      v5 = v36;
      v4 = a2;
      goto LABEL_15;
    }
  }

  sub_1ADE42CB8(v13, v14);

  v33 = v36;
LABEL_18:

  sub_1ADE42CB8(v13, v14);

  v46 = v33;
  v47 = v35;
  v48 = v52;
  v49 = v53;
  v50 = v54;
  v51 = v55;
  return sub_1ADFAECE8(&v46);
}

uint64_t sub_1AE02E2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    sub_1AE23DB1C();
    v7 = a2 + 32;
    while (1)
    {

      sub_1AE02CA90(v8);
      if (v3)
      {
        break;
      }

      sub_1AE23DAEC();
      sub_1AE23DB2C();
      sub_1AE23DB3C();
      sub_1AE23DAFC();
      v7 += 8;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
  }

  return a1;
}

uint64_t sub_1AE02E3EC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 2);
  v32[0] = v4;
  v5 = *a1;
  v6 = *(a1 + 40);
  v7 = *(a1 + 72);
  v28 = *(a1 + 56);
  v29 = v7;
  v30 = *(a1 + 88);
  v31 = v5;
  v26 = *(a1 + 24);
  v27 = v6;
  v8 = *(v4 + 16);
  if (v8)
  {
    v33 = a2;
    *&v17 = MEMORY[0x1E69E7CC0];
    sub_1ADE51B64(a1, &v19);
    sub_1AE23DB1C();
    v9 = 32;
    while (1)
    {

      sub_1AE02D2AC(v10);
      if (v2)
      {
        break;
      }

      sub_1AE23DAEC();
      sub_1AE23DB2C();
      sub_1AE23DB3C();
      sub_1AE23DAFC();
      v9 += 8;
      if (!--v8)
      {
        sub_1ADDCEDE0(v32, &qword_1EB5BCCC8, &qword_1AE251C00);
        v11 = v17;
        v3 = v33;
        goto LABEL_7;
      }
    }

    v19 = v31;
    v20 = v4;
    v22 = v27;
    v23 = v28;
    v24 = v29;
    v25 = v30;
    v21 = v26;
    return sub_1AE030800(&v19);
  }

  else
  {
    sub_1ADE51B64(a1, &v19);
    sub_1ADDCEDE0(v32, &qword_1EB5BCCC8, &qword_1AE251C00);
    v11 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v17 = v31;
    *v18 = v11;
    *&v18[24] = v27;
    *&v18[40] = v28;
    *&v18[56] = v29;
    *&v18[72] = v30;
    *&v18[8] = v26;
    v19 = v31;
    v20 = v11;
    v23 = v28;
    v22 = v27;
    v24 = v29;
    v21 = v26;
    v25 = v30;
    sub_1ADE51B64(&v17, v16);
    result = sub_1AE030800(&v19);
    v13 = *&v18[64];
    *(v3 + 64) = *&v18[48];
    *(v3 + 80) = v13;
    *(v3 + 96) = *&v18[80];
    v14 = *v18;
    *v3 = v17;
    *(v3 + 16) = v14;
    v15 = *&v18[32];
    *(v3 + 32) = *&v18[16];
    *(v3 + 48) = v15;
  }

  return result;
}

uint64_t sub_1AE02E614(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 32);
  v64 = *(a1 + 16);
  *v65 = v3;
  v4 = *(a1 + 64);
  *&v65[16] = *(a1 + 48);
  *&v65[32] = v4;
  v66 = *(a1 + 80);
  v5 = *(&v64 + 1);
  v6 = MEMORY[0x1E69E7CC0];
  if (*(&v64 + 1))
  {
    v7 = v64;
    v8 = *v65;
    v9 = *&v65[8];
    v10 = *&v65[24];
    v11 = v66;
    v12 = v65[40];
  }

  else
  {
    v7 = 0;
    v11 = 0uLL;
    v12 = 1;
    v5 = MEMORY[0x1E69E7CC0];
    v8 = MEMORY[0x1E69E7CC0];
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *&v55 = v7;
  *(&v55 + 1) = v5;
  *v56 = v8;
  *&v56[8] = v9;
  *&v56[24] = v10;
  v56[40] = v12 & 1;
  v57 = v11;
  v63[0] = v55;
  v63[1] = *v56;
  v63[2] = *&v56[16];
  v63[3] = *&v56[32];
  v63[4] = v11;

  sub_1ADDCEE40(&v64, &v52, &qword_1EB5BCC30, &qword_1AE2580D0);
  sub_1AE02DEDC(v63, v58);
  sub_1ADFAECE8(&v55);
  if (v1)
  {
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();
      v13 = sub_1AE1D0514(a1);

      a1 = v13;
    }

    v48 = v58[2];
    v49 = v58[3];
    v50 = v58[4];
    v46 = v58[0];
    v47 = v58[1];
    swift_beginAccess();
    v14 = *(a1 + 32);
    v15 = *(a1 + 48);
    v16 = *(a1 + 80);
    v51[3] = *(a1 + 64);
    v51[4] = v16;
    v51[1] = v14;
    v51[2] = v15;
    v51[0] = *(a1 + 16);
    v17 = v50;
    *(a1 + 64) = v49;
    *(a1 + 80) = v17;
    v18 = v48;
    *(a1 + 32) = v47;
    *(a1 + 48) = v18;
    *(a1 + 16) = v46;
    sub_1ADDCEDE0(v51, &qword_1EB5BCC30, &qword_1AE2580D0);
    swift_beginAccess();
    v19 = *(a1 + 176);
    *&v54[32] = *(a1 + 160);
    *&v54[48] = v19;
    v20 = *(a1 + 96);
    v21 = *(a1 + 112);
    *&v54[64] = *(a1 + 192);
    v52 = v20;
    v53 = v21;
    v22 = *(a1 + 144);
    *v54 = *(a1 + 128);
    *&v54[16] = v22;
    v23 = *(&v52 + 1);
    if (*(&v52 + 1))
    {
      v24 = v53;
      v25 = v52;
      v6 = *v54;
      v26 = *&v54[8];
      v27 = *&v54[24];
      v28 = *&v54[40];
      v29 = *&v54[56];
    }

    else
    {
      v25 = 0;
      v24 = vdupq_n_s64(v6);
      v26 = 0uLL;
      v23 = 0xE000000000000000;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
    }

    *&v44[0] = v25;
    *(&v44[0] + 1) = v23;
    v44[1] = v24;
    *v45 = v6;
    *&v45[8] = v26;
    *&v45[24] = v27;
    *&v45[40] = v28;
    *&v45[56] = v29;
    v61[4] = *&v45[32];
    v61[5] = *&v45[48];
    v62 = *(&v29 + 1);
    v61[0] = v44[0];
    v61[1] = v24;
    v61[2] = *v45;
    v61[3] = *&v45[16];
    sub_1ADDCEE40(&v52, v42, &qword_1EB5BCC28, &unk_1AE251820);
    sub_1AE02E3EC(v61[0].i8, v59);
    sub_1AE030800(v44);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();
      v31 = sub_1AE1D0514(a1);

      a1 = v31;
    }

    v39 = v59[4];
    v40 = v59[5];
    v41 = v60;
    v35 = v59[0];
    v36 = v59[1];
    v37 = v59[2];
    v38 = v59[3];
    swift_beginAccess();
    v43 = *(a1 + 192);
    v32 = *(a1 + 176);
    v42[4] = *(a1 + 160);
    v42[5] = v32;
    v33 = *(a1 + 112);
    v42[0] = *(a1 + 96);
    v42[1] = v33;
    v34 = *(a1 + 144);
    v42[2] = *(a1 + 128);
    v42[3] = v34;
    *(a1 + 96) = v35;
    *(a1 + 112) = v36;
    *(a1 + 192) = v41;
    *(a1 + 160) = v39;
    *(a1 + 176) = v40;
    *(a1 + 128) = v37;
    *(a1 + 144) = v38;
    sub_1ADDCEDE0(v42, &qword_1EB5BCC28, &unk_1AE251820);
  }

  return a1;
}

void sub_1AE02EA38(uint64_t a1)
{
  v3 = sub_1AE23BFEC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AE23CD5C();
  v8 = *(v7 - 8);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != 1)
  {
    sub_1ADE42E40(v9, v10, v11);
    swift_allocError();
    *v17 = 0xD000000000000021;
    *(v17 + 8) = 0x80000001AE262320;
    *(v17 + 16) = 0;
    swift_willThrow();
    return;
  }

  v15 = *(*(a1 + 32) + 16);
  if ((~v15 & 0xF000000000000007) == 0)
  {
LABEL_3:
    sub_1ADE42E40(v9, v10, v11);
    swift_allocError();
    *v16 = 0xD00000000000001BLL;
    *(v16 + 8) = 0x80000001AE262350;
    *(v16 + 16) = 0;
    swift_willThrow();

    sub_1ADDCC35C(0, 0xC000000000000000);
    return;
  }

  v18 = (v15 >> 59) & 0x1E | (v15 >> 2) & 1;
  if (v18 == 5)
  {
    v28 = *((v15 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    if ((v28 & 0x8000000000000000) == 0)
    {
      v29 = *(v1 + 16);
      if (v28 < *(v29 + 16))
      {
        (*(v4 + 16))(v6, v29 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28, v3, v12);
        sub_1ADE51B2C(v15);
        v36 = sub_1ADDCC6B4(&unk_1F23BBB90);
        v37 = v30;
        v31 = sub_1ADDD8E0C(v36);
        v33 = v32;
        sub_1AE23BEEC();
        sub_1ADDCC35C(v31, v33);
        (*(v4 + 8))(v6, v3);
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v18 == 3)
  {
    v25 = *((v15 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v26 = *((v15 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    sub_1ADE51B2C(v15);
    sub_1ADDD86D8(v25, v26);
    v36 = sub_1ADDCC6B4(&unk_1F23BBBB8);
    v37 = v27;
    sub_1AE23BEEC();
    sub_1ADDCC35C(v25, v26);
    goto LABEL_16;
  }

  if (v18 != 2)
  {
    goto LABEL_3;
  }

  v19 = *((v15 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  if (v19 >= *(*(v1 + 32) + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = v9;

  sub_1ADE51B2C(v15);
  v36 = sub_1ADDCC6B4(&unk_1F23BBB68);
  v37 = v21;
  sub_1AE23CD4C();
  v22 = sub_1AE23CD1C();
  v24 = v23;
  (*(v8 + 8))(v14, v20);
  if (v24 >> 60 != 15)
  {

    sub_1AE23BEEC();
    sub_1ADDE1588(v22, v24);
LABEL_16:
    v34 = v36;
    v35 = v37;
    sub_1ADDCC35C(0, 0xC000000000000000);
    sub_1ADE51B48(v15);

    sub_1ADDD86D8(v34, v35);

    sub_1ADDCC35C(v34, v35);
    return;
  }

LABEL_21:
  __break(1u);
}

void sub_1AE02EE88(uint64_t a1, char *a2)
{
  v5 = sub_1AE23C34C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AE23CD5C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1ADDD1E30(0xD00000000000001FLL, 0x80000001AE25F2B0);
  v206 = v2;
  if (v2)
  {
    return;
  }

  v13 = v12;
  v132 = v7;
  if (sqlite3_step(v12) == 100)
  {
    v14 = sqlite3_column_int(v13, 0);
  }

  else
  {
    v14 = 0;
  }

  sqlite3_finalize(v13);
  v196 = sub_1ADE55498(0, v14 & ~(v14 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v15 = v206;
  sub_1ADE44EB4(a1, &v196);
  v206 = v15;
  sub_1AE23CD4C();
  v142 = sub_1AE23CD1C();
  v17 = v16;
  (*(v9 + 8))(v11, v8);
  v143 = v17;
  if (v17 >> 60 == 15)
  {
LABEL_84:
    __break(1u);
    return;
  }

  v18 = v196;
  v19 = *(v196 + 2);
  if (!v19)
  {
LABEL_73:
    v121 = v206;
    sub_1ADE43570(1, 0x10000);
    sub_1ADDE1588(v142, v143);

    v206 = v121;
    return;
  }

  v135 = a2;
  v131 = OBJC_IVAR___CRContext_assetManager;
  swift_beginAccess();
  if (!*(v18 + 2))
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v20 = 0;
  v21 = (v18 + 40);
  v130 = v19 - 1;
  v147 = a1;
  v149 = v18;
  while (1)
  {
    v22 = *(v21 - 1);
    v23 = *v21;
    v139 = v21;
    sub_1ADDD86D8(v22, v23);
    v156 = v22;
    v24 = sub_1ADDD6F8C(v22, v23, v142, v143);
    v151 = v23;
    if (v24)
    {
      v25 = sub_1ADDCC6B4(&unk_1F23BBBE0);
      v144 = v26;
    }

    else
    {
      type metadata accessor for UpgradeKeyPaths();
      v27 = swift_allocObject();
      v28 = MEMORY[0x1E69E7CC0];
      v27[2] = MEMORY[0x1E69E7CC0];
      v29 = MEMORY[0x1E69E7CC8];
      v27[3] = MEMORY[0x1E69E7CC8];
      v27[4] = v28;
      v27[5] = v29;
      v27[6] = 0;
      v27[7] = 0;
      if (qword_1ED9697D8 != -1)
      {
        swift_once();
      }

      v30 = v156;
      v31 = v206;
      sub_1ADE60630(v174, v156, v23, qword_1ED96F240, *algn_1ED96F248, 0, 0, &v187);
      v206 = v31;
      if (v31)
      {
        sub_1ADDCC35C(v30, v23);
        sub_1ADDE1588(v142, v143);
        goto LABEL_75;
      }

      v205[4] = v192;
      v205[5] = v193;
      v205[6] = v194;
      v205[7] = v195;
      v205[0] = v188;
      v205[1] = v189;
      v205[2] = v190;
      v205[3] = v191;
      sub_1AE02BD5C(v205, v197);
      v206 = 0;

      sub_1ADDCEDE0(&v187, &qword_1EB5BA278, &unk_1AE241D30);
      if ((~*&v197[0] & 0xF000000000000007) != 0 && (*&v197[0] & 0xC000000000000000) == 0x8000000000000000)
      {
        inited = (*&v197[0] & 0x3FFFFFFFFFFFFFFFLL);
      }

      else
      {
        type metadata accessor for Proto_Reference._StorageClass();
        inited = swift_initStaticObject();
      }

      sub_1ADE6AF00(v197);
      swift_beginAccess();
      if (inited[8])
      {
        v34 = inited[9];
        v33 = inited[10];

        sub_1ADDD86D8(v34, v33);
      }

      else
      {
        v34 = 0;
        v33 = 0xC000000000000000;
      }

      sub_1ADDD86D8(v34, v33);

      v144 = v33;
      sub_1ADDCC35C(v34, v33);
      v25 = v34;
      v23 = v151;
    }

    v35 = v156;
    v36 = v206;
    sub_1AE030540(v156, v23, a1, &v187);
    v206 = v36;
    if (v36)
    {
      sub_1ADDE1588(v142, v143);
      sub_1ADDCC35C(v25, v144);
      sub_1ADDCC35C(v35, v23);
      goto LABEL_79;
    }

    v140 = v25;
    v154 = v188;
    if (v188 >> 60 == 15)
    {
      goto LABEL_83;
    }

    v37 = v187;
    v153 = *(&v188 + 1);
    v148 = *(&v189 + 1);
    v155 = v189;
    v150 = v190;
    v38 = type metadata accessor for UpgradeKeyPaths();
    v39 = swift_allocObject();
    v40 = MEMORY[0x1E69E7CC0];
    v39[2] = MEMORY[0x1E69E7CC0];
    v41 = MEMORY[0x1E69E7CC8];
    v39[3] = MEMORY[0x1E69E7CC8];
    v39[4] = v40;
    v39[5] = v41;
    v39[6] = 0;
    v39[7] = 0;
    if (qword_1ED9697D8 != -1)
    {
      swift_once();
    }

    v152 = v37;
    v42 = v206;
    sub_1ADE60630(v186, v37, v154, qword_1ED96F240, *algn_1ED96F248, 0, 0, &v187);
    v206 = v42;
    if (v42)
    {

      sub_1ADDCC35C(v140, v144);
      sub_1ADDCC35C(v156, v151);
      sub_1ADDE1588(v142, v143);
      sub_1AE030B24(v152, v154, v153, v155, v148, v150, *(&v150 + 1));
      goto LABEL_79;
    }

    v204[4] = v192;
    v204[5] = v193;
    v204[6] = v194;
    v204[7] = v195;
    v204[0] = v188;
    v204[1] = v189;
    v204[2] = v190;
    v204[3] = v191;
    sub_1AE02BD5C(v204, v198);
    v206 = 0;

    v43 = sub_1ADDCEDE0(&v187, &qword_1EB5BA278, &unk_1AE241D30);
    v182 = v198[4];
    v183 = v198[5];
    v184 = v198[6];
    v185 = v198[7];
    v178 = v198[0];
    v179 = v198[1];
    v180 = v198[2];
    v181 = v198[3];
    v46 = sub_1ADE73BC8(v43, v44, v45);
    v47 = v206;
    v145 = sub_1AE23C51C();
    v146 = v48;
    v206 = v47;
    if (v47)
    {
      sub_1ADDE1588(v142, v143);
      sub_1ADDCC35C(v140, v144);
      sub_1AE030B24(v152, v154, v153, v155, v148, v150, *(&v150 + 1));
      sub_1ADDCC35C(v156, v151);
      *&v174[64] = v182;
      *&v174[80] = v183;
      *&v174[96] = v184;
      *&v174[112] = v185;
      *v174 = v178;
      *&v174[16] = v179;
      *&v174[32] = v180;
      *&v174[48] = v181;
      sub_1ADE6AF00(v174);
      goto LABEL_79;
    }

    v138 = v46;
    v141 = v38;
    v136 = v20;
    v177[4] = v182;
    v177[5] = v183;
    v177[6] = v184;
    v177[7] = v185;
    v177[0] = v178;
    v177[1] = v179;
    v177[2] = v180;
    v177[3] = v181;
    sub_1ADE6AF00(v177);
    v49 = v152;
    v50 = v154;
    sub_1ADDD86D8(v152, v154);
    v51 = v153;
    v52 = v155;
    sub_1ADDD86D8(v153, v155);
    v53 = v150;
    sub_1ADDD86D8(v150, *(&v150 + 1));
    sub_1ADDCC35C(v53, *(&v53 + 1));
    sub_1ADDCC35C(v49, v50);
    sub_1ADDD86D8(v49, v50);
    sub_1ADDD86D8(v51, v52);
    sub_1ADDD86D8(v53, *(&v53 + 1));
    sub_1ADDCC35C(v53, *(&v53 + 1));
    sub_1ADDCC35C(v49, v50);
    v54 = v52 >> 62;
    if ((v52 >> 62) <= 1)
    {
      break;
    }

    if (v54 == 2)
    {
      v63 = *(v153 + 16);
      v64 = *(v153 + 24);
      sub_1ADDCC35C(v153, v155);
      goto LABEL_38;
    }

    v55 = v153;
    v67 = v155;
    sub_1ADDCC35C(v153, v155);
    v137 = v55;
    v138 = v67;
LABEL_50:
    v58 = v152;
LABEL_51:
    v79 = v154;
    sub_1ADDD86D8(v58, v154);
    sub_1ADDD86D8(v55, v67);
    v80 = v150;
    sub_1ADDD86D8(v150, *(&v150 + 1));
    sub_1ADDCC35C(v55, v67);
    sub_1ADDCC35C(v58, v79);
    v157 = v80;
    *&v167 = 0;
    v165 = 0u;
    v166 = 0u;
    v81 = sub_1AE23C33C();
    sub_1ADE73D18(v81, v82, v83);
    v84 = v206;
    sub_1AE23C52C();
    v206 = v84;
    if (v84)
    {
      sub_1ADDCC35C(v145, v146);
      sub_1ADDCC35C(v156, v151);
      sub_1ADDE1588(v142, v143);
      sub_1AE030B24(v152, v154, v153, v155, v148, v150, *(&v150 + 1));
      sub_1ADDCC35C(v137, v138);
      v119 = v140;
      v120 = v144;
LABEL_72:
      sub_1ADDCC35C(v119, v120);
      goto LABEL_79;
    }

    v201[2] = *&v174[32];
    v201[3] = *&v174[48];
    v201[4] = *&v174[64];
    v202 = *&v174[80];
    v201[0] = *v174;
    v201[1] = *&v174[16];
    v85 = swift_allocObject();
    v86 = MEMORY[0x1E69E7CC0];
    v85[2] = MEMORY[0x1E69E7CC0];
    v87 = MEMORY[0x1E69E7CC8];
    v85[3] = MEMORY[0x1E69E7CC8];
    v85[4] = v86;
    v85[5] = v87;
    v85[6] = 0;
    v85[7] = 0;
    v88 = v206;
    sub_1AE02C6F4(v201, v200);
    v89 = v156;
    v206 = v88;
    if (v88)
    {
      sub_1ADDE1588(v142, v143);
      sub_1ADDCC35C(v145, v146);
      sub_1ADE73C68(v201);
      sub_1ADDCC35C(v137, v138);
      sub_1ADDCC35C(v140, v144);
      sub_1AE030B24(v152, v154, v153, v155, v148, v150, *(&v150 + 1));
      sub_1ADDCC35C(v89, v151);
      swift_setDeallocating();

      swift_deallocClassInstance();
      goto LABEL_79;
    }

    swift_setDeallocating();

    swift_deallocClassInstance();
    v90 = v135;
    v91 = *&v135[v131];

    v92 = v91;
    v93 = v206;
    v94 = sub_1ADF98164(v200, v92);
    v206 = v93;
    if (v93)
    {
      sub_1ADDCC35C(v145, v146);
      sub_1ADDCC35C(v89, v151);
      sub_1ADE73C68(v201);
      sub_1ADDE1588(v142, v143);
      sub_1AE030B24(v152, v154, v153, v155, v148, v150, *(&v150 + 1));
      sub_1ADDCC35C(v137, v138);
LABEL_77:
      sub_1ADDCC35C(v140, v144);
      goto LABEL_79;
    }

    v96 = v94;
    v97 = v95;
    v174[0] = 1;
    type metadata accessor for CREncoder();
    swift_allocObject();
    CREncoder.init(_:version:fileSignature:)(v90, v174, 0, 0xF000000000000000);
    v98 = v206;
    sub_1ADE6B3B8(v96, v97);
    v206 = v98;
    if (v98)
    {
      sub_1ADDE1588(v142, v143);
      sub_1ADDCC35C(v145, v146);

      sub_1ADE73C68(v201);
      sub_1ADDCC35C(v137, v138);
      sub_1ADDCC35C(v140, v144);
      sub_1AE030B24(v152, v154, v153, v155, v148, v150, *(&v150 + 1));
      sub_1ADDCC35C(v156, v151);
LABEL_75:

      return;
    }

    v101 = v99;
    v102 = v100;

    v103 = v147;

    v104 = v206;
    sub_1AE0303DC(v156, v151, v103);
    v206 = v104;
    if (v104)
    {
      sub_1ADDE1588(v142, v143);
      sub_1ADE73C68(v201);
      sub_1ADDCC35C(v137, v138);
      sub_1ADDCC35C(v101, v102);
      sub_1ADDCC35C(v140, v144);
      sub_1ADDCC35C(v156, v151);
      sub_1ADDCC35C(v145, v146);
      sub_1AE030B24(v152, v154, v153, v155, v148, v150, *(&v150 + 1));
      goto LABEL_79;
    }

    sub_1ADDCEE40(v103 + 88, &v165, &qword_1EB5B9DB0, &qword_1AE240B80);
    if (*(&v166 + 1))
    {
      sub_1ADE23E6C(&v165, v174);
      v105 = *&v174[24];
      v106 = *&v174[32];
      __swift_project_boxed_opaque_existential_1(v174, *&v174[24]);
      v141 = (*(v106 + 8))(v145, v146, v105, v106);
      v108 = v107;
      __swift_destroy_boxed_opaque_existential_1(v174);
    }

    else
    {
      sub_1ADDCEDE0(&v165, &qword_1EB5B9DB0, &qword_1AE240B80);
      v109 = v145;
      v108 = v146;
      sub_1ADDD86D8(v145, v146);
      v141 = v109;
    }

    v110 = v147;

    v111 = v137;
    v112 = v138;
    sub_1ADDD86D8(v137, v138);
    sub_1ADDD86D8(v101, v102);
    v113 = v141;
    sub_1ADDD86D8(v141, v108);
    v114 = v148;
    v128 = v110;
    v115 = v102;
    v116 = v140;
    v117 = v144;
    v133 = v115;
    v134 = v101;
    v118 = v206;
    sub_1AE02921C(v140, v144, v111, v112, v101, v115, v113, v108, v128, v148);
    v206 = v118;
    if (v118)
    {
      sub_1ADDE1588(v142, v143);
      sub_1ADE73C68(v201);
      sub_1ADDCC35C(v116, v117);
      sub_1AE030B24(v152, v154, v153, v155, v114, v150, *(&v150 + 1));
      sub_1ADDCC35C(v156, v151);
      sub_1ADDCC35C(v145, v146);
      sub_1ADDCC35C(v111, v112);
      sub_1ADDCC35C(v134, v133);
      v119 = v141;
      v120 = v108;
      goto LABEL_72;
    }

    sub_1ADE73C68(v201);
    sub_1ADDCC35C(v116, v117);
    sub_1AE030B24(v152, v154, v153, v155, v114, v150, *(&v150 + 1));
    sub_1ADDCC35C(v156, v151);
    sub_1ADDCC35C(v145, v146);
    sub_1ADDCC35C(v111, v112);
    sub_1ADDCC35C(v134, v133);
    sub_1ADDCC35C(v141, v108);
    if (v130 == v136)
    {
      goto LABEL_73;
    }

    v20 = v136 + 1;
    v21 = v139 + 2;
    a1 = v147;
    if ((v136 + 1) >= *(v149 + 2))
    {
      goto LABEL_82;
    }
  }

  if (!v54)
  {
    v55 = v153;
    v56 = v155;
    sub_1ADDCC35C(v153, v155);
    v57 = v151;
    v58 = v152;
    if ((v56 & 0xFF000000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_31;
  }

  v65 = v153;
  sub_1ADDCC35C(v153, v155);
  v63 = v65;
  v64 = v65 >> 32;
LABEL_38:
  v57 = v151;
  v58 = v152;
  v66 = v63 == v64;
  v55 = v153;
  if (v66)
  {
LABEL_40:
    v67 = v155;
    v137 = v55;
    v138 = v155;
    goto LABEL_51;
  }

LABEL_31:
  type metadata accessor for CRDecoder();
  v59 = swift_allocObject();
  v60 = MEMORY[0x1E69E7CC0];
  *(v59 + 32) = MEMORY[0x1E69E7CC0];
  *(v59 + 40) = v60;
  *(v59 + 48) = MEMORY[0x1E69E7CC8];
  *(v59 + 56) = 256;
  *(v59 + 16) = 0;
  *(v59 + 24) = v60;
  *(v59 + 64) = 0;
  *(v59 + 72) = 0;
  v61 = v206;
  sub_1ADE60630(&v175, v55, v155, qword_1ED96F240, *algn_1ED96F248, 0, 0, v174);
  v206 = v61;
  if (v61)
  {
    swift_setDeallocating();
    CRDecoder.deinit();
    swift_deallocClassInstance();
    v122 = v155;
    sub_1ADDCC35C(v55, v155);
    sub_1ADDCC35C(v145, v146);
    sub_1ADDCC35C(v156, v57);
    sub_1ADDE1588(v142, v143);
    sub_1AE030B24(v58, v154, v55, v122, v148, v150, *(&v150 + 1));
    goto LABEL_77;
  }

  v203[4] = *&v174[72];
  v203[5] = *&v174[88];
  v203[6] = *&v174[104];
  v203[7] = *&v174[120];
  v203[0] = *&v174[8];
  v203[1] = *&v174[24];
  v203[2] = *&v174[40];
  v203[3] = *&v174[56];
  sub_1ADDD5D3C(v203);
  v206 = 0;
  if ((~*&v174[8] & 0xF000000000000007) != 0 && (*&v174[8] & 0xC000000000000000) == 0x4000000000000000)
  {
    v62 = *&v174[8] & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v62 = swift_initStaticObject();
  }

  v68 = v153;
  v69 = *(v62 + 16);
  if ((~v69 & 0xF000000000000007) != 0 && ((v69 >> 59) & 0x1E | (v69 >> 2) & 1) == 6)
  {
    v70 = v69 & 0xFFFFFFFFFFFFFFBLL;
    v71 = *(v70 + 16);
    v72 = *(v70 + 24);
  }

  else
  {
    v72 = MEMORY[0x1E69E7CC0];
    v71 = MEMORY[0x1E69E7CC0];
  }

  v73 = v206;
  sub_1ADDD6748(v71, v72, v59, v176);
  v206 = v73;
  if (v73)
  {
    v123 = v151;
    v124 = v156;
    v125 = v144;
    sub_1ADDE1588(v142, v143);
    v126 = v155;
    sub_1ADDCC35C(v68, v155);
    sub_1ADDCC35C(v140, v125);
    swift_setDeallocating();
    CRDecoder.deinit();
    swift_deallocClassInstance();
    sub_1ADDCEDE0(v174, &qword_1EB5BA278, &unk_1AE241D30);
    sub_1ADDCC35C(v124, v123);
    sub_1ADDCC35C(v145, v146);
    sub_1AE030B24(v58, v154, v68, v126, v148, v150, *(&v150 + 1));
    goto LABEL_79;
  }

  swift_setDeallocating();
  CRDecoder.deinit();
  swift_deallocClassInstance();
  sub_1ADDCEDE0(v174, &qword_1EB5BA278, &unk_1AE241D30);
  v74 = v176[0];
  v75 = v176[1];
  v173 = 1;
  type metadata accessor for CREncoder();
  swift_allocObject();
  CREncoder.init(_:version:fileSignature:)(v135, &v173, 0, 0xF000000000000000);
  *&v165 = v74;
  *(&v165 + 1) = v75;
  sub_1ADE6A0EC(v199);
  v169 = v199[4];
  v170 = v199[5];
  v171 = v199[6];
  v172 = v199[7];
  v165 = v199[0];
  v166 = v199[1];
  v167 = v199[2];
  v168 = v199[3];
  v76 = v206;
  v77 = sub_1AE23C51C();
  v206 = v76;
  if (!v76)
  {
    v137 = v77;
    v138 = v78;
    v67 = v155;
    sub_1ADDCC35C(v68, v155);

    v161 = v169;
    v162 = v170;
    v163 = v171;
    v164 = v172;
    v157 = v165;
    v158 = v166;
    v159 = v167;
    v160 = v168;
    sub_1ADE6AF00(&v157);
    v55 = v68;
    goto LABEL_50;
  }

  sub_1ADDE1588(v142, v143);
  v127 = v155;
  sub_1ADDCC35C(v68, v155);
  sub_1ADDCC35C(v140, v144);

  sub_1ADDCC35C(v156, v151);
  sub_1ADDCC35C(v145, v146);
  sub_1AE030B24(v152, v154, v68, v127, v148, v150, *(&v150 + 1));
  v161 = v169;
  v162 = v170;
  v163 = v171;
  v164 = v172;
  v157 = v165;
  v158 = v166;
  v159 = v167;
  v160 = v168;
  sub_1ADE6AF00(&v157);
LABEL_79:
}

uint64_t sub_1AE030368()
{

  return swift_deallocClassInstance();
}

double sub_1AE0303DC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      goto LABEL_9;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
  }

  else
  {
    if (!v5)
    {
      v10[0] = a1;
      LOWORD(v10[1]) = a2;
      BYTE2(v10[1]) = BYTE2(a2);
      BYTE3(v10[1]) = BYTE3(a2);
      BYTE4(v10[1]) = BYTE4(a2);
      BYTE5(v10[1]) = BYTE5(a2);
      v6 = v10 + BYTE6(a2);
LABEL_9:
      sub_1ADE45600(v10, v6);
      goto LABEL_10;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_1AE0306A8(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
LABEL_10:

  return result;
}

double sub_1AE030540@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v11, 0, 14);
      v6 = v11;
      goto LABEL_9;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
  }

  else
  {
    if (!v5)
    {
      v11[0] = a1;
      LOWORD(v11[1]) = a2;
      BYTE2(v11[1]) = BYTE2(a2);
      BYTE3(v11[1]) = BYTE3(a2);
      BYTE4(v11[1]) = BYTE4(a2);
      BYTE5(v11[1]) = BYTE5(a2);
      v6 = v11 + BYTE6(a2);
LABEL_9:
      sub_1ADE46228(v11, v6, a3, a4);
      goto LABEL_10;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_1AE03074C(v7, v8, a3, a4);
LABEL_10:

  return result;
}

void sub_1AE0306A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1AE23BB7C();
  if (v6)
  {
    v7 = sub_1AE23BBAC();
    if (__OFSUB__(a1, v7))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v6 += a1 - v7;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1AE23BB9C();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v6[v11];
  if (v6)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  sub_1ADE45600(v6, v13);
}

void sub_1AE03074C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  v8 = sub_1AE23BB7C();
  if (v8)
  {
    v9 = sub_1AE23BBAC();
    if (__OFSUB__(a1, v9))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v8 += a1 - v9;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = sub_1AE23BB9C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 + v8;
  if (v8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  sub_1ADE46228(v8, v15, a3, a4);
}

void sub_1AE030854(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AE23BDAC();
  v8 = v7;
  v13 = a1;
  sub_1ADDCEE40(a1 + OBJC_IVAR___CRContext_encryptionDelegate, v12, &qword_1EB5B9DB0, &qword_1AE240B80);
  type metadata accessor for CRSQLStore();
  inited = swift_initStackObject();
  *(inited + 104) = 0u;
  *(inited + 120) = 0u;
  *(inited + 136) = 0u;
  *(inited + 152) = 0u;
  *(inited + 168) = 0u;
  *(inited + 184) = 0u;
  *(inited + 200) = 0u;
  *(inited + 216) = 0u;
  *(inited + 232) = 0u;
  *(inited + 248) = 0u;
  *(inited + 88) = 0u;
  *(inited + 264) = 0u;
  *(inited + 280) = 0u;
  swift_beginAccess();
  sub_1ADE9241C(v12, inited + 88);
  swift_endAccess();
  *(inited + 24) = v8;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 64) = 0;
  *(inited + 66) = 1;
  *(inited + 68) = 0;
  *(inited + 70) = 1;
  *(inited + 72) = 0;
  *(inited + 80) = -1;
  *(inited + 16) = v6;
  *(inited + 41) = 1;
  *(inited + 48) = a3;
  *(inited + 56) = &unk_1F23BBD70;

  sub_1ADDD16D4();
  sub_1ADDCEDE0(v12, &qword_1EB5B9DB0, &qword_1AE240B80);
  if (!v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BA4D0, &qword_1AE25ADE0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AE2418F0;
    sub_1AE23DA2C();

    sub_1AE23BDDC();
    sub_1AE030ACC();
    v11 = sub_1AE23DD9C();
    MEMORY[0x1B26FB670](v11);

    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 32) = 0xD000000000000020;
    *(v10 + 40) = 0x80000001AE262390;
    sub_1AE23E2EC();

    sub_1ADE43ECC(0, inited, inited, v13);
  }
}

unint64_t sub_1AE030ACC()
{
  result = qword_1EB5BDCE0;
  if (!qword_1EB5BDCE0)
  {
    sub_1AE23BDDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDCE0);
  }

  return result;
}

void sub_1AE030B24(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a2 >> 60 != 15)
  {
    sub_1ADDCC35C(a1, a2);
    sub_1ADDCC35C(a3, a4);

    sub_1ADDCC35C(a6, a7);
  }
}

__n128 __swift_memcpy139_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 123) = *(a2 + 123);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1AE030BC4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 139))
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

uint64_t sub_1AE030C0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 138) = 0;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 139) = 1;
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

    *(result + 139) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AE030CAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1AE030CF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1AE030D3C(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1ADE0B11C(0, v5, 0);
    v7 = v22;
    for (i = (a3 + 56); ; i = (i + 40))
    {
      v9 = *(i - 2);
      v10 = *(i - 1);
      v17 = *(i - 3);
      v18 = v9;
      v19 = v10;
      v20 = *i;
      sub_1ADE42C78(v17, v9);

      a1(v21, &v17);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1ADE42CB8(v17, v18);

      v12 = v21[0];
      v11 = v21[1];
      v22 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1ADE0B11C((v13 > 1), v14 + 1, 1);
        v7 = v22;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      if (!--v5)
      {
        return;
      }
    }

    sub_1ADE42CB8(v17, v18);

    __break(1u);
  }
}

void sub_1AE030E90(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (!a4)
  {
    return;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v10 = sub_1ADE6F47C(0, a4 & ~(a4 >> 63), 0);
  v11 = v28;
  sub_1ADDDF1A4(v10, v12, v13);
  sub_1AE23C27C();
  if (a4 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v23 == a3)
  {
    if (v24 != a5)
    {
      goto LABEL_19;
    }

    for (i = 0; ; ++i)
    {
      v15 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v27 != 1)
      {
        goto LABEL_15;
      }

      v21 = *(v25 + *(v25 + 24) + 16 * ~v26 + 32);
      sub_1ADDD86D8(v21, *(&v21 + 1));
      a1(&v22, &v21);
      if (v6)
      {
        goto LABEL_20;
      }

      v6 = 0;
      sub_1ADDCC35C(v21, *(&v21 + 1));
      v16 = v22;
      v28 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        v19 = v22;
        sub_1ADE6F47C((v17 > 1), v18 + 1, 1);
        v16 = v19;
        v11 = v28;
      }

      *(v11 + 16) = v18 + 1;
      *(v11 + 16 * v18 + 32) = v16;
      if ((sub_1AE23C1CC() & 1) == 0)
      {
        goto LABEL_16;
      }

      if (v15 == a4)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  sub_1ADDCC35C(v21, *(&v21 + 1));

  __break(1u);
}

uint64_t sub_1AE031064(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1ADE0B11C(0, v2, 0);
    v4 = v36;
    v5 = v1 + 56;
    result = sub_1AE23D8EC();
    v6 = result;
    v7 = 0;
    v31 = v1 + 64;
    v32 = v2;
    v33 = v1 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v34 = v7;
      v35 = *(v1 + 36);
      v10 = (*(v1 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB788, &qword_1AE24CD20);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1AE241900;
      sub_1ADF6652C(v11);
      *(v13 + 32) = v14;
      sub_1ADF6652C(v12);
      *(v13 + 40) = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB790, &unk_1AE251E40);
      sub_1ADF73650();
      v16 = sub_1AE23CBFC();
      v18 = v17;

      MEMORY[0x1B26FB670](v16, v18);

      MEMORY[0x1B26FB670](93, 0xE100000000000000);

      v19 = v4;
      v37 = v4;
      v20 = v1;
      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_1ADE0B11C((v21 > 1), v22 + 1, 1);
        v19 = v37;
      }

      *(v19 + 16) = v22 + 1;
      v23 = v19 + 16 * v22;
      *(v23 + 32) = 91;
      *(v23 + 40) = 0xE100000000000000;
      v8 = 1 << *(v20 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v33;
      v24 = *(v33 + 8 * v9);
      if ((v24 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v20;
      v4 = v19;
      if (v35 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v25 = v24 & (-2 << (v6 & 0x3F));
      if (v25)
      {
        v8 = __clz(__rbit64(v25)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v9 << 6;
        v27 = v9 + 1;
        v28 = (v31 + 8 * v9);
        while (v27 < (v8 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_1ADDFFBC8(v6, v35, 0);
            v8 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_1ADDFFBC8(v6, v35, 0);
      }

LABEL_4:
      v7 = v34 + 1;
      v6 = v8;
      if (v34 + 1 == v32)
      {
        return v4;
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

  return result;
}

uint64_t sub_1AE031374@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1ADDFC33C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 40 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 16);
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = *(v9 + 24);
    result = memmove(v9, (v9 + 40), 40 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

unint64_t sub_1AE031418(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1ADF79A54(v3);
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

double sub_1AE0314A8@<D0>(_OWORD *a2@<X8>)
{
  v4 = *(v2 + 16);
  if (v4 >= *(v2 + 20))
  {
    v5 = sub_1AE23C20C();
    if (!v5)
    {
      result = 0.0;
      a2[2] = 0u;
      a2[3] = 0u;
      *a2 = 0u;
      a2[1] = 0u;
      return result;
    }
  }

  else
  {
    v5 = *(v2 + 8);
    *(v2 + 16) = v4 + 1;
  }

  v6 = (v5 + *(v5 + 24) + (~v4 << 6));
  v7 = v6[5];
  v9 = v6[2];
  v8 = v6[3];
  v14[2] = v6[4];
  v14[3] = v7;
  v14[0] = v9;
  v14[1] = v8;
  v10 = v6[3];
  *a2 = v6[2];
  a2[1] = v10;
  v11 = v6[5];
  a2[2] = v6[4];
  a2[3] = v11;
  sub_1ADDCEE40(v14, &v13, &qword_1EB5BA9E8, &qword_1AE251DE0);
  return result;
}

void (*sub_1AE031554(uint64_t *a1, uint64_t *a2))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v8 = *a2;
  v7 = a2[1];
  v9 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  sub_1ADDDF7A8(v8, v7, *(v2 + *(v9 + 20)), v6);
  return sub_1AE0315F8;
}

void sub_1AE0315F8(uint64_t **a1)
{
  v1 = *a1;
  sub_1ADDDC21C(**a1, v1[1], v1[2], v1[3], v1[4], v1[5]);

  free(v1);
}

void sub_1AE03163C(_OWORD *a1@<X8>)
{
  v3 = v1;
  v133 = a1;
  v154 = sub_1AE23C12C();
  v4 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v143 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v142 = &v131 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v152 = &v131 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v139 = &v131 - v11;
  v12 = type metadata accessor for Replica(0);
  v138 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v145 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v137 = &v131 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v148 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v146 = &v131 - v19;
  v150 = v4 + 16;
  v151 = v4;
  v153 = (v4 + 32);
  v144 = (v4 + 8);
  while (2)
  {
    v20 = &unk_1EB5BCD30;
    while (1)
    {
      v21 = *(v3 + 120);
      v22 = *(v3 + 152);
      v184[6] = *(v3 + 136);
      v185[0] = v22;
      *(v185 + 11) = *(v3 + 163);
      v23 = *(v3 + 56);
      v24 = *(v3 + 88);
      v184[2] = *(v3 + 72);
      v184[3] = v24;
      v184[4] = *(v3 + 104);
      v184[5] = v21;
      v184[0] = *(v3 + 40);
      v184[1] = v23;
      if (get_enum_tag_for_layout_string_9Coherence14Proto_DocumentVs5Error_pIeglzo_Sg_0(v184) == 1)
      {
        goto LABEL_4;
      }

      v47 = *(v3 + 56);
      if (v47 < *(v3 + 60))
      {
        break;
      }

      v48 = sub_1AE23C20C();
      if (v48)
      {
        goto LABEL_49;
      }

LABEL_4:
      sub_1ADECD850(v179);
      v25 = *(v3 + 120);
      v26 = *(v3 + 152);
      v182[5] = *(v3 + 136);
      v183[0] = v26;
      *(v183 + 11) = *(v3 + 163);
      v27 = *(v3 + 56);
      v28 = *(v3 + 88);
      v182[1] = *(v3 + 72);
      v182[2] = v28;
      v182[3] = *(v3 + 104);
      v182[4] = v25;
      v181 = *(v3 + 40);
      v182[0] = v27;
      sub_1ADDCEDE0(&v181, v20, &unk_1AE251E08);
      v29 = v179[5];
      *(v3 + 104) = v179[4];
      v30 = v179[2];
      *(v3 + 88) = v179[3];
      *(v3 + 72) = v30;
      v31 = v179[0];
      *(v3 + 56) = v179[1];
      *(v3 + 163) = *(v180 + 11);
      v32 = v179[6];
      *(v3 + 152) = v180[0];
      *(v3 + 136) = v32;
      *(v3 + 120) = v29;
      *(v3 + 40) = v31;
      v34 = *(v3 + 24);
      v33 = *(v3 + 32);
      v35 = *(v34 + 16);
      if (v33 == v35)
      {
        goto LABEL_60;
      }

      if (v33 >= v35)
      {
        goto LABEL_67;
      }

      v36 = (v34 + 40 * v33);
      v2 = v36[4];
      v37 = v36[5];
      v39 = v36[6];
      v38 = v36[7];
      *(v3 + 32) = v33 + 1;
      if (!v2)
      {
        sub_1AE23C1FC();
        goto LABEL_47;
      }

      v40 = *(v3 + 208);
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_69;
      }

      *(v3 + 208) = v42;
      v43 = *(v3 + 200);
      v45 = *(v3 + 184);
      v44 = *(v3 + 192);
      v140 = v38;
      *&v141 = v39;
      if (v43 == 1)
      {
        if (*(v44 + 16) >= *(v37 + 16))
        {
          v147 = v44;
          v132 = v45;
          v64 = *(v37 + 64);
          v136 = v37 + 64;
          v65 = 1 << *(v37 + 32);
          if (v65 < 64)
          {
            v66 = ~(-1 << v65);
          }

          else
          {
            v66 = -1;
          }

          v67 = v66 & v64;
          sub_1ADE42C78(v2, v37);

          v134 = v2;
          sub_1ADE42C78(v2, v37);
          v135 = (v65 + 63) >> 6;

          v68 = 0;
          v149 = v37;
          while (v67)
          {
            v69 = v68;
LABEL_35:
            v73 = __clz(__rbit64(v67));
            v67 &= v67 - 1;
            v74 = v73 | (v69 << 6);
            v75 = v137;
            sub_1ADDDE408(*(v37 + 48) + *(v138 + 72) * v74, v137, type metadata accessor for Replica);
            v76 = v151;
            v77 = *(v37 + 56) + *(v151 + 72) * v74;
            v78 = v139;
            v79 = v154;
            (*(v151 + 16))(v139, v77, v154);
            v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
            v81 = *(v80 + 48);
            v82 = v75;
            v72 = v148;
            sub_1ADDD8010(v82, v148);
            (*(v76 + 32))(v72 + v81, v78, v79);
            (*(*(v80 - 8) + 56))(v72, 0, 1, v80);
LABEL_36:
            v2 = v146;
            sub_1ADDD2198(v72, v146, &qword_1EB5BA458, &qword_1AE251E00);
            v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
            if ((*(*(v83 - 8) + 48))(v2, 1, v83) == 1)
            {
              v37 = v149;

              v46 = v134;
              sub_1ADF637A8(v134, v132);
              v97 = v96;
              sub_1ADE42CB8(v46, v37);
              v20 = &unk_1EB5BCD30;
              if (v97)
              {
                goto LABEL_46;
              }

LABEL_59:
              sub_1ADE42CB8(v46, v37);

LABEL_60:
              v2 = *(v3 + 208);
              if (v2 >= 101)
              {
                if (qword_1EB5B94F8 == -1)
                {
                  goto LABEL_62;
                }

                goto LABEL_70;
              }

              goto LABEL_65;
            }

            v84 = *v153;
            (*v153)(v152, v2 + *(v83 + 48), v154);
            v85 = v145;
            sub_1ADDD8010(v2, v145);
            v86 = v147;
            if (!*(v147 + 16) || (v87 = sub_1ADDD8A6C(v85), (v88 & 1) == 0))
            {
              v37 = v149;

              v46 = v134;
              sub_1ADE42CB8(v134, v37);
              sub_1ADDE5058(v85, type metadata accessor for Replica);
              (*v144)(v152, v154);
              goto LABEL_45;
            }

            v89 = v151;
            v90 = v143;
            v91 = v154;
            (*(v151 + 16))(v143, *(v86 + 56) + *(v151 + 72) * v87, v154);
            sub_1ADDE5058(v85, type metadata accessor for Replica);
            v92 = v142;
            v84(v142, v90, v91);
            v93 = v152;
            v2 = sub_1AE23C0BC();
            v94 = *(v89 + 8);
            v94(v92, v91);
            v94(v93, v91);
            v37 = v149;
            if ((v2 & 1) == 0)
            {

              v46 = v134;
              sub_1ADE42CB8(v134, v37);
LABEL_45:
              v20 = &unk_1EB5BCD30;
              goto LABEL_46;
            }
          }

          if (v135 <= v68 + 1)
          {
            v70 = v68 + 1;
          }

          else
          {
            v70 = v135;
          }

          v71 = v70 - 1;
          v72 = v148;
          while (1)
          {
            v69 = v68 + 1;
            if (__OFADD__(v68, 1))
            {
              break;
            }

            if (v69 >= v135)
            {
              v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
              (*(*(v95 - 8) + 56))(v72, 1, 1, v95);
              v67 = 0;
              v68 = v71;
              goto LABEL_36;
            }

            v67 = *(v136 + 8 * v69);
            ++v68;
            if (v67)
            {
              v68 = v69;
              goto LABEL_35;
            }
          }

          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        sub_1ADE42C78(v2, v37);

        v46 = v2;
LABEL_46:
        sub_1AE23C1FC();
        sub_1ADE42CB8(v46, v37);

LABEL_47:
        v169 = v161;
        v170[0] = v162[0];
        *(v170 + 11) = *(v162 + 11);
        v165 = v157;
        v166 = v158;
        v167 = v159;
        v168 = v160;
        v163 = v155;
        v164 = v156;
        Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v163);
        v98 = *(v3 + 120);
        v99 = *(v3 + 152);
        v177 = *(v3 + 136);
        v178[0] = v99;
        *(v178 + 11) = *(v3 + 163);
        v100 = *(v3 + 56);
        v101 = *(v3 + 88);
        v173 = *(v3 + 72);
        v174 = v101;
        v175 = *(v3 + 104);
        v176 = v98;
        v171 = *(v3 + 40);
        v172 = v100;
        sub_1ADDCEDE0(&v171, v20, &unk_1AE251E08);
        v102 = v167;
        *(v3 + 120) = v168;
        v103 = v170[0];
        *(v3 + 136) = v169;
        *(v3 + 152) = v103;
        *(v3 + 163) = *(v170 + 11);
        v104 = v163;
        *(v3 + 56) = v164;
        v105 = v166;
        *(v3 + 72) = v165;
        *(v3 + 88) = v105;
        *(v3 + 104) = v102;
        *(v3 + 40) = v104;
      }

      else
      {
        sub_1ADE42C78(v2, v37);

        sub_1ADE42C78(v2, v37);

        v49 = sub_1ADF63DF4(v37, v44);
        v50 = v49;
        if (v49 & 0x100) != 0 && (v49)
        {

          sub_1ADE42CB8(v2, v37);
          v46 = v2;
          v2 = 1;
        }

        else
        {
          v51 = v20;
          v52 = sub_1ADF63DF4(v2, v45);
          v53 = v52;
          v54 = v50 | v52;

          v55 = v2;
          sub_1ADE42CB8(v2, v37);
          v2 = (v54 >> 8) & 1;
          v46 = v55;
          v20 = v51;
          if ((v50 & 1) == 0 && (v53 & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        sub_1AE23C1FC();
        sub_1ADE42CB8(v46, v37);

        v169 = v161;
        v170[0] = v162[0];
        *(v170 + 11) = *(v162 + 11);
        v165 = v157;
        v166 = v158;
        v167 = v159;
        v168 = v160;
        v163 = v155;
        v164 = v156;
        Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v163);
        v56 = *(v3 + 120);
        v57 = *(v3 + 152);
        v177 = *(v3 + 136);
        v178[0] = v57;
        *(v178 + 11) = *(v3 + 163);
        v58 = *(v3 + 56);
        v59 = *(v3 + 88);
        v173 = *(v3 + 72);
        v174 = v59;
        v175 = *(v3 + 104);
        v176 = v56;
        v171 = *(v3 + 40);
        v172 = v58;
        sub_1ADDCEDE0(&v171, v20, &unk_1AE251E08);
        v60 = v167;
        *(v3 + 120) = v168;
        v61 = v170[0];
        *(v3 + 136) = v169;
        *(v3 + 152) = v61;
        *(v3 + 163) = *(v170 + 11);
        v62 = v163;
        *(v3 + 56) = v164;
        v63 = v166;
        *(v3 + 72) = v165;
        *(v3 + 88) = v63;
        *(v3 + 104) = v60;
        *(v3 + 40) = v62;
        *(v3 + 200) = v2 ^ 1;
      }
    }

    v48 = *(v3 + 48);
    *(v3 + 56) = v47 + 1;
LABEL_49:
    v106 = *(v48 + *(v48 + 24) + 16 * ~v47 + 32);
    v107 = *(v3 + 200);
    v149 = *(v48 + *(v48 + 24) + 16 * ~v47 + 40);
    v141 = v106;
    if (v107 == 1)
    {
      sub_1ADDD86D8(v106, v149);
LABEL_57:
      sub_1ADDDF7A8(v141, v149, *v3, &v181);
      v122 = *&v182[0];
      if (*&v182[0])
      {
        v123 = *(&v182[1] + 1);
        v124 = v181;
        v125 = v133;
        *v133 = v141;
        v125[1] = v124;
        *(v125 + 4) = v122;
        *(v125 + 40) = *(v182 + 8);
        *(v125 + 7) = v123;
        return;
      }

      goto LABEL_72;
    }

    v108 = *(v3 + 208);
    v41 = __OFADD__(v108, 1);
    v109 = v108 + 1;
    if (!v41)
    {
      *(v3 + 208) = v109;
      v110 = *(v3 + 184);
      v111 = *(v3 + 192);
      v112 = *v3;
      v113 = v106;
      v114 = v149;
      sub_1ADDD86D8(v106, v149);
      sub_1ADDDF7A8(v113, v114, v112, &v181);
      v115 = *&v182[0];
      if (*&v182[0])
      {
        v147 = *(&v182[1] + 1);
        v2 = *&v182[1];
        v116 = *(&v182[0] + 1);
        v117 = *(&v181 + 1);
        v118 = v181;

        sub_1ADDDC21C(v118, v117, v115, v116, v2, v147);
        sub_1ADF637A8(v116, v111);
        if (v119)
        {
        }

        else
        {
          sub_1ADF637A8(v115, v110);
          v121 = v120;

          if ((v121 & 1) == 0)
          {
            sub_1ADDCC35C(v113, v149);
            continue;
          }
        }

        goto LABEL_57;
      }

      __break(1u);
LABEL_72:
      __break(1u);
      return;
    }

    break;
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  swift_once();
LABEL_62:
  v126 = sub_1AE23C78C();
  __swift_project_value_buffer(v126, qword_1EB5D74A8);
  v127 = sub_1AE23C76C();
  v128 = sub_1AE23D61C();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    *v129 = 134217984;
    *(v129 + 4) = v2;
    _os_log_impl(&dword_1ADDCA000, v127, v128, "Excessive since comparisons: %ld", v129, 0xCu);
    MEMORY[0x1B26FDA50](v129, -1, -1);
  }

LABEL_65:
  v130 = v133;
  v133[2] = 0u;
  v130[3] = 0u;
  *v130 = 0u;
  v130[1] = 0u;
}

void sub_1AE0323AC(uint64_t *a1@<X0>, uint64_t *a2@<X1>, int64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  v9 = a3[1];
  v29 = *a3;
  v10 = (v4 + *(type metadata accessor for PartiallyOrderedReferenceMap(0) + 20));
  ++v10[2];
  sub_1AE23E31C();
  sub_1AE23BECC();
  v11 = sub_1AE23E34C();
  v12 = *v10;
  swift_beginAccess();
  v13 = *(v12 + 16) != 0;
  *&v35 = v6;
  *(&v35 + 1) = v7;
  sub_1ADDD86D8(v6, v7);
  sub_1ADDDC21C(0, 0, 0, 0, 0, 0);
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  *v39 = v11;
  *&v39[16] = v12;
  *&v39[24] = 0;
  v39[28] = 0;
  v39[29] = v13;
  v39[30] = 0;
  sub_1ADDDD688(&v35);
  v14 = v37;
  if (!v37)
  {
    __break(1u);
    goto LABEL_25;
  }

  sub_1ADF64C74(v15, v9);
  if ((v16 & 1) == 0)
  {

LABEL_8:
    v25 = v36;
    if (v36)
    {
      if (v8 == v36)
      {
        if (qword_1ED9670C0 != -1)
        {
          swift_once();
        }

        v27 = &word_1ED96F220;
        v23 = HIBYTE(word_1ED96F220);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = (*(*v25 + 168))();

          *&v36 = v26;
          v25 = v26;
        }

        v27 = v31;
        (*(*v25 + 96))(v31, v8);
        v23 = BYTE1(v31[0]);
      }

      v22 = *v27;
      v24 = *(v27 + 2);
      sub_1ADF5F770(v9, v31);
      sub_1ADF5F770(v29, v30);
      v33 = v30[0];
      v34 = BYTE2(v30[0]);
      v28 = &v33;
      MergeResult.merge(_:)(v28);
      v19 = LOBYTE(v31[0]);
      v20 = BYTE1(v31[0]);
      v21 = BYTE2(v31[0]);
      goto LABEL_17;
    }

LABEL_25:
    __break(1u);
    return;
  }

  sub_1ADF64C74(v14, v29);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (qword_1ED9670C0 != -1)
  {
    swift_once();
  }

  v19 = word_1ED96F220;
  v20 = HIBYTE(word_1ED96F220);
  v21 = byte_1ED96F222;
  v22 = word_1ED96F220;
  v23 = HIBYTE(word_1ED96F220);
  v24 = byte_1ED96F222;
LABEL_17:
  sub_1ADDDD94C(v10, &v35);
  v31[2] = v37;
  v31[3] = v38;
  v32[0] = *v39;
  *(v32 + 15) = *&v39[15];
  v31[0] = v35;
  v31[1] = v36;
  sub_1ADDCEDE0(v31, &qword_1EB5BA960, &qword_1AE2455E0);
  if (qword_1ED9670C0 != -1)
  {
    swift_once();
  }

  if (v19 != word_1ED96F220 || v20 != HIBYTE(word_1ED96F220) || ((v21 ^ byte_1ED96F222) & 1) != 0)
  {
    v30[0] = v6;
    v30[1] = v7;
    sub_1AE0328B8(v30);
  }

  *a4 = v22;
  a4[1] = v23;
  a4[2] = v24;
}

uint64_t sub_1AE032778(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for PartiallyOrderedReferenceMap(0);
  v5 = *(result + 24);
  v6 = *(v1 + v5);
  v7 = *(v6 + 16);
  if (!v7)
  {
    __break(1u);
LABEL_9:
    result = sub_1ADDFC33C(v6);
    v6 = result;
LABEL_5:
    if (v7 > *(v6 + 16))
    {
      __break(1u);
    }

    else
    {
      v11 = v6 + 40 * (v7 - 1);
      v12 = *(v11 + 32);
      v13 = *(v11 + 40);
      *(v11 + 32) = v2;
      *(v11 + 40) = v3;
      result = sub_1ADE42CB8(v12, v13);
      *(v1 + v5) = v6;
    }

    return result;
  }

  v8 = v6 + 40 * v7;
  v10 = *(v8 - 8);
  v9 = v8 - 8;
  if (!v10 && *(v9 + 24) >= 21)
  {

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1AE032838()
{
  v0 = sub_1AE23C78C();
  __swift_allocate_value_buffer(v0, qword_1EB5D74A8);
  __swift_project_value_buffer(v0, qword_1EB5D74A8);
  return sub_1AE23C77C();
}

void sub_1AE0328B8(uint64_t *a1)
{
  v2 = a1[1];
  v18 = *a1;
  v3 = v18;
  v19 = v2;
  sub_1ADDE0708(&v18, 0);
  v4 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  sub_1ADDDF7A8(v3, v2, *(v1 + *(v4 + 20)), &v18);
  v5 = v20;
  if (v20)
  {
    v6 = v18;
    v7 = v19;
    v8 = v21;
    v9 = v22;
    v10 = v23;

    sub_1ADDDC21C(v6, v7, v5, v8, v9, v10);
    v18 = v3;
    v19 = v2;
    v24[0] = v5;
    v24[1] = v8;
    sub_1ADDDAD3C(&v18, v24);
    v11 = *(v8 + 16);

    if (v11)
    {
      sub_1ADDD86D8(v3, v2);
      sub_1ADDDB0F8(&v18, v3, v2);
      sub_1ADDCC35C(v18, v19);
      return;
    }
  }

  else
  {
    sub_1ADDDC21C(v18, v19, 0, v21, v22, v23);
  }

  v12 = v1 + *(v4 + 28);
  sub_1AE23E31C();
  sub_1AE23BECC();
  v13 = sub_1AE23E34C();
  sub_1ADDE0898(0, v3, v2, v13, &v18);
  v15 = v18;
  v14 = v19;
  v16 = v20;
  v17 = v21;
  if (v19 >> 60 == 15)
  {
    sub_1ADECD780(v18, v19, v20, v21);
  }

  else
  {
    ++*(v12 + 16);
    sub_1ADDE1588(v16, v17);

    sub_1ADDCC35C(v15, v14);
  }
}

uint64_t sub_1AE032AA4()
{
  v1 = *(v0 + *(type metadata accessor for PartiallyOrderedReferenceMap(0) + 24));
  v17 = v0;
  sub_1AE030D3C(sub_1AE03CB18, &v16, v1);
  v3 = v2;
  v18 = 2117456;
  v19 = 0xE300000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  sub_1AE23BFCC();
  v5 = MEMORY[0x1E69E7508];
  v6 = MEMORY[0x1E69E7558];
  *(v4 + 56) = MEMORY[0x1E69E7508];
  *(v4 + 64) = v6;
  *(v4 + 32) = v7;
  sub_1AE23BFCC();
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 72) = v8;
  v9 = sub_1AE23CD3C();
  MEMORY[0x1B26FB670](v9);

  MEMORY[0x1B26FB670](5972026, 0xE300000000000000);
  v11 = v18;
  v10 = v19;
  v18 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
  sub_1ADF7370C(&qword_1EB5B8C10, &qword_1EB5BA250, &unk_1AE251E30);
  v12 = sub_1AE23CBFC();
  v14 = v13;

  v18 = v11;
  v19 = v10;

  MEMORY[0x1B26FB670](v12, v14);

  MEMORY[0x1B26FB670](93, 0xE100000000000000);

  return v18;
}

uint64_t sub_1AE032C7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v24[2] = a2;
  sub_1AE030E90(sub_1AE03CB38, v24, v6, v7, v8);
  v12 = sub_1ADF7F054(v9, v10, v11);

  v13 = sub_1AE031064(v12);

  v25 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
  sub_1ADF7370C(&qword_1EB5B8C10, &qword_1EB5BA250, &unk_1AE251E30);
  v14 = 0xE200000000000000;
  v15 = sub_1AE23CBFC();
  v17 = v16;

  if (v4)
  {
    v25 = v4;
    v26 = v5;
    v18 = CRVersion.description.getter();
    v14 = v19;
  }

  else
  {
    v18 = 23899;
  }

  v25 = 8069178;
  v26 = 0xE300000000000000;
  MEMORY[0x1B26FB670](v15, v17);

  MEMORY[0x1B26FB670](125, 0xE100000000000000);
  v20 = v25;
  v21 = v26;
  v25 = v18;
  v26 = v14;

  MEMORY[0x1B26FB670](v20, v21);

  v23 = v26;
  *a3 = v25;
  a3[1] = v23;
  return result;
}

void sub_1AE032E1C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  sub_1ADDDF7A8(v5, v6, *(a2 + *(v7 + 20)), v14);
  v8 = v15;
  if (v15)
  {
    v10 = v17;
    v9 = v18;
    v11 = v16;
    v13 = v14[0];
    v12 = v14[1];

    sub_1ADDDC21C(v13, v12, v8, v11, v10, v9);
    *a3 = v8;
    a3[1] = v11;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1AE032EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BCCD8;
  if (!qword_1EB5BCCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BCCD8);
  }

  return result;
}

__n128 sub_1AE032F3C@<Q0>(_OWORD *a2@<X8>)
{
  sub_1AE23C1FC();
  sub_1ADDE5058(v2, type metadata accessor for PartiallyOrderedReferenceMap);
  a2[6] = v11;
  a2[7] = *v12;
  *(a2 + 123) = *&v12[11];
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  result = v6;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1AE032FBC()
{
  sub_1AE03AD2C(v0);
  v2 = v1;
  sub_1ADDE5058(v0, type metadata accessor for PartiallyOrderedReferenceMap);
  return v2;
}

__n128 sub_1AE033008@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  *(a1 + 160) = *(v1 + 160);
  *(a1 + 176) = v2;
  *(a1 + 192) = *(v1 + 192);
  *(a1 + 208) = *(v1 + 208);
  v3 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v3;
  v4 = *(v1 + 144);
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 144) = v4;
  v5 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v5;
  v6 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v6;
  result = *v1;
  v8 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v8;
  return result;
}

uint64_t sub_1AE03304C()
{
  v1 = *(v0 + 176);
  v10[10] = *(v0 + 160);
  v10[11] = v1;
  v10[12] = *(v0 + 192);
  v11 = *(v0 + 208);
  v2 = *(v0 + 112);
  v10[6] = *(v0 + 96);
  v10[7] = v2;
  v3 = *(v0 + 144);
  v10[8] = *(v0 + 128);
  v10[9] = v3;
  v4 = *(v0 + 48);
  v10[2] = *(v0 + 32);
  v10[3] = v4;
  v5 = *(v0 + 80);
  v10[4] = *(v0 + 64);
  v10[5] = v5;
  v6 = *(v0 + 16);
  v10[0] = *v0;
  v10[1] = v6;
  sub_1AE03B038(v10);
  v8 = v7;
  sub_1ADECD8C8(v10);
  return v8;
}

unint64_t sub_1AE033138(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, int *a5, void *a6, int8x8_t a7)
{
  v8 = *a5;
  v7 = a5[1];
  if ((v7 & *a5) != 0)
  {
    if (sub_1AE033244(a1, a2, a3, a4, a5, a6))
    {
      return 2;
    }

    else
    {
      return v9 << 32;
    }
  }

  else
  {
    v11 = 1 << (a4 >> a1);
    if ((v8 & v11) != 0)
    {
      a7.i32[0] = v8 & (v11 - 1);
      v12 = vcnt_s8(a7);
      v12.i16[0] = vaddlv_u8(v12);
      v13 = v12.u32[0];
      v14 = (&a6[8 * ~v12.u32[0]] + a5[2]);
      v15 = *v14;
      v16 = v14[1];
      v17 = a2;
      sub_1ADDD86D8(*v14, v16);
      LOBYTE(v17) = sub_1ADDD6F8C(v15, v16, v17, a3);
      sub_1ADDCC35C(v15, v16);
      if (v17)
      {
        return v13 << 32;
      }

      else
      {
        return 2;
      }
    }

    else if ((v7 & v11) != 0)
    {
      a7.i32[0] = v7 & (v11 - 1);
      v19 = vcnt_s8(a7);
      v19.i16[0] = vaddlv_u8(v19);
      return (v19.u32[0] << 32) | 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1AE033244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11[0] = a2;
  v11[1] = a3;
  if (a1 <= 0x3Fu && *a6 != a4)
  {
    return 2;
  }

  MEMORY[0x1EEE9AC00](a1);
  v10[2] = v11;
  sub_1AE033484(sub_1AE03CA34, v10, v6, v7);
  return (v8 & 1) != 0;
}

uint64_t sub_1AE033364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11[0] = a2;
  v11[1] = a3;
  if (a1 <= 0x3Fu && *a6 != a4)
  {
    return 2;
  }

  MEMORY[0x1EEE9AC00](a1);
  v10[2] = v11;
  sub_1AE0335BC(sub_1AE03CA34, v10, v6, v7);
  return (v8 & 1) != 0;
}

uint64_t sub_1AE033484(uint64_t (*a1)(__int128 *), uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v8 = 0;
  while (1)
  {
    v9 = *a3;
    v10 = a3[1];
    v11 = a3[3];
    v25[2] = a3[2];
    v25[3] = v11;
    v25[0] = v9;
    v25[1] = v10;
    v12 = a3[1];
    v21 = *a3;
    v22 = v12;
    v13 = a3[3];
    v23 = a3[2];
    v24 = v13;
    sub_1ADDCEE40(v25, &v17, &qword_1EB5BA9E8, &qword_1AE251DE0);
    v14 = a1(&v21);
    if (v4)
    {
      break;
    }

    v15 = v14;
    v17 = v21;
    v18 = v22;
    v19 = v23;
    v20 = v24;
    sub_1ADDCEDE0(&v17, &qword_1EB5BA9E8, &qword_1AE251DE0);
    if (v15)
    {
      return v8;
    }

    ++v8;
    a3 += 4;
    if (a4 == v8)
    {
      return 0;
    }
  }

  v17 = v21;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  sub_1ADDCEDE0(&v17, &qword_1EB5BA9E8, &qword_1AE251DE0);
  return v8;
}

uint64_t sub_1AE0335BC(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v8 = 0;
  while (1)
  {
    v11 = *(a3 + 16 * v8);
    sub_1ADDD86D8(v11, *(&v11 + 1));
    v9 = a1(&v11);
    sub_1ADDCC35C(v11, *(&v11 + 1));
    if (v4 || (v9 & 1) != 0)
    {
      break;
    }

    if (a4 == ++v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1AE033684(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *), uint64_t a6)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v6;
  if (isUniquelyReferenced_nonNull_native)
  {
    v16 = sub_1ADDDAB3C(a1, a2, a3, a4, &v15[2], &v15[4], v14);
    v17 = v16 >> 29;
    if (v16 >> 29 <= 1)
    {
      if (v17)
      {
        v22 = v16;
        v23 = HIDWORD(v16);
        swift_beginAccess();
        if (v15[3].i32[1] >= 0x40u)
        {
          v30 = sub_1ADE1A914(v23, v22, &v15[2], &v15[4]);
          a5(v30);
          ++*(v6 + 8);
        }

        else
        {
          sub_1ADE1A674(v22, v23, a5, a6, v24);
        }

        return 1;
      }

      return 0;
    }

    else if (v17 == 2)
    {
      v18 = 1;
      sub_1AE033E90(1, a1, v16, HIDWORD(v16), a4, a5, a6);
    }

    else if (v17 == 3)
    {
      if (sub_1AE033684((a1 + 5), a2, a3, a4, a5, a6))
      {
        ++*(v6 + 8);
        return 1;
      }

      return 0;
    }

    else
    {
      if (v16 == 0x80000000)
      {
        swift_beginAccess();
        v21 = v15[3].u32[1];
        if (v21 > 0x3F)
        {
          v31 = v15[2].u32[0];
          v32 = vcnt_s8(v31);
          v32.i16[0] = vaddlv_u8(v32);
          if (v31 == v15[2].i32[1])
          {
            v33 = v31;
          }

          else
          {
            v33 = v32.u32[0];
          }

          v15[3].i32[1] = v21 - 64;
          v34 = &v15[-4] + v15[3].u32[0] + -64 * v33;
          v15[2].i32[0] = v31 + 1;
          v15[2].i32[1] = v31 + 1;
          a5(v34);
          ++*(v6 + 8);
        }

        else
        {
          sub_1AE034ECC(a5, a6, sub_1AE0351D8, sub_1AE035028);
        }

        return 1;
      }

      v25 = *(v6 + 8);
      v26 = v15[4];

      v27 = sub_1AE033D0C(a1, a5, a6, a4, v15, v25, v26);
      v29 = v28;

      *v6 = v27;
      *(v6 + 8) = v29;
      return 1;
    }
  }

  else
  {
    sub_1AE0339B0(a1, a2, a3, a4, a5, a6, *v6, *(v6 + 8), v36);
    v18 = v36[0];
    v19 = v37;
    v20 = v38;

    *v6 = v19;
    *(v6 + 8) = v20;
  }

  return v18;
}

void sub_1AE0339B0(uint64_t a1@<X0>, uint64_t a2@<X1>, int8x8_t a3@<X2>, unint64_t a4@<X3>, void (*a5)(char *)@<X4>, uint64_t a6@<X5>, int8x8_t *a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = a7;
  v17 = a7 + 4;

  v19 = sub_1ADDDAB3C(a1, a2, *&a3, a4, &v10[2], v17, v18);
  v20 = v19;
  v21 = v19 >> 29;
  if (v19 >> 29 <= 1)
  {
    if (v21)
    {

      a3 = HIDWORD(v20);
      v10 = sub_1ADDD83C0(v20, HIDWORD(v20), a5, v41, a6, v10);
      a8 = v42;
      LOBYTE(v21) = 1;
    }

    else
    {
      a3 = HIDWORD(v19);
    }

    v28 = v10;
  }

  else if (v21 == 2)
  {

    v33 = (&v17[8 * ~HIDWORD(v20)] + v10[3].u32[0]);
    v34 = *v33;
    v35 = v33[1];
    sub_1AE23E31C();
    sub_1ADDD86D8(v34, v35);
    sub_1AE23BECC();
    a3 = sub_1AE23E34C();
    sub_1ADDCC35C(v34, v35);
    v10 = sub_1AE034800(a1, v20, HIDWORD(v20), *&a3, a4, a5, a6, v10);
    a8 = v36;
    v28 = v37;
    a3.i32[0] = v38;
    LOBYTE(v21) = 1;
  }

  else if (v21 == 3)
  {

    v46 = HIDWORD(v20);
    v22 = &v17[2 * HIDWORD(v20)];
    v24 = *v22;
    v23 = v22[1];

    sub_1AE0339B0((a1 + 5), a2, *&a3, a4, a5, a6, v24, v23, v48);
    v25 = v48[0];
    v26 = v49;
    v27 = v50;
    v28 = v51;
    a3.i32[0] = v52;

    if (v25)
    {
      v29 = sub_1ADDFB3E0();
      v10 = sub_1ADDF59C8(v29, v10, a8);
      v31 = v30;
      v32 = &v10[2 * v46];
      v32[4] = v26;
      v32[5] = v27;

      a8 = v31 + 1;
      LOBYTE(v21) = 1;
    }

    else
    {

      LOBYTE(v21) = 0;
    }
  }

  else
  {

    if (v20 == 0x80000000)
    {
      v10 = sub_1AE034BB0(a5, a6, v10, a8, sub_1AE035378, sub_1AE035028);
      a8 = v39;
      a3.i32[0] = v40;
      LOBYTE(v21) = 1;
      v28 = v10;
    }

    else
    {
      a3 = v10[4];

      v10 = sub_1AE033D0C(a1, a5, a6, a4, v10, a8, *&a3);
      a8 = v43;
      v28 = v44;
      LOBYTE(v21) = 1;
      a3.i32[0] = v45;
    }
  }

  *a9 = v21;
  *(a9 + 8) = v10;
  *(a9 + 16) = a8;
  *(a9 + 24) = v28;
  *(a9 + 32) = a3.i32[0];
}

uint64_t sub_1AE033D68(int a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t (*a8)(void, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, unint64_t), uint64_t (*a9)(uint64_t), uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = (a4 >> a1) & 0x1F;
  v12 = (a7 >> a1) & 0x1F;
  if (v11 != v12)
  {
    return a10(a2, a3, v11, a5, a6, v12);
  }

  v17 = a3;

  v20 = a8((a1 + 5), a2, v17, a4, a5, a6, a7);
  v22 = v21;
  LODWORD(v17) = 1 << v11;
  v23 = a9(16);
  *(v23 + 16) = 0;
  *(v23 + 20) = v17;
  *(v23 + 28) -= 16;
  *(v23 + 32) = v20;
  *(v23 + 40) = v22;

  return v23;
}

uint64_t sub_1AE033E90(char a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v8 = v7;
  v10 = a4;
  v77 = a3;
  v11 = a2;
  v13 = *v7;
  v80 = *v7 + 32;
  v14 = ~a4;
  v15 = (v80 + *(*v7 + 24) + (v14 << 6));
  v16 = *v15;
  v17 = v15[1];
  sub_1AE23E31C();
  sub_1ADDD86D8(v16, v17);
  sub_1AE23BECC();
  v18 = sub_1AE23E34C();
  sub_1ADDCC35C(v16, v17);
  if (v18 == a5)
  {
    v20 = v13[4];
    v21 = v13[5];
    if (v20 == v21)
    {
      if (v20 == 1)
      {
LABEL_4:
        v22 = v80 + v13[6];
        v23 = *(v22 - 16);
        v25 = *(v22 - 64);
        v24 = *(v22 - 48);
        v104 = *(v22 - 32);
        v105 = v23;
        v102 = v25;
        v103 = v24;
        sub_1ADDCEE40(&v102, &v97, &qword_1EB5BA9E8, &qword_1AE251DE0);

        v97 = v103;
        v98 = v104;
        v99 = v105;
        v26 = sub_1AE034DBC(a5, v102, *(&v102 + 1), &v97, a6);
        *v8 = v26;
        v8[1] = v27;
        return v26;
      }
    }

    else
    {
      v19.i32[0] = v13[4];
      v28 = vcnt_s8(v19);
      v28.i16[0] = vaddlv_u8(v28);
      if (v20)
      {
        v29 = v21 == 0;
      }

      else
      {
        v29 = 0;
      }

      if (v29 && v28.i32[0] < 2u)
      {
        goto LABEL_4;
      }
    }
  }

  if (a1)
  {
    v68 = v11;
    v71 = a5;
    swift_beginAccess();
    v73 = v8[1];
    v74 = v8;
    LODWORD(v31) = v13[4];
    v32 = vcnt_s8(v31);
    v32.i16[0] = vaddlv_u8(v32);
    if (v31 == v13[5])
    {
      v31 = v31;
    }

    else
    {
      v31 = v32.u32[0];
    }

    v33 = v13[6];
    v13[7] += 64;
    v34 = v80 - (v31 << 6) + v33;
    v35 = (v31 + v14) << 6;
    v36 = *(v34 + v35);
    v37 = *(v34 + v35 + 8);
    v38 = *(v34 + v35 + 16);
    v39 = *(v34 + v35 + 24);
    v40 = *(v34 + v35 + 32);
    v41 = *(v34 + v35 + 40);
    v42 = *(v34 + v35 + 48);
    v43 = *(v34 + v35 + 56);
    memmove((v34 + 64), v34, v35);
    v44 = v13[4];
    if ((v13[5] & v44) != 0)
    {
      v45 = v44 - 1;
      v13[5] = v45;
    }

    else
    {
      v45 = v44 & ((-1 << v77) - 1);
    }

    v13[4] = v45;
    *&v102 = v36;
    *(&v102 + 1) = v37;
    *&v103 = v38;
    *(&v103 + 1) = v39;
    *&v104 = v40;
    *(&v104 + 1) = v41;
    v50 = v42;
    *&v105 = v42;
    *(&v105 + 1) = v43;
    v51 = v43;
    v75 = v41;
    v76 = v50;
    v70 = v38;
    v69 = v39;
    if (v18 == v71)
    {
      v81[0] = v36;
      v81[1] = v37;
      v81[2] = v38;
      v81[3] = v39;
      v81[4] = v40;
      v81[5] = v41;
      v81[6] = v50;
      v81[7] = v43;
      v52 = v41;
      v53 = sub_1ADDDAC74(136);
      v54 = *(v53 + 24);
      *(v53 + 28) -= 136;
      *(v53 + 32) = v71;
      *(v53 + 16) = 0x200000002;
      v55 = v53 + 32 + v54;
      v72 = v55 - 128;
      *&v82 = v36;
      *(&v82 + 1) = v37;
      v83 = v38;
      v84 = v39;
      v85 = v40;
      v86 = v52;
      v87 = v76;
      v88 = v51;
      *(v55 - 64) = v36;
      *(v55 - 56) = v37;
      *(v55 - 48) = v38;
      *(v55 - 40) = v39;
      *(v55 - 32) = v40;
      *(v55 - 24) = v52;
      *(v55 - 16) = v76;
      *(v55 - 8) = v51;
      sub_1ADDCEE40(&v102, &v97, &qword_1EB5BA9E8, &qword_1AE251DE0);
      sub_1ADDCEE40(v81, &v97, &qword_1EB5BA9E8, &qword_1AE251DE0);
      sub_1ADDCEE40(&v82, &v97, &qword_1EB5BA9E8, &qword_1AE251DE0);
      a6(v72);
      v89 = v36;
      v90 = v37;
      v91 = v38;
      v92 = v39;
      v93 = v40;
      v94 = v52;
      v95 = v76;
      v96 = v51;
      sub_1ADDCEDE0(&v89, &qword_1EB5BA9E8, &qword_1AE251DE0);
      *&v97 = v36;
      *(&v97 + 1) = v37;
      *&v98 = v38;
      *(&v98 + 1) = v39;
      *&v99 = v40;
      *(&v99 + 1) = v52;
      v100 = v76;
      v101 = v51;
      sub_1ADDCEDE0(&v97, &qword_1EB5BA9E8, &qword_1AE251DE0);
      v56 = v37;
      v57 = v36;
      v58 = 2;
      v26 = v53;
    }

    else
    {
      v89 = v36;
      v90 = v37;
      v91 = v38;
      v92 = v39;
      v93 = v40;
      v94 = v41;
      v95 = v50;
      v96 = v43;
      *&v82 = v38;
      *(&v82 + 1) = v39;
      v83 = v40;
      v84 = v41;
      v85 = v50;
      v86 = v43;
      v56 = v37;
      sub_1ADDCEE40(&v102, &v97, &qword_1EB5BA9E8, &qword_1AE251DE0);
      sub_1ADDCEE40(&v89, &v97, &qword_1EB5BA9E8, &qword_1AE251DE0);
      v53 = sub_1ADE1A9BC(v68 + 5, v36, v37, &v82, v18, a6, a7, v71);
      v59 = v38;
      v58 = v60;
      v26 = v61;
      *&v97 = v36;
      *(&v97 + 1) = v56;
      v57 = v36;
      *&v98 = v59;
      *(&v98 + 1) = v39;
      *&v99 = v40;
      *(&v99 + 1) = v75;
      v100 = v76;
      v101 = v51;
      sub_1ADDCEDE0(&v97, &qword_1EB5BA9E8, &qword_1AE251DE0);
    }

    v62 = v51;
    v74[1] = v73 + v58 - 1;
    v63 = v13[5];
    v13[7] -= 16;
    v64.i32[0] = v63;
    v64.i32[1] = v63 & ((1 << v77) - 1);
    v65 = vpaddl_u16(vpaddl_u8(vcnt_s8(v64)));
    v66 = (v80 + 16 * v65.u32[1]);
    memmove(v66 + 2, v66, 16 * (v65.u32[0] - v65.u32[1]));
    *v66 = v53;
    v66[1] = v58;
    v13[5] |= 1 << v77;
    *&v97 = v57;
    *(&v97 + 1) = v56;
    *&v98 = v70;
    *(&v98 + 1) = v69;
    *&v99 = v40;
    *(&v99 + 1) = v75;
    v100 = v76;
    v101 = v62;

    sub_1ADDCEDE0(&v97, &qword_1EB5BA9E8, &qword_1AE251DE0);
  }

  else
  {
    v46 = sub_1AE034800(v11, v77, v10, v18, a5, a6, a7, v13);
    v48 = v47;
    v26 = v49;

    *v8 = v46;
    v8[1] = v48;
  }

  return v26;
}

uint64_t sub_1AE034414(char a1, void (*a2)(char *), uint64_t a3)
{
  v6 = *v3;
  if (a1)
  {
    swift_beginAccess();
    v7 = v6[7];
    v8 = v7 >= 0x40;
    v9 = v7 - 64;
    if (v8)
    {
      v15 = v6[4];
      v16 = vcnt_s8(v15);
      v16.i16[0] = vaddlv_u8(v16);
      if (v15 == v6[5])
      {
        v17 = v15;
      }

      else
      {
        v17 = v16.u32[0];
      }

      v18 = v6 + v6[6] + -64 * v17;
      v6[7] = v9;
      v6[4] = v15 + 1;
      v6[5] = v15 + 1;
      a2(v18 - 32);
      v10 = v3[1];
      v3[1] = v10 + 1;
    }

    else
    {
      return sub_1AE034ECC(a2, a3, sub_1AE0351D8, sub_1AE035028);
    }
  }

  else
  {
    v11 = sub_1AE034BB0(a2, a3, *v3, v3[1], sub_1AE035378, sub_1AE035028);
    v13 = v12;
    v10 = v14;

    *v3 = v11;
    v3[1] = v13;
  }

  return v10;
}

_DWORD *sub_1AE034564(int a1, char a2, unsigned int a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t), uint64_t a7, _DWORD *a8)
{
  v13 = a8 + 8;
  v14 = &a8[4 * ~a3 + 8] + a8[6];
  v15 = *v14;
  v16 = *(v14 + 1);
  if (a4 == a5)
  {
    v17 = sub_1ADDDB860(40);
    *(v17 + 16) = 0x200000002;
    v18 = *(v17 + 24);
    *(v17 + 28) -= 40;
    *(v17 + 32) = a4;
    v19 = v17 + v18;
    *(v19 + 16) = v15;
    *(v19 + 24) = v16;
    sub_1ADDD86D8(v15, v16);
    sub_1ADDD86D8(v15, v16);
    sub_1ADDD86D8(v15, v16);
    a6(v19);
    sub_1ADDCC35C(v15, v16);
    v20 = 2;
  }

  else
  {
    sub_1ADDD86D8(*v14, *(v14 + 1));
    sub_1ADDD86D8(v15, v16);
    v17 = sub_1ADE1B784(a1 + 5, v15, v16, a4, a6, a7, a5, v23);
    v20 = v24;
  }

  sub_1ADDCC35C(v15, v16);
  v26 = a8[4];
  v27 = a8[5];
  if (v26 == v27)
  {
    if (v26 != 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!v26)
    {
      goto LABEL_12;
    }

    if (v27)
    {
      goto LABEL_12;
    }

    v25.i32[0] = a8[4];
    v25 = vcnt_s8(v25);
    v25.i16[0] = vaddlv_u8(v25);
    if (v25.i32[0] >= 2u)
    {
      goto LABEL_12;
    }
  }

  if ((*(v17 + 20) & *(v17 + 16)) == 0)
  {
LABEL_12:
    v25.i32[0] = v27 & ((1 << a2) - 1);
    v29 = vcnt_s8(v25);
    v29.i16[0] = vaddlv_u8(v29);
    v42 = v29.i32[0];
    v30 = v26 & ~(1 << a2);
    v41 = a3;
    v31 = v27 | (1 << a2);
    v29.i32[0] = v30;
    v32 = vcnt_s8(v29);
    v32.i16[0] = vaddlv_u8(v32);
    v33 = v32.u32[0];
    v32.i32[0] = v31;
    v34 = vcnt_s8(v32);
    v34.i16[0] = vaddlv_u8(v34);
    v40 = v13;
    v35 = v34.u32[0];
    v36 = 16 * (v34.i32[0] + v33);
    v28 = sub_1ADDDB860(16 * (v34.u32[0] + v33));
    v28[4] = v30;
    v28[5] = v31;
    v37 = v28[6];
    v28[7] -= v36;
    sub_1AE03544C((v28 + 8), v35, v28 + v37 + -16 * v33 + 32, v33, a8 + 4, v40, v42, v17, v38, v20, v41);
    goto LABEL_13;
  }

  v28 = v17;
LABEL_13:

  return v28;
}

_DWORD *sub_1AE034800(int a1, char a2, unsigned int a3, unint64_t a4, unint64_t a5, void (*a6)(unint64_t), uint64_t a7, _DWORD *a8)
{
  v45 = a8 + 8;
  v9 = (&a8[16 * ~a3 + 8] + a8[6]);
  v10 = v9[1];
  v62 = *v9;
  v63 = v10;
  v11 = v9[3];
  v64 = v9[2];
  v65 = v11;
  v12 = v62;
  v13 = v63;
  v14 = v64;
  v15 = v11;
  if (a4 == a5)
  {
    v49[0] = v62;
    v49[1] = v63;
    v49[2] = v64;
    v49[3] = v11;
    v16 = sub_1ADDDAC74(136);
    v17 = *(v16 + 24);
    *(v16 + 28) -= 136;
    *(v16 + 32) = a4;
    *(v16 + 16) = 0x200000002;
    v18 = v16 + 32 + v17;
    v40 = v18 - 128;
    v50 = v12;
    v51 = v13;
    v52 = v14;
    v53 = v15;
    *(v18 - 64) = v12;
    *(v18 - 48) = v13;
    *(v18 - 32) = v14;
    *(v18 - 16) = v15;
    sub_1ADDCEE40(&v62, &v58, &qword_1EB5BA9E8, &qword_1AE251DE0);
    sub_1ADDCEE40(v49, &v58, &qword_1EB5BA9E8, &qword_1AE251DE0);
    sub_1ADDCEE40(&v50, &v58, &qword_1EB5BA9E8, &qword_1AE251DE0);
    a6(v40);
    v54 = v12;
    v55 = v13;
    v56 = v14;
    v57 = v15;
    sub_1ADDCEDE0(&v54, &qword_1EB5BA9E8, &qword_1AE251DE0);
    v58 = v12;
    v59 = v13;
    v60 = v14;
    v61 = v15;
    sub_1ADDCEDE0(&v58, &qword_1EB5BA9E8, &qword_1AE251DE0);
    v20 = 2;
  }

  else
  {
    v54 = v62;
    v55 = v63;
    v56 = v64;
    v57 = v11;
    v50 = v63;
    v51 = v64;
    v52 = v11;
    sub_1ADDCEE40(&v62, &v58, &qword_1EB5BA9E8, &qword_1AE251DE0);
    sub_1ADDCEE40(&v54, &v58, &qword_1EB5BA9E8, &qword_1AE251DE0);
    v16 = sub_1ADE1A9BC(a1 + 5, v12, *(&v12 + 1), &v50, a4, a6, a7, a5);
    v20 = v23;
    v58 = v12;
    v59 = v13;
    v60 = v14;
    v61 = v15;
    sub_1ADDCEDE0(&v58, &qword_1EB5BA9E8, &qword_1AE251DE0);
  }

  v24 = a8[4];
  v25 = a8[5];
  if (v24 == v25)
  {
    if (v24 != 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!v24)
    {
      goto LABEL_12;
    }

    if (v25)
    {
      goto LABEL_12;
    }

    v19.i32[0] = a8[4];
    v19 = vcnt_s8(v19);
    v19.i16[0] = vaddlv_u8(v19);
    if (v19.i32[0] >= 2u)
    {
      goto LABEL_12;
    }
  }

  if ((*(v16 + 20) & *(v16 + 16)) == 0)
  {
LABEL_12:
    v27 = 1 << a2;
    v19.i32[0] = v25 & ((1 << a2) - 1);
    v28 = vcnt_s8(v19);
    v28.i16[0] = vaddlv_u8(v28);
    v43 = v28.i32[0];
    v29 = v24 & ~v27;
    v30 = v25 | v27;
    v28.i32[0] = v29;
    v31 = vcnt_s8(v28);
    v31.i16[0] = vaddlv_u8(v31);
    v32 = v31.u32[0];
    v31.i32[0] = v25 | v27;
    v33 = vcnt_s8(v31);
    v33.i16[0] = vaddlv_u8(v33);
    v34 = v33.u32[0];
    v35 = v32 << 6;
    v36 = (v32 << 6) + 16 * v33.i32[0];
    v26 = sub_1ADDDAC74(v35 + 16 * v33.u32[0]);
    v26[4] = v29;
    v26[5] = v30;
    v37 = v26[6];
    v26[7] -= v36;
    sub_1AE03574C((v26 + 8), v34, v26 + v37 - v35 + 32, v32, a8 + 4, v45, v43, v16, v38, v20, a3);
    goto LABEL_13;
  }

  v26 = v16;
LABEL_13:

  return v26;
}

int64_t sub_1AE034C0C(void (*a1)(int64_t), uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = 1 << a3;
  v10 = 1 << a6;
  v11 = sub_1ADDDB860(32);
  *(v11 + 16) = v9;
  *(v11 + 20) = v10;
  v12 = *(v11 + 24);
  *(v11 + 28) -= 32;
  a1(v11 + 32 + v12 - 16);
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  return v11;
}

int64_t sub_1AE034C98(void (*a1)(int64_t), uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = 1 << a3;
  v10 = 1 << a6;
  v11 = sub_1ADDDAC74(80);
  *(v11 + 16) = v9;
  *(v11 + 20) = v10;
  v12 = *(v11 + 24);
  *(v11 + 28) -= 80;
  a1(v11 + 32 + v12 - 64);
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  return v11;
}

int64_t sub_1AE034D24(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t))
{
  v8 = sub_1ADDDB860(40);
  *(v8 + 16) = 0x200000002;
  v9 = *(v8 + 24);
  *(v8 + 28) -= 40;
  *(v8 + 32) = a1;
  v10 = v8 + v9;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_1ADDD86D8(a2, a3);
  a4(v10);
  sub_1ADDCC35C(a2, a3);
  return v8;
}

int64_t sub_1AE034DBC(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void (*a5)(uint64_t))
{
  v10 = sub_1ADDDAC74(136);
  v11 = *(v10 + 24);
  *(v10 + 28) -= 136;
  *(v10 + 32) = a1;
  *(v10 + 16) = 0x200000002;
  v12 = v10 + 32 + v11;
  v13 = v12 - 128;
  v19[0] = a2;
  v19[1] = a3;
  v14 = a4[1];
  v20 = *a4;
  v21 = v14;
  v22 = a4[2];
  v15 = v20;
  v16 = v22;
  *(v12 - 64) = a2;
  *(v12 - 56) = a3;
  *(v12 - 48) = v15;
  *(v12 - 32) = v14;
  *(v12 - 16) = v16;
  sub_1ADDCEE40(v19, v23, &qword_1EB5BA9E8, &qword_1AE251DE0);
  a5(v13);
  v23[0] = a2;
  v23[1] = a3;
  v17 = a4[1];
  v24 = *a4;
  v25 = v17;
  v26 = a4[2];
  sub_1ADDCEDE0(v23, &qword_1EB5BA9E8, &qword_1AE251DE0);
  return v10;
}

uint64_t sub_1AE034ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v4[1];
  v6 = a4(*v4 + 16, *v4 + 32, v5, a1, a2, a3);
  v8 = v7;

  *v4 = v6;
  v4[1] = v8;
  return v5;
}

int64_t sub_1AE034F44(int64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(int64_t, unint64_t, int64_t, uint64_t *, uint64_t, uint64_t))
{
  if ((a3 - 0x7FFFFFFFFFFFFFFLL) >> 60 != 15)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = result;
  v11 = a3 + 1;
  v12 = *a2;
  v13 = 16 * (a3 + 1);
  result = sub_1ADDDB860(v13 | 8);
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v11))
  {
    *(result + 16) = v11;
    *(result + 20) = v11;
    v14 = *(result + 24);
    *(result + 28) -= v13 | 8;
    *(result + 32) = v12;
    v15 = result;
    a6(result + 32 - v13 + v14, v11, v7, a2, a4, a5);
    return v15;
  }

LABEL_7:
  __break(1u);
  return result;
}

int64_t sub_1AE035028(int64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(int64_t, unint64_t, int64_t, uint64_t *, uint64_t, uint64_t))
{
  if ((a3 - 0x1FFFFFFFFFFFFFFLL) >> 58 != 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = result;
  v11 = a3 + 1;
  v12 = *a2;
  v13 = (a3 + 1) << 6;
  result = sub_1ADDDAC74(v13 | 8);
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v11))
  {
    *(result + 16) = v11;
    *(result + 20) = v11;
    v14 = *(result + 24);
    *(result + 28) -= v13 | 8;
    *(result + 32) = v12;
    v15 = result;
    a6(result + 32 - v13 + v14, v11, v7, a2, a4, a5);
    return v15;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1AE03510C(uint64_t result, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = vcnt_s8(*a3);
  v5.i16[0] = vaddlv_u8(v5);
  if (*a3 == a3[1])
  {
    v6 = *a3;
  }

  else
  {
    v6 = v5.u32[0];
  }

  v7 = a2 != 0;
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = (result + 16 * v7);
  if (!result)
  {
    v9 = 0;
  }

  if (v6)
  {
    if (a2 - v7 >= v6)
    {
      v10 = a4 + a3[2];
      v11 = (v10 - 16 * v6);
      if (v10 <= v9 || v11 != v9)
      {
        v13 = result;
        v14 = a5;
        memmove(v9, v11, 16 * v6);
        result = v13;
        a5 = v14;
      }

      goto LABEL_14;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_14:
  if (result)
  {
    result = a5();
    *a3 = 0;
    a3[3] = a3[2];
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1AE0351D8(uint64_t result, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = vcnt_s8(*a3);
  v5.i16[0] = vaddlv_u8(v5);
  if (*a3 == a3[1])
  {
    v6 = *a3;
  }

  else
  {
    v6 = v5.u32[0];
  }

  v7 = a2 != 0;
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = (result + (v7 << 6));
  if (!result)
  {
    v9 = 0;
  }

  if (v6)
  {
    if (a2 - v7 >= v6)
    {
      v10 = a4 + a3[2];
      v11 = (v10 - (v6 << 6));
      if (v10 <= v9 || v11 != v9)
      {
        v13 = result;
        v14 = a5;
        memmove(v9, v11, v6 << 6);
        result = v13;
        a5 = v14;
      }

      goto LABEL_14;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_14:
  if (result)
  {
    result = a5();
    *a3 = 0;
    a3[3] = a3[2];
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1AE0352A4(uint64_t result, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = vcnt_s8(*a3);
  v5.i16[0] = vaddlv_u8(v5);
  if (*a3 == a3[1])
  {
    v6 = *a3;
  }

  else
  {
    v6 = v5.u32[0];
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!v6)
  {
    goto LABEL_8;
  }

  if (a2 - (a2 != 0) < v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCE8, &qword_1AE251D98);
  swift_arrayInitWithCopy();
  result = v8;
LABEL_8:
  if (result)
  {
    return a5();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1AE035378(uint64_t result, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = vcnt_s8(*a3);
  v5.i16[0] = vaddlv_u8(v5);
  if (*a3 == a3[1])
  {
    v6 = *a3;
  }

  else
  {
    v6 = v5.u32[0];
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!v6)
  {
    goto LABEL_8;
  }

  if (a2 - (a2 != 0) < v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9E8, &qword_1AE251DE0);
  swift_arrayInitWithCopy();
  result = v8;
LABEL_8:
  if (result)
  {
    return a5();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1AE03544C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, unsigned int a7, uint64_t a8, int8x8_t a9, uint64_t a10, unsigned int a11)
{
  v12 = result;
  v13 = a11;
  v14 = a10;
  v16 = *a5;
  v15 = a5[1];
  if (*a5 == v15)
  {
    v17 = 0;
    v18 = a7;
    v19 = -a7;
    if (a7)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }
  }

  else
  {
    a9.i32[0] = a5[1];
    v20 = vcnt_s8(a9);
    v20.i16[0] = vaddlv_u8(v20);
    v17 = v20.u32[0];
    v20.i32[0] = *a5;
    v21 = vcnt_s8(v20);
    v21.i16[0] = vaddlv_u8(v21);
    v16 = v21.i32[0];
    if (a7)
    {
      v18 = a7;
      if (v17 >= a7)
      {
        v22 = a7;
      }

      else
      {
        v22 = v17;
      }

      if (!v15)
      {
        goto LABEL_50;
      }

      if ((a2 & 0x8000000000000000) == 0 && v22 > a2)
      {
        goto LABEL_59;
      }

      v23 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCF0, &unk_1AE251DA0);
      result = swift_arrayInitWithCopy();
      a2 = v23;
      v14 = a10;
      v19 = v17 - v18;
      if ((v17 - v18) < 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v18 = 0;
      v19 = v17;
    }
  }

  if (-v19 < -a2 && -a2 < 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = a2 - v19;
  }

  if (a2 < v25)
  {
    goto LABEL_51;
  }

  if (v17 < v18)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v17 != v18)
  {
    if (a2 - v25 < v19)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      return result;
    }

    v26 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCF0, &unk_1AE251DA0);
    result = swift_arrayInitWithCopy();
    v14 = v26;
    v13 = a11;
  }

  v27 = (v12 + 16 * v18);
  *v27 = a8;
  v27[1] = v14;
  v28 = a4 - v13;
  if (-v13 < -a4 && -a4 < 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = a4 - v13;
  }

  if (a4 < v30)
  {
    goto LABEL_53;
  }

  v31 = v16 - v13;
  if (v16 < v13)
  {
    v31 = 0;
  }

  v32 = v16 - v31;
  if (v16 < v31)
  {
    goto LABEL_54;
  }

  if (v32 > 0)
  {
    if (a4 - v30 < v32)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCE8, &qword_1AE251D98);
    result = swift_arrayInitWithCopy();
  }

  if ((v28 & 0x8000000000000000) != 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (a4 != v13)
  {
    v33 = v28 >= v16 ? v16 : a4 - v13;
    if (v33)
    {
      if ((a4 & 0x8000000000000000) == 0 && v33 > a4)
      {
        goto LABEL_58;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCE8, &qword_1AE251D98);
      swift_arrayInitWithCopy();
    }
  }
}

uint64_t sub_1AE03574C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, unsigned int a7, uint64_t a8, int8x8_t a9, uint64_t a10, unsigned int a11)
{
  v12 = result;
  v13 = a11;
  v14 = a10;
  v16 = *a5;
  v15 = a5[1];
  if (*a5 == v15)
  {
    v17 = 0;
    v18 = a7;
    v19 = -a7;
    if (a7)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }
  }

  else
  {
    a9.i32[0] = a5[1];
    v20 = vcnt_s8(a9);
    v20.i16[0] = vaddlv_u8(v20);
    v17 = v20.u32[0];
    v20.i32[0] = *a5;
    v21 = vcnt_s8(v20);
    v21.i16[0] = vaddlv_u8(v21);
    v16 = v21.i32[0];
    if (a7)
    {
      v18 = a7;
      if (v17 >= a7)
      {
        v22 = a7;
      }

      else
      {
        v22 = v17;
      }

      if (!v15)
      {
        goto LABEL_50;
      }

      if ((a2 & 0x8000000000000000) == 0 && v22 > a2)
      {
        goto LABEL_59;
      }

      v23 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCD28, &qword_1AE251DF8);
      result = swift_arrayInitWithCopy();
      a2 = v23;
      v14 = a10;
      v19 = v17 - v18;
      if ((v17 - v18) < 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v18 = 0;
      v19 = v17;
    }
  }

  if (-v19 < -a2 && -a2 < 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = a2 - v19;
  }

  if (a2 < v25)
  {
    goto LABEL_51;
  }

  if (v17 < v18)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v17 != v18)
  {
    if (a2 - v25 < v19)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      return result;
    }

    v26 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCD28, &qword_1AE251DF8);
    result = swift_arrayInitWithCopy();
    v14 = v26;
    v13 = a11;
  }

  v27 = (v12 + 16 * v18);
  *v27 = a8;
  v27[1] = v14;
  v28 = a4 - v13;
  if (-v13 < -a4 && -a4 < 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = a4 - v13;
  }

  if (a4 < v30)
  {
    goto LABEL_53;
  }

  v31 = v16 - v13;
  if (v16 < v13)
  {
    v31 = 0;
  }

  v32 = v16 - v31;
  if (v16 < v31)
  {
    goto LABEL_54;
  }

  if (v32 > 0)
  {
    if (a4 - v30 < v32)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9E8, &qword_1AE251DE0);
    result = swift_arrayInitWithCopy();
  }

  if ((v28 & 0x8000000000000000) != 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (a4 != v13)
  {
    v33 = v28 >= v16 ? v16 : a4 - v13;
    if (v33)
    {
      if ((a4 & 0x8000000000000000) == 0 && v33 > a4)
      {
        goto LABEL_58;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9E8, &qword_1AE251DE0);
      swift_arrayInitWithCopy();
    }
  }
}

int64_t sub_1AE035A4C(int64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 - 0x800000000000000) >> 60 != 15)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = result;
  v7 = *(a3 + 32);
  v8 = 16 * a4;
  v9 = (16 * a4) | 8;
  result = sub_1ADDDB860((16 * a4) | 8);
  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(a4))
  {
    *(result + 16) = a4;
    *(result + 20) = a4;
    v10 = *(result + 24);
    *(result + 28) -= v9;
    *(result + 32) = v7;
    v11 = result;
    sub_1AE035BD4(result + 32 - v8 + v10, a4, v6, a2);
    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

int64_t sub_1AE035B10(int64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 - 0x200000000000000) >> 58 != 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = result;
  v7 = *(a3 + 32);
  v8 = a4 << 6;
  v9 = (a4 << 6) | 8;
  result = sub_1ADDDAC74((a4 << 6) | 8);
  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(a4))
  {
    *(result + 16) = a4;
    *(result + 20) = a4;
    v10 = *(result + 24);
    *(result + 28) -= v9;
    *(result + 32) = v7;
    v11 = result;
    sub_1AE035C7C(result + 32 - v8 + v10, a4, v6, a2);
    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1AE035BD4(uint64_t result, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v4 = vcnt_s8(*a3);
  v4.i16[0] = vaddlv_u8(v4);
  if (*a3 == a3[1])
  {
    v5 = *a3;
  }

  else
  {
    v5 = v4.u32[0];
  }

  if (v5)
  {
    if (v5 > a2)
    {
      __break(1u);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCE8, &qword_1AE251D98);

      return swift_arrayInitWithCopy();
    }
  }

  return v6;
}

uint64_t sub_1AE035C7C(uint64_t result, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v4 = vcnt_s8(*a3);
  v4.i16[0] = vaddlv_u8(v4);
  if (*a3 == a3[1])
  {
    v5 = *a3;
  }

  else
  {
    v5 = v4.u32[0];
  }

  if (v5)
  {
    if (v5 > a2)
    {
      __break(1u);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9E8, &qword_1AE251DE0);

      return swift_arrayInitWithCopy();
    }
  }

  return v6;
}

double sub_1AE035D24@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v8 = a1;
  if (BYTE4(a5) != a1)
  {
    v19 = a3 >> a1;
    v20 = *v6;
    sub_1AE03637C(*v6 + 32, (a3 >> a1) & 0x1F, a1, a2, a3, a4, a5 & 0x1FFFFFFFFFFLL, &v89);
    v85 = v89;
    v86 = v90;
    v87 = v91;
    v88 = v92;
    v21 = v6[1];
    v6[1] = v21 - 1;
    if (v87)
    {
      v83 = v91;
      v84 = v92;
      v22.i32[1] = DWORD1(v90);
      v81 = v89;
      v82 = v90;
      if (!v20[4] && v20[5] && v8 && (v22.i32[0] = v20[5], v23 = vcnt_s8(v22), v23.i16[0] = vaddlv_u8(v23), v23.i32[0] < 2u))
      {
        sub_1ADDCEE40(&v81, &v77, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v24 = *sub_1AE23C1EC();

        *v6 = v24;
        v6[1] = 0;
        v25 = v86;
        *a6 = v85;
        a6[1] = v25;
        v26 = v88;
        a6[2] = v87;
        a6[3] = v26;
      }

      else
      {
        v6[1] = v21 - 2;
        swift_beginAccess();
        if (v20[7] > 0x2Fu)
        {
          v77 = v85;
          v78 = v86;
          v79 = v87;
          v80 = v88;
          sub_1ADDCEE40(&v77, v74, &qword_1EB5BA9E8, &qword_1AE251DE0);
        }

        else
        {
          v77 = v85;
          v78 = v86;
          v79 = v87;
          v80 = v88;
          sub_1ADDCEE40(&v77, v74, &qword_1EB5BA9E8, &qword_1AE251DE0);
          sub_1AE0369FC(48);
        }

        v39 = *v6;
        v70 = (*v6 + 16);
        v40 = *v6 + 32;
        if (*v70 == *(*v6 + 20))
        {
          v41 = -1;
        }

        else
        {
          v27.i32[0] = *(*v6 + 20);
          v42 = vcnt_s8(v27);
          v42.i16[0] = vaddlv_u8(v42);
          v41 = v42.u32[0] - 1;
        }

        v39[7] += 16;
        v43 = (v40 + 16 * (v19 & 0x1F));
        v64 = v43[1];
        v68 = (v39 + 8);
        memmove(v43, v43 + 2, 16 * (v41 - (v19 & 0x1F)));
        v66 = a2 >> (v8 & 0x3F);
        v39[5] &= ~(1 << v66);

        v44 = v6[1];
        v45 = v81;
        v46 = v82;
        v47 = v83;
        v49 = *(&v84 + 1);
        v48 = v84;
        v50.i32[0] = v39[4] & ((1 << v66) - 1);
        v51 = vcnt_s8(v50);
        v51.i16[0] = vaddlv_u8(v51);
        v63 = v51.i32[0];
        v72[0] = v81;
        v72[1] = v82;
        v72[2] = v83;
        v72[3] = v84;
        v6[1] = v44 - v64 + 1;
        v73[0] = v45;
        v73[1] = v46;
        v73[2] = v47;
        v73[3] = __PAIR128__(v49, v48);
        v52 = v48;
        sub_1ADDCEE40(&v85, &v77, &qword_1EB5BA980, &qword_1AE245630);
        sub_1ADDCEE40(v72, &v77, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v53 = sub_1ADE1A914(v63, v66 & 0x1F, v70, v68);
        *v53 = v45;
        *(v53 + 1) = v46;
        *(v53 + 2) = v47;
        *(v53 + 6) = v52;
        *(v53 + 7) = v49;
        sub_1ADDCEE40(v73, &v77, &qword_1EB5BA9E8, &qword_1AE251DE0);
        sub_1ADDCEDE0(&v85, &qword_1EB5BA980, &qword_1AE245630);
        v74[0] = v45;
        v74[1] = v46;
        v74[2] = v47;
        v75 = v52;
        v76 = v49;
        sub_1ADDCEDE0(v74, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v77 = v45;
        v78 = v46;
        v79 = v47;
        v80 = __PAIR128__(v49, v52);
        sub_1ADDCEDE0(&v77, &qword_1EB5BA9E8, &qword_1AE251DE0);
        *a6 = 0u;
        a6[1] = 0u;
        a6[2] = 0u;
        a6[3] = 0u;
      }
    }

    else
    {
      v33 = v20[5];
      if (v20[4])
      {
        v34 = 1;
      }

      else
      {
        v34 = v33.i32[0] == 0;
      }

      v35 = vcnt_s8(v33);
      v35.i16[0] = vaddlv_u8(v35);
      if (!v34 && v35.i32[0] < 2u)
      {
        v37 = *(v20 + 4);
        if ((*(v37 + 20) & *(v37 + 16)) != 0)
        {
          v20[7] += 16;
          v38 = *(v20 + 5);
          memmove(v20 + 8, v20 + 12, (16 * v35.i32[0]) - 16);
          v20[5] = 0;

          *v6 = v37;
          v6[1] = v38;
        }
      }

      a6[2] = 0u;
      a6[3] = 0u;
      *a6 = 0u;
      a6[1] = 0u;
    }

    v81 = v89;
    v82 = v90;
    v83 = v91;
    v84 = v92;
    sub_1ADDCEDE0(&v81, &qword_1EB5BA980, &qword_1AE245630);
    return result;
  }

  v10 = *v6;
  --v6[1];
  LODWORD(v11) = *(v10 + 16);
  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  if (v11 == *(v10 + 20))
  {
    v11 = v11;
  }

  else
  {
    v11 = v12.u32[0];
  }

  v13 = (v10 + 32);
  v14 = *(v10 + 24);
  *(v10 + 28) += 64;
  memmove((v10 + 32 - (v11 << 6) + v14 + 64), (v10 + 32 - (v11 << 6) + v14), (v11 + (~a5 | 0x3FFFFFF00000000)) << 6);
  v17 = *(v10 + 16);
  v16 = *(v10 + 20);
  if ((v16 & v17) != 0)
  {
    v18 = v17 - 1;
    *(v10 + 20) = v18;
    v16 = v18;
  }

  else
  {
    v18 = v17 & ((-1 << (a2 >> v8)) - 1);
  }

  *(v10 + 16) = v18;
  v15.i32[0] = v16;
  v28 = vcnt_s8(v15);
  v28.i16[0] = vaddlv_u8(v28);
  if (v16)
  {
    v29 = v18 == 0;
  }

  else
  {
    v29 = 0;
  }

  if (!v29 || v28.i32[0] > 1u)
  {
LABEL_25:
    if (v18 == v16)
    {
      goto LABEL_26;
    }

    goto LABEL_45;
  }

  v31 = *v13;
  if ((*(*v13 + 20) & *(*v13 + 16)) != 0)
  {
    *(v10 + 28) += 16;
    v32 = *(v10 + 40);
    memmove((v10 + 32), (v10 + 48), (16 * v28.i32[0]) - 16);
    *(v10 + 20) = 0;

    *v6 = v31;
    v6[1] = v32;
    v18 = *(v31 + 16);
    v16 = *(v31 + 20);
    v10 = v31;
    goto LABEL_25;
  }

  v18 = 0;
  if (!v16)
  {
LABEL_26:
    if (v16 != 1)
    {
LABEL_54:
      result = 0.0;
      a6[2] = 0u;
      a6[3] = 0u;
      *a6 = 0u;
      a6[1] = 0u;
      return result;
    }

    goto LABEL_48;
  }

LABEL_45:
  if (!v18)
  {
    goto LABEL_54;
  }

  if (v16)
  {
    goto LABEL_54;
  }

  v28.i32[0] = v18;
  v55 = vcnt_s8(v28);
  v55.i16[0] = vaddlv_u8(v55);
  if (v55.i32[0] >= 2u)
  {
    goto LABEL_54;
  }

LABEL_48:
  if (!v8)
  {
    if ((v16 & v18) != 0)
    {
      v62 = *(v10 + 28);
      *(v10 + 16) = 1 << *(v10 + 32);
      *(v10 + 20) = 0;
      *(v10 + 28) = v62 + 8;
    }

    goto LABEL_54;
  }

  v6[1] = 0;
  v56 = *(v10 + 16);
  v57 = vcnt_s8(v56);
  v57.i16[0] = vaddlv_u8(v57);
  if (v56 != *(v10 + 20))
  {
    v56 = v57.i32[0];
  }

  v58 = v56 << 6;
  v59 = v10 - v58 + *(v10 + 24);
  *(v10 + 28) += 64;
  v60 = v58 - 64;
  v61 = (v59 + 32 + v58 - 64);
  v69 = v61[1];
  v71 = *v61;
  v65 = v61[3];
  v67 = v61[2];
  memmove((v59 + 96), (v59 + 32), v60);
  *(v10 + 16) = 0;
  *(v10 + 28) = *(v10 + 24);
  *a6 = v71;
  a6[1] = v69;
  result = *&v65;
  a6[2] = v67;
  a6[3] = v65;
  return result;
}

void sub_1AE03637C(uint64_t a1@<X1>, unsigned int a2@<W2>, int a3@<W3>, unint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t a7@<X7>, _OWORD *a8@<X8>)
{
  v8 = BYTE4(a7);
  v11 = HIDWORD(a7);
  v12 = a3 + 5;
  v13 = (a1 + 16 * a2);
  if ((a3 + 5) != BYTE4(a7))
  {
    v20 = a5 >> (a3 + 5);
    sub_1AE03637C(*v13 + 32, v20 & 0x1F, a3 + 5, a4, a5, a6, a7 & 0x1FFFFFFFFFFLL, &v103);
    v99 = v103;
    v100 = v104;
    v101 = v105;
    v102 = v106;
    v21 = v13[1];
    v13[1] = v21 - 1;
    if (v101)
    {
      v97 = v105;
      v98 = v106;
      v22.i32[1] = DWORD1(v104);
      v95 = v103;
      v96 = v104;
      v23 = *v13;
      if (!*(*v13 + 16) && v23[5] && v12 && (v22.i32[0] = v23[5], v24 = vcnt_s8(v22), v24.i16[0] = vaddlv_u8(v24), v24.i32[0] < 2u))
      {
        sub_1ADDCEE40(&v95, &v91, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v25 = *sub_1AE23C1EC();

        *v13 = v25;
        v13[1] = 0;
        v26 = v100;
        *a8 = v99;
        a8[1] = v26;
        v27 = v102;
        a8[2] = v101;
        a8[3] = v27;
      }

      else
      {
        v13[1] = v21 - 2;
        swift_beginAccess();
        if (v23[7] > 0x2Fu)
        {
          v91 = v99;
          v92 = v100;
          v93 = v101;
          v94 = v102;
          sub_1ADDCEE40(&v91, &v85, &qword_1EB5BA9E8, &qword_1AE251DE0);
        }

        else
        {
          v91 = v99;
          v92 = v100;
          v93 = v101;
          v94 = v102;
          sub_1ADDCEE40(&v91, &v85, &qword_1EB5BA9E8, &qword_1AE251DE0);
          sub_1AE0369FC(48);
        }

        v44 = a4 >> (v12 & 0x3F);
        v45 = *v13;
        v46 = *(*v13 + 16);
        v80 = (*v13 + 16);
        v47 = *v13 + 32;
        v48 = *(*v13 + 20);
        v107 = a8;
        if (v46 == v48)
        {
          v49 = -1;
        }

        else
        {
          v28.i32[0] = v48;
          v50 = vcnt_s8(v28);
          v50.i16[0] = vaddlv_u8(v50);
          v49 = v50.u32[0] - 1;
        }

        v45[7] += 16;
        v51 = (v47 + 16 * (v20 & 0x1F));
        v52 = v51[1];
        v78 = (v45 + 8);
        memmove(v51, v51 + 2, 16 * (v49 - (v20 & 0x1F)));
        v76 = v44;
        v53 = 1 << v44;
        v45[5] &= ~v53;

        v54 = v13[1] - v52;
        v13[1] = v54;
        v55 = v95;
        v57 = *(&v96 + 1);
        v56 = v96;
        v58 = v97;
        v59 = *(&v98 + 1);
        v60 = v98;
        v61.i32[0] = v45[4] & (v53 - 1);
        v62 = vcnt_s8(v61);
        v62.i16[0] = vaddlv_u8(v62);
        v75 = v62.i32[0];
        v83[0] = v95;
        v83[1] = v96;
        v83[2] = v97;
        v83[3] = v98;
        v13[1] = v54 + 1;
        v84[0] = v55;
        v84[1] = __PAIR128__(v57, v56);
        v63 = v56;
        v84[2] = v58;
        v84[3] = __PAIR128__(v59, v60);
        v64 = v59;
        sub_1ADDCEE40(&v99, &v91, &qword_1EB5BA980, &qword_1AE245630);
        sub_1ADDCEE40(v83, &v91, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v65 = sub_1ADE1A914(v75, v76 & 0x1F, v80, v78);
        *v65 = v55;
        *(v65 + 2) = v63;
        *(v65 + 3) = v57;
        *(v65 + 2) = v58;
        *(v65 + 6) = v60;
        *(v65 + 7) = v64;
        sub_1ADDCEE40(v84, &v91, &qword_1EB5BA9E8, &qword_1AE251DE0);
        sub_1ADDCEDE0(&v99, &qword_1EB5BA980, &qword_1AE245630);
        v85 = v55;
        v86 = v63;
        v87 = v57;
        v88 = v58;
        v89 = v60;
        v90 = v64;
        sub_1ADDCEDE0(&v85, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v91 = v55;
        v92 = __PAIR128__(v57, v63);
        v93 = v58;
        v94 = __PAIR128__(v64, v60);
        sub_1ADDCEDE0(&v91, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v66 = v107;
        *v107 = 0u;
        v66[1] = 0u;
        v66[2] = 0u;
        v66[3] = 0u;
      }
    }

    else
    {
      v37 = *v13;
      v38 = *(*v13 + 20);
      if (*(*v13 + 16))
      {
        v39 = 1;
      }

      else
      {
        v39 = v38.i32[0] == 0;
      }

      v40 = vcnt_s8(v38);
      v40.i16[0] = vaddlv_u8(v40);
      if (!v39 && v40.i32[0] < 2u)
      {
        v42 = *(v37 + 32);
        if ((*(v42 + 20) & *(v42 + 16)) != 0)
        {
          *(v37 + 28) += 16;
          v43 = *(v37 + 40);
          memmove((v37 + 32), (v37 + 48), (16 * v40.i32[0]) - 16);
          *(v37 + 20) = 0;

          *v13 = v42;
          v13[1] = v43;
        }
      }

      a8[2] = 0u;
      a8[3] = 0u;
      *a8 = 0u;
      a8[1] = 0u;
    }

    v95 = v103;
    v96 = v104;
    v97 = v105;
    v98 = v106;
    sub_1ADDCEDE0(&v95, &qword_1EB5BA980, &qword_1AE245630);
    return;
  }

  v14 = *v13;
  --v13[1];
  LODWORD(v15) = v14[4];
  v16 = vcnt_s8(v15);
  v16.i16[0] = vaddlv_u8(v16);
  if (v15 == v14[5])
  {
    v15 = v15;
  }

  else
  {
    v15 = v16.u32[0];
  }

  v17 = v14 + v14[6] + -64 * v15;
  v14[7] += 64;
  memmove(v17 + 96, v17 + 32, (v15 + (~a7 | 0x3FFFFFF00000000)) << 6);
  v18 = v14[4];
  if ((v14[5] & v18) != 0)
  {
    v19 = v18 - 1;
    v14[5] = v19;
  }

  else
  {
    v19 = v18 & ((-1 << (a4 >> v11)) - 1);
  }

  v14[4] = v19;
  v29 = *v13;
  v31 = *(*v13 + 16);
  v30 = *(*v13 + 20);
  v32 = vcnt_s8(v30);
  v32.i16[0] = vaddlv_u8(v32);
  if (v31)
  {
    v33 = 1;
  }

  else
  {
    v33 = v30 == 0;
  }

  if (v33 || v32.i32[0] > 1u)
  {
LABEL_25:
    if (v31 == v30)
    {
      goto LABEL_26;
    }

    goto LABEL_45;
  }

  v35 = *(v29 + 32);
  if ((*(v35 + 20) & *(v35 + 16)) != 0)
  {
    *(v29 + 28) += 16;
    v36 = *(v29 + 40);
    memmove((v29 + 32), (v29 + 48), (16 * v32.i32[0]) - 16);
    *(v29 + 20) = 0;
    *v13 = v35;
    v13[1] = v36;

    v29 = *v13;
    v31 = *(*v13 + 16);
    v30 = *(*v13 + 20);
    goto LABEL_25;
  }

  v31 = 0;
  if (!v30)
  {
LABEL_26:
    if (v30 != 1)
    {
LABEL_54:
      a8[2] = 0u;
      a8[3] = 0u;
      *a8 = 0u;
      a8[1] = 0u;
      return;
    }

    goto LABEL_48;
  }

LABEL_45:
  if (!v31)
  {
    goto LABEL_54;
  }

  if (v30)
  {
    goto LABEL_54;
  }

  v32.i32[0] = v31;
  v67 = vcnt_s8(v32);
  v67.i16[0] = vaddlv_u8(v67);
  if (v67.i32[0] >= 2u)
  {
    goto LABEL_54;
  }

LABEL_48:
  if (!v8)
  {
    if ((v30 & v31) != 0)
    {
      v74 = *(v29 + 28);
      *(v29 + 16) = 1 << *(v29 + 32);
      *(v29 + 20) = 0;
      *(v29 + 28) = v74 + 8;
    }

    goto LABEL_54;
  }

  v13[1] = 0;
  v68 = *(v29 + 16);
  v69 = vcnt_s8(v68);
  v69.i16[0] = vaddlv_u8(v69);
  if (v68 != *(v29 + 20))
  {
    v68 = v69.i32[0];
  }

  v70 = v68 << 6;
  v71 = v29 - v70 + *(v29 + 24);
  *(v29 + 28) += 64;
  v72 = v70 - 64;
  v73 = (v71 + 32 + v70 - 64);
  v81 = v73[1];
  v82 = *v73;
  v77 = v73[3];
  v79 = v73[2];
  memmove((v71 + 96), (v71 + 32), v72);
  *(v29 + 16) = 0;
  *(v29 + 28) = *(v29 + 24);
  *a8 = v82;
  a8[1] = v81;
  a8[2] = v79;
  a8[3] = v77;
}

void sub_1AE0369FC(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *v1 + 2;
  if (((*v1)[2].i32[1] & v5->i32[0]) != 0)
  {
    v6 = sub_1AE036A88(v5, &v4[4], v3);
  }

  else
  {
    v6 = sub_1ADDFB30C(v5, &v4[4], v3, a1, sub_1AE036B4C);
  }

  v8 = v6;
  v9 = v7;

  *v1 = v8;
  v1[1] = v9;
}

int64_t sub_1AE036A88(int64_t result, uint64_t *a2, unint64_t a3)
{
  if ((a3 - 0x200000000000000) >> 58 != 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  v6 = *a2;
  v7 = a3 << 6;
  v8 = (a3 << 6) | 8;
  result = sub_1ADDDAC74((a3 << 6) | 8);
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(a3))
  {
    *(result + 16) = a3;
    *(result + 20) = a3;
    v9 = *(result + 24);
    *(result + 28) -= v8;
    *(result + 32) = v6;
    v10 = result;
    sub_1AE036C40((result + 32 - v7 + v9), a3, v5, a2);
    return v10;
  }

LABEL_7:
  __break(1u);
  return result;
}

char *sub_1AE036B4C(char *result, uint64_t a2, char *__dst, uint64_t a4, unsigned int *a5, char *__src, int8x8_t a7)
{
  v8 = a5[1];
  if (*a5 != v8 && v8 != 0)
  {
    a7.i32[0] = a5[1];
    v15 = vcnt_s8(a7);
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] > a2)
    {
      goto LABEL_22;
    }

    if (result != __src || &__src[16 * v15.u32[0]] <= result)
    {
      v16 = __dst;
      v17 = __src;
      v18 = a4;
      result = memmove(result, __src, 16 * v15.u32[0]);
      a4 = v18;
      __src = v17;
      __dst = v16;
    }
  }

  LODWORD(v10) = *a5;
  v11 = vcnt_s8(*a5);
  v11.i16[0] = vaddlv_u8(v11);
  if (*a5 == a5[1])
  {
    v10 = v10;
  }

  else
  {
    v10 = v11.u32[0];
  }

  if (!v10)
  {
    goto LABEL_16;
  }

  if (v10 <= a4)
  {
    v12 = &__src[a5[2]];
    v13 = &v12[-64 * v10];
    if (v12 <= __dst || v13 != __dst)
    {
      result = memmove(__dst, v13, v10 << 6);
    }

LABEL_16:
    *a5 = 0;
    a5[3] = a5[2];
    return result;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void *sub_1AE036C40(void *result, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  LODWORD(v4) = *a3;
  v5 = vcnt_s8(*a3);
  v5.i16[0] = vaddlv_u8(v5);
  if (*a3 == a3[1])
  {
    v4 = v4;
  }

  else
  {
    v4 = v5.u32[0];
  }

  if (!v4)
  {
LABEL_11:
    *a3 = 0;
    a3[3] = a3[2];
    return result;
  }

  if (v4 <= a2)
  {
    v6 = a4 + a3[2];
    v7 = (v6 - (v4 << 6));
    if (v6 <= result || v7 != result)
    {
      v9 = a3;
      result = memmove(result, v7, v4 << 6);
      a3 = v9;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_1AE036CC4(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v12 = *v5;
    v13 = (*v5 + 32);
    v14 = sub_1AE033138(a1, a2, a3, a4, (*v5 + 16), v13, v11);
    if (v14 == 2)
    {
      sub_1ADEDA0C8(&v170);
      v15 = v175;
      *(a5 + 64) = v174;
      *(a5 + 80) = v15;
      v16 = *v177;
      *(a5 + 96) = v176;
      *(a5 + 112) = v16;
      v17 = v171;
      *a5 = v170;
      *(a5 + 16) = v17;
      v18 = v172;
      v19 = v173;
LABEL_6:
      *(a5 + 32) = v18;
      *(a5 + 48) = v19;
      return;
    }

    v111 = a4 >> a1;
    if (v14)
    {
      v108 = v5;
      v105 = HIDWORD(v14);
      sub_1AE036CC4((a1 + 5), a2, a3, a4, &v155);
      v151 = v158[1];
      v152 = v159;
      v153 = v160;
      v154[0] = v161;
      v147 = v155;
      v148 = v156;
      v149 = v157;
      v150 = v158[0];
      v170 = v155;
      v171 = v156;
      v172 = v157;
      v173 = v158[0];
      v174 = v158[1];
      v175 = v159;
      v176 = v160;
      *v177 = v161;
      if (sub_1ADE23F54(&v170) == 1)
      {
        v143 = v158[1];
        v144 = v159;
        v145 = v160;
        v146 = v161;
        v139 = v155;
        v140 = v156;
        v141 = v157;
        v142 = v158[0];
        sub_1ADDCEDE0(&v139, &qword_1EB5BA978, &qword_1AE251DD0);
        v23 = v152;
        *(a5 + 64) = v151;
        *(a5 + 80) = v23;
        v24 = v154[0];
        *(a5 + 96) = v153;
        *(a5 + 112) = v24;
        v25 = v148;
        *a5 = v147;
        *(a5 + 16) = v25;
        v18 = v149;
        v19 = v150;
        goto LABEL_6;
      }

      v141 = v149;
      v142 = v150;
      v145 = v153;
      v146 = v154[0];
      v143 = v151;
      v144 = v152;
      v42.i32[1] = DWORD1(v148);
      v139 = v147;
      v140 = v148;
      v43 = v5[1];
      v5[1] = v43 - 1;
      v45 = *(v12 + 16);
      v44 = *(v12 + 20);
      if (v145)
      {
        if (!v45 && v44 && (v44 & (v44 - 1)) == 0 && a1)
        {
          sub_1ADDCEE40(&v147, &v131, &qword_1EB5BA978, &qword_1AE251DD0);
          sub_1ADDCEE40(&v143, &v131, &qword_1EB5BA980, &qword_1AE245630);
          v46 = *sub_1AE23C1EC();

          *v108 = v46;
          v108[1] = 0;
          v110 = v144;
          v112 = v143;
          v103 = v146;
          v107 = v145;
LABEL_59:
          v135 = v158[1];
          v136 = v159;
          v137 = v160;
          v138 = v161;
          v131 = v155;
          v132 = v156;
          v133 = v157;
          v134 = v158[0];
          sub_1ADDCEDE0(&v131, &qword_1EB5BA978, &qword_1AE251DD0);
          v87 = v140;
          *a5 = v139;
          *(a5 + 16) = v87;
          v88 = v142;
          *(a5 + 32) = v141;
          *(a5 + 48) = v88;
          *(a5 + 64) = v112;
          *(a5 + 80) = v110;
          *(a5 + 96) = v107;
          *(a5 + 112) = v103;
          Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(a5);
          v30 = &qword_1EB5BA980;
          v31 = &qword_1AE245630;
          v32 = &v143;
          goto LABEL_60;
        }

        v5[1] = v43 - 2;
        swift_beginAccess();
        if (*(v12 + 28) > 0x2Fu)
        {
          sub_1ADDCEE40(&v147, &v131, &qword_1EB5BA978, &qword_1AE251DD0);
          sub_1ADDCEE40(&v143, &v131, &qword_1EB5BA980, &qword_1AE245630);
        }

        else
        {
          sub_1ADDCEE40(&v147, &v131, &qword_1EB5BA978, &qword_1AE251DD0);
          sub_1ADDCEE40(&v143, &v131, &qword_1EB5BA980, &qword_1AE245630);
          sub_1AE0369FC(48);
        }

        v75 = v143;
        v76 = *(&v144 + 1);
        v104 = v145;
        v99 = v144;
        v101 = *(&v145 + 1);
        v77 = v146;
        v78 = *v5;
        v97 = (*v5 + 16);
        v79 = *v5 + 32;
        if (*v97 == *(*v5 + 20))
        {
          v80 = -1;
        }

        else
        {
          v49.i32[0] = *(*v5 + 20);
          v81 = vcnt_s8(v49);
          v81.i16[0] = vaddlv_u8(v81);
          v80 = v81.u32[0] - 1;
        }

        v78[7] += 16;
        v82 = (v79 + 16 * v105);
        v93 = v82[1];
        memmove(v82, v82 + 2, 16 * (v80 - v105));
        v78[5] &= ~(1 << v111);

        v83 = v5[1];
        v84.i32[0] = v78[4] & ((1 << v111) - 1);
        v85 = vcnt_s8(v84);
        v85.i16[0] = vaddlv_u8(v85);
        v95 = v85.i32[0];
        v113 = v75;
        v114 = v99;
        v115 = v76;
        v116 = v104;
        v117 = v101;
        v118 = v77;
        v5[1] = v83 - v93 + 1;
        v119 = v75;
        v120 = v99;
        v121 = v76;
        v122 = v104;
        v123 = v101;
        v124 = v77;
        sub_1ADDCEE40(&v143, &v131, &qword_1EB5BA980, &qword_1AE245630);
        sub_1ADDCEE40(&v113, &v131, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v86 = sub_1ADE1A914(v95, v111 & 0x1F, v97, (v78 + 8));
        *v86 = v75;
        *(v86 + 2) = v99;
        *(v86 + 3) = v76;
        *(v86 + 4) = v104;
        *(v86 + 5) = v101;
        *(v86 + 3) = v77;
        sub_1ADDCEE40(&v119, &v131, &qword_1EB5BA9E8, &qword_1AE251DE0);
        sub_1ADDCEDE0(&v143, &qword_1EB5BA980, &qword_1AE245630);
        v125 = v75;
        v126 = v99;
        v127 = v76;
        v128 = v104;
        v129 = v101;
        v130 = v77;
        sub_1ADDCEDE0(&v125, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v131 = v75;
        *&v132 = v99;
        *(&v132 + 1) = v76;
        *&v133 = v104;
        *(&v133 + 1) = v101;
        v134 = v77;
        sub_1ADDCEDE0(&v131, &qword_1EB5BA9E8, &qword_1AE251DE0);
      }

      else
      {
        if (v45 || !v44 || (v42.i32[0] = *(v12 + 20), v50 = vcnt_s8(v42), v50.i16[0] = vaddlv_u8(v50), v50.i32[0] >= 2u) || (*(*v13 + 20) & *(*v13 + 16)) == 0)
        {
          v135 = v151;
          v136 = v152;
          v137 = v153;
          v138 = v154[0];
          v131 = v147;
          v132 = v148;
          v133 = v149;
          v134 = v150;
          sub_1ADDCEE40(&v131, &v125, &qword_1EB5BCD10, &qword_1AE251DD8);
          v110 = 0u;
          v112 = 0u;
          v103 = 0u;
          v107 = 0u;
          goto LABEL_59;
        }

        v135 = v151;
        v136 = v152;
        v137 = v153;
        v138 = v154[0];
        v131 = v147;
        v132 = v148;
        v133 = v149;
        v134 = v150;
        sub_1ADDCEE40(&v131, &v125, &qword_1EB5BCD10, &qword_1AE251DD8);
        if (*(v12 + 16) == *(v12 + 20))
        {
          v52 = -16;
        }

        else
        {
          v51.i32[0] = *(v12 + 20);
          v89 = vcnt_s8(v51);
          v89.i16[0] = vaddlv_u8(v89);
          v52 = (16 * v89.i32[0]) - 16;
        }

        *(v12 + 28) += 16;
        v90 = *(v12 + 32);
        v91 = *(v12 + 40);
        memmove(v13, (v12 + 48), v52);
        *(v12 + 20) = 0;

        *v108 = v90;
        v108[1] = v91;
      }

      v110 = 0u;
      v112 = 0u;
      v103 = 0u;
      v107 = 0u;
      goto LABEL_59;
    }

    --v5[1];
    LODWORD(v33) = *(v12 + 16);
    v34 = vcnt_s8(v33);
    v34.i16[0] = vaddlv_u8(v34);
    if (v33 == *(v12 + 20))
    {
      v33 = v33;
    }

    else
    {
      v33 = v34.u32[0];
    }

    v35 = *(v12 + 24);
    *(v12 + 28) += 64;
    v36 = v13 + v35 + -64 * v33;
    v37 = (v33 + ~HIDWORD(v14)) << 6;
    v109 = *&v36[v37];
    v106 = *&v36[v37 + 8];
    v96 = *&v36[v37 + 32];
    v92 = *&v36[v37 + 24];
    v94 = *&v36[v37 + 40];
    v100 = *&v36[v37 + 48];
    v102 = *&v36[v37 + 16];
    v98 = *&v36[v37 + 56];
    memmove(v36 + 64, v36, v37);
    v40 = *(v12 + 16);
    v39 = *(v12 + 20);
    if ((v39 & v40) != 0)
    {
      v41 = v40 - 1;
      *(v12 + 20) = v41;
      v39 = v41;
      *(v12 + 16) = v41;
      if (!v41)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v41 = v40 & ((-1 << v111) - 1);
      *(v12 + 16) = v41;
      if (!v39)
      {
        goto LABEL_28;
      }
    }

    if (!v41)
    {
      v38.i32[0] = v39;
      v38 = vcnt_s8(v38);
      v38.i16[0] = vaddlv_u8(v38);
      if (v38.i32[0] <= 1u)
      {
        v47 = *v13;
        if ((*(*v13 + 20) & *(*v13 + 16)) == 0)
        {
          v41 = 0;
          if (!v39)
          {
LABEL_29:
            if (v39 != 1)
            {
LABEL_49:
              v53 = 0;
              v55 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              goto LABEL_52;
            }

LABEL_43:
            if (a1)
            {
              v5[1] = 0;
              v62 = *(v12 + 16);
              v63 = vcnt_s8(v62);
              v63.i16[0] = vaddlv_u8(v63);
              if (v62 != *(v12 + 20))
              {
                v62 = v63.i32[0];
              }

              v64 = v62 << 6;
              v65 = v12 - v64 + *(v12 + 24);
              *(v12 + 28) += 64;
              v66 = v64 - 64;
              v67 = (v65 + 32 + v64 - 64);
              v53 = *v67;
              v68 = v67[1];
              v69 = v67[2];
              v70 = v67[3];
              v71 = v67[4];
              v72 = v67[5];
              v73 = v67[6];
              v61 = v67[7];
              memmove((v65 + 96), (v65 + 32), v66);
              v60 = v73;
              v59 = v72;
              v58 = v71;
              v57 = v70;
              v56 = v69;
              v55 = v68;
              *(v12 + 16) = 0;
              *(v12 + 28) = *(v12 + 24);
              goto LABEL_52;
            }

            if ((v39 & v41) == 0)
            {
              goto LABEL_49;
            }

            v53 = 0;
            v55 = 0;
            v56 = 0;
            v57 = 0;
            v58 = 0;
            v59 = 0;
            v60 = 0;
            v61 = 0;
            v74 = *(v12 + 32);
            *(v12 + 28) += 8;
            *(v12 + 16) = (1 << v74);
LABEL_52:
            *&v170 = v109;
            *(&v170 + 1) = v106;
            *&v171 = v102;
            *(&v171 + 1) = v92;
            *&v172 = v96;
            *(&v172 + 1) = v94;
            *&v173 = v100;
            *(&v173 + 1) = v98;
            *&v174 = v53;
            *(&v174 + 1) = v55;
            *&v175 = v56;
            *(&v175 + 1) = v57;
            *&v176 = v58;
            *(&v176 + 1) = v59;
            *v177 = v60;
            *&v177[8] = v61;
            *a5 = v109;
            *(a5 + 8) = v106;
            *(a5 + 16) = v102;
            *(a5 + 24) = v92;
            *(a5 + 32) = v96;
            *(a5 + 40) = v94;
            *(a5 + 48) = v100;
            *(a5 + 56) = v98;
            *(a5 + 64) = v53;
            *(a5 + 72) = v55;
            *(a5 + 80) = v56;
            *(a5 + 88) = v57;
            *(a5 + 96) = v58;
            *(a5 + 104) = v59;
            *(a5 + 112) = v60;
            *(a5 + 120) = v61;
            Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(a5);
            sub_1ADDCEE40(&v170, &v147, &qword_1EB5BCD08, &unk_1AE251DC0);

            sub_1ADDCC35C(v109, v106);
            v30 = &qword_1EB5BA980;
            v31 = &qword_1AE245630;
            v32 = &v174;
            goto LABEL_60;
          }

LABEL_40:
          v53 = 0;
          if (!v41 || v39)
          {
            v55 = 0;
            v56 = 0;
            v57 = 0;
            v58 = 0;
            v59 = 0;
            v60 = 0;
            v61 = 0;
            goto LABEL_52;
          }

          v38.i32[0] = v41;
          v54 = vcnt_s8(v38);
          v54.i16[0] = vaddlv_u8(v54);
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          if (v54.i32[0] >= 2u)
          {
            goto LABEL_52;
          }

          goto LABEL_43;
        }

        *(v12 + 28) += 16;
        v48 = *(v12 + 40);
        memmove(v13, (v12 + 48), (16 * v38.i32[0]) - 16);
        *(v12 + 20) = 0;

        *v5 = v47;
        v5[1] = v48;
        v41 = *(v47 + 16);
        v39 = *(v47 + 20);
        v12 = v47;
      }
    }

LABEL_28:
    if (v41 == v39)
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

  sub_1AE03783C(a1, a2, a3, a4, *v5, v5[1], &v162, v11);
  v175 = v167;
  v176 = v168;
  *v177 = v169[0];
  *&v177[10] = *(v169 + 10);
  v172 = v164;
  v173 = v165;
  v174 = v166;
  v170 = v162;
  v171 = v163;
  if (sub_1ADE23F54(&v170) == 1)
  {
    v153 = v168;
    v154[0] = v169[0];
    *(v154 + 10) = *(v169 + 10);
    v149 = v164;
    v150 = v165;
    v151 = v166;
    v152 = v167;
    v147 = v162;
    v148 = v163;
    sub_1ADDCEDE0(&v147, &qword_1EB5BCCF8, &qword_1AE251DB0);
    sub_1ADEDA0C8(&v155);
    v20 = v159;
    *(a5 + 64) = v158[1];
    *(a5 + 80) = v20;
    v21 = v161;
    *(a5 + 96) = v160;
    *(a5 + 112) = v21;
    v22 = v156;
    *a5 = v155;
    *(a5 + 16) = v22;
    v18 = v157;
    v19 = v158[0];
    goto LABEL_6;
  }

  v152 = v167;
  v153 = v168;
  v154[0] = v169[0];
  *(v154 + 10) = *(v169 + 10);
  v149 = v164;
  v150 = v165;
  v151 = v166;
  v147 = v162;
  v148 = v163;
  v157 = v168;
  v158[0] = v169[0];
  *(v158 + 10) = *(v169 + 10);
  v155 = v166;
  v156 = v167;
  sub_1AE037C54(a1, &v155, &v139);
  v26 = v148;
  *a5 = v147;
  *(a5 + 16) = v26;
  v27 = v150;
  *(a5 + 32) = v149;
  *(a5 + 48) = v27;
  v28 = v140;
  *(a5 + 64) = v139;
  *(a5 + 80) = v28;
  v29 = v142;
  *(a5 + 96) = v141;
  *(a5 + 112) = v29;
  Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(a5);
  v30 = &qword_1EB5BCD00;
  v31 = &qword_1AE251DB8;
  v32 = &v151;
LABEL_60:
  sub_1ADDCEDE0(v32, v30, v31);
}

void sub_1AE03783C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, int8x8_t *a5@<X4>, unint64_t a6@<X5>, _OWORD *a7@<X8>, int8x8_t a8@<D0>)
{
  v13 = a1;
  v15 = a5 + 4;
  v16 = sub_1AE033138(a1, a2, a3, a4, &a5[2], &a5[4], a8);
  if (v16 == 2)
  {
    sub_1AE03CAFC(&v70);
    v17 = v77[0];
    a7[6] = v76;
    a7[7] = v17;
    *(a7 + 122) = *(v77 + 10);
    v18 = v73;
    a7[2] = v72;
    a7[3] = v18;
    v19 = v75;
    a7[4] = v74;
    a7[5] = v19;
    v21 = v70;
    v20 = v71;
LABEL_3:
    *a7 = v21;
    a7[1] = v20;
    return;
  }

  v22 = HIDWORD(v16);
  if (v16)
  {
    v23 = &v15[2 * v22];
    v24 = *v23;
    v25 = v23[1];

    sub_1AE03783C((v13 + 5), a2, a3, a4, v24, v25, &v54, v26);

    v68 = v60;
    v69[0] = v61[0];
    *(v69 + 10) = *(v61 + 10);
    v64 = v56;
    v65 = v57;
    v66 = v58;
    v67 = v59;
    v62 = v54;
    v63 = v55;
    v76 = v60;
    v77[0] = v61[0];
    *(v77 + 10) = *(v61 + 10);
    v72 = v56;
    v73 = v57;
    v74 = v58;
    v75 = v59;
    v70 = v54;
    v71 = v55;
    if (sub_1ADE23F54(&v70) == 1)
    {
      v52 = v60;
      v53[0] = v61[0];
      *(v53 + 10) = *(v61 + 10);
      v48 = v56;
      v49 = v57;
      v50 = v58;
      v51 = v59;
      v46 = v54;
      v47 = v55;
      sub_1ADDCEDE0(&v46, &qword_1EB5BCCF8, &qword_1AE251DB0);
      v27 = v69[0];
      a7[6] = v68;
      a7[7] = v27;
      *(a7 + 122) = *(v69 + 10);
      v28 = v65;
      a7[2] = v64;
      a7[3] = v28;
      v29 = v67;
      a7[4] = v66;
      a7[5] = v29;
      v21 = v62;
      v20 = v63;
      goto LABEL_3;
    }

    v40[2] = v68;
    v41[0] = v69[0];
    *(v41 + 10) = *(v69 + 10);
    v38 = v64;
    v39 = v65;
    v40[0] = v66;
    v40[1] = v67;
    v36 = v62;
    v37 = v63;
    v78[2] = v68;
    v79[0] = v69[0];
    v42[6] = v68;
    v43[0] = v69[0];
    *(v79 + 10) = *(v69 + 10);
    *(v43 + 10) = *(v69 + 10);
    v78[0] = v66;
    v78[1] = v67;
    v42[2] = v64;
    v42[3] = v65;
    v42[4] = v66;
    v42[5] = v67;
    v42[0] = v62;
    v42[1] = v63;
    sub_1ADDCEE40(&v62, &v46, &qword_1EB5BCCF8, &qword_1AE251DB0);
    sub_1ADDCEE40(v42, &v46, &qword_1EB5BCD20, &qword_1AE251DF0);
    sub_1AE0381E4(v13, (a4 >> v13) & 0x1F, v22, v78, a5, a6, v44);
    v52 = v60;
    v53[0] = v61[0];
    *(v53 + 10) = *(v61 + 10);
    v48 = v56;
    v49 = v57;
    v50 = v58;
    v51 = v59;
    v46 = v54;
    v47 = v55;
    sub_1ADDCEDE0(&v46, &qword_1EB5BCCF8, &qword_1AE251DB0);

    sub_1ADDCC35C(v36, *(&v36 + 1));
    *a7 = v36;
    a7[1] = v37;
    a7[2] = v38;
    a7[3] = v39;
    v34 = v45[0];
    a7[6] = v44[2];
    a7[7] = v34;
    *(a7 + 122) = *(v45 + 10);
    v35 = v44[1];
    a7[4] = v44[0];
    a7[5] = v35;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(a7);
    sub_1ADDCEDE0(v40, &qword_1EB5BCD00, &qword_1AE251DB8);
  }

  else
  {
    sub_1AE0388F0(a5 + 2, v15, HIDWORD(v16), v13, a5, a6, (a4 >> v13) & 0x1F, &v70);
    v30 = v71;
    *a7 = v70;
    a7[1] = v30;
    v31 = v73;
    a7[2] = v72;
    a7[3] = v31;
    v32 = v77[0];
    a7[6] = v76;
    a7[7] = v32;
    *(a7 + 122) = *(v77 + 10);
    v33 = v75;
    a7[4] = v74;
    a7[5] = v33;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(a7);
  }
}

uint64_t sub_1AE037C04(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_1ADDD86D8(result, a2);

    return sub_1ADDE0F78(a3, a4);
  }

  return result;
}

double sub_1AE037C54@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*(a2 + 73) - 1 >= 2)
  {
    if (*(a2 + 73))
    {
      sub_1ADDCEE40(a2, v21, &qword_1EB5BCD00, &qword_1AE251DB8);
      *v3 = *sub_1AE23C1EC();
      v3[1] = 0;
    }

    else
    {
      v10 = *(a2 + 24);
      v9 = *(a2 + 32);
      v12 = *(a2 + 40);
      v11 = *(a2 + 48);
      v14 = *(a2 + 56);
      v13 = *(a2 + 64);
      if (a1)
      {
        v15 = a2;
        v16 = *(a2 + 64);
        v17 = v14;
        sub_1ADDCEE40(v15, v21, &qword_1EB5BCD00, &qword_1AE251DB8);
        *v3 = *sub_1AE23C1EC();
        v3[1] = 0;
        *a3 = v8;
        a3[1] = v7;
        a3[2] = v10;
        a3[3] = v9;
        a3[4] = v12;
        a3[5] = v11;
        a3[6] = v17;
        a3[7] = v16;

        return result;
      }

      v19 = *(a2 + 72);
      *&v22 = *(a2 + 24);
      *(&v22 + 1) = v9;
      v23 = v12;
      v24 = v11;
      v25 = v14;
      v26 = v13;
      sub_1ADDCEE40(a2, v21, &qword_1EB5BCD00, &qword_1AE251DB8);
      *v3 = sub_1AE038810(v8, v7, &v22, v19);
      v3[1] = v20;
    }
  }

  else
  {
    *v3 = v8;
    v3[1] = v7;
    sub_1ADDCEE40(a2, v21, &qword_1EB5BCD00, &qword_1AE251DB8);
  }

  result = 0.0;
  *(a3 + 2) = 0u;
  *(a3 + 3) = 0u;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  return result;
}

void sub_1AE037DC4(char a1@<W0>, char a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, int8x8_t *a7@<X7>, uint64_t a8@<X8>, unint64_t a9)
{
  if (BYTE1(a6) <= 1u)
  {
    if (!BYTE1(a6))
    {
      v16 = a7[2].u32[1];
      if (a7[2].i32[0])
      {
        v17 = 1;
      }

      else
      {
        v17 = v16.i32[0] == 0;
      }

      v18 = vcnt_s8(v16);
      v18.i16[0] = vaddlv_u8(v18);
      if (!v17 && v18.i32[0] < 2u)
      {
        *(a8 + 8) = a4;
        *(a8 + 16) = a5;
        *(a8 + 24) = a2;
LABEL_42:
        *a8 = a1;
        return;
      }

      v21 = sub_1ADDFA324(0, a7, a9);
      v63 = v22;
      sub_1ADDFA4B4(a4, a5, a6, 0);
      if (v21[4] == v21[5])
      {
        v24 = -1;
      }

      else
      {
        v23.i32[0] = v21[5];
        v56 = vcnt_s8(v23);
        v56.i16[0] = vaddlv_u8(v56);
        v24 = v56.u32[0] - 1;
      }

      v21[7] += 16;
      v57 = &v21[4 * a3 + 8];
      v58 = *(v57 + 1);
      memmove(v57, v57 + 4, 16 * (v24 - a3));
      v21[5] &= ~(1 << a2);

      v59.i32[0] = v21[4] & ((1 << a2) - 1);
      v60 = vcnt_s8(v59);
      v60.i16[0] = vaddlv_u8(v60);
      v61 = v60.i32[0];
      sub_1ADDD86D8(a4, a5);
      sub_1ADDD86D8(a4, a5);
      v62 = sub_1ADDE15A0(v61, a2, v21 + 4, (v21 + 8));
      *v62 = a4;
      *(v62 + 1) = a5;
      sub_1ADDD86D8(a4, a5);
      sub_1ADDCC35C(a4, a5);
      sub_1ADDFC318(a4, a5, a6, 0);
      sub_1ADDCC35C(a4, a5);
      sub_1ADDCC35C(a4, a5);
      *(a8 + 8) = v21;
      *(a8 + 16) = v63 - v58 + 1;
      goto LABEL_40;
    }

    goto LABEL_22;
  }

  if (BYTE1(a6) == 2)
  {
    v25 = a7[2].u32[1];
    if (a7[2].i32[0])
    {
      v26 = 1;
    }

    else
    {
      v26 = v25.i32[0] == 0;
    }

    v27 = vcnt_s8(v25);
    v27.i16[0] = vaddlv_u8(v27);
    if (!v26 && v27.i32[0] < 2u)
    {
      *(a8 + 8) = a4;
      *(a8 + 16) = a5;
      *(a8 + 24) = a6;
      *(a8 + 25) = 2;
      goto LABEL_42;
    }

LABEL_22:
    v29 = sub_1ADDFB3E0();
    v30 = sub_1ADDFA324(v29, a7, a9);
    v32 = v31;
    v33 = v30 + 16 * a3;
    v34 = a5 - *(v33 + 40);
    *(v33 + 32) = a4;
    *(v33 + 40) = a5;

    v35 = v34 + v32;
    *(a8 + 8) = v30;
LABEL_39:
    *(a8 + 16) = v35;
LABEL_40:
    v55 = 256;
LABEL_41:
    *(a8 + 24) = v55;
    goto LABEL_42;
  }

  v36 = a7 + 4;
  v37 = a7[2].u32[0];
  if (v37)
  {
    if ((v37 & (v37 - 1)) == 0 && (a7[2].i32[1] ^ (a7[2].i32[1] - 1)) > a7[2].i32[1] - 1)
    {
      v38 = v36 + a7[3].u32[0];
      v39 = *(v38 - 2);
      v40 = *(v38 - 1);
      *(a8 + 8) = v39;
      *(a8 + 16) = v40;
      *(a8 + 24) = __clz(__rbit32(v37));
      *a8 = a1;

      sub_1ADDD86D8(v39, v40);
      return;
    }

LABEL_35:
    v45 = sub_1ADDFB3E0();
    v46 = sub_1ADDFA324(v45, a7, a9);
    v48 = v46;
    v50 = v49;
    if (v46[4] == v46[5])
    {
      v51 = -1;
    }

    else
    {
      v47.i32[0] = v46[5];
      v52 = vcnt_s8(v47);
      v52.i16[0] = vaddlv_u8(v52);
      v51 = v52.u32[0] - 1;
    }

    v46[7] += 16;
    v53 = &v46[4 * a3 + 8];
    v54 = v53[1];
    memmove(v53, v53 + 2, 16 * (v51 - a3));
    v48[5] &= (-1 << a2) - 1;

    v35 = v50 - v54;
    *(a8 + 8) = v48;
    goto LABEL_39;
  }

  v41 = vcnt_s8(a7[2].u32[1]);
  v41.i16[0] = vaddlv_u8(v41);
  if (v41.i32[0] == 1)
  {
    *(a8 + 8) = 0;
    *(a8 + 16) = 0;
    v55 = 768;
    goto LABEL_41;
  }

  if (v41.i32[0] != 2)
  {
    goto LABEL_35;
  }

  v42 = &v36[2 * (1 - a3)];
  v43 = *v42;
  if ((*(*v42 + 20) & *(*v42 + 16)) == 0)
  {
    goto LABEL_35;
  }

  v44 = v42[1];
  *(a8 + 8) = v43;
  *(a8 + 16) = v44;
  *(a8 + 24) = 512;
  *a8 = a1;
}

double sub_1AE0381E4@<D0>(char a1@<W0>, char a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X3>, int8x8_t *a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a4 + 8);
  v13 = *(a4 + 16);
  if (*(a4 + 73) > 1u)
  {
    if (*(a4 + 73) != 2)
    {
      v31 = a5 + 4;
      v32 = a5[2].u32[0];
      if (v32)
      {
        if ((v32 & (v32 - 1)) == 0 && (a5[2].i32[1] ^ (a5[2].i32[1] - 1)) > a5[2].i32[1] - 1)
        {
          v33 = v31 + a5[3].u32[0];
          v34 = *(v33 - 3);
          v80 = *(v33 - 4);
          v81 = v34;
          v35 = *(v33 - 1);
          v82 = *(v33 - 2);
          v83 = v35;
          v36 = v81;
          *(a7 + 8) = v80;
          *(a7 + 24) = v36;
          v37 = v83;
          *(a7 + 40) = v82;
          *(a7 + 56) = v37;
          *(a7 + 72) = __clz(__rbit32(v32));
          *a7 = a1;
          sub_1ADDCEE40(&v80, &v100, &qword_1EB5BA9E8, &qword_1AE251DE0);
          return *&v19;
        }
      }

      else
      {
        v44 = vcnt_s8(a5[2].u32[1]);
        v44.i16[0] = vaddlv_u8(v44);
        if (v44.i32[0] == 1)
        {
          *&v19 = 0;
          *(a7 + 56) = 0u;
          *(a7 + 40) = 0u;
          *(a7 + 24) = 0u;
          *(a7 + 8) = 0u;
          *(a7 + 72) = 768;
          goto LABEL_35;
        }

        if (v44.i32[0] == 2)
        {
          v45 = &v31[2 * (1 - a3)];
          v46 = *v45;
          if ((*(*v45 + 20) & *(*v45 + 16)) != 0)
          {
            v47 = v45[1];
            *(a7 + 8) = v46;
            *(a7 + 16) = v47;
            *(a7 + 73) = 2;
            *a7 = a1;

            return *&v19;
          }
        }
      }

      v48 = sub_1ADDFB3E0();
      v49 = sub_1ADDF59C8(v48, a5, a6);
      v51 = v49;
      v53 = v52;
      if (v49[4] == v49[5])
      {
        v54 = -1;
      }

      else
      {
        v50.i32[0] = v49[5];
        v55 = vcnt_s8(v50);
        v55.i16[0] = vaddlv_u8(v55);
        v54 = v55.u32[0] - 1;
      }

      v49[7] += 16;
      v56 = &v49[4 * a3 + 8];
      v57 = v56[1];
      memmove(v56, v56 + 2, 16 * (v54 - a3));
      v51[5] &= (-1 << a2) - 1;

      v30 = v53 - v57;
      *(a7 + 8) = v51;
      goto LABEL_33;
    }

    v20 = a5[2].u32[1];
    if (a5[2].i32[0])
    {
      v21 = 1;
    }

    else
    {
      v21 = v20.i32[0] == 0;
    }

    v22 = vcnt_s8(v20);
    v22.i16[0] = vaddlv_u8(v22);
    if (!v21 && v22.i32[0] < 2u)
    {
      *(a7 + 8) = v14;
      *(a7 + 16) = v13;
      *(a7 + 24) = *(a4 + 24);
      *(a7 + 40) = *(a4 + 40);
      v19 = *(a4 + 56);
      *(a7 + 56) = v19;
      *(a7 + 72) = *(a4 + 72);
      v43 = 2;
LABEL_34:
      *(a7 + 73) = v43;
      goto LABEL_35;
    }

LABEL_16:
    v24 = sub_1ADDFB3E0();
    v25 = sub_1ADDF59C8(v24, a5, a6);
    v27 = v26;
    v28 = v25 + 16 * a3;
    v29 = v13 - *(v28 + 40);
    *(v28 + 32) = v14;
    *(v28 + 40) = v13;

    v30 = v29 + v27;
    *(a7 + 8) = v25;
LABEL_33:
    *(a7 + 16) = v30;
    v58 = v81;
    *(a7 + 24) = v80;
    *(a7 + 40) = v58;
    *&v19 = v82;
    *(a7 + 56) = v82;
    *(a7 + 72) = v83;
    v43 = 1;
    goto LABEL_34;
  }

  if (*(a4 + 73))
  {
    goto LABEL_16;
  }

  *&v100 = *(a4 + 8);
  *(&v100 + 1) = v13;
  v15 = *(a4 + 40);
  v101 = *(a4 + 24);
  v102 = v15;
  v103 = *(a4 + 56);
  if (!a5[2].i32[0])
  {
    v16 = a5[2].u32[1];
    if (v16.i32[0])
    {
      v17 = vcnt_s8(v16);
      v17.i16[0] = vaddlv_u8(v17);
      if (v17.i32[0] < 2u)
      {
        *(a7 + 8) = v14;
        *(a7 + 16) = v13;
        v18 = v102;
        *(a7 + 24) = v101;
        *(a7 + 40) = v18;
        *&v19 = v103;
        *(a7 + 56) = v103;
        *(a7 + 72) = a2;
LABEL_35:
        *a7 = a1;
        return *&v19;
      }
    }
  }

  v39 = sub_1ADDF59C8(48, a5, a6);
  v78 = v40;
  v79 = a4;
  sub_1ADDCEE40(a4, &v80, &qword_1EB5BCD00, &qword_1AE251DB8);
  if (v39[4] == v39[5])
  {
    v42 = -1;
  }

  else
  {
    v41.i32[0] = v39[5];
    v59 = vcnt_s8(v41);
    v59.i16[0] = vaddlv_u8(v59);
    v42 = v59.u32[0] - 1;
  }

  v39[7] += 16;
  v60 = &v39[4 * a3 + 8];
  v74 = *(v60 + 1);
  memmove(v60, v60 + 4, 16 * (v42 - a3));
  v39[5] &= ~(1 << a2);

  v61 = v100;
  v62 = *(&v101 + 1);
  v63 = v102;
  v64 = v103;
  v65.i32[0] = v39[4] & ((1 << a2) - 1);
  v66 = vcnt_s8(v65);
  v66.i16[0] = vaddlv_u8(v66);
  v73 = v66.i32[0];
  v84[0] = v100;
  v76 = *(&v103 + 1);
  v77 = v101;
  v84[1] = v101;
  v84[2] = v102;
  v75 = *(&v102 + 1);
  v84[3] = v103;
  v85 = v100;
  v86 = v101;
  v87 = v102;
  v88 = v103;
  sub_1ADDCEE40(&v100, &v80, &qword_1EB5BA9E8, &qword_1AE251DE0);
  sub_1ADDCEE40(v84, &v80, &qword_1EB5BA9E8, &qword_1AE251DE0);
  v67 = sub_1ADE1A914(v73, a2, v39 + 4, (v39 + 8));
  v68 = v86;
  v69 = v87;
  v70 = v88;
  *v67 = v85;
  *(v67 + 1) = v68;
  *(v67 + 2) = v69;
  *(v67 + 3) = v70;
  sub_1ADDCEE40(&v85, &v80, &qword_1EB5BA9E8, &qword_1AE251DE0);
  sub_1ADDCEDE0(&v100, &qword_1EB5BA9E8, &qword_1AE251DE0);
  sub_1ADDCEDE0(v79, &qword_1EB5BCD00, &qword_1AE251DB8);
  v89 = v61;
  v90 = v77;
  v91 = v62;
  v92 = v63;
  v93 = v75;
  v94 = v64;
  v95 = v76;
  sub_1ADDCEDE0(&v89, &qword_1EB5BA9E8, &qword_1AE251DE0);
  v80 = v61;
  *&v81 = v77;
  *(&v81 + 1) = v62;
  *&v82 = v63;
  *(&v82 + 1) = v75;
  *&v83 = v64;
  *(&v83 + 1) = v76;
  sub_1ADDCEDE0(&v80, &qword_1EB5BA9E8, &qword_1AE251DE0);
  *(a7 + 8) = v39;
  *(a7 + 16) = v78 - v74 + 1;
  v71 = v97;
  *(a7 + 24) = v96;
  *(a7 + 40) = v71;
  *&v19 = v98;
  *(a7 + 56) = v98;
  *(a7 + 72) = v99;
  *(a7 + 73) = 1;
  *a7 = a1;
  return *&v19;
}

_DWORD *sub_1AE038790(uint64_t a1, unint64_t a2, char a3)
{
  v5 = 1 << a3;
  v6 = sub_1ADDDB860(16);
  v6[4] = v5;
  v6[5] = 0;
  v7 = v6[6];
  v6[7] -= 16;
  v8 = (v6 + v7 + 16);
  *v8 = a1;
  v8[1] = a2;
  sub_1ADDD86D8(a1, a2);
  sub_1ADDCC35C(a1, a2);
  return v6;
}

_DWORD *sub_1AE038810(uint64_t a1, uint64_t a2, __int128 *a3, char a4)
{
  v7 = 1 << a4;
  v8 = sub_1ADDDAC74(64);
  v9 = v8[6];
  v8[7] -= 64;
  v8[4] = v7;
  v8[5] = 0;
  v10 = (v8 + v9);
  v18[0] = a1;
  v18[1] = a2;
  v11 = a3[1];
  v19 = *a3;
  v20 = v11;
  v13 = *a3;
  v12 = a3[1];
  v21 = a3[2];
  v14 = v20;
  v15 = v21;
  *(v10 - 1) = v19;
  *v10 = v14;
  *(v10 - 4) = a1;
  *(v10 - 3) = a2;
  v10[1] = v15;
  v22[0] = a1;
  v22[1] = a2;
  v23 = v13;
  v24 = v12;
  v25 = a3[2];
  sub_1ADDCEE40(v18, &v17, &qword_1EB5BA9E8, &qword_1AE251DE0);
  sub_1ADDCEDE0(v22, &qword_1EB5BA9E8, &qword_1AE251DE0);
  return v8;
}

int8x8_t *sub_1AE0388F0@<X0>(int8x8_t *result@<X0>, void *a2@<X1>, unsigned int a3@<W2>, char a4@<W3>, int8x8_t *a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v14 = *result;
  v15 = HIDWORD(*result);
  if ((v15 & v14) != 0)
  {
    if (v14 == 2)
    {
      v16 = a2 + result[1].u32[0];
      v17 = &v16[64 * ~a3];
      v18 = *v17;
      v19 = *(v17 + 1);
      v20 = 1 - a3;
      v21 = (*a2 >> a4) & 0x1FLL;
      v74 = *v17;
      v75 = v19;
LABEL_4:
      v23 = *(v17 + 3);
      v76 = *(v17 + 2);
      v22 = v76;
      v77 = v23;
      *a8 = v18;
      *(a8 + 16) = v19;
      *(a8 + 32) = v22;
      *(a8 + 48) = v23;
      v24 = &v16[64 * ~v20];
      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      v27 = *(v24 + 1);
      v78 = *v24;
      v79 = v27;
      v80 = v26;
      v81 = v25;
      *(a8 + 72) = v78;
      *(a8 + 88) = v27;
      v28 = v81;
      *(a8 + 104) = v80;
      *(a8 + 120) = v28;
      *(a8 + 136) = v21;
      *(a8 + 137) = 0;
      *(a8 + 64) = a4;
      sub_1ADDCEE40(&v74, v73, &qword_1EB5BA9E8, &qword_1AE251DE0);
      v29 = v73;
      return sub_1ADDCEE40(&v78, v29, &qword_1EB5BA9E8, &qword_1AE251DE0);
    }

    v38 = sub_1ADDFB3E0();
    v39 = sub_1ADDF59C8(v38, a5, a6);
    v40 = v39;
    v42 = v41;
    LODWORD(v43) = v39[4];
    v44 = vcnt_s8(v43);
    v44.i16[0] = vaddlv_u8(v44);
    if (v43 == v39[5])
    {
      v43 = v43;
    }

    else
    {
      v43 = v44.u32[0];
    }

    v45 = v39 + v39[6] + -64 * v43;
    v39[7] += 64;
    v46 = (v43 + ~a3) << 6;
    v47 = &v45[v46 + 32];
    v69 = *(v47 + 1);
    v71 = *v47;
    v65 = *(v47 + 3);
    v67 = *(v47 + 2);
    result = memmove(v45 + 96, v45 + 32, v46);
    v48 = v40[4];
    if ((v40[5] & v48) != 0)
    {
      v49 = v48 - 1;
      v40[5] = v49;
    }

    else
    {
      v49 = v48 & ((-1 << a7) - 1);
    }

    v40[4] = v49;
    *a8 = v71;
    *(a8 + 16) = v69;
    *(a8 + 32) = v67;
    *(a8 + 48) = v65;
    *(a8 + 72) = v40;
    *(a8 + 80) = v42 - 1;
    v63 = 2;
    goto LABEL_30;
  }

  if (!v14)
  {
    goto LABEL_21;
  }

  v30 = vpaddl_u16(vpaddl_u8(vcnt_s8(*result)));
  v31 = vcgt_u32(0x200000002, v30);
  if (v31.i8[0] & 1) != 0 && v15 && (v31.i8[4])
  {
    v32 = *a2;
    if ((*(*a2 + 20) & *(*a2 + 16)) != 0)
    {
      v33 = a2[1];
      v34 = a2 + result[1].u32[0];
      v35 = *(v34 - 3);
      v78 = *(v34 - 4);
      v79 = v35;
      v37 = *(v34 - 1);
      v80 = *(v34 - 2);
      v36 = v80;
      v81 = v37;
      *a8 = v78;
      *(a8 + 16) = v35;
      *(a8 + 32) = v36;
      *(a8 + 48) = v37;
      *(a8 + 72) = v32;
      *(a8 + 80) = v33;
      *(a8 + 137) = 2;
      *(a8 + 64) = a4;

      v29 = &v74;
      return sub_1ADDCEE40(&v78, v29, &qword_1EB5BA9E8, &qword_1AE251DE0);
    }

    goto LABEL_21;
  }

  if (v30.i32[0] != 2 || v15 != 0)
  {
LABEL_21:
    v51 = sub_1ADDFB3E0();
    v52 = sub_1ADDF59C8(v51, a5, a6);
    v53 = v52;
    v55 = v54;
    LODWORD(v56) = v52[4];
    v57 = vcnt_s8(v56);
    v57.i16[0] = vaddlv_u8(v57);
    if (v56 == v52[5])
    {
      v56 = v56;
    }

    else
    {
      v56 = v57.u32[0];
    }

    v58 = v52 + v52[6] + -64 * v56;
    v52[7] += 64;
    v59 = (v56 + ~a3) << 6;
    v60 = &v58[v59 + 32];
    v70 = *(v60 + 1);
    v72 = *v60;
    v66 = *(v60 + 3);
    v68 = *(v60 + 2);
    result = memmove(v58 + 96, v58 + 32, v59);
    v61 = v53[4];
    if ((v53[5] & v61) != 0)
    {
      v62 = v61 - 1;
      v53[5] = v62;
    }

    else
    {
      v62 = v61 & ((-1 << a7) - 1);
    }

    v53[4] = v62;
    *a8 = v72;
    *(a8 + 16) = v70;
    *(a8 + 32) = v68;
    *(a8 + 48) = v66;
    *(a8 + 72) = v53;
    *(a8 + 80) = v55 - 1;
    v63 = 1;
LABEL_30:
    *(a8 + 137) = v63;
    *(a8 + 64) = a4;
    return result;
  }

  v64 = v14 - 1;
  if (a3 == 1)
  {
    v64 = -1;
  }

  LODWORD(v21) = v64 & v14;
  if (v21)
  {
    v16 = a2 + result[1].u32[0];
    v17 = &v16[64 * ~a3];
    v18 = *v17;
    v19 = *(v17 + 1);
    v20 = 1 - a3;
    v74 = *v17;
    v75 = v19;
    LOBYTE(v21) = __clz(__rbit32(v21));
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE038C98(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  type metadata accessor for PartiallyOrderedReferenceMap(0);
  sub_1AE23C1FC();
  result = sub_1ADDE5058(v3, type metadata accessor for PartiallyOrderedReferenceMap);
  if (!a2)
  {
LABEL_12:
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    goto LABEL_15;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v8 = 1;
  while (1)
  {
    v9 = v26;
    if (v26 < DWORD1(v26))
    {
      v10 = *(&v25 + 1);
      LODWORD(v26) = v26 + 1;
      goto LABEL_8;
    }

    v10 = sub_1AE23C20C();
    if (!v10)
    {
      break;
    }

LABEL_8:
    v11 = (v10 + *(v10 + 24) + (~v9 << 6));
    v12 = v11[5];
    v14 = v11[2];
    v13 = v11[3];
    v24[2] = v11[4];
    v24[3] = v12;
    v24[0] = v14;
    v24[1] = v13;
    v15 = v11[2];
    v16 = v11[3];
    v17 = v11[5];
    a2[2] = v11[4];
    a2[3] = v17;
    *a2 = v15;
    a2[1] = v16;
    if (a3 == v8)
    {
      sub_1ADDCEE40(v24, v23, &qword_1EB5BA9E8, &qword_1AE251DE0);
      goto LABEL_15;
    }

    a2 += 4;
    sub_1ADDCEE40(v24, v23, &qword_1EB5BA9E8, &qword_1AE251DE0);
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  a3 = v8 - 1;
LABEL_15:
  v19 = v32[0];
  a1[6] = v31;
  a1[7] = v19;
  *(a1 + 123) = *(v32 + 11);
  v20 = v28;
  a1[2] = v27;
  a1[3] = v20;
  v21 = v30;
  a1[4] = v29;
  a1[5] = v21;
  v22 = v26;
  *a1 = v25;
  a1[1] = v22;
  return a3;
}

void sub_1AE038E20(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v223 = sub_1AE23C12C();
  v221 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v8 = &v179 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v179 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v179 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v210 = &v179 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v209 = &v179 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v220 = &v179 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v213 = &v179 - v22;
  v23 = type metadata accessor for Replica(0);
  v212 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v179 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v217 = &v179 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v211 = &v179 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v30 - 8);
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v32);
  v219 = &v179 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v216 = &v179 - v37;
  v38 = *(v3 + 176);
  v258[8] = *(v3 + 160);
  v258[9] = v38;
  v259 = *(v3 + 192);
  v260 = *(v3 + 208);
  v39 = *(v3 + 112);
  v258[4] = *(v3 + 96);
  v258[5] = v39;
  v40 = *(v3 + 144);
  v258[6] = *(v3 + 128);
  v258[7] = v40;
  v41 = *(v3 + 48);
  v258[0] = *(v3 + 32);
  v258[1] = v41;
  v42 = *(v3 + 80);
  v258[2] = *(v3 + 64);
  v258[3] = v42;
  v43 = *(v3 + 16);
  v256 = *v3;
  v257 = v43;
  if (!a2)
  {
    goto LABEL_95;
  }

  if (!a3)
  {
    goto LABEL_106;
  }

  if (a3 < 0)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    swift_once();
LABEL_100:
    v164 = sub_1AE23C78C();
    __swift_project_value_buffer(v164, qword_1EB5D74A8);
    v165 = sub_1AE23C76C();
    v166 = sub_1AE23D61C();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      *v167 = 134217984;
      *(v167 + 4) = v11;
      _os_log_impl(&dword_1ADDCA000, v165, v166, "Excessive since comparisons: %ld", v167, 0xCu);
      MEMORY[0x1B26FDA50](v167, -1, -1);
    }

    goto LABEL_103;
  }

  v190 = v36;
  v191 = v35;
  v188 = v8;
  v189 = v25;
  v196 = v14;
  v197 = a1;
  v187 = v11;
  v185 = a2;
  v183 = a3;
  v44 = *(v3 + 8);
  v200 = *v3;
  v201 = 0;
  v218 = v221 + 16;
  v222 = (v221 + 32);
  v208 = (v221 + 8);
  v45 = *(v3 + 24);
  v198 = *(v3 + 16);
  v199 = v44;
  v224 = v45;
  v206 = v45 + 56;
  v46 = *(v3 + 200);
  v11 = *(v3 + 208);
  v47 = *(v3 + 184);
  v214 = *(v3 + 192);
  v203 = v47;
  a2 = *(v3 + 32);
  v48 = 1;
LABEL_5:
  v184 = v48;
LABEL_6:
  v205 = v46;
  LODWORD(v215) = v46;
  v49 = a2;
LABEL_7:
  for (i = (v206 + 40 * v49); ; i += 5)
  {
    v254[6] = *(&v258[6] + 8);
    v255[0] = *(&v258[7] + 8);
    *(v255 + 11) = *(&v258[8] + 3);
    v254[2] = *(&v258[2] + 8);
    v254[3] = *(&v258[3] + 8);
    v254[5] = *(&v258[5] + 8);
    v254[4] = *(&v258[4] + 8);
    v254[1] = *(&v258[1] + 8);
    v254[0] = *(v258 + 8);
    if (get_enum_tag_for_layout_string_9Coherence14Proto_DocumentVs5Error_pIeglzo_Sg_0(v254) != 1)
    {
      v51 = DWORD2(v258[1]);
      if (DWORD2(v258[1]) < HIDWORD(v258[1]))
      {
        v52 = *&v258[1];
        ++DWORD2(v258[1]);
LABEL_69:
        v133 = v52 + *(v52 + 24) + 16 * ~v51;
        v134 = *(v133 + 32);
        v3 = *(v133 + 40);
        v46 = v205;
        v207 = v134;
        if (v205)
        {
          sub_1ADDD86D8(v134, v3);
          v151 = v207;
        }

        else
        {
          v58 = __OFADD__(v11++, 1);
          if (v58)
          {
            goto LABEL_110;
          }

          v204 = v11;
          v260 = v11;
          v135 = v134;
          sub_1ADDD86D8(v134, v3);
          v215 = v3;
          sub_1ADDDF7A8(v135, v3, v200, &v251);
          v136 = *&v252[0];
          if (!*&v252[0])
          {
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          v137 = *(&v252[1] + 1);
          v138 = *&v252[1];
          v139 = *(&v252[0] + 1);
          a1 = *(&v251 + 1);
          v140 = v251;

          sub_1ADDDC21C(v140, a1, v136, v139, v138, v137);
          sub_1ADF637A8(v139, v214);
          if (v141)
          {

            v11 = v204;
          }

          else
          {
            sub_1ADF637A8(v136, v203);
            a1 = v142;

            v11 = v204;
            if ((a1 & 1) == 0)
            {
              sub_1ADDCC35C(v135, v215);
              v46 = 0;
              goto LABEL_6;
            }
          }

          v46 = v205;
          v151 = v207;
          v3 = v215;
        }

        sub_1ADDDF7A8(v151, v3, v200, &v251);
        v152 = *&v252[0];
        if (!*&v252[0])
        {
          goto LABEL_115;
        }

        v153 = *(&v252[1] + 1);
        v154 = v185;
        *v185 = v207;
        v154[1] = v251;
        *(v154 + 4) = v152;
        *(v154 + 40) = *(v252 + 8);
        *(v154 + 7) = v153;
        if (v184 == v183)
        {
LABEL_105:
          a1 = v197;
LABEL_106:
          v174 = v258[9];
          *(a1 + 160) = v258[8];
          *(a1 + 176) = v174;
          *(a1 + 192) = v259;
          *(a1 + 208) = v260;
          v175 = v258[5];
          *(a1 + 96) = v258[4];
          *(a1 + 112) = v175;
          v176 = v258[7];
          *(a1 + 128) = v258[6];
          *(a1 + 144) = v176;
          v177 = v258[1];
          *(a1 + 32) = v258[0];
          *(a1 + 48) = v177;
          v178 = v258[3];
          *(a1 + 64) = v258[2];
          *(a1 + 80) = v178;
          v160 = v256;
          v161 = v257;
LABEL_107:
          *a1 = v160;
          *(a1 + 16) = v161;
          return;
        }

        v185 = v154 + 4;
        v201 = v184;
        v48 = v184 + 1;
        if (__OFADD__(v184, 1))
        {
          __break(1u);
LABEL_95:
          *(a1 + 208) = *(v3 + 208);
          v155 = *(v3 + 176);
          *(a1 + 160) = *(v3 + 160);
          *(a1 + 176) = v155;
          *(a1 + 192) = *(v3 + 192);
          v156 = *(v3 + 112);
          *(a1 + 96) = *(v3 + 96);
          *(a1 + 112) = v156;
          v157 = *(v3 + 144);
          *(a1 + 128) = *(v3 + 128);
          *(a1 + 144) = v157;
          v158 = *(v3 + 48);
          *(a1 + 32) = *(v3 + 32);
          *(a1 + 48) = v158;
          v159 = *(v3 + 80);
          *(a1 + 64) = *(v3 + 64);
          *(a1 + 80) = v159;
          v160 = *v3;
          v161 = *(v3 + 16);
          goto LABEL_107;
        }

        goto LABEL_5;
      }

      v52 = sub_1AE23C20C();
      if (v52)
      {
        goto LABEL_69;
      }
    }

    sub_1ADECD850(v249);
    v252[5] = *(&v258[6] + 8);
    v253[0] = *(&v258[7] + 8);
    *(v253 + 11) = *(&v258[8] + 3);
    v252[1] = *(&v258[2] + 8);
    v252[2] = *(&v258[3] + 8);
    v252[4] = *(&v258[5] + 8);
    v252[3] = *(&v258[4] + 8);
    v251 = *(v258 + 8);
    v252[0] = *(&v258[1] + 8);
    sub_1ADDCEDE0(&v251, &qword_1EB5BCD30, &unk_1AE251E08);
    *(&v258[5] + 8) = v249[5];
    *(&v258[6] + 8) = v249[6];
    *(&v258[7] + 8) = v250[0];
    *(&v258[8] + 3) = *(v250 + 11);
    *(&v258[1] + 8) = v249[1];
    *(&v258[2] + 8) = v249[2];
    *(&v258[3] + 8) = v249[3];
    *(&v258[4] + 8) = v249[4];
    *(v258 + 8) = v249[0];
    v53 = *(v224 + 16);
    if (a2 == v53)
    {
      goto LABEL_98;
    }

    if (a2 >= v53)
    {
      break;
    }

    v55 = *(i - 3);
    v54 = *(i - 2);
    v56 = *(i - 1);
    v57 = *i;
    *&v258[0] = a2 + 1;
    if (v55)
    {
      v58 = __OFADD__(v11++, 1);
      if (v58)
      {
        goto LABEL_111;
      }

      v260 = v11;
      *&v207 = v54;
      v202 = v56;
      v193 = v57;
      if ((v215 & 1) == 0)
      {
        v203 = *(&v258[9] + 1);
        v143 = v259;
        v144 = v55;
        sub_1ADE42C78(v55, v54);

        v186 = v144;
        v145 = v207;
        sub_1ADE42C78(v144, v207);

        v214 = v143;
        v146 = sub_1ADF63DF4(v145, v143);
        v147 = v146;
        if (v146 & 0x100) != 0 && (v146)
        {

          v148 = v186;
          a1 = v207;
          sub_1ADE42CB8(v186, v207);
          LODWORD(v215) = 1;
LABEL_86:
          ++a2;
          sub_1AE23C1FC();
          sub_1ADE42CB8(v148, a1);

          v239 = v231;
          v240[0] = v232[0];
          *(v240 + 11) = *(v232 + 11);
          v235 = v227;
          v236 = v228;
          v237 = v229;
          v238 = v230;
          v233 = v225;
          v234 = v226;
          Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v233);
          v247 = *(&v258[6] + 8);
          v248[0] = *(&v258[7] + 8);
          *(v248 + 11) = *(&v258[8] + 3);
          v243 = *(&v258[2] + 8);
          v244 = *(&v258[3] + 8);
          v245 = *(&v258[4] + 8);
          v246 = *(&v258[5] + 8);
          v241 = *(v258 + 8);
          v242 = *(&v258[1] + 8);
          sub_1ADDCEDE0(&v241, &qword_1EB5BCD30, &unk_1AE251E08);
          *(&v258[5] + 8) = v238;
          *(&v258[6] + 8) = v239;
          *(&v258[7] + 8) = v240[0];
          *(&v258[8] + 3) = *(v240 + 11);
          *(&v258[1] + 8) = v234;
          *(&v258[2] + 8) = v235;
          *(&v258[3] + 8) = v236;
          *(&v258[4] + 8) = v237;
          *(v258 + 8) = v233;
          v46 = v215 ^ 1;
          BYTE8(v259) = v215 ^ 1;
          goto LABEL_6;
        }

        v149 = v186;
        LODWORD(v215) = sub_1ADF63DF4(v186, v203);

        sub_1ADE42CB8(v149, v207);
        if (v147)
        {
          LODWORD(v215) = ((v147 | v215) >> 8) & 1;
          a1 = v207;
          v148 = v186;
          goto LABEL_86;
        }

        if ((v147 & 0x100) != 0)
        {
          if (v215)
          {
            v150 = 1;
LABEL_85:
            LODWORD(v215) = v150;
            a1 = v207;
            v148 = v186;
            goto LABEL_86;
          }
        }

        else if (v215)
        {
          v150 = (v215 >> 8) & 1;
          goto LABEL_85;
        }

        sub_1ADE42CB8(v186, v207);

        goto LABEL_98;
      }

      v192 = a2 + 1;
      if (*(v214 + 16) >= *(v54 + 16))
      {
        v204 = v11;
        v60 = *(v54 + 64);
        v195 = v54 + 64;
        v61 = v54;
        v62 = v55;
        v63 = 1 << *(v54 + 32);
        if (v63 < 64)
        {
          v64 = ~(-1 << v63);
        }

        else
        {
          v64 = -1;
        }

        v65 = v64 & v60;
        sub_1ADE42C78(v55, v54);

        v186 = v62;
        sub_1ADE42C78(v62, v61);
        v194 = ((v63 + 63) >> 6);

        v66 = 0;
        v67 = v219;
        while (1)
        {
          if (!v65)
          {
            if (v194 <= v66 + 1)
            {
              v69 = (v66 + 1);
            }

            else
            {
              v69 = v194;
            }

            v70 = v69 - 1;
            v11 = v216;
            v71 = v217;
            while (1)
            {
              v68 = v66 + 1;
              if (__OFADD__(v66, 1))
              {
                break;
              }

              if (v68 >= v194)
              {
                v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
                (*(*(v98 - 8) + 56))(v67, 1, 1, v98);
                v65 = 0;
                v66 = v70;
                goto LABEL_34;
              }

              v65 = *(v195 + 8 * v68);
              ++v66;
              if (v65)
              {
                v66 = v68;
                goto LABEL_33;
              }
            }

            __break(1u);
            goto LABEL_105;
          }

          v68 = v66;
LABEL_33:
          v72 = __clz(__rbit64(v65));
          v65 &= v65 - 1;
          v73 = v72 | (v68 << 6);
          v74 = v207;
          v75 = v211;
          sub_1ADDDE408(*(v207 + 48) + *(v212 + 72) * v73, v211, type metadata accessor for Replica);
          v76 = v221;
          v77 = *(v74 + 56) + *(v221 + 72) * v73;
          v78 = v213;
          v79 = v223;
          (*(v221 + 16))(v213, v77, v223);
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
          v81 = *(v80 + 48);
          v82 = v75;
          v67 = v219;
          sub_1ADDD8010(v82, v219);
          (*(v76 + 32))(v67 + v81, v78, v79);
          (*(*(v80 - 8) + 56))(v67, 0, 1, v80);
          v11 = v216;
          v71 = v217;
LABEL_34:
          sub_1ADDD2198(v67, v11, &qword_1EB5BA458, &qword_1AE251E00);
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
          v84 = *(v83 - 8);
          v85 = *(v84 + 48);
          if (v85(v11, 1, v83) == 1)
          {
            break;
          }

          v86 = *v222;
          (*v222)(v220, v11 + *(v83 + 48), v223);
          sub_1ADDD8010(v11, v71);
          v87 = v214;
          if (!*(v214 + 16) || (v88 = sub_1ADDD8A6C(v71), (v89 & 1) == 0))
          {
            a1 = v207;

            v59 = v186;
            sub_1ADE42CB8(v186, a1);
            sub_1ADDE5058(v71, type metadata accessor for Replica);
            (*v208)(v220, v223);
            goto LABEL_44;
          }

          v90 = v221;
          v91 = *(v87 + 56) + *(v221 + 72) * v88;
          v92 = v210;
          v93 = v71;
          v94 = v223;
          (*(v221 + 16))(v210, v91, v223);
          sub_1ADDE5058(v93, type metadata accessor for Replica);
          v95 = v209;
          v86(v209, v92, v94);
          v96 = v220;
          LODWORD(v215) = sub_1AE23C0BC();
          v97 = *(v90 + 8);
          v97(v95, v94);
          v97(v96, v94);
          v67 = v219;
          if ((v215 & 1) == 0)
          {
            a1 = v207;

            v59 = v186;
            v99 = v186;
            v100 = a1;
            goto LABEL_43;
          }
        }

        v194 = v85;
        a1 = v207;

        v99 = v186;
        if (*(v203 + 16) < *(v186 + 16))
        {
          v100 = a1;
          v59 = v186;
LABEL_43:
          sub_1ADE42CB8(v99, v100);
LABEL_44:
          v11 = v204;
          goto LABEL_45;
        }

        v195 = v83;
        v101 = *(v186 + 64);
        v181 = v186 + 64;
        v102 = 1 << *(v186 + 32);
        if (v102 < 64)
        {
          v103 = ~(-1 << v102);
        }

        else
        {
          v103 = -1;
        }

        a2 = v103 & v101;
        v180 = (v102 + 63) >> 6;
        v182 = (v84 + 56);

        v104 = 0;
        while (a2)
        {
          v105 = v104;
LABEL_60:
          v109 = __clz(__rbit64(a2));
          a2 &= a2 - 1;
          v110 = v109 | (v105 << 6);
          v111 = v186;
          v112 = v211;
          sub_1ADDDE408(*(v186 + 48) + *(v212 + 72) * v110, v211, type metadata accessor for Replica);
          v113 = v221;
          v114 = *(v111 + 56) + *(v221 + 72) * v110;
          v115 = v213;
          v116 = v223;
          (*(v221 + 16))(v213, v114, v223);
          v117 = v195;
          v215 = *(v195 + 48);
          v118 = v112;
          v119 = v191;
          sub_1ADDD8010(v118, v191);
          v120 = *(v113 + 32);
          v108 = v117;
          v120(v119 + v215, v115, v116);
          v121 = 0;
LABEL_61:
          (*v182)(v119, v121, 1, v108);
          v122 = v190;
          sub_1ADDD2198(v119, v190, &qword_1EB5BA458, &qword_1AE251E00);
          if ((v194)(v122, 1, v108) == 1)
          {
            goto LABEL_97;
          }

          v123 = *v222;
          (*v222)(v196, v122 + *(v108 + 48), v223);
          v124 = v189;
          sub_1ADDD8010(v122, v189);
          v125 = v203;
          if (!*(v203 + 16) || (v126 = sub_1ADDD8A6C(v124), (v127 & 1) == 0))
          {
            v59 = v186;

            a1 = v207;
            sub_1ADE42CB8(v59, v207);
            sub_1ADDE5058(v124, type metadata accessor for Replica);
            (*v208)(v196, v223);
            goto LABEL_44;
          }

          v128 = v188;
          v129 = v223;
          (*(v221 + 16))(v188, *(v125 + 56) + *(v221 + 72) * v126, v223);
          sub_1ADDE5058(v124, type metadata accessor for Replica);
          v130 = v187;
          v123(v187, v128, v129);
          v11 = v196;
          v131 = sub_1AE23C0BC();
          v132 = *(v221 + 8);
          v132(v130, v129);
          v132(v11, v129);
          if ((v131 & 1) == 0)
          {
            v59 = v186;

            a1 = v207;
            sub_1ADE42CB8(v59, v207);
            v11 = v204;
            goto LABEL_45;
          }
        }

        if (v180 <= v104 + 1)
        {
          v106 = v104 + 1;
        }

        else
        {
          v106 = v180;
        }

        v107 = v106 - 1;
        v108 = v195;
        while (1)
        {
          v105 = v104 + 1;
          if (__OFADD__(v104, 1))
          {
            break;
          }

          if (v105 >= v180)
          {
            a2 = 0;
            v121 = 1;
            v104 = v107;
            v119 = v191;
            goto LABEL_61;
          }

          a2 = *(v181 + 8 * v105);
          ++v104;
          if (a2)
          {
            v104 = v105;
            goto LABEL_60;
          }
        }

        __break(1u);
        goto LABEL_109;
      }

      a1 = v54;
      v59 = v55;
      sub_1ADE42C78(v55, v54);

LABEL_45:
      sub_1AE23C1FC();
      sub_1ADE42CB8(v59, a1);

      v239 = v231;
      v240[0] = v232[0];
      *(v240 + 11) = *(v232 + 11);
      v235 = v227;
      v236 = v228;
      v237 = v229;
      v238 = v230;
      v233 = v225;
      v234 = v226;
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v233);
      v247 = *(&v258[6] + 8);
      v248[0] = *(&v258[7] + 8);
      *(v248 + 11) = *(&v258[8] + 3);
      v243 = *(&v258[2] + 8);
      v244 = *(&v258[3] + 8);
      v245 = *(&v258[4] + 8);
      v246 = *(&v258[5] + 8);
      v241 = *(v258 + 8);
      v242 = *(&v258[1] + 8);
      sub_1ADDCEDE0(&v241, &qword_1EB5BCD30, &unk_1AE251E08);
      *(&v258[5] + 8) = v238;
      *(&v258[6] + 8) = v239;
      *(&v258[7] + 8) = v240[0];
      *(&v258[8] + 3) = *(v240 + 11);
      *(&v258[1] + 8) = v234;
      *(&v258[2] + 8) = v235;
      *(&v258[3] + 8) = v236;
      *(&v258[4] + 8) = v237;
      LODWORD(v215) = 1;
      v49 = v192;
      a2 = v192;
      *(v258 + 8) = v233;
      goto LABEL_7;
    }

    ++a2;
    sub_1AE23C1FC();
    v239 = v231;
    v240[0] = v232[0];
    *(v240 + 11) = *(v232 + 11);
    v235 = v227;
    v236 = v228;
    v237 = v229;
    v238 = v230;
    v233 = v225;
    v234 = v226;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v233);
    v247 = *(&v258[6] + 8);
    v248[0] = *(&v258[7] + 8);
    *(v248 + 11) = *(&v258[8] + 3);
    v243 = *(&v258[2] + 8);
    v244 = *(&v258[3] + 8);
    v245 = *(&v258[4] + 8);
    v246 = *(&v258[5] + 8);
    v241 = *(v258 + 8);
    v242 = *(&v258[1] + 8);
    sub_1ADDCEDE0(&v241, &qword_1EB5BCD30, &unk_1AE251E08);
    *(&v258[5] + 8) = v238;
    *(&v258[6] + 8) = v239;
    *(&v258[7] + 8) = v240[0];
    *(&v258[8] + 3) = *(v240 + 11);
    *(&v258[1] + 8) = v234;
    *(&v258[2] + 8) = v235;
    *(&v258[3] + 8) = v236;
    *(&v258[4] + 8) = v237;
    *(v258 + 8) = v233;
  }

  __break(1u);
LABEL_97:
  v162 = v186;
  v163 = v207;
  sub_1ADE42CB8(v186, v207);

  sub_1ADE42CB8(v162, v163);
  v11 = v204;
LABEL_98:
  a2 = v197;
  if (v11 >= 101)
  {
    if (qword_1EB5B94F8 == -1)
    {
      goto LABEL_100;
    }

    goto LABEL_112;
  }

LABEL_103:
  v168 = v258[9];
  *(a2 + 160) = v258[8];
  *(a2 + 176) = v168;
  *(a2 + 192) = v259;
  *(a2 + 208) = v260;
  v169 = v258[5];
  *(a2 + 96) = v258[4];
  *(a2 + 112) = v169;
  v170 = v258[7];
  *(a2 + 128) = v258[6];
  *(a2 + 144) = v170;
  v171 = v258[1];
  *(a2 + 32) = v258[0];
  *(a2 + 48) = v171;
  v172 = v258[3];
  *(a2 + 64) = v258[2];
  *(a2 + 80) = v172;
  v173 = v257;
  *a2 = v256;
  *(a2 + 16) = v173;
}